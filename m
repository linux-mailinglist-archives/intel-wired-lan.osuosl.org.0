Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142FD414256
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 09:09:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 377EA40480;
	Wed, 22 Sep 2021 07:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AaP6cKCbQ7lR; Wed, 22 Sep 2021 07:09:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDD4940418;
	Wed, 22 Sep 2021 07:09:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1EEE1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A095982B53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9EMsN9WhTBzG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 07:09:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B94FA82B34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 07:09:41 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef83.dynamic.kabel-deutschland.de
 [95.90.239.131])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A019661E64760;
 Wed, 22 Sep 2021 09:09:39 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210922065542.3780389-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3bbabd03-317f-7bb5-064e-5e2b648ca689@molgen.mpg.de>
Date: Wed, 22 Sep 2021 09:09:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210922065542.3780389-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 2/2] e1000e: Fixing packet loss
 issues on new platforms
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

RGVhciBTYXNoYSwKCgpUSGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCkFtIDIyLjA5LjIxIHVtIDA4
OjU1IHNjaHJpZWIgU2FzaGEgTmVmdGluOgoKUGxlYXNlIHVzZSBpbXBlcmF0aXZlIG1vb2QgaW4g
dGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnk6IEZpeCDigKYuIE1heWJlOgoKZTEwMDBlOiBGaXgg
cGFja2V0IGxvc3Mgb24gVGlnZXIgTGFrZSBhbmQgbGF0ZXIKCj4gVXBkYXRlIHRoZSBIVyBNQUMg
aW5pdGlhbGl6YXRpb24gZmxvdy4gRG8gbm90IGdhdGUgRE1BIGNsb2NrIGZyb20KPiB0aGUgbW9k
UEhZIGJsb2NrLiBLZWVwaW5nIHRoaXMgY2xvY2sgd2lsbCBwcmV2ZW50IGRyb3AgcGFja2V0cyBz
ZW50Cgpkcm9wcGVkCgo+IGluIGJ1cnN0IG1vZGUgb24gdGhlIEt1bWVyYW4gaW50ZXJmYWNlLgoK
V2hhdCBpcyBLdW1lcmFuPwoKV2hlcmUgaXMgdGhlIG5ldyBIVyBNQUMgaW5pdGlhbGl6YXRpb24g
ZmxvdyBkb2N1bWVudGVkPyBUaGUgc3BlYyBvciBzb21lIAplcnJhdGE/CgpIb3cgY2FuIHRoZSBi
dWcgYmUgcmVwcm9kdWNlZD8KCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MjEzNjUxCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2Vy
bmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjEzMzc3Cj4gRml4ZXM6IGJjN2Y3NWZhOTc4OCAoIk5l
dyBwY2ktZXhwcmVzcyBlMTAwMCBkcml2ZXIiKTsKPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0
aW4gPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwgMTEgKysrKysrKysrKy0KPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmggfCAgMyArKysKPiAgIDIgZmlsZXMgY2hh
bmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+IGluZGV4IDY2ZDcxOTYzMTBlMi4uNWU0
ZmM5YjRlMmFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9pY2g4bGFuLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jCj4gQEAgLTQ4MTMsNyArNDgxMyw3IEBAIHN0YXRpYyBzMzIgZTEwMDBfcmVzZXRfaHdf
aWNoOGxhbihzdHJ1Y3QgZTEwMDBfaHcgKmh3KQo+ICAgc3RhdGljIHMzMiBlMTAwMF9pbml0X2h3
X2ljaDhsYW4oc3RydWN0IGUxMDAwX2h3ICpodykKPiAgIHsKPiAgIAlzdHJ1Y3QgZTEwMDBfbWFj
X2luZm8gKm1hYyA9ICZody0+bWFjOwo+IC0JdTMyIGN0cmxfZXh0LCB0eGRjdGwsIHNub29wOwo+
ICsJdTMyIGN0cmxfZXh0LCB0eGRjdGwsIHNub29wLCBmZmx0X2RiZzsKPiAgIAlzMzIgcmV0X3Zh
bDsKPiAgIAl1MTYgaTsKPiAgIAo+IEBAIC00ODcyLDYgKzQ4NzIsMTUgQEAgc3RhdGljIHMzMiBl
MTAwMF9pbml0X2h3X2ljaDhsYW4oc3RydWN0IGUxMDAwX2h3ICpodykKPiAgIAkJc25vb3AgPSAo
dTMyKX4oUENJRV9OT19TTk9PUF9BTEwpOwo+ICAgCWUxMDAwZV9zZXRfcGNpZV9ub19zbm9vcCho
dywgc25vb3ApOwo+ICAgCj4gKwkvKiBFbmFibGUgd29ya2Fyb3VuZCBmb3IgcGFja2V0IGxvc3Mg
aXNzdWUgb24gVEdQIFBDSAoKTWF5YmU6Cgo+IFdvcmsgYXJvdW5kIHBhY2tldCBsb3NzIGlzc3Vl
IG9uIFRHUCBQQ0ggYW5kIGxhdGVyCgo+ICsJICogRG8gbm90IGdhdGUgRE1BIGNsb2NrIGZyb20g
dGhlIG1vZFBIWSBibG9jawo+ICsJICovCj4gKwlpZiAobWFjLT50eXBlID49IGUxMDAwX3BjaF90
Z3ApIHsKPiArCQlmZmx0X2RiZyA9IGVyMzIoRkZMVF9EQkcpOwoKTWF5YmUgdGhlIHZhcmlhYmxl
IGBjdHJsX2V4dGAgY291bGQgYmUgcmVuYW1lZCB0byBgdG1wYCBvciBgdG1wMzJgLCBhbmQgCnJl
dXNlZC4KCj4gKwkJZmZsdF9kYmcgfD0gRTEwMDBfRkZMVF9EQkdfRE9OVF9HQVRFX1dBS0VfRE1B
X0NMSzsKPiArCQlldzMyKEZGTFRfREJHLCBmZmx0X2RiZyk7Cj4gKwl9Cj4gKwo+ICAgCWN0cmxf
ZXh0ID0gZXIzMihDVFJMX0VYVCk7Cj4gICAJY3RybF9leHQgfD0gRTEwMDBfQ1RSTF9FWFRfUk9f
RElTOwo+ICAgCWV3MzIoQ1RSTF9FWFQsIGN0cmxfZXh0KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uaCBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmgKPiBpbmRleCBkNmEwOTJlNWVlNzQuLjI1MDRiMTFj
MzE2OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5oCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4u
aAo+IEBAIC0yODksNiArMjg5LDkgQEAKPiAgIC8qIFByb3ByaWV0YXJ5IExhdGVuY3kgVG9sZXJh
bmNlIFJlcG9ydGluZyBQQ0kgQ2FwYWJpbGl0eSAqLwo+ICAgI2RlZmluZSBFMTAwMF9QQ0lfTFRS
X0NBUF9MUFQJCTB4QTgKPiAgIAo+ICsvKiBEb24ndCBnYXRlIHdha2UgRE1BIGNsb2NrICovCj4g
KyNkZWZpbmUgRTEwMDBfRkZMVF9EQkdfRE9OVF9HQVRFX1dBS0VfRE1BX0NMSwkweDEwMDAKPiAr
Cj4gICB2b2lkIGUxMDAwZV93cml0ZV9wcm90ZWN0X252bV9pY2g4bGFuKHN0cnVjdCBlMTAwMF9o
dyAqaHcpOwo+ICAgdm9pZCBlMTAwMGVfc2V0X2ttcm5fbG9ja19sb3NzX3dvcmthcm91bmRfaWNo
OGxhbihzdHJ1Y3QgZTEwMDBfaHcgKmh3LAo+ICAgCQkJCQkJICBib29sIHN0YXRlKTsKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
