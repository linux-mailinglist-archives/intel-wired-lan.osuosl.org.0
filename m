Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57EB5057DF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AEC540B88;
	Mon, 18 Apr 2022 13:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6YKRdXu59TcT; Mon, 18 Apr 2022 13:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CC0F40B84;
	Mon, 18 Apr 2022 13:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9D401BF575
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 16:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91BF840A42
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 16:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NsP-KP5h2tYx for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 16:28:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47817400B8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 16:28:17 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id ks6so20226619ejb.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 09:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=urZU6KrOrqSGwz0m+DXI0c5kidJoxfuUc3lccO9cR94=;
 b=RpghoDODTD+M97ziS0MCCaHepBeh5NlSXMNtfZYbIhumwLcXxjka0WIbhm8HtjjamN
 sVfQCM2VosU0rwFvyGXtbnIdfPgg6cEc4FkXxnWR2FYuxl09eZg/dXQYRE+Kv552UN0g
 WMmD9i/HrBynGr831y5DNloziIoW4HWJl5j1UHSkPZ5OzPVAh8XdxWC199ghl/4Gmsbf
 9jJ5tnFO0+GfiFAS6GTAYSlbdaLY52XWnkLhYkrbI2v1B5VkIJg1g+63RbpQ9UbGwp7G
 x+hb17av43Yqrm/RTQ9gVW8Hbgouqc0F2jxBh+aVW+gPpvVZ+FTBRaGLo/p7D3I94wZY
 CqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=urZU6KrOrqSGwz0m+DXI0c5kidJoxfuUc3lccO9cR94=;
 b=KyqzQeBVNr3yDtV8wSoYHImBCBxx9A73X6TZU3POdVBuAIAGzbbGUpyZ+rvsW4Zwla
 FGqgIwka1tlSwxS5fLMRBBJwkTul0k6cMlh7F7wAKv7eKHCj9gFIvboNzuQDaaBnEETZ
 JsrIXAoxyxf6gSC3pOGCH/MyfMzuqMcbkBC6AZqmdpE6Xv4lwiEx3b21UF+ewdxj+QxI
 +W+frns0366Aw95hPAgDQIiZ0rIZ9K/iiA2BlQnb1l1e7GWWJqXjYFLpLGyydte42AoH
 2ffGth3Unqcp77C1u+N+czNeA21ELznV/Ro1+FSbGFhq8lsx7V88Oln81VLX+IfLwzYw
 jf9Q==
X-Gm-Message-State: AOAM531zHQs4M7nrSYVSumDmNLzKKNR3Uo5HPFMOWfOgHlQ9yNXXAtXO
 vBhIc8sKkVaO12qIQb86eoM=
X-Google-Smtp-Source: ABdhPJzSxbU3gaFGr+ua4dXtr/FaGXykZ1DwuE/wLuocjrs63K4wlQQ4DGkWXIbGlMULBsOtMxN19Q==
X-Received: by 2002:a17:907:33cc:b0:6e8:81ca:f9e8 with SMTP id
 zk12-20020a17090733cc00b006e881caf9e8mr3269885ejb.51.1650126495513; 
 Sat, 16 Apr 2022 09:28:15 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it.
 [79.50.86.254]) by smtp.gmail.com with ESMTPSA id
 l13-20020a056402254d00b0041d9247d8efsm4512064edb.26.2022.04.16.09.28.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 09:28:14 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
Date: Sat, 16 Apr 2022 18:28:12 +0200
Message-ID: <2114356.Mh6RI2rZIc@leap>
In-Reply-To: <1897617.PYKUYFuaPT@leap>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204161608230.3501@hadrien> <1897617.PYKUYFuaPT@leap>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 ira.weiny@intel.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============2804434310388314117=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.

--===============2804434310388314117==
Content-Type: multipart/alternative; boundary="nextPart3490882.R56niFO833"
Content-Transfer-Encoding: 7Bit

This is a multi-part message in MIME format.

--nextPart3490882.R56niFO833
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-1"

On sabato 16 aprile 2022 17:52:20 CEST Fabio M. De Francesco wrote:
> On sabato 16 aprile 2022 16:09:58 CEST Julia Lawall wrote:
> >=20
> > On Sat, 16 Apr 2022, Alaa Mohamed wrote:
> >=20
> > >
> > > On =D9=A1=D9=A6/=D9=A4/=D9=A2=D9 =D9=A2=D9=A2 =D9=A1=D9=A3:=D9=A3=D9=
=A1, Julia Lawall wrote:
> > > >
> > > > On Sat, 16 Apr 2022, Alaa Mohamed wrote:
> > > >
> > > > > Convert kmap() to kmap_local_page()
> > > > >
> > > > > With kmap_local_page(), the mapping is per thread, CPU local and=
=20
> not
> > > > > globally visible.
> > > > It's not clearer.
> > > I mean this " fix kunmap_local path value to take address of the=20
mapped=20
> page"
> > > be more clearer
> > > > This is a general statement about the function.  You
> > > > need to explain why it is appropriate to use it here.  Unless it is=
=20
> the
> > > > case that all calls to kmap should be converted to call=20
> kmap_local_page.
> > > It's required to convert all calls kmap to kmap_local_page. So, I=20
don't=20
> what
> > > should the commit message be?
> >=20
> > If all calls should be changed then you can also say that.
>=20
> If all calls should be changed with no regards to the surrounding=20
contexts=20
> and special situations, we can just make an automated s/kmap()/
> kmap_local_page()/ or something else similar :)

Obviously, I was just kidding because we cannot massively and blindly=20
change all kmap() calls to kmap_local_page().

IMO, here the changes in code are good but Julia's objections are=20
legitimate too.

Thanks,

=46abio

> >=20
> > I thought that a previous commit on the outreachy list made some=20
> arguments
> > about how the affacted value was just allocated and thus could not yet=
=20
be
> > shared.
> >=20
> > julia
>
--nextPart3490882.R56niFO833
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="ISO-8859-1"

<html>
<head>
<meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8">
</head>
<body><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0=
;">On sabato 16 aprile 2022 17:52:20 CEST Fabio M. De Francesco wrote:</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; On sabato 16 aprile 2022 16:09:58 CEST Julia Lawall wrote:</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; On Sat, 16 Apr 2022, Alaa Mohamed wrote:</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt;</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; On =D9=A1=D9=A6/=D9=A4/=D9=A2=D9 =D9=A2=D9=A2 =D9=A1=D9=A3:=D9=
=A3=D9=A1, Julia Lawall wrote:</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt;</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; On Sat, 16 Apr 2022, Alaa Mohamed wrote:</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt;</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; &gt; Convert kmap() to kmap_local_page()</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; &gt;</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; &gt; With kmap_local_page(), the mapping is per thread, CP=
U local and </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; not</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; &gt; globally visible.</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; It's not clearer.</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; I mean this &quot; fix kunmap_local path value to take address =
of the mapped </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; page&quot;</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; be more clearer</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; This is a general statement about the function.&nbsp; You<=
/p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; need to explain why it is appropriate to use it here.&nbsp=
; Unless it is </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; the</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; &gt; case that all calls to kmap should be converted to call </=
p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; kmap_local_page.</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; It's required to convert all calls kmap to kmap_local_page. So,=
 I don't </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; what</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; &gt; should the commit message be?</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; If all calls should be changed then you can also say that.</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; If all calls should be changed with no regards to the surrounding context=
s </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; and special situations, we can just make an automated s/kmap()/</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; kmap_local_page()/ or something else similar :)</p>
<br /><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0=
;">Obviously, I was just kidding because we cannot massively and blindly ch=
ange all kmap() calls to kmap_local_page().</p>
<br /><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0=
;">IMO, here the changes in code are good but Julia's objections are legiti=
mate too.</p>
<br /><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0=
;">Thanks,</p>
<br /><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0=
;">Fabio</p>
<br /><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0=
;">&gt; &gt; </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; I thought that a previous commit on the outreachy list made some </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; arguments</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; about how the affacted value was just allocated and thus could not y=
et be</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; shared.</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; </p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
; &gt; julia</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt=
;</p>
</body>
</html>
--nextPart3490882.R56niFO833--




--===============2804434310388314117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2804434310388314117==--



