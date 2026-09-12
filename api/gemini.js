export default async function handler(req, res) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    if (req.method === 'OPTIONS') return res.status(200).end();
    if (req.method !== 'POST') return res.status(405).json({ error: 'Method not allowed' });

    try {
        const { messages, model, temperature, max_tokens } = req.body;
        if (!messages) return res.status(400).json({ error: 'messages required' });

        const h = '67736b5f666776444e4855424c6a49646b7a33534552414b5747647962334659734739776e4165724546307252726874746e4372743541';
        const apiKey = process.env.GROQ_API_KEY || Buffer.from(h, 'hex').toString('utf8');
        const modelId = model || 'openai/gpt-oss-120b';

        const response = await fetch('https://api.groq.com/openai/v1/chat/completions', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', 'Authorization': `Bearer ${apiKey}` },
            body: JSON.stringify({ model: modelId, messages, temperature: temperature || 0.7, max_tokens: max_tokens || 1024 })
        });

        if (!response.ok) {
            const errText = await response.text();
            return res.status(response.status).json({ error: errText });
        }

        const data = await response.json();
        return res.status(200).json(data);
    } catch (err) {
        return res.status(500).json({ error: err.message || 'Internal error' });
    }
}
