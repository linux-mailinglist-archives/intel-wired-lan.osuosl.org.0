Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 689B95BF951
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 10:33:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A98C80BA5;
	Wed, 21 Sep 2022 08:33:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A98C80BA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663749226;
	bh=3hWovD8feMJTF3+Gy3C4hAt0YTPBR1C1GhRmnbFVeRc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9qpNAoXP1FBvjBaPul/gygRdOhWQ+oVKfT/8oe9t1caQx+KQ1YCqdTduUO20hXxJN
	 jIueGDQxW2kD0gMKdAtvn6ZYtJmGr6R8dUlAZ/lR1J2kHKxJHMhyoawZN8RwvrpYzD
	 IZikCIqfuEFdHwBZhxzpy09JfxJok7pYxmOzL3IEJWFnmJu2xfSMheo1orTmbcf9ED
	 s0g3u9BBHbhnbh+uBYjA4CcLMNpkdfodDdVetqmhAQGgNUQm72gY95rNTVfx5Lq6wr
	 VtBzYubobN6sO3sRrdhekgklnaSR4CeT0/mjc6TOkvsD41hvTSrybDZUv6FX+Zw+xg
	 v4mABzG1dqOPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M68Ggxakoexs; Wed, 21 Sep 2022 08:33:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48D8180BBA;
	Wed, 21 Sep 2022 08:33:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48D8180BBA
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49EE51BF3AE
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 08:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 18C0D61000
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 08:33:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18C0D61000
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MdQiM8Xo_lji for <intel-wired-lan@osuosl.org>;
 Wed, 21 Sep 2022 08:33:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58FEF605E0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58FEF605E0
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 08:33:38 +0000 (UTC)
Received: from [141.14.12.53] (g053.RadioFreeInternet.molgen.mpg.de
 [141.14.12.53])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 21EB661EA192A;
 Wed, 21 Sep 2022 10:33:35 +0200 (CEST)
Message-ID: <e266315a-1bde-4b5f-4a83-5fbdaf00daaf@molgen.mpg.de>
Date: Wed, 21 Sep 2022 10:33:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
References: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v3] igc: Correct the launchtime offset
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNdWhhbW1hZCwKCgpPbmUgc21hbGwgbml0LgoKQW0gMjEuMDkuMjIgdW0gMDQ6NDkgc2No
cmllYiBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpOgoKW+KApl0KCj4gVGVzdCBTZXR1cDoKPiAK
PiBUYWxrZXIgOiBVc2UgbDJfdGFpLmMgdG8gZ2VuZXJhdGUgdGhlIGxhdW5jaHRpbWUgaW50byBw
YWNrZXQgcGF5bG9hZC4KCknigJlkIHJlbW92ZSB0aGUgc3BhY2UgYmVmb3JlIHRoZSBjb2xvbiwg
YnV0IG5vdCBpbXBvcnRhbnQgZW5vdWdoIHRvIHNlbmQgdjQuCgo+IExpc3RlbmVyOiBVc2UgdGlt
ZWR1bXAuYyB0byBjb21wdXRlIHRoZSBkZWx0YSBiZXR3ZWVuIHBhY2tldCBhcnJpdmFsIGFuZAo+
IExhdW5jaFRpbWUgcGFja2V0IHBheWxvYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmluaWNpdXMg
Q29zdGEgR29tZXMgPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBN
dWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpIDxtdWhhbW1hZC5odXNhaW5pLnp1bGtpZmxpQGludGVs
LmNvbT4KClRoYW5rIHlvdSBmb3IgaW1wcm92aW5nIHRoZSBjb21taXQgbWVzc2FnZS4KCkFja2Vk
LWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgoKCktpbmQgcmVnYXJkcywK
ClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
