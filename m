Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B0739229B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 00:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37CD882F98;
	Wed, 26 May 2021 22:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kG86BqV1fiAc; Wed, 26 May 2021 22:20:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 204C082F49;
	Wed, 26 May 2021 22:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E78541BF859
 for <intel-wired-lan@osuosl.org>; Wed, 26 May 2021 22:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D463440153
 for <intel-wired-lan@osuosl.org>; Wed, 26 May 2021 22:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=embeddedor.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ex8hQBr6WXmL for <intel-wired-lan@osuosl.org>;
 Wed, 26 May 2021 22:20:06 +0000 (UTC)
X-Greylist: delayed 00:46:27 by SQLgrey-1.8.0
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
 [192.185.51.196])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7ECE4401EA
 for <intel-wired-lan@osuosl.org>; Wed, 26 May 2021 22:20:06 +0000 (UTC)
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id E9A90177E8
 for <intel-wired-lan@osuosl.org>; Wed, 26 May 2021 16:33:34 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id m19ilgLst8uM0m19ilsGcQ; Wed, 26 May 2021 16:33:34 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dJfv7ZpJnqOPXTb1x0XGw0l5G1Ahbxj7Xd1oU46gW94=; b=jSmd4P6aumhTyKM6duiH93mdWz
 vIFp6vsltMlvkI63PPttimKExks9h01cNkIKbKp6niYnc1M+rhZPJRw6v3X/8XTnnRoFat7Uv8hGP
 f9tWVm7WF1Nsyj++wNq/ux7RRuDUk3frEULJ8Q8IMpzzYPBOpbUs8d4BvCINnIC/xBFWC6L2BkcXT
 ufEZ30i+0WUE8OOFdqykzZ7J7jLbLIb+VTr26lY6VWWuetvi/ft0lds1gUYEXUe0uZH7b7c6lfZ2o
 JPj305aW6YxVQDVeAoB777rmFHVu8LHzfhnDHsL3l4zX02S2PlGB0YE19pbvYrMbEaLyyge2TDxMa
 plKY7H/Q==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:46822
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <gustavo@embeddedor.com>) id 1lm19h-003f7T-Uq
 for intel-wired-lan@osuosl.org; Wed, 26 May 2021 16:33:33 -0500
To: intel-wired-lan@osuosl.org
References: <20210525230038.GA175516@embeddedor>
 <bf46b428deef4e9e89b0ea1704b1f0e5@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <b6ad65c6-da10-fd5d-e7ec-add0c607af26@embeddedor.com>
Date: Wed, 26 May 2021 16:34:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <bf46b428deef4e9e89b0ea1704b1f0e5@intel.com>
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
X-Exim-ID: 1lm19h-003f7T-Uq
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:46822
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 1
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: Re: [Intel-wired-lan] [PATCH][next] i40e: Replace one-element array
 with flexible-array member
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

CgpPbiA1LzI2LzIxIDE2OjI5LCBTYWxlZW0sIFNoaXJheiB3cm90ZToKPj4gU3ViamVjdDogW1BB
VENIXVtuZXh0XSBpNDBlOiBSZXBsYWNlIG9uZS1lbGVtZW50IGFycmF5IHdpdGggZmxleGlibGUt
YXJyYXkgbWVtYmVyCj4+Cj4+IFRoZXJlIGlzIGEgcmVndWxhciBuZWVkIGluIHRoZSBrZXJuZWwg
dG8gcHJvdmlkZSBhIHdheSB0byBkZWNsYXJlIGhhdmluZyBhCj4+IGR5bmFtaWNhbGx5IHNpemVk
IHNldCBvZiB0cmFpbGluZyBlbGVtZW50cyBpbiBhIHN0cnVjdHVyZS4gS2VybmVsIGNvZGUgc2hv
dWxkIGFsd2F5cwo+PiB1c2Ug4oCcZmxleGlibGUgYXJyYXkgbWVtYmVyc+KAnVsxXSBmb3IgdGhl
c2UgY2FzZXMuIFRoZSBvbGRlciBzdHlsZSBvZiBvbmUtZWxlbWVudCBvcgo+PiB6ZXJvLWxlbmd0
aCBhcnJheXMgc2hvdWxkIG5vIGxvbmdlciBiZSB1c2VkWzJdLgo+Pgo+PiBSZWZhY3RvciB0aGUg
Y29kZSBhY2NvcmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZsZXhpYmxlLWFycmF5IG1lbWJlciBpbiBz
dHJ1Y3QKPj4gaTQwZV9xdmxpc3RfaW5mbyBpbnN0ZWFkIG9mIG9uZS1lbGVtZW50IGFycmF5LCBh
bmQgdXNlIHRoZSBzdHJ1Y3Rfc2l6ZSgpIGhlbHBlci4KPj4KPj4gWzFdIGh0dHBzOi8vZW4ud2lr
aXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgo+PiBbMl0gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvaHRtbC92NS4xMC9wcm9jZXNzL2RlcHJlY2F0ZWQuaHRtbCN6ZXJvLWxl
bmd0aC0KPj4gYW5kLW9uZS1lbGVtZW50LWFycmF5cwo+Pgo+PiBMaW5rOiBodHRwczovL2dpdGh1
Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvNzkKPj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBS
LiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgo+IAo+IFRoaXMgbG9va3Mgb2sgdG8gbWUu
Cj4gQWNrZWQtYnk6IFNoaXJheiBTYWxlZW0gPHNoaXJhei5zYWxlZW1AaW50ZWwuY29tPgo+IAo+
IEl0IHNlZW1zIHdlIHNob3VsZCBhZGQgdGhpcyB0byB0aGUgbmV3IGlyZG1hIGRyaXZlciBzdWJt
aXNzaW9uIGFzIHdlbGwgd2hpY2ggcmVwbGFjZXMgaTQwaXcuCj4gSSB3aWxsIGZvbGQgaXQgaW50
byB2NyBvZiB0aGUgcmRtYSBwb3J0aW9uIG9mIHRoZSBzZXJpZXMKPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1yZG1hLzIwMjEwNTIwMjAwMzI2LkdYMTA5Njk0MEB6aWVwZS5jYS8KCk9L
LiBKdXN0IHBsZWFzZSwgd2hlbiB5b3UgZm9sZCBpdCwgYWRkIG15IFNpZ25lZC1vZmYtYnkgdGFn
IGxpa2UgdGhpczoKCltmbGV4aWJsZSBhcnJheSB0cmFuc2Zvcm1hdGlvbl0KU2lnbmVkLW9mZi1i
eTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgoKVGhhbmtzCi0t
Ckd1c3Rhdm8KCj4gCj4gQWRkaXRpb25hbGx5IHdlIHdpbGwgYWRkIHRoaXMgcGF0Y2ggd2hlbiB3
ZSByZXNlbmQgdGhpcyBQUiBvbiBpd2wtbmV4dC4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1yZG1hLzYyNTU1YzZkZTY0MWUxMGNiNDE2OTY1MzczMTM4OWE1MWQwODYzNDUuY2FtZWxA
aW50ZWwuY29tLwo+IAo+IAo+PiAtLS0KPj4gIGRyaXZlcnMvaW5maW5pYmFuZC9ody9pNDBpdy9p
NDBpd19tYWluLmMgICAgICB8IDUgKystLS0KPj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9jbGllbnQuYyB8IDIgKy0KPj4gIGluY2x1ZGUvbGludXgvbmV0L2ludGVsL2k0
MGVfY2xpZW50LmggICAgICAgICB8IDIgKy0KPj4gIDMgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmli
YW5kL2h3L2k0MGl3L2k0MGl3X21haW4uYwo+PiBiL2RyaXZlcnMvaW5maW5pYmFuZC9ody9pNDBp
dy9pNDBpd19tYWluLmMKPj4gaW5kZXggYjQ5NmYzMGNlMDY2Li4zNjRmNjljZDYyMGYgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvaW5maW5pYmFuZC9ody9pNDBpdy9pNDBpd19tYWluLmMKPj4gKysr
IGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L2k0MGl3L2k0MGl3X21haW4uYwo+PiBAQCAtMTQyMyw3
ICsxNDIzLDcgQEAgc3RhdGljIGVudW0gaTQwaXdfc3RhdHVzX2NvZGUKPj4gaTQwaXdfc2F2ZV9t
c2l4X2luZm8oc3RydWN0IGk0MGl3X2RldmljZSAqaXdkZXYsCj4+ICAJc3RydWN0IGk0MGVfcXZf
aW5mbyAqaXdfcXZpbmZvOwo+PiAgCXUzMiBjZXFfaWR4Owo+PiAgCXUzMiBpOwo+PiAtCXUzMiBz
aXplOwo+PiArCXNpemVfdCBzaXplOwo+Pgo+PiAgCWlmICghbGRldi0+bXNpeF9jb3VudCkgewo+
PiAgCQlpNDBpd19wcl9lcnIoIk5vIE1TSS1YIHZlY3RvcnNcbiIpOwo+PiBAQCAtMTQzMyw4ICsx
NDMzLDcgQEAgc3RhdGljIGVudW0gaTQwaXdfc3RhdHVzX2NvZGUKPj4gaTQwaXdfc2F2ZV9tc2l4
X2luZm8oc3RydWN0IGk0MGl3X2RldmljZSAqaXdkZXYsCj4+ICAJaXdkZXYtPm1zaXhfY291bnQg
PSBsZGV2LT5tc2l4X2NvdW50Owo+Pgo+PiAgCXNpemUgPSBzaXplb2Yoc3RydWN0IGk0MGl3X21z
aXhfdmVjdG9yKSAqIGl3ZGV2LT5tc2l4X2NvdW50Owo+PiAtCXNpemUgKz0gc2l6ZW9mKHN0cnVj
dCBpNDBlX3F2bGlzdF9pbmZvKTsKPj4gLQlzaXplICs9ICBzaXplb2Yoc3RydWN0IGk0MGVfcXZf
aW5mbykgKiBpd2Rldi0+bXNpeF9jb3VudCAtIDE7Cj4+ICsJc2l6ZSArPSBzdHJ1Y3Rfc2l6ZShp
d19xdmxpc3QsIHF2X2luZm8sIGl3ZGV2LT5tc2l4X2NvdW50KTsKPj4gIAlpd2Rldi0+aXdfbXNp
eHRibCA9IGt6YWxsb2Moc2l6ZSwgR0ZQX0tFUk5FTCk7Cj4+Cj4+ICAJaWYgKCFpd2Rldi0+aXdf
bXNpeHRibCkKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9jbGllbnQuYwo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9j
bGllbnQuYwo+PiBpbmRleCAzMmYzZmFjYmVkMWEuLjYzZWFiMTRhMjZkZiAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NsaWVudC5jCj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jbGllbnQuYwo+PiBAQCAtNTc5
LDcgKzU3OSw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jbGllbnRfc2V0dXBfcXZsaXN0KHN0cnVjdCBp
NDBlX2luZm8gKmxkZXYsCj4+ICAJdTMyIHZfaWR4LCBpLCByZWdfaWR4LCByZWc7Cj4+Cj4+ICAJ
bGRldi0+cXZsaXN0X2luZm8gPSBremFsbG9jKHN0cnVjdF9zaXplKGxkZXYtPnF2bGlzdF9pbmZv
LCBxdl9pbmZvLAo+PiAtCQkJCSAgICBxdmxpc3RfaW5mby0+bnVtX3ZlY3RvcnMgLSAxKSwgR0ZQ
X0tFUk5FTCk7Cj4+ICsJCQkJICAgIHF2bGlzdF9pbmZvLT5udW1fdmVjdG9ycyksIEdGUF9LRVJO
RUwpOwo+PiAgCWlmICghbGRldi0+cXZsaXN0X2luZm8pCj4+ICAJCXJldHVybiAtRU5PTUVNOwo+
PiAgCWxkZXYtPnF2bGlzdF9pbmZvLT5udW1fdmVjdG9ycyA9IHF2bGlzdF9pbmZvLT5udW1fdmVj
dG9yczsgZGlmZiAtLWdpdAo+PiBhL2luY2x1ZGUvbGludXgvbmV0L2ludGVsL2k0MGVfY2xpZW50
LmggYi9pbmNsdWRlL2xpbnV4L25ldC9pbnRlbC9pNDBlX2NsaWVudC5oCj4+IGluZGV4IGY0MTM4
N2E4OTY5Zi4uZmQ3YmM4NjBhMjQxIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L25ldC9p
bnRlbC9pNDBlX2NsaWVudC5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvbmV0L2ludGVsL2k0MGVf
Y2xpZW50LmgKPj4gQEAgLTQ4LDcgKzQ4LDcgQEAgc3RydWN0IGk0MGVfcXZfaW5mbyB7Cj4+Cj4+
ICBzdHJ1Y3QgaTQwZV9xdmxpc3RfaW5mbyB7Cj4+ICAJdTMyIG51bV92ZWN0b3JzOwo+PiAtCXN0
cnVjdCBpNDBlX3F2X2luZm8gcXZfaW5mb1sxXTsKPj4gKwlzdHJ1Y3QgaTQwZV9xdl9pbmZvIHF2
X2luZm9bXTsKPj4gIH07Cj4+Cj4+Cj4+IC0tCj4+IDIuMjcuMAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
