Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADA9E1EE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 17:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02D88846EE;
	Wed, 23 Oct 2019 15:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jl29iRJ-D8cr; Wed, 23 Oct 2019 15:09:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EF3884442;
	Wed, 23 Oct 2019 15:09:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60E0C1BF366
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 15:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5CEAA81414
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 15:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YX3ILyX7v+cZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2019 15:09:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 88B6384442
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 15:09:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 08:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="201161738"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga003.jf.intel.com with ESMTP; 23 Oct 2019 08:09:18 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Oct 2019 18:09:17 +0300
Message-Id: <20191023150917.26271-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1] e1000e: Fix compiler warning when
 CONFIG_PM_SLEEP is not set
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

V2hlbiBDT05GSUdfUE1fU0xFRVAgaXMgbm90IGRlZmluZWQgY29tcGlsZXIgY29tcGxhaW4gYXMg
Zm9sbG93OgpDQyBbTV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYu
bwpkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmM6NjMwMjoxMjogd2Fy
bmluZzog4oCYZTEwMDBlX3MwaXhfZW50cnlfZmxvd+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBb
LVd1bnVzZWQtZnVuY3Rpb25dCnN0YXRpYyB2b2lkIGUxMDAwZV9zMGl4X2VudHJ5X2Zsb3coc3Ry
dWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYzo2NDExOjEyOiB3YXJuaW5nOiDigJhlMTAwMGVfczBpeF9leGl0X2Zsb3fi
gJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWZ1bmN0aW9uXQpzdGF0aWMgdm9pZCBl
MTAwMGVfczBpeF9leGl0X2Zsb3coc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCkxEIFtN
XSAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2UxMDAwZS5vCgpBZGQgd3JhcCB0
byBmaXggdGhlc2Ugd2FybmluZ3MuCgpSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxw
a0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMg
fCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCmluZGV4IDIwOTY1YjVkOTc4MC4uMDMyYjg4NjE5
MDU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2
LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCkBAIC02
Mjk3LDYgKzYyOTcsNyBAQCBzdGF0aWMgdm9pZCBlMTAwMGVfZmx1c2hfbHBpYyhzdHJ1Y3QgcGNp
X2RldiAqcGRldikKIAlwbV9ydW50aW1lX3B1dF9zeW5jKG5ldGRldi0+ZGV2LnBhcmVudCk7CiB9
CiAKKyNpZmRlZiBDT05GSUdfUE1fU0xFRVAKIC8qIFMwaXggaW1wbGVtZW50YXRpb24gKi8KIHN0
YXRpYyB2b2lkIGUxMDAwZV9zMGl4X2VudHJ5X2Zsb3coc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFk
YXB0ZXIpCiB7CkBAIC02NDY0LDYgKzY0NjUsNyBAQCBzdGF0aWMgdm9pZCBlMTAwMGVfczBpeF9l
eGl0X2Zsb3coc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCiAJbWFjX2RhdGEgJj0gfkUx
MDAwX0NUUkxfRVhUX0ZPUkNFX1NNQlVTOwogCWV3MzIoQ1RSTF9FWFQsIG1hY19kYXRhKTsKIH0K
KyNlbmRpZiAvKiBDT05GSUdfUE1fU0xFRVAgKi8KIAogc3RhdGljIGludCBlMTAwMGVfcG1fZnJl
ZXplKHN0cnVjdCBkZXZpY2UgKmRldikKIHsKLS0gCjIuMTEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
