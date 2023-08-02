Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E0576C973
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 11:26:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1F3540A73;
	Wed,  2 Aug 2023 09:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1F3540A73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690968408;
	bh=64Wjv3idlCZ6iiPIpp75K0Kr63VmV1uiOKfAX1fFVAc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nMYSK9fCpYFzfdmKnOEDJxnbuxWWgQkvqlI23fOgPwuQi2mGRTMUaGaJLXpQGDHCg
	 1PZB2QxyBGkpqTx8TRpYXeTDrQLT7B2oS/JAyc6n0BtpgRHZKmeBQoiDGIruAwVIu5
	 daEuAWsGjG8vycN4tNeyMjHMWVzFQ5mV98LByjm8zPYky25UUOvNRTZjC7jIvPjemV
	 T22QtadEneYBXacN1Upi129q7GJbs6ap3IF+K8tDBhalbLJOPYbLx4T7WNOuhYQ5Tw
	 uYagQxNhEj7fwd3ymhK+zd27MKbJOt0uYLBI4cEDEH1W7DiKYBFweqUGVCND8pH1Sj
	 8Avm1+BJVxtiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9WZjKESHunk9; Wed,  2 Aug 2023 09:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D28F40A8E;
	Wed,  2 Aug 2023 09:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D28F40A8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3128A1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 09:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D94EA81389
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 09:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D94EA81389
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fzi-opxv2Y7O for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 09:26:38 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D16681329
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 09:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D16681329
Received: from [192.168.0.2] (ip5f5ae98d.dynamic.kabel-deutschland.de
 [95.90.233.141])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BE7B361E5FE05;
 Wed,  2 Aug 2023 11:26:19 +0200 (CEST)
Message-ID: <5f9c39d3-84fb-b420-5297-04ce3839d348@molgen.mpg.de>
Date: Wed, 2 Aug 2023 11:26:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20230802061946.3489037-1-sasha.neftin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230802061946.3489037-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix the typo in
 the PTM Control macro
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAwMi4wOC4yMyB1bSAw
ODoxOSBzY2hyaWViIFNhc2hhIE5lZnRpbjoKPiBUaGUgSUdDX1BUTV9DVFJMX1NIUlRfQ1lDIGRl
ZmluZWQgdGhlIHRpbWUgYmV0d2VlbiB0d28gY29uc2VjdXRpdmUgUFRNCgpkZWZpbmUqcyoKCj4g
cmVxdWVzdHMuIFRoZSBiaXQgcmVzb2x1dGlvbiBvZiB0aGlzIGZpZWxkIGlzIHNpeCBiaXRzLiBU
aGlzIHBhdGNoIGNvbWVzCj4gdG8gY29ycmVjdCB0aGUgdHlwbyBpbiB0aGUgSUdDX1BUTV9DVFJM
X1NIUlRfQ1lDIG1hY3JvLgoKV2VsbCBiaXQgc2l4IHdhcyBzZXQgYmVmb3JlLCB3YXNu4oCZdCBp
dD8gSWYgeW91IHJlc2VuZCwgeW91IGNhbiB3cml0ZSwgCnRoYXQgYml0IGZpdmUgd2FzIG1pc3Np
bmcgaW4gdGhlIG1hc2suCgpGb3IgdGhlIHN1bW1hcnkgSSBzdWdnZXN0IHNvbWV0aGluZyBsaWtl
OgoKaWdjOiBBbHNvIHNldCBiaXQgNSBpbiBtYXNrIGluIFBUTSBDb250cm9sIG1hY3JvCgo+IEZp
eGVzOiBhOTBlYzg0ODM3MzIgKCJpZ2M6IEFkZCBzdXBwb3J0IGZvciBQVFAgZ2V0Y3Jvc3N0c3Rh
bXAoKSIpCj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwu
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVz
LmggfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19k
ZWZpbmVzLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaAo+
IGluZGV4IGMzNzIyZjUyNGVhNy4uMGJhYzZlZWI0MmMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmgKPiBAQCAtNTQ2LDcgKzU0Niw3IEBACj4g
ICAjZGVmaW5lIElHQ19QVE1fQ1RSTF9TVEFSVF9OT1cJQklUKDI5KSAvKiBTdGFydCBQVE0gTm93
ICovCj4gICAjZGVmaW5lIElHQ19QVE1fQ1RSTF9FTgkJQklUKDMwKSAvKiBFbmFibGUgUFRNICov
Cj4gICAjZGVmaW5lIElHQ19QVE1fQ1RSTF9UUklHCUJJVCgzMSkgLyogUFRNIEN5Y2xlIHRyaWdn
ZXIgKi8KPiAtI2RlZmluZSBJR0NfUFRNX0NUUkxfU0hSVF9DWUModXNlYykJKCgodXNlYykgJiAw
eDJmKSA8PCAyKQo+ICsjZGVmaW5lIElHQ19QVE1fQ1RSTF9TSFJUX0NZQyh1c2VjKQkoKCh1c2Vj
KSAmIDB4M2YpIDw8IDIpCj4gICAjZGVmaW5lIElHQ19QVE1fQ1RSTF9QVE1fVE8odXNlYykJKCgo
dXNlYykgJiAweGZmKSA8PCA4KQo+ICAgCj4gICAjZGVmaW5lIElHQ19QVE1fU0hPUlRfQ1lDX0RF
RkFVTFQJMSAgIC8qIERlZmF1bHQgc2hvcnQgY3ljbGUgaW50ZXJ2YWwgKi8KClJldmlld2VkLWJ5
OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgoKCktpbmQgcmVnYXJkcywKClBh
dWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
