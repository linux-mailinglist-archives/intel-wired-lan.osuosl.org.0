Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7177F4D23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 17:48:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B234404E4;
	Wed, 22 Nov 2023 16:48:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B234404E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700671681;
	bh=FPOAmZIrxaC4NvEHJWvfRQl6mbo3Onm+hAWNdnuJxv0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hHJZQHPFdSbm2hP/fzYINho1DQoASFMrHPbGcv8v03mz5CpQuDkabQwviz4O2I/XR
	 3T1d9AAHo8AtAHxLY/gkRfHqnZnpITsE8WKcljVfj/l6Pl7RU6uNJYnaRcqAlFewoJ
	 Fe3mSZ3RPTuuvAHP3zg57fwNVNEct3Vp5yfAt0O07sUcGE3VIufNIr3EA5EcnnexCW
	 EIvgbyx8QjY5gi7Y/Kr5V44G+pn9ADdxczfcymebsr4Ir50LDzMCBNJavKVHkD7ejF
	 iTdcu9NrB1s3elT7q7GRposrLLmwaMa+B4ndnS/DR3+LK/F3My37a3xG2x4eABha4N
	 qBj5oOnJZTKzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZsms60Ux3IO; Wed, 22 Nov 2023 16:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BE5F40170;
	Wed, 22 Nov 2023 16:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BE5F40170
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4123D1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15E8E40407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15E8E40407
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hba8eL29ocpe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 06:57:44 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F13094011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 06:57:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F13094011A
X-UUID: ecc929b9a36e4167b39c339ec85e6be3-20231122
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32, REQID:c5890a39-a286-49e1-9039-f832626f149b, IP:5,
 U
 RL:0,TC:0,Content:-5,EDM:0,RT:1,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:-14
X-CID-INFO: VERSION:1.1.32, REQID:c5890a39-a286-49e1-9039-f832626f149b, IP:5,
 URL
 :0,TC:0,Content:-5,EDM:0,RT:1,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION
 :release,TS:-14
X-CID-META: VersionHash:5f78ec9, CLOUDID:f395ef72-1bd3-4f48-b671-ada88705968c,
 B
 ulkID:231119230408XYBZ5UP2,BulkQuantity:16,Recheck:0,SF:17|19|44|64|66|24|
 102,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:40,QS:nil,BEC:nil,CO
 L:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR, TF_CID_SPAM_FAS, TF_CID_SPAM_FSD,
 TF_CID_SPAM_FSI, TF_CID_SPAM_OBB
X-UUID: ecc929b9a36e4167b39c339ec85e6be3-20231122
X-User: chentao@kylinos.cn
Received: from [172.20.15.254] [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 729157992; Wed, 22 Nov 2023 14:57:07 +0800
Message-ID: <154e624b-f0fa-4925-8ae5-4f176216e724@kylinos.cn>
Date: Wed, 22 Nov 2023 14:57:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231113093112.GL705326@kernel.org>
 <20231115031444.33381-1-chentao@kylinos.cn>
 <55e07c56-da57-41aa-bc96-e446fad24276@intel.com>
 <4b551600-f1a3-4efe-b3e9-99cb4536f487@kylinos.cn>
 <2c61c232-1bbb-4cae-bb7f-92a7f2298e97@intel.com>
 <55b77a28-a680-4465-bb57-2a5cb20ce06a@kylinos.cn>
 <e5b458fa-c7ad-424d-8416-2947d684b5dc@intel.com>
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <e5b458fa-c7ad-424d-8416-2947d684b5dc@intel.com>
X-Mailman-Approved-At: Wed, 22 Nov 2023 16:47:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 horms@kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIHlvdSBhZ2FpbiBmb3IgeW91ciByZXBseS4KSSBsZWFybmVkLiBJIGtub3cgaG93IHRv
IHVzZSBpdCwgdGhhbmtzLCBJJ2xsIGxvb2sgYXQgdGhlIGV4aXN0aW5nIGNvZGUgCmFuZCBhZGQg
bG9ncyB0byBzZWUgaG93IGl0IHdvcmtzLgoKVGhhbmtzIGFnYWluLgoKCk9uIDIwMjMvMTEvMjEg
MTk6MTUsIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+IEZyb206IEt1bnd1IENoYW4gPGNoZW50
YW9Aa3lsaW5vcy5jbj4KPiBEYXRlOiBUdWUsIDIxIE5vdiAyMDIzIDEwOjEyOjE3ICswODAwCj4g
Cj4+IFRoYW5rcyBmb3IgeW91ciByZXBseS4gSSB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4sIGku
ZS4gdGhlIGNhbGxlciBvZgo+PiAna2FzcHJpbnRmJyBpcyByZXNwb25zaWJsZSBmb3IgY2FsbGlu
ZyAna2ZyZWUnIHRvIGZyZWUgdXAgbWVtb3J5Lgo+Pgo+PiBNeSBjb25jZXJuIGlzIHRoYXQgaW4g
bWFueSBzY2VuYXJpb3MsIHRoZSByZXF1ZXN0ZWQgbWVtb3J5IHdpbGwgYmUKPj4gcmVsZWFzZWQg
YWZ0ZXIgYSBwZXJpb2Qgb2YgdXNlLgo+Pgo+PiBIYXMgYW55b25lIGVsc2UgZm9yZ290dGVuIHRv
IGZyZWUgdXAgdGhlIHJlcXVlc3RlZCBtZW1vcnkgd2hlbiB1c2luZwo+PiAna2FzcHJpbnRmJz8g
ZS5nLiAnZGFtX2hlYXBfaW5pdCcgY2FsbHMgJ2RtYV9oZWFwX2Rldm5vZGUnIHRvIGFsbG9jYXRl
Cj4+IG1lbW9yeToKPj4gZGFtX2hlYXBfaW5pdAo+PiAgwqDCoMKgwqAtPiBkbWFfaGVhcF9kZXZu
b2RlCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgLT4ga2FzcHJpbnRmCj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0+a3Zhc3ByaW50Zgo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLT5rbWFsbG9jX25vZGVfdHJhY2tfY2FsbGVyCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC0+IF9fa21hbGxvY19ub2RlX3RyYWNrX2NhbGxlcgo+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0+IF9fZG9fa21hbGxvY19ub2RlCj4+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtPiBr
YXNhbl9rbWFsbG9jCj4+Cj4+Cj4+IFRoZXJlIGlzIG5vIGZ1bmN0aW9uIGxpa2UgJ2RhbV9oZWFw
X2V4aXQnIHRvIGZyZWUgdGhlIG1lbW1vcnkgYWxsb2NhdGVkCj4+IGJ5IGRtYV9oZWFwX2Rldm5v
ZGUuCj4+Cj4+IEFub3RoZXIgY2FzZSBpcyAnY3B1aWRfZGV2bm9kZScuIFdpbGwgdGhpcyBjYXVz
ZSBhIG1lbW9yeSBsZWFrLCBhbmQgaXMKPj4gdGhlcmUgYSBiZXR0ZXIgd2F5IHRvIGF2b2lkIHRo
ZSBtZW1vcnkgbGVhayBpbiB0aGlzIGNhc2U/Cj4+Cj4+IE9yIGlzIHRoZXJlIGEgdW5pZm9ybSBw
bGFjZSBpbiB0aGUgbWVtb3J5IG1hbmFnZW1lbnQgbW9kdWxlIHRvIGZyZWUgdXAKPj4gdGhpcyBt
ZW1vcnk/Cj4gCj4gSWYgdGhlIGxpZmV0aW1lIG9mIHRoZSBhbGxvY2F0ZWQgYnVmZmVyIGVxdWFs
cyB0byB0aGUgbGlmZXRpbWUgb2YgdGhlCj4ga2VybmVsLCBpLmUuIGl0J3MgYWxsb2NhdGVkIG9u
Y2UgYXQga2VybmVsIGluaXQgYW5kIHRoZW4gdXNlZCB0aHJvdWdob3V0Cj4gdGhlIHdob2xlIHVw
dGltZSwgdGhlcmUncyBubyBuZWVkIHRvIGZyZWUgdGhpcyBwaWVjZS4KPiBUZW1wb3JhcnkgYnVm
ZmVycyBvciBidWZmZXJzIGFsbG9jYXRlZCBmcm9tIGEgZHJpdmVyIGFyZSBhIGRpZmZlcmVudAo+
IHN0b3J5LCB0aGVpciBsaWZldGltZSBpcyBzaG9ydGVyLCB3aGljaCBtZWFucyB5b3UgYWx3YXlz
IG5lZWQgdG8KPiBtYW51YWxseSBmcmVlIGVhY2ggb2YgdGhlbSBvbiBleGl0Lgo+IAo+Pgo+PiBU
aGFua3MsCj4+IEt1bnd1Cj4gVGhhbmtzLAo+IE9sZWsKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
