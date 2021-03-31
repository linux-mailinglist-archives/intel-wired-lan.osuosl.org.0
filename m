Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0976D350909
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE71A849AB;
	Wed, 31 Mar 2021 21:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOpmvgA2L2ho; Wed, 31 Mar 2021 21:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF3728495A;
	Wed, 31 Mar 2021 21:27:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AA4D1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F40E240EE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s1eJ9_IbxzMV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0949740E92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:53 +0000 (UTC)
IronPort-SDR: HrKiCFtJHlePoa0GkSZa2xQQkYLH5DS2dGY+hmmk3pKZwR0jP1tWIb3yuCF8FwfX8e/Pn0Ur1I
 js6x2gHDfR+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117306"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117306"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:51 -0700
IronPort-SDR: Ykc8nXs3IdVMFR1qNZwlsvbTkvsnwpP/nNHaVF2gzGxcX0qDdBn7tXL5iE/CtlrxcNCcVKJPDW
 sS3yBgvXAxPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819639"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:00 -0700
Message-Id: <20210331211708.55205-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 05/13] ice: Reimplement module reads
 used by ethtool
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

From: Scott W Taylor <scott.w.taylor@intel.com>

There was an excessive increment of the QSFP page, which is
now fixed. Additionally, this new update now reads 8 bytes
at a time and will retry each request if the module/bus is
busy.

Also, prevent reading from upper pages if module does not
support those pages.

Signed-off-by: Scott W Taylor <scott.w.taylor@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 49 ++++++++++++++++----
 1 file changed, 39 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 68c8ad8d157e..06cb86746415 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3914,30 +3914,33 @@ ice_get_module_eeprom(struct net_device *netdev,
 		      struct ethtool_eeprom *ee, u8 *data)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+#define SFF_READ_BLOCK_SIZE 8
+	u8 value[SFF_READ_BLOCK_SIZE] = { 0 };
 	u8 addr = ICE_I2C_EEPROM_DEV_ADDR;
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	enum ice_status status;
 	bool is_sfp = false;
-	unsigned int i;
+	unsigned int i, j;
 	u16 offset = 0;
-	u8 value = 0;
 	u8 page = 0;
 
 	if (!ee || !ee->len || !data)
 		return -EINVAL;
 
-	status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, 0, &value, 1, 0,
+	status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, 0, value, 1, 0,
 				   NULL);
 	if (status)
 		return -EIO;
 
-	if (value == ICE_MODULE_TYPE_SFP)
+	if (value[0] == ICE_MODULE_TYPE_SFP)
 		is_sfp = true;
 
-	for (i = 0; i < ee->len; i++) {
+	memset(data, 0, ee->len);
+	for (i = 0; i < ee->len; i += SFF_READ_BLOCK_SIZE) {
 		offset = i + ee->offset;
+		page = 0;
 
 		/* Check if we need to access the other memory page */
 		if (is_sfp) {
@@ -3953,11 +3956,37 @@ ice_get_module_eeprom(struct net_device *netdev,
 			}
 		}
 
-		status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, !is_sfp,
-					   &value, 1, 0, NULL);
-		if (status)
-			value = 0;
-		data[i] = value;
+		/* Bit 2 of eeprom address 0x02 declares upper
+		 * pages are disabled on QSFP modules.
+		 * SFP modules only ever use page 0.
+		 */
+		if (page == 0 || !(data[0x2] & 0x4)) {
+			/* If i2c bus is busy due to slow page change or
+			 * link management access, call can fail. This is normal.
+			 * So we retry this a few times.
+			 */
+			for (j = 0; j < 4; j++) {
+				status = ice_aq_sff_eeprom(hw, 0, addr, offset, page,
+							   !is_sfp, value,
+							   SFF_READ_BLOCK_SIZE,
+							   0, NULL);
+				netdev_dbg(netdev, "SFF %02X %02X %02X %X = %02X%02X%02X%02X.%02X%02X%02X%02X (%X)\n",
+					   addr, offset, page, is_sfp,
+					   value[0], value[1], value[2], value[3],
+					   value[4], value[5], value[6], value[7],
+					   status);
+				if (status) {
+					usleep_range(1500, 2500);
+					memset(value, 0, SFF_READ_BLOCK_SIZE);
+					continue;
+				}
+				break;
+			}
+
+			/* Make sure we have enough room for the new block */
+			if ((i + SFF_READ_BLOCK_SIZE) < ee->len)
+				memcpy(data + i, value, SFF_READ_BLOCK_SIZE);
+		}
 	}
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
