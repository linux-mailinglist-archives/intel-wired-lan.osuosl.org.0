Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BBC3E0E8F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Aug 2021 08:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96B5C6068C;
	Thu,  5 Aug 2021 06:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LUq27GasMDwF; Thu,  5 Aug 2021 06:51:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85D47605D5;
	Thu,  5 Aug 2021 06:51:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61C2C1BF331
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 06:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F28A40258
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 06:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCTZLFV1N0rS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 06:51:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37E1B401B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 06:51:10 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aedaf.dynamic.kabel-deutschland.de
 [95.90.237.175])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ED66D61E6478B;
 Thu,  5 Aug 2021 08:51:07 +0200 (CEST)
To: Brett Creeley <brett.creeley@intel.com>
References: <20210728203457.325482-1-brett.creeley@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <5a641af5-e3fc-3b7c-6ddd-ef25e3f4a1ad@molgen.mpg.de>
Date: Thu, 5 Aug 2021 08:51:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210728203457.325482-1-brett.creeley@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ice: don't remove
 netdev->dev_addr from uc sync list
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

RGVhciBCcmV0dCwKCgpBbSAyOC4wNy4yMSB1bSAyMjozNCBzY2hyaWViIEJyZXR0IENyZWVsZXk6
Cj4gSW4gc29tZSBjaXJjdW1zdGFuY2VzLCBzdWNoIGFzIHdpdGggYnJpZGdpbmcsIGl0J3MgcG9z
c2libGUgdGhhdCB0aGUKPiBzdGFjayB3aWxsIGFkZCB0aGUgZGV2aWNlJ3Mgb3duIE1BQyBhZGRy
ZXNzIHRvIGl0cyB1bmljYXN0IGFkZHJlc3MgbGlzdC4KPiAKPiBJZiwgbGF0ZXIsIHRoZSBzdGFj
ayBkZWxldGVzIHRoaXMgYWRkcmVzcywgdGhlIGRyaXZlciB3aWxsIHJlY2VpdmUgYQo+IHJlcXVl
c3QgdG8gcmVtb3ZlIHRoaXMgYWRkcmVzcy4KPiAKPiBUaGUgZHJpdmVyIHN0b3JlcyBpdHMgY3Vy
cmVudCBNQUMgYWRkcmVzcyBhcyBwYXJ0IG9mIHRoZSBWU0kgTUFDIGZpbHRlcgo+IGxpc3QgaW5z
dGVhZCBvZiBzZXBhcmF0ZWx5LiBTbywgdGhpcyBjYXVzZXMgYSBwcm9ibGVtIHdoZW4gdGhlIGRl
dmljZSdzCj4gTUFDIGFkZHJlc3MgaXMgZGVsZXRlZCB1bmV4cGVjdGVkbHksIHdoaWNoIHJlc3Vs
dHMgaW4gdHJhZmZpYyBmYWlsdXJlCj4gaW4gc29tZSBjYXNlcy4KPiAKPiBGaXggdGhpcyBieSBt
YWtpbmcgc3VyZSB0byBub3QgZGVsZXRlIHRoZSBuZXRkZXYtPmRldl9hZGRyIGR1cmluZwo+IE1B
QyBhZGRyZXNzIHN5bmMuCgpJcyBpdCBlYXN5IHRvIHJlcHJvZHVjZT8KCj4gVGhlcmUgaXMgYSBw
b3NzaWJpbGl0eSBvZiBhIHJhY2UgY29uZGl0aW9uIGJldHdlZW4gLnNldF9tYWMgYW5kCj4gLnNl
dF9yeF9tb2RlLiBGaXggdGhpcyBieSBjYWxsaW5nIG5ldGlmX2FkZHJfbG9ja19iaCgpIGFuZAo+
IG5ldGlmX2FkZHJfdW5sb2NrX2JoKCkgb24gdGhlIGRldmljZSdzIG5ldGRldiB3aGVuIHRoZSBu
ZXRkZXYtPmRldl9hZGRyCj4gaXMgZ29pbmcgdG8gYmUgdXBkYXRlZCBpbiAuc2V0X21hYy4KPiAK
PiBBbHNvLCBjaGFuZ2UgdGhlIG5ldGRldl93YXJuKCkgdG8gbmV0ZGV2X2RiZygpIHdoZW4gdGhl
IGRldmljZSBpcwo+IGFscmVhZHkgdXNpbmcgdGhlIHJlcXVlc3RlZCBtYWMgaW4gLnNldF9tYWMu
IFRoZSBkZXZfd2FybigpIHdhcyBjYXVzaW5nCj4gYSBsb3Qgb2YgdW5uZWNlc3Nhcnkgbm9pc2Ug
d2hlbiBjb25maWd1cmluZy91bmNvbmZpZ3VyaW5nIGJyaWRnaW5nIGFuZAo+IHByb3ZpZGVzIG5v
IGJlbmVmaXQuCj4gCj4gTGFzdGx5LCBpbnN0ZWFkIG9mIHVzaW5nIG1lbWNweSgpIHRvIHNhdmUg
dGhlIG5ldGRldi0+ZGV2X2FkZHIsIHVzZQo+IGV0aGVyX2FkZHJfY29weSgpIGluIC5zZXRfbWFj
LgoKSXTigJlkIGJlIGdyZWF0LCBpZiB5b3Ugc3BsaXQgdGhlIHRocmVlIGl0ZW1zIG91dCBpbnRv
IHNlcGFyYXRlIHBhdGNoZXMsIAphbmQgc3VibWl0IGl0IGluIGEgcGF0Y2ggc2VyaWVzLgoKCktp
bmQgcmVnYXJkcywKClBhdWwKCgo+IEZpeGVzOiBlOTRkNDQ3ODY2OTMgKCJpY2U6IEltcGxlbWVu
dCBmaWx0ZXIgc3luYywgTkRPIG9wZXJhdGlvbnMgYW5kIGJ1bXAgdmVyc2lvbiIpCj4gU2lnbmVk
LW9mZi1ieTogQnJldHQgQ3JlZWxleSA8YnJldHQuY3JlZWxleUBpbnRlbC5jb20+Cj4gLS0tCj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8IDI1ICsrKysrKysr
KysrKysrKy0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4u
Ywo+IGluZGV4IGVmOGQxODE1YWY1Ni4uMjU5ZDczZTM1M2JiIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPiBAQCAtMTkxLDYgKzE5MSwxNCBAQCBzdGF0
aWMgaW50IGljZV9hZGRfbWFjX3RvX3Vuc3luY19saXN0KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRk
ZXYsIGNvbnN0IHU4ICphZGRyKQo+ICAgCXN0cnVjdCBpY2VfbmV0ZGV2X3ByaXYgKm5wID0gbmV0
ZGV2X3ByaXYobmV0ZGV2KTsKPiAgIAlzdHJ1Y3QgaWNlX3ZzaSAqdnNpID0gbnAtPnZzaTsKPiAg
IAo+ICsJLyogVW5kZXIgc29tZSBjaXJjdW1zdGFuY2VzLCB3ZSBtaWdodCByZWNlaXZlIGEgcmVx
dWVzdCB0byBkZWxldGUgb3VyCj4gKwkgKiBvd24gZGV2aWNlIGFkZHJlc3MgZnJvbSBvdXIgdWMg
bGlzdC4gQmVjYXVzZSB3ZSBzdG9yZSB0aGUgZGV2aWNlCj4gKwkgKiBhZGRyZXNzIGluIHRoZSBW
U0kncyBNQUMgZmlsdGVyIGxpc3QsIHdlIG5lZWQgdG8gaWdub3JlIHN1Y2gKPiArCSAqIHJlcXVl
c3RzIGFuZCBub3QgZGVsZXRlIG91ciBkZXZpY2UgYWRkcmVzcyBmcm9tIHRoaXMgbGlzdC4KPiAr
CSAqLwo+ICsJaWYgKGV0aGVyX2FkZHJfZXF1YWwoYWRkciwgbmV0ZGV2LT5kZXZfYWRkcikpCj4g
KwkJcmV0dXJuIDA7Cj4gKwo+ICAgCWlmIChpY2VfZmx0cl9hZGRfbWFjX3RvX2xpc3QodnNpLCAm
dnNpLT50bXBfdW5zeW5jX2xpc3QsIGFkZHIsCj4gICAJCQkJICAgICBJQ0VfRldEX1RPX1ZTSSkp
Cj4gICAJCXJldHVybiAtRUlOVkFMOwo+IEBAIC01MTE5LDcgKzUxMjcsNyBAQCBzdGF0aWMgaW50
IGljZV9zZXRfbWFjX2FkZHJlc3Moc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgdm9pZCAqcGkp
Cj4gICAJCXJldHVybiAtRUFERFJOT1RBVkFJTDsKPiAgIAo+ICAgCWlmIChldGhlcl9hZGRyX2Vx
dWFsKG5ldGRldi0+ZGV2X2FkZHIsIG1hYykpIHsKPiAtCQluZXRkZXZfd2FybihuZXRkZXYsICJh
bHJlYWR5IHVzaW5nIG1hYyAlcE1cbiIsIG1hYyk7Cj4gKwkJbmV0ZGV2X2RiZyhuZXRkZXYsICJh
bHJlYWR5IHVzaW5nIG1hYyAlcE1cbiIsIG1hYyk7Cj4gICAJCXJldHVybiAwOwo+ICAgCX0KPiAg
IAo+IEBAIC01MTMwLDYgKzUxMzgsNyBAQCBzdGF0aWMgaW50IGljZV9zZXRfbWFjX2FkZHJlc3Mo
c3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgdm9pZCAqcGkpCj4gICAJCXJldHVybiAtRUJVU1k7
Cj4gICAJfQo+ICAgCj4gKwluZXRpZl9hZGRyX2xvY2tfYmgobmV0ZGV2KTsKPiAgIAkvKiBDbGVh
biB1cCBvbGQgTUFDIGZpbHRlci4gTm90IGFuIGVycm9yIGlmIG9sZCBmaWx0ZXIgZG9lc24ndCBl
eGlzdCAqLwo+ICAgCXN0YXR1cyA9IGljZV9mbHRyX3JlbW92ZV9tYWModnNpLCBuZXRkZXYtPmRl
dl9hZGRyLCBJQ0VfRldEX1RPX1ZTSSk7Cj4gICAJaWYgKHN0YXR1cyAmJiBzdGF0dXMgIT0gSUNF
X0VSUl9ET0VTX05PVF9FWElTVCkgewo+IEBAIC01MTM5LDMwICs1MTQ4LDI4IEBAIHN0YXRpYyBp
bnQgaWNlX3NldF9tYWNfYWRkcmVzcyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCB2b2lkICpw
aSkKPiAgIAo+ICAgCS8qIEFkZCBmaWx0ZXIgZm9yIG5ldyBNQUMuIElmIGZpbHRlciBleGlzdHMs
IHJldHVybiBzdWNjZXNzICovCj4gICAJc3RhdHVzID0gaWNlX2ZsdHJfYWRkX21hYyh2c2ksIG1h
YywgSUNFX0ZXRF9UT19WU0kpOwo+IC0JaWYgKHN0YXR1cyA9PSBJQ0VfRVJSX0FMUkVBRFlfRVhJ
U1RTKSB7Cj4gKwlpZiAoc3RhdHVzID09IElDRV9FUlJfQUxSRUFEWV9FWElTVFMpCj4gICAJCS8q
IEFsdGhvdWdoIHRoaXMgTUFDIGZpbHRlciBpcyBhbHJlYWR5IHByZXNlbnQgaW4gaGFyZHdhcmUg
aXQncwo+ICAgCQkgKiBwb3NzaWJsZSBpbiBzb21lIGNhc2VzIChlLmcuIGJvbmRpbmcpIHRoYXQg
ZGV2X2FkZHIgd2FzCj4gICAJCSAqIG1vZGlmaWVkIG91dHNpZGUgb2YgdGhlIGRyaXZlciBhbmQg
bmVlZHMgdG8gYmUgcmVzdG9yZWQgYmFjawo+ICAgCQkgKiB0byB0aGlzIHZhbHVlLgo+ICAgCQkg
Ki8KPiAtCQltZW1jcHkobmV0ZGV2LT5kZXZfYWRkciwgbWFjLCBuZXRkZXYtPmFkZHJfbGVuKTsK
PiAgIAkJbmV0ZGV2X2RiZyhuZXRkZXYsICJmaWx0ZXIgZm9yIE1BQyAlcE0gYWxyZWFkeSBleGlz
dHNcbiIsIG1hYyk7Cj4gLQkJcmV0dXJuIDA7Cj4gLQl9Cj4gLQo+IC0JLyogZXJyb3IgaWYgdGhl
IG5ldyBmaWx0ZXIgYWRkaXRpb24gZmFpbGVkICovCj4gLQlpZiAoc3RhdHVzKQo+ICsJZWxzZSBp
ZiAoc3RhdHVzKQo+ICsJCS8qIGVycm9yIGlmIHRoZSBuZXcgZmlsdGVyIGFkZGl0aW9uIGZhaWxl
ZCAqLwo+ICAgCQllcnIgPSAtRUFERFJOT1RBVkFJTDsKPiAgIAo+ICAgZXJyX3VwZGF0ZV9maWx0
ZXJzOgo+ICAgCWlmIChlcnIpIHsKPiAgIAkJbmV0ZGV2X2VycihuZXRkZXYsICJjYW4ndCBzZXQg
TUFDICVwTS4gZmlsdGVyIHVwZGF0ZSBmYWlsZWRcbiIsCj4gICAJCQkgICBtYWMpOwo+ICsJCW5l
dGlmX2FkZHJfdW5sb2NrX2JoKG5ldGRldik7Cj4gICAJCXJldHVybiBlcnI7Cj4gICAJfQo+ICAg
Cj4gICAJLyogY2hhbmdlIHRoZSBuZXRkZXYncyBNQUMgYWRkcmVzcyAqLwo+IC0JbWVtY3B5KG5l
dGRldi0+ZGV2X2FkZHIsIG1hYywgbmV0ZGV2LT5hZGRyX2xlbik7Cj4gKwlldGhlcl9hZGRyX2Nv
cHkobmV0ZGV2LT5kZXZfYWRkciwgbWFjKTsKPiArCW5ldGlmX2FkZHJfdW5sb2NrX2JoKG5ldGRl
dik7Cj4gICAJbmV0ZGV2X2RiZyh2c2ktPm5ldGRldiwgInVwZGF0ZWQgTUFDIGFkZHJlc3MgdG8g
JXBNXG4iLAo+ICAgCQkgICBuZXRkZXYtPmRldl9hZGRyKTsKPiAgIAo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
