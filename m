Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3295B27FA1C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 09:22:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B4ED7228DC;
	Thu,  1 Oct 2020 07:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SF9Mg3dbfcKS; Thu,  1 Oct 2020 07:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C59922EC9;
	Thu,  1 Oct 2020 07:22:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 781F41BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F051872D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AdKtFDm3ThxU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 07:22:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 374DC872CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:22:33 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af404.dynamic.kabel-deutschland.de
 [95.90.244.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AB9DB2064623C;
 Thu,  1 Oct 2020 09:22:31 +0200 (CEST)
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20200918184152.604967-1-jesse.brandeburg@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c270e596-b5db-005b-fa18-cd374981429c@molgen.mpg.de>
Date: Thu, 1 Oct 2020 09:22:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20200918184152.604967-1-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: remove unused and
 incorrect code
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZXNzZSwKCgpBbSAxOC4wOS4yMCB1bSAyMDo0MSBzY2hyaWViIEplc3NlIEJyYW5kZWJ1
cmc6Cj4gVGhlIGUxMDAwX2NsZWFyX3ZmdGEgZnVuY3Rpb24gd2FzIHRyaWdnZXJpbmcgYSB3YXJu
aW5nIGluIGtidWlsZC1ib3QKPiB0ZXN0aW5nLiBJdCdzIGFjdHVhbGx5IGEgYnVnIGJ1dCBoYXMg
bm8gZnVuY3Rpb25hbCBpbXBhY3QuCj4gCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDAvZTEwMDBfaHcuYzo0NDE1OjU4OiB3YXJuaW5nOiBTYW1lIGV4cHJlc3Npb24gaW4gYm90aCBi
cmFuY2hlcyBvZiB0ZXJuYXJ5IG9wZXJhdG9yLiBbZHVwbGljYXRlRXhwcmVzc2lvblRlcm5hcnld
Cj4gCj4gRml4IHRoaXMgd2FybmluZyBieSByZW1vdmluZyB0aGUgb2ZmZW5kaW5nIGNvZGUgYW5k
IHNpbXBsaWZ5aW5nCj4gdGhlIHJvdXRpbmUgdG8gZG8gZXhhY3RseSB3aGF0IGl0IGRpZCBiZWZv
cmUsIG5vIGZ1bmN0aW9uYWwKPiBjaGFuZ2UuCgpJdCBsb29rcyBsaWtlIHRoaXMgZml4ZXMgY29t
bWl0IDE1MzJlY2VhIChlMTAwMDogZHJvcCBkZWFkIHBjaWUgY29kZSAKZnJvbSBlMTAwMCkgcmVt
b3Zpbmcgc3VwcG9ydCBmb3IgZTEwMDBfODI1NzM/Cgo+IFNpZ25lZC1vZmYtYnk6IEplc3NlIEJy
YW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+IC0tLQo+IAo+IE5PVEU6IEkg
ZG9uJ3QgcmVjb21tZW5kIHRoaXMgZ28gdG8gc3RhYmxlIGFzIHRoZXJlIGlzIG5vIGZ1bmN0aW9u
YWwKPiBjaGFuZ2UuCj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9l
MTAwMF9ody5jIHwgMTAgKy0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDAvZTEwMDBfaHcuYwo+IGluZGV4IDIxMjBkYWNmZDU1Yy4uYzVkNzAyNTQzZGFhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2h3LmMKPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jCj4gQEAgLTQ0MDMs
MTcgKzQ0MDMsOSBAQCB2b2lkIGUxMDAwX3dyaXRlX3ZmdGEoc3RydWN0IGUxMDAwX2h3ICpodywg
dTMyIG9mZnNldCwgdTMyIHZhbHVlKQo+ICAgc3RhdGljIHZvaWQgZTEwMDBfY2xlYXJfdmZ0YShz
dHJ1Y3QgZTEwMDBfaHcgKmh3KQoKKFdoeSBpcyB0aGUgZGlmZiBhbHNvIG1lbnRpb25pbmcgdGhl
IGZ1bmN0aW9uIGJlZm9yZSBgdm9pZCAKZTEwMDBfd3JpdGVfdmZ0YSgpYD8pCgo+ICAgewo+ICAg
CXUzMiBvZmZzZXQ7Cj4gLQl1MzIgdmZ0YV92YWx1ZSA9IDA7Cj4gLQl1MzIgdmZ0YV9vZmZzZXQg
PSAwOwo+IC0JdTMyIHZmdGFfYml0X2luX3JlZyA9IDA7Cj4gICAKPiAgIAlmb3IgKG9mZnNldCA9
IDA7IG9mZnNldCA8IEUxMDAwX1ZMQU5fRklMVEVSX1RCTF9TSVpFOyBvZmZzZXQrKykgewo+IC0J
CS8qIElmIHRoZSBvZmZzZXQgd2Ugd2FudCB0byBjbGVhciBpcyB0aGUgc2FtZSBvZmZzZXQgb2Yg
dGhlCj4gLQkJICogbWFuYWdlYWJpbGl0eSBWTEFOIElELCB0aGVuIGNsZWFyIGFsbCBiaXRzIGV4
Y2VwdCB0aGF0IG9mIHRoZQo+IC0JCSAqIG1hbmFnZWFiaWxpdHkgdW5pdAo+IC0JCSAqLwo+IC0J
CXZmdGFfdmFsdWUgPSAob2Zmc2V0ID09IHZmdGFfb2Zmc2V0KSA/IHZmdGFfYml0X2luX3JlZyA6
IDA7Cj4gLQkJRTEwMDBfV1JJVEVfUkVHX0FSUkFZKGh3LCBWRlRBLCBvZmZzZXQsIHZmdGFfdmFs
dWUpOwo+ICsJCUUxMDAwX1dSSVRFX1JFR19BUlJBWShodywgVkZUQSwgb2Zmc2V0LCAwKTsKPiAg
IAkJRTEwMDBfV1JJVEVfRkxVU0goKTsKPiAgIAl9Cj4gICB9CgpJdOKAmWQgYmUgZ3JlYXQgaWYg
eW91IHVwZGF0ZWQgdGhlIGNvbW1pdCBkZXNjcmlwdGlvbi4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
