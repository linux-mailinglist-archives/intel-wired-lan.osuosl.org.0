Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B73640C29E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 11:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46573404D6;
	Wed, 15 Sep 2021 09:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K6h3uU8806GP; Wed, 15 Sep 2021 09:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F327404C2;
	Wed, 15 Sep 2021 09:16:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8ECB71BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 09:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89AF36071C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 09:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id stzrvxErlHYp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 09:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB0656066D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 09:16:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="202434509"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="202434509"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 02:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="544760187"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Sep 2021 02:16:02 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Sep 2021 11:15:59 +0200
Message-Id: <20210915091559.27096-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
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
IHN1cHBvcnRlZC4KClNpZ25lZC1vZmYtYnk6IEJyZXR0IENyZWVsZXkgPGJyZXR0LmNyZWVsZXlA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXRldXN6IFBhbGN6ZXdza2kgPG1hdGV1c3oucGFs
Y3pld3NraUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX3R4cnguYyB8IDcwICsrKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUx
IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl90eHJ4LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmZfdHhyeC5jCmluZGV4IDM1MjVlYWIuLjMxMjg2Y2YgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl90eHJ4LmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cnguYwpAQCAtMzY4LDM1ICszNjgsNjYg
QEAgdm9pZCBpYXZmX2ZvcmNlX3diKHN0cnVjdCBpYXZmX3ZzaSAqdnNpLCBzdHJ1Y3QgaWF2Zl9x
X3ZlY3RvciAqcV92ZWN0b3IpCiAJICAgICB2YWwpOwogfQogCi1zdGF0aWMgaW5saW5lIGJvb2wg
aWF2Zl9jb250YWluZXJfaXNfcngoc3RydWN0IGlhdmZfcV92ZWN0b3IgKnFfdmVjdG9yLAotCQkJ
CQlzdHJ1Y3QgaWF2Zl9yaW5nX2NvbnRhaW5lciAqcmMpCitzdGF0aWMgYm9vbCBpYXZmX2NvbnRh
aW5lcl9pc19yeChzdHJ1Y3QgaWF2Zl9xX3ZlY3RvciAqcV92ZWN0b3IsCisJCQkJIHN0cnVjdCBp
YXZmX3JpbmdfY29udGFpbmVyICpyYykKIHsKIAlyZXR1cm4gJnFfdmVjdG9yLT5yeCA9PSByYzsK
IH0KIAotc3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQgaWF2Zl9pdHJfZGl2aXNvcihzdHJ1Y3Qg
aWF2Zl9xX3ZlY3RvciAqcV92ZWN0b3IpCi17Ci0JdW5zaWduZWQgaW50IGRpdmlzb3I7CisjZGVm
aW5lIElBVkZfQUlNX01VTFRJUExJRVJfMTAwRwkyNTYwCisjZGVmaW5lIElBVkZfQUlNX01VTFRJ
UExJRVJfNTBHIAkxMjgwCisjZGVmaW5lIElBVkZfQUlNX01VTFRJUExJRVJfNDBHIAkxMDI0Cisj
ZGVmaW5lIElBVkZfQUlNX01VTFRJUExJRVJfMjBHIAk1MTIKKyNkZWZpbmUgSUFWRl9BSU1fTVVM
VElQTElFUl8xMEcgCTI1NgorI2RlZmluZSBJQVZGX0FJTV9NVUxUSVBMSUVSXzFHICAJMzIKIAot
CXN3aXRjaCAocV92ZWN0b3ItPmFkYXB0ZXItPmxpbmtfc3BlZWQpIHsKK3N0YXRpYyB1bnNpZ25l
ZCBpbnQgaWF2Zl9tYnBzX2l0cl9tdWx0aXBsaWVyKHUzMiBzcGVlZF9tYnBzKQoreworCXN3aXRj
aCAoc3BlZWRfbWJwcykgeworCWNhc2UgU1BFRURfMTAwMDAwOgorCQlyZXR1cm4gSUFWRl9BSU1f
TVVMVElQTElFUl8xMDBHOworCWNhc2UgU1BFRURfNTAwMDA6CisJCXJldHVybiBJQVZGX0FJTV9N
VUxUSVBMSUVSXzUwRzsKKwljYXNlIFNQRUVEXzQwMDAwOgorCQlyZXR1cm4gSUFWRl9BSU1fTVVM
VElQTElFUl80MEc7CisJY2FzZSBTUEVFRF8yNTAwMDoKKwljYXNlIFNQRUVEXzIwMDAwOgorCQly
ZXR1cm4gSUFWRl9BSU1fTVVMVElQTElFUl8yMEc7CisJY2FzZSBTUEVFRF8xMDAwMDoKKwlkZWZh
dWx0OgorCQlyZXR1cm4gSUFWRl9BSU1fTVVMVElQTElFUl8xMEc7CisJY2FzZSBTUEVFRF8xMDAw
OgorCWNhc2UgU1BFRURfMTAwOgorCQlyZXR1cm4gSUFWRl9BSU1fTVVMVElQTElFUl8xRzsKKwl9
Cit9CivigIsKK3N0YXRpYyB1bnNpZ25lZCBpbnQKK2lhdmZfdmlydGNobmxfaXRyX211bHRpcGxp
ZXIoZW51bSB2aXJ0Y2hubF9saW5rX3NwZWVkIHNwZWVkX3ZpcnRjaG5sKQoreworCXN3aXRjaCAo
c3BlZWRfdmlydGNobmwpIHsKIAljYXNlIFZJUlRDSE5MX0xJTktfU1BFRURfNDBHQjoKLQkJZGl2
aXNvciA9IElBVkZfSVRSX0FEQVBUSVZFX01JTl9JTkMgKiAxMDI0OwotCQlicmVhazsKKwkJcmV0
dXJuIElBVkZfQUlNX01VTFRJUExJRVJfNDBHOwogCWNhc2UgVklSVENITkxfTElOS19TUEVFRF8y
NUdCOgogCWNhc2UgVklSVENITkxfTElOS19TUEVFRF8yMEdCOgotCQlkaXZpc29yID0gSUFWRl9J
VFJfQURBUFRJVkVfTUlOX0lOQyAqIDUxMjsKLQkJYnJlYWs7Ci0JZGVmYXVsdDoKKwkJcmV0dXJu
IElBVkZfQUlNX01VTFRJUExJRVJfMjBHOwogCWNhc2UgVklSVENITkxfTElOS19TUEVFRF8xMEdC
OgotCQlkaXZpc29yID0gSUFWRl9JVFJfQURBUFRJVkVfTUlOX0lOQyAqIDI1NjsKLQkJYnJlYWs7
CisJZGVmYXVsdDoKKwkJcmV0dXJuIElBVkZfQUlNX01VTFRJUExJRVJfMTBHOwogCWNhc2UgVklS
VENITkxfTElOS19TUEVFRF8xR0I6CiAJY2FzZSBWSVJUQ0hOTF9MSU5LX1NQRUVEXzEwME1COgot
CQlkaXZpc29yID0gSUFWRl9JVFJfQURBUFRJVkVfTUlOX0lOQyAqIDMyOwotCQlicmVhazsKKwkJ
cmV0dXJuIElBVkZfQUlNX01VTFRJUExJRVJfMUc7CiAJfQotCi0JcmV0dXJuIGRpdmlzb3I7Cit9
CivigIsKK3N0YXRpYyB1bnNpZ25lZCBpbnQgaWF2Zl9pdHJfZGl2aXNvcihzdHJ1Y3QgaWF2Zl9h
ZGFwdGVyICphZGFwdGVyKQoreworCWlmIChBRFZfTElOS19TVVBQT1JUKGFkYXB0ZXIpKQorCQly
ZXR1cm4gSUFWRl9JVFJfQURBUFRJVkVfTUlOX0lOQyAqCisJCQlpYXZmX21icHNfaXRyX211bHRp
cGxpZXIoYWRhcHRlci0+bGlua19zcGVlZF9tYnBzKTsKKwllbHNlCisJCXJldHVybiBJQVZGX0lU
Ul9BREFQVElWRV9NSU5fSU5DICoKKwkJCWlhdmZfdmlydGNobmxfaXRyX211bHRpcGxpZXIoYWRh
cHRlci0+bGlua19zcGVlZCk7CiB9CiAKIC8qKgpAQCAtNTg2LDggKzYxNyw5IEBAIGFkanVzdF9i
eV9zaXplOgogCSAqIFVzZSBhZGRpdGlvbiBhcyB3ZSBoYXZlIGFscmVhZHkgcmVjb3JkZWQgdGhl
IG5ldyBsYXRlbmN5IGZsYWcKIAkgKiBmb3IgdGhlIElUUiB2YWx1ZS4KIAkgKi8KLQlpdHIgKz0g
RElWX1JPVU5EX1VQKGF2Z193aXJlX3NpemUsIGlhdmZfaXRyX2Rpdmlzb3IocV92ZWN0b3IpKSAq
Ci0JICAgICAgIElBVkZfSVRSX0FEQVBUSVZFX01JTl9JTkM7CisJaXRyICs9IERJVl9ST1VORF9V
UChhdmdfd2lyZV9zaXplLAorCQkJICAgIGlhdmZfaXRyX2Rpdmlzb3IocV92ZWN0b3ItPmFkYXB0
ZXIpKSAqCisJCUlBVkZfSVRSX0FEQVBUSVZFX01JTl9JTkM7CiAKIAlpZiAoKGl0ciAmIElBVkZf
SVRSX01BU0spID4gSUFWRl9JVFJfQURBUFRJVkVfTUFYX1VTRUNTKSB7CiAJCWl0ciAmPSBJQVZG
X0lUUl9BREFQVElWRV9MQVRFTkNZOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
