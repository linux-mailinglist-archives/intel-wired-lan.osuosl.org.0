Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA4E7069F6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 15:33:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D939C408FC;
	Wed, 17 May 2023 13:33:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D939C408FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684330434;
	bh=7a0AJaeH+Nxn7T6pd8CSjOtlaoZYtz7+akg3Ce83I0w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QLlxO5KIUaOU4Xurhf0fNWtms0OrfwG7OwxToqrceGvo0h7U/AXHi7wqJWkN02Fwr
	 ufor3wKbmkDZT1RFgREC2KkhHBqxnEwElWlqowuS46lXcQW6ogqvus0DBBCqmJTtWI
	 nDe7hhPc3ekTxczW9CD8Bd0pguwKVaQnQ3JwGD09r6p47I9EX2SNHL42jca0AF2QZ/
	 BbLJR4ffAXlAkbZtcVdSMKvZxNw4yXtDkl9RdP7UCw1ANmYLDgtXgDzYRz7B9BDiec
	 hpYz0SlYKAQoHkzJ3Bq4Lcq/cad3ADBjV64YhtvTDhakkrla00kMvCMGFxpZCNoUg6
	 HPhjFxQqsPjsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yL56iwP5fdj9; Wed, 17 May 2023 13:33:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADF5640438;
	Wed, 17 May 2023 13:33:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADF5640438
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64FC91BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41D6F81B25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:33:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41D6F81B25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQ6cmGCwUy8Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 13:33:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CBCF81A6A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CBCF81A6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:33:46 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E993C61EA1BFF;
 Wed, 17 May 2023 15:33:21 +0200 (CEST)
Message-ID: <52dbbc99-85a8-12a3-6c27-99c08a7e7ca1@molgen.mpg.de>
Date: Wed, 17 May 2023 15:33:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Piotr Gardocki <piotrx.gardocki@intel.com>
References: <20230517125247.331227-1-piotrx.gardocki@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230517125247.331227-1-piotrx.gardocki@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/2] iavf: cleanup
 procedure for changing interface's MAC address
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQaW90ciwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2hlcy4KCkFtIDE3LjA1LjIzIHVt
IDE0OjUyIHNjaHJpZWIgUGlvdHIgR2FyZG9ja2k6Cj4gVGhpcyBwYXRjaHNldCBjbGVhbnVwcyAu
bmRvX3NldF9tYWNfYWRkcmVzcyBjYWxsYmFjayBpbiBpYXZmLgoKSnVzdCBhIHNtYWxsIHR5cG8g
bm90ZSwgdGhhdCB0aGUgdmVyYiAqY2xlYW4gdXAqIGlzIHNwZWxsZWQgd2l0aCBhIHNwYWNlOgoK
PiBDbGVhbiB1cCBwcm9jZWR1cmUgZm9yIGNoYW5nZSBpbnRlcmZhY2XigJlzIE1BQyBhZGRyZXNz
Cgoob3IgQ2xlYW4gcHJvY2VkdXJlIOKApiB1cCkKClNhbWUgZm9yIHRoZSBmaXJzdCBsaW5lOgoK
PiBUaGlzIHBhdGNoc2V0IGNsZWFucyAubmRvX3NldF9tYWNfYWRkcmVzcyBjYWxsYmFjayB1cCBp
biBpYXZmLgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
