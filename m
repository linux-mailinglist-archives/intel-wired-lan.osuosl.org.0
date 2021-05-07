Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C1E376A2C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 20:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8FFBF401F0;
	Fri,  7 May 2021 18:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b7W1Zb2HK-nx; Fri,  7 May 2021 18:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 917E1401E5;
	Fri,  7 May 2021 18:56:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46F811C1178
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 18:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3430640EFE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 18:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id svWv5j8Jxe2U for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 May 2021 18:56:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5456840643
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 18:56:40 +0000 (UTC)
IronPort-SDR: 27uLJxcIB8PrhrqVGArb9+obbfOYiz1Z39kKC/If6SQ6uyrgCm9JM6UEGWcP6wCmZz1LaK4mTr
 IEuVY3d6s5xw==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="196777819"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="196777819"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 11:56:39 -0700
IronPort-SDR: /DNFCkL6srFWTlBsgPnu3miWzVFgzbnoWsh3z/nPE1niJyEE8R4Dcd91EhA87Ml1CWpLDdJfCg
 6xW2loIKoYxQ==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533682937"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 11:56:32 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 May 2021 11:56:25 -0700
Message-Id: <20210507185625.2651538-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP on 5Gb links
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

As reported by Alex Sergeev, the i40e driver is incremening the PTP
clock at 10Gb speeds when linked at 5Gb. Fix this bug by making
sure that the right multiplier is selected when linked at 5Gb.

Fixes: 3dbdd6c2f70a ("i40e: Add support for 5Gbps cards")
Reported-by: Alex Sergeev <asergeev@carbonrobotics.com>
Suggested-by: Alex Sergeev <asergeev@carbonrobotics.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index f1f6fc3744e9..7b971b205d36 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -11,13 +11,14 @@
  * operate with the nanosecond field directly without fear of overflow.
  *
  * Much like the 82599, the update period is dependent upon the link speed:
- * At 40Gb link or no link, the period is 1.6ns.
- * At 10Gb link, the period is multiplied by 2. (3.2ns)
+ * At 40Gb, 25Gb, or no link, the period is 1.6ns.
+ * At 10Gb or 5Gb link, the period is multiplied by 2. (3.2ns)
  * At 1Gb link, the period is multiplied by 20. (32ns)
  * 1588 functionality is not supported at 100Mbps.
  */
 #define I40E_PTP_40GB_INCVAL		0x0199999999ULL
 #define I40E_PTP_10GB_INCVAL_MULT	2
+#define I40E_PTP_5GB_INCVAL_MULT	2
 #define I40E_PTP_1GB_INCVAL_MULT	20
 
 #define I40E_PRTTSYN_CTL1_TSYNTYPE_V1  BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
@@ -465,6 +466,9 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
 	case I40E_LINK_SPEED_10GB:
 		mult = I40E_PTP_10GB_INCVAL_MULT;
 		break;
+	case I40E_LINK_SPEED_5GB:
+		mult = I40E_PTP_5GB_INCVAL_MULT;
+		break;
 	case I40E_LINK_SPEED_1GB:
 		mult = I40E_PTP_1GB_INCVAL_MULT;
 		break;

base-commit: a6f8ee58a8e35f7e4380a5efce312e2a5bc27497
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
