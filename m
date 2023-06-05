Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F062A722E84
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 20:21:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D39941717;
	Mon,  5 Jun 2023 18:21:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D39941717
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685989277;
	bh=QC0eIJx9rY9O3zpGEwaRhMPwGKL9v0hicu1JzmboASI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JdGlUicMsDXhYWJ2BhREWoqiJ7OzMnHQ1K5nKHExsl/NcbqOhmsW9UTiyF2MrVXGL
	 VJkx+R2hciJGtBS5Yuu06qbuO63wJBUeSfC395tFHq5GQbKpr4YXN5KCUCN74aKApG
	 zv0DHpDPeUTuWv5VwX9C5y1O75GIExxaJpMgabGLXvq/N2R+zlszfozwJdxEp01gWq
	 BMqSwS9cTffTU6m8xkihK5Au6nMGcrBrozc+tWUKdEn22P7MFUU1/yLJ2yr56W5F3T
	 sAql9SAedzf8EcGH56ydmKhDInINrhLySA/exS87mD9+huK9JzI3f4nNPOhmHz0INa
	 avRnPqqNLvHYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yty_zKsAZiYV; Mon,  5 Jun 2023 18:21:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13DCC415FA;
	Mon,  5 Jun 2023 18:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13DCC415FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1DD61BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 870F44175B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 870F44175B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhoFZIE5eD3Q for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 18:11:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9264441605
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9264441605
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:11:57 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-5149c76f4dbso7895667a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jun 2023 11:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685988715; x=1688580715;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AkOsW1hxblWN1gPICNXwgYnI06KEx66GY2IJysO7xJo=;
 b=MSOTIjHVJ4dH0T0B1Hp+k9FL1LTEOaVeoWso6XlbMOsl29F8jzyz4UCjClIxLfjz3b
 s9LgjkmG5CiWt21L00TnYGOLPvz0XR6tcvWt9BRzPMb+8oParFkt0D1tATREhXpjJc3Y
 u8zzWZM73v58wArkCnb7bMGH3KbWDnXLY6W1gClxjgCc2+agkcJYsYZpWgs1OmGaWdr+
 BMNsXGuma0xMoM99g4msCMgAf0XOtA1grLq8/2jCVi7OxaDn9lA7SnJgTocSQ0rIaamc
 oFnil3Nih9QSsEN+GUSXV5v9c+5Da8tgY6Wqk257UsgG5z8yvT/feIwo2RtD3lhARZzs
 HQRg==
X-Gm-Message-State: AC+VfDyq9wUJ6UrXz5GZxR9RIwvKpRN4sSkrJmjcOUlqJmb7enGQIuoO
 M3hW9QzMBb9PLUgTafxpqUxcThqOczflB03swyRyUA==
X-Google-Smtp-Source: ACHHUZ71ZlId5y4u0HN6j6BIfm2CDj2krAK2Js6r8ORw3vEehYWUF8fMYaq/N9jeT6SkU8fmH1KdyyKbG/WTBKOxoII=
X-Received: by 2002:a17:907:168a:b0:973:d846:cd5d with SMTP id
 hc10-20020a170907168a00b00973d846cd5dmr7550034ejc.74.1685988715490; Mon, 05
 Jun 2023 11:11:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230605031534.9846-1-prasad@arista.com>
 <4652cc32-7a00-145f-01e1-8a84ab1d2bf7@molgen.mpg.de>
In-Reply-To: <4652cc32-7a00-145f-01e1-8a84ab1d2bf7@molgen.mpg.de>
From: Prasad Koya <prasad@arista.com>
Date: Mon, 5 Jun 2023 11:11:43 -0700
Message-ID: <CAKh1g56k5YfKcHKT_gWdRu6geo1F9tn+8U1pcXa=NToeStvgzA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Neftin,
 Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Mon, 05 Jun 2023 18:21:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685988715; x=1688580715;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=AkOsW1hxblWN1gPICNXwgYnI06KEx66GY2IJysO7xJo=;
 b=bOoGt0+JIAtN+vuN9Cfjnh/wQ9ohB2hkhUXYH9klODKAeH/LkUJdn50JeRgEMe75tD
 E41eZ/1t4iDljL4UBEtHB08j+2poc9nOzqDnPst8OQYkUfu90+cWbFWdm9V+p1GiiuJz
 nSfOI6euRApyaGbLKXXE6ohx2frETQ99qK/U+iq0hU3QnuccjTzZEgmIojHv1GwdIcgU
 BPj1cHvHwztpZF4dN4792vz9odirlMrerjv7RnREXztmnpV2jTl0PKZvJ/NYE+/LXqb0
 BUC+Xfyo/zV+37cGPfKdYxMI2LBahhydOqcdHY/aFsdNifbAIHVqSBz4YnB732kP7tOQ
 lbpQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=bOoGt0+J
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net,
 v2] igc: set TP bit in 'supported' and 'advertising' fields of
 ethtool_link_ksettings
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Salam Noureddine <noureddine@arista.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Bob Gilligan <gilligan@arista.com>, intel-wired-lan@lists.osuosl.org,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, Amir Avivi <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============4119169657185205509=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4119169657185205509==
Content-Type: multipart/alternative; boundary="0000000000007b98aa05fd65d69d"

--0000000000007b98aa05fd65d69d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for pointing out checkpatch.pl. Ran checkpatch.pl on the patch.
Script said patch is ready to submit.

I also fixed the " i225/226 parts" and added "Acked-by:" line.

Thanks guys.

On Mon, Jun 5, 2023 at 10:05=E2=80=AFAM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:

> Dear Prasad,
>
>
> Am 05.06.23 um 05:15 schrieb Prasad Koya:
> > set TP bit in the 'supported' and 'advertising' fields. I226 only
> supports twisted pair copper.
>
> Please wrap lines after 75 characters in commit messages.
>
> > Fixes: 8c5ad0dae93c9 ("igc: Add ethtool support")
>
> `scripts/checkpatch.pl` says:
>
>      WARNING: Please use correct Fixes: style 'Fixes: <12 chars of sha1>
> ("<title line>")' - ie: 'Fixes: 8c5ad0dae93c ("igc: Add ethtool support")=
'
>
> > Signed-off-by: Prasad Koya <prasad@arista.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > index 8cc077b712ad..511fc3f41208 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct
> net_device *netdev,
> >       /* twisted pair */
> >       cmd->base.port =3D PORT_TP;
> >       cmd->base.phy_address =3D hw->phy.addr;
> > +     ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
> > +     ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
> >
> >       /* advertising link modes */
> >       if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
>
>
> Kind regards,
>
> Paul
>

--0000000000007b98aa05fd65d69d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for pointing out <a href=3D"http://checkpatch.pl">c=
heckpatch.pl</a>. Ran <a href=3D"http://checkpatch.pl">checkpatch.pl</a> on=
 the patch. Script said patch is ready to submit.<div><br></div><div>I also=
 fixed the &quot; i225/226 parts&quot; and added &quot;Acked-by:&quot; line=
.</div><div><br></div><div>Thanks guys.</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 5, 2023 at 10:05=
=E2=80=AFAM Paul Menzel &lt;<a href=3D"mailto:pmenzel@molgen.mpg.de">pmenze=
l@molgen.mpg.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Dear Prasad,<br>
<br>
<br>
Am 05.06.23 um 05:15 schrieb Prasad Koya:<br>
&gt; set TP bit in the &#39;supported&#39; and &#39;advertising&#39; fields=
. I226 only supports twisted pair copper.<br>
<br>
Please wrap lines after 75 characters in commit messages.<br>
<br>
&gt; Fixes: 8c5ad0dae93c9 (&quot;igc: Add ethtool support&quot;)<br>
<br>
`scripts/<a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_bla=
nk">checkpatch.pl</a>` says:<br>
<br>
=C2=A0 =C2=A0 =C2=A0WARNING: Please use correct Fixes: style &#39;Fixes: &l=
t;12 chars of sha1&gt; <br>
(&quot;&lt;title line&gt;&quot;)&#39; - ie: &#39;Fixes: 8c5ad0dae93c (&quot=
;igc: Add ethtool support&quot;)&#39;<br>
<br>
&gt; Signed-off-by: Prasad Koya &lt;<a href=3D"mailto:prasad@arista.com" ta=
rget=3D"_blank">prasad@arista.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++<br>
&gt;=C2=A0 =C2=A01 file changed, 2 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/ne=
t/ethernet/intel/igc/igc_ethtool.c<br>
&gt; index 8cc077b712ad..511fc3f41208 100644<br>
&gt; --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
&gt; +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
&gt; @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct=
 net_device *netdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* twisted pair */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cmd-&gt;base.port =3D PORT_TP;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cmd-&gt;base.phy_address =3D hw-&gt;phy.addr=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ethtool_link_ksettings_add_link_mode(cmd, support=
ed, TP);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ethtool_link_ksettings_add_link_mode(cmd, adverti=
sing, TP);<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* advertising link modes */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (hw-&gt;phy.autoneg_advertised &amp; ADVE=
RTISE_10_HALF)<br>
<br>
<br>
Kind regards,<br>
<br>
Paul<br>
</blockquote></div>

--0000000000007b98aa05fd65d69d--

--===============4119169657185205509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4119169657185205509==--
