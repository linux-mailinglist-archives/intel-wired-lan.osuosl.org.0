Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3BD415970
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 09:44:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2719F40711;
	Thu, 23 Sep 2021 07:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55nlIx8RR9bd; Thu, 23 Sep 2021 07:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3CB9401F7;
	Thu, 23 Sep 2021 07:44:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8B51BF342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 07:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 450A0401F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 07:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9TaBiZCWf9x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 07:44:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D76440151
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 07:44:44 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae8f3.dynamic.kabel-deutschland.de
 [95.90.232.243])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A969D61E64761;
 Thu, 23 Sep 2021 09:44:40 +0200 (CEST)
To: Michal Maloszewski <michal.maloszewski@intel.com>
References: <20210923071452.21975-1-michal.maloszewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <5437f421-e935-6484-4f8b-ed6751e9bae1@molgen.mpg.de>
Date: Thu, 23 Sep 2021 09:44:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210923071452.21975-1-michal.maloszewski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf-linux: Fix reporting when
 setting descriptor count
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

RGVhciBNaWNoYWwsCgoKQW0gMjMuMDkuMjEgdW0gMDk6MTQgc2NocmllYiBNaWNoYWwgTWFsb3N6
ZXdza2k6Cj4gaWF2Zl9zZXRfcmluZ3BhcmFtcyBkb2Vzbid0IGNvbW11bmljYXRlIHRvIHRoZSB1
c2VyIHRoYXQKPiAKPiAxLiBUaGUgdXNlciByZXF1ZXN0ZWQgZGVzY3JpcHRvciBjb3VudCBpcyBv
dXQgb2YgcmFuZ2UuIEluc3RlYWQgaXQKPiAgICAganVzdCBxdWlldGx5IHNldHMgZGVzY3JpcHRv
cnMgdG8gdGhlICJjbGFtcGVkIiB2YWx1ZSBhbmQgY2FsbHMgaXQKPiAgICAgZG9uZS4gVGhpcyBt
YWtlcyBpdCBsb29rIGFuIGludmFsaWQgdmFsdWUgd2FzIHN1Y2Nlc3NmdWxseSBzZXQgYXMKPiAg
ICAgdGhlIGRlc2NyaXB0b3IgY291bnQgd2hlbiB0aGlzIGlzbid0IGFjdHVhbGx5IHRydWUuCj4g
Cj4gMi4gVGhlIHVzZXIgcHJvdmlkZWQgZGVzY3JpcHRvciBjb3VudCBuZWVkcyB0byBiZSBpbmZs
YXRlZCBmb3IgYWxpZ25tZW50Cj4gICAgIHJlYXNvbnMuCj4gCj4gVGhpcyBiZWhhdmlvciBpcyBj
b25mdXNpbmcuIFRoZSBpY2UgZHJpdmVyIGhhcyBhbHJlYWR5IGFkZHJlc3NlZCB0aGlzCgpQbGVh
c2UgcmVmZXJlbmNlIHRoZSBjb21taXQuCgo+IGJ5IHJlamVjdGluZyBpbnZhbGlkIHZhbHVlcyBm
b3IgYW5kIG1lc3NhZ2luZyBmb3IgYWxpZ25tZW50IGFkanVzdG1lbnRzLgoKVmFsdWVzIGZvciB3
aGF0PwoKPiBEbyB0aGUgc2FtZSB0aGluZyBoZXJlLgoK4oCmIGJ5IGFkZGluZyB0aGUgZXJyb3Ig
YW5kIGluZm8gbWVzc2FnZXMuCgo+IFRpdGxlOiBpYXZmLWxpbnV4OiBGaXggcmVwb3J0aW5nIHdo
ZW4gc2V0dGluZyBkZXNjcmlwdG9yIGNvdW50CgpUaGlzIHRhZyBpcyBub3QgbmVlZGVkLCBpcyBp
dD8KCj4gRml4ZXM6IDEyOWNmODllNTg1NiAoImlhdmY6IHJlbmFtZSBmdW5jdGlvbnMgYW5kIHN0
cnVjdHMgdG8gbmV3IG5hbWUiKQo+IFNpZ25lZC1vZmYtYnk6IEFuaXJ1ZGggVmVua2F0YXJhbWFu
YW4gPGFuaXJ1ZGgudmVua2F0YXJhbWFuYW5AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBNYWxvc3pld3NraSA8bWljaGFsLm1hbG9zemV3c2tpQGludGVsLmNvbT4KPiAtLS0KPiAg
IC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYyAgICB8IDQzICsrKysr
KysrKysrKysrLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCAxMSBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl9ldGh0b29sLmMKPiBpbmRleCA3Y2JlNTliZWUuLmNiZmM4ZDA3YSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jCj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYwo+IEBAIC02MTIsMjMg
KzYxMiw0NCBAQCBzdGF0aWMgaW50IGlhdmZfc2V0X3JpbmdwYXJhbShzdHJ1Y3QgbmV0X2Rldmlj
ZSAqbmV0ZGV2LAo+ICAgCWlmICgocmluZy0+cnhfbWluaV9wZW5kaW5nKSB8fCAocmluZy0+cnhf
anVtYm9fcGVuZGluZykpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCj4gLQluZXdfdHhfY291
bnQgPSBjbGFtcF90KHUzMiwgcmluZy0+dHhfcGVuZGluZywKPiAtCQkJICAgICAgIElBVkZfTUlO
X1RYRCwKPiAtCQkJICAgICAgIElBVkZfTUFYX1RYRCk7Cj4gLQluZXdfdHhfY291bnQgPSBBTElH
TihuZXdfdHhfY291bnQsIElBVkZfUkVRX0RFU0NSSVBUT1JfTVVMVElQTEUpOwo+ICsJaWYgKHJp
bmctPnR4X3BlbmRpbmcgPiBJQVZGX01BWF9UWEQgfHwKPiArCSAgICByaW5nLT50eF9wZW5kaW5n
IDwgSUFWRl9NSU5fVFhEIHx8Cj4gKwkgICAgcmluZy0+cnhfcGVuZGluZyA+IElBVkZfTUFYX1JY
RCB8fAo+ICsJICAgIHJpbmctPnJ4X3BlbmRpbmcgPCBJQVZGX01JTl9SWEQpIHsKPiArCQkgIG5l
dGRldl9lcnIobmV0ZGV2LCAiRGVzY3JpcHRvcnMgcmVxdWVzdGVkIChUeDogJWQgLyBSeDogJWQp
IG91dCBvZiByYW5nZSBbJWQtJWRdIChpbmNyZW1lbnQgJWQpXG4iLAo+ICsJCQkgICAgIHJpbmct
PnR4X3BlbmRpbmcsIHJpbmctPnJ4X3BlbmRpbmcsIElBVkZfTUlOX1RYRCwKPiArCQkJICAgICBJ
QVZGX01BWF9SWEQsIElBVkZfUkVRX0RFU0NSSVBUT1JfTVVMVElQTEUpOwo+ICsJCSAgcmV0dXJu
IC1FSU5WQUw7Cj4gKwl9Cj4gKwo+ICsJbmV3X3R4X2NvdW50ID0gQUxJR04ocmluZy0+dHhfcGVu
ZGluZywgSUFWRl9SRVFfREVTQ1JJUFRPUl9NVUxUSVBMRSk7Cj4gKwlpZiAobmV3X3R4X2NvdW50
ICE9IHJpbmctPnR4X3BlbmRpbmcpCj4gKwkJbmV0ZGV2X2luZm8obmV0ZGV2LCAiUmVxdWVzdGVk
IFR4IGRlc2NyaXB0b3IgY291bnQgcm91bmRlZCB1cCB0byAlZFxuIiwKPiArCQkJICAgIG5ld190
eF9jb3VudCk7Cj4gICAKPiAtCW5ld19yeF9jb3VudCA9IGNsYW1wX3QodTMyLCByaW5nLT5yeF9w
ZW5kaW5nLAo+IC0JCQkgICAgICAgSUFWRl9NSU5fUlhELAo+IC0JCQkgICAgICAgSUFWRl9NQVhf
UlhEKTsKPiAtCW5ld19yeF9jb3VudCA9IEFMSUdOKG5ld19yeF9jb3VudCwgSUFWRl9SRVFfREVT
Q1JJUFRPUl9NVUxUSVBMRSk7Cj4gKwluZXdfcnhfY291bnQgPSBBTElHTihyaW5nLT5yeF9wZW5k
aW5nLCBJQVZGX1JFUV9ERVNDUklQVE9SX01VTFRJUExFKTsKPiArCWlmIChuZXdfcnhfY291bnQg
IT0gcmluZy0+cnhfcGVuZGluZykKPiArCQluZXRkZXZfaW5mbyhuZXRkZXYsICJSZXF1ZXN0ZWQg
UnggZGVzY3JpcHRvciBjb3VudCByb3VuZGVkIHVwIHRvICVkXG4iLAo+ICsJCQkgICAgbmV3X3J4
X2NvdW50KTsKPiAgIAo+ICAgCS8qIGlmIG5vdGhpbmcgdG8gZG8gcmV0dXJuIHN1Y2Nlc3MgKi8K
PiAgIAlpZiAoKG5ld190eF9jb3VudCA9PSBhZGFwdGVyLT50eF9kZXNjX2NvdW50KSAmJgo+IC0J
ICAgIChuZXdfcnhfY291bnQgPT0gYWRhcHRlci0+cnhfZGVzY19jb3VudCkpCj4gKwkgICAgKG5l
d19yeF9jb3VudCA9PSBhZGFwdGVyLT5yeF9kZXNjX2NvdW50KSkgewo+ICsJCW5ldGRldl9kYmco
bmV0ZGV2LCAiTm90aGluZyB0byBjaGFuZ2UsIGRlc2NyaXB0b3IgY291bnQgaXMgc2FtZSBhcyBy
ZXF1ZXN0ZWRcbiIpOwo+ICAgCQlyZXR1cm4gMDsKPiArCX0KPiAgIAo+IC0JYWRhcHRlci0+dHhf
ZGVzY19jb3VudCA9IG5ld190eF9jb3VudDsKPiAtCWFkYXB0ZXItPnJ4X2Rlc2NfY291bnQgPSBu
ZXdfcnhfY291bnQ7Cj4gKwlpZiAobmV3X3R4X2NvdW50ICE9IGFkYXB0ZXItPnR4X2Rlc2NfY291
bnQpIHsKPiArCQluZXRkZXZfaW5mbyhuZXRkZXYsICJDaGFuZ2luZyBUeCBkZXNjcmlwdG9yIGNv
dW50IGZyb20gJWQgdG8gJWRcbiIsCj4gKwkJCSAgICBhZGFwdGVyLT50eF9kZXNjX2NvdW50LCBu
ZXdfdHhfY291bnQpOwo+ICsJCWFkYXB0ZXItPnR4X2Rlc2NfY291bnQgPSBuZXdfdHhfY291bnQ7
Cj4gKwl9Cj4gKwo+ICsJaWYgKG5ld19yeF9jb3VudCAhPSBhZGFwdGVyLT5yeF9kZXNjX2NvdW50
KSB7Cj4gKwkJbmV0ZGV2X2luZm8obmV0ZGV2LCAiQ2hhbmdpbmcgUnggZGVzY3JpcHRvciBjb3Vu
dCBmcm9tICVkIHRvICVkXG4iLAo+ICsJCQkgICAgYWRhcHRlci0+cnhfZGVzY19jb3VudCwgbmV3
X3J4X2NvdW50KTsKPiArCQlhZGFwdGVyLT5yeF9kZXNjX2NvdW50ID0gbmV3X3J4X2NvdW50Owo+
ICsJfQo+ICAgCj4gICAJaWYgKG5ldGlmX3J1bm5pbmcobmV0ZGV2KSkgewo+ICAgCQlhZGFwdGVy
LT5mbGFncyB8PSBJQVZGX0ZMQUdfUkVTRVRfTkVFREVEOwo+IApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
