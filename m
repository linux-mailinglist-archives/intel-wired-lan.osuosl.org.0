Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F379F832B9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 15:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F0B287DAF;
	Tue,  6 Aug 2019 13:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKPbBQlU-Zxl; Tue,  6 Aug 2019 13:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C6E987816;
	Tue,  6 Aug 2019 13:34:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E3EA1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 13:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 387CA2154B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 13:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HsUcQG4YJhC9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2019 13:33:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by silver.osuosl.org (Postfix) with ESMTPS id A6BFD20345
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 13:33:58 +0000 (UTC)
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x76DW2Hs070582; Tue, 6 Aug 2019 09:33:57 -0400
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
 [169.53.41.122])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2u7888p51g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 06 Aug 2019 09:33:57 -0400
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
 by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x76DTOec018882;
 Tue, 6 Aug 2019 13:33:56 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com
 [9.57.198.28]) by ppma04dal.us.ibm.com with ESMTP id 2u51w6rmc4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 06 Aug 2019 13:33:56 +0000
Received: from b01ledav004.gho.pok.ibm.com (b01ledav004.gho.pok.ibm.com
 [9.57.199.109])
 by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x76DXt7w27197858
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 6 Aug 2019 13:33:55 GMT
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D9FE1112066;
 Tue,  6 Aug 2019 13:33:55 +0000 (GMT)
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id ACC11112062;
 Tue,  6 Aug 2019 13:33:55 +0000 (GMT)
Received: from localhost (unknown [9.18.239.191])
 by b01ledav004.gho.pok.ibm.com (Postfix) with ESMTP;
 Tue,  6 Aug 2019 13:33:55 +0000 (GMT)
From: "Mauro S. M. Rodrigues" <maurosr@linux.vnet.ibm.com>
To: intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Tue,  6 Aug 2019 10:33:47 -0300
Message-Id: <20190806133348.17924-1-maurosr@linux.vnet.ibm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-06_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908060137
Subject: [Intel-wired-lan] [PATCH 1/2] i40e: fix hw_dbg usage in
 i40e_hmc_get_object_va
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

The mentioned function references a i40e_hw attribute, as parameter for
hw_dbg, but it doesn't exist in the function scope.
Fixes it by changing  parameters from i40e_hmc_info to i40e_hw which can
retrieve the necessary i40e_hmc_info.

Signed-off-by: Mauro S. M. Rodrigues <maurosr@linux.vnet.ibm.com>
---
 drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
index 994011c38fb4..f059de33a0fd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
+#include "i40e.h"
 #include "i40e_osdep.h"
 #include "i40e_register.h"
 #include "i40e_type.h"
@@ -963,7 +964,7 @@ static i40e_status i40e_set_hmc_context(u8 *context_bytes,
 
 /**
  * i40e_hmc_get_object_va - retrieves an object's virtual address
- * @hmc_info: pointer to i40e_hmc_info struct
+ * @hw: the hardware struct, from which we obtain the i40e_hmc_info pointer
  * @object_base: pointer to u64 to get the va
  * @rsrc_type: the hmc resource type
  * @obj_idx: hmc object index
@@ -972,7 +973,7 @@ static i40e_status i40e_set_hmc_context(u8 *context_bytes,
  * base pointer.  This function is used for LAN Queue contexts.
  **/
 static
-i40e_status i40e_hmc_get_object_va(struct i40e_hmc_info *hmc_info,
+i40e_status i40e_hmc_get_object_va(struct i40e_hw *hw,
 					u8 **object_base,
 					enum i40e_hmc_lan_rsrc_type rsrc_type,
 					u32 obj_idx)
@@ -982,6 +983,7 @@ i40e_status i40e_hmc_get_object_va(struct i40e_hmc_info *hmc_info,
 	struct i40e_hmc_sd_entry *sd_entry;
 	struct i40e_hmc_pd_entry *pd_entry;
 	u32 pd_idx, pd_lmt, rel_pd_idx;
+	struct i40e_hmc_info *hmc_info = &hw->hmc;
 	u64 obj_offset_in_fpm;
 	u32 sd_idx, sd_lmt;
 
@@ -1047,7 +1049,7 @@ i40e_status i40e_clear_lan_tx_queue_context(struct i40e_hw *hw,
 	i40e_status err;
 	u8 *context_bytes;
 
-	err = i40e_hmc_get_object_va(&hw->hmc, &context_bytes,
+	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_TX, queue);
 	if (err < 0)
 		return err;
@@ -1068,7 +1070,7 @@ i40e_status i40e_set_lan_tx_queue_context(struct i40e_hw *hw,
 	i40e_status err;
 	u8 *context_bytes;
 
-	err = i40e_hmc_get_object_va(&hw->hmc, &context_bytes,
+	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_TX, queue);
 	if (err < 0)
 		return err;
@@ -1088,7 +1090,7 @@ i40e_status i40e_clear_lan_rx_queue_context(struct i40e_hw *hw,
 	i40e_status err;
 	u8 *context_bytes;
 
-	err = i40e_hmc_get_object_va(&hw->hmc, &context_bytes,
+	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_RX, queue);
 	if (err < 0)
 		return err;
@@ -1109,7 +1111,7 @@ i40e_status i40e_set_lan_rx_queue_context(struct i40e_hw *hw,
 	i40e_status err;
 	u8 *context_bytes;
 
-	err = i40e_hmc_get_object_va(&hw->hmc, &context_bytes,
+	err = i40e_hmc_get_object_va(hw, &context_bytes,
 				     I40E_HMC_LAN_RX, queue);
 	if (err < 0)
 		return err;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
