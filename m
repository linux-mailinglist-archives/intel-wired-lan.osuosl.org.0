Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 218EF722AF1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 17:25:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1C9C82204;
	Mon,  5 Jun 2023 15:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1C9C82204
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685978736;
	bh=GsD2/l3O0bZG6/oSUX4jd7KDSqNV6ujh4ANepVV3ZOY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lw4IE3Q6f+qY1rk96GbOh3M4qnsi4z1i/ZRUZ55RqVo3XnAnQUwAtq1DNf5qCcZRG
	 n0Eiw0yA70hDDgOb3u33LfmWqwX17t+sYBde3iY4XxqJiTBFIzpwCQn8vFwMpzi0zf
	 7EShczEJeA5SAlxv0WnOxoKQkgYfil5rRS5G8kmaaNz/r6i8zOguR/Pf33znBsCiRG
	 SsWZHerAHFloyXX1vbbutAlF0Wvn+i6k/77Tv95WkeOG16J6Twy4bpJnpaT/X41wpe
	 /aKSwi2q0HZIS6sBF6NXhkV6cDT97RL1TvNHXI0pgkIZM7a9h+uOMAamSZCPUp2+0M
	 6dhPKdno/r3RQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nIRmAK4i6R6b; Mon,  5 Jun 2023 15:25:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6771D821E3;
	Mon,  5 Jun 2023 15:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6771D821E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EB961BF844
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0683F84570
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0683F84570
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CnGB731j2Gqg for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Jun 2023 06:06:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 984A28456E
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 984A28456E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 06:06:00 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-97668583210so119956066b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 23:06:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685772358; x=1688364358;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jp8j/BUWxYwgQPSXKNBWmKSvlmxUV9LOMrWvOa/OR9o=;
 b=QHfFvR14LpB7v1ArCaYSMe6zLqXN7UQsWDFAVe9NJJZLRmpN5DSZStw15lzm6DDsW7
 jwKO53UhflOAT7QHfMRySbyZ4bnlLZp/gofxLYOqwZF45cnnp+wHrnWhhroIUln7adVw
 LlKiPr6sfhKCyzCFhWguMw9MW4WrweIBmxMSt5/L00a+tIbX4kkeKbmAxxhBNXGoKVqw
 2hIBJniCrMC0rHjOqx3sDzvbhy09WTqBlXGJ1NIr3+UKwze7Eaxc3B45jwNiOHOl+EVU
 /oujab3ZxOJ5j2yhx+XXS+IK/1ZWNaZJQYqRH/r2w0k44Qkb8as/BRk19lzY0WrEZGJ4
 SQXg==
X-Gm-Message-State: AC+VfDwtPvfVI6GMWjxltdiTfxl4esAq7GztGta/WtTjPMr6eqpwupe1
 2NPM2CS5b93dD3N2MgcmUN/ttmyULb2JmaBjDCAPgw==
X-Google-Smtp-Source: ACHHUZ5TfkXcZJQvUKmMcTw8/mMswv5KNk4HIBmj9beLMI5x2mEAnmTQ14LugZltTD7AGZLD7kT4R2dTEYYmS3Fl/3E=
X-Received: by 2002:a17:907:60cc:b0:973:ff4d:d01e with SMTP id
 hv12-20020a17090760cc00b00973ff4dd01emr923644ejc.31.1685772358498; Fri, 02
 Jun 2023 23:05:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230601185353.17012-1-prasad@arista.com>
 <cbb5bf34-5082-13ec-45b8-590268279bae@intel.com>
 <CAKh1g57arCC3a0iv+pc+xKJk+8HgzqvK6SjJt83uVQedw2Hm9w@mail.gmail.com>
In-Reply-To: <CAKh1g57arCC3a0iv+pc+xKJk+8HgzqvK6SjJt83uVQedw2Hm9w@mail.gmail.com>
From: Prasad Koya <prasad@arista.com>
Date: Fri, 2 Jun 2023 23:05:47 -0700
Message-ID: <CAKh1g548roQKgHu6aS+SAB2Ux+HkJHWgpfEFvvqqnHu56F1sDQ@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Mon, 05 Jun 2023 15:25:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1685772358; x=1688364358;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=jp8j/BUWxYwgQPSXKNBWmKSvlmxUV9LOMrWvOa/OR9o=;
 b=WZXAaWb4ALu5ejpaYT6l96CafcXWifmuvrDIrXyCUSF5P6R24UQIesVi7s7nMkHowl
 8QqepM9IX1eSn3ckzeom4a9ITKLasQeI678w1YKlPwYfR+Azki9uqfp4cyjFLjrLOIWo
 MZjD05zpZax8IGROhi1utwWbJ3fE3VN8U27vTkRvRLp3dBfYrVt5m3gPJy2NDBIQ3KeJ
 vLy1oV9hXRNOZlh8xuUqWK+qfQ0Tvlt91LWtgSnnoym0gqHMiLFJgtkiptqLnx53m+T4
 4TfHPDeEd8XLe1ZG3pMIFigVHJ6ERIenLce11z/DpFxsxGFpgIuwNWdWsQGOdL3gh6dF
 HY5g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=WZXAaWb4
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
Content-Type: multipart/mixed; boundary="===============6766544525590569257=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6766544525590569257==
Content-Type: multipart/alternative; boundary="0000000000009a777c05fd337635"

--0000000000009a777c05fd337635
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sasha

In our internal review, we found that igb and other vendors' drivers set
the TP (or other media) bit in the 'advertising' field as well. So I made
the and tested the change in 6.1.31 kernel. Will send that patch for
review.

Thank you.

On Fri, Jun 2, 2023 at 12:49=E2=80=AFAM Prasad Koya <prasad@arista.com> wro=
te:

> Thanks for the quick review.
>
> Yes, we use ETHTOOL_GLINKSETTINGS ioctl to retrieve interface settings an=
d
> expect to see one of TP or MII set in the 'supported' bitmask.
>
> I'll send out a new patch removing the if(). Would you accept the patch
> into your staging tree and later push it to the stable kernel branch? Thi=
s
> is my first time sending to intel-wired-lan. Not sure how it works.
>
> Thank you.
>
> On Fri, Jun 2, 2023 at 12:34=E2=80=AFAM Neftin, Sasha <sasha.neftin@intel=
.com>
> wrote:
>
>> On 6/1/2023 21:53, prasad@arista.com wrote:
>> > From: Prasad Koya <prasad@arista.com>
>> >
>> > if the physical media is twisted pair copper, set the TP bit in the
>> > 'supported' field
>> >
>> > Signed-off-by: Prasad Koya <prasad@arista.com>
>> > ---
>> >   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>> >   1 file changed, 2 insertions(+)
>> >
>> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> > index 8cc077b712ad..7d197fa80d5d 100644
>> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> > @@ -1707,6 +1707,8 @@ static int igc_ethtool_get_link_ksettings(struct
>> net_device *netdev,
>> >       /* twisted pair */
>> >       cmd->base.port =3D PORT_TP;
>> >       cmd->base.phy_address =3D hw->phy.addr;
>> > +     if (hw->phy.media_type =3D=3D igc_media_type_copper)
>> Thank you Prasad. i225/6 parts supported only copper media type. We can
>> drop the "if" condition.
>> > +             ethtool_link_ksettings_add_link_mode(cmd, supported, TP)=
;
>> Do you want to see: "Supported ports: [ TP ]"? That's right.
>> >
>> >       /* advertising link modes */
>> >       if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
>>
>>

--0000000000009a777c05fd337635
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sasha<div><br></div><div>In our internal review, we fou=
nd that igb and other vendors&#39; drivers set the TP (or other media) bit =
in the &#39;advertising&#39; field as well. So I made the and tested the ch=
ange in 6.1.31 kernel. Will send that patch for review.=C2=A0</div><div><br=
></div><div>Thank you.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Jun 2, 2023 at 12:49=E2=80=AFAM Prasa=
d Koya &lt;<a href=3D"mailto:prasad@arista.com">prasad@arista.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Thanks for the quick review.<div><br></div><div>Yes, we use ETHTOO=
L_GLINKSETTINGS ioctl to retrieve interface settings and expect to see one =
of TP or MII set in the &#39;supported&#39; bitmask.</div><div><br></div><d=
iv>I&#39;ll send out a new patch removing the if(). Would you accept the pa=
tch into your staging tree and later push it to the stable kernel branch? T=
his is my first time sending to intel-wired-lan. Not sure how it works.=C2=
=A0</div><div><br></div><div>Thank you.</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 2, 2023 at 12:34=
=E2=80=AFAM Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com" tar=
get=3D"_blank">sasha.neftin@intel.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">On 6/1/2023 21:53, <a href=3D"mailto:p=
rasad@arista.com" target=3D"_blank">prasad@arista.com</a> wrote:<br>
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
</blockquote></div>

--0000000000009a777c05fd337635--

--===============6766544525590569257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6766544525590569257==--
