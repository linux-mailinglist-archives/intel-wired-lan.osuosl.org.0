Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0028AA4DBE7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 12:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91B7F40851;
	Tue,  4 Mar 2025 11:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PRzxw6AFY7mu; Tue,  4 Mar 2025 11:09:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D64A40836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741086566;
	bh=60Kmq+EHuaTPrWEz9xBwuZcg/opO8Dj/YQFHCzKgoFU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lEjXK1bIH7SF8VYxYgbaotah2FyIefSaWXDKplLko7xjIUGZ+LgmJYbNkIVF/Pfts
	 WPjDFa1AHeTSgqqtMmq29/gv4bWuPiVSZ7NH1QZCYJcaQ813s6vDODsKeffJSMOLrQ
	 hbpDoBk+hPYKo2qrN2AMim3au+NwkRvfBX2BLedF+exVVxW/2QxYog7XXaJpmIAplg
	 21IFKahhPrxKkzjARPTSpHmeZwmyCHiQsYe64P7V6Gs+fMk6FslUA70cERSalvxoYP
	 qB8bZom9hPtwhw1MC/apDdFCg6/zrsalDJ/oJSywWnLIwYg2lSzdahyvBOGx8XB/ya
	 Qq1XB7v7Zg6bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D64A40836;
	Tue,  4 Mar 2025 11:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 11A6CC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01ADA808C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fLDi61HSuAdi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 11:09:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4BE38808AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BE38808AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BE38808AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:23 +0000 (UTC)
X-CSE-ConnectionGUID: yiXuw+A+TRKmjhTucuNpsA==
X-CSE-MsgGUID: mcsyaQRFS5Sre9arVpdmHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41247048"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="41247048"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:09:23 -0800
X-CSE-ConnectionGUID: e81ZJRMdTVGZn135wFkt2A==
X-CSE-MsgGUID: cFJlah8uSk2Kj0frjT+vDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118341460"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa007.fm.intel.com with ESMTP; 04 Mar 2025 03:09:21 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue,  4 Mar 2025 12:08:34 +0100
Message-ID: <20250304110833.95997-7-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741086563; x=1772622563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FxEuUtIO3qfXXHQvkUKICH8eg3BB/zNshjcsb7WiSYI=;
 b=O2LYSC4dxhtjIsdK93g1apnyGBB6fPpsBnc36BiD9HgNICfs7SghQ25w
 x7jeQt0Z5wDLvW36thChMeeudaquQ6Yiakow1bPqNH511NbfPhGsDNkoG
 lmSdsmh4TPAG50S69SMWzfnZLQ23TE3BU+dyNT0INWe5S0LksA6e805ED
 9XHoZWcGI/FobHV0pzUwbSrcbOPMqTEVFzlnD/U3dSeRG0v4AJNppkoPN
 Q7krJWcc1i5jpASWPEogkJrUcp9KdC4yPWV0x1VdXicPZ5ihn+XV9iPnq
 kP/ZDN6AsD1fHzH0T34lGNE9qRgIJ8Z4ctodWRDwYS7jYszb+kH2Q2GCm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O2LYSC4d
Subject: [Intel-wired-lan] [iwl-net v3 4/5] ice: fix input validation for
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
Reviewed-by: Simon Horman <horms@kernel.org>
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

