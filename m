Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D66FC736A5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 13:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69B91418D7;
	Tue, 20 Jun 2023 11:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69B91418D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687259350;
	bh=V80frO90xNtPrVAshsQJJci2SqsxSBYNLgRYY9yOhLE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DIJV3xa/2xQcfqn9UT7htNZwPMVU5SDH5rZq5ZfdE/zj8aygmbE8HHRSVjeFhNZje
	 gqohZ0jUqYK5DJsQRE/Uq8vIJ/tLyLDbOEEK40YF43802MukUr1s3bs/0qjp7ZNPGL
	 IUCTZKRkWkpvy8x68eYbyTMnc/zK12T0R2zkZR7PQXK/OoyluEx3/8prp0uFoYhWth
	 c7lPJGHf9fogeCXOVa1rnaK2Bu6mMV3fRDwAmgzilZtELWTNYaHYE/zV0bXTbzyUq3
	 Gm4bIKHj7tnpULJfIHBBlSeuV/TKo/F0ZJ3YTe0j4LRH9FM1r7DGH1eKb4lVyH0owW
	 kuFcXyNMWQllQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEParwNFPDU0; Tue, 20 Jun 2023 11:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D56840863;
	Tue, 20 Jun 2023 11:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D56840863
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 766671BF417
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 11:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 491B960BB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 11:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 491B960BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITSueT1KiA6V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 11:09:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8546C60BB6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8546C60BB6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 11:09:01 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D351B61E5FE03;
 Tue, 20 Jun 2023 13:08:18 +0200 (CEST)
Message-ID: <6faec056-c703-90f8-6ec7-ba587fad853a@molgen.mpg.de>
Date: Tue, 20 Jun 2023 13:08:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Lingyu Liu <lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V1 00/15] Add E800 live
 migration driver
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaW5neXUsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoZXMuCgpBbSAyMC4wNi4yMyB1
bSAxMTo1OSBzY2hyaWViIExpbmd5dSBMaXU6Cj4gVGhpcyBzZXJpZXMgYWRkcyB2ZmlvIGxpdmUg
bWlncmF0aW9uIHN1cHBvcnQgZm9yIEludGVsIEU4MTAgVkYKPiBkZXZpY2VzIGJhc2VkIG9uIHRo
ZSB2MiBtaWdyYXRpb24gcHJvdG9jb2wuCgpb4oCmXQoKSeKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBk
b2N1bWVudGVkIGhvdyB0byB0ZXN0IHRoZSBuZXcgZHJpdmVyLgoKCktpbmQgcmVnYXJkcywKClBh
dWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
