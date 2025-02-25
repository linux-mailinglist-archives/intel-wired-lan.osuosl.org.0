Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A25A438C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:09:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F031540CC0;
	Tue, 25 Feb 2025 09:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VroCmhyNX9JS; Tue, 25 Feb 2025 09:09:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5270840CD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740474570;
	bh=sdCqfNLdHFwF+yJEoY/A1wz3Wei35T7M77pQjGJO+MY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MYuSi9G5+HYzOSH6sS8avI0yZ19NWswTztaE8j7MLHOrT+1HoPi2S0DqU1Vc724w2
	 RWbL+A7DSAdAsDn2Hvz1Q/9BzGJ5qA329bCJ/aZKcKU0L0cKUxAdz/IvW2/I5K/2qc
	 VrQGUd6s5i07u1j0GIBBn7u4+2x7M5QNd1uVLqM6jUGFNLM2pQvMZRix/immibdMr3
	 EOsXqkzTAFtX63fSjN2Bb/c3NaKK+Yhg75XUQLy40rOHvtbvxPt37RdLVjQLvY7uZE
	 dtj7Ld4lNkNebmPh2y03XKtMcT8zp4/y+vf8Yi2/clZmTcM+b8QGCT43EYhNu4+pR+
	 4mySR5fCmx9UQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5270840CD8;
	Tue, 25 Feb 2025 09:09:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 122E52292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0193C81E0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IEVdFtOaH7nC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:09:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 45F8A81DFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45F8A81DFC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45F8A81DFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:27 +0000 (UTC)
X-CSE-ConnectionGUID: xNi9gk2ETzi/ErfYHIyoBQ==
X-CSE-MsgGUID: E/k5mMeLTN2gtd7xblpb9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="58810336"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="58810336"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:09:27 -0800
X-CSE-ConnectionGUID: P0tmYXlQSvaWoPO4+gfNRA==
X-CSE-MsgGUID: /QTdNHudQZ6SfJ9Mtb3TFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="121275634"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa003.jf.intel.com with ESMTP; 25 Feb 2025 01:09:26 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 25 Feb 2025 10:08:46 +0100
Message-ID: <20250225090847.513849-5-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474567; x=1772010567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=67Gu1RmjPR1JY++tARVEZch0cjxi0tgthD21eX8Tu5U=;
 b=YjrG206eEAlZj3352pTBywXcwQU0ASfxDPjTawjJhIBxZInCIGSGwMqi
 wd0cWw8l1OsOPnmCUVxQoyhRfIdJotTDo/jX71byQ3/1jKxPmHQrJ8mfg
 M1ECWwSrm+1OiYWpY5dJNco5iTxoihqwKqEjOjIjwOxHg1YocYyZesOeG
 FGW7O5uzp7pq5A7/oucLD4jtxsX+OgS4UFCJkImHbLarsMv4NX7Hce/jS
 FKyTYXrmjy/Xu1udHZrQoh+POBvFbiHCVarVMAz+jvuB9hOMVRaEceQgs
 DDlRjrcvuZWzGGpWUbfzSTiXXECB3jym6Zfb8RPm5sOJe2azLP453Fui3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YjrG206e
Subject: [Intel-wired-lan] [iwl-net v2 2/5] ice: stop truncating queue ids
 when checking
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

From: Jan Glaza <jan.glaza@intel.com>

Queue IDs can be up to 4096, fix invalid check to stop
truncating IDs to 8 bits.

Fixes: bf93bf791cec8 ("ice: introduce ice_virtchnl.c and ice_virtchnl.h")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b6285433307c..343f2b4b0dc5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -565,7 +565,7 @@ bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
  *
  * check for the valid queue ID
  */
-static bool ice_vc_isvalid_q_id(struct ice_vsi *vsi, u8 qid)
+static bool ice_vc_isvalid_q_id(struct ice_vsi *vsi, u16 qid)
 {
 	/* allocated Tx and Rx queues should be always equal for VF VSI */
 	return qid < vsi->alloc_txq;
-- 
2.47.0

