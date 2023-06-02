Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2352D7205CD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 17:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B905841885;
	Fri,  2 Jun 2023 15:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B905841885
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685719197;
	bh=3ic6tS0u/Ls+ZJs/+TJhKdMqDcrlR/X9tXj7CmZ27rA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qpowJWspway6GBFu/MibeA6oSI43avHfGoQI3H8MM26bGwRouxpisCaoY3RVlqEGO
	 H611iv3Rp6NQwoXGrNrxF+DiJEPK/mBASqC/FAFS1H8cNaJoW+mWPUp7dKnfCxqr0g
	 MmqJos636cPftiUggvOPOio97mA0xBy/CkbIxP7wudY73g6J4bBy1e3hkgDo+aKnRa
	 iCFwLNwohiIjqeujIblQu/TrpizXQGSmgBYHXYvLhdPNdUmkRYoTT+Ct9scgH1Q+zo
	 +oJN7naNTWX5jzLwWPZOMDXn7JayWU1V/Ocr3COw7JyKTQ/Yg8MV4cuQNfoGqqR19c
	 DvLDmnMfjCB/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L32DS7YR42bD; Fri,  2 Jun 2023 15:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6127D405B3;
	Fri,  2 Jun 2023 15:19:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6127D405B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4141BF599
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 719FA81E53
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 719FA81E53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tj0xesnoYq0v for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 07:50:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE14C83C19
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE14C83C19
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 07:50:05 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-96f5d651170so645617766b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 00:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685692204; x=1688284204;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Nm6904e9uOTwjcadb4t+yWnWamyOPNPf3ur/MojkN0o=;
 b=dEO4l9N8rRJYopCw4Ywkp81LWa9Px7iD9Nil+EeHMgwCvMG+MP15SAazQ+GBzkJmLo
 il2v8oB7Cb2DC6jTMvYiLsPL7mWoJRDg11QgrnPu6wRAJZQrAZd7jX89Ffkm9rBFwOiL
 Xhl1TVTk1iZPiCc9iJ/UlvLnofIXskkSre70ivcV2NERSfzL0VWvfWMuWIFdaQupPxfA
 IBIb1Nd4RlbiLL6aREQeQfkuuz3DBAE0AP4E8hcMiUqd7O9Pj5HclSp8U6ZGK9+TWiFt
 oCp3M5+FBd78lFVONYb8Ib/wFnA4Q4LIs/KD6zfZ76Wbayrc0FWQPz0NuabI7fbcn8di
 C4wg==
X-Gm-Message-State: AC+VfDwflhe8Nyc5wF1WztZRBBRFeuxC/PZ8QRNpFJooX5OgU9UDjNuA
 /Hz9EbMcucShgUNk1dzEFxFyVk8kJDMpdBxQ+AEbKA==
X-Google-Smtp-Source: ACHHUZ5f4MMmaN/T0CLf0iD4uGBRMw/+J0xQ6r10Lefy5sOrDczyeEpuYi5fSM8G+dxx2k2xOq6M1QmOTddP3ThfAgM=
X-Received: by 2002:a17:907:86a3:b0:968:892b:1902 with SMTP id
 qa35-20020a17090786a300b00968892b1902mr3598207ejc.6.1685692203986; Fri, 02
 Jun 2023 00:50:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230601185353.17012-1-prasad@arista.com>
 <cbb5bf34-5082-13ec-45b8-590268279bae@intel.com>
In-Reply-To: <cbb5bf34-5082-13ec-45b8-590268279bae@intel.com>
From: Prasad Koya <prasad@arista.com>
Date: Fri, 2 Jun 2023 00:49:52 -0700
Message-ID: <CAKh1g57arCC3a0iv+pc+xKJk+8HgzqvK6SjJt83uVQedw2Hm9w@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Fri, 02 Jun 2023 15:19:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685692204; x=1688284204;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Nm6904e9uOTwjcadb4t+yWnWamyOPNPf3ur/MojkN0o=;
 b=fbpP9sh9S6CHtQRspjhHpTeWEjUYQi6Uh8lIhQBAb5WWEzKfldZwJCrkMhPM50ia6n
 vPnOyq6LDRZ5N364sJsRGvIV1t3j/rWW/Hr5baywFyRSSWOKNkSS+9qCBNMJ8zbLYr2K
 osnWP2zSt4mq9OyBcWcaNZsDwhF91fDaQ2CjHoDe1KaOzN19wCq0/ytS/ixpkElEt3wZ
 7TpYZCCTQP/tPjV4Ka+p7gQhj9Udqqsp88zq9jmFiIQuIXMktEfzBMnQjziL2ulop3X7
 Ww2Qfqlglh/88g8PYsq54GnzeTGFeg10WBVdDZyBqsSIUHYMoOicnrrqU6eFjfeDHPlZ
 kceA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=fbpP9sh9
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, gilligan@arista.com,
 intel-wired-lan@lists.osuosl.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============4063628762715040628=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4063628762715040628==
Content-Type: multipart/alternative; boundary="00000000000005147705fd20cd0d"

--00000000000005147705fd20cd0d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the quick review.

Yes, we use ETHTOOL_GLINKSETTINGS ioctl to retrieve interface settings and
expect to see one of TP or MII set in the 'supported' bitmask.

I'll send out a new patch removing the if(). Would you accept the patch
into your staging tree and later push it to the stable kernel branch? This
is my first time sending to intel-wired-lan. Not sure how it works.

Thank you.

On Fri, Jun 2, 2023 at 12:34=E2=80=AFAM Neftin, Sasha <sasha.neftin@intel.c=
om>
wrote:

> On 6/1/2023 21:53, prasad@arista.com wrote:
> > From: Prasad Koya <prasad@arista.com>
> >
> > if the physical media is twisted pair copper, set the TP bit in the
> > 'supported' field
> >
> > Signed-off-by: Prasad Koya <prasad@arista.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > index 8cc077b712ad..7d197fa80d5d 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct
> net_device *netdev,
> >       /* twisted pair */
> >       cmd->base.port =3D PORT_TP;
> >       cmd->base.phy_address =3D hw->phy.addr;
> > +     if (hw->phy.media_type =3D=3D igc_media_type_copper)
> Thank you Prasad. i225/6 parts supported only copper media type. We can
> drop the "if" condition.
> > +             ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
> Do you want to see: "Supported ports: [ TP ]"? That's right.
> >
> >       /* advertising link modes */
> >       if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
>
>

--00000000000005147705fd20cd0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the quick review.<div><br></div><div>Yes, we us=
e ETHTOOL_GLINKSETTINGS ioctl to retrieve interface settings and expect to =
see one of TP or MII set in the &#39;supported&#39; bitmask.</div><div><br>=
</div><div>I&#39;ll send out a new patch removing the if(). Would you accep=
t the patch into your staging tree and later push it to the stable kernel b=
ranch? This is my first time sending to intel-wired-lan. Not sure how it wo=
rks.=C2=A0</div><div><br></div><div>Thank you.</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 2, 2023 at =
12:34=E2=80=AFAM Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com=
">sasha.neftin@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">On 6/1/2023 21:53, <a href=3D"mailto:prasad@arista.=
com" target=3D"_blank">prasad@arista.com</a> wrote:<br>
&gt; From: Prasad Koya &lt;<a href=3D"mailto:prasad@arista.com" target=3D"_=
blank">prasad@arista.com</a>&gt;<br>
&gt; <br>
&gt; if the physical media is twisted pair copper, set the TP bit in the<br=
>
&gt; &#39;supported&#39; field<br>
&gt; <br>
&gt; Signed-off-by: Prasad Koya &lt;<a href=3D"mailto:prasad@arista.com" ta=
rget=3D"_blank">prasad@arista.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++<br>
&gt;=C2=A0 =C2=A01 file changed, 2 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/ne=
t/ethernet/intel/igc/igc_ethtool.c<br>
&gt; index 8cc077b712ad..7d197fa80d5d 100644<br>
&gt; --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
&gt; +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
&gt; @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct=
 net_device *netdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* twisted pair */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cmd-&gt;base.port =3D PORT_TP;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cmd-&gt;base.phy_address =3D hw-&gt;phy.addr=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (hw-&gt;phy.media_type =3D=3D igc_media_type_c=
opper)<br>
Thank you Prasad. i225/6 parts supported only copper media type. We can <br=
>
drop the &quot;if&quot; condition.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ethtool_link_ksetting=
s_add_link_mode(cmd, supported, TP);<br>
Do you want to see: &quot;Supported ports: [ TP ]&quot;? That&#39;s right.<=
br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* advertising link modes */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (hw-&gt;phy.autoneg_advertised &amp; ADVE=
RTISE_10_HALF)<br>
<br>
</blockquote></div>

--00000000000005147705fd20cd0d--

--===============4063628762715040628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4063628762715040628==--
