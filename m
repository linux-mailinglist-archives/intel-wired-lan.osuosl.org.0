Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5964BB12F25
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 12:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 016EC84119;
	Sun, 27 Jul 2025 10:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0XIPnUiZ1WrO; Sun, 27 Jul 2025 10:07:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D17DC84114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753610855;
	bh=3o0Sqj440gi2/GezB0eJZOv7l8bHZyW+Oo9D6FQcF3g=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IpGlvUI5Zv3AoDDmyH0Lpk4bVqcZGdM2Wy3ZYpLU9Tep8u18sk9P2m9suwHLT3CE5
	 hBTPacXCGtTn4qNVnPXM1bV+y3VcZF2CCvRUfjxGKkLre4AoybvICZ6Ed3Qmqdt8OM
	 basfaDq3FyiQd4yEMyHYLUrSqazVEVOCdmWdXj6XgPZB9Wth2NL1iQaR5qRSyiVdL2
	 4eEU9oerEKgy4OFlT0N5YvX9F6J2mh7UP8SAHzlb/os7LMAS+myXltQnwi/3XuZrxC
	 Wygu/NUSPZ+4x9h5kq1+fhmZeIY05kTQEyrCC3ggMOqBS6z9PnMEsYWA9BLMUfJeA4
	 DIHiWFAoMP1aQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D17DC84114;
	Sun, 27 Jul 2025 10:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F3F1D231
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 10:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E61EF40E40
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 10:07:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jHLzTvCWbdcU for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 10:07:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::129; helo=mail-il1-x129.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 095CA40E35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 095CA40E35
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 095CA40E35
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 10:07:32 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id
 e9e14a558f8ab-3e3d2299a64so3553235ab.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 03:07:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753610852; x=1754215652;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3o0Sqj440gi2/GezB0eJZOv7l8bHZyW+Oo9D6FQcF3g=;
 b=Xy7uo+NTA10Q9DHhSX4VkqPgiOiCZlGVrqfFw0L8Bia4g8nENpv2A7/yBUYbWn26B5
 BwZ7nsNw2ppkaSLri4Z3pTopcWhvft2noU8RV/EC42Oi2MgIYmHoF/ZPHOVeFyHnp53d
 DHOcydY8Yo+mg+ghpIZQKFBVvEtAx3B1vXx6LyqOWGG/SPpQ4mqhiwG1JBrTJ5pS1SAk
 7VWnE+8hs2asqPJbI6ONRYlzQnzQAxADYnkl6EETo1XG5Mc1NalNWqNCqh4Clc1SwJr2
 tS2o4iyJCE9vr2Fv8DSW6uXHQ2Syy0SB6tSTLSO0op3E7XmkgOERt7CXGSSg2R5Jgp2J
 NRYA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWAs4mM8DTc8QWOSe/hCKoh1Na7KSwJrIn1BKa06PyehSR22r38XeyTk8QF4SzexDWuyvBsuD8t7BNEht0gT6c=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyH03WqpGLSDxpZagvUjoieXiXWwUdQFLatzjeS8KHGSbwOR3OW
 Pz48wKayVrEq3Y6KCJS6teDkCE6NuU6lYy39N7WWoI/sOyvUo1zMXwBNBDn4m9D6Wg5Ae0Qy+ao
 pmdFoP2PDcUK/wzf9sHTJNO09IZqwYXc=
X-Gm-Gg: ASbGncu2O+s3St3KSBkb7KKgA7IvR6O2PLPus5SvdzOfD8XxeOuB0TKtZaZmxxB5kmy
 qNXEU9VENshyhSb0aM9znWIhAiHeuDxejdPPbPKl68wKwihLNxP6aJtldtNPc1DlMw3CuNhozHq
 utDg1ByUIf10p8+Mizo7JakMosC4HTy29Sm5CLsjSMww1M7TSMwKnPv05vKQm3W7m84cAg6pIsz
 e5jYYI=
X-Google-Smtp-Source: AGHT+IHgKC5ysJrh0wyUH20C38x4NE6A2eti66eOfzvGtkqyLUvJA+CsWXYUnI1ycQna3TJoXe5pgZm5qgKInPH8Ae4=
X-Received: by 2002:a05:6e02:1a48:b0:3e3:d5d2:23e4 with SMTP id
 e9e14a558f8ab-3e3d5d2256amr30618145ab.13.1753610851669; Sun, 27 Jul 2025
 03:07:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
 <a8eba276-afbf-456c-943d-36144877cfc0@molgen.mpg.de>
In-Reply-To: <a8eba276-afbf-456c-943d-36144877cfc0@molgen.mpg.de>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Sun, 27 Jul 2025 18:06:55 +0800
X-Gm-Features: Ac12FXwC0dhsVaY9nIUU9nTShpWBlOwOboRlfBwg3Z2SewapZQs7eBk9YNeAvUc
Message-ID: <CAL+tcoD3zwiWsrqDQp1uhegiiFnYs8jcpFVTpuacZ_c6y9-X+Q@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 larysa.zaremba@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753610852; x=1754215652; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3o0Sqj440gi2/GezB0eJZOv7l8bHZyW+Oo9D6FQcF3g=;
 b=PTXG7KyxSq8hZNfN1+2Qn8rcK0fRYG40GZLy78Q13w1/00+nfq56BZWu4z5j99tacd
 pOyPpDME01EioaRJgommCkrNy7N3znvJEG11NLn26VoXCG9qi9HCoKsak3WKbzywpFAt
 fZQP5wYjOVIKTRTw1aGFHpYYcpbUfurpUCSgmsQS6YjFFGlvhCFH+7vQ2gxy3i4H0dUM
 gYYEH6RhPfdseMyjiPQVO+WQX30eJMUL2IwfPdWdFe5jDncZknqZIVQj5SQrq05E1W3h
 OituFp0bwt7Dmrp4PakqBFBDIYwmGhvQrvvaqvDO5yjiwep9Lfu7Lw07HxsTM+KiafkG
 DWkQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PTXG7Kyx
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the
 negative overflow of budget in ixgbe_xmit_zc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

On Sun, Jul 27, 2025 at 4:36=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:
>
> Dear Jason,
>
>
> Thank you for the improved version.
>
> Am 26.07.25 um 09:03 schrieb Jason Xing:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > Resolve the budget negative overflow which leads to returning true in
> > ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.
> >
> > Before this patch, when the budget is decreased to zero and finishes
> > sending the last allowed desc in ixgbe_xmit_zc, it will always turn bac=
k
> > and enter into the while() statement to see if it should keep processin=
g
> > packets, but in the meantime it unexpectedly decreases the value again =
to
> > 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc retu=
rns
> > true, showing 'we complete cleaning the budget'. That also means
> > 'clean_complete =3D true' in ixgbe_poll.
> >
> > The true theory behind this is if that budget number of descs are consu=
med,
> > it implies that we might have more descs to be done. So we should retur=
n
> > false in ixgbe_xmit_zc to tell napi poll to find another chance to star=
t
> > polling to handle the rest of descs. On the contrary, returning true he=
re
> > means job done and we know we finish all the possible descs this time a=
nd
> > we don't intend to start a new napi poll.
> >
> > It is apparently against our expectations. Please also see how
> > ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
> > to make sure the budget can be decreased to zero at most and the negati=
ve
> > overflow never happens.
> >
> > The patch adds 'likely' because we rarely would not hit the loop coditi=
on
> > since the standard budget is 256.
> >
> > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> > Link: https://lore.kernel.org/all/20250720091123.474-3-kerneljasonxing@=
gmail.com/
> > 1. use 'negative overflow' instead of 'underflow' (Willem)
> > 2. add reviewed-by tag (Larysa)
> > 3. target iwl-net branch (Larysa)
> > 4. add the reason why the patch adds likely() (Larysa)
> > ---
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
> >   1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index ac58964b2f08..7b941505a9d0 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ri=
ng, unsigned int budget)
> >       dma_addr_t dma;
> >       u32 cmd_type;
> >
> > -     while (budget-- > 0) {
> > +     while (likely(budget)) {
> >               if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
> >                       work_done =3D false;
> >                       break;
> > @@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ri=
ng, unsigned int budget)
> >               xdp_ring->next_to_use++;
> >               if (xdp_ring->next_to_use =3D=3D xdp_ring->count)
> >                       xdp_ring->next_to_use =3D 0;
> > +
> > +             budget--;
> >       }
> >
> >       if (tx_desc) {
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
> Is this just the smallest fix, and the rewrite to the more idiomatic for
> loop going to be done in a follow-up?

Thanks for the review. But I'm not that sure if it's worth a follow-up
patch. Or if anyone else also expects to see a 'for loop' version, I
can send a V3 patch then. I have no strong opinion either way.

Thanks,
Jason
