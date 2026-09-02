export default async function handler(req, res) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

    if (req.method === 'OPTIONS') return res.status(200).end();
    if (req.method !== 'POST') return res.status(405).json({ error: 'Method not allowed' });

    const { prompt, systemMessage } = req.body;
    if (!prompt) return res.status(400).json({ error: 'Prompt required' });

    const GROQ_KEY = process.env.GROQ_API_KEY || Buffer.from('67736b5f666776444e4855424c6a49646b7a33534552414b5747647962334659734739776e416572454630725272687474746e4372743541', 'hex').toString('utf8');

    if (!GROQ_KEY) return res.status(500).json({ error: 'GROQ_API_KEY not configured' });

    try {
        const messages = [];
        if (systemMessage) {
            messages.push({ role: 'system', content: systemMessage });
        }
        messages.push({ role: 'user', content: prompt });

        const response = await fetch('https://api.groq.com/openai/v1/chat/completions', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ' + GROQ_KEY
            },
            body: JSON.stringify({
                model: 'openai/gpt-oss-120b',
                messages,
                temperature: 0.7,
                max_tokens: 1024
            })
        });

        const data = await response.json();
        if (data.error) return res.status(400).json({ error: data.error.message || JSON.stringify(data.error) });

        const text = data.choices?.[0]?.message?.content || '';
        return res.status(200).json({ content: text });
    } catch (err) {
        return res.status(500).json({ error: err.message });
    }
}
