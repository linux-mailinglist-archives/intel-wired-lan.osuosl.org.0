Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEFDB0CD88
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 01:06:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33DFF41351;
	Mon, 21 Jul 2025 23:06:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cjGYkBkEZ3ob; Mon, 21 Jul 2025 23:06:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1860C41354
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753139175;
	bh=KEFwVf9DCXPYhb5E+L2S2B43pN/gLrA3tUcn9Sv1yes=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rj4qaP0IlkCxK8BKlcgei8zMnjxMAwuoanxDRV9DZTrH96BQZO2tHanlcSn4Nvyn2
	 DjepvA8f1TJ8lfm62Yarad1kEmVl90bPvCbmSV+T3LiYn3FFCzO+kMxPN0UHPK4lMB
	 jy1uehEHJU63TFaMxdjB42dua9Lw9nRbcTZOD6PQpzrlytJWhUCJCf6A95B8fOxhEc
	 Q+P1KhPh9PpBUy5eszvR8PMQyd2uCfGmuqOkf+m5iPYNZq9TaVC+5Y4z3RFrvVkPu8
	 FAyI3dctyBRi9Bnsu8zupGguyhMZ/xZsIS0OdldIddpoEL9exAHtET0DOz45NPNMkD
	 +FY+Ps2hWEVkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1860C41354;
	Mon, 21 Jul 2025 23:06:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E8E65127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 23:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF02683FA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 23:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pYOCvLSxbrde for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 23:06:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12b; helo=mail-il1-x12b.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B96E783FA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B96E783FA0
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B96E783FA0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 23:06:12 +0000 (UTC)
Received: by mail-il1-x12b.google.com with SMTP id
 e9e14a558f8ab-3de252f75d7so46634375ab.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 16:06:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753139172; x=1753743972;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KEFwVf9DCXPYhb5E+L2S2B43pN/gLrA3tUcn9Sv1yes=;
 b=pEJbRTfjeeL6+T9Hms7yjg45qCgQ1CUNJdpIDfLei4N0SRz/sDzRSq6WJ2iSHaou+H
 IsZINK0de90IPMZVnLpy79Qy38RMjHuerZLOIeeoKZ4gNpXMimg9W8OZDDuVaSRbS7l9
 C3oBjhsAWk4C2iFYUgasJxFnxR+Z/uU5KSpD+aKjdNHwZyWigXfqjDzyKv69dbzP5FaD
 dug1GRkYNBjyw0CPOiqJztQoqvvn/+m9W1NeCj1hg/4/MEYJVmngtltlKcyplQyEfqT9
 8RzVxsSla9bbHjo322s5N+Qr32YQf636HvBR/xgVDd3uncvvKZjLaudsib3G1x4TAudp
 mS/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXUFf/o7o6pi8gDXR2/hzK+X3cyQ4OUZ5xyy+CUSLmNOLnKpZjM63BYPL6QMLqpCWXKgaV4v69CkyYAwfPDVg4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwxwVdHvlreGpwl7jhqkz8zoxv3atvvU1wuq356och9+LeY7lM0
 6OhR4v8VAr04EZdpbXVOxxJFurjpGXsLMIJfz6hpHhAudKMoWbET28rNvFZIGlTcWQzEPC/KpXJ
 PMCbazdhU7a2wsSy5LjJHyvKPJ1mHDDs=
X-Gm-Gg: ASbGncvM6nVzjf6fa6JuPlLZ7pc8wxpvq/AoO5kV92qGtQxMyjI14oNPaYzpI69jTR0
 iE5Czmjj2gyaeG+GM4+S6Hv1DpmptVZkUp3NtGVpUrtYT+ULXsnQDNFyb+yp/4+KL2N/yCX9umx
 kgeL1PASAyGxEGpXHO3Cv3xhpEIAdDrHifBu/4hgszo66O5q8diWSLDc8YEwA/+SHSAUlLfTB6P
 eBK+R0=
X-Google-Smtp-Source: AGHT+IG5RIx4CUBqOhyC6+z/etJI6PdiSzvihPpHLIk0ADX/H+hEWkFMYdf4iuelppqsril2kN/LOnjdXOMfNu/RNqM=
X-Received: by 2002:a05:6e02:1d9d:b0:3e2:8ddd:b406 with SMTP id
 e9e14a558f8ab-3e28dddb51amr192280595ab.17.1753139171561; Mon, 21 Jul 2025
 16:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250721083343.16482-1-kerneljasonxing@gmail.com>
 <20250721083343.16482-2-kerneljasonxing@gmail.com>
 <aH5exXo_BdonTfmf@mini-arch>
In-Reply-To: <aH5exXo_BdonTfmf@mini-arch>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 22 Jul 2025 07:05:35 +0800
X-Gm-Features: Ac12FXzrl82q1J1EBI4gPmmpTws7FVNkFQm2LLp1FtXXiWxpRliUiuaDdNslSpc
Message-ID: <CAL+tcoB9U-YnJ7MPn7FQ4+ZsW5cgQXE3Tks-7=kGMhUE6nNprg@mail.gmail.com>
To: Stanislav Fomichev <stfomichev@gmail.com>
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
 d=gmail.com; s=20230601; t=1753139172; x=1753743972; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KEFwVf9DCXPYhb5E+L2S2B43pN/gLrA3tUcn9Sv1yes=;
 b=gdDlgWE6QhwSSs8BQBKWS74DH0zqUkuqn5LUea1r8cwDht3VDQi3tqVmCsgpSK7buV
 Mm+M1LUusy02MpqUsSUAm1NQxxWbx6MPI0tz3bTp+vChaYt0HvI/ic5KghwyOGBHB58q
 uVH8qiQ+DjQZB2RUHlOWjHXu4N5uQnN4YPZ39OffnhiQFR+2dBZ2/ka2mmebS4nXO38d
 cAQHkZcWqcq7v3qp1/FJoG7kBIyrJJHaKy9qAXIzD471KW1sy0cFs9tR9H8oEJsAeFIM
 05n3J9stawxURW7Lh1FD5ZNcrthr2knbXPiZoBDt+UUQ3iqkAD81cnOwJZM5UW4Fj5iY
 x2TQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=gdDlgWE6
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

On Mon, Jul 21, 2025 at 11:37=E2=80=AFPM Stanislav Fomichev
<stfomichev@gmail.com> wrote:
>
> On 07/21, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > The issue can happen when the budget number of descs are consumed. As
> > long as the budget is decreased to zero, it will again go into
> > while (budget-- > 0) statement and get decreased by one, so the
> > underflow issue can happen. It will lead to returning true whereas the
> > expected value should be false.
> >
> > In this case where all the budget are used up, it means zc function
> > should return false to let the poll run again because normally we
> > might have more data to process.
> >
> > Fixes: 132c32ee5bc0 ("net: stmmac: Add TX via XDP zero-copy socket")
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> >  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
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
> There is a continue on line 2621.

Thanks for catching this!

> Should we do 'for (; budget > 0; budget--)'
> instead? And maybe the same for ixgbe [0]?

Not really. I think I can move the 'budget--' just before the
'continue' part. If we convert it to use 'for' loop and then we end up
with one of 'break' statements, the budget still gets accidently
increased by one whereas ixgbe driver even doesn't handle the desc
this time. IIUC, it should not happen, right?

>
> 0: https://lore.kernel.org/netdev/20250720091123.474-3-kerneljasonxing@gm=
ail.com/

The same logic as above can be applied here as well. There are three
'break' statements in ixgbe_xmit_zc().

Hence, IMHO, I prefer to use while(...) in this case but I ought to
adjust the position of budget--.

Thanks,
Jason
