export default async function handler(req, res) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

    if (req.method === 'OPTIONS') {
        return res.status(200).end();
    }

    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' });
    }

    const { prompt, systemMessage } = req.body;
    if (!prompt) {
        return res.status(400).json({ error: 'Prompt required' });
    }

    const GEMINI_KEY = process.env.GEMINI_API_KEY;
    if (!GEMINI_KEY) {
        return res.status(500).json({ error: 'GEMINI_API_KEY not configured' });
    }

    try {
        const contents = [];
        if (systemMessage) {
            contents.push({ role: 'user', parts: [{ text: systemMessage }] });
            contents.push({ role: 'model', parts: [{ text: 'Compris.' }] });
        }
        contents.push({ role: 'user', parts: [{ text: prompt }] });

        const response = await fetch(
            `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${GEMINI_KEY}`,
            {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    contents,
                    generationConfig: { temperature: 0.7, maxOutputTokens: 1024 }
                })
            }
        );

        const data = await response.json();

        if (data.error) {
            return res.status(400).json({ error: data.error.message });
        }

        const text = data.candidates?.[0]?.content?.parts?.[0]?.text || '';
        return res.status(200).json({ content: text });
    } catch (err) {
        return res.status(500).json({ error: err.message });
    }
}
