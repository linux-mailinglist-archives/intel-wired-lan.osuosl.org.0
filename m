Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FDA6063D3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 17:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 735B36FB17;
	Thu, 20 Oct 2022 15:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 735B36FB17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666278503;
	bh=oyoLVR0TnUQx1zrfuo9ytuiID41C3NEzCKFIbM8cv0I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jSnNa6aMUIjIGkuiKvmMElkY/MJjtHMrNBiMA5BjzjxpOPBKBman5fcRxCJoZuyM3
	 4vhl2AJ/KkhvwY34uSdn9vldk/Wgm4nXZL09Gbox1e2E1OzgsjneyboHv0VLL2R744
	 Yv3GyssgL5QM/TByA3fT5EJTUWlxjwUkT9QpfPV+W3aneY10KUXeEShT/puhIgXtZJ
	 suVfjDE/JpySAddprVqn3pkwVTIywqQdz9tqzQtVozl6i60YTevl+ptx5g77RpDYxK
	 kTRj0W+NvTv0rzcPKb8yrtWOuhVyhmtLPg1nXVOd6IEL82F8KlKM6u/3XHepH8rudo
	 oshiM/6hvXD4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBy1m4KLzEnx; Thu, 20 Oct 2022 15:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E1716FAC0;
	Thu, 20 Oct 2022 15:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E1716FAC0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C759D1BF275
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 15:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AEC966FAC0
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 15:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEC966FAC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rG-VDmqsTCC8 for <intel-wired-lan@osuosl.org>;
 Thu, 20 Oct 2022 15:08:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D8E160AE6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D8E160AE6
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 15:08:15 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 635F661EA192A;
 Thu, 20 Oct 2022 17:08:12 +0200 (CEST)
Message-ID: <53da60fb-3741-2869-b97e-65da9a8aac67@molgen.mpg.de>
Date: Thu, 20 Oct 2022 17:08:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
References: <20221020145316.1543-1-muhammad.husaini.zulkifli@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221020145316.1543-1-muhammad.husaini.zulkifli@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Qbv scheduling enchancement
 using frst flag bit
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
Cc: intel-wired-lan@osuosl.org, mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNdWhhbW1hZCwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KClRoZXJlIGlzIGEgc21h
bGwgdHlwbyBpbiB0aGUgc3VtbWFyeS90aXRsZTogZippKnJzdC4gQWxzbyBpdOKAmWQgYmUgbmlj
ZSAKaWYgeW91IG1hZGUgaXQgYSBzdGF0ZW1lbnQuIE1heWJlOgoKPiBpZ2M6IEVuaGFuY2UgUWJ2
IHNjaGVkdWxpbmcgYnkgdXNpbmcgZmlyc3QgZmxhZyBiaXQKCgpLaW5kIHJlZ2FyZHMsCgpQYXVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
