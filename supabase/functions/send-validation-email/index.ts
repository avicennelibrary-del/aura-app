// Supabase Edge Function — Envoi d'email de validation de paiement
// Déploiement : supabase functions deploy send-validation-email
// Variables d'environnement à configurer :
//   - RESEND_API_KEY (clé API Resend.com)
//   - FROM_EMAIL (expéditeur, ex: "AURA <noreply@votre-domaine.com>")

import { serve } from "https://deno.land/std@0.177.0/http/server.ts";

const RESEND_API_KEY = Deno.env.get("RESEND_API_KEY")!;
const FROM_EMAIL = Deno.env.get("FROM_EMAIL") || "AURA <noreply@aura-revision.com>";

serve(async (req) => {
  try {
    const { studentEmail, studentName, amount } = await req.json();

    if (!studentEmail || !studentName) {
      return new Response(JSON.stringify({ error: "studentEmail et studentName requis" }), { status: 400 });
    }

    const emailHtml = `
      <!DOCTYPE html>
      <html>
      <head><meta charset="utf-8"></head>
      <body style="font-family: Arial, sans-serif; background: #f8fafc; padding: 40px;">
        <div style="max-width: 600px; margin: auto; background: white; border-radius: 16px; overflow: hidden; box-shadow: 0 4px 24px rgba(0,0,0,0.08);">
          <div style="background: linear-gradient(135deg, #6366f1, #06b6d4); padding: 32px; text-align: center;">
            <h1 style="color: white; margin: 0; font-size: 24px;">AURA — Révision Pharmacie</h1>
          </div>
          <div style="padding: 32px;">
            <h2 style="color: #16a34a; margin-top: 0;">✅ Paiement validé</h2>
            <p style="color: #334155; line-height: 1.6;">Bonjour <strong>${studentName}</strong>,</p>
            <p style="color: #334155; line-height: 1.6;">
              Votre paiement de <strong style="color: #6366f1;">${amount} DZD</strong> a été validé avec succès.
            </p>
            <p style="color: #334155; line-height: 1.6;">
              Vous avez désormais accès à l'ensemble de la plateforme AURA :
            </p>
            <ul style="color: #334155; line-height: 1.8;">
              <li>Mode Entraînement avec filtres par module et cours</li>
              <li>Mode Simulation EMD et Résidanat</li>
              <li>Suivi de progression et statistiques</li>
            </ul>
            <div style="text-align: center; margin: 32px 0;">
              <a href="${Deno.env.get("APP_URL") || "https://aura-revision.com"}"
                 style="background: linear-gradient(135deg, #6366f1, #06b6d4); color: white; padding: 14px 40px; border-radius: 12px; text-decoration: none; font-weight: bold; display: inline-block;">
                Accéder à la plateforme
              </a>
            </div>
            <p style="color: #94a3b8; font-size: 13px; margin-top: 32px;">
              Si vous avez des questions, répondez à cet email.<br>
              L'équipe AURA
            </p>
          </div>
        </div>
      </body>
      </html>
    `;

    const res = await fetch("https://api.resend.com/emails", {
      method: "POST",
      headers: {
        "Authorization": `Bearer ${RESEND_API_KEY}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        from: FROM_EMAIL,
        to: studentEmail,
        subject: "✅ AURA — Votre paiement a été validé",
        html: emailHtml,
      }),
    });

    const data = await res.json();
    return new Response(JSON.stringify({ success: true, data }), { status: 200 });
  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), { status: 500 });
  }
});
