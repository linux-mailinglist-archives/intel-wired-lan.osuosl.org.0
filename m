Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD4156230
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 08:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC6948798B;
	Wed, 26 Jun 2019 06:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JPTyptw+Wxn; Wed, 26 Jun 2019 06:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45AB787B18;
	Wed, 26 Jun 2019 06:14:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7462D1BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 06:14:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 700C12151E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 06:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iIbTww7gJ+V8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 06:14:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id BDA2221514
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 06:14:24 +0000 (UTC)
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hg1CJ-00011e-1m
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Jun 2019 06:14:23 +0000
Received: by mail-pg1-f197.google.com with SMTP id s4so967151pgr.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 23:14:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Qzj1f9ft1l/we0rK2p1RXiD5bfavnmcjFfDBQn4lzKU=;
 b=rdRHOZmSk3sh8ARRzr1EtkQvBikmPDo4eiJEQSMTwBtLhT4Z+vo2EH2+MvuGND6rm3
 ozyjs7T2jsBSh0t8tL9DsP/PZfAidsTVQggDvhz1nBqG/pmB1qMW5qH6Kxn4XPPOXY37
 JoNjxZXeiNH04oI31OawGT3gQ+hhL9zsQ9KuGlaMhBfGtabV8XF2WfiBAln1unRfy7qS
 GhGrBtP2QK3y8baAOOMQVA4VuqHK52HvJiy50MZ1yI97H547JiCFIR8Yp1zUtdAzgTTm
 TjLW7ziDD8bsfDQ+VVNbuQGKXAxcLcdcG4nKwRX/FbEdvh6lB5WvTVXxIN2KgCcQmLc4
 e9lw==
X-Gm-Message-State: APjAAAXNKpMxuzPe0G2aHcTgrh5n2HKKtOYWBmL1UoFcDMNxYL0Jul+G
 XLUQUtIePCfRQ9UOOeXIhESgQ2uItmMwjVtNfgRmIhBfw6yBY9ZAHq/LCUjjZM2yOE8DPbTh0ei
 hHOfsbp5lyLLtWv6UN7LT9ChbJtGV5kxUPVBy5UTOfV5os6s=
X-Received: by 2002:a17:902:9a84:: with SMTP id
 w4mr3295703plp.160.1561529661632; 
 Tue, 25 Jun 2019 23:14:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHZrac8B6jpvkaO/VXWxU4A1aWKuSGiff3KI+tndM4pw00sha7p/0/aJVgC1+kv6pHFSnOGw==
X-Received: by 2002:a17:902:9a84:: with SMTP id
 w4mr3295682plp.160.1561529661445; 
 Tue, 25 Jun 2019 23:14:21 -0700 (PDT)
Received: from [10.101.46.178] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id f64sm15747880pfa.115.2019.06.25.23.14.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 23:14:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
Date: Wed, 26 Jun 2019 14:14:16 +0800
Message-Id: <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
References: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Intel-wired-lan] RX CRC errors on I219-V (6) 8086:15be
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgU2FzaGEKCmF0IDU6MDkgUE0sIEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25p
Y2FsLmNvbT4gd3JvdGU6Cgo+IEhpIEplZmZyZXksCj4KPiBXZeKAmXZlIGVuY291bnRlcmVkIGFu
b3RoZXIgaXNzdWUsIHdoaWNoIGNhdXNlcyBtdWx0aXBsZSBDUkMgZXJyb3JzIGFuZCAgCj4gcmVu
ZGVycyBldGhlcm5ldCBjb21wbGV0ZWx5IHVzZWxlc3MsIGhlcmXigJlzIHRoZSBuZXR3b3JrIHN0
YXRzOgoKSSBhbHNvIHRyaWVkIGlnbm9yZV9sdHIgZm9yIHRoaXMgaXNzdWUsIHNlZW1zIGxpa2Ug
aXQgYWxsZXZpYXRlcyB0aGUgIApzeW1wdG9tIGEgYml0IGZvciBhIHdoaWxlLCB0aGVuIHRoZSBu
ZXR3b3JrIHN0aWxsIGJlY29tZXMgdXNlbGVzcyBhZnRlciAgCnNvbWUgdXNhZ2UuCgpBbmQgeWVz
LCBpdOKAmXMgYWxzbyBhIFdoaXNrZXkgTGFrZSBwbGF0Zm9ybS4gV2hhdOKAmXMgdGhlIG5leHQg
c3RlcCB0byBkZWJ1ZyAgCnRoaXMgcHJvYmxlbT8KCkthaS1IZW5nCgo+Cj4gL3N5cy9jbGFzcy9u
ZXQvZW5vMS9zdGF0aXN0aWNzJCBncmVwIC4gKgo+IGNvbGxpc2lvbnM6MAo+IG11bHRpY2FzdDo5
NQo+IHJ4X2J5dGVzOjE0OTk4NTEKPiByeF9jb21wcmVzc2VkOjAKPiByeF9jcmNfZXJyb3JzOjEx
NjUKPiByeF9kcm9wcGVkOjAKPiByeF9lcnJvcnM6MjMzMAo+IHJ4X2ZpZm9fZXJyb3JzOjAKPiBy
eF9mcmFtZV9lcnJvcnM6MAo+IHJ4X2xlbmd0aF9lcnJvcnM6MAo+IHJ4X21pc3NlZF9lcnJvcnM6
MAo+IHJ4X25vaGFuZGxlcjowCj4gcnhfb3Zlcl9lcnJvcnM6MAo+IHJ4X3BhY2tldHM6NDc4OQo+
IHR4X2Fib3J0ZWRfZXJyb3JzOjAKPiB0eF9ieXRlczo4NjQzMTIKPiB0eF9jYXJyaWVyX2Vycm9y
czowCj4gdHhfY29tcHJlc3NlZDowCj4gdHhfZHJvcHBlZDowCj4gdHhfZXJyb3JzOjAKPiB0eF9m
aWZvX2Vycm9yczowCj4gdHhfaGVhcnRiZWF0X2Vycm9yczowCj4gdHhfcGFja2V0czo3MzcwCj4g
dHhfd2luZG93X2Vycm9yczowCj4KPiBTYW1lIGJlaGF2aW9yIGNhbiBiZSBvYnNlcnZlZCBvbiBi
b3RoIG1haW5saW5lIGtlcm5lbCBhbmQgb24geW91ciAgCj4gZGV2LXF1ZXVlIGJyYW5jaC4KPiBP
VE9ILCB0aGUgc2FtZSBpc3N1ZSBjYW7igJl0IGJlIG9ic2VydmVkIG9uIG91dC1vZi10cmVlIGUx
MDAwZS4KPgo+IElzIHRoZXJlIGFueSBwbGFuIHRvIGNsb3NlIHRoZSBnYXAgYmV0d2VlbiB1cHN0
cmVhbSBhbmQgb3V0LW9mLXRyZWUgIAo+IHZlcnNpb24/Cj4KPiBLYWktSGVuZwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
