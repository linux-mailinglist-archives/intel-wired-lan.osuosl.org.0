Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130653AE493
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 10:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6116D400D0;
	Mon, 21 Jun 2021 08:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gZmvS_JkiAz; Mon, 21 Jun 2021 08:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 647B0400C9;
	Mon, 21 Jun 2021 08:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 285D61BF41F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16DA3400C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-qSAKP9c9L1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 08:11:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6AD1400A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:11:05 +0000 (UTC)
IronPort-SDR: FvCNS+GFwu9cmi15yEho4J5YfBuRYJ0SWS7alYTs4cg/81dYN7TETNNICN0ZwX980+uaDmHxHP
 zQIrmBr2QCwg==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="186491709"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="186491709"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 01:10:26 -0700
IronPort-SDR: pGJPr70spAjOYK+CEMj7121tSn4V1jmS5CKPMEL1zqc4VYrA7cfQvxunN+Wo863ji/quWjGQXD
 F5PtvVJSztsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="453802992"
Received: from amlin-018-224.igk.intel.com ([10.102.18.224])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jun 2021 01:10:25 -0700
From: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Jun 2021 08:10:00 +0000
Message-Id: <1624263000-8709-1-git-send-email-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add trace while
 removing device
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
Cc: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QWRkIGtlcm5lbCB0cmFjZSB0aGF0IGRldmljZSB3YXMgcmVtb3ZlZC4KQ3VycmVudGx5IHRoZXJl
IGlzIG5vIHN1Y2ggaW5mb3JtYXRpb24uCkkuZS4gSG9zdCBhZG1pbiByZW1vdmVzIGEgUENJIGRl
dmljZSBmcm9tIGEgVk0sCnRoYW4gb24gVk0gc2hhbGwgYmUgaW5mbyBhYm91dCB0aGUgZXZlbnQu
CgpUaGlzIHBhdGNoIGFkZHMgaW5mbyBsb2cgdG8gaWF2Zl9yZW1vdmUgZnVuY3Rpb24uCgpTaWdu
ZWQtb2ZmLWJ5OiBBcmthZGl1c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKxJlkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVs
c2tpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
bWFpbi5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYwppbmRleCA0ZmVhZDU5Li5iMmE1ZmNi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5j
CisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMKQEAgLTM5
NzMsNiArMzk3Myw3IEBAIHN0YXRpYyB2b2lkIGlhdmZfcmVtb3ZlKHN0cnVjdCBwY2lfZGV2ICpw
ZGV2KQogCQkJCSBlcnIpOwogCX0KIAorCWRldl9pbmZvKCZhZGFwdGVyLT5wZGV2LT5kZXYsICJS
ZW1vdmluZyBkZXZpY2VcbiIpOwogCS8qIFNodXQgZG93biBhbGwgdGhlIGdhcmJhZ2UgbWFzaGVy
cyBvbiB0aGUgZGV0ZW50aW9uIGxldmVsICovCiAJYWRhcHRlci0+c3RhdGUgPSBfX0lBVkZfUkVN
T1ZFOwogCWFkYXB0ZXItPmFxX3JlcXVpcmVkID0gMDsKLS0gCjEuOC4zLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
