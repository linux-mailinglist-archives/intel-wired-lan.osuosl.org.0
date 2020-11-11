Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBD92AEED0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 11:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8269862FC;
	Wed, 11 Nov 2020 10:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QOFRPy12kvbc; Wed, 11 Nov 2020 10:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E57386396;
	Wed, 11 Nov 2020 10:35:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEADE1BF576
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 10:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B34BF27E4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 10:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lntIz3nQMEg4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 10:35:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id AAFB9228EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 10:35:48 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af465.dynamic.kabel-deutschland.de
 [95.90.244.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2F28120646224;
 Wed, 11 Nov 2020 11:35:45 +0100 (CET)
To: Sven Auhagen <sven.auhagen@voleatech.de>
References: <20201019080553.24353-1-sven.auhagen@voleatech.de>
 <20201019080553.24353-4-sven.auhagen@voleatech.de>
 <fc1f6aad-b587-25e2-0632-ea43f1032aad@molgen.mpg.de>
 <20201111101050.ffvl7cy34nkin27d@SvensMacBookAir.hq.voleatech.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <f54c2612-0d42-0422-3b0c-ecfdadd31dce@molgen.mpg.de>
Date: Wed, 11 Nov 2020 11:35:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <20201111101050.ffvl7cy34nkin27d@SvensMacBookAir.hq.voleatech.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v3 3/6] igb: XDP extack message on
 error
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
Cc: nhorman@redhat.com, netdev@vger.kernel.org, brouer@redhat.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 sassmann@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTdmVuLAoKCkFtIDExLjExLjIwIHVtIDExOjEwIHNjaHJpZWIgU3ZlbiBBdWhhZ2VuOgo+
IE9uIFdlZCwgTm92IDExLCAyMDIwIGF0IDA4OjExOjQ2QU0gKzAxMDAsIFBhdWwgTWVuemVsIHdy
b3RlOgoKPj4gQW0gMTkuMTAuMjAgdW0gMTA6MDUgc2NocmllYiBzdmVuLmF1aGFnZW5Adm9sZWF0
ZWNoLmRlOgo+Pj4gRnJvbTogU3ZlbiBBdWhhZ2VuIDxzdmVuLmF1aGFnZW5Adm9sZWF0ZWNoLmRl
Pgo+Pj4KPj4+IEFkZCBhbiBleHRhY2sgZXJyb3IgbWVzc2FnZSB3aGVuIHRoZSBSWCBidWZmZXIg
c2l6ZSBpcyB0b28gc21hbGwKPj4+IGZvciB0aGUgZnJhbWUgc2l6ZS4KPj4+Cj4+PiBTdWdnZXN0
ZWQtYnk6IE1hY2llaiBGaWphbGtvd3NraSA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4K
Pj4+IFJldmlld2VkLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2llai5maWphbGtvd3NraUBp
bnRlbC5jb20+Cj4+PiBBY2tlZC1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxr
b3dza2lAaW50ZWwuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogU3ZlbiBBdWhhZ2VuIDxzdmVuLmF1
aGFnZW5Adm9sZWF0ZWNoLmRlPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvaWdiX21haW4uYyB8IDEyICsrKysrKystLS0tLQo+Pj4gICAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+Pj4gaW5kZXggMGE5MTk4MDM3Yjk4Li4wODhm
OWRkYjAwOTMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Iv
aWdiX21haW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9t
YWluLmMKPj4+IEBAIC0yODI0LDIwICsyODI0LDIyIEBAIHN0YXRpYyBpbnQgaWdiX3NldHVwX3Rj
KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIGVudW0gdGNfc2V0dXBfdHlwZSB0eXBlLAo+Pj4gICAg
CX0KPj4+ICAgIH0KPj4+IC1zdGF0aWMgaW50IGlnYl94ZHBfc2V0dXAoc3RydWN0IG5ldF9kZXZp
Y2UgKmRldiwgc3RydWN0IGJwZl9wcm9nICpwcm9nKQo+Pj4gK3N0YXRpYyBpbnQgaWdiX3hkcF9z
ZXR1cChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCBzdHJ1Y3QgbmV0ZGV2X2JwZiAqYnBmKQo+Pj4g
ICAgewo+Pj4gICAgCWludCBpLCBmcmFtZV9zaXplID0gZGV2LT5tdHUgKyBJR0JfRVRIX1BLVF9I
RFJfUEFEOwo+Pj4gICAgCXN0cnVjdCBpZ2JfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2
KGRldik7Cj4+PiArCXN0cnVjdCBicGZfcHJvZyAqcHJvZyA9IGJwZi0+cHJvZywgKm9sZF9wcm9n
Owo+Pj4gICAgCWJvb2wgcnVubmluZyA9IG5ldGlmX3J1bm5pbmcoZGV2KTsKPj4+IC0Jc3RydWN0
IGJwZl9wcm9nICpvbGRfcHJvZzsKPj4+ICAgIAlib29sIG5lZWRfcmVzZXQ7Cj4+PiAgICAJLyog
dmVyaWZ5IGlnYiByaW5nIGF0dHJpYnV0ZXMgYXJlIHN1ZmZpY2llbnQgZm9yIFhEUCAqLwo+Pj4g
ICAgCWZvciAoaSA9IDA7IGkgPCBhZGFwdGVyLT5udW1fcnhfcXVldWVzOyBpKyspIHsKPj4+ICAg
IAkJc3RydWN0IGlnYl9yaW5nICpyaW5nID0gYWRhcHRlci0+cnhfcmluZ1tpXTsKPj4+IC0JCWlm
IChmcmFtZV9zaXplID4gaWdiX3J4X2J1ZnN6KHJpbmcpKQo+Pj4gKwkJaWYgKGZyYW1lX3NpemUg
PiBpZ2JfcnhfYnVmc3oocmluZykpIHsKPj4+ICsJCQlOTF9TRVRfRVJSX01TR19NT0QoYnBmLT5l
eHRhY2ssICJUaGUgUlggYnVmZmVyIHNpemUgaXMgdG9vIHNtYWxsIGZvciB0aGUgZnJhbWUgc2l6
ZSIpOwoKPiBqdXN0IHRvIHZlcmlmeSwgTkxfU0VUX0VSUl9NU0dfTU9EIGRvZXMgbm90IHRha2Ug
YW55IHZhcmlhYmxlIGFyZ3VtZW50cwo+IGZvciB0aGUgdGV4dCB0byBwcmludC4KCkFoLCBKZXNw
ZXIgcmVtYXJrZWQgdGhhdCB0b28uIENhbiB0aGUgbWFjcm8gYmUgZXh0ZW5kZWQ/Cgo+IFdoYXQg
c2VlbXMgdG8gYmUgdGhlIGNvbW1vbiBwcmFjdGljZSBpcyB0byBhZGQgYSBzZWNvbmQgbG9nIGxp
bmUKPiB3aXRoIG5ldGRldl93YXJuIHRvIHByaW50IG91dCB0aGUgc2l6ZXMuCj4gCj4gSXMgdGhh
dCB3aGF0IHlvdSBhcmUgbG9va2luZyBmb3I/CgpZZXMsIHRob3VnaCBpdCBzb3VuZHMgdG8gY3Vt
YmVyc29tZS4gU28sIHllcywgdGhhdOKAmWQgYmUgZ3JlYXQgZm9yIG1lLCAKYnV0IHVwIHRvIHlv
dSwgaWYgeW91IHRoaW5rIGl04oCZcyB1c2VmdWwuCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKCj4+
IENvdWxkIHlvdSBwbGVhc2UgYWxzbyBhZGQgYm90aCBzaXplIHZhbHVlcyB0byB0aGUgZXJyb3Ig
bWVzc2FnZT8KPj4KPj4+ICAgIAkJCXJldHVybiAtRUlOVkFMOwo+Pj4gKwkJfQo+Pj4gICAgCX0K
Pj4+ICAgIAlvbGRfcHJvZyA9IHhjaGcoJmFkYXB0ZXItPnhkcF9wcm9nLCBwcm9nKTsKPj4+IEBA
IC0yODY5LDcgKzI4NzEsNyBAQCBzdGF0aWMgaW50IGlnYl94ZHAoc3RydWN0IG5ldF9kZXZpY2Ug
KmRldiwgc3RydWN0IG5ldGRldl9icGYgKnhkcCkKPj4+ICAgIHsKPj4+ICAgIAlzd2l0Y2ggKHhk
cC0+Y29tbWFuZCkgewo+Pj4gICAgCWNhc2UgWERQX1NFVFVQX1BST0c6Cj4+PiAtCQlyZXR1cm4g
aWdiX3hkcF9zZXR1cChkZXYsIHhkcC0+cHJvZyk7Cj4+PiArCQlyZXR1cm4gaWdiX3hkcF9zZXR1
cChkZXYsIHhkcCk7Cj4+PiAgICAJZGVmYXVsdDoKPj4+ICAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+
PiAgICAJfQo+Pj4gQEAgLTY0OTksNyArNjUwMSw3IEBAIHN0YXRpYyBpbnQgaWdiX2NoYW5nZV9t
dHUoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgaW50IG5ld19tdHUpCj4+PiAgICAJCQlzdHJ1
Y3QgaWdiX3JpbmcgKnJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW2ldOwo+Pj4gICAgCQkJaWYgKG1h
eF9mcmFtZSA+IGlnYl9yeF9idWZzeihyaW5nKSkgewo+Pj4gLQkJCQluZXRkZXZfd2FybihhZGFw
dGVyLT5uZXRkZXYsICJSZXF1ZXN0ZWQgTVRVIHNpemUgaXMgbm90IHN1cHBvcnRlZCB3aXRoIFhE
UFxuIik7Cj4+PiArCQkJCW5ldGRldl93YXJuKGFkYXB0ZXItPm5ldGRldiwgIlJlcXVlc3RlZCBN
VFUgc2l6ZSBpcyBub3Qgc3VwcG9ydGVkIHdpdGggWERQLiBNYXggZnJhbWUgc2l6ZSBpcyAlZFxu
IiwgbWF4X2ZyYW1lKTsKPj4+ICAgIAkJCQlyZXR1cm4gLUVJTlZBTDsKPj4+ICAgIAkJCX0KPj4+
ICAgIAkJfQo+Pj4KPj4KPj4KPj4gS2luZCByZWdhcmRzLAo+Pgo+PiBQYXVsCj4+Cj4+Cj4+IFBT
OiBGb3IgY29tbWl0IG1lc3NhZ2Ugc3VtbWFyaWVzLCBzdGF0ZW1lbnRzIHdpdGggdmVyYnMgaW4g
aW1wZXJhdGl2ZSBtb29kCj4+IGFyZSBxdWl0ZSBjb21tb24gWzFdLgo+Pgo+Pj4gaWdiOiBQcmlu
dCBYRFAgZXh0YWNrIGVycm9yIG9uIHRvbyBiaWcgZnJhbWUgc2l6ZQo+Pgo+Pgo+PiBbMV06IGh0
dHBzOi8vZXVyMDMuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUz
QSUyRiUyRmNocmlzLmJlYW1zLmlvJTJGcG9zdHMlMkZnaXQtY29tbWl0JTJGJmFtcDtkYXRhPTA0
JTdDMDElN0NzdmVuLmF1aGFnZW4lNDB2b2xlYXRlY2guZGUlN0NjMjkxNmU0Y2FmMzg0NTEyY2Rm
ODA4ZDg4NjExMGRmOSU3Q2I4MmE5OWY2Nzk4MTRhNzI5NTM0NGQzNTI5OGY4NDdiJTdDMCU3QzAl
N0M2Mzc0MDY3NTUxMTIyODc5NDMlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3
TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdD
MTAwMCZhbXA7c2RhdGE9d0J2WDZxNHRyTTdGUUxwNU54Y2NxcmJvJTJGb3J2RjVLRzFZRzdUUmM3
Y0tRJTNEJmFtcDtyZXNlcnZlZD0wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
