Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2614115A0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 15:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4B78827B5;
	Mon, 20 Sep 2021 13:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wpZddwp_7NXm; Mon, 20 Sep 2021 13:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF32482572;
	Mon, 20 Sep 2021 13:25:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E94631BF297
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 13:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E339382572
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 13:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 28SmH4CRVAiT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 13:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8DF9823AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 13:25:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="245537546"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="245537546"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 06:25:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="584681611"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 20 Sep 2021 06:25:48 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Sep 2021 15:25:39 +0200
Message-Id: <20210920132539.24114-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Add support for
 50G/100G in AIM algorithm
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QWR2YW5jZWQgbGluayBzcGVlZCBzdXBwb3J0IHdhcyBhZGRlZCBsb25nIGJhY2ssIGJ1dCBhZGRp
bmcgQUlNIHN1cHBvcnQKd2FzIG1pc3NlZC4gQWRkaW5nIEFJTSBzdXBwb3J0IGZvciBhZHZhbmNl
ZCBsaW5rIHNwZWVkIHN1cHBvcnQKYWxsb3dzIHRoZSBhbGdvcml0aG0gdG8gdGFrZSBpbnRvIGFj
Y291bnQgNTBHLzEwMEcgbGluayBzcGVlZHMuCkFsc28sIG90aGVyIHByZXZpb3VzIHNwZWVkcyBh
cmUgdGFrZW4gaW50byBjb25zaWRlcmF0aW9uIHdoZW4gYWR2YW5jZWQKbGluayBzcGVlZHMgYXJl
IHN1cHBvcnRlZC4KClNpZ25lZC1vZmYtYnk6IEJyZXR0IENyZWVsZXkgYnJldHQuY3JlZWxleUBp
bnRlbC5jb20KU2lnbmVkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3c2tpIG1hdGV1c3oucGFsY3pl
d3NraUBpbnRlbC5jb20KLS0tCiB2MjogUmVtb3ZlZCBidWlsZCBpc3N1ZXMKLS0tCiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdHhyeC5jIHwgNzAgKysrKysrKysrKysrKysr
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cngu
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl90eHJ4LmMKaW5kZXggMzUy
NWVhYi4uMzEyODZjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2
Zi9pYXZmX3R4cnguYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
dHhyeC5jCkBAIC0zNjgsMzUgKzM2OCw2NiBAQCB2b2lkIGlhdmZfZm9yY2Vfd2Ioc3RydWN0IGlh
dmZfdnNpICp2c2ksIHN0cnVjdCBpYXZmX3FfdmVjdG9yICpxX3ZlY3RvcikKIAkgICAgIHZhbCk7
CiB9CiAKLXN0YXRpYyBpbmxpbmUgYm9vbCBpYXZmX2NvbnRhaW5lcl9pc19yeChzdHJ1Y3QgaWF2
Zl9xX3ZlY3RvciAqcV92ZWN0b3IsCi0JCQkJCXN0cnVjdCBpYXZmX3JpbmdfY29udGFpbmVyICpy
YykKK3N0YXRpYyBib29sIGlhdmZfY29udGFpbmVyX2lzX3J4KHN0cnVjdCBpYXZmX3FfdmVjdG9y
ICpxX3ZlY3RvciwKKwkJCQkgc3RydWN0IGlhdmZfcmluZ19jb250YWluZXIgKnJjKQogewogCXJl
dHVybiAmcV92ZWN0b3ItPnJ4ID09IHJjOwogfQogCi1zdGF0aWMgaW5saW5lIHVuc2lnbmVkIGlu
dCBpYXZmX2l0cl9kaXZpc29yKHN0cnVjdCBpYXZmX3FfdmVjdG9yICpxX3ZlY3RvcikKLXsKLQl1
bnNpZ25lZCBpbnQgZGl2aXNvcjsKKyNkZWZpbmUgSUFWRl9BSU1fTVVMVElQTElFUl8xMDBHCTI1
NjAKKyNkZWZpbmUgSUFWRl9BSU1fTVVMVElQTElFUl81MEcgCTEyODAKKyNkZWZpbmUgSUFWRl9B
SU1fTVVMVElQTElFUl80MEcgCTEwMjQKKyNkZWZpbmUgSUFWRl9BSU1fTVVMVElQTElFUl8yMEcg
CTUxMgorI2RlZmluZSBJQVZGX0FJTV9NVUxUSVBMSUVSXzEwRyAJMjU2CisjZGVmaW5lIElBVkZf
QUlNX01VTFRJUExJRVJfMUcgIAkzMgogCi0Jc3dpdGNoIChxX3ZlY3Rvci0+YWRhcHRlci0+bGlu
a19zcGVlZCkgeworc3RhdGljIHVuc2lnbmVkIGludCBpYXZmX21icHNfaXRyX211bHRpcGxpZXIo
dTMyIHNwZWVkX21icHMpCit7CisJc3dpdGNoIChzcGVlZF9tYnBzKSB7CisJY2FzZSBTUEVFRF8x
MDAwMDA6CisJCXJldHVybiBJQVZGX0FJTV9NVUxUSVBMSUVSXzEwMEc7CisJY2FzZSBTUEVFRF81
MDAwMDoKKwkJcmV0dXJuIElBVkZfQUlNX01VTFRJUExJRVJfNTBHOworCWNhc2UgU1BFRURfNDAw
MDA6CisJCXJldHVybiBJQVZGX0FJTV9NVUxUSVBMSUVSXzQwRzsKKwljYXNlIFNQRUVEXzI1MDAw
OgorCWNhc2UgU1BFRURfMjAwMDA6CisJCXJldHVybiBJQVZGX0FJTV9NVUxUSVBMSUVSXzIwRzsK
KwljYXNlIFNQRUVEXzEwMDAwOgorCWRlZmF1bHQ6CisJCXJldHVybiBJQVZGX0FJTV9NVUxUSVBM
SUVSXzEwRzsKKwljYXNlIFNQRUVEXzEwMDA6CisJY2FzZSBTUEVFRF8xMDA6CisJCXJldHVybiBJ
QVZGX0FJTV9NVUxUSVBMSUVSXzFHOworCX0KK30KK+KAiworc3RhdGljIHVuc2lnbmVkIGludAor
aWF2Zl92aXJ0Y2hubF9pdHJfbXVsdGlwbGllcihlbnVtIHZpcnRjaG5sX2xpbmtfc3BlZWQgc3Bl
ZWRfdmlydGNobmwpCit7CisJc3dpdGNoIChzcGVlZF92aXJ0Y2hubCkgewogCWNhc2UgVklSVENI
TkxfTElOS19TUEVFRF80MEdCOgotCQlkaXZpc29yID0gSUFWRl9JVFJfQURBUFRJVkVfTUlOX0lO
QyAqIDEwMjQ7Ci0JCWJyZWFrOworCQlyZXR1cm4gSUFWRl9BSU1fTVVMVElQTElFUl80MEc7CiAJ
Y2FzZSBWSVJUQ0hOTF9MSU5LX1NQRUVEXzI1R0I6CiAJY2FzZSBWSVJUQ0hOTF9MSU5LX1NQRUVE
XzIwR0I6Ci0JCWRpdmlzb3IgPSBJQVZGX0lUUl9BREFQVElWRV9NSU5fSU5DICogNTEyOwotCQli
cmVhazsKLQlkZWZhdWx0OgorCQlyZXR1cm4gSUFWRl9BSU1fTVVMVElQTElFUl8yMEc7CiAJY2Fz
ZSBWSVJUQ0hOTF9MSU5LX1NQRUVEXzEwR0I6Ci0JCWRpdmlzb3IgPSBJQVZGX0lUUl9BREFQVElW
RV9NSU5fSU5DICogMjU2OwotCQlicmVhazsKKwlkZWZhdWx0OgorCQlyZXR1cm4gSUFWRl9BSU1f
TVVMVElQTElFUl8xMEc7CiAJY2FzZSBWSVJUQ0hOTF9MSU5LX1NQRUVEXzFHQjoKIAljYXNlIFZJ
UlRDSE5MX0xJTktfU1BFRURfMTAwTUI6Ci0JCWRpdmlzb3IgPSBJQVZGX0lUUl9BREFQVElWRV9N
SU5fSU5DICogMzI7Ci0JCWJyZWFrOworCQlyZXR1cm4gSUFWRl9BSU1fTVVMVElQTElFUl8xRzsK
IAl9Ci0KLQlyZXR1cm4gZGl2aXNvcjsKK30KK+KAiworc3RhdGljIHVuc2lnbmVkIGludCBpYXZm
X2l0cl9kaXZpc29yKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpCit7CisJaWYgKEFEVl9M
SU5LX1NVUFBPUlQoYWRhcHRlcikpCisJCXJldHVybiBJQVZGX0lUUl9BREFQVElWRV9NSU5fSU5D
ICoKKwkJCWlhdmZfbWJwc19pdHJfbXVsdGlwbGllcihhZGFwdGVyLT5saW5rX3NwZWVkX21icHMp
OworCWVsc2UKKwkJcmV0dXJuIElBVkZfSVRSX0FEQVBUSVZFX01JTl9JTkMgKgorCQkJaWF2Zl92
aXJ0Y2hubF9pdHJfbXVsdGlwbGllcihhZGFwdGVyLT5saW5rX3NwZWVkKTsKIH0KIAogLyoqCkBA
IC01ODYsOCArNjE3LDkgQEAgYWRqdXN0X2J5X3NpemU6CiAJICogVXNlIGFkZGl0aW9uIGFzIHdl
IGhhdmUgYWxyZWFkeSByZWNvcmRlZCB0aGUgbmV3IGxhdGVuY3kgZmxhZwogCSAqIGZvciB0aGUg
SVRSIHZhbHVlLgogCSAqLwotCWl0ciArPSBESVZfUk9VTkRfVVAoYXZnX3dpcmVfc2l6ZSwgaWF2
Zl9pdHJfZGl2aXNvcihxX3ZlY3RvcikpICoKLQkgICAgICAgSUFWRl9JVFJfQURBUFRJVkVfTUlO
X0lOQzsKKwlpdHIgKz0gRElWX1JPVU5EX1VQKGF2Z193aXJlX3NpemUsCisJCQkgICAgaWF2Zl9p
dHJfZGl2aXNvcihxX3ZlY3Rvci0+YWRhcHRlcikpICoKKwkJSUFWRl9JVFJfQURBUFRJVkVfTUlO
X0lOQzsKIAogCWlmICgoaXRyICYgSUFWRl9JVFJfTUFTSykgPiBJQVZGX0lUUl9BREFQVElWRV9N
QVhfVVNFQ1MpIHsKIAkJaXRyICY9IElBVkZfSVRSX0FEQVBUSVZFX0xBVEVOQ1k7Ci0tIAoyLjI3
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
