Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A71586CED29
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:41:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A4F48420D;
	Wed, 29 Mar 2023 15:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A4F48420D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680104485;
	bh=TqiB6iJ75R+OVB0l8QM5tuInt/T4g1i9QYN9Mac+zKE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z5AtWa181t6Gd/J16/FZVqv8vvMogZJJAchKtCpJp/IeIE0EasrDxZ/KofvfjtDXt
	 HzviQYVMY6VKW54KYOsHsCUiX1F0Hb8JEIno/aVAXQlnb6ZkWnOKCqAmjXHS4Eq+Z5
	 eMBgJP1xW3vnVJEwb3LAaoI2mGG6ZYHIf+22ck6mHeRPvpmwR2Iv6tSAPElsySVtFa
	 ttlGgYPKRkFHIABAzU6h6nLdmgvkruCNjkqQ7l+aJ8+c/i8kmEdAODzfhnbgc8dH0j
	 VGQKNYv5y7LGiEecOxRTEiLB4XGRrbPZaj7LVSY+iTWF/yljhjmZqMQw5vRI00GIGK
	 0EZ0IdlkHAwVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tpkG-oHwS-U; Wed, 29 Mar 2023 15:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F31E78420B;
	Wed, 29 Mar 2023 15:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F31E78420B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8BD21BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 15:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADA198420B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 15:41:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADA198420B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DQKn9zLrAhG8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 15:41:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0E9C8420A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0E9C8420A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 15:41:16 +0000 (UTC)
Received: from [192.168.0.185] (ip5f5aebcb.dynamic.kabel-deutschland.de
 [95.90.235.203])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5616061CC457B;
 Wed, 29 Mar 2023 17:41:13 +0200 (CEST)
Message-ID: <72691489-274c-8c3c-c897-08f74f413097@molgen.mpg.de>
Date: Wed, 29 Mar 2023 17:41:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: netdev@vger.kernel.org, willemb@google.com, decot@google.com,
 shiraz.saleem@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXZhbiwKCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB0aGUgbmV3IGRyaXZlci4gSXTi
gJlzIGEgbG90IG9mIGNvZGUuIDstKQoKQW0gMjkuMDMuMjMgdW0gMTY6MDMgc2NocmllYiBQYXZh
biBLdW1hciBMaW5nYToKPiBUaGlzIHBhdGNoIHNlcmllcyBpbnRyb2R1Y2VzIHRoZSBJbmZyYXN0
cnVjdHVyZSBEYXRhIFBhdGggRnVuY3Rpb24gKElEUEYpCj4gZHJpdmVyLiBJdCBpcyB1c2VkIGZv
ciBib3RoIHBoeXNpY2FsIGFuZCB2aXJ0dWFsIGZ1bmN0aW9ucy4gRXhjZXB0IGZvcgo+IHNvbWUg
b2YgdGhlIGRldmljZSBvcGVyYXRpb25zIHRoZSByZXN0IG9mIHRoZSBmdW5jdGlvbmFsaXR5IGlz
IHRoZSBzYW1lCj4gZm9yIGJvdGggUEYgYW5kIFZGLiBJRFBGIHVzZXMgdmlydGNobmwgdmVyc2lv
bjIgb3Bjb2RlcyBhbmQgc3RydWN0dXJlcwo+IGRlZmluZWQgaW4gdGhlIHZpcnRjaG5sMiBoZWFk
ZXIgZmlsZSB3aGljaCBoZWxwcyB0aGUgZHJpdmVyIHRvIGxlYXJuCj4gdGhlIGNhcGFiaWxpdGll
cyBhbmQgcmVnaXN0ZXIgb2Zmc2V0cyBmcm9tIHRoZSBkZXZpY2UgQ29udHJvbCBQbGFuZSAoQ1Ap
Cj4gaW5zdGVhZCBvZiBhc3N1bWluZyB0aGUgZGVmYXVsdCB2YWx1ZXMuCj4gCj4gVGhlIGZvcm1h
dCBvZiB0aGUgc2VyaWVzIGZvbGxvd3MgdGhlIGRyaXZlciBpbml0IGZsb3cgdG8gaW50ZXJmYWNl
IG9wZW4uCj4gVG8gc3RhcnQgd2l0aCwgcHJvYmUgZ2V0cyBjYWxsZWQgYW5kIGtpY2tzIG9mZiB0
aGUgZHJpdmVyIGluaXRpYWxpemF0aW9uCj4gYnkgc3Bhd25pbmcgdGhlICd2Y19ldmVudF90YXNr
JyB3b3JrIHF1ZXVlIHdoaWNoIGluIHR1cm4gY2FsbHMgdGhlCj4gJ2hhcmQgcmVzZXQnIGZ1bmN0
aW9uLiBBcyBwYXJ0IG9mIHRoYXQsIHRoZSBtYWlsYm94IGlzIGluaXRpYWxpemVkIHdoaWNoCj4g
aXMgdXNlZCB0byBzZW5kL3JlY2VpdmUgdGhlIHZpcnRjaG5sIG1lc3NhZ2VzIHRvL2Zyb20gdGhl
IENQLiBPbmNlIHRoYXQgaXMKPiBkb25lLCAnY29yZSBpbml0JyBraWNrcyBpbiB3aGljaCByZXF1
ZXN0cyBhbGwgdGhlIHJlcXVpcmVkIGdsb2JhbCByZXNvdXJjZXMKPiBmcm9tIHRoZSBDUCBhbmQg
c3Bhd25zIHRoZSAnaW5pdF90YXNrJyB3b3JrIHF1ZXVlIHRvIGNyZWF0ZSB0aGUgdnBvcnRzLgo+
IAo+IEJhc2VkIG9uIHRoZSBjYXBhYmlsaXR5IGluZm9ybWF0aW9uIHJlY2VpdmVkLCB0aGUgZHJp
dmVyIGNyZWF0ZXMgdGhlIHNhaWQKPiBudW1iZXIgb2YgdnBvcnRzIChvbmUgb3IgbWFueSkgd2hl
cmUgZWFjaCB2cG9ydCBpcyBhc3NvY2lhdGVkIHRvIGEgbmV0ZGV2Lgo+IEFsc28sIGVhY2ggdnBv
cnQgaGFzIGl0cyBvd24gcmVzb3VyY2VzIHN1Y2ggYXMgcXVldWVzLCB2ZWN0b3JzIGV0Yy4KPiAg
RnJvbSB0aGVyZSwgcmVzdCBvZiB0aGUgbmV0ZGV2X29wcyBhbmQgZGF0YSBwYXRoIGFyZSBhZGRl
ZC4KPiAKPiBJRFBGIGltcGxlbWVudHMgYm90aCBzaW5nbGUgcXVldWUgd2hpY2ggaXMgdHJhZGl0
aW9uYWwgcXVldWVpbmcgbW9kZWwKPiBhcyB3ZWxsIGFzIHNwbGl0IHF1ZXVlIG1vZGVsLiBJbiBz
cGxpdCBxdWV1ZSBtb2RlbCwgaXQgdXNlcyBzZXBhcmF0ZSBxdWV1ZQo+IGZvciBib3RoIGNvbXBs
ZXRpb24gZGVzY3JpcHRvcnMgYW5kIGJ1ZmZlcnMgd2hpY2ggaGVscHMgdG8gaW1wbGVtZW50Cj4g
b3V0LW9mLW9yZGVyIGNvbXBsZXRpb25zLiBJdCBhbHNvIGhlbHBzIHRvIGltcGxlbWVudCBhc3lt
bWV0cmljIHF1ZXVlcywKPiBmb3IgZXhhbXBsZSBtdWx0aXBsZSBSWCBjb21wbGV0aW9uIHF1ZXVl
cyBjYW4gYmUgcHJvY2Vzc2VkIGJ5IGEgc2luZ2xlCj4gUlggYnVmZmVyIHF1ZXVlIGFuZCBtdWx0
aXBsZSBUWCBidWZmZXIgcXVldWVzIGNhbiBiZSBwcm9jZXNzZWQgYnkgYQo+IHNpbmdsZSBUWCBj
b21wbGV0aW9uIHF1ZXVlLiBJbiBzaW5nbGUgcXVldWUgbW9kZWwsIHNhbWUgcXVldWUgaXMgdXNl
ZAo+IGZvciBib3RoIGRlc2NyaXB0b3IgY29tcGxldGlvbnMgYXMgd2VsbCBhcyBidWZmZXIgY29t
cGxldGlvbnMuIEl0IGFsc28KPiBzdXBwb3J0cyBmZWF0dXJlcyBzdWNoIGFzIGdlbmVyaWMgY2hl
Y2tzdW0gb2ZmbG9hZCwgZ2VuZXJpYyByZWNlaXZlCj4gb2ZmbG9hZCAoaGFyZHdhcmUgR1JPKSBl
dGMuCgpb4oCmXQoKQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRlIG9uIGhvdyB0aGUgZHJpdmVyIGNh
biBiZSB0ZXN0ZWQsIGFuZCBpZiB0ZXN0cyAKYXJlIGFkZGVkIHRvIGF1dG9tYXRpY2FsbHkgdGVz
dCB0aGUgZHJpdmVyPwoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
