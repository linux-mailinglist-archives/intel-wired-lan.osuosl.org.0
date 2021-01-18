Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0332FA476
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 76F25204AD;
	Mon, 18 Jan 2021 15:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJrCz4jUPXlW; Mon, 18 Jan 2021 15:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92E40204A1;
	Mon, 18 Jan 2021 15:23:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05B311BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0093B85A80
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0kSQpBsE-rOv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:22:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B06BA8565B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:22:58 +0000 (UTC)
IronPort-SDR: bK135HXrdE18YDKVvtlodjlx6ZsLQuJFXM6blazyAnfULNPfaDL1FUKfUNju5jdynkbDzB/INO
 1nEhU/v6QiqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358008"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358008"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:22:54 -0800
IronPort-SDR: 30U+n3iALOaiOFOL0prCiNqmVU7aJdQXT673T12J5TqN9XBUB1MyWda2biRUzwwEgeXgH/N75M
 QecKOdeERX0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676287"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:22:52 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:07 +0100
Message-Id: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 00/11] intel driver cleanups
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

SGksCgpUaGlzIHNlcmllcyBpcyBtb3N0bHkgYWJvdXQgdGhlIGNsZWFudXBzIG9uIFJ4IChaQy9u
b3JtYWwpIHBhdGhzIGJvdGggaW4KaWNlIGFuZCBpNDBlIGRyaXZlcnMuIFRoaW5ncyB0aGF0IHN0
YW5kIG91dCBhcmUgdGhlIHNpbXBsaWZhY3Rpb25zIG9mCmljZV9jaGFuZ2VfbXR1IGFuZCBpNDBl
X3hkcF9zZXR1cC4KClRoaXJkIGl0ZXJhdGlvbiBvZiB0aGlzIGluY2x1ZGVzIHBhdGNoZXMgdGhh
dCBvcHRpbWl6ZSB0aGUgaGFuZGxpbmcgb2YKKl9yeF9vZmZzZXQoKSBjYWxscyBwZXIgZWFjaCBw
cm9jZXNzZWQgZnJhbWUuIFNvbWUgY3ljbGVzIGNhbiBiZSBzYXZlZApieSBzdG9yaW5nIHRoZSBy
ZXN1bHQgb2YgdGhhdCBmdW5jdGlvbiBvbnRvIHJ4IHJpbmcuIEZvciB0aGF0LCBJIGFtCnVzaW5n
IGV4aXN0aW5nIGhvbGVzIHdpdGhpbiByaW5nIHN0cnVjdHMgKGNoZWNrZWQgd2l0aCBwYWhvbGUp
LgoKVGhhbmtzIQoKdjM6IHJlYmFzZSwgZml4IGhhbmRsaW5nIHJ4IG9mZnNldAp2MjogZml4IGtk
b2MgaW4gcGF0Y2ggNSAoSmFrdWIpCgoKQmrDtnJuIFTDtnBlbCAoMSk6CiAgaTQwZSwgeHNrOiBT
aW1wbGlmeSB0aGUgZG8td2hpbGUgYWxsb2NhdGlvbiBsb29wCgpNYWNpZWogRmlqYWxrb3dza2kg
KDEwKToKICBpNDBlOiBkcm9wIHJlZHVuZGFudCBjaGVjayB3aGVuIHNldHRpbmcgeGRwIHByb2cK
ICBpNDBlOiBkcm9wIG1pc2xlYWRpbmcgZnVuY3Rpb24gY29tbWVudHMKICBpNDBlOiBhZGp1c3Qg
aTQwZV9pc19ub25fZW9wCiAgaWNlOiBzaW1wbGlmeSBpY2VfcnVuX3hkcAogIGljZTogbW92ZSBz
a2IgcG9pbnRlciBmcm9tIHJ4X2J1ZiB0byByeF9yaW5nCiAgaWNlOiByZW1vdmUgcmVkdW5kYW50
IGNoZWNrcyBpbiBpY2VfY2hhbmdlX210dQogIGljZTogc2tpcCBOVUxMIGNoZWNrIGFnYWluc3Qg
WERQIHByb2cgaW4gWkMgcGF0aAogIGk0MGU6IHN0b3JlIHRoZSByZXN1bHQgb2YgaTQwZV9yeF9v
ZmZzZXQoKSBvbnRvIGk0MGVfcmluZwogIGljZTogc3RvcmUgdGhlIHJlc3VsdCBvZiBpY2Vfcnhf
b2Zmc2V0KCkgb250byBpY2VfcmluZwogIGl4Z2JlOiBzdG9yZSB0aGUgcmVzdWx0IG9mIGl4Z2Jl
X3J4X29mZnNldCgpIG9udG8gaXhnYmVfcmluZwoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMgICB8ICAzIC0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV90eHJ4LmMgICB8IDkxICsrKysrKy0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmggICB8ICAxICsKIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyAgICB8ICA0ICstCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX21haW4uYyAgICAgfCAgOSAtLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV90eHJ4LmMgICAgIHwgODggKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaCAgICAgfCAgMyArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYyAgICAgIHwgIDcgKy0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlLmggICAgICB8ICAxICsKIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyB8IDE1ICstLQogMTAgZmlsZXMgY2hhbmdl
ZCwgODYgaW5zZXJ0aW9ucygrKSwgMTM2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
