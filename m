Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AFAB13275
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 01:14:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7741260AA7;
	Sun, 27 Jul 2025 23:14:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FZdkaWx17p5z; Sun, 27 Jul 2025 23:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67EC8608CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753658043;
	bh=UuRwDLo2z1zF0ZI+zOBq6CzyaD7vIeBz8xEvVsB+W48=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iAw+fruBENK6THgut+hnl16OCT9d9BdWeFOJvTomLb+tdBFiVuBNVCoC85I+7duG0
	 BKO1euiwK9aeNysx94oCudgDT9fMLNOkCOOiNNKfuKDkPYfJswK+QMOG9sco5pbLVn
	 nDmxWI1uQ6JRtowBMGJs7wRIwjTKLGALoJpD9ewjr45Qm5ah/gxjkDiLi1Mlvp7gNz
	 GHCb0jMv4/zKLkcgB3Sv49Mg8/6t/iYheIZd6DFeS6K1CdBcbrM3LtNLhs4y4m2a35
	 yEYIzJElRHno/a4NPoakA0Jm5nryYRFLwnwVUih0PW+KuKQdDshFsAPmaV3htqvdwO
	 8mbTdYujjvY5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67EC8608CB;
	Sun, 27 Jul 2025 23:14:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E4A6C231
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 23:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5B5C60852
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 23:14:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZGKhDC0gsPfL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 23:14:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::129; helo=mail-il1-x129.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E0C96608CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0C96608CB
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0C96608CB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 23:14:00 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id
 e9e14a558f8ab-3e3d181e839so6120505ab.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 16:14:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753658040; x=1754262840;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UuRwDLo2z1zF0ZI+zOBq6CzyaD7vIeBz8xEvVsB+W48=;
 b=I4eTrG2scKQF/TC58W8gJoZAMXC43Azv35GphfbKcblxLMAGjKLtkforH/QzWmLuhy
 9FsbTQNNn3c9V0FSqK8Jqyx3wild8inuMav7/79d3NaL23a0IBXVYOPENypRUCEEZXSg
 FBZN4Nd5cWG2OT3GAmfVqXJTsxq4BVW4EtgJIh8M7eGPS7/mHCcGd627Gfi2uQ1/hEWD
 EXUb4E4+FrsGLa/uD+ehdWc0lqyyPCLvCbKkfd8S/3J+tePe0MBFUtCopg3g7YM6g45i
 cHAqPGka5FeBPPR4poo/UxlfSIfSMIG8I7B70n5ge1PX39MUiJpbCFZnMCOiI4/875Fs
 ve5Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzxAMatyWQZlDxdJj5vvYeps21ZFpyuVTeRzo2J99JT2ago4H4TXiVn2hVcy9wLi9jey/JdvXz+k71BzVk0zg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxeba9bkxCZLadrN9e1kEaZX3sILQbReFP57cVq8m/UwX+CIoTR
 /9dy7uPkSegT3bDiyP2ba8XJ/Q4WMww41tcXWlHY6uSoTDYHu6t7/6Y8ktJWMSuRh8kh44tjQXG
 meqHKOaDvO66fVsf8Q9eNNlElXJ2XgSc=
X-Gm-Gg: ASbGncv6yXEsOleKf9cNw202uyCIeJWWqXwTUU842QewQ/bYdmMxHD20VD0EEOkNzRx
 042TA8hdAr0lb4cj7Df5lGMA/fkTWaxnR9dQK8txfEbf2Fdx2jRGzi0xnG+4/VP04IdwbtIYoRk
 IzfY8h4yj2xtwwsr9+MkVqTqJZ69VpQtzHvf/IRTHlJ6tAR7ZvH5qBTs1Rz2yPSyEz5BSZ/U7Q2
 34wwGyTqVWBFrLz1w==
X-Google-Smtp-Source: AGHT+IFOwTIpbhK1VM83TEOhnCoCZ1jf/SzDLtGhmkzK9qJZKTwNEvG/DTWwU0FR41jsSpBmJRl4XHbzf4VupLYc+oE=
X-Received: by 2002:a05:6e02:310d:b0:3e2:c574:ab80 with SMTP id
 e9e14a558f8ab-3e3c52c7e01mr191025975ab.12.1753658039661; Sun, 27 Jul 2025
 16:13:59 -0700 (PDT)
MIME-Version: 1.0
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
 <a8eba276-afbf-456c-943d-36144877cfc0@molgen.mpg.de>
 <CAL+tcoD3zwiWsrqDQp1uhegiiFnYs8jcpFVTpuacZ_c6y9-X+Q@mail.gmail.com>
 <20250727135455.GW1367887@horms.kernel.org>
 <CAL+tcoBUKmt5mCq4coLkbqT5Ehb+V6NFDcjOErg_8AYHG4fgcg@mail.gmail.com>
 <20250727144727.GY1367887@horms.kernel.org>
In-Reply-To: <20250727144727.GY1367887@horms.kernel.org>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 28 Jul 2025 07:13:23 +0800
X-Gm-Features: Ac12FXz3BOm5n7lfmtGuhafWlO9R5LzD5zM-dI26z2VahlnOh25yPHuFuHvB8tQ
Message-ID: <CAL+tcoCsB_Kfm5MOLcqB8vYQJ4_Lds-yZQ9RyoVVanb_eJ3scA@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, larysa.zaremba@intel.com, andrew+netdev@lunn.ch, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 bjorn@kernel.org, maciej.fijalkowski@intel.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753658040; x=1754262840; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UuRwDLo2z1zF0ZI+zOBq6CzyaD7vIeBz8xEvVsB+W48=;
 b=HL72ua8pIpaCc0FY1deJ1ZWCYg+NNxqOHV4zUICip0O0VeklWpOagyldr00dzJylRb
 eMMxdyQMWyMEigdZDzqqvDnpatJKe/2rZiv0wfIKp9isclPswYIjKkEWyOXFydVMifLr
 IjI4AMRHEJ/yhU+Pn2+tZ7G2OBxjwgCb0z3/GoIjAwnSOR5Lrp0TMonU9Bg9hdt9D6mC
 75GgNGqtNghDDA8MHWEnJv+cPapHMKxskeODdPfaC1QnvIpwD9HJB/Rc/PmhhWVDo2sm
 Y/3R2wwZE7AQ/mrv7o6732pao6gIM9M1FXiqd6sKSJ/ilQCPg6KgWTZ57SKywK4PzXxv
 gQpQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=HL72ua8p
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

On Sun, Jul 27, 2025 at 10:47=E2=80=AFPM Simon Horman <horms@kernel.org> wr=
ote:
>
> On Sun, Jul 27, 2025 at 10:16:10PM +0800, Jason Xing wrote:
> > Hi Simon,
> >
> > On Sun, Jul 27, 2025 at 9:55=E2=80=AFPM Simon Horman <horms@kernel.org>=
 wrote:
> > >
> > > On Sun, Jul 27, 2025 at 06:06:55PM +0800, Jason Xing wrote:
> > > > Hi Paul,
> > > >
> > > > On Sun, Jul 27, 2025 at 4:36=E2=80=AFPM Paul Menzel <pmenzel@molgen=
.mpg.de> wrote:
> > > > >
> > > > > Dear Jason,
> > > > >
> > > > >
> > > > > Thank you for the improved version.
> > > > >
> > > > > Am 26.07.25 um 09:03 schrieb Jason Xing:
> > > > > > From: Jason Xing <kernelxing@tencent.com>
> > > > > >
> > > > > > Resolve the budget negative overflow which leads to returning t=
rue in
> > > > > > ixgbe_xmit_zc even when the budget of descs are thoroughly cons=
umed.
> > > > > >
> > > > > > Before this patch, when the budget is decreased to zero and fin=
ishes
> > > > > > sending the last allowed desc in ixgbe_xmit_zc, it will always =
turn back
> > > > > > and enter into the while() statement to see if it should keep p=
rocessing
> > > > > > packets, but in the meantime it unexpectedly decreases the valu=
e again to
> > > > > > 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit=
_zc returns
> > > > > > true, showing 'we complete cleaning the budget'. That also mean=
s
> > > > > > 'clean_complete =3D true' in ixgbe_poll.
> > > > > >
> > > > > > The true theory behind this is if that budget number of descs a=
re consumed,
> > > > > > it implies that we might have more descs to be done. So we shou=
ld return
> > > > > > false in ixgbe_xmit_zc to tell napi poll to find another chance=
 to start
> > > > > > polling to handle the rest of descs. On the contrary, returning=
 true here
> > > > > > means job done and we know we finish all the possible descs thi=
s time and
> > > > > > we don't intend to start a new napi poll.
> > > > > >
> > > > > > It is apparently against our expectations. Please also see how
> > > > > > ixgbe_clean_tx_irq() handles the problem: it uses do..while() s=
tatement
> > > > > > to make sure the budget can be decreased to zero at most and th=
e negative
> > > > > > overflow never happens.
> > > > > >
> > > > > > The patch adds 'likely' because we rarely would not hit the loo=
p codition
> > > > > > since the standard budget is 256.
> > > > > >
> > > > > > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> > > > > > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > > > > > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > > > > ---
> > > > > > Link: https://lore.kernel.org/all/20250720091123.474-3-kernelja=
sonxing@gmail.com/
> > > > > > 1. use 'negative overflow' instead of 'underflow' (Willem)
> > > > > > 2. add reviewed-by tag (Larysa)
> > > > > > 3. target iwl-net branch (Larysa)
> > > > > > 4. add the reason why the patch adds likely() (Larysa)
> > > > > > ---
> > > > > >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
> > > > > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/dri=
vers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > > > index ac58964b2f08..7b941505a9d0 100644
> > > > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > > > > @@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring=
 *xdp_ring, unsigned int budget)
> > > > > >       dma_addr_t dma;
> > > > > >       u32 cmd_type;
> > > > > >
> > > > > > -     while (budget-- > 0) {
> > > > > > +     while (likely(budget)) {
> > > > > >               if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
> > > > > >                       work_done =3D false;
> > > > > >                       break;
> > > > > > @@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring=
 *xdp_ring, unsigned int budget)
> > > > > >               xdp_ring->next_to_use++;
> > > > > >               if (xdp_ring->next_to_use =3D=3D xdp_ring->count)
> > > > > >                       xdp_ring->next_to_use =3D 0;
> > > > > > +
> > > > > > +             budget--;
> > > > > >       }
> > > > > >
> > > > > >       if (tx_desc) {
> > > > >
> > > > > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > > > >
> > > > > Is this just the smallest fix, and the rewrite to the more idioma=
tic for
> > > > > loop going to be done in a follow-up?
> > > >
> > > > Thanks for the review. But I'm not that sure if it's worth a follow=
-up
> > > > patch. Or if anyone else also expects to see a 'for loop' version, =
I
> > > > can send a V3 patch then. I have no strong opinion either way.
> > >
> > > I think we have iterated over this enough (pun intended).
> >
> > Hhh, interesting.
> >
> > > If this patch is correct then lets stick with this approach.
> >
> > No problem. Tomorrow I will send the 'for loop' version :)
>
> I meant, I think the while loop is fine.
> But anything that is correct is fine by me :)

Okay, great, then no more updates will be made unless other reviewers
have opinions :)

Thanks,
Jason
