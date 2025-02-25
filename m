Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A74F2A438C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9384340D04;
	Tue, 25 Feb 2025 09:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FHhBcBmdDPWD; Tue, 25 Feb 2025 09:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A85FC40CF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740474575;
	bh=GQGhJa/tmQgZoJVd6hKyqi+O5GltMn8mW1nuSYQkDKs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zaNM5CoKrDfVXucgbwoNpCO3mNenZp6a2c90Gf4AYsm7j+m9AV/GIrhkaCK1Df/ju
	 3xIpook6XHhI+eOMxbsbZ5xB+z+Xny6JmoS9Nhl2+ehWyX9WL0tPFTeqKoFMuYYG7C
	 pIcOtsdA5i2URtffGLKDTdINf4cI1o4LGnqntbLGh4YlJ+PsRh50L58wm1Q72Zg0Ue
	 RrdylI9BzrD5JXqdR27aGgVO67kv8Ly5C8bm1nDwSxROIko8lsLjMnB78b+NDcgkDS
	 141vxCa7/f7p8MOQgyclOEcMrb+72iVFet+GNlYQ695+Pa7SmXlg/5ft4pb7rhswPt
	 rknykNPRN2pKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A85FC40CF9;
	Tue, 25 Feb 2025 09:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 566782292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3741981213
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYmeQhQpxHpd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:09:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 29881803C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29881803C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29881803C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:32 +0000 (UTC)
X-CSE-ConnectionGUID: A9pmZfSvQB6SGZ4qW5U8FQ==
X-CSE-MsgGUID: nZpiICgLRmileyMiMCnjrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="58810343"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="58810343"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:09:32 -0800
X-CSE-ConnectionGUID: JM7sHMX5TJCt7JwJyi1paw==
X-CSE-MsgGUID: aPU30UIzQ8K6hHdTzEw2sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="121275685"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa003.jf.intel.com with ESMTP; 25 Feb 2025 01:09:30 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 25 Feb 2025 10:08:48 +0100
Message-ID: <20250225090847.513849-7-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474572; x=1772010572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3SyF92afDOn91GOA4VLtpi+hktql8pF4fEirFHsgAHk=;
 b=fekiE170yRLz8xugvxyIK3KPqZKD/aPhNd8TxEPrfOtt/FKC66orFzLS
 haeOwJ6TEGJl2E09F3zBpmOIHQ8bcTACfhDEXudSThGpFJzvrlS0x1Lbn
 0+NfC6HRuW4v3mylfSqkuz7GVLKCWEfS1Xsu1YTWODYM2Tov4nuHTK0xF
 KObY5BAeOxbhIccTXVb3JxgQVFZkhkmFmYwl1mcZn1gsCkivQFSbujvxY
 WawezPEVHBpVI7vTfB3fFSIvWm2enBW2dpb6rurTdwD0rh2u/7NsqXtAJ
 MMd6nXBCrUWfLhsZWOb9v/DSV//eQew4sVghjPqglNPmWaGvd/MRVZn98
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fekiE170
Subject: [Intel-wired-lan] [iwl-net v2 4/5] ice: fix input validation for
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

Add missing validation of tc and queue id values sent by a VF in
ice_vc_cfg_q_bw().
Additionally fixed logged value in the warning message,
where max_tx_rate was incorrectly referenced instead of min_tx_rate.
Also correct error handling in this function by properly exiting
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

