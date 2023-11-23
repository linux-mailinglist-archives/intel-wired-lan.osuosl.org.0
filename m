Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFA77F5E7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Nov 2023 12:57:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CEAD41E6F;
	Thu, 23 Nov 2023 11:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CEAD41E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700740668;
	bh=qmOgLEuDq32q9s5QD1yBWeFKzH5nm+PZdBPnMZ/2GyA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aBPYWPOGMc34LwbtEPo4jXtK7svAZPT1AuZhL4QKtrZTK7UH0LvoLYf73t6f49yFN
	 JT8iNvmA14pNcxoOzHIwhZc/hQ1f38ZRQl3dO7xJgiBNuJcB/1Iwu2UczBQi7IC4uG
	 VEEIRuLH2WrKWv7CDXiBf58Kk01BXWM75b7QJcKCNmLtc9UT5V7DBkgSWur6JIiUWN
	 xAsOeqWGVcetwfezYNdMfB8yq3kDMPNfPgls2qvwl1KHfLaX2Nzj74uCiRcOUq0ZRz
	 kboDjCUwRnAuMPplBS56ISPfwi8Qs9fMj/NJhzqcgipqNjXQI7sHAXNISu+ZwiV2Ym
	 ycZ5yAB3O3byw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jDln4BvMOoMV; Thu, 23 Nov 2023 11:57:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D6AB41E64;
	Thu, 23 Nov 2023 11:57:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D6AB41E64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FAED1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 11:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33F51415BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 11:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33F51415BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cd3WnhoxuD5X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Nov 2023 11:57:40 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C6DF40198
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 11:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C6DF40198
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 844AACE1193;
 Thu, 23 Nov 2023 11:57:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E33C433C8;
 Thu, 23 Nov 2023 11:57:32 +0000 (UTC)
Date: Thu, 23 Nov 2023 11:57:29 +0000
From: Simon Horman <horms@kernel.org>
To: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <20231123115729.GA6339@kernel.org>
References: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
 <20231121123428.20907-2-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121123428.20907-2-ilpo.jarvinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700740654;
 bh=d1KKFj+DyjKk6+RozV1+DoTTJKQS2amb7hIMgX6LAvM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=asew1abrsIY6gEFKiHpdM4HgeUYNjUYxkfJwcM8AY78HdsjF4c9X1ruoxfVSCYRR0
 BijnDVaEp+5V652iMAyaNcFpJTJ83/LaTU6XjfUjCxUN5fRucLY4oL7/vMQBhwEcG0
 mdGWod2B+3HjqG9YXstRAHHBUwzhGTC7OcoO1RCfWQ4jI7howUKc7AxJj/HY4m2Aty
 HO7bSH0KskPl+uUYUYDHRRSYtfHNjI646+EMzwNl6fhsFAC/jcVlOWgrayEyyndjZb
 whWdGZ/h8GS29BhGv0gYhOtXXtVQeH7WET3kL2Sh72T4aBFa0cbAGdd03SwK72sy/4
 0XqdT/k64sCiw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=asew1abr
Subject: Re: [Intel-wired-lan] [PATCH v4 1/3] igb: Use FIELD_GET() to
 extract Link Width
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBOb3YgMjEsIDIwMjMgYXQgMDI6MzQ6MjZQTSArMDIwMCwgSWxwbyBKw6RydmluZW4g
d3JvdGU6Cj4gVXNlIEZJRUxEX0dFVCgpIHRvIGV4dHJhY3QgUENJZSBOZWdvdGlhdGVkIExpbmsg
V2lkdGggZmllbGQgaW5zdGVhZCBvZgo+IGN1c3RvbSBtYXNraW5nIGFuZCBzaGlmdGluZy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRl
bC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEpvbmF0aGFuIENhbWVyb24gPEpvbmF0aGFuLkNhbWVyb25A
aHVhd2VpLmNvbT4KClRoYW5rcywgbmljZSB0byBzZWUgRklFTERfR0VUKCkgdXNlZCBoZXJlLgoK
UmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
