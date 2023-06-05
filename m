Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C534D722AF7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 17:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62043821FB;
	Mon,  5 Jun 2023 15:25:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62043821FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685978753;
	bh=+itBfW6c3RBHK7iD714JsmgUob+cl3EkRcSjXqJsPQU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dJUU5t8X9SOJ5Pv/J20aTob1+77MejA2mDVc2GHYM/8Letz326SPTZcqn1aUTHc3w
	 +bTsM5hHviOfguYJiG/+rH6Isx8MYcviIgeszLZDlO1zPZxoeCu+kfwFfTqKgyJwHV
	 OekduG4mUtJmPW4+tEKGiIklgzJB0AYj9s89sYyzEHAToAhXtKPoWVHwSHTSd7fqMi
	 L8TlvjuL/Xo0RLxsRoq/YqSMm0ywfWnMnSMZ7ISSr+mePBHHeiizE3B1A4mEnNDL7z
	 YQhL6kX0b9n3fkIKUUR5gdrRyznsyvuOtS9gOfaY+Oo1ljbpf5X7jZfMOseHBNjKLA
	 2uHXpn65Ikuuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xnIUF-IAo6MC; Mon,  5 Jun 2023 15:25:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5F0C821D9;
	Mon,  5 Jun 2023 15:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5F0C821D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18F121BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 03:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E683640382
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 03:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E683640382
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNh59iAGpy8Y for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 03:17:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E070740017
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E070740017
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 03:17:51 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-976a0a1a92bso399814766b.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 04 Jun 2023 20:17:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685935070; x=1688527070;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TNd83VG0/dDbVs1OhUC56FmXw3JtCLitD5vetXlHJ2s=;
 b=XwJSGew9tggUMivvQYjg1VgFBBwoa+ryli4EzQdU8WPWtJilIzyZvVn0EOmwrWOVsf
 kSHZfWiw754BofV9LNpWgtTjUTnIAvOfkGCJEIrsHsbrceyRBqNRnVVcU8FlalKWJvBe
 OIomTdf0ual9Zr72iMEBe1O4JjZltYKSXkrAvSM6eJ6SRwvRxLRfqAE7omvyKnnuVAIF
 h89KTAjPdWzNE+UDaMEozISMntReCnQdT7B78BQb3afmALeomBNoWyr1UWZprepS//dv
 +8FCjPOJLWUFJWvLgA3XQYG9TmwzWHE24waHGGuWUBFIqF1//adgLpnNtWJNlbGnMCW7
 WPjA==
X-Gm-Message-State: AC+VfDxOYiUMIHcYO2ldvdD+KXWhvTiZJtRVsrl347PV3xj8J38g+37T
 yDJxgW/SSe6nzSM5pp0hO4IKOAK/HfT4KEx5xsdSlg==
X-Google-Smtp-Source: ACHHUZ53/Jd0DPYtPHi9OKcr2tuzJ2NdBhZmHv1LFxMmJhiBf8zYg2fQKpYItAODqxQSiVaqEhJnlWamtFXr0ULbyq8=
X-Received: by 2002:a17:907:7292:b0:974:6026:a312 with SMTP id
 dt18-20020a170907729200b009746026a312mr5310171ejc.51.1685935070022; Sun, 04
 Jun 2023 20:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230601185353.17012-1-prasad@arista.com>
 <cbb5bf34-5082-13ec-45b8-590268279bae@intel.com>
 <CAKh1g57arCC3a0iv+pc+xKJk+8HgzqvK6SjJt83uVQedw2Hm9w@mail.gmail.com>
 <CAKh1g548roQKgHu6aS+SAB2Ux+HkJHWgpfEFvvqqnHu56F1sDQ@mail.gmail.com>
 <61ead333-c9b1-1580-78e8-132337408e25@intel.com>
In-Reply-To: <61ead333-c9b1-1580-78e8-132337408e25@intel.com>
From: Prasad Koya <prasad@arista.com>
Date: Sun, 4 Jun 2023 20:17:38 -0700
Message-ID: <CAKh1g56u=8Csufc=XH9qZpeOf=ybH8URu=e7f7CQ5RRO0tpkzA@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Mon, 05 Jun 2023 15:25:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685935070; x=1688527070;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TNd83VG0/dDbVs1OhUC56FmXw3JtCLitD5vetXlHJ2s=;
 b=WPk0s9jUfZqpFEAlYvL9wh7h432jkOOHCzpcSjfb/FzigY9LZfZSboih+JG3nlcIN6
 R4GBS+9tmx0BugoqlNV3941lPuziucPzY8Vfw497QBo6TKjf4qFNKMBX028MxXvOWuOj
 CZg10teNoZ1xkzdHj4ZdZdXxA4EMT9D1iBL9naO0gQZyKbearezEBiVi2ed+mn5j784s
 YL7Hfte/3CLMjFEOCqUi0saY6QDT89EIrkPghbDtTRSeb5Bf2XknP4D9kooGisyeYGvO
 CYxqF8A4LBp2CjzIRhVSX5KIFTZb/hWBw0qO08KsSGQIzDGi1kUusqzOT+59hkj2K/u5
 aHXg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=WPk0s9jU
Subject: Re: [Intel-wired-lan] [PATCH] intel-wired-lan: igc: set TP bit in
 ethtool_link_ksettings.supported field
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 Salam Noureddine <noureddine@arista.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, gilligan@arista.com,
 intel-wired-lan@lists.osuosl.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============6928211174734206870=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6928211174734206870==
Content-Type: multipart/alternative; boundary="000000000000f6e5fd05fd5958bf"

--000000000000f6e5fd05fd5958bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>>>
2. please, use the [iwl-net] prefix, for example:
[iwl-net, v2] igc: set TP bit in ethtool_link_ksettings.supported field
3. you might add the fixes tag. Example:
Fixes: 8c5ad0dae93c9 ("igc: Add ethtool support")
<<<

Sent the current version after adding (2) and (3)

Thank you.

On Sun, Jun 4, 2023 at 12:20=E2=80=AFAM Neftin, Sasha <sasha.neftin@intel.c=
om>
wrote:

> On 6/3/2023 09:05, Prasad Koya wrote:
> > Hi Sasha
> >
> > In our internal review, we found that igb and other vendors' drivers se=
t
> > the TP (or other media) bit in the 'advertising' field as well. So I
> > made the and tested the change in 6.1.31 kernel. Will send that patch
> > for review.
> >
> > Thank you.
> >
> > On Fri, Jun 2, 2023 at 12:49=E2=80=AFAM Prasad Koya <prasad@arista.com
> > <mailto:prasad@arista.com>> wrote:
> >
> >     Thanks for the quick review.
> >
> >     Yes, we use ETHTOOL_GLINKSETTINGS ioctl to retrieve interface
> >     settings and expect to see one of TP or MII set in the 'supported'
> >     bitmask.
> >
> >     I'll send out a new patch removing the if(). Would you accept the
> >     patch into your staging tree and later push it to the stable kernel
> >     branch? This is my first time sending to intel-wired-lan. Not sure
> >     how it works.
>
> 1. yes, definitely we will accept.
> 2. please, use the [iwl-net] prefix, for example:
> [iwl-net, v2] igc: set TP bit in ethtool_link_ksettings.supported field
> 3. you might add the fixes tag. Example:
> Fixes: 8c5ad0dae93c9 ("igc: Add ethtool support")
> Thanks,
> Sasha
>
> >
> >     Thank you.
> >
> >     On Fri, Jun 2, 2023 at 12:34=E2=80=AFAM Neftin, Sasha
> >     <sasha.neftin@intel.com <mailto:sasha.neftin@intel.com>> wrote:
> >
> >         On 6/1/2023 21:53, prasad@arista.com <mailto:prasad@arista.com>
> >         wrote:
> >          > From: Prasad Koya <prasad@arista.com <mailto:
> prasad@arista.com>>
> >          >
> >          > if the physical media is twisted pair copper, set the TP bit
> >         in the
> >          > 'supported' field
> >          >
> >          > Signed-off-by: Prasad Koya <prasad@arista.com
> >         <mailto:prasad@arista.com>>
> >          > ---
> >          >   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
> >          >   1 file changed, 2 insertions(+)
> >          >
> >          > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> >         b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> >          > index 8cc077b712ad..7d197fa80d5d 100644
> >          > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> >          > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> >          > @@ -1707,6 +1707,8 @@ static int
> >         igc_ethtool_get_link_ksettings(struct net_device *netdev,
> >          >       /* twisted pair */
> >          >       cmd->base.port =3D PORT_TP;
> >          >       cmd->base.phy_address =3D hw->phy.addr;
> >          > +     if (hw->phy.media_type =3D=3D igc_media_type_copper)
> >         Thank you Prasad. i225/6 parts supported only copper media type=
.
> >         We can
> >         drop the "if" condition.
> >          > +             ethtool_link_ksettings_add_link_mode(cmd,
> >         supported, TP);
> >         Do you want to see: "Supported ports: [ TP ]"? That's right.
> >          >
> >          >       /* advertising link modes */
> >          >       if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
> >
>
>

--000000000000f6e5fd05fd5958bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt;&gt;&gt;</div><div>2. please, use the [iwl-net] p=
refix, for example:<br>[iwl-net, v2] igc: set TP bit in ethtool_link_ksetti=
ngs.supported field<br>3. you might add the fixes tag. Example:<br>Fixes: 8=
c5ad0dae93c9 (&quot;igc: Add ethtool support&quot;)<br></div><div>&lt;&lt;&=
lt;</div><div><br></div>Sent the=C2=A0current version after adding (2) and =
(3)=C2=A0<div><br></div><div>Thank you.</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jun 4, 2023 at 12:20=
=E2=80=AFAM Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com">sas=
ha.neftin@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On 6/3/2023 09:05, Prasad Koya wrote:<br>
&gt; Hi Sasha<br>
&gt; <br>
&gt; In our internal review, we found that igb and other vendors&#39; drive=
rs set <br>
&gt; the TP (or other media) bit in the &#39;advertising&#39; field as well=
. So I <br>
&gt; made the and tested the change in 6.1.31 kernel. Will send that patch =
<br>
&gt; for review.<br>
&gt; <br>
&gt; Thank you.<br>
&gt; <br>
&gt; On Fri, Jun 2, 2023 at 12:49=E2=80=AFAM Prasad Koya &lt;<a href=3D"mai=
lto:prasad@arista.com" target=3D"_blank">prasad@arista.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:prasad@arista.com" target=3D"_blank">pras=
ad@arista.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks for the quick review.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Yes, we use ETHTOOL_GLINKSETTINGS ioctl to retrieve=
 interface<br>
&gt;=C2=A0 =C2=A0 =C2=A0settings and expect to see one of TP or MII set in =
the &#39;supported&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0bitmask.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;ll send out a new patch removing the if(). Wo=
uld you accept the<br>
&gt;=C2=A0 =C2=A0 =C2=A0patch into your staging tree and later push it to t=
he stable kernel<br>
&gt;=C2=A0 =C2=A0 =C2=A0branch? This is my first time sending to intel-wire=
d-lan. Not sure<br>
&gt;=C2=A0 =C2=A0 =C2=A0how it works.<br>
<br>
1. yes, definitely we will accept.<br>
2. please, use the [iwl-net] prefix, for example:<br>
[iwl-net, v2] igc: set TP bit in ethtool_link_ksettings.supported field<br>
3. you might add the fixes tag. Example:<br>
Fixes: 8c5ad0dae93c9 (&quot;igc: Add ethtool support&quot;)<br>
Thanks,<br>
Sasha<br>
<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thank you.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Fri, Jun 2, 2023 at 12:34=E2=80=AFAM Neftin, Sas=
ha<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:sasha.neftin@intel.com" targe=
t=3D"_blank">sasha.neftin@intel.com</a> &lt;mailto:<a href=3D"mailto:sasha.=
neftin@intel.com" target=3D"_blank">sasha.neftin@intel.com</a>&gt;&gt; wrot=
e:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 6/1/2023 21:53, <a href=3D"mailto:=
prasad@arista.com" target=3D"_blank">prasad@arista.com</a> &lt;mailto:<a hr=
ef=3D"mailto:prasad@arista.com" target=3D"_blank">prasad@arista.com</a>&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; From: Prasad Koya &lt;<a href=
=3D"mailto:prasad@arista.com" target=3D"_blank">prasad@arista.com</a> &lt;m=
ailto:<a href=3D"mailto:prasad@arista.com" target=3D"_blank">prasad@arista.=
com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; if the physical media is twiste=
d pair copper, set the TP bit<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; &#39;supported&#39; field<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Prasad Koya &lt;=
<a href=3D"mailto:prasad@arista.com" target=3D"_blank">prasad@arista.com</a=
><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:prasad@a=
rista.com" target=3D"_blank">prasad@arista.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0drivers/net/etherne=
t/intel/igc/igc_ethtool.c | 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A01 file changed, 2 i=
nsertions(+)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/net/ethern=
et/intel/igc/igc_ethtool.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/net/ethernet/intel/igc/igc_=
ethtool.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; index 8cc077b712ad..7d197fa80d5=
d 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/net/ethernet/inte=
l/igc/igc_ethtool.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/net/ethernet/inte=
l/igc/igc_ethtool.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1707,6 +1707,8 @@ static in=
t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0igc_ethtool_get_link_ksettings(struct=
 net_device *netdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* tw=
isted pair */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cmd-&=
gt;base.port =3D PORT_TP;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cmd-&=
gt;base.phy_address =3D hw-&gt;phy.addr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0if (hw-&gt=
;phy.media_type =3D=3D igc_media_type_copper)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you Prasad. i225/6 parts suppor=
ted only copper media type.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0We can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drop the &quot;if&quot; condition.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0ethtool_link_ksettings_add_link_mode(cmd,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0supported, TP);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Do you want to see: &quot;Supported p=
orts: [ TP ]&quot;? That&#39;s right.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* ad=
vertising link modes */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (h=
w-&gt;phy.autoneg_advertised &amp; ADVERTISE_10_HALF)<br>
&gt; <br>
<br>
</blockquote></div>

--000000000000f6e5fd05fd5958bf--

--===============6928211174734206870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6928211174734206870==--
