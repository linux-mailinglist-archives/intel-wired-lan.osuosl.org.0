Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E9971F3F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 20:24:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F55284E38;
	Tue, 23 Jul 2019 18:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F0rmZ83PgHL4; Tue, 23 Jul 2019 18:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2CC284E10;
	Tue, 23 Jul 2019 18:24:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D32391BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CD216832C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFwS7-03cZR0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 18:24:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0F1E83307
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 11:24:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="253311777"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga001.jf.intel.com with ESMTP; 23 Jul 2019 11:24:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 06:03:35 -0400
Message-Id: <20190723100345.57522-2-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723100345.57522-1-alice.michael@intel.com>
References: <20190723100345.57522-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S8 02/12] i40e: Add drop mode
 parameter to set mac config
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
Cc: Sylwia Wnuczko <sylwia.wnuczko@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogU3lsd2lhIFdudWN6a28gPHN5bHdpYS53bnVjemtvQGludGVsLmNvbT4KClRoaXMgcGF0
Y2ggYWRkcyAiZHJvcCBtb2RlIiBwYXJhbWV0ZXIgdG8gc2V0IG1hYyBjb25maWcgQVEgY29tbWFu
ZC4KVGhpcyBiaXQgY29udHJvbHMgdGhlIGJlaGF2aW9yIHdoZW4gYSBuby1kcm9wIHBhY2tldCBp
cyBibG9ja2luZyBhIFRDCnF1ZXVlLgowIOKAkyBUaGUgUEYgZHJpdmVyIGlzIG5vdGlmaWVkLgox
IOKAkyBUaGUgYmxvY2tpbmcgcGFja2V0IGlzIGRyb3BwZWQgYW5kIHRoZW4gdGhlIFBGIGRyaXZl
ciBpcyBub3RpZmllZC4KClNpZ25lZC1vZmYtYnk6IFN5bHdpYSBXbnVjemtvIDxzeWx3aWEud251
Y3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X2FkbWlucS5jIHwgIDQgKystCiAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1p
bnFfY21kLmggfCAyOSArKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfdHlwZS5oICAgfCAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDE5IGluc2Vy
dGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9hZG1pbnEuYwppbmRleCA4MTRhY2JlNzlmZmQuLjcyYzA0ODgxZDI5MCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5jCisr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEuYwpAQCAtNjEw
LDggKzYxMCwxMCBAQCBpNDBlX3N0YXR1cyBpNDBlX2luaXRfYWRtaW5xKHN0cnVjdCBpNDBlX2h3
ICpodykKIAogCWlmIChody0+YXEuYXBpX21hal92ZXIgPiAxIHx8CiAJICAgIChody0+YXEuYXBp
X21hal92ZXIgPT0gMSAmJgotCSAgICAgaHctPmFxLmFwaV9taW5fdmVyID49IDgpKQorCSAgICAg
aHctPmFxLmFwaV9taW5fdmVyID49IDgpKSB7CiAJCWh3LT5mbGFncyB8PSBJNDBFX0hXX0ZMQUdf
RldfTExEUF9QRVJTSVNURU5UOworCQlody0+ZmxhZ3MgfD0gSTQwRV9IV19GTEFHX0RST1BfTU9E
RTsKKwl9CiAKIAlpZiAoaHctPmFxLmFwaV9tYWpfdmVyID4gSTQwRV9GV19BUElfVkVSU0lPTl9N
QUpPUikgewogCQlyZXRfY29kZSA9IEk0MEVfRVJSX0ZJUk1XQVJFX0FQSV9WRVJTSU9OOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9jbWQu
aCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnFfY21kLmgKaW5k
ZXggNjUzNjAyM2ZhMDc0Li40ZDk2NmQ4MDMwNWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnFfY21kLmgKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9jbWQuaApAQCAtMjA1MSwyMCArMjA1MSwyMSBA
QCBJNDBFX0NIRUNLX0NNRF9MRU5HVEgoaTQwZV9hcV9zZXRfcGh5X2NvbmZpZyk7CiBzdHJ1Y3Qg
aTQwZV9hcV9zZXRfbWFjX2NvbmZpZyB7CiAJX19sZTE2CW1heF9mcmFtZV9zaXplOwogCXU4CXBh
cmFtczsKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19DUkNfRU4JCTB4MDQKLSNkZWZp
bmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfTUFTSwkweDc4Ci0jZGVmaW5lIEk0MEVf
QVFfU0VUX01BQ19DT05GSUdfUEFDSU5HX1NISUZUCTMKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFD
X0NPTkZJR19QQUNJTkdfTk9ORQkweDAKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19Q
QUNJTkdfMUJfMTNUWAkweEYKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdf
MURXXzlUWAkweDkKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfMURXXzRU
WAkweDgKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfM0RXXzdUWAkweDcK
LSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfMkRXXzNUWAkweDYKLSNkZWZp
bmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfMURXXzFUWAkweDUKLSNkZWZpbmUgSTQw
RV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfM0RXXzJUWAkweDQKLSNkZWZpbmUgSTQwRV9BUV9T
RVRfTUFDX0NPTkZJR19QQUNJTkdfN0RXXzNUWAkweDMKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFD
X0NPTkZJR19QQUNJTkdfNERXXzFUWAkweDIKLSNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJ
R19QQUNJTkdfOURXXzFUWAkweDEKKyNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19DUkNf
RU4JCQkweDA0CisjZGVmaW5lIEk0MEVfQVFfU0VUX01BQ19DT05GSUdfUEFDSU5HX01BU0sJCTB4
NzgKKyNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfU0hJRlQJCTMKKyNkZWZp
bmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfTk9ORQkJMHgwCisjZGVmaW5lIEk0MEVf
QVFfU0VUX01BQ19DT05GSUdfUEFDSU5HXzFCXzEzVFgJCTB4RgorI2RlZmluZSBJNDBFX0FRX1NF
VF9NQUNfQ09ORklHX1BBQ0lOR18xRFdfOVRYCQkweDkKKyNkZWZpbmUgSTQwRV9BUV9TRVRfTUFD
X0NPTkZJR19QQUNJTkdfMURXXzRUWAkJMHg4CisjZGVmaW5lIEk0MEVfQVFfU0VUX01BQ19DT05G
SUdfUEFDSU5HXzNEV183VFgJCTB4NworI2RlZmluZSBJNDBFX0FRX1NFVF9NQUNfQ09ORklHX1BB
Q0lOR18yRFdfM1RYCQkweDYKKyNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdf
MURXXzFUWAkJMHg1CisjZGVmaW5lIEk0MEVfQVFfU0VUX01BQ19DT05GSUdfUEFDSU5HXzNEV18y
VFgJCTB4NAorI2RlZmluZSBJNDBFX0FRX1NFVF9NQUNfQ09ORklHX1BBQ0lOR183RFdfM1RYCQkw
eDMKKyNkZWZpbmUgSTQwRV9BUV9TRVRfTUFDX0NPTkZJR19QQUNJTkdfNERXXzFUWAkJMHgyCisj
ZGVmaW5lIEk0MEVfQVFfU0VUX01BQ19DT05GSUdfUEFDSU5HXzlEV18xVFgJCTB4MQorI2RlZmlu
ZSBJNDBFX0FRX1NFVF9NQUNfQ09ORklHX0RST1BfQkxPQ0tJTkdfUEFDS0VUX0VOCTB4ODAKIAl1
OAl0eF90aW1lcl9wcmlvcml0eTsgLyogYml0bWFwICovCiAJX19sZTE2CXR4X3RpbWVyX3ZhbHVl
OwogCV9fbGUxNglmY19yZWZyZXNoX3RocmVzaG9sZDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfdHlwZS5oCmluZGV4IDJhNjIxOWQ2Njc3MS4uMDZlMjQ5OWRlMzYzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHlwZS5oCisr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmgKQEAgLTYyNCw2
ICs2MjQsNyBAQCBzdHJ1Y3QgaTQwZV9odyB7CiAjZGVmaW5lIEk0MEVfSFdfRkxBR19OVk1fUkVB
RF9SRVFVSVJFU19MT0NLIEJJVF9VTEwoMykKICNkZWZpbmUgSTQwRV9IV19GTEFHX0ZXX0xMRFBf
U1RPUFBBQkxFICAgICAgQklUX1VMTCg0KQogI2RlZmluZSBJNDBFX0hXX0ZMQUdfRldfTExEUF9Q
RVJTSVNURU5UICAgICBCSVRfVUxMKDUpCisjZGVmaW5lIEk0MEVfSFdfRkxBR19EUk9QX01PREUJ
CSAgICBCSVRfVUxMKDcpCiAJdTY0IGZsYWdzOwogCiAJLyogVXNlZCBpbiBzZXQgc3dpdGNoIGNv
bmZpZyBBUSBjb21tYW5kICovCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
