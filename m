Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3AE818C1F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 17:24:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2C9643592;
	Tue, 19 Dec 2023 16:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2C9643592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703003076;
	bh=01b7oUDjH2Di1+EcKOs/hNSU049eVymifOXQnVfZxY0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WkYNwveSeBXkuIkqim/iW4WkV9zJE7qiOOxJRfOFvW1twE3UlVbxOQHcoCyB9idBD
	 XIf+vQgVd4/aFxEGvXOciY5WTcmV6L0zgJQemO0XGj1eM7lX9VINtW1onuccyYy83v
	 ZJ8QWpr2uQ9E3TTkfNpzTkVHj3xyRHCIY0C+sQn47DZ/HkwKArqcAL6Z0suX/nB2Dx
	 Wo+AXA1voznfAwaM1k8bCf2++FX30rxLkke7qPlyOHq0oEUtpDsut7EHiF233vWENW
	 nJq4rqUkKdvN8VADNP77MVTw4ibU4FaEu2zX6JIdAoe4JTCFOULtQsdhsiSMGsAvZl
	 iBebFAhRBefXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9J56F5D7hLxY; Tue, 19 Dec 2023 16:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D62840545;
	Tue, 19 Dec 2023 16:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D62840545
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A22381BF360
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 16:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8303941684
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 16:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8303941684
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFNcq41-7rNU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 16:24:29 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3D9641517
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 16:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3D9641517
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-3366ddd1eddso2069223f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 08:24:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703003066; x=1703607866;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8uNwkU9kqRe/iMS3l4jAnLfwvJqCmqKLT4regqpL0b4=;
 b=DO3TOBfs5kqgzB9tV5rUOhYi8sC4BgU+9QiAG4wySHg9jYqzWW+ZiqS+SC9c7anzWj
 s0lqqPk7aISn01ogFB/yY230v9h5iw+aIJI1bSu4PnxFKF2QXIt15wJAvRARHEoZgpB0
 Fq89nCv2qwuZfqgeXFovs2l9zTj3jfZdq/89XyTzOxYWmM2SkFEOYN1Zneu3tpifLIBy
 oUkKIHShzNLPb29q28J0o9GotoGxBO/vqACkM//Aq65U+f1/UI5HnFu7Og+0PCXQCyuV
 XX0ID6G9CAKe467HP52XMwHO+YxR3iW/PCclu2HMqG8knwk0IIGr/39Ep5Ii8x3ZtmhD
 g/Gw==
X-Gm-Message-State: AOJu0Yza9Fe/ExWak5zmOy/ioqBuEuUQz5Lt/WMogDeiTLYvm/23FD1w
 7yudhOoUwf39QBBuQn2Nq+zoKo6OUzqPldhEecG4/w==
X-Google-Smtp-Source: AGHT+IH1fQpHrgQ1AQ0sGIpdVwNAENGWCsTtuPMZEL7iT/lV+6KhEOFjQ0f7EQjww7MFIhQn55pIpmcjQyZ4enkYLwk=
X-Received: by 2002:a5d:6786:0:b0:336:5162:de5d with SMTP id
 v6-20020a5d6786000000b003365162de5dmr1714276wru.227.1703003066507; Tue, 19
 Dec 2023 08:24:26 -0800 (PST)
MIME-Version: 1.0
References: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
 <CAKwvOd=ZKV6KsgX0UxBX4Y89YEgpry00jG6K6qSjodwY3DLAzA@mail.gmail.com>
 <20231218190055.GB2863043@dev-arch.thelio-3990X>
 <CAKwvOd=LjM08FyiXu-Qn7JmtM0oBD7rf4qkr=oo3QKeP+njRUw@mail.gmail.com>
 <20231219101202.GE811967@kernel.org>
In-Reply-To: <20231219101202.GE811967@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 19 Dec 2023 08:24:11 -0800
Message-ID: <CAKwvOdkLx64b2d+F1CgRn6duxhUDNWfdj7mRuoScu1Jz2H4mXA@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1703003066; x=1703607866; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8uNwkU9kqRe/iMS3l4jAnLfwvJqCmqKLT4regqpL0b4=;
 b=I3KUDXes+wqnRBVTUJG+MZkluQ609p+IemZgiKjoM60AOCoLwFoaTmOtLEZdf+dzhX
 fG3gi2PRZoUK+IYKI7ewYOv9uWkNjwZxlSnxlgJcFFob79+7/sDCChDEeiHf6+ITESOI
 DNAcMeiYumelQv5NYORXHgGq3bk7fINZj/+u6276ZdbhgGCBEpmPIMJGCw2PYl3kGyqM
 luQkNyA2SQr/f5+dHb9XfGY9gNiU5ZKwS2GgVfRF/l1j+CuFdhK0/x6+y4eAateYQczn
 PmWGn6tryWINeeHzbYRGt/ld7/z/yaoiEPHrHVCYVNk1x+z09ss2KVmh+fv0av4q1OL6
 WVJA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=I3KUDXes
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use
 of comma operator
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
Cc: intel-wired-lan@lists.osuosl.org, llvm@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Nathan Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBEZWMgMTksIDIwMjMgYXQgMjoxMuKAr0FNIFNpbW9uIEhvcm1hbiA8aG9ybXNAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBTbyB3aGlsZSBJJ20gYWxsIGZvciBtb3JlIGNoZWNrcy4KPiBB
bmQgSSdtIGFsbCBmb3Igb25seSB1c2luZyB0aGUgY29tbWEgd2hlcmUgaXQgaXMgbmVjZXNzYXJ5
Cj4gKEkgc3VzcGVjdCB0aGF0IG9mdGVuIGl0IGlzIGEgdHlwbykuCj4gSSBkbyBub3QgZ2V0IHRo
ZSBmZWVsaW5nIHRoYXQgd2UgYXJlIHNpdHRpbmcgb24gYSB0cm92ZSBvZiBuYXN0eSBidWdzLgoK
SSBzdGlsbCBnZXQgbmlnaHRtYXJlcyBmcm9tZToKLSBjb21taXQgZTcxNDA2MzliMWRlICgicG93
ZXJwYy94bW9uOiBGaXggb3Bjb2RlIGJlaW5nIHVuaW5pdGlhbGl6ZWQKaW4gcHJpbnRfaW5zbl9w
b3dlcnBjIikKLSBjb21taXQgZjcwMTliN2IwYWQxICgieHNrOiBQcm9wZXJseSB0ZXJtaW5hdGUg
YXNzaWdubWVudCBpbgp4c2txX3Byb2R1Y2VfZmx1c2hfZGVzYyIpCgotLSAKVGhhbmtzLAp+Tmlj
ayBEZXNhdWxuaWVycwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
