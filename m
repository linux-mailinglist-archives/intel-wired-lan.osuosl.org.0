Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E1121E1B9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D66458A01E;
	Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCtRXuoQM2xT; Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 480398A0D4;
	Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A88DE1BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5D1387722
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zUiygIK56vBk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 38A1C87513
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: 4482SjpYxEXEZjKWqtsV7nG0L19nEzYGuLBstJeSfHZCctJCsJ0Oqqi+zr+YNBPekht9xQTYs6
 79BCzEhZssdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545914"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545914"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: qH35NeNXKmcOgMsxGFfdpac0DrezFsdYMdIupJOhRI56fpJZ7nJV1CyTdEhFotAcU3ySAg4JFv
 I96+lz01eePQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526696"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:18 -0700
Message-Id: <20200713205318.32425-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 15/15] ice: fix unused parameter
 warning
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

RGVwZW5kaW5nIG9uIFBBR0VfU0laRSwgdGhlIGZvbGxvd2luZyB1bnVzZWQgcGFyYW1ldGVyIHdh
cm5pbmcgY2FuIGJlCnJlcG9ydGVkOgoKZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90eHJ4LmM6IEluIGZ1bmN0aW9uIOKAmGljZV9yeF9mcmFtZV90cnVlc2l6ZeKAmToKZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmM6NTEzOjIxOiB3YXJuaW5nOiB1bnVz
ZWQgcGFyYW1ldGVyIOKAmHNpemXigJkgWy1XdW51c2VkLXBhcmFtZXRlcl0KICAgICAgICB1bnNp
Z25lZCBpbnQgc2l6ZSkKClRoZSAnc2l6ZScgdmFyaWFibGUgaXMgdXNlZCBvbmx5IHdoZW4gUEFH
RV9TSVpFID49IDgxOTIuIEFkZCBfX21heWJlX3VudXNlZCB0bwp0byByZW1vdmUgdGhlIHdhcm5p
bmcuCgpTaWduZWQtb2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYwppbmRleCAwYWFlZDkyZjgwN2Yu
LjkwOWQ1NmIyODM1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV90eHJ4LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4
LmMKQEAgLTUwOSw4ICs1MDksOCBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGljZV9yeF9vZmZzZXQo
c3RydWN0IGljZV9yaW5nICpyeF9yaW5nKQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgdW5zaWdu
ZWQgaW50IGljZV9yeF9mcmFtZV90cnVlc2l6ZShzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsCi0J
CQkJCSAgdW5zaWduZWQgaW50IHNpemUpCitzdGF0aWMgdW5zaWduZWQgaW50CitpY2VfcnhfZnJh
bWVfdHJ1ZXNpemUoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCB1bnNpZ25lZCBpbnQgX19tYXli
ZV91bnVzZWQgc2l6ZSkKIHsKIAl1bnNpZ25lZCBpbnQgdHJ1ZXNpemU7CiAKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
