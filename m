Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4F2460CBF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 03:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 118734037D;
	Mon, 29 Nov 2021 02:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VTuPoML_gPF0; Mon, 29 Nov 2021 02:41:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C53FA40188;
	Mon, 29 Nov 2021 02:41:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D8891BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 22:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8619361BD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 22:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9IC5XVcxKTe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 22:41:59 +0000 (UTC)
X-Greylist: delayed 00:09:53 by SQLgrey-1.8.0
Received: from hua.moonlit-rail.com (hua.moonlit-rail.com [45.79.167.250])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 069D261BCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 22:41:58 +0000 (UTC)
Received: from
 209-6-248-230.s2276.c3-0.wrx-ubr1.sbo-wrx.ma.cable.rcncustomer.com
 ([209.6.248.230] helo=boston.moonlit-rail.com)
 by hua.moonlit-rail.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bugs-a21@moonlit-rail.com>) id 1mq0o8-0001qq-Jc
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Nov 2021 17:32:04 -0500
Received: from springdale.mc.moonlit-rail.com ([192.168.71.36])
 by boston.moonlit-rail.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <bugs-a21@moonlit-rail.com>) id 1mq0o8-0000dP-6a;
 Wed, 24 Nov 2021 17:32:04 -0500
Message-ID: <480a6f82-99c4-ad46-3878-6bb442d81496@moonlit-rail.com>
Date: Wed, 24 Nov 2021 17:32:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20211123204000.1597971-1-jesse.brandeburg@intel.com>
From: "Kris Karas (Bug reporting)" <bugs-a21@moonlit-rail.com>
In-Reply-To: <20211123204000.1597971-1-jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Mon, 29 Nov 2021 02:40:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: fix netpoll exit with
 traffic
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 Danielle Ratson <danieller@nvidia.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPiBPbGVrc2FuZHIgYnJvdWdodCBhIGJ1ZyByZXBvcnQg
d2hlcmUgbmV0cG9sbCBjYXVzZXMgdHJhY2UKPiBtZXNzYWdlcyBpbiB0aGUgbG9nIG9uIGlnYi4K
PiAtLS0KPiAtCXJldHVybiBtaW4od29ya19kb25lLCBidWRnZXQgLSAxKTsKPiArCXJldHVybiB3
b3JrX2RvbmU7CgpJIGFtIGFibGUgdG8gcmVwcm9kdWNlIHRoZSBXQVJOSU5HICsgc3RhY2sgdHJh
Y2UgYXQgd2lsbC7CoCBJdCBvY2N1cnMgb24gCmV2ZXJ5IGJvb3QuClBsZWFzZSBzZWUgaHR0cHM6
Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTI1NzMgZm9yIGRldGFpbHMu
CgpJIGhhdmUgdGVzdGVkIHRoZSBzaW1wbGUgcGF0Y2ggKHYyKSBhZ2FpbnN0IGJvdGgga2VybmVs
cyA1LjE0IGFuZCA1LjE1LCAKYW5kIGFtIGhhcHB5IHRvIHJlcG9ydCB0aGF0IHRoaXMgZml4ZXMg
dGhlIGlzc3VlIGZvciBtZS4KCktyaXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
