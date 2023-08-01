Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2082276B3C9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:49:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B345240BDD;
	Tue,  1 Aug 2023 11:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B345240BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690890592;
	bh=nKjXir/L77/nZic5jX3TWZpkWdOnewCVCMbd4hhEyLQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z/wPAMZRYGcvtwP2g8HJKFQ6MB+++zvUM9Wcb7byf8E88+N3JytKqcajyKQU8SP23
	 RaU6YgEAIamdAXp9+TU7IXKV9q+LO3+LQSl0wKbBgNNbwije5DCMk3VnxAFMFv0pHS
	 swJKeP27gjI9AOpra9HgjEBJ89zk09w7r0WI88Mag6jfX8atot0dyyFhokzFdnB70w
	 wiFfQANdo/N/MwKpxdAiGBi/MkbGAlkhsCawwkxCVfvYIzukzWzcvZ914GAsP4eg5m
	 Euu/7+pjSwOvzAgRZ8s0qZBhuAHws1oyqjjpXsllrNcnAcy8WJcv24DgaqCOHefie9
	 /zFLRlfKziDpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJTR_tt5PtnI; Tue,  1 Aug 2023 11:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8055440194;
	Tue,  1 Aug 2023 11:49:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8055440194
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1568C1BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D45D54011A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D45D54011A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QfGzu1BF7HOk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:49:26 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 403A84052C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 403A84052C
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="433112519"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="433112519"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:49:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902528655"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="902528655"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga005.jf.intel.com with ESMTP; 01 Aug 2023 04:49:25 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Aug 2023 13:53:08 +0200
Message-Id: <20230801115309.697331-6-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230801115309.697331-1-jan.sokolowski@intel.com>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690890566; x=1722426566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bzx0TVuTqFzKA88YrrrbFRy/evFNYqtkli7ymQ9m+ZI=;
 b=mt9UJvtV8M5MwLWcLvp9xNza6TTxWIUogZFO6dQzpG3UEuPfnuPvCF1l
 7YgGWbh+MV/gkOgb4b4jKVaoNW8uXarv6nHdH9BVulBZPOFf4ILuTCcCe
 9py0jOrzjg0mAAwJrN1FsZg90Q0fWZTLX/7zszxx3u76kFpFUpotMz2dU
 Y7OAqH3/Qj+hJuVB5QUmCTcbz7QqBvv9iDowtN4YAUjNVWbkVYSmTQpyE
 2GLlRm90RhLym9ehq9EOr0wwts3b+HddcuNdRq5VHlZchM80/jqjNTKwO
 IXDxZm08CIMeXhhA2QspH5FOGVuR8G+E6/XVKu/9yosUiuvaMvdCskyHI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mt9UJvtV
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ice: refactor ice_sched
 to make functions static
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

Refactor ice_ddp.c/h in order to make as many methods
as possible static.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_sched.h | 4 ----
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f4677704b95e..c0533d7b66b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -3971,7 +3971,7 @@ ice_sched_get_node_by_id_type(struct ice_port_info *pi, u32 id,
  * This function sets BW limit of VSI or Aggregator scheduling node
  * based on TC information from passed in argument BW.
  */
-int
+static int
 ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
 				 enum ice_agg_type agg_type, u8 tc,
 				 enum ice_rl_type rl_type, u32 bw)
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 8bd26353d76a..0055d9330c07 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -141,10 +141,6 @@ ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 int
 ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			       enum ice_rl_type rl_type);
-int
-ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
-				 enum ice_agg_type agg_type, u8 tc,
-				 enum ice_rl_type rl_type, u32 bw);
 int ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
 int
 ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
