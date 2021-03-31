Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5BD35029B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 16:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD3A64024F;
	Wed, 31 Mar 2021 14:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aTDhGpM9OiQg; Wed, 31 Mar 2021 14:46:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD2D840248;
	Wed, 31 Mar 2021 14:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 889881BF395
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 14:46:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84A8640248
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 14:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxT0GBJufVrX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 14:46:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 624E7400C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 14:46:34 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1lRc72-0001aa-G4; Wed, 31 Mar 2021 14:46:28 +0000
From: Colin King <colin.king@canonical.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Chinh T Cao <chinh.t.cao@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Wed, 31 Mar 2021 15:46:28 +0100
Message-Id: <20210331144628.1423252-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH][next] ice: Fix potential infinite loop
 when using u8 loop counter
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Colin Ian King <colin.king@canonical.com>

A for-loop is using a u8 loop counter that is being compared to
a u32 cmp_dcbcfg->numapp to check for the end of the loop. If
cmp_dcbcfg->numapp is larger than 255 then the counter j will wrap
around to zero and hence an infinite loop occurs. Fix this by making
counter j the same type as cmp_dcbcfg->numapp.

Addresses-Coverity: ("Infinite loop")
Fixes: aeac8ce864d9 ("ice: Recognize 860 as iSCSI port in CEE mode")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 43c6af42de8a..ee4f320d4823 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -747,8 +747,8 @@ ice_cee_to_dcb_cfg(struct ice_aqc_get_cee_dcb_cfg_resp *cee_cfg,
 		   struct ice_port_info *pi)
 {
 	u32 status, tlv_status = le32_to_cpu(cee_cfg->tlv_status);
-	u32 ice_aqc_cee_status_mask, ice_aqc_cee_status_shift;
-	u8 i, j, err, sync, oper, app_index, ice_app_sel_type;
+	u32 ice_aqc_cee_status_mask, ice_aqc_cee_status_shift, j;
+	u8 i, err, sync, oper, app_index, ice_app_sel_type;
 	u16 app_prio = le16_to_cpu(cee_cfg->oper_app_prio);
 	u16 ice_aqc_cee_app_mask, ice_aqc_cee_app_shift;
 	struct ice_dcbx_cfg *cmp_dcbcfg, *dcbcfg;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
