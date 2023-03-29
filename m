Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 278DD6CF2D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 21:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8969F41E46;
	Wed, 29 Mar 2023 19:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8969F41E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680117162;
	bh=a6VGgRpKnxT/lWpXIpUm4tRCDs7IPd5ONH0HqGGKsbw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GbEAabU4py81F+sQEQo4W1aeKCgUbuEkArmSat8hwWCMMEIpDQY9XCRUyf+pyToUZ
	 C6P2cz5c/Oj0HygbE1JQaF1KyfzeBnfdiF9Pc3n1G6JUhA0g3xj8mTzQ2bo5jBF8hn
	 YY/Xppl03Bw2KRCFu4OW2rwrY1hW8AW/ZoiUAmb8DA/A+HE4p2EbqXkSiYpUUYN8O9
	 vuPG77fQgVwMtD9mYRAuekarznRbboYoiw6lpe3XZWfbJTxHhKQifW/0BBVVWNpRpk
	 43VsTZherRUfDotwGVlRC1quiZo5L3xi7SnxMaBWIb3jbBwjt5WGFFaD/hWbJGUv9f
	 Q0OqHDHdVZZDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UiiYUEnfn3mR; Wed, 29 Mar 2023 19:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3702641BB9;
	Wed, 29 Mar 2023 19:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3702641BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B11A1BF339
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 19:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12A9540445
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 19:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12A9540445
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qOxPH6bSNm1l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 19:12:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73891402F5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73891402F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 19:12:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4557461E03;
 Wed, 29 Mar 2023 19:12:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57875C433D2;
 Wed, 29 Mar 2023 19:12:33 +0000 (UTC)
Date: Wed, 29 Mar 2023 12:12:32 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Takashi Iwai <tiwai@suse.de>, Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <20230329121232.7873ad95@kernel.org>
In-Reply-To: <87a5zwosd7.wl-tiwai@suse.de>
References: <87jzz13v7i.wl-tiwai@suse.de>
 <652a9a96-f499-f31f-2a55-3c80b6ac9c75@molgen.mpg.de>
 <ZCP5jOTNypwG4xK6@debian.me> <87a5zwosd7.wl-tiwai@suse.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1680117153;
 bh=IAbVbgzm8rotxtzqHo6+4J46rGYeg6Bl2004ztujgIc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UcfQrlGENm/cQxGlxvCq07gNrRDbcz34nlLVjZtX2OjdOa1JLwlE0uUCT+Fu0qQWx
 oCPJAlCKP2ty1tCp/ZId1B2ztGJ//osrLFZItCqV8obg2o973NYV6DY2Gr/nESaDjU
 559NTFb2ycfH291klaXymDBi+l1c9uCb4y1usfPySEG5Fyv5VOhF40g4FVv31r77u6
 h8UcHH9mdPsfMODvDE27Z7qrpUdB/Sd5idaQjjmacE+TgblHZQ6VMqSKc1ctp8WElg
 vHJwVu3hTr59fOIR3m6rbrcGi7LSrGhHepNtv7a/aNpDY70CTidCg1PPdUNgp9p48f
 6Xo0MIlYHMxvg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UcfQrlGE
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e probe/link detection
 fails since 6.2 kernel
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, regressions@lists.linux.dev,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Bagas Sanjaya <bagasdotme@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyOSBNYXIgMjAyMyAxMDo0ODozNiArMDIwMCBUYWthc2hpIEl3YWkgd3JvdGU6Cj4g
T24gV2VkLCAyOSBNYXIgMjAyMyAxMDo0MDo0NCArMDIwMCwKPiBCYWdhcyBTYW5qYXlhIHdyb3Rl
Ogo+ID4gCj4gPiBPbiBUdWUsIE1hciAyOCwgMjAyMyBhdCAwNDozOTowMVBNICswMjAwLCBQYXVs
IE1lbnplbCB3cm90ZTogIAo+ID4gPiBEb2VzIG9wZW5TVVNFIFR1bWJsZXdlZWQgbWFrZSBpdCBl
YXN5IHRvIGJpc2VjdCB0aGUgcmVncmVzc2lvbiBhdCBsZWFzdCBvbgo+ID4gPiDigJxyYyBsZXZl
bOKAnT8gSXQgYmUgZ3JlYXQgaWYgbmFycm93IGl0IG1vcmUgZG93biwgc28gd2Uga25vdyBpdCBm
b3IgZXhhbXBsZQo+ID4gPiByZWdyZXNzZWQgaW4gNi4yLXJjNy4KPiA+ID4gICAKPiA+IAo+ID4g
QWx0ZXJuYXRpdmVseSwgY2FuIHlvdSBkbyBiaXNlY3Rpb24gdXNpbmcga2VybmVsIHNvdXJjZXMg
ZnJvbSBMaW51cydzCj4gPiB0cmVlIChnaXQgcmVxdWlyZWQpPyAgCj4gCj4gVGhhdCdsbCBiZSBh
IGxhc3QgcmVzb3J0LCBpZiBubyBvbmUgaGFzIGlkZWEgYXQgYWxsIDopCgpJIGhhZCBhIHF1aWNr
IGxvb2sgeWVzdGVyZGF5LCB0aGVyZSdzIG9ubHkgfjYgb3Igc28gY29tbWl0cyB0byBlMTAwMGUu
ClNob3VsZCBiZSBhIGZhaXJseSBxdWljayBiaXNlY3Rpb24sIGhvcGVmdWxseT8KCkFkZGluZyBT
YXNoYS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
