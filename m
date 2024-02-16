Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC5B858859
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 23:06:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A132C4217C;
	Fri, 16 Feb 2024 22:06:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJgOqCH17zhf; Fri, 16 Feb 2024 22:06:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DCD842175
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708121213;
	bh=Xv3nrUGWsuvcZf5ijddZHXAx4SXMRMLWOWwM8aGZi6c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3wgngDxFSZKXTqFEpGMAfI6l+Ig01QXX9EjGh3+51Ioq7B1iAsrHtWKbquzbivIzo
	 VOYGi4FnZTAVa8Hx2nQqKmeSNgNihTJ/8BEM69bo8SZFyoz7ZRmyMr+0D9yGRBDlg+
	 lnLXCr56u+HQHwrSjaidtfP6es6i0h2cqcO1eorj+SSguCJ3ZVTtMtrWAnFOBOaKoK
	 wYuesKW+PYK9Z6XNOs7V87B11Kcro+cICNM7Npq1oxTc/fnwqSlArJVdadH6bUbNM+
	 fb2YRe1zOOyN3/FMml58gllXT5cvKkn0WuxopGBz5VIdms8+LTTfoq10Jvjc/92GTZ
	 5eDqhsPrO2QZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DCD842175;
	Fri, 16 Feb 2024 22:06:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DB0A1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2BEB3840B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uXHTGZ0sl_eB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67366840AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67366840AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67366840AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="2134201"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="2134201"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="3983854"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 16 Feb 2024 14:06:38 -0800
Message-ID: <20240216220638.2558451-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240216220638.2558451-1-jacob.e.keller@intel.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708121205; x=1739657205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gQn5bHYIlJihZ1oVwJZmrjgSJBZjdsqFcUMZfAyWmsI=;
 b=Q/xTZLayOZgNPsqgs5NkW/oXPlZjFl3XIaCm22X/lDrMl5Rtljk+XJuv
 +CsqWEjCK/MU+EDfsUlFD+pFsYXonJf9zdpooYXf1GoVvPTpUZwpRGZ8A
 sqCl2yCM0suyCaVniRI/hutIJd0adAQwzz2dhztrdylgSqJLnfLuWQ2B8
 LDCnlMtEN9q0h1t41jbahpVzaMHUI93YzOBsD41rTLutlU89ZFxHb322E
 YhYKNKBRB/XwivzeGhZuWipLMr1Wbyr7xFGft2/D+UJHInHqOnnZoqalx
 UFNK8B1QEWY9TsmRD9EshqLjkCnkvRJ2MrS3A4vNZ45xE4mL/Cus2sRJU
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q/xTZLay
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: remove vf->lan_vsi_num
 field
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The lan_vsi_num field of the VF structure is no longer used for any
purpose. Remove it.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  |  1 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 10 +---------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  5 -----
 3 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 706b5ee8ec89..2485abd95672 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -238,7 +238,6 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 	}
 
 	vf->lan_vsi_idx = vsi->idx;
-	vf->lan_vsi_num = vsi->vsi_num;
 
 	return vsi;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 2ffdae9a82df..21d26e19338a 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -280,12 +280,6 @@ int ice_vf_reconfig_vsi(struct ice_vf *vf)
 		return err;
 	}
 
-	/* Update the lan_vsi_num field since it might have been changed. The
-	 * PF lan_vsi_idx number remains the same so we don't need to change
-	 * that.
-	 */
-	vf->lan_vsi_num = vsi->vsi_num;
-
 	return 0;
 }
 
@@ -315,7 +309,6 @@ static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 	 * vf->lan_vsi_idx
 	 */
 	vsi->vsi_num = ice_get_hw_vsi_num(&pf->hw, vsi->idx);
-	vf->lan_vsi_num = vsi->vsi_num;
 
 	return 0;
 }
@@ -1315,13 +1308,12 @@ int ice_vf_init_host_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
 }
 
 /**
- * ice_vf_invalidate_vsi - invalidate vsi_idx/vsi_num to remove VSI access
+ * ice_vf_invalidate_vsi - invalidate vsi_idx to remove VSI access
  * @vf: VF to remove access to VSI for
  */
 void ice_vf_invalidate_vsi(struct ice_vf *vf)
 {
 	vf->lan_vsi_idx = ICE_NO_VSI;
-	vf->lan_vsi_num = ICE_NO_VSI;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 0cc9034065c5..fec16919ec19 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -109,11 +109,6 @@ struct ice_vf {
 	u8 spoofchk:1;
 	u8 link_forced:1;
 	u8 link_up:1;			/* only valid if VF link is forced */
-	/* VSI indices - actual VSI pointers are maintained in the PF structure
-	 * When assigned, these will be non-zero, because VSI 0 is always
-	 * the main LAN VSI for the PF.
-	 */
-	u16 lan_vsi_num;		/* ID as used by firmware */
 	unsigned int min_tx_rate;	/* Minimum Tx bandwidth limit in Mbps */
 	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in Mbps */
 	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
-- 
2.41.0

