Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2445057E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 320DC4100B;
	Mon, 18 Apr 2022 13:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-vgSPF-EtnX; Mon, 18 Apr 2022 13:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B3E840B84;
	Mon, 18 Apr 2022 13:55:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 211A81BF341
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 21:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D06C611D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 21:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 33_4Lwg5RO72 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 21:43:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD48A605AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 21:43:09 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id z12so13672863edl.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 14:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lWYQzTIke+I/BBxWjft+Tol7xy00WJ90k4QGc0ykxY0=;
 b=RRSz97WADhUUcCAs/8odh+Or6tW50E5Dxd42pD+VtFzvhEdkZlXewLWdcFGlS+XknA
 zQdehWze/v+Z0Bcg2RDDPq9JrwzbRo8LfL6Wjso2hnoqNN+IKGqjrzK1vOBMoOk81GgA
 pJ5fAh0KqNkN1wk9lrm18/iEe4fe2L6PR2QHqsU1tfqZ6vKbr5pSqgFIdzuLO9XqVIkp
 J0jtJfgvg9FDL3TT7MSRkK3SVWxa3EuYw+rLAyH4fwdLzmBH9sg9NglziRh2iLRjs7Eb
 sE4Aa+iZEpT0QMJsOpm+mvJmUsPLQRASHK913Vb0OuMMxjQQ0kIXjrJs7HC0QkZOuVjd
 DBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lWYQzTIke+I/BBxWjft+Tol7xy00WJ90k4QGc0ykxY0=;
 b=Bq0ICCeK5xrwNmEaaXvNGxjJtxq8Uo5EZaZLMZcXOwXy0D9EO9rH/FUMTpy7s78x9X
 i3QytkLSZkry+sMbkWP0D84ICEq7bGzESlmO40aQA537U+MhAZq8fCUCdIC7p43cOU44
 VzBDHGG0XURjMG0bnDDE+XXcfvrew2B6pBr/sjA3csUNPQ05UI9/4YRBUbFkWOlm9n/4
 mUe+bLr53zPnGmVWpzuSVFgGYFcgFPHtsKAIqY5miOwOZfd3Gun7mEcLqJNtUt+q+tnt
 NesuidS1f6XbOxbGVVcpKZXUmW5nXNCCvEZmOUbrgqGED8LmxHnlmkBNTwG4/EbPVTlM
 iCJw==
X-Gm-Message-State: AOAM533O4Mi9igaVrgxhp5nnQGGkKlxLpjh0OgTpu5Wosp8gX0t63uiU
 Rc4UlSv4r2Nd1s8ixSg6aSk=
X-Google-Smtp-Source: ABdhPJwpsZNTrmAX4qatilJPJfufQoUAjkKcBB+gTec0OwzFWAY9Hfl3Iq/zMEOee8Mws/JcREHUdg==
X-Received: by 2002:a50:fb0b:0:b0:41d:8cd4:659f with SMTP id
 d11-20020a50fb0b000000b0041d8cd4659fmr5446108edq.10.1650145387804; 
 Sat, 16 Apr 2022 14:43:07 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it.
 [79.50.86.254]) by smtp.gmail.com with ESMTPSA id
 e13-20020a1709067e0d00b006e880b53294sm2988632ejr.58.2022.04.16.14.43.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 14:43:06 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Date: Sat, 16 Apr 2022 23:43:03 +0200
Message-ID: <4058066.1IzOArtZ34@leap>
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 kuba@kernel.org, pabeni@redhat.com, ira.weiny@intel.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============2941277115071908401=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.

--===============2941277115071908401==
Content-Type: multipart/alternative; boundary="nextPart2577984.BddDVKsqQX"
Content-Transfer-Encoding: 7Bit

This is a multi-part message in MIME format.

--nextPart2577984.BddDVKsqQX
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

On sabato 16 aprile 2022 17:52:20 CEST Fabio M. De Francesco wrote:
> On sabato 16 aprile 2022 16:09:58 CEST Julia Lawall wrote:
> > 
> > If all calls should be changed then you can also say that.
> 
> If all calls should be changed with no regards to the surrounding 
contexts 
> and special situations, we can just make an automated s/kmap()/
> kmap_local_page()/ or something else similar :)

Hi Julia,

Of course I was just kidding when talking of massively automated 
substitutions. They are not feasible and we cannot blindly replace all 
kmap() calls with kmap_local_page().

Although these code changes look good, your objections are appropriate and 
legitimate.

Not all kmap() calls can be changed to kmap_local_page() and, if someone 
wants to make such replacements, they should also "prove" somehow that they 
are doing the right changes in that specific context.

For example, the following is one of those cases where such a replacement 
is not allowed and a different solution has yet to be found:

https://lore.kernel.org/lkml/2a7030f5-d55f-94c7-90ba-5a57235159f6@amd.com/

Furthermore, if people cannot "prove" that this change is feasible, their  
patches will probably be ignored / rejected just because many maintainers 
still don't know if those changes are correct and safe.

Whoever wants to do these changes should understand the specific context in 
which they are working. 

For example, there have also been cases where alloc_page() + kmap() was 
simply replaced by kmalloc(). Sure!

If you are interested to see how and why, please take a look at the commit 
633b0616cfe0 ("x86/sgx: Remove unnecessary kmap() from 
sgx_ioc_enclave_init()") from Ira Weiny.

Regards,

Fabio

> > 
> > I thought that a previous commit on the outreachy list made some 
> arguments
> > about how the affacted value was just allocated and thus could not yet 
be
> > shared.
> > 
> > julia
> 

--nextPart2577984.BddDVKsqQX
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="ISO-8859-1"

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">On sabato 16 aprile 2022 17:52:20 CEST Fabio M. De Francesco wrote:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; On sabato 16 aprile 2022 16:09:58 CEST Julia Lawall wrote:</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; If all calls should be changed then you can also say that.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; If all calls should be changed with no regards to the surrounding contexts </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; and special situations, we can just make an automated s/kmap()/</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; kmap_local_page()/ or something else similar :)</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Hi Julia,</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Of course I was just kidding when talking of massively automated substitutions. They are not feasible and we cannot blindly replace all kmap() calls with kmap_local_page().</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Although these code changes look good, your objections are appropriate and legitimate.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Not all kmap() calls can be changed to kmap_local_page() and, if someone wants to make such replacements, they should also &quot;prove&quot; somehow that they are doing the right changes in that specific context.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">For example, the following is one of those cases where such a replacement is not allowed and a different solution has yet to be found:</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">https://lore.kernel.org/lkml/2a7030f5-d55f-94c7-90ba-5a57235159f6@amd.com/</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Furthermore, if people cannot &quot;prove&quot; that this change is feasible, their&nbsp; patches will probably be ignored / rejected just because many maintainers still don't know if those changes are correct and safe.</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Whoever wants to do these changes should understand the specific context in which they are working. </p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">For example, there have also been cases where alloc_page() + kmap() was simply replaced by kmalloc(). Sure!</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">If you are interested to see how and why, please take a look at the commit 633b0616cfe0 (&quot;x86/sgx: Remove unnecessary kmap() from sgx_ioc_enclave_init()&quot;) from Ira Weiny.<p>&nbsp;</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Regards,</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Fabio</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; I thought that a previous commit on the outreachy list made some </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; arguments</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; about how the affacted value was just allocated and thus could not yet be</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; shared.</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; </p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; &gt; julia</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">&gt; </p>
<br /></body>
</html>
--nextPart2577984.BddDVKsqQX--




--===============2941277115071908401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2941277115071908401==--



