Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A338DB1477
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 20:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2DE385A81;
	Thu, 12 Sep 2019 18:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7yGaAlzxVis; Thu, 12 Sep 2019 18:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6A3A859AE;
	Thu, 12 Sep 2019 18:33:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19F431BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 16B562051E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xkLeuH1JhPop for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 17:59:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 9838320461
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:59:16 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i18so13849724pgl.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 10:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=fU94P9hwVGyhG8ICrisnAfDeINw9lHggTBZKjaGwp4M=;
 b=mon7n7py1ymEe/kHzdHl7vQdeMmp4tt1UkwgH9mB+9XfrGdcV8Alx7awVyqwFyv6hA
 mnXXobrFe+LBqVhGyB9APBeJPV9b6tw0jA1ZEEbO7B8zZvG1t977RGVfP5423dwo3+qk
 5Nt/eQ068MXvfs0xnKI/qoxqA3YTDZ9p07zTL6zz4SziaehufgEqlhI3d/VQr6D5cu/V
 AqodTJ+Xwn6ZF8ze+YhMFoN11dTAxSKw2Jqv5QxyhCyUg9mtHgkml1WD1RH8ykCyrCUB
 c6nadyxVxKlFwsOpsHY3As3eUZsAHWxyCGhF+EMWkPP0s2undNsxrJy6PruLOAUV78ow
 UXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fU94P9hwVGyhG8ICrisnAfDeINw9lHggTBZKjaGwp4M=;
 b=je8AFsdEVIIRYGIM4fmNt/jCf9AmiAvfuicBhHs+o2Iq7H9rzpB4M29KeNZaZmU0MC
 OZpavMkBooKklD6DJAObhyHrjT2oOPnxVoGv6YgFqAVSM1nj9TcypwIv2jNDDqUzji8B
 EtC7GW3bi+cBz8WQ+WxJ12AFeGbkoJyConeKprF5vwODeJHjRVv2TmqGHNTpv3hyA4Gk
 geov7pKdJb47IN88CbeH2TibIx9N3TSnt/i+pDgEdUxwAzPcsHWeTYSRYlYzNWEiX2Fc
 lQ9I+Q9r4SeUTRbJ22WDaN7ESH8T0/fhZ9W3TsSBFXHq3MVbi7vn+Z8k8w3Kj272YYl9
 ju5w==
X-Gm-Message-State: APjAAAX6BqgNbScpNwxJgVSHNbOqAdkZZE3z2zPpQKHI2hxy9UijMgFf
 NUsJTAvLodzInYddWe/55unkOQ==
X-Google-Smtp-Source: APXvYqzXy64H/Klv1ecPnfnSaxipUAH/IWTQxFWZ238j8JeZTwU17ePi6h3Q3jSp081YMznW2xr1Nw==
X-Received: by 2002:a62:e216:: with SMTP id a22mr34828884pfi.249.1568310854411; 
 Thu, 12 Sep 2019 10:54:14 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([12.1.37.26])
 by smtp.gmail.com with ESMTPSA id b185sm31875932pfg.14.2019.09.12.10.54.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 10:54:13 -0700 (PDT)
To: Jonathan Tooker <jonathan@reliablehosting.com>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20190912110144.GS2879@gauss3.secunet.de>
 <9d94bd04-c6fa-d275-97bc-5d589304f038@reliablehosting.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <21ead3ce-25d8-8be8-d7e6-46450fcd38b8@pensando.io>
Date: Thu, 12 Sep 2019 18:54:10 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9d94bd04-c6fa-d275-97bc-5d589304f038@reliablehosting.com>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 12 Sep 2019 18:33:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix secpath usage for IPsec TX
 offload.
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
Cc: netdev@vger.kernel.org, Michael Marley <michael@michaelmarley.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8xMi8xOSA1OjMzIFBNLCBKb25hdGhhbiBUb29rZXIgd3JvdGU6Cj4gT24gOS8xMi8yMDE5
IDY6MDEgQU0sIFN0ZWZmZW4gS2xhc3NlcnQgd3JvdGU6Cj4+IFRoZSBpeGdiZSBkcml2ZXIgY3Vy
cmVudGx5IGRvZXMgSVBzZWMgVFggb2ZmbG9hZGluZwo+PiBiYXNlZCBvbiBhbiBleGlzdGluZyBz
ZWNwYXRoLiBIb3dldmVyLCB0aGUgc2VjcGF0aAo+PiBjYW4gYWxzbyBjb21lIGZyb20gdGhlIFJY
IHNpZGUsIGluIHRoaXMgY2FzZSBpdCBpcwo+PiBtaXNpbnRlcnByZXRlZCBmb3IgVFggb2ZmbG9h
ZCBhbmQgdGhlIHBhY2tldHMgYXJlCj4+IGRyb3BwZWQgd2l0aCBhICJiYWQgc2FfaWR4IiBlcnJv
ci4gRml4IHRoaXMgYnkgdXNpbmcKPj4gdGhlIHhmcm1fb2ZmbG9hZCgpIGZ1bmN0aW9uIHRvIHRl
c3QgZm9yIFRYIG9mZmxvYWQuCj4+Cj4gRG9lcyB0aGlzIHBhdGNoIGFsc28gbmVlZCB0byBiZSBw
b3J0ZWQgdG8gdGhlIGl4Z2JldmYgZHJpdmVyPyBJIGNhbiAKPiByZXBsaWNhdGUgdGhlIGJhZCBz
YV9pZHggZXJyb3IgdXNpbmcgYSBWTSB0aGF0J3MgdXNpbmcgYSBWRiAmIHRoZSAKPiBpeGdlYnZm
wqAgZHJpdmVyLgo+CgpZZXMuCnNsbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
