Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0F554FAFA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 18:21:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34E364109C;
	Fri, 17 Jun 2022 16:21:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34E364109C
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=embeddedor.com header.i=@embeddedor.com header.a=rsa-sha256 header.s=default header.b=P5j8AhGn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64MAy8jb1Jtb; Fri, 17 Jun 2022 16:21:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 131C540B0C;
	Fri, 17 Jun 2022 16:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 131C540B0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A11A31BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 16:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 774BA4245A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 16:21:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 774BA4245A
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=P5j8AhGn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4r46JmE-bh6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 16:21:08 +0000 (UTC)
X-Greylist: delayed 00:20:08 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BC9842458
Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com
 [192.185.150.114])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BC9842458
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 16:21:07 +0000 (UTC)
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id 721922A3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 11:00:59 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 2EP5oW1Y97B0O2EP5o5zNX; Fri, 17 Jun 2022 11:00:59 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XIUdXgSJfyypocXoP+z+UuLIxDgaB0TXJ/fPyZNcNIg=; b=P5j8AhGnfAdyUsMzJ6Lm721pN7
 cgeOoD/IXjKgoXRqym6UmVAhmAfZBtQ6dz+cK7ACc7nO/yZqVjH4gYR7nJJ6f6smxhTX1Ux45RyvG
 tLCXpbjCQR3BvLNu/V4D29KbYB99Qktx2XD1VdPjZVHWRuqAuw6dPsWcAvgv/U3fO7W0qqWEch/R8
 HGB3/V3QrwMGW5KcW2gRdgY092+Q9mo6JzQo8IUHUF63k5eMVyGQyOaLgVyEppEN5JhKgdS2QR/Oc
 mK3OOfxNxOkHC6gKZtPxx7bymjo7cbHTKOZ+DvljkLi7NF8ljmlra/DpT1j8OFgw0SnUyUZe96MSW
 NBIzVUnA==;
Received: from 193.254.29.93.rev.sfr.net ([93.29.254.193]:47192
 helo=[192.168.0.101])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <gustavo@embeddedor.com>) id 1o2EP4-000UST-MR;
 Fri, 17 Jun 2022 11:00:58 -0500
Message-ID: <ee2c8631-6e3f-c113-cc8e-29834bcc348e@embeddedor.com>
Date: Fri, 17 Jun 2022 18:00:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20210525230429.GA175658@embeddedor>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20210525230429.GA175658@embeddedor>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 93.29.254.193
X-Source-L: No
X-Exim-ID: 1o2EP4-000UST-MR
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 193.254.29.93.rev.sfr.net ([192.168.0.101])
 [93.29.254.193]:47192
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: Re: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array
 in struct virtchnl_iwarp_qvlist_info and iavf_qvlist_info
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
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgYWxsLAoKRnJpZW5kbHkgcGluZyAoYWZ0ZXIgbW9yZSB0aGFuIGEgeWVhciBhZnRlciBJIHNl
bnQgdGhpcyBwYXRjaCA6Tyk6CgpXaG8gY2FuIHJldmlldyBhbmQvb3IgdGFrZSB0aGlzIHBhdGNo
LCBwbGVhc2U/CgpUaGFua3MKLS0KR3VzdGF2bwoKT24gNS8yNi8yMSAwMTowNCwgR3VzdGF2byBB
LiBSLiBTaWx2YSB3cm90ZToKPiBUaGVyZSBpcyBhIHJlZ3VsYXIgbmVlZCBpbiB0aGUga2VybmVs
IHRvIHByb3ZpZGUgYSB3YXkgdG8gZGVjbGFyZSBoYXZpbmcgYQo+IGR5bmFtaWNhbGx5IHNpemVk
IHNldCBvZiB0cmFpbGluZyBlbGVtZW50cyBpbiBhIHN0cnVjdHVyZS4gS2VybmVsIGNvZGUKPiBz
aG91bGQgYWx3YXlzIHVzZSDigJxmbGV4aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVz
ZSBjYXNlcy4gVGhlIG9sZGVyCj4gc3R5bGUgb2Ygb25lLWVsZW1lbnQgb3IgemVyby1sZW5ndGgg
YXJyYXlzIHNob3VsZCBubyBsb25nZXIgYmUgdXNlZFsyXS4KPiAKPiBSZWZhY3RvciB0aGUgY29k
ZSBhY2NvcmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZsZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1
Y3QKPiB2aXJ0Y2hubF9pd2FycF9xdmxpc3RfaW5mbyBhbmQgaWF2Zl9xdmxpc3RfaW5mbyBpbnN0
ZWFkIG9mIG9uZS1lbGVtZW50IGFycmF5LAo+IGFuZCB1c2UgdGhlIGZsZXhfYXJyYXlfc2l6ZSgp
IGhlbHBlci4KPiAKPiBbMV0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRmxleGlibGVf
YXJyYXlfbWVtYmVyCj4gWzJdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAv
cHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5
cwo+IAo+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy83OQo+IFNp
Z25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4K
PiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9w
Zi5jIHwgMiArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2NsaWVu
dC5jICAgICAgfCAyICstCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
Y2xpZW50LmggICAgICB8IDIgKy0KPiAgIGluY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmggICAg
ICAgICAgICAgICAgICAgICAgIHwgOCArKysrLS0tLQo+ICAgNCBmaWxlcyBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMKPiBpbmRleCBjMGFmYWM4Y2YzM2Iu
LjZjNTVmZTljYzEzMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfdmlydGNobmxfcGYuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jCj4gQEAgLTUxNSw3ICs1MTUsNyBAQCBzdGF0aWMgaW50
IGk0MGVfY29uZmlnX2l3YXJwX3F2bGlzdChzdHJ1Y3QgaTQwZV92ZiAqdmYsCj4gICAKPiAgIAlr
ZnJlZSh2Zi0+cXZsaXN0X2luZm8pOwo+ICAgCXZmLT5xdmxpc3RfaW5mbyA9IGt6YWxsb2Moc3Ry
dWN0X3NpemUodmYtPnF2bGlzdF9pbmZvLCBxdl9pbmZvLAo+IC0JCQkJCSAgICAgIHF2bGlzdF9p
bmZvLT5udW1fdmVjdG9ycyAtIDEpLAo+ICsJCQkJCSAgICAgIHF2bGlzdF9pbmZvLT5udW1fdmVj
dG9ycyksCj4gICAJCQkJICBHRlBfS0VSTkVMKTsKPiAgIAlpZiAoIXZmLT5xdmxpc3RfaW5mbykg
ewo+ICAgCQlyZXQgPSAtRU5PTUVNOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
YXZmL2lhdmZfY2xpZW50LmMKPiBpbmRleCAwYzc3ZTQxNzE4MDguLmU3MGRhMDVlZjMyMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmMK
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmMKPiBA
QCAtNDcwLDcgKzQ3MCw3IEBAIHN0YXRpYyBpbnQgaWF2Zl9jbGllbnRfc2V0dXBfcXZsaXN0KHN0
cnVjdCBpYXZmX2luZm8gKmxkZXYsCj4gICAKPiAgIAl2X3F2bGlzdF9pbmZvID0gKHN0cnVjdCB2
aXJ0Y2hubF9pd2FycF9xdmxpc3RfaW5mbyAqKXF2bGlzdF9pbmZvOwo+ICAgCW1zZ19zaXplID0g
c3RydWN0X3NpemUodl9xdmxpc3RfaW5mbywgcXZfaW5mbywKPiAtCQkJICAgICAgIHZfcXZsaXN0
X2luZm8tPm51bV92ZWN0b3JzIC0gMSk7Cj4gKwkJCSAgICAgICB2X3F2bGlzdF9pbmZvLT5udW1f
dmVjdG9ycyk7Cj4gICAKPiAgIAlhZGFwdGVyLT5jbGllbnRfcGVuZGluZyB8PSBCSVQoVklSVENI
TkxfT1BfQ09ORklHX0lXQVJQX0lSUV9NQVApOwo+ICAgCWVyciA9IGlhdmZfYXFfc2VuZF9tc2df
dG9fcGYoJmFkYXB0ZXItPmh3LAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmZfY2xpZW50LmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZm
L2lhdmZfY2xpZW50LmgKPiBpbmRleCA5YTdjZjM5ZWE3NWEuLmIxNGE4MmI2NTYyNiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmgKPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfY2xpZW50LmgKPiBAQCAt
NTMsNyArNTMsNyBAQCBzdHJ1Y3QgaWF2Zl9xdl9pbmZvIHsKPiAgIAo+ICAgc3RydWN0IGlhdmZf
cXZsaXN0X2luZm8gewo+ICAgCXUzMiBudW1fdmVjdG9yczsKPiAtCXN0cnVjdCBpYXZmX3F2X2lu
Zm8gcXZfaW5mb1sxXTsKPiArCXN0cnVjdCBpYXZmX3F2X2luZm8gcXZfaW5mb1tdOwo+ICAgfTsK
PiAgIAo+ICAgI2RlZmluZSBJQVZGX0NMSUVOVF9NU0lYX0FMTCAweEZGRkZGRkZGCj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmggYi9pbmNsdWRlL2xpbnV4L2F2Zi92
aXJ0Y2hubC5oCj4gaW5kZXggODVhNjg3YmM2MDk2Li4xNWI5ODI5MTEzMjEgMTAwNjQ0Cj4gLS0t
IGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvYXZm
L3ZpcnRjaG5sLmgKPiBAQCAtNjU4LDEwICs2NTgsMTAgQEAgVklSVENITkxfQ0hFQ0tfU1RSVUNU
X0xFTigxMiwgdmlydGNobmxfaXdhcnBfcXZfaW5mbyk7Cj4gICAKPiAgIHN0cnVjdCB2aXJ0Y2hu
bF9pd2FycF9xdmxpc3RfaW5mbyB7Cj4gICAJdTMyIG51bV92ZWN0b3JzOwo+IC0Jc3RydWN0IHZp
cnRjaG5sX2l3YXJwX3F2X2luZm8gcXZfaW5mb1sxXTsKPiArCXN0cnVjdCB2aXJ0Y2hubF9pd2Fy
cF9xdl9pbmZvIHF2X2luZm9bXTsKPiAgIH07Cj4gICAKPiAtVklSVENITkxfQ0hFQ0tfU1RSVUNU
X0xFTigxNiwgdmlydGNobmxfaXdhcnBfcXZsaXN0X2luZm8pOwo+ICtWSVJUQ0hOTF9DSEVDS19T
VFJVQ1RfTEVOKDQsIHZpcnRjaG5sX2l3YXJwX3F2bGlzdF9pbmZvKTsKPiAgIAo+ICAgLyogVkYg
cmVzZXQgc3RhdGVzIC0gdGhlc2UgYXJlIHdyaXR0ZW4gaW50byB0aGUgUlNUQVQgcmVnaXN0ZXI6
Cj4gICAgKiBWRkdFTl9SU1RBVCBvbiB0aGUgVkYKPiBAQCAtMTA2OSw4ICsxMDY5LDggQEAgdmly
dGNobmxfdmNfdmFsaWRhdGVfdmZfbXNnKHN0cnVjdCB2aXJ0Y2hubF92ZXJzaW9uX2luZm8gKnZl
ciwgdTMyIHZfb3Bjb2RlLAo+ICAgCQkJCWVycl9tc2dfZm9ybWF0ID0gdHJ1ZTsKPiAgIAkJCQli
cmVhazsKPiAgIAkJCX0KPiAtCQkJdmFsaWRfbGVuICs9ICgocXYtPm51bV92ZWN0b3JzIC0gMSkg
Kgo+IC0JCQkJc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hubF9pd2FycF9xdl9pbmZvKSk7Cj4gKwkJCXZh
bGlkX2xlbiArPSBmbGV4X2FycmF5X3NpemUocXYsIHF2X2luZm8sCj4gKwkJCQkJCSAgICAgcXYt
Pm51bV92ZWN0b3JzKTsKPiAgIAkJfQo+ICAgCQlicmVhazsKPiAgIAljYXNlIFZJUlRDSE5MX09Q
X0NPTkZJR19SU1NfS0VZOgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
