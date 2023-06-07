Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6627263D2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 17:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3994781E80;
	Wed,  7 Jun 2023 15:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3994781E80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686150731;
	bh=iVW5UryQny21RXMuod81/ZTNqBa9laBtHBkAyp3w7Dc=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iY6PWAoL84IiKXU3vfxOisRE5PPiARQ6a4BFxtSaxjieoJQI1jIOzo59GI0tHv89C
	 bj4euXOloYoIm72pJMxh1L2NDQABBr6LhZDHQjzlNMEMO6Kpr3m+pKkp4N0Y2vZBar
	 xda1UQPTuw/SE5tz0wi+CTo7Po9djbQvXiBuO1JCEEKNCiIKUWGcpsia65c9jKkpys
	 H3v3FtlvHnC0Q8YS4yaCaLGhHZs49y/c9gDeVQsQAaO39ck4wy72h3gcFPnwwP/izD
	 pjqSRgWzEa548FqJbBO5fHa7jfUTl4CZ2dZvtKP4TVTareUr/brbNsKq3fgyJL81TZ
	 Pqm7FAnFwx2wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BCZwVN6W3yGL; Wed,  7 Jun 2023 15:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA9BB81947;
	Wed,  7 Jun 2023 15:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA9BB81947
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB2B51BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 01:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9181560D4C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 01:58:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9181560D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIuhDKE0Yx50 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 01:58:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97A5260B5D
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com
 [IPv6:2001:4860:4864:20::35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97A5260B5D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 01:58:14 +0000 (UTC)
Received: by mail-oa1-x35.google.com with SMTP id
 586e51a60fabf-19f8af9aa34so6974635fac.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jun 2023 18:58:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686103093; x=1688695093;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NFr6U9nP3qomWy9QkfDgSe4V9fd1Fb2SI8USZ79GIrI=;
 b=gfd2wtwRyt1/uqUk9npjaXBAawiKuY4XYhF8WS+WSDVG0eaoDWZoesFgcguO/3lx69
 2WZ+W22d+xz2Pvt7Qjw8LP0xaVCoCN7enYqiT60m60yqJH5NrXahgJ6hoaGqXjr+4uax
 iC9RGOqGJRlJ2k0MOfonF1Y5nsYJqzeAcJH/InMebMgHAPZW9JHbpdRojSgtY6gCujJa
 ydWLTLeoXiFYWdy2doS2FLs401R3OUUCfX/wa/fyb1neDqZAgNDn+oZ8PG7GCxj+1swt
 wBdPpGh8bTb9Eyvtyu5CltFaYxdaAXPQk56B2T7w4OEnjoKAjSD4VyN8ZdIO46PiGD7L
 Vxbg==
X-Gm-Message-State: AC+VfDx5FwgxOGpWv0+Ef+QnjDJKPm6As3si4IZjwCJtU2ub/85FN/+P
 YtI6qw+c3aws0ogQAYgSOVHRJxAmF6oW8EdTpTw=
X-Google-Smtp-Source: ACHHUZ6nPqdvndSflNl3eLAxhpsN2l34315SfuAw1NcyVZX09ToSNjjT6b70szsBeVq2N7FfDYUWIfDepxWu7pTWW40=
X-Received: by 2002:a05:6871:220e:b0:1a2:8e53:c418 with SMTP id
 sc14-20020a056871220e00b001a28e53c418mr5886468oab.57.1686103093355; Tue, 06
 Jun 2023 18:58:13 -0700 (PDT)
MIME-Version: 1.0
From: Matthew Hallacy <poptix@gmail.com>
Date: Tue, 6 Jun 2023 20:58:02 -0500
Message-ID: <CACyUPOei8QZHjx=+JnROBmXVjLDgGpEOs4hTVBXOCVHwUeJ6JA@mail.gmail.com>
To: muhammad.husaini.zulkifli@intel.com
X-Mailman-Approved-At: Wed, 07 Jun 2023 15:12:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686103093; x=1688695093;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=NFr6U9nP3qomWy9QkfDgSe4V9fd1Fb2SI8USZ79GIrI=;
 b=F/vDAIM8obgz4ktI96YgcUG1xtGzTgSpU5+X9/3K7wPN8psAsrmVRx+187bQbN4q9A
 OMG+1220vUT+s6WuNJR0pdG4rA8U6AwsLG6zfd/+It+fm8qLhaB2Alodzd4+orDCCz9b
 SgiC5WUJTsNuSObrLfeykE2vw6L/rzPwvIjKVUvdfk5Q35/+//nnBXiqISHktmDSthEM
 FxYpoml03+tjmK5oukukh3ybdmnaRx3V+0b4tyqmNofuy2306sZJx1+lImCC3fqv0z2H
 xBCtp5fo/p6zZBzqcPCLjPYXFDvsy8ypZOHDz+u2pum+Kh1J0NmnPBgNxicGVIewuvEN
 /c3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=F/vDAIM8
Subject: Re: [Intel-wired-lan] igc: 5.15.98 Kernel PANIC on igc_downI
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
Cc: sureshkumar.mp@intel.com, gregkh@linuxfoundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, kyle.leet@gmail.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, dima.ruinskiy@intel.com,
 torvalds@linux-foundation.org, amir.avivi@intel.com
Content-Type: multipart/mixed; boundary="===============5352548890319101817=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5352548890319101817==
Content-Type: multipart/alternative; boundary="000000000000ef2a1d05fd8077a3"

--000000000000ef2a1d05fd8077a3
Content-Type: text/plain; charset="UTF-8"

Greetings,

> Can you help test with below patch:
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20230410065140.20824-1-muhammad.husaini.zulkifli@intel.com/
>
> Once you have tested this patch, kindly let me know if you are still experiencing the issue or not.


I had the same problems as Kyle on a nearly identical 6-port i226
embedded system.

Previously I was able to easily reproduce the issue by creating three
bridges, containing 2 ports each, then looping the bridges together
with ethernet cables and generating traffic (rapidly bringing the
traffic up to 2.5Gbit/s). Unplugging a cable would consistently cause
a kernel panic and dump. Crashes happened on 5.19, 6.0, 6.1, 6.2 and
6.3

After applying the patch to the 6.2.16 kernel I am unable to reproduce
this issue.

I do still see adapter resets while unplugging ports but they do not
appear to be causing any problems.

--000000000000ef2a1d05fd8077a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings,<div><br></div><div><pre id=3D"gmail-b" style=3D=
"font-size:13px;background-image:initial;background-position:initial;backgr=
ound-size:initial;background-repeat:initial;background-origin:initial;backg=
round-clip:initial;color:rgb(0,0,51);white-space:pre-wrap">&gt; Can you hel=
p test with below patch:
&gt; <a href=3D"https://patchwork.ozlabs.org/project/intel-wired-lan/patch/=
20230410065140.20824-1-muhammad.husaini.zulkifli@intel.com/" style=3D"backg=
round-image:initial;background-position:initial;background-size:initial;bac=
kground-repeat:initial;background-origin:initial;background-clip:initial;co=
lor:rgb(0,0,255);text-decoration-line:none">https://patchwork.ozlabs.org/pr=
oject/intel-wired-lan/patch/20230410065140.20824-1-muhammad.husaini.zulkifl=
i@intel.com/</a>
&gt;=20
&gt; Once you have tested this patch, kindly let me know if you are still e=
xperiencing the issue or not.</pre><pre id=3D"gmail-b" style=3D"font-size:1=
3px;background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;color:rgb(0,0,51);white-space:pre-wrap"><br></pre><pre id=3D"gmail-b=
" style=3D"font-size:13px;background-image:initial;background-position:init=
ial;background-size:initial;background-repeat:initial;background-origin:ini=
tial;background-clip:initial;color:rgb(0,0,51);white-space:pre-wrap">I had =
the same problems as Kyle on a nearly identical 6-port i226 embedded system=
.</pre><pre id=3D"gmail-b" style=3D"font-size:13px;background-image:initial=
;background-position:initial;background-size:initial;background-repeat:init=
ial;background-origin:initial;background-clip:initial;color:rgb(0,0,51);whi=
te-space:pre-wrap">Previously I was able to easily reproduce the issue by c=
reating three bridges, containing 2 ports each, then looping the bridges to=
gether with ethernet cables and generating traffic (rapidly bringing the tr=
affic up to 2.5Gbit/s). Unplugging a cable would consistently cause a kerne=
l panic and dump. Crashes happened on 5.19, 6.0, 6.1, 6.2 and 6.3</pre><pre=
 id=3D"gmail-b" style=3D"font-size:13px;background-image:initial;background=
-position:initial;background-size:initial;background-repeat:initial;backgro=
und-origin:initial;background-clip:initial;color:rgb(0,0,51);white-space:pr=
e-wrap">After applying the patch to the 6.2.16 kernel I am unable to reprod=
uce this issue. </pre><pre id=3D"gmail-b" style=3D"font-size:13px;backgroun=
d-image:initial;background-position:initial;background-size:initial;backgro=
und-repeat:initial;background-origin:initial;background-clip:initial;color:=
rgb(0,0,51);white-space:pre-wrap">I do still see adapter resets while unplu=
gging ports but they do not appear to be causing any problems. <br></pre><p=
re id=3D"gmail-b" style=3D"font-size:13px;background-image:initial;backgrou=
nd-position:initial;background-size:initial;background-repeat:initial;backg=
round-origin:initial;background-clip:initial;color:rgb(0,0,51);white-space:=
pre-wrap"><br></pre></div></div>

--000000000000ef2a1d05fd8077a3--

--===============5352548890319101817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5352548890319101817==--
