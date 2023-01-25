Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 555F867A979
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 05:04:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9269E81F2D;
	Wed, 25 Jan 2023 04:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9269E81F2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674619463;
	bh=4uHg0sBFi83Jx77IycUn5gMOPuVCHAlYjxKxcyTG/HU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PVFpsqdDTCdRJqb38W0RykrqjXHp0fQDzhtfOCrjTaGFQOiuTnw9jvcALcursn1g3
	 EWJFtGuu0srwk268UvwMPy2+jpJSP8E2rMj4g+c/GIr0ScS7aZqnSbH7DQfDlmq94v
	 2CN8yvzVOp7ZVvKRDq5PLX7mboxHCdAAkWf3w8YiV+1cSAT7NWsUQUX1+RKi+0oHb2
	 9d+qVPRpiBFMUQRBFSVDNwiuZjy0zpwLmQ2nJVwufskS/ri7PECPxL5eVoZqCra2J9
	 jQ64CBOkHqKkZWBiM1WmpEPkYYN2DG/95KdaseQvUIJqSlhMq3R2IiuST17kM+vAiS
	 nzbGtTKDE7FzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lv39CvKFICQp; Wed, 25 Jan 2023 04:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69DD081EA5;
	Wed, 25 Jan 2023 04:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69DD081EA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D70771BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 04:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AEED081EA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 04:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEED081EA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id szSMaaC_CVJ1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 04:04:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D89F181E90
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D89F181E90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 04:04:15 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id d10so12594700pgm.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 20:04:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FcnTDJJRJLnAcGyKzJWIX9FAeZvmDKRyTv30CMpkzNs=;
 b=5YpmBpxa+VY77Zj77/OO3Q/gyMwf+BhHIS3eP5xStzVdYALmmLyhEk1BgRSEQvSTtj
 yGYyHEjKf2z7j+0Pu1VrCvPEauN7tSoeOFOSu6zHUk7qmaAQhoL6EhSqSRhI+XakctNp
 hLpI32o4aY/eMof+QaRWN8yAtH28p98+6iphErCrK1CtWQpj9BCegfk10wLoOVqQfn9y
 DIbs47IgwpOp0dzA8+FRNjPDmsU4dKaTealoz31E3sSviR9WCITQWN2ZH3w87nVlzpaU
 xxskF63Eq7khabcwz/N+uUzqsd8J1fgXTdjC52n1xl6g+Kmaew87I09VogGQiltBXW5U
 4LKw==
X-Gm-Message-State: AFqh2kqQXVwJUGrd6O0ctW1TvP3YLaidkLCeoc0xECzQHQSBSjD8pDUz
 xDfZuEbG1i3YoZWFSQRvKJ9CNA==
X-Google-Smtp-Source: AMrXdXvU5nZQfE1g8DWAa2Tx9zY1CmMmhisFdT5KhcqS39aPUzqw5a/pDdy04dsVryLa1u2dp63pbQ==
X-Received: by 2002:a62:ea0e:0:b0:577:d10d:6eab with SMTP id
 t14-20020a62ea0e000000b00577d10d6eabmr31519118pfh.21.1674619455213; 
 Tue, 24 Jan 2023 20:04:15 -0800 (PST)
Received: from ?IPV6:2400:4050:a840:1e00:4457:c267:5e09:481b?
 ([2400:4050:a840:1e00:4457:c267:5e09:481b])
 by smtp.gmail.com with ESMTPSA id
 17-20020aa79211000000b00575b6d7c458sm2397550pfo.21.2023.01.24.20.04.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jan 2023 20:04:14 -0800 (PST)
Message-ID: <f81f8974-3c1b-4e34-ce51-5e0e7472079b@daynix.com>
Date: Wed, 25 Jan 2023 13:04:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230124043915.12952-1-akihiko.odaki@daynix.com>
 <a23d0eb5-123f-a2ad-5585-59147bb9b172@molgen.mpg.de>
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <a23d0eb5-123f-a2ad-5585-59147bb9b172@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FcnTDJJRJLnAcGyKzJWIX9FAeZvmDKRyTv30CMpkzNs=;
 b=2gZUOLi0wG7EyjRboogZXUO4Z5cmo/jeAmy5AHLRCr9NPQdHpGmiAa+mNB9AlTiJca
 CpSUZbtc7wLtTZEtnPdRm8qudP2WO3cQjYn96V8NIUKqccQkSfskAkA/jt1zoO9xz76N
 Pn0Ftt+wNXAcrWdADqpe4nryv7Gm8LjmwUA2IarmfDE4BDWpCkkW2+mhBE+qTZuU9P0V
 UEDpCIO1vUw1cYFj9hVxvDezVWsoRZcLBKE8vmCbIwuXLIwWCGWq4sWDne8cMbE4QPNy
 j1fNarf77ZneysgMFJUcBCodfSpsDSF71kHVNM8FlO2A/CzpvrSY5Y8/9JElrJVXunWw
 Leeg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=2gZUOLi0
Subject: Re: [Intel-wired-lan] [PATCH RESEND] igbvf: Fix rx_buffer_len
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
Cc: netdev@vger.kernel.org, Yan Vugenfirer <yvugenfi@redhat.com>,
 linux-kernel@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMy8wMS8yNCAxOTo0OSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBBa2loaWtvLAo+
IAo+IAo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KPiAKPiBBbSAyNC4wMS4yMyB1bSAwNToz
OSBzY2hyaWViIEFraWhpa28gT2Rha2k6Cj4gCj4gTWF5YmUgaW1wcm92ZSB0aGUgY29tbWl0IG1l
c3NhZ2Ugc3VtbWFyeSB0byBiZSBtb3JlIHNwZWNpZmljOgo+IAo+IGlnYnZmOiBBbGlnbiByeF9i
dWZmZXJfbGVuIHRvIGZpeCBtZW1vcnkgY29ycnB0aW9uCj4gCj4+IFdoZW4gcnhfYnVmZmVyX2xl
biBpcyBub3QgYWxpZ25lZCBieSAxMDI0LCBpZ2J2ZiBzZXRzIHRoZSBhbGlnbmVkIHNpemUKPj4g
dG8gU1JSQ1RMIHdoaWxlIHRoZSBidWZmZXIgaXMgYWxsb2NhdGVkIHdpdGggdGhlIHVuYWxpZ25l
ZCBzaXplLiBUaGlzCj4+IGFsbG93cyB0aGUgZGV2aWNlIHRvIHdyaXRlIG1vcmUgZGF0YSB0aGFu
IHJ4X2J1ZmZlcl9sZW4sIHJlc3VsdGluZyBpbgo+PiBtZW1vcnkgY29ycnVwdGlvbi4gQWxpZ24g
cnhfYnVmZmVyX2xlbiBpdHNlbGYgc28gdGhhdCB0aGUgYnVmZmVyIHdpbGwKPj4gYmUgYWxsb2Nh
dGVkIHdpdGggdGhlIGFsaWduZWQgc2l6ZS4KPj4KPj4gVGhlIGNvbmRpdGlvbiB0byBzcGxpdCBS
WCBwYWNrZXQgaGVhZGVyLCB3aGljaCB1c2VzIHJ4X2J1ZmZlcl9sZW4sIGlzCj4+IGFsc28gbW9k
aWZpZWQgc28gdGhhdCBpdCBkb2Vzbid0IGNoYW5nZSB0aGUgYmVoYXZpb3IgZm9yIHRoZSBzYW1l
Cj4+IGFjdHVhbCAodW5hbGlnbmVkKSBwYWNrZXQgc2l6ZS4gQWN0dWFsbHkgdGhlIG5ldyBjb25k
aXRpb24gaXMgbm90Cj4+IGlkZW50aWNhbCB3aXRoIHRoZSBvbGQgb25lIGFzIGl0IHdpbGwgbm8g
bG9uZ2VyIHJlcXVlc3Qgc3BsaXR0aW5nIHdoZW4KPj4gdGhlIGFjdHVhbCBwYWNrZXQgc2l6ZSBp
cyBleGFjdGx5IDIwNDgsIGJ1dCB0aGF0IHNob3VsZCBiZSBuZWdsaWdpYmxlLgo+IAo+IElzIHRo
ZXJlIGFuIGVhc3kgd2F5IHRvIHJlcHJvZHVjZSBpdD8KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4g
Cj4gUGF1bAo+IAo+IAoKSSB3aXRoZHJhdyB0aGlzIHBhdGNoLiBXaGlsZSBpZ2J2ZiBzZXRzIGEg
dmFsdWUgZ3JlYXRlciB0aGFuIHRoZSBhY3R1YWwgCmJ1ZmZlciBzaXplIHRvIFNSUkNUTC5CU0la
RVBLVCwgc3VjaCBhIGxvbmcgcGFja2V0IHNob3VsZCBiZSBkcm9wcGVkIAphY2NvcmRpbmcgdG8g
Vk1PTFIuUkxQTUwuCgpSZWdhcmRzLApBa2loaWtvIE9kYWtpCgo+PiBGaXhlczogZDRlMGZlMDFh
MzhhICgiaWdidmY6IGFkZCBuZXcgZHJpdmVyIHRvIHN1cHBvcnQgODI1NzYgdmlydHVhbCAKPj4g
ZnVuY3Rpb25zIikKPj4gU2lnbmVkLW9mZi1ieTogQWtpaGlrbyBPZGFraSA8YWtpaGlrby5vZGFr
aUBkYXluaXguY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
dmYvbmV0ZGV2LmMgfCA5ICsrKysrLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdidmYvbmV0ZGV2LmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdidmYvbmV0ZGV2LmMKPj4gaW5kZXggM2EzMjgwOTUxMGZjLi5iNmJjYTc4MTk4ZmEgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYnZmL25ldGRldi5jCj4+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYnZmL25ldGRldi5jCj4+IEBAIC0x
MzQxLDEwICsxMzQxLDkgQEAgc3RhdGljIHZvaWQgaWdidmZfc2V0dXBfc3JyY3RsKHN0cnVjdCAK
Pj4gaWdidmZfYWRhcHRlciAqYWRhcHRlcikKPj4gwqDCoMKgwqDCoCBzcnJjdGwgfD0gRTEwMDBf
U1JSQ1RMX0RST1BfRU47Cj4+IMKgwqDCoMKgwqAgLyogU2V0dXAgYnVmZmVyIHNpemVzICovCj4+
IC3CoMKgwqAgc3JyY3RsIHw9IEFMSUdOKGFkYXB0ZXItPnJ4X2J1ZmZlcl9sZW4sIDEwMjQpID4+
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgRTEwMDBfU1JSQ1RMX0JTSVpFUEtUX1NISUZUOwo+PiAr
wqDCoMKgIHNycmN0bCB8PSBhZGFwdGVyLT5yeF9idWZmZXJfbGVuID4+IEUxMDAwX1NSUkNUTF9C
U0laRVBLVF9TSElGVDsKPj4gLcKgwqDCoCBpZiAoYWRhcHRlci0+cnhfYnVmZmVyX2xlbiA8IDIw
NDgpIHsKPj4gK8KgwqDCoCBpZiAoYWRhcHRlci0+cnhfYnVmZmVyX2xlbiA8PSAyMDQ4KSB7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBhZGFwdGVyLT5yeF9wc19oZHJfc2l6ZSA9IDA7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBzcnJjdGwgfD0gRTEwMDBfU1JSQ1RMX0RFU0NUWVBFX0FEVl9PTkVCVUY7
Cj4+IMKgwqDCoMKgwqAgfSBlbHNlIHsKPj4gQEAgLTE2MjUsNyArMTYyNCw3IEBAIHN0YXRpYyBp
bnQgaWdidmZfc3dfaW5pdChzdHJ1Y3QgaWdidmZfYWRhcHRlciAKPj4gKmFkYXB0ZXIpCj4+IMKg
wqDCoMKgwqAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IGFkYXB0ZXItPm5ldGRldjsKPj4g
wqDCoMKgwqDCoCBzMzIgcmM7Cj4+IC3CoMKgwqAgYWRhcHRlci0+cnhfYnVmZmVyX2xlbiA9IEVU
SF9GUkFNRV9MRU4gKyBWTEFOX0hMRU4gKyBFVEhfRkNTX0xFTjsKPj4gK8KgwqDCoCBhZGFwdGVy
LT5yeF9idWZmZXJfbGVuID0gQUxJR04oRVRIX0ZSQU1FX0xFTiArIFZMQU5fSExFTiArIAo+PiBF
VEhfRkNTX0xFTiwgMTAyNCk7Cj4+IMKgwqDCoMKgwqAgYWRhcHRlci0+cnhfcHNfaGRyX3NpemUg
PSAwOwo+PiDCoMKgwqDCoMKgIGFkYXB0ZXItPm1heF9mcmFtZV9zaXplID0gbmV0ZGV2LT5tdHUg
KyBFVEhfSExFTiArIEVUSF9GQ1NfTEVOOwo+PiDCoMKgwqDCoMKgIGFkYXB0ZXItPm1pbl9mcmFt
ZV9zaXplID0gRVRIX1pMRU4gKyBFVEhfRkNTX0xFTjsKPj4gQEAgLTI0MjksNiArMjQyOCw4IEBA
IHN0YXRpYyBpbnQgaWdidmZfY2hhbmdlX210dShzdHJ1Y3QgbmV0X2RldmljZSAKPj4gKm5ldGRl
diwgaW50IG5ld19tdHUpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBhZGFwdGVyLT5yeF9idWZmZXJf
bGVuID0gRVRIX0ZSQU1FX0xFTiArIFZMQU5fSExFTiArCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVUSF9GQ1NfTEVOOwo+PiArwqDCoMKgIGFkYXB0ZXIt
PnJ4X2J1ZmZlcl9sZW4gPSBBTElHTihhZGFwdGVyLT5yeF9idWZmZXJfbGVuLCAxMDI0KTsKPj4g
Kwo+PiDCoMKgwqDCoMKgIG5ldGRldl9kYmcobmV0ZGV2LCAiY2hhbmdpbmcgTVRVIGZyb20gJWQg
dG8gJWRcbiIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXRkZXYtPm10dSwgbmV3X210
dSk7Cj4+IMKgwqDCoMKgwqAgbmV0ZGV2LT5tdHUgPSBuZXdfbXR1OwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
