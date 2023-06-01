Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A081A71A1DB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 17:07:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E98E81FB8;
	Thu,  1 Jun 2023 15:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E98E81FB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685632047;
	bh=Y8Hzm8fKHJocr9grq/ycE/k4Nw5awB0C6aFJ5lKF6M0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aDGD3L/VVC2B2LxKqmLpQEuPFJGO3wqlQO0HrMCoNSOfg+/9KUwle6y+NdrcDmRGy
	 PS7AYoPd1/F4PI5zhznM4Ik7XvccmMt6NL74MFi+74VRLR+ijtGeda7LUgfju6xSH7
	 hj8c4fx2fv2FkMkNcz/SMI/bgYGEaHJjqIr5LksZZ2HfK/hGum+SaJ5dE26RhOTRE6
	 DYy/AMKP655rt3jp9gQlhfKb9Y0RSx5GJPlwYgF68yINKEeJ8E879E5DIINqbpfSPc
	 uPSgQCW0oYDV7RNFUnnv1V/rGgJZpz9OnJXYHVswUWCNewf6sviD5Z4qzUWH8oTIK5
	 tcjuan7XCw2xw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDvUZkgREsPV; Thu,  1 Jun 2023 15:07:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E34F684267;
	Thu,  1 Jun 2023 15:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E34F684267
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEB551BF28E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 00:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5F90614D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 00:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5F90614D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuzoDxABPKPt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 00:45:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 518BB60F5F
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com
 [IPv6:2607:f8b0:4864:20::f32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 518BB60F5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 00:45:45 +0000 (UTC)
Received: by mail-qv1-xf32.google.com with SMTP id
 6a1803df08f44-626190df842so4519476d6.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:45:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685580344; x=1688172344;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8EVbsQSJN3elvGz/hNprySe1VU5QU1Z/6CukAdchU0k=;
 b=RAYyJ5rQcWIYEOiT5GKjOJSHm8dyx//7X4ZxbYJlN2KJlyQkj09GEYNmvIYsvCPqMK
 q0EY5IbaB6zK4yJV7vp4TgkI2SbDHmfNlVxnW2m6td/CYUpsBkOSyIqjqkcYY0/ctvfu
 xpQzYkvRhyLn5PMBRhAjcPPop53pLr5Zf9DXM9CAJiZfGJuJnHGOYWMCZJlkEdWdTMN2
 BSY1otBD8baiayd9zHXKJsUP2DoN9yHlfLD0sZ9abWNhJ40AbvhEL4DLDiSQzRmdo+D0
 hhfBxXeggPOVVbqrEhK+gUqEaO6SvmmPpiuPVIKTAjcC5hRoK4+mAGg+zh4XLq3tI4cX
 1MvQ==
X-Gm-Message-State: AC+VfDwta4T8nvFTXQLlo+8Qx8rTR0cNeNkczl2RIEY/qYyf7hIm4Nxl
 qkvQfzI2/WtNr+xJM+waYsYoNxHVblCsBAn30ik=
X-Google-Smtp-Source: ACHHUZ5s7pjzJBITDWSCm/TyfMVLJhDdNdh8nXZsP9Kg1dQvLH9HGr8w1jhclFxqF1RkPSp/j0iP7+iGE596l8eueW0=
X-Received: by 2002:a05:6214:2245:b0:623:7707:5650 with SMTP id
 c5-20020a056214224500b0062377075650mr11012120qvc.15.1685580344037; Wed, 31
 May 2023 17:45:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230531090805.3959-1-eggcar.luan@gmail.com>
 <ZHfDp21V3zy9kuE3@corigine.com>
In-Reply-To: <ZHfDp21V3zy9kuE3@corigine.com>
From: egg car <eggcar.luan@gmail.com>
Date: Thu, 1 Jun 2023 08:45:33 +0800
Message-ID: <CACMC4jYXkwHUJf7-sKFacSbS9cY-Hbr=yXav2L_B8h9E+giPKg@mail.gmail.com>
To: Simon Horman <simon.horman@corigine.com>
X-Mailman-Approved-At: Thu, 01 Jun 2023 15:07:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685580344; x=1688172344;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=8EVbsQSJN3elvGz/hNprySe1VU5QU1Z/6CukAdchU0k=;
 b=ssdSR+0EWSuI3ZBO2LlV9pandlXuRophBt5Hs8C2GGNZUReHyl3vSvA1D9b1vX+t4B
 c5y8SmhWgdmPZhiuxGYzZbaX0G4Gb8VvjwzNktmNxWuI4Bvy4XTwic2BVYwFODbEdmrd
 zFTyXvm6eSQ/ZI6u6cFml3Jm/zePNEv8NDQ932zDbCdkQk4+Ot4u+I0tjz6WjuJzPR/J
 lHs9oFi/mMuvlJftyr/XKnO5EilA4SWT0bBWvDV4I0KDP6bZ4qEVTtQg19vDRJf47bXm
 z+Nx01+mhSbB3kdKzQWkOm/W0FAYdj8gIotTif3Ie/vrBiW2bJCSzk+jxBzj/JaJMzlB
 MXbA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=ssdSR+0E
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix extts capture value format
 for 82580/i354/i350
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============3130821796998315386=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3130821796998315386==
Content-Type: multipart/alternative; boundary="000000000000a5977605fd06c108"

--000000000000a5977605fd06c108
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Simon,

Ah sorry the patch was generated in a different kernel source code  dir
with the one I tested. it=E2=80=99s a typo, I=E2=80=99ll fix it soon.
Apologize for that mistake

Simon Horman <simon.horman@corigine.com>=EF=BC=9A

> On Wed, May 31, 2023 at 09:08:05AM +0000, Yuezhen Luan wrote:
> > 82580/i354/i350 features circle-counter-like timestamp registers
> > that are different with newer i210. The EXTTS capture value in
> > AUXTSMPx should be converted from raw circle counter value to
> > timestamp value in resolution of 1 nanosec by the driver.
> >
> > Signed-off-by: Yuezhen Luan <eggcar.luan@gmail.com>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> > index 58872a4c2..187daa8ef 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -6947,6 +6947,7 @@ static void igb_extts(struct igb_adapter *adapter=
,
> int tsintr_tt)
> >       struct e1000_hw *hw =3D &adapter->hw;
> >       struct ptp_clock_event event;
> >       struct timespec64 ts;
> > +     unsigned long flags;
> >
> >       if (pin < 0 || pin >=3D IGB_N_SDP)
> >               return;
> > @@ -6954,9 +6955,12 @@ static void igb_extts(struct igb_adapter
> *adapter, int tsintr_tt)
> >       if (hw->mac.type =3D=3D e1000_82580 ||
> >           hw->mac.type =3D=3D e1000_i354 ||
> >           hw->mac.type =3D=3D e1000_i350) {
> > -             s64 ns =3D rd32(auxstmpl);
> > +             u64 ns =3D rd32(auxstmpl);
> >
> > -             ns +=3D ((s64)(rd32(auxstmph) & 0xFF)) << 32;
> > +             ns +=3D ((u64)(rd32(auxstmph) & 0xFF)) << 32;
> > +             spin_lock_irqsave(&adapter->tc, ns);
> > +             ns =3D timecounter_cyc2time(&adapter->tc, ns);
> > +             spin_unlock_irqrestore(&adapter->tc, ns);
>
> Hi Yuezhen Luan,
>
> unfortunately this doesn't compile because the arguments to
> spin_lock_irqsave/spin_unlock_irqrestore are wrong.
>
> >               ts =3D ns_to_timespec64(ns);
> >       } else {
> >               ts.tv_nsec =3D rd32(auxstmpl);
>
> --
> pw-bot: cr
>
>

--000000000000a5977605fd06c108
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Dear Simon,</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Ah sorry the patch was generated in a different kernel source code =
=C2=A0dir with the one I tested. it=E2=80=99s a typo, I=E2=80=99ll fix it s=
oon.</div><div dir=3D"auto">Apologize for that mistake</div><div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Simon Horman &lt=
;<a href=3D"mailto:simon.horman@corigine.com">simon.horman@corigine.com</a>=
&gt;=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:=
1ex;border-left-color:rgb(204,204,204)">On Wed, May 31, 2023 at 09:08:05AM =
+0000, Yuezhen Luan wrote:<br>
&gt; 82580/i354/i350 features circle-counter-like timestamp registers<br>
&gt; that are different with newer i210. The EXTTS capture value in<br>
&gt; AUXTSMPx should be converted from raw circle counter value to<br>
&gt; timestamp value in resolution of 1 nanosec by the driver.<br>
&gt; <br>
&gt; Signed-off-by: Yuezhen Luan &lt;<a href=3D"mailto:eggcar.luan@gmail.co=
m" target=3D"_blank">eggcar.luan@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--<br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/e=
thernet/intel/igb/igb_main.c<br>
&gt; index 58872a4c2..187daa8ef 100644<br>
&gt; --- a/drivers/net/ethernet/intel/igb/igb_main.c<br>
&gt; +++ b/drivers/net/ethernet/intel/igb/igb_main.c<br>
&gt; @@ -6947,6 +6947,7 @@ static void igb_extts(struct igb_adapter *adapte=
r, int tsintr_tt)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct e1000_hw *hw =3D &amp;adapter-&gt;hw;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptp_clock_event event;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct timespec64 ts;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0unsigned long flags;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pin &lt; 0 || pin &gt;=3D IGB_N_SDP)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; @@ -6954,9 +6955,12 @@ static void igb_extts(struct igb_adapter *adapt=
er, int tsintr_tt)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (hw-&gt;mac.type =3D=3D e1000_82580 ||<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hw-&gt;mac.type =3D=3D e1000_i=
354 ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hw-&gt;mac.type =3D=3D e1000_i=
350) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s64 ns =3D rd32(auxst=
mpl);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u64 ns =3D rd32(auxst=
mpl);<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ns +=3D ((s64)(rd32(a=
uxstmph) &amp; 0xFF)) &lt;&lt; 32;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ns +=3D ((u64)(rd32(a=
uxstmph) &amp; 0xFF)) &lt;&lt; 32;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock_irqsave(&am=
p;adapter-&gt;tc, ns);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ns =3D timecounter_cy=
c2time(&amp;adapter-&gt;tc, ns);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock_irqrestor=
e(&amp;adapter-&gt;tc, ns);<br>
<br>
Hi Yuezhen Luan,<br>
<br>
unfortunately this doesn&#39;t compile because the arguments to<br>
spin_lock_irqsave/spin_unlock_irqrestore are wrong.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ts =3D ns_to_tim=
espec64(ns);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ts.tv_nsec =3D r=
d32(auxstmpl);<br>
<br>
-- <br>
pw-bot: cr<br>
<br>
</blockquote></div></div>

--000000000000a5977605fd06c108--

--===============3130821796998315386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3130821796998315386==--
