Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFFC80D27D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 17:42:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EC0C4010D;
	Mon, 11 Dec 2023 16:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EC0C4010D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702312974;
	bh=rFkz/C6R1aJfblOuFVKQdQiT1+gbLhAOY4ctLj66T64=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5BqHociPDLMvrwGpRARgjUABNuVtQNUwLskm7xJbDWIUTLDMsbpu3ZIIQ5kTOXnQk
	 uWq0sH/FFKVf61vaJpRodVDXWdnqxwKSO7V2NCw/X/hmf0NytYbZZ+Ro9+5iOV4ALi
	 ngiTgryeXslcNRSOkO7kBykIt/aH0tha/Idg+6GEyBrxLJZRM1qNvIc6KyRcqx0vvi
	 VnuhtB3jsZpUv3ZqCe7+mTkWlc1tOiPmTwiWHD7xSsoXFnsOoJXJSEwYTJ3QjU1Dgj
	 kQj9yZ1y2kuKZE0frEKlRcgF+oeMepXw/jxsrBogT9NbUUHNAV2AK7KJW6lK52U3lR
	 vPonxdk8ca/GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N90ErnjntrSW; Mon, 11 Dec 2023 16:42:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09AFF40544;
	Mon, 11 Dec 2023 16:42:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09AFF40544
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 911401BF342
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68A228176C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:39:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68A228176C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AZMg5DQBkxqG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 09:39:07 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5118E81B48
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:39:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5118E81B48
X-UUID: 90c14759aec244f18e5f35bca88012e0-20231211
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33, REQID:50c7ce0a-480d-4ee8-af05-9623a3f8ed38, IP:15,
 URL:0,TC:0,Content:-5,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACT
 ION:release,TS:-5
X-CID-INFO: VERSION:1.1.33, REQID:50c7ce0a-480d-4ee8-af05-9623a3f8ed38, IP:15,
 UR
 L:0,TC:0,Content:-5,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-5
X-CID-META: VersionHash:364b77b, CLOUDID:bc2809bd-2ac7-4da2-9f94-677a477649d9,
 B
 ulkID:231211151625B9OJXTLD,BulkQuantity:4,Recheck:0,SF:17|19|44|64|66|38|2
 4|102,TC:nil,Content:0,EDM:-3,IP:-2,URL:1,File:nil,Bulk:40,QS:nil,BEC:nil,
 COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR, TF_CID_SPAM_FAS, TF_CID_SPAM_FSD,
 TF_CID_SPAM_FSI, TF_CID_SPAM_ULS
X-UUID: 90c14759aec244f18e5f35bca88012e0-20231211
X-User: chentao@kylinos.cn
Received: from [172.20.15.254] [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 1128353985; Mon, 11 Dec 2023 17:32:02 +0800
Message-ID: <3231a5d7-29bc-4464-a26c-803b95774f86@kylinos.cn>
Date: Mon, 11 Dec 2023 17:32:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 richardcochran@gmail.com, jacob.e.keller@intel.com,
 karol.kolacinski@intel.com
References: <20231211062649.247148-1-chentao@kylinos.cn>
 <447d130a-e1ac-02f6-e168-b04bfa9c6004@intel.com>
Content-Language: en-US
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <447d130a-e1ac-02f6-e168-b04bfa9c6004@intel.com>
X-Mailman-Approved-At: Mon, 11 Dec 2023 16:42:26 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix some null pointer
 dereference issues in ice_ptp.c
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
 linux-kernel@vger.kernel.org, michal.michalik@intel.com,
 Kunwu Chan <kunwu.chan@hotmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIGZvciB5b3VyIHN1Z2dlc3Rpb24uCgpJIG1hZGUgdGhlIHBhdGNoIGJhc2VkIG9uIGxp
bnV4LW5leHQuZ2l0KHRhZzpuZXh0LTIwMjMxMjExKS4KCk91ciBjb2RlIGlzIGp1c3Qgc2VsZi1z
aW1pbGFyLCBpIGRpZG4ndCBvdmVycmlkZSB0aGUgb2xkIG5hbWUuCkkga2VlcCB0aGUgbG9naWMg
YXMgaXQgd2FzIGJlZm9yZS4KVGhlIG5ld2VzdCBjb2RlIGlzOgoKaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC90cmVlL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMjbjI3NDcKCmh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQv
dHJlZS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jI24yOTkzCgpJJ2xs
IHVwZGF0ZSB2MiBwYXRjaCB3aXRoOgoxLiB1cGRhdGUgc3VqZWN0IHByZWZpeCB0byAiW1BBVENI
IHYyIGl3bC1uZXh0XSIKMi4gcmVtb3ZlICdkZXZfZXJyJwoKClRoYW5rcyBhZ2FpbiwKS3Vud3UK
Ck9uIDIwMjMvMTIvMTEgMTU6MTUsIFByemVtZWsgS2l0c3plbCB3cm90ZToKPiBPbiAxMi8xMS8y
MyAwNzoyNiwgS3Vud3UgQ2hhbiB3cm90ZToKPj4gZGV2bV9rYXNwcmludGYoKSByZXR1cm5zIGEg
cG9pbnRlciB0byBkeW5hbWljYWxseSBhbGxvY2F0ZWQgbWVtb3J5Cj4+IHdoaWNoIGNhbiBiZSBO
VUxMIHVwb24gZmFpbHVyZS4KPj4KPj4gRml4ZXM6IGQ5MzhhOGNjYTg4YSAoImljZTogQXV4YnVz
IGRldmljZXMgJiBkcml2ZXIgZm9yIEU4MjIgVFMiKQo+PiBDYzogS3Vud3UgQ2hhbiA8a3Vud3Uu
Y2hhbkBob3RtYWlsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogS3Vud3UgQ2hhbiA8Y2hlbnRhb0Br
eWxpbm9zLmNuPgo+IAo+IEkgd291bGQgc3VnZ2VzdCBhZGRpbmcgIml3bC1uZXQiIGFzIGEgdGFy
Z2V0IGhlcmUKPiAKPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfcHRwLmMgfCA2ICsrKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0
cC5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKPj4gaW5k
ZXggMWVkZGNiZTg5YjBjLi41OTc5NGNlNGYyNDMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+PiBAQCAtMjY2OCw2ICsyNjY4LDggQEAgc3RhdGljIGlu
dCBpY2VfcHRwX3JlZ2lzdGVyX2F1eGJ1c19kcml2ZXIoc3RydWN0IAo+PiBpY2VfcGYgKnBmKQo+
PiDCoMKgwqDCoMKgIG5hbWUgPSBkZXZtX2thc3ByaW50ZihkZXYsIEdGUF9LRVJORUwsICJwdHBf
YXV4X2Rldl8ldV8ldV9jbGsldSIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHBmLT5wZGV2LT5idXMtPm51bWJlciwgUENJX1NMT1QocGYtPnBkZXYtPmRldmZuKSwK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWNlX2dldF9wdHBfc3Jj
X2Nsb2NrX2luZGV4KCZwZi0+aHcpKTsKPj4gK8KgwqDCoCBpZiAoIW5hbWUpCj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4gwqDCoMKgwqDCoCBhdXhfZHJpdmVyLT5uYW1lID0g
bmFtZTsKPj4gwqDCoMKgwqDCoCBhdXhfZHJpdmVyLT5zaHV0ZG93biA9IGljZV9wdHBfYXV4YnVz
X3NodXRkb3duOwo+PiBAQCAtMjkyOSw2ICsyOTMxLDEwIEBAIHN0YXRpYyBpbnQgaWNlX3B0cF9j
cmVhdGVfYXV4YnVzX2RldmljZShzdHJ1Y3QgCj4+IGljZV9wZiAqcGYpCj4+IMKgwqDCoMKgwqAg
bmFtZSA9IGRldm1fa2FzcHJpbnRmKGRldiwgR0ZQX0tFUk5FTCwgInB0cF9hdXhfZGV2XyV1XyV1
X2NsayV1IiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGYtPnBk
ZXYtPmJ1cy0+bnVtYmVyLCBQQ0lfU0xPVChwZi0+cGRldi0+ZGV2Zm4pLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpY2VfZ2V0X3B0cF9zcmNfY2xvY2tfaW5kZXgo
JnBmLT5odykpOwo+PiArwqDCoMKgIGlmICghbmFtZSkgewo+PiArwqDCoMKgwqDCoMKgwqAgZGV2
X2VycihkZXYsICJGYWlsZWQgdG8gYWxsb2NhdGUgbWVtb3J5XG4iKTsKPiAKPiBLdWJhIEAgWzFd
Ogo+IG5vIHdhcm5pbmdzIG9uIGFsbG9jYXRpb24gZmFpbHVyZXMsIHRoZXJlIHdpbGwgYmUgYSBz
cGxhdCBmb3IgR0ZQX0tFUk5FTAo+IChjaGVja3BhdGNoIHNob3VsZCBjYXRjaCB0aGlzKQo+IAo+
IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMzEyMDYxOTUzMDQuNjIyNjc3
MWRAa2VybmVsLm9yZy9ULwo+IAo+IHNvIGp1c3QgInJldHVybiAtRU5PTUVNIiB3b3VsZCBiZSBz
dWZmaWNpZW50Cj4gCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4gK8KgwqDC
oCB9Cj4+IMKgwqDCoMKgwqAgYXV4X2Rldi0+bmFtZSA9IG5hbWU7Cj4+IMKgwqDCoMKgwqAgYXV4
X2Rldi0+aWQgPSBpZDsKPiAKPiBJIGRpZG4ndCBjaGVja2VkIGJ1dCBoYXZpbmcgc2FtZSBjb2Rl
IGluIHR3byBwbGFjZXMgcmFpc2VzIHF1ZXN0aW9ucy4KPiBBcmUgeW91IG92ZXJ3cml0aW5nIG9s
ZCBuYW1lIGhlcmUsIG9yIG91ciBjb2RlIGlzIGp1c3Qgc2VsZiBzaW1pbGFyPwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
