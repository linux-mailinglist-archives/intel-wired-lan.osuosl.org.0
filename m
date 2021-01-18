Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A292FA47E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD6002049E;
	Mon, 18 Jan 2021 15:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jM0xWpkwNPUY; Mon, 18 Jan 2021 15:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6FF5204B2;
	Mon, 18 Jan 2021 15:23:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F2001BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B59E85ABE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FnSR_jGpWEJS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B3D208565B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:07 +0000 (UTC)
IronPort-SDR: VwWud1ZW2yOYWMeyix6qFJygx138g0YzdeyoLcSnErNg35m5HPNkEebAVsGXZ3z2w+OPLMfnek
 4xRD0eN3Yu6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358030"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358030"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:23:07 -0800
IronPort-SDR: 9Z09z4AQZSOaXL7RKy7c++fmufl2dMwJ7Auq1L5+b+VxYQVh06y4eIeWJTu6M1s1vfTWZWfDTj
 gjID006UC1uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676349"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:23:05 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:13 +0100
Message-Id: <20210118151318.12324-7-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
References: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 06/11] ice: remove redundant
 checks in ice_change_mtu
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

ZGV2X3ZhbGlkYXRlX210dSBjaGVja3MgdGhhdCBtdHUgdmFsdWUgc3BlY2lmaWVkIGJ5IHVzZXIg
aXMgbm90IGxlc3MKdGhhbiBtaW4gbXR1IGFuZCBub3QgZ3JlYXRlciB0aGFuIG1heCBhbGxvd2Vk
IG10dS4gSXQgaXMgYmVpbmcgZG9uZQpiZWZvcmUgY2FsbGluZyB0aGUgbmRvX2NoYW5nZV9tdHUg
ZXhwb3NlZCBieSBkcml2ZXIsIHNvIHJlbW92ZSB0aGVzZQpyZWR1bmRhbnQgY2hlY2tzIGluIGlj
ZV9jaGFuZ2VfbXR1LgoKUmV2aWV3ZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxr
b3dza2lAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bWFpbi5jIHwgOSAtLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKaW5kZXggNmUyNTFkZmZmYzkx
Li44NjhkNGMyMjRlYWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFp
bi5jCkBAIC02MTIzLDE1ICs2MTIzLDYgQEAgc3RhdGljIGludCBpY2VfY2hhbmdlX210dShzdHJ1
Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCBpbnQgbmV3X210dSkKIAkJfQogCX0KIAotCWlmIChuZXdf
bXR1IDwgKGludCluZXRkZXYtPm1pbl9tdHUpIHsKLQkJbmV0ZGV2X2VycihuZXRkZXYsICJuZXcg
TVRVIGludmFsaWQuIG1pbl9tdHUgaXMgJWRcbiIsCi0JCQkgICBuZXRkZXYtPm1pbl9tdHUpOwot
CQlyZXR1cm4gLUVJTlZBTDsKLQl9IGVsc2UgaWYgKG5ld19tdHUgPiAoaW50KW5ldGRldi0+bWF4
X210dSkgewotCQluZXRkZXZfZXJyKG5ldGRldiwgIm5ldyBNVFUgaW52YWxpZC4gbWF4X210dSBp
cyAlZFxuIiwKLQkJCSAgIG5ldGRldi0+bWluX210dSk7Ci0JCXJldHVybiAtRUlOVkFMOwotCX0K
IAkvKiBpZiBhIHJlc2V0IGlzIGluIHByb2dyZXNzLCB3YWl0IGZvciBzb21lIHRpbWUgZm9yIGl0
IHRvIGNvbXBsZXRlICovCiAJZG8gewogCQlpZiAoaWNlX2lzX3Jlc2V0X2luX3Byb2dyZXNzKHBm
LT5zdGF0ZSkpIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
