Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D613F7B7294
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 22:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58F3B6101A;
	Tue,  3 Oct 2023 20:34:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58F3B6101A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696365245;
	bh=69vpyzT78RmGJj3i7HC9tU2ttP8PK/xR0BUeFvXeqU4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WbTrptjOLbz48fM+iKBIG8+qXbqnAsr5ozmDtomRw3tCKj1nY5tzmtxSME7DTja8T
	 jBT1a4r5OBPGY5tIjDjSnloeiz8aaUs7i2barqyf8U6ozrS2A3URHcTBTpmbIOzxHt
	 or6Um+72Q9cQ37XL/FlA7fBh+SjrYqWuuYXCXwMWWx5L3hKX8IeZXCSinaine2Xtv3
	 MrzgFeSr9cn2/wkZF37Uh0FBF2kzbcGoA372uqnvs1eiKgEruQzH12eGMEO0o9tdyg
	 70PfY/ODsEYe2/fmkXt9TG4sXa/pqUQlryxdk/Q+55tmgo7WUKmrz1yKySR1CBXlBI
	 5Aaloe8awm4PA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nez9ZkkRir0e; Tue,  3 Oct 2023 20:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1591860ECE;
	Tue,  3 Oct 2023 20:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1591860ECE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 772961BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 20:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C6C48225D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 20:33:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C6C48225D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aq8XYPVQoi5u for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 20:33:53 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-13.smtpout.orange.fr
 [80.12.242.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C5F2782259
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 20:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5F2782259
Received: from [192.168.1.18] ([86.243.2.178]) by smtp.orange.fr with ESMTPA
 id nm5UqMLsanmFYnm5UqMmLO; Tue, 03 Oct 2023 22:33:50 +0200
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 03 Oct 2023 22:33:50 +0200
X-ME-IP: 86.243.2.178
Message-ID: <abf8d279-b579-4a03-9ae9-053cf5efec3d@wanadoo.fr>
Date: Tue, 3 Oct 2023 22:33:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <966968bda15a7128a381b589329184dfea3e0548.1695471387.git.christophe.jaillet@wanadoo.fr>
 <a5e933fe-4566-9ae6-9a5d-b3a4c186fe0b@intel.com>
Content-Language: fr
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <a5e933fe-4566-9ae6-9a5d-b3a4c186fe0b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wanadoo.fr; s=t20230301; t=1696365230;
 bh=4szZBF58NVDMkJwPCQGcaCq/8DXhNFlNUXK9ISU4JTg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=jMM5hJEqTl55wNmQJ4+r0YBYKX0Tt7hC93DBUR4UNEOanbF1mI9FB5vNtzYC2Pde+
 C8uatHITU/+hpj/uqY+xb1UDRcQNixIQ0QRqZB5BX1rnOdJR+PV2qgNjdXxQfoBT/q
 5mH067tDe9dQK9bITKkPOVeZS3Grb0t7xas5Um2HHzjy8eawGUpSaPkrxJLOAQWaOt
 FqiQqCllcVli5oAHKFhBhF+Ushb8praKuB+JIwc9S2J7+rEW+RJVDPL9+x0xTaAAu+
 QNHIBIeTTl8ZTcGMnXT6+6FXDCqrD5IzyWDMvBx3LZVqP+/1kvhJ4MrlpwYFc7VkWz
 CuKV7HsUbuTVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr
 header.a=rsa-sha256 header.s=t20230301 header.b=jMM5hJEq
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: Avoid a memory
 allocation in iavf_print_link_message()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TGUgMDMvMTAvMjAyMyDDoCAxOToxNCwgSmVzc2UgQnJhbmRlYnVyZyBhIMOpY3JpdMKgOgo+IE9u
IDkvMjMvMjAyMyA1OjE3IEFNLCBDaHJpc3RvcGhlIEpBSUxMRVQgd3JvdGU6Cj4+IElBVkZfTUFY
X1NQRUVEX1NUUkxFTiBpcyBvbmx5IDEzIGFuZCAnc3BlZWQnIGlzIGFsbG9jYXRlZCBhbmQgZnJl
ZWQgd2l0aGluCj4+IGlhdmZfcHJpbnRfbGlua19tZXNzYWdlKCkuCj4+Cj4+ICdzcGVlZCcgaXMg
b25seSB1c2VkIHdpdGggc29tZSBzbnByaW50ZigpIGFuZCBuZXRkZXZfaW5mbygpIGNhbGxzLgo+
Pgo+PiBTbyB0aGVyZSBpcyBubyByZWFsIHVzZSB0byBremFsbG9jKCkvZnJlZSgpIGl0LiBVc2Ug
dGhlIHN0YWNrIGluc3RlYWQuCj4+IFRoaXMgc2F2ZXMgYSBtZW1vcnkgYWxsb2NhdGlvbi4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBKQUlMTEVUIDxjaHJpc3RvcGhlLmphaWxsZXRA
d2FuYWRvby5mcj4KPj4gLS0tCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX3ZpcnRjaG5sLmMgfCA3ICstLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4+IGluZGV4IDhjZTYzODliNTgxNS4uOTgwZGM2OWQ3
ZmJlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
dmlydGNobmwuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
dmlydGNobmwuYwo+PiBAQCAtMTM4OSwxOCArMTM4OSwxNCBAQCB2b2lkIGlhdmZfZGlzYWJsZV92
bGFuX2luc2VydGlvbl92MihzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyLCB1MTYgdHBpZCkK
Pj4gICBzdGF0aWMgdm9pZCBpYXZmX3ByaW50X2xpbmtfbWVzc2FnZShzdHJ1Y3QgaWF2Zl9hZGFw
dGVyICphZGFwdGVyKQo+PiAgIHsKPj4gICAJc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IGFk
YXB0ZXItPm5ldGRldjsKPj4gKwljaGFyIHNwZWVkW0lBVkZfTUFYX1NQRUVEX1NUUkxFTl07Cj4+
ICAgCWludCBsaW5rX3NwZWVkX21icHM7Cj4+IC0JY2hhciAqc3BlZWQ7Cj4+ICAgCj4+ICAgCWlm
ICghYWRhcHRlci0+bGlua191cCkgewo+PiAgIAkJbmV0ZGV2X2luZm8obmV0ZGV2LCAiTklDIExp
bmsgaXMgRG93blxuIik7Cj4+ICAgCQlyZXR1cm47Cj4+ICAgCX0KPj4gICAKPj4gLQlzcGVlZCA9
IGt6YWxsb2MoSUFWRl9NQVhfU1BFRURfU1RSTEVOLCBHRlBfS0VSTkVMKTsKPj4gLQlpZiAoIXNw
ZWVkKQo+PiAtCQlyZXR1cm47Cj4+IC0KPj4gICAJaWYgKEFEVl9MSU5LX1NVUFBPUlQoYWRhcHRl
cikpIHsKPj4gICAJCWxpbmtfc3BlZWRfbWJwcyA9IGFkYXB0ZXItPmxpbmtfc3BlZWRfbWJwczsK
Pj4gICAJCWdvdG8gcHJpbnRfbGlua19tc2c7Cj4+IEBAIC0xNDUyLDcgKzE0NDgsNiBAQCBzdGF0
aWMgdm9pZCBpYXZmX3ByaW50X2xpbmtfbWVzc2FnZShzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFw
dGVyKQo+PiAgIAl9Cj4+ICAgCj4+ICAgCW5ldGRldl9pbmZvKG5ldGRldiwgIk5JQyBMaW5rIGlz
IFVwIFNwZWVkIGlzICVzIEZ1bGwgRHVwbGV4XG4iLCBzcGVlZCk7Cj4+IC0Ja2ZyZWUoc3BlZWQp
Owo+PiAgIH0KPj4gICAKPj4gICAvKioKPiAKPiBIaSBDaHJpc3RvcGhlIQo+IAo+IEkgaGFkIGEg
c2xpZ2h0bHkgZGlmZmVyZW50IHByb3Bvc2FsIHRoYXQgZ2V0cyByaWQgb2YgYWxsIHRoZSAtV2Zv
cm1hdD0yCj4gd2FybmluZ3MgaW4gdGhpcyBjb2RlIGJ5IHVzaW5nIGthc3ByaW50ZiB0byBoYW5k
bGUgdGhlIHZhcnlpbmcgc3RyaW5nCj4gbGVuZ3Rocy4KPiAKPiBhbnkgdGhvdWdodHMgYWJvdXQg
dGhpcyBpbnN0ZWFkIGFuZCBkcm9wIHlvdXJzPyBJJ20gbGVzcyB3b3JyaWVkIGFib3V0Cj4gdGhl
ICJleHRyYSBhbGxvY2F0aW9uIiBoZXJlIGluIHRoaXMgZnVuY3Rpb24gc2luY2UgaXQncyBzbG93
IHBhdGgsIGFuZAo+IHRoZSBzYW1lIGNvbW1lbnQgYXBwbGllcyB0byB5b3VyIHBhdGNoIGFzIHdl
bGwuCgprYXNwcmludGYoKSBpcyBtdWNoIGJldHRlci4KCj4gCj4geW91ciBwYXRjaCBzdGlsbCBz
aG93cyB0aGVzZSBlcnJvcnMKCkkgYnVpbHQtdGVzdGVkIHRoZSBwYXRjaCBiZWZvcmUgc2VuZGlu
Zywgc28gdGhpcyBpcyBzdHJhbmdlLgoKSG93ZXZlciwgSSBnb3QgYSBzaW1pbGFyIGZlZWRiYWNr
IGZyb20gR3JlZyBLSCBhbmQgdGhlICJrZXJuZWwgdGVzdCAKcm9ib3QiIGZvciBhbm90aGVyIHNp
bWlsYXIgcGF0Y2guCgpXaGF0IHZlcnNpb24gb2YgZ2NjIGRvIHlvdSB1c2U/CkkgdXNlIDEyLjMu
MCwgYW5kIEkgc3VzcGVjdCB0aGF0IHRoZSB2YWx1ZSByYW5nZSBhbGdvcml0aG0gb3IgaG93IHRo
ZSAKZGlhZ25vc3RpYyBpcyBkb25lIGhhcyBiZWVuIGltcHJvdmVkIGluIHJlY2VudCBnY2MuCgpU
aGUgb3RoZXIgcmVwb3J0IHdhcyBmcm9tIDExLjMuMC4KCkNKCgo+PiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYzogSW4gZnVuY3Rpb24g4oCYaWF2Zl92aXJ0
Y2hubF9jb21wbGV0aW9u4oCZOgo+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfdmlydGNobmwuYzoxNDQ2OjYwOiB3YXJuaW5nOiDigJglc+KAmSBkaXJlY3RpdmUgb3V0cHV0
IG1heSBiZSB0cnVuY2F0ZWQgd3JpdGluZyA0IGJ5dGVzIGludG8gYSByZWdpb24gb2Ygc2l6ZSBi
ZXR3ZWVuIDEgYW5kIDExIFstV2Zvcm1hdC10cnVuY2F0aW9uPV0KPj4gICAxNDQ2IHwgICAgICAg
ICAgICAgICAgIHNucHJpbnRmKHNwZWVkLCBJQVZGX01BWF9TUEVFRF9TVFJMRU4sICIlZCAlcyIs
Cj4+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXn4KPj4gICAxNDQ3IHwgICAgICAgICAgICAgICAgICAgICAgICAgIGxp
bmtfc3BlZWRfbWJwcywgIk1icHMiKTsKPj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfn5+fn5+Cj4+IEluIGZ1bmN0aW9uIOKAmGlhdmZfcHJpbnRf
bGlua19tZXNzYWdl4oCZLAo+PiAgICAgIGlubGluZWQgZnJvbSDigJhpYXZmX3ZpcnRjaG5sX2Nv
bXBsZXRpb27igJkgYXQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRj
aG5sLmM6MTk2NTo0Ogo+PiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmly
dGNobmwuYzoxNDQ2OjE3OiBub3RlOiDigJhzbnByaW50ZuKAmSBvdXRwdXQgYmV0d2VlbiA3IGFu
ZCAxNyBieXRlcyBpbnRvIGEgZGVzdGluYXRpb24gb2Ygc2l6ZSAxMwo+PiAgIDE0NDYgfCAgICAg
ICAgICAgICAgICAgc25wcmludGYoc3BlZWQsIElBVkZfTUFYX1NQRUVEX1NUUkxFTiwgIiVkICVz
IiwKPj4gICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4+ICAgMTQ0NyB8ICAgICAgICAgICAgICAgICAgICAgICAg
ICBsaW5rX3NwZWVkX21icHMsICJNYnBzIik7Cj4+ICAgICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAKPiAKPiA8bXkgaWF2ZiBwYXRjaCBw
YXN0ZWQgYXMgYSBxdW90ZSBzbyBteSBtYWlsIGNsaWVudCB3b24ndCB3cmFwIHRoZSBsaW5lcy4u
Lj4KPiAKPiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYv
aWF2Zl92aXJ0Y2hubC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3Zp
cnRjaG5sLmMKPj4gaW5kZXggOGNlNjM4OWI1ODE1Li44MmI4NGE5M2JjYzggMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4+IEBA
IC0xMzc4LDggKzEzNzgsNiBAQCB2b2lkIGlhdmZfZGlzYWJsZV92bGFuX2luc2VydGlvbl92Mihz
dHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyLCB1MTYgdHBpZCkKPj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBWSVJUQ0hOTF9PUF9ESVNBQkxFX1ZMQU5fSU5TRVJUSU9OX1Yy
KTsKPj4gICB9Cj4+Cj4+IC0jZGVmaW5lIElBVkZfTUFYX1NQRUVEX1NUUkxFTiAgMTMKPj4gLQo+
PiAgIC8qKgo+PiAgICAqIGlhdmZfcHJpbnRfbGlua19tZXNzYWdlIC0gcHJpbnQgbGluayB1cCBv
ciBkb3duCj4+ICAgICogQGFkYXB0ZXI6IGFkYXB0ZXIgc3RydWN0dXJlCj4+IEBAIC0xMzk3LDEw
ICsxMzk1LDYgQEAgc3RhdGljIHZvaWQgaWF2Zl9wcmludF9saW5rX21lc3NhZ2Uoc3RydWN0IGlh
dmZfYWRhcHRlciAqYWRhcHRlcikKPj4gICAgICAgICAgICAgICAgICByZXR1cm47Cj4+ICAgICAg
ICAgIH0KPj4KPj4gLSAgICAgICBzcGVlZCA9IGt6YWxsb2MoSUFWRl9NQVhfU1BFRURfU1RSTEVO
LCBHRlBfS0VSTkVMKTsKPj4gLSAgICAgICBpZiAoIXNwZWVkKQo+PiAtICAgICAgICAgICAgICAg
cmV0dXJuOwo+PiAtCj4+ICAgICAgICAgIGlmIChBRFZfTElOS19TVVBQT1JUKGFkYXB0ZXIpKSB7
Cj4+ICAgICAgICAgICAgICAgICAgbGlua19zcGVlZF9tYnBzID0gYWRhcHRlci0+bGlua19zcGVl
ZF9tYnBzOwo+PiAgICAgICAgICAgICAgICAgIGdvdG8gcHJpbnRfbGlua19tc2c7Cj4+IEBAIC0x
NDM4LDE3ICsxNDMyLDE3IEBAIHN0YXRpYyB2b2lkIGlhdmZfcHJpbnRfbGlua19tZXNzYWdlKHN0
cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpCj4+Cj4+ICAgcHJpbnRfbGlua19tc2c6Cj4+ICAg
ICAgICAgIGlmIChsaW5rX3NwZWVkX21icHMgPiBTUEVFRF8xMDAwKSB7Cj4+IC0gICAgICAgICAg
ICAgICBpZiAobGlua19zcGVlZF9tYnBzID09IFNQRUVEXzI1MDApCj4+IC0gICAgICAgICAgICAg
ICAgICAgICAgIHNucHJpbnRmKHNwZWVkLCBJQVZGX01BWF9TUEVFRF9TVFJMRU4sICIyLjUgR2Jw
cyIpOwo+PiAtICAgICAgICAgICAgICAgZWxzZQo+PiArICAgICAgICAgICAgICAgaWYgKGxpbmtf
c3BlZWRfbWJwcyA9PSBTUEVFRF8yNTAwKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHNw
ZWVkID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICIlcyIsICIyLjUgR2JwcyIpOwo+PiArICAgICAg
ICAgICAgICAgfSBlbHNlIHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIC8qIGNvbnZlcnQg
dG8gR2JwcyBpbmxpbmUgKi8KPj4gLSAgICAgICAgICAgICAgICAgICAgICAgc25wcmludGYoc3Bl
ZWQsIElBVkZfTUFYX1NQRUVEX1NUUkxFTiwgIiVkICVzIiwKPj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgbGlua19zcGVlZF9tYnBzIC8gMTAwMCwgIkdicHMiKTsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgc3BlZWQgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgIiVkIEdicHMi
LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsaW5rX3NwZWVk
X21icHMgLyAxMDAwKTsKPj4gKyAgICAgICAgICAgICAgIH0KPj4gICAgICAgICAgfSBlbHNlIGlm
IChsaW5rX3NwZWVkX21icHMgPT0gU1BFRURfVU5LTk9XTikgewo+PiAtICAgICAgICAgICAgICAg
c25wcmludGYoc3BlZWQsIElBVkZfTUFYX1NQRUVEX1NUUkxFTiwgIiVzIiwgIlVua25vd24gTWJw
cyIpOwo+PiArICAgICAgICAgICAgICAgc3BlZWQgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgIiVz
IiwgIlVua25vd24gTWJwcyIpOwo+PiAgICAgICAgICB9IGVsc2Ugewo+PiAtICAgICAgICAgICAg
ICAgc25wcmludGYoc3BlZWQsIElBVkZfTUFYX1NQRUVEX1NUUkxFTiwgIiVkICVzIiwKPj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgIGxpbmtfc3BlZWRfbWJwcywgIk1icHMiKTsKPj4gKyAgICAg
ICAgICAgICAgIHNwZWVkID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICIlZCBNYnBzIiwgbGlua19z
cGVlZF9tYnBzKTsKPj4gICAgICAgICAgfQo+Pgo+PiAgICAgICAgICBuZXRkZXZfaW5mbyhuZXRk
ZXYsICJOSUMgTGluayBpcyBVcCBTcGVlZCBpcyAlcyBGdWxsIER1cGxleFxuIiwgc3BlZWQpOwo+
IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
