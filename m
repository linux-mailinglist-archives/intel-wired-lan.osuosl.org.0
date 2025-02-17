Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE230A38022
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 11:29:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 525E84128D;
	Mon, 17 Feb 2025 10:29:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o6FspCUqlII6; Mon, 17 Feb 2025 10:29:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 603DF4128E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739788150;
	bh=dWhD8t0G7INfNW0s93dopNjk4gfnI556TweWlUjQH+A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C2Y5w/idobtLO9JapWF+INlqxxdZnFPrjNLgTC1EcRoqvtFnu3fT0z4T55MT83nLm
	 mWlYgf6Ukbu0Rv78Ut1a0VrvfJG90qYnDJh13BnVPn/WD8FJjRsOq4OaG3s0qA5xpt
	 agBpJGQiBD/FMRGpxEvop3QprkrlUfDEXfb4HYWE7mGwBAK4E+S9qXNnhGr9hpLuWz
	 +WsMnJvbbV7Gadn5O6st1uYe6TN4Gv43pCHomCymqoRZp7WSf5z22c+SSpHVF0wHeN
	 CKxSlS101El2RBKuC5Ejw50vUe/fkwZ+9bzXenzKtYqyz6/ADIOkm3INOAx0TevjGu
	 GQkYeYh8YgQ9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 603DF4128E;
	Mon, 17 Feb 2025 10:29:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 02561DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A35341030
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vNH8TBV4N_ky for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 10:29:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4398C40FE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4398C40FE3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4398C40FE3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:29:05 +0000 (UTC)
X-CSE-ConnectionGUID: KZTTiwh1RS6gEQTs0KEaeA==
X-CSE-MsgGUID: nedzmp9NS+eS9w6HKNB71Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40168466"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="40168466"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 02:29:04 -0800
X-CSE-ConnectionGUID: 1rCOmPpBQSulMvzuw0xhDQ==
X-CSE-MsgGUID: chSRxClPSmauDPxdv4mN2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114598347"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa010.fm.intel.com with ESMTP; 17 Feb 2025 02:29:02 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon, 17 Feb 2025 11:27:49 +0100
Message-ID: <20250217102744.300357-10-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739788145; x=1771324145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vFNOcW6D9AQ3oR7l/kDMzH69hgRBYY0HS+iPzompEAY=;
 b=UKZn7IEGO2tbWirY4/WbFbPz8p+0YHV2AmeYFmDHWh6O8BrU9/p1dkR6
 JppA64i7kdGWF9Y0DRWOjDYV+9y95FHv9fobf67/1NRWh/lH2goJ/UBZx
 ebF511xIsoYO20+9aNyEhxbXWi4qRXzwsyiJlb13t3D7tEl75/5f391S5
 ooj3dVHlerwz1lWofdtSzN7t1Ax+dmftPGnkrpzq0NZNeCi16p0Uv51Ez
 aK+448r+Bv+ghBJQOnsxdgxCrt8O5pmCPWViO4dIP/T3pstDTYXyDCIj7
 d55HNOh/zZs9s7qHf/6RrQYHkE2LLTLEDDGQs5C6ZlcUu0PfNgZBprh/F
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UKZn7IEG
Subject: [Intel-wired-lan] [iwl-net 4/4] ice: fix input validation for
 virtchnl BW
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

Add validation of tc and queue id values sent by a VF in
ice_vc_cfg_q_bw().
Additionally fixed logged value in the warning message,
where max_tx_rate was incorrectly referenced instead of min_tx_rate.
Also improve error handling in this function by properly exiting
when invalid configuration is detected.

Fixes: 015307754a19 ("ice: Support VF queue rate limit and quanta size configuration")
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Co-developed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 24 ++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index adb1bf12542f..824ef849b0ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1865,15 +1865,33 @@ static int ice_vc_cfg_q_bw(struct ice_vf *vf, u8 *msg)
 
 	for (i = 0; i < qbw->num_queues; i++) {
 		if (qbw->cfg[i].shaper.peak != 0 && vf->max_tx_rate != 0 &&
-		    qbw->cfg[i].shaper.peak > vf->max_tx_rate)
+		    qbw->cfg[i].shaper.peak > vf->max_tx_rate) {
 			dev_warn(ice_pf_to_dev(vf->pf), "The maximum queue %d rate limit configuration may not take effect because the maximum TX rate for VF-%d is %d\n",
 				 qbw->cfg[i].queue_id, vf->vf_id,
 				 vf->max_tx_rate);
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto err;
+		}
 		if (qbw->cfg[i].shaper.committed != 0 && vf->min_tx_rate != 0 &&
-		    qbw->cfg[i].shaper.committed < vf->min_tx_rate)
+		    qbw->cfg[i].shaper.committed < vf->min_tx_rate) {
 			dev_warn(ice_pf_to_dev(vf->pf), "The minimum queue %d rate limit configuration may not take effect because the minimum TX rate for VF-%d is %d\n",
 				 qbw->cfg[i].queue_id, vf->vf_id,
-				 vf->max_tx_rate);
+				 vf->min_tx_rate);
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto err;
+		}
+		if (qbw->cfg[i].queue_id > vf->num_vf_qs) {
+			dev_warn(ice_pf_to_dev(vf->pf), "VF-%d trying to configure invalid queue_id\n",
+				 vf->vf_id);
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto err;
+		}
+		if (qbw->cfg[i].tc >= ICE_MAX_TRAFFIC_CLASS) {
+			dev_warn(ice_pf_to_dev(vf->pf), "VF-%d trying to configure a traffic class higher than allowed\n",
+				 vf->vf_id);
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto err;
+		}
 	}
 
 	for (i = 0; i < qbw->num_queues; i++) {
-- 
2.47.0

