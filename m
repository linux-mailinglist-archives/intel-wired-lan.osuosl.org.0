Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22032536232
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 14:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 563734293A;
	Fri, 27 May 2022 12:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lTCMuogpQpr2; Fri, 27 May 2022 12:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FD9A42935;
	Fri, 27 May 2022 12:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53C601BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 12:21:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4187B6169F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 12:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrQtSq4tz3cw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 12:21:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF8D26169D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 12:20:59 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E5E8361EA192D;
 Fri, 27 May 2022 14:20:57 +0200 (CEST)
Message-ID: <9ff865cc-92f0-b719-b2c1-bb6e0ec53a27@molgen.mpg.de>
Date: Fri, 27 May 2022 14:20:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
References: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
 <20220527080919.2370640-2-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220527080919.2370640-2-jedrzej.jagielski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/2] iavf: Fix call trace
 during removing iavf driver
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

RGVhciBKZWRyemVqLCBkZWFyIEdyemVnb3J6LAoKCkFtIDI3LjA1LjIyIHVtIDEwOjA5IHNjaHJp
ZWIgSmVkcnplaiBKYWdpZWxza2k6Cj4gRnJvbTogR3J6ZWdvcnogU3pjenVyZWsgPGdyemVnb3J6
eC5zemN6dXJla0BpbnRlbC5jb20+CgpGb3IgdGhlIHN1bW1hcnksIG1heWJlIGJlIG1vcmUgc3Bl
Y2lmaWMgYWJvdXQgdGhlIGFjdGlvbjoKCiA+IERvIG5vdCBtb2RpZnkgcXVldWUgbnVtYmVyIHdo
ZW4gcmVtb3ZpbmcgaWF2ZiBkcml2ZXIKCj4gSWYgVkYgaGFzIGNvbmZpZ3VyZWQgdGMgcWRpc2Mg
d2l0aCBudW1iZXIgb2YgcXVldWVzIGxlc3MgdGhhbiBvcmlnaW5hbAo+IHNldCBhbmQgdGhlbiB0
aGUgZHJpdmVyIHdlbnQgaW4gcmVtb3ZpbmcgcHJvY2VzcywgdGMgcmVzb3VyY2VzIGFyZSBhbHNv
CgpzL3dlbnQvZ29lcy8KCj4gcmVsZWFzaW5nLiBBdHRlbXB0IG9mIG1vZGlmeSByZWFsIG51bSB0
eC9yeCBpbiB0aGlzIHN0YXRlIGlzIGNhdXNpbmcKCnJlbGVhc2VkPwoKPiBjYWxsIHRyYWNlLCBi
ZWNhdXNlIGtlcm5lbCBpcyB0cnlpbmcgdG8gcmVsZWFzaW5nIHVuaW5pdGlhbGl6ZWQgcXVldWVz
LgoKdG8gcmVsZWFzZQoKUGxlYXNlIGFkZCBwYXJ0cyBvZiB0aGUgY2FsbCB0cmFjZS4KCj4gCj4g
Rml4IGJ5IG5vdCBtb2RpZnlpbmcgdGhlIG51bWJlciBvZiBxdWV1ZXMgd2hlbiByZW1vdmluZyBh
IGRyaXZlci4KCkZpeCAqaXQqIGJ5IOKApgoKCktpbmQgcmVnYXJkcywKClBhdWwKCj4gCj4gRml4
ZXM6IGQ1YjMzZDAyNDQ5NiAoImk0MGV2ZjogYWRkIG5kb19zZXR1cF90YyBjYWxsYmFjayB0byBp
NDBldmYiKQo+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IFN6Y3p1cmVrIDxncnplZ29yenguc3pj
enVyZWtAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEplZHJ6ZWogSmFnaWVsc2tpIDxqZWRy
emVqLmphZ2llbHNraUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmZfbWFpbi5jIHwgMyArKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2
Zi9pYXZmX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWlu
LmMKPiBpbmRleCBlZWM3NGVlNWZjMTkuLjFiNDZhOTdmNGFkNiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYwo+IEBAIC0zNDc4LDYgKzM0NzgsOSBA
QCBzdGF0aWMgaW50IF9faWF2Zl9zZXR1cF90YyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCB2
b2lkICp0eXBlX2RhdGEpCj4gICAJCX0KPiAgIAl9Cj4gICBleGl0Ogo+ICsJaWYgKGlhdmZfaXNf
cmVtb3ZlX2luX3Byb2dyZXNzKGFkYXB0ZXIpKQo+ICsJCXJldHVybiAwOwo+ICsKPiAgIAlyZXR1
cm4gcmV0Owo+ICAgfQo+ICAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
