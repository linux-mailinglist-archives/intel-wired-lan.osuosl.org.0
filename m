Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CFF5B69E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 10:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF70282AA9;
	Tue, 13 Sep 2022 08:52:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF70282AA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663059179;
	bh=TTOJ2MrG1wSvCj8SUfrUm2vmqus3hiblwQVA5fwaLpk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2vbMhKgKmvr9SyY1YSpmXQLVwZdhHxDpf4st2Gg5CEj1MlhRAnWcDuZPBVexe1/AN
	 qRmYF+umBavqXs1HgE6l3PvmBthdNchDcXNGNvRX0510Vw9uDiGLzX8fuZSXmkE8G7
	 yUK5D2Z4i66ADv6rczadTkGNoo6L3Jb3QDDf6DRsS/UHv+VoEXjWhkHOPLArCcGZcH
	 bD4H1UDvR9dQJT8eW7fgKW0vnuQQRvqt0GprkD7FOAdtN388dgLdwpJ3v4nMKi0aYU
	 EsoYbALOcCXk+QgrwXC6SKOne0ABHYanc7DmbjHWvr2z81jkOqt9uC0dnEE4hqOjs2
	 de1rRYxZIxTHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mXazWUPqh72M; Tue, 13 Sep 2022 08:52:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC85C82AA7;
	Tue, 13 Sep 2022 08:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC85C82AA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAD191BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 08:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4F6B40912
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 08:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4F6B40912
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zizcwJWqyXhs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 08:52:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08CA540470
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08CA540470
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 08:52:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="362034331"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="362034331"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 01:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="944978391"
Received: from lajkonik.igk.intel.com ([10.211.8.72])
 by fmsmga005.fm.intel.com with ESMTP; 13 Sep 2022 01:52:50 -0700
From: arkadiusz.kubalewski@intel.com
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Sep 2022 10:51:39 +0200
Message-Id: <20220913085139.8581-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663059172; x=1694595172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mt59QLUb8OlEV6XEsjlokjXsZaxtg5YeHuLVzkmD3f0=;
 b=LPpPBfZ96Vo1rg6kkSaEUP4j8k+ToRYRS6X/KlzDlyvw13apRXYWJGR/
 eqUj7/rIx8GHAxCZKif1eLFB+NPgXkhi1iluVbulRfWy1j94GfUjDBtNt
 52hFts1ULjJzG47MT+01ascLLx5PxeCyiBr/CrV1PcJSoNxVFx9tkMmO3
 Zldnh01PPsf/L47N5LBPhkpM496LtNfpvo/MgIErp5QYZSNMLOjhp9C0b
 MfqWb+eG2/eSvDUyT0fQxiVrKcUgAhjy3Ql1wIsPnHAB0L2jqa4qUCeZo
 CX4IDS4IkivW/+0zkFzn4SmNh0lXlu7nhqluGenMP7shUObtkLddRSTw0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LPpPBfZ9
Subject: [Intel-wired-lan] [PATCH net-next] ice: support features on new
 E810T variants
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Add new sub-device ids required for proper initialization of features
on E810T devices supported by ice driver.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 18 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_devids.h |  5 +++++
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2a4b68ef7d55..e30d6db6c8e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -182,9 +182,23 @@ bool ice_is_e810t(struct ice_hw *hw)
 {
 	switch (hw->device_id) {
 	case ICE_DEV_ID_E810C_SFP:
-		if (hw->subsystem_device_id == ICE_SUBDEV_ID_E810T ||
-		    hw->subsystem_device_id == ICE_SUBDEV_ID_E810T2)
+		switch (hw->subsystem_device_id) {
+		case ICE_SUBDEV_ID_E810T:
+		case ICE_SUBDEV_ID_E810T2:
+		case ICE_SUBDEV_ID_E810T3:
+		case ICE_SUBDEV_ID_E810T4:
+		case ICE_SUBDEV_ID_E810T6:
+		case ICE_SUBDEV_ID_E810T7:
 			return true;
+		}
+		break;
+	case ICE_DEV_ID_E810C_QSFP:
+		switch (hw->subsystem_device_id) {
+		case ICE_SUBDEV_ID_E810T2:
+		case ICE_SUBDEV_ID_E810T3:
+		case ICE_SUBDEV_ID_E810T5:
+			return true;
+		}
 		break;
 	default:
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index b41bc3dc1745..6d560d1c74a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -24,6 +24,11 @@
 #define ICE_DEV_ID_E810C_SFP		0x1593
 #define ICE_SUBDEV_ID_E810T		0x000E
 #define ICE_SUBDEV_ID_E810T2		0x000F
+#define ICE_SUBDEV_ID_E810T3		0x0010
+#define ICE_SUBDEV_ID_E810T4		0x0011
+#define ICE_SUBDEV_ID_E810T5		0x0012
+#define ICE_SUBDEV_ID_E810T6		0x02E9
+#define ICE_SUBDEV_ID_E810T7		0x02EA
 /* Intel(R) Ethernet Controller E810-XXV for backplane */
 #define ICE_DEV_ID_E810_XXV_BACKPLANE	0x1599
 /* Intel(R) Ethernet Controller E810-XXV for QSFP */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
