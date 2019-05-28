Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C552CE18
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2019 20:00:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3859684FB2;
	Tue, 28 May 2019 18:00:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ziBBIraacQ8B; Tue, 28 May 2019 18:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F212F8545B;
	Tue, 28 May 2019 17:59:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A10C31BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8EDD52353A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l98GiycTgQyX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 1EAF5214F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:59:56 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga008.jf.intel.com with ESMTP; 28 May 2019 10:59:56 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.micheal@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2019 10:59:15 -0700
Message-Id: <20190528175921.30534-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S6 1/7] i40e: fix 'Unknown bps' in
 dmesg for 2.5Gb/5Gb speeds
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

This patch fixes 'NIC Link is Up, Unknown bps' message in dmesg
for 2.5Gb/5Gb speeds. This problem is fixed by adding constants
for VIRTCHNL_LINK_SPEED_2_5GB and VIRTCHNL_LINK_SPEED_5GB cases
in the i40e_virtchnl_link_speed() function.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_prototype.h | 4 ++++
 include/linux/avf/virtchnl.h                     | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 882627073dce..eac88bcc6c06 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -350,6 +350,10 @@ i40e_virtchnl_link_speed(enum i40e_aq_link_speed link_speed)
 		return VIRTCHNL_LINK_SPEED_100MB;
 	case I40E_LINK_SPEED_1GB:
 		return VIRTCHNL_LINK_SPEED_1GB;
+	case I40E_LINK_SPEED_2_5GB:
+		return VIRTCHNL_LINK_SPEED_2_5GB;
+	case I40E_LINK_SPEED_5GB:
+		return VIRTCHNL_LINK_SPEED_5GB;
 	case I40E_LINK_SPEED_10GB:
 		return VIRTCHNL_LINK_SPEED_10GB;
 	case I40E_LINK_SPEED_40GB:
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 7605b5919c3a..1fd0ca9257fc 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -75,12 +75,14 @@ enum virtchnl_status_code {
 #define VIRTCHNL_ERR_PARAM VIRTCHNL_STATUS_ERR_PARAM
 #define VIRTCHNL_STATUS_NOT_SUPPORTED VIRTCHNL_STATUS_ERR_NOT_SUPPORTED
 
+#define VIRTCHNL_LINK_SPEED_2_5GB_SHIFT		0x0
 #define VIRTCHNL_LINK_SPEED_100MB_SHIFT		0x1
 #define VIRTCHNL_LINK_SPEED_1000MB_SHIFT	0x2
 #define VIRTCHNL_LINK_SPEED_10GB_SHIFT		0x3
 #define VIRTCHNL_LINK_SPEED_40GB_SHIFT		0x4
 #define VIRTCHNL_LINK_SPEED_20GB_SHIFT		0x5
 #define VIRTCHNL_LINK_SPEED_25GB_SHIFT		0x6
+#define VIRTCHNL_LINK_SPEED_5GB_SHIFT		0x7
 
 enum virtchnl_link_speed {
 	VIRTCHNL_LINK_SPEED_UNKNOWN	= 0,
@@ -90,6 +92,8 @@ enum virtchnl_link_speed {
 	VIRTCHNL_LINK_SPEED_40GB	= BIT(VIRTCHNL_LINK_SPEED_40GB_SHIFT),
 	VIRTCHNL_LINK_SPEED_20GB	= BIT(VIRTCHNL_LINK_SPEED_20GB_SHIFT),
 	VIRTCHNL_LINK_SPEED_25GB	= BIT(VIRTCHNL_LINK_SPEED_25GB_SHIFT),
+	VIRTCHNL_LINK_SPEED_2_5GB	= BIT(VIRTCHNL_LINK_SPEED_2_5GB_SHIFT),
+	VIRTCHNL_LINK_SPEED_5GB		= BIT(VIRTCHNL_LINK_SPEED_5GB_SHIFT),
 };
 
 /* for hsplit_0 field of Rx HMC context */
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
