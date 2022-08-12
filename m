Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19477590FFD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 13:24:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40E5C418F0;
	Fri, 12 Aug 2022 11:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40E5C418F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660303488;
	bh=1qKOd4wdi2mJZ5VwO982tdyUuue3AIjFNIklB7M06zY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fMydOW5pBmpZOn1PpMRj6A5eVXptIcsQbEYrEVOfQshhN/2xogfT11BSQjK47FZLj
	 5N0ZQ24JtpeUZQdN7eyckx+lOfaKkJZpp1hKfCi9qS89lUfKefeyQ28d0yBrbyGXLE
	 NNbTy7z/FprARKpoGBSGSHtqSVerTUrjAgd2+OPHADC2FUUeh8enFZa9lx64ePdY9g
	 KtrSilA56GAvPxUj0gUsAjp3pqqhaVjALcERuEKQSgrU9DYaIjxvGDHcOqQL434tEP
	 VmxaFHA+UfkbCFTyvUwYq6xIsxcwx6tcGUnq3vIjdAgenBAA9dmAG2M2CNOMcsDSEF
	 LS2DP9LwDGpPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2BhqgRYirQKr; Fri, 12 Aug 2022 11:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D39A841885;
	Fri, 12 Aug 2022 11:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D39A841885
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7873C1BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 539378344C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 539378344C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kp94PQ8mOr9x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 11:24:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8CC6831A7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8CC6831A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291576440"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="291576440"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 04:24:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665788661"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 12 Aug 2022 04:24:30 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 13:24:22 +0200
Message-Id: <20220812112422.1083684-4-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
References: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660303471; x=1691839471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yLjzWDEsQrNew3HM6GW4R7nAZe1We2zNdbkZV2jM2XQ=;
 b=FECjItV68lLGb46mfSRq/JNtTGFRPDU/RHiGZsKXHemChoBDNH54irxP
 RH2IWppnPelKT/7dq1fjJ5Vtcrjf/58yYtd6+YzV24+u7jbBzPNe1gk81
 nanicrsRJrWdhre3qgbPkWiOWq7Dxwo7I/lUpPb+16xgL90o9eHT7GWjI
 NI0nfzYG2gfp3u9jrGiTFPcc81GwjeactKj875pThCvyJMajtGHeY1o3r
 7a0w42HipTbOgs6bK7R8MGyuc+ONatZwdWCYcFDLPpMfI++DB5A4Gy8R1
 xWW+7zD6ves6I72Y/v86sA0S7jv1bhnGdvPXfDQuUGNoHe5HC+hiOL+xE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FECjItV6
Subject: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: Handle LLDP MIB
 Pending change
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the number of Traffic Classes (TC) is decreased, the FW will no
longer remove TC nodes, but will send a pending change notification. This
will allow RDMA to destroy corresponding Control QP markers. After RDMA
finishes outstanding operations, the ice driver will send an execute MIB
Pending change admin queue command to FW to finish DCB configuration
change.

The FW will buffer all incoming Pending changes, so there can be only
one active Pending change.

RDMA driver guarantees to remove Control QP markers within 5000 ms.
Hence, LLDP response timeout txTTL (default 30 sec) will be met.

Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
v2: Remove inline hint for ice_dcb_is_mib_change_pending()
v3: Handle only local LLDP MIB Pending change
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 21 ++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 1c54eb643b6f..6ac5c8fad227 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -933,6 +933,16 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 	}
 }
 
+/**
+ * ice_dcb_is_mib_change_pending - Check if MIB change is pending
+ * @state: MIB change state
+ */
+static bool ice_dcb_is_mib_change_pending(u8 state)
+{
+	return ICE_AQ_LLDP_MIB_CHANGE_PENDING ==
+		FIELD_GET(ICE_AQ_LLDP_MIB_CHANGE_STATE_M, state);
+}
+
 /**
  * ice_dcb_process_lldp_set_mib_change - Process MIB change
  * @pf: ptr to ice_pf
@@ -946,6 +956,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_aqc_lldp_get_mib *mib;
 	struct ice_dcbx_cfg tmp_dcbx_cfg;
+	bool pending_handled = false;
 	bool need_reconfig = false;
 	struct ice_port_info *pi;
 	u8 mib_type;
@@ -1009,6 +1020,12 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
 	}
 
+	/* Send Execute Pending MIB Change event if it is a Pending event */
+	if (ice_dcb_is_mib_change_pending(mib->state)) {
+		ice_lldp_execute_pending_mib(&pf->hw);
+		pending_handled = true;
+	}
+
 	rtnl_lock();
 	/* disable VSIs affected by DCB changes */
 	ice_dcb_ena_dis_vsi(pf, false, true);
@@ -1028,4 +1045,8 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	rtnl_unlock();
 out:
 	mutex_unlock(&pf->tc_mutex);
+
+	/* Send Execute Pending MIB Change event if it is a Pending event */
+	if (!pending_handled && ice_dcb_is_mib_change_pending(mib->state))
+		ice_lldp_execute_pending_mib(&pf->hw);
 }
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
