Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A72562FA482
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6368820027;
	Mon, 18 Jan 2021 15:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sB6ULVunCaxd; Mon, 18 Jan 2021 15:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B2642049E;
	Mon, 18 Jan 2021 15:23:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8A311BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A51C185A00
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7GgF5Kgb8w2L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:23:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0233A8577C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:18 +0000 (UTC)
IronPort-SDR: cWUAyKU4C9dD2j3cB255ihcmrOIYNbdcPvvhaNsVnRFNN4jHldJL0QYfzKS2FdM6Dh33UNNMvr
 p0QrjLcUmkTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358055"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358055"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:23:18 -0800
IronPort-SDR: PCz4eqMqNycaZiDIyAVP9JD3a17PQB+Wx9vbw41cIs1WoYRohWvQR86Np+sB3tnCrgYIohP4qa
 /kaJ4CHzTcTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676413"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:23:16 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:18 +0100
Message-Id: <20210118151318.12324-12-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
References: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 11/11] ixgbe: store the result
 of ixgbe_rx_offset() onto ixgbe_ring
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T3V0cHV0IG9mIGl4Z2JlX3J4X29mZnNldCgpIGlzIGJhc2VkIG9uIGV0aHRvb2wncyBwcml2IGZs
YWcgc2V0dGluZywgd2hpY2gKd2hlbiBjaGFuZ2VkLCBjYXVzZXMgUEYgcmVzZXQgKGRpc2FibGVz
IG5hcGksIGZyZWVzIGlycXMsIGxvYWRzCmRpZmZlcmVudCBSeCBtZW0gbW9kZWwsIGV0Yy4pLiBU
aGlzIG1lYW5zIHRoYXQgd2l0aGluIG5hcGkgaXRzIHJlc3VsdCBpcwpjb25zdGFudCBhbmQgdGhl
cmUgaXMgbm8gcmVhc29uIHRvIGNhbGwgaXQgcGVyIGVhY2ggcHJvY2Vzc2VkIGZyYW1lLgoKQWRk
IG5ldyAncnhfb2Zmc2V0JyBmaWVsZCB0byBpeGdiZV9yaW5nIHRoYXQgaXMgbWVhbnQgdG8gaG9s
ZCB0aGUKaXhnYmVfcnhfb2Zmc2V0KCkgcmVzdWx0IGFuZCB1c2UgaXQgd2l0aGluIGl4Z2JlX2Ns
ZWFuX3J4X2lycSgpLgpGdXJ0aGVybW9yZSwgdXNlIGl0IHdpdGhpbiBpeGdiZV9hbGxvY19tYXBw
ZWRfcGFnZSgpLgoKTGFzdCBidXQgbm90IGxlYXN0LCB1bi1pbmxpbmUgdGhlIGZ1bmN0aW9uIG9m
IGludGVyZXN0IGFzIGl0IGxpdmVzIGluIC5jCmZpbGUgc28gbGV0IGNvbXBpbGVyIGRvIHRoZSBk
ZWNpc2lvbiBhYm91dCB0aGUgaW5saW5pbmcuCgpSZXZpZXdlZC1ieTogQmrDtnJuIFTDtnBlbCA8
Ympvcm4udG9wZWxAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kg
PG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmUuaCAgICAgIHwgIDEgKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwgMTUgKysrKysrKystLS0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZS5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmUuaAppbmRleCBkZTBmYzZlY2Y0OTEuLmE2MDQ1NTJmYTYzNCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmUuaAorKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZS5oCkBAIC0zNDksNiArMzQ5LDcg
QEAgc3RydWN0IGl4Z2JlX3JpbmcgewogCQlzdHJ1Y3QgaXhnYmVfdHhfcXVldWVfc3RhdHMgdHhf
c3RhdHM7CiAJCXN0cnVjdCBpeGdiZV9yeF9xdWV1ZV9zdGF0cyByeF9zdGF0czsKIAl9OworCXUx
NiByeF9vZmZzZXQ7CiAJc3RydWN0IHhkcF9yeHFfaW5mbyB4ZHBfcnhxOwogCXN0cnVjdCB4c2tf
YnVmZl9wb29sICp4c2tfcG9vbDsKIAl1MTYgcmluZ19pZHg7CQkvKiB7cngsdHgseGRwfV9yaW5n
IGJhY2sgcmVmZXJlbmNlIGlkeCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhn
YmUvaXhnYmVfbWFpbi5jCmluZGV4IDU2ZGNhNzNkMTU4ZS4uMWY1MThjZmIxZGNhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMKKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCkBAIC0xNTIwLDcg
KzE1MjAsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgaXhnYmVfcnhfY2hlY2tzdW0oc3RydWN0IGl4
Z2JlX3JpbmcgKnJpbmcsCiAJfQogfQogCi1zdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBpeGdi
ZV9yeF9vZmZzZXQoc3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3JpbmcpCitzdGF0aWMgdW5zaWduZWQg
aW50IGl4Z2JlX3J4X29mZnNldChzdHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmluZykKIHsKIAlyZXR1
cm4gcmluZ191c2VzX2J1aWxkX3NrYihyeF9yaW5nKSA/IElYR0JFX1NLQl9QQUQgOiAwOwogfQpA
QCAtMTU2MSw3ICsxNTYxLDcgQEAgc3RhdGljIGJvb2wgaXhnYmVfYWxsb2NfbWFwcGVkX3BhZ2Uo
c3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3JpbmcsCiAKIAliaS0+ZG1hID0gZG1hOwogCWJpLT5wYWdl
ID0gcGFnZTsKLQliaS0+cGFnZV9vZmZzZXQgPSBpeGdiZV9yeF9vZmZzZXQocnhfcmluZyk7CisJ
YmktPnBhZ2Vfb2Zmc2V0ID0gcnhfcmluZy0+cnhfb2Zmc2V0OwogCXBhZ2VfcmVmX2FkZChwYWdl
LCBVU0hSVF9NQVggLSAxKTsKIAliaS0+cGFnZWNudF9iaWFzID0gVVNIUlRfTUFYOwogCXJ4X3Jp
bmctPnJ4X3N0YXRzLmFsbG9jX3J4X3BhZ2UrKzsKQEAgLTIwMDYsOCArMjAwNiw4IEBAIHN0YXRp
YyB2b2lkIGl4Z2JlX2FkZF9yeF9mcmFnKHN0cnVjdCBpeGdiZV9yaW5nICpyeF9yaW5nLAogI2lm
IChQQUdFX1NJWkUgPCA4MTkyKQogCXVuc2lnbmVkIGludCB0cnVlc2l6ZSA9IGl4Z2JlX3J4X3Bn
X3NpemUocnhfcmluZykgLyAyOwogI2Vsc2UKLQl1bnNpZ25lZCBpbnQgdHJ1ZXNpemUgPSByaW5n
X3VzZXNfYnVpbGRfc2tiKHJ4X3JpbmcpID8KLQkJCQlTS0JfREFUQV9BTElHTihJWEdCRV9TS0Jf
UEFEICsgc2l6ZSkgOgorCXVuc2lnbmVkIGludCB0cnVlc2l6ZSA9IHJ4X3JpbmctPnJ4X29mZnNl
dCA/CisJCQkJU0tCX0RBVEFfQUxJR04ocnhfcmluZy0+cnhfb2Zmc2V0ICsgc2l6ZSkgOgogCQkJ
CVNLQl9EQVRBX0FMSUdOKHNpemUpOwogI2VuZGlmCiAJc2tiX2FkZF9yeF9mcmFnKHNrYiwgc2ti
X3NoaW5mbyhza2IpLT5ucl9mcmFncywgcnhfYnVmZmVyLT5wYWdlLApAQCAtMjI1NCw4ICsyMjU0
LDggQEAgc3RhdGljIHVuc2lnbmVkIGludCBpeGdiZV9yeF9mcmFtZV90cnVlc2l6ZShzdHJ1Y3Qg
aXhnYmVfcmluZyAqcnhfcmluZywKICNpZiAoUEFHRV9TSVpFIDwgODE5MikKIAl0cnVlc2l6ZSA9
IGl4Z2JlX3J4X3BnX3NpemUocnhfcmluZykgLyAyOyAvKiBNdXN0IGJlIHBvd2VyLW9mLTIgKi8K
ICNlbHNlCi0JdHJ1ZXNpemUgPSByaW5nX3VzZXNfYnVpbGRfc2tiKHJ4X3JpbmcpID8KLQkJU0tC
X0RBVEFfQUxJR04oSVhHQkVfU0tCX1BBRCArIHNpemUpICsKKwl0cnVlc2l6ZSA9IHJ4X3Jpbmct
PnJ4X29mZnNldCA/CisJCVNLQl9EQVRBX0FMSUdOKHJ4X3JpbmctPnJ4X29mZnNldCArIHNpemUp
ICsKIAkJU0tCX0RBVEFfQUxJR04oc2l6ZW9mKHN0cnVjdCBza2Jfc2hhcmVkX2luZm8pKSA6CiAJ
CVNLQl9EQVRBX0FMSUdOKHNpemUpOwogI2VuZGlmCkBAIC0yMjk4LDYgKzIyOTgsNyBAQCBzdGF0
aWMgaW50IGl4Z2JlX2NsZWFuX3J4X2lycShzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9y
LAogCXVuc2lnbmVkIGludCBtc3MgPSAwOwogI2VuZGlmIC8qIElYR0JFX0ZDT0UgKi8KIAl1MTYg
Y2xlYW5lZF9jb3VudCA9IGl4Z2JlX2Rlc2NfdW51c2VkKHJ4X3JpbmcpOworCXVuc2lnbmVkIGlu
dCBvZmZzZXQgPSByeF9yaW5nLT5yeF9vZmZzZXQ7CiAJdW5zaWduZWQgaW50IHhkcF94bWl0ID0g
MDsKIAlzdHJ1Y3QgeGRwX2J1ZmYgeGRwOwogCkBAIC0yMzM1LDcgKzIzMzYsNiBAQCBzdGF0aWMg
aW50IGl4Z2JlX2NsZWFuX3J4X2lycShzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9yLAog
CiAJCS8qIHJldHJpZXZlIGEgYnVmZmVyIGZyb20gdGhlIHJpbmcgKi8KIAkJaWYgKCFza2IpIHsK
LQkJCXVuc2lnbmVkIGludCBvZmZzZXQgPSBpeGdiZV9yeF9vZmZzZXQocnhfcmluZyk7CiAJCQl1
bnNpZ25lZCBjaGFyICpoYXJkX3N0YXJ0OwogCiAJCQloYXJkX3N0YXJ0ID0gcGFnZV9hZGRyZXNz
KHJ4X2J1ZmZlci0+cGFnZSkgKwpAQCAtNjU4Myw2ICs2NTgzLDcgQEAgaW50IGl4Z2JlX3NldHVw
X3J4X3Jlc291cmNlcyhzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRhcHRlciwKIAogCXJ4X3Jpbmct
Pm5leHRfdG9fY2xlYW4gPSAwOwogCXJ4X3JpbmctPm5leHRfdG9fdXNlID0gMDsKKwlyeF9yaW5n
LT5yeF9vZmZzZXQgPSBpeGdiZV9yeF9vZmZzZXQocnhfcmluZyk7CiAKIAkvKiBYRFAgUlgtcXVl
dWUgaW5mbyAqLwogCWlmICh4ZHBfcnhxX2luZm9fcmVnKCZyeF9yaW5nLT54ZHBfcnhxLCBhZGFw
dGVyLT5uZXRkZXYsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
