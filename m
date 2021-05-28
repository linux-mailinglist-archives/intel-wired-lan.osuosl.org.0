Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6474F39491C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 May 2021 01:25:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2AFB405C8;
	Fri, 28 May 2021 23:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pEnb4YzlAXW8; Fri, 28 May 2021 23:25:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B7DE405BE;
	Fri, 28 May 2021 23:25:29 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B16791BF420
 for <intel-wired-lan@osuosl.org>; Fri, 28 May 2021 23:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F5E260E01
 for <intel-wired-lan@osuosl.org>; Fri, 28 May 2021 23:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=embeddedor.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oCIsotF90dno for <intel-wired-lan@osuosl.org>;
 Fri, 28 May 2021 23:25:24 +0000 (UTC)
X-Greylist: delayed 00:22:37 by SQLgrey-1.8.0
Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com
 [192.185.148.231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BCD660DCC
 for <intel-wired-lan@osuosl.org>; Fri, 28 May 2021 23:25:24 +0000 (UTC)
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id BAEA11188984
 for <intel-wired-lan@osuosl.org>; Fri, 28 May 2021 18:02:41 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id mlV3lMFKlMGeEmlV3lINdC; Fri, 28 May 2021 18:02:41 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l0QiEp4fOc8S5QViRiss/YOyViBh54YK1qbk6itUu3Y=; b=RZLmRodNgWoXvm/iE6NkoadKf1
 D/UTYIemG9sW2tMdvYgQqktDIXP3asvBIn6KEs9CwFrR6DXiPqVhArfyM1/Bs1VDuoSMuwi8E2if2
 /jBrLFw6TRk5kPWq0ibKAcawEpL9FU7siruUHaQTjG6981fcHpoYVcIZnjd0I2KZWKa/GjF4R8YKH
 ZwePWTsbcjBx/0rHIUVwbwhuKILgsEiZX0UaOhYTkG9Fve+Jb92JmjVwOzUxRuf2+etQVhiU0xFXb
 Twjw7qPWamQTLUE6MwyS1FM6y0kLFx8kONxHWIIR4S2KjVmzciXDtAIotL1t5RIwkbTt+oINojvLy
 bvXqCAqg==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:39020
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <gustavo@embeddedor.com>) id 1lmlV2-002nfb-Ri
 for intel-wired-lan@osuosl.org; Fri, 28 May 2021 18:02:40 -0500
To: intel-wired-lan@osuosl.org
References: <20210525231658.GA176466@embeddedor>
 <f3674339c0390ced22b365101f2d3e3a2bf26845.camel@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <f5a2ce54-4a53-9dcd-e5dc-4d7d51451df4@embeddedor.com>
Date: Fri, 28 May 2021 18:03:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <f3674339c0390ced22b365101f2d3e3a2bf26845.camel@intel.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1lmlV2-002nfb-Ri
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:39020
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 1
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: Re: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element
 array in struct virtchnl_vsi_queue_config_info
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA1LzI4LzIxIDE2OjU2LCBOZ3V5ZW4sIEFudGhvbnkgTCB3cm90ZToKPiBPbiBUdWUsIDIw
MjEtMDUtMjUgYXQgMTg6MTYgLTA1MDAsIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6Cj4+IFRo
ZXJlIGlzIGEgcmVndWxhciBuZWVkIGluIHRoZSBrZXJuZWwgdG8gcHJvdmlkZSBhIHdheSB0byBk
ZWNsYXJlCj4+IGhhdmluZyBhCj4+IGR5bmFtaWNhbGx5IHNpemVkIHNldCBvZiB0cmFpbGluZyBl
bGVtZW50cyBpbiBhIHN0cnVjdHVyZS4gS2VybmVsCj4+IGNvZGUKPj4gc2hvdWxkIGFsd2F5cyB1
c2Ug4oCcZmxleGlibGUgYXJyYXkgbWVtYmVyc+KAnVsxXSBmb3IgdGhlc2UgY2FzZXMuIFRoZQo+
PiBvbGRlcgo+PiBzdHlsZSBvZiBvbmUtZWxlbWVudCBvciB6ZXJvLWxlbmd0aCBhcnJheXMgc2hv
dWxkIG5vIGxvbmdlciBiZQo+PiB1c2VkWzJdLgo+Pgo+PiBSZWZhY3RvciB0aGUgY29kZSBhY2Nv
cmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZsZXhpYmxlLWFycmF5IG1lbWJlciBpbgo+PiBzdHJ1Y3QK
Pj4gdmlydGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19pbmZvIGluc3RlYWQgb2Ygb25lLWVsZW1lbnQg
YXJyYXksIGFuZCB1c2UKPj4gdGhlCj4+IGZsZXhfYXJyYXlfc2l6ZSgpIGhlbHBlci4KPj4KPj4g
WzFdIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgo+
PiBbMl0gCj4+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAvcHJvY2Vzcy9k
ZXByZWNhdGVkLmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwo+Pgo+PiBM
aW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvNzkKPj4gU2lnbmVkLW9m
Zi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgo+PiAtLS0K
Pj4gIGluY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmggfCA5ICsrKystLS0tLQo+PiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgKPj4gYi9pbmNsdWRlL2xpbnV4L2F2Zi92
aXJ0Y2hubC5oCj4+IGluZGV4IGI1NTQ5MTM4MDRiZC4uZWQ5YzQ5OThmOGFjIDEwMDY0NAo+PiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgv
YXZmL3ZpcnRjaG5sLmgKPj4gQEAgLTMzOCwxMCArMzM4LDEwIEBAIHN0cnVjdCB2aXJ0Y2hubF92
c2lfcXVldWVfY29uZmlnX2luZm8gewo+PiAgCXUxNiB2c2lfaWQ7Cj4+ICAJdTE2IG51bV9xdWV1
ZV9wYWlyczsKPj4gIAl1MzIgcGFkOwo+PiAtCXN0cnVjdCB2aXJ0Y2hubF9xdWV1ZV9wYWlyX2lu
Zm8gcXBhaXJbMV07Cj4+ICsJc3RydWN0IHZpcnRjaG5sX3F1ZXVlX3BhaXJfaW5mbyBxcGFpcltd
Owo+PiAgfTsKPj4gIAo+PiAtVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTig3MiwgdmlydGNobmxf
dnNpX3F1ZXVlX2NvbmZpZ19pbmZvKTsKPj4gK1ZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oOCwg
dmlydGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19pbmZvKTsKPj4gIAo+PiAgLyogVklSVENITkxfT1Bf
UkVRVUVTVF9RVUVVRVMKPj4gICAqIFZGIHNlbmRzIHRoaXMgbWVzc2FnZSB0byByZXF1ZXN0IHRo
ZSBQRiB0byBhbGxvY2F0ZSBhZGRpdGlvbmFsCj4+IHF1ZXVlcyB0bwo+PiBAQCAtOTk3LDkgKzk5
Nyw4IEBAIHZpcnRjaG5sX3ZjX3ZhbGlkYXRlX3ZmX21zZyhzdHJ1Y3QKPj4gdmlydGNobmxfdmVy
c2lvbl9pbmZvICp2ZXIsIHUzMiB2X29wY29kZSwKPj4gIAkJaWYgKG1zZ2xlbiA+PSB2YWxpZF9s
ZW4pIHsKPj4gIAkJCXN0cnVjdCB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8gKnZxYyA9
Cj4+ICAJCQkgICAgKHN0cnVjdCB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8KPj4gKilt
c2c7Cj4+IC0JCQl2YWxpZF9sZW4gKz0gKHZxYy0+bnVtX3F1ZXVlX3BhaXJzICoKPj4gLQkJCQkg
ICAgICBzaXplb2Yoc3RydWN0Cj4+IC0JCQkJCSAgICAgdmlydGNobmxfcXVldWVfcGFpcl9pbmZv
KSkKPj4gOwo+PiArCQkJdmFsaWRfbGVuICs9IGZsZXhfYXJyYXlfc2l6ZSh2cWMsIHFwYWlyLAo+
PiArCQkJCQkJICAgICB2cWMtCj4+PiBudW1fcXVldWVfcGFpcnMpOwo+IAo+IFRoZSB2aXJ0Y2hu
bCBmaWxlIGFjdHMgYXMgYSBiaW5hcnkgaW50ZXJmYWNlIGJldHdlZW4gcGh5c2ljYWwgYW5kCj4g
dmlydHVhbCBmdW5jdGlvbnMuIFRoZXJlJ3Mgbm8gZ3VhcnVudGVlIHRoYXQgdGhlIFBGIGFuZCBW
RiB3aWxsIGJvdGgKPiBoYXZlIHRoZSBuZXdlc3QgdmVyc2lvbi4gVGh1cyBjaGFuZ2luZyB0aGlz
IHdpbGwgYnJlYWsgY29tcGF0aWJpbGl0eS4KPiBTcGVjaWZpY2FsbHksIHRoZSB3YXkgdGhlIHNp
emUgd2FzIHZhbGlkYXRlZCBmb3IgdGhpcyBvcCBjb2RlCj4gaW5jb3JyZWN0bHkgZXhwZWN0cyBh
biBleHRyYSBxdWV1ZSBwYWlyIHN0cnVjdHVyZS4gU29tZSBvdGhlcgo+IHN0cnVjdHVyZXMgaGF2
ZSBzaW1pbGFyIGxlbmd0aCBjYWxjdWxhdGlvbiBmbGF3cy4gV2UgYWdyZWUgdGhhdCBmaXhpbmcK
PiB0aGlzIGlzIGltcG9ydGFudCwgYnV0IHRoZSBmaXggbmVlZHMgdG8gYWNjb3VudCB0aGF0IG9s
ZCBkcml2ZXJzIHdpbGwKPiBzZW5kIGFuIG9mZiBieSAxIHNpemUuIAo+IAo+IFRvIHByb3Blcmx5
IGhhbmRsZSBjb21wYXRpYmlsaXR5IHdlIG5lZWQgdG8gaW50cm9kdWNlIGEgZmVhdHVyZSBmbGFn
IHRvCj4gaW5kaWNhdGUgdGhlIG5ldyBiZWhhdmlvci4gSWYgdGhlIGZlYXR1cmUgZmxhZyBpcyBu
b3Qgc2V0LCB3ZSBhY2NjZXB0Cj4gbWVzc2FnZXMgd2l0aCB0aGUgb2xkIGZvcm1hdCAod2l0aCB0
aGUgZXh0cmEgc2l6ZSkuIElmIGJvdGggdGhlIFBGIGFuZAo+IFZGIHN1cHBvcnQgdGhlIGZlYXR1
cmUgZmxhZywgd2UnbGwgdXNlIHRoZSBjb3JyZWN0IHNpemUgY2FsY3VsYXRpb25zLgo+IFdlJ3Jl
IGxvb2tpbmcgdG8gYWRkIHRoaXMgYW5kIHdvdWxkIGxpa2UgdG8gZG8gYWxsIHRoZSB2aXJ0Y2hu
bAo+IHN0cnVjdHVyZSBmaXhlcyBpbiBvbmUgc2VyaWVzLgo+IAoKT2ggT0ssIEkgc2VlLiBJbiB0
aGlzIGNhc2UsIEkgdGhpbmsgc29tZXRoaW5nIGxpa2UgdGhpcyBtaWdodCB3b3JrIGp1c3QKZmlu
ZToKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbGludXMvYzBhNzQ0ZGNhYTI5ZTk1MzdlODYwN2Fl
OWM5NjVhZDkzNjEyNGE0ZAoKV2hhdCBkbyB5b3UgdGhpbms/CgpUaGFua3MKLS0KR3VzdGF2bwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
