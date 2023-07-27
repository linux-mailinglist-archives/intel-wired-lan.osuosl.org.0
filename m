Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3244A765559
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 15:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBAD941F34;
	Thu, 27 Jul 2023 13:51:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBAD941F34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690465905;
	bh=KdGjaxBsbbjoQlD1bLBwVAaK+mQd+gh8pLKKXZMPWMY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YAEZMG3lwyeUoOGj0O8eYVuB5/VXzA8q7sB26+M71hMw0rziULsnPOHcLWtoUQZV1
	 RNp5Xh/lgI9uwNyjazGDE0VV20NIKXcNHJB+H1tVFAJJD8J/4/kZG53lqYH4+ayCRh
	 JGeIwhD1zfsHLKUnDFzwso+pfP6yXBrOsakH/SqyOBzEidHj/yL9DXZq/KscDNgit/
	 o5yXozveLM3rip9PncutmEQMwYh2MrSTCkxywp47XlGBFmVZRpT2QJnqtV2kod5Q5x
	 k1QsQkBZPEOEc3RHIEJcVZbOjNf2WWIW1xWorfUGsVSjcGYyVVud3exwMAYnbGXRDt
	 jUm4Ext4piLWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ufrndxgVFa0; Thu, 27 Jul 2023 13:51:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1728E41D62;
	Thu, 27 Jul 2023 13:51:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1728E41D62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16B001BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1D5640217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1D5640217
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgdnLR9krkXe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 13:51:27 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E340400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E340400D0
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="399249124"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="399249124"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:51:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="730271424"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="730271424"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2023 06:51:25 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 15:50:37 +0200
Message-Id: <20230727135037.28472-5-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20230727135037.28472-1-michal.michalik@intel.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690465887; x=1722001887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=449paGY1HdNdGcGPkc1Xws55Lkd+ODvou03RsZgaDiE=;
 b=ZP4jzSQs6HGNkzQ5jUnuM2Sh/2zfXkUkNhbTn71TSrSznjNqeRpSbcjd
 KFsMrgOsVdurVb3LaIDCXfMqEqDQa3tw3u5qMehvR9OrkfL+ZPcrsJbUn
 MrNHXuLzY+IwYlWZsEaiQoyOaTc3ef/6J1C+tx4dLWLnFC83wqobJ1PSy
 F3XsoF/+PRvrm9amZ8HiSL4OveLZI1yyNwbK2rVsRMikW/Li+oKdTdHWt
 ZrhxJhzyGPHCUDkbhFgn3QCE/9ECVf2HC/NuY9rhtEY18OKiaEby69dZx
 fNFPX6KOx3+mOyKRPqbej1WSSgbWZ6ycTv2W5G/irnRDUMEOpgeYhjz8d
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZP4jzSQs
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/4] ice: Remove the FW shared
 parameters
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
Cc: karol.kolacinski@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The only feature using the Firmware (FW) shared parameters was the PTP
clock ID. Since this ID is now shared using auxiliary buss - remove the
FW shared parameters from the code.

Signed-off-by: Michal Michalik <michal.michalik@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  5 --
 drivers/net/ethernet/intel/ice/ice_common.c     | 75 -------------------------
 drivers/net/ethernet/intel/ice/ice_common.h     |  6 --
 3 files changed, 86 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index e38d66e..4b9c397 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -2139,11 +2139,6 @@ struct ice_aqc_driver_shared_params {
 	__le32 addr_low;
 };
 
-enum ice_aqc_driver_params {
-	/* Add new parameters above */
-	ICE_AQC_DRIVER_PARAM_MAX = 16,
-};
-
 /* Lan Queue Overflow Event (direct, 0x1001) */
 struct ice_aqc_event_lan_overflow {
 	__le32 prtdcb_ruptq;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2953a6a..fef66b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5276,81 +5276,6 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 }
 
 /**
- * ice_aq_set_driver_param - Set driver parameter to share via firmware
- * @hw: pointer to the HW struct
- * @idx: parameter index to set
- * @value: the value to set the parameter to
- * @cd: pointer to command details structure or NULL
- *
- * Set the value of one of the software defined parameters. All PFs connected
- * to this device can read the value using ice_aq_get_driver_param.
- *
- * Note that firmware provides no synchronization or locking, and will not
- * save the parameter value during a device reset. It is expected that
- * a single PF will write the parameter value, while all other PFs will only
- * read it.
- */
-int
-ice_aq_set_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
-			u32 value, struct ice_sq_cd *cd)
-{
-	struct ice_aqc_driver_shared_params *cmd;
-	struct ice_aq_desc desc;
-
-	if (idx >= ICE_AQC_DRIVER_PARAM_MAX)
-		return -EIO;
-
-	cmd = &desc.params.drv_shared_params;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_shared_params);
-
-	cmd->set_or_get_op = ICE_AQC_DRIVER_PARAM_SET;
-	cmd->param_indx = idx;
-	cmd->param_val = cpu_to_le32(value);
-
-	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
-}
-
-/**
- * ice_aq_get_driver_param - Get driver parameter shared via firmware
- * @hw: pointer to the HW struct
- * @idx: parameter index to set
- * @value: storage to return the shared parameter
- * @cd: pointer to command details structure or NULL
- *
- * Get the value of one of the software defined parameters.
- *
- * Note that firmware provides no synchronization or locking. It is expected
- * that only a single PF will write a given parameter.
- */
-int
-ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
-			u32 *value, struct ice_sq_cd *cd)
-{
-	struct ice_aqc_driver_shared_params *cmd;
-	struct ice_aq_desc desc;
-	int status;
-
-	if (idx >= ICE_AQC_DRIVER_PARAM_MAX)
-		return -EIO;
-
-	cmd = &desc.params.drv_shared_params;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_shared_params);
-
-	cmd->set_or_get_op = ICE_AQC_DRIVER_PARAM_GET;
-	cmd->param_indx = idx;
-
-	status = ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
-	if (status)
-		return status;
-
-	*value = le32_to_cpu(cmd->param_val);
-
-	return 0;
-}
-
-/**
  * ice_aq_set_gpio
  * @hw: pointer to the hw struct
  * @gpio_ctrl_handle: GPIO controller node handle
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 2e6a0bb..5a016b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -213,12 +213,6 @@ int
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
 int
-ice_aq_set_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
-			u32 value, struct ice_sq_cd *cd);
-int
-ice_aq_get_driver_param(struct ice_hw *hw, enum ice_aqc_driver_params idx,
-			u32 *value, struct ice_sq_cd *cd);
-int
 ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
 		struct ice_sq_cd *cd);
 int
-- 
2.9.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
