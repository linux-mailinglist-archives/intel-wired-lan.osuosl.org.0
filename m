Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C216B0BFCA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 11:16:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0D8140C8D;
	Mon, 21 Jul 2025 09:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sJTdmnXboaoB; Mon, 21 Jul 2025 09:16:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05E5940E3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753089382;
	bh=aWTCrJr+jkFbr7yY/GDDx9r5qnemW4sfX9ZnAt73ZW0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Td120iEl1vWFl3voP5ICxW4wd6Yj6vSp3D/BftsZStI95JT4dsrrXriCW28dqMGxz
	 4u6SiKuQz1caOZ/TKCsyTvz2tzGnsJsAWgls3rp1B+liWzmBFNcCvfX9UG99R5MwgI
	 CSMHbvAZq64Z5rYv5UklP/2LJVFX8DTO5L6/rDHp8Nl5VGZznk7TJhkieozDRZ8Uel
	 V5A20zPeEnRCzqPCH/zHqf1/HZmBVbm3HG1oA/PlxYq0hAsSwXk+eqTfZtJMqS5GKT
	 N4EQ+QJPjijSRKWVD4+0xI12IskpNgNjw3fzP4zKHeaMSG4TvZeu1ORtUxnOL/UV+C
	 bfrvW5Da+ZfDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05E5940E3A;
	Mon, 21 Jul 2025 09:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 38F7E127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3686E40E3A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vSZunIbabXeW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 09:16:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::135; helo=mail-il1-x135.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8CC040B9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8CC040B9E
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8CC040B9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:16:18 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id
 e9e14a558f8ab-3dda399db09so54677675ab.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:16:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753089378; x=1753694178;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aWTCrJr+jkFbr7yY/GDDx9r5qnemW4sfX9ZnAt73ZW0=;
 b=UfT0iSNfmwhpE0It7BGk4joQf4fdhlbaaFLXh6sr+1Kporh7xocHzFdITob2Jn6HhB
 Dfm6KbuqtxG3NlJOrBvwI9WnrHvK0zUA1IougYVxwT0npaxNCCee0pzrH4UaJVYxYtwZ
 dUXqZUHe+eAd6q5sUfONL864Z/jhp+oEIlHLZIdYvyJFSliURuFJj1J8Qilq6fCfWX18
 SAwC4ZQttsvU+ACtXmYC7SPzg6ERnUVijCyU6rqMUtrr+HwPmi/lu6ndq7QyGT+7dTOj
 wBcwF4s4Y+oVuCDHqS2/S7PUyeMRW6/HCzwj+whja+ZJgpVifL3sm9sENXep/HN4EbLE
 O4Og==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkdGevdZO3pjt2c5P4bXx79OOJnHPwr2lyrUxi4LaZr8Ih+6ZktzRvrZLfZyz1pZoNRmSpL8nzW51bDdb1S9c=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyW3V3vFO+atu6C34U/OdNMNV0WmSKTVtJPbHBt4jFuzbU7Zk/G
 wTEN09lP7dyPjpowFy6WVIYGTfPefweZ/lTuvF2KknjxJoExsrb2AlZbul1tMhKoC+BD/LWLTC8
 3Vt8Vy9pk/TP5DIee4A5TvH+vZzr9Lj0=
X-Gm-Gg: ASbGnctDoJ1E8M0EaiylVBO9e+tliCkjl9/xyinW1RFwC4Sma1FkkIODmj4jSYZvTeP
 jC3GDs3ZWwnQHhsk047BhV4hT3bI4bticlETGc5xIsdORIRCtXuU49xUrw7lPjSSr0audK0Zxpv
 f2zpGqraI1amyWbumzCaz4MbtwfxgBlh6nhat0pUkBQTowBa1aNjsJtfGoQnBDjORNv9IK0C2N/
 EpU7g==
X-Google-Smtp-Source: AGHT+IG2nZhptU5sMShiQM05wOmbJqhauf2H0RI8O2kKSAiSqbryj8HoWrcq2C8YGYvMd2oBpjurux1VpzbYVEFH93k=
X-Received: by 2002:a05:6e02:19c7:b0:3dd:e7d6:18bb with SMTP id
 e9e14a558f8ab-3e2824f58c8mr214595465ab.17.1753089377803; Mon, 21 Jul 2025
 02:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
 <8c9e97e4-3590-49a8-940b-717deac0078d@molgen.mpg.de>
In-Reply-To: <8c9e97e4-3590-49a8-940b-717deac0078d@molgen.mpg.de>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 21 Jul 2025 17:15:41 +0800
X-Gm-Features: Ac12FXxJ1BHePlaT48Hqw0KdfZnHkKmI2oq2Xb6hjs7o-cBEjOG5DrUKN96fo1c
Message-ID: <CAL+tcoAP7Zk7A4pzK-za+_NMoX11SGR3ubtY6R+aaywoEq_H+g@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com, 
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org, 
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
 linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753089378; x=1753694178; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aWTCrJr+jkFbr7yY/GDDx9r5qnemW4sfX9ZnAt73ZW0=;
 b=BKJD/t74/OfuFQTKG6ijCvW5Nk3ARkTV4mn+Nke0AqCRcbFAlHTlQA1yGbX6nHQiZf
 BygwCanCI4DQ29I+CJYNLzyCAUUfmcn0ZfLj2avjrWF42ZJB9Bq1U1LHMdFXPUAA7El+
 3HhgnWMzz1AVLU8iEMZMAWjH1RsZ6MR5h+OIxW3Fp4iwCUpRg40RBKMEeua9pYspSpeL
 5vrKYNF8A1MPF7IEsC8JBHwqK1GRmjKoAJxLLYl+XtBn6MwRQBgWJGa7LmkMyzVbk1d8
 S3TyKaCP31wtUlX3Horl0r47Q8w3sSS4OnAI4U8iKh9sJv5az0EyTcb5MHIA9YnHZEaQ
 KvCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=BKJD/t74
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] stmmac: xsk: fix
 underflow of budget in zerocopy mode
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

On Mon, Jul 21, 2025 at 4:56=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:
>
> Dear Jason,
>
>
> Thank you for your patch.

Thanks for your quick response and review :)

>
> Am 21.07.25 um 10:33 schrieb Jason Xing:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > The issue can happen when the budget number of descs are consumed. As
>
> Instead of =E2=80=9CThe issue=E2=80=9D, I=E2=80=99d use =E2=80=9CAn under=
flow =E2=80=A6=E2=80=9D.

Will change it.

>
> > long as the budget is decreased to zero, it will again go into
> > while (budget-- > 0) statement and get decreased by one, so the
> > underflow issue can happen. It will lead to returning true whereas the
> > expected value should be false.
>
> What is =E2=80=9Cit=E2=80=9D?

It means 'underflow of budget' behavior.

>
> > In this case where all the budget are used up, it means zc function
>
> *is* used?

Got it.

>
> > should return false to let the poll run again because normally we
> > might have more data to process.
>
> Do you have a reproducer, you could add to the commit message?

Sorry, I didn't have a reproducer. I cooked this patch after analyzing
the whole logic (because recently I'm reading the zc xmit
implementation among various drivers.)

>
> > Fixes: 132c32ee5bc0 ("net: stmmac: Add TX via XDP zero-copy socket")
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> >   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 +++-
> >   1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/driver=
s/net/ethernet/stmicro/stmmac/stmmac_main.c
> > index f350a6662880..ea5541f9e9a6 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > @@ -2596,7 +2596,7 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv=
 *priv, u32 queue, u32 budget)
> >
> >       budget =3D min(budget, stmmac_tx_avail(priv, queue));
> >
> > -     while (budget-- > 0) {
> > +     while (budget > 0) {
>
> So, if the while loop should not be entered with budget being 0, then
> the line could  be changed to `while (--budget > 0) {`? But then it
> wouldn=E2=80=99t be called for budget being 1.

Right, so it shouldn't be '--budget'.

>
> A for loop might be the better choice for a loop with budget as counting
> variable?

Sorry, I didn't follow you.

>
> >               struct stmmac_metadata_request meta_req;
> >               struct xsk_tx_metadata *meta =3D NULL;
> >               dma_addr_t dma_addr;
> > @@ -2681,6 +2681,8 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv=
 *priv, u32 queue, u32 budget)
> >
> >               tx_q->cur_tx =3D STMMAC_GET_ENTRY(tx_q->cur_tx, priv->dma=
_conf.dma_tx_size);
> >               entry =3D tx_q->cur_tx;
> > +
> > +             budget--;
> >       }
> >       u64_stats_update_begin(&txq_stats->napi_syncp);
> >       u64_stats_add(&txq_stats->napi.tx_set_ic_bit, tx_set_ic_bit);
>
> Excuse my ignorance, but I do not yet see the problem that the while
> loop is entered and buffer is set to 0. Is it later the return condition?

Let me give a simple example. Supposing the budget is one initially,
at the first round, the budget will be zero. Later, after this desc
being processed, the 'while (budget-- > 0)' statement will be accessed
again, and then the budget will be decreased by one which is u32(0 -
1), namely, UINT_MAX. !!UINT_MAX is true while the expected return
value is false (!!0, 0 is the expected budget value).

i40e_clean_tx_irq() handles this correctly, FYI.

Thanks,
Jason

>
>      return !!budget && work_done;
>
>
> Kind regards,
>
> Paul
