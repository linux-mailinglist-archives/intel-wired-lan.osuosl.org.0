Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F99A3801F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 11:28:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61359821C7;
	Mon, 17 Feb 2025 10:28:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G7y_q7Y2_S2I; Mon, 17 Feb 2025 10:28:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8698B821C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739788122;
	bh=6WvKfgQNlibeuIf65wWdub65se81oSlqLb6J6sWLee0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CSCHYAZGyLJF9lqNxLZNzB5eokrylvusXKsscaprhbSreb5V0fNCaWcWrncGuqG2S
	 pUncxwv7qkSVvpp46p2OCix9V0GerMiV9tFVmuz6LKFMDWmriy5BNkwfsPKUYH9xAO
	 nmd1YgYLcpYQ4BAWbh1scveQXBGHafvJZLIOrv3cfmq1ZVNrUGij+TomqGdMyRE8ux
	 Jb8vC5gZbFTL8UTVOlsT57K0ca6+qnHq2Jwh9G51NJIiluAn0gEl33CKMwCrlSTVtT
	 VIdG85vwnBw1ngQ36pVnJ4yJuyNggbGK+LM9QoWQ22nzgFwc4a/BOmYyJFJsgK2MyB
	 SQ9wDH82QStkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8698B821C9;
	Mon, 17 Feb 2025 10:28:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 398FCDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2932641271
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1k347zkTLewR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 10:28:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A5B44125C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A5B44125C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A5B44125C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:40 +0000 (UTC)
X-CSE-ConnectionGUID: vcKE+vIuSpmWNUAi5fzj4g==
X-CSE-MsgGUID: 8rxE6VyKRZiCYpOuq5zw3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40168409"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="40168409"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 02:28:39 -0800
X-CSE-ConnectionGUID: EOgKHumnRAKbWTkaD3+A7w==
X-CSE-MsgGUID: T3A0wCpsT1W9DzKwclcX1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114598267"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa010.fm.intel.com with ESMTP; 17 Feb 2025 02:28:37 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon, 17 Feb 2025 11:27:45 +0100
Message-ID: <20250217102744.300357-6-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739788120; x=1771324120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o883OfTm68rDA6RHHWWy73WfvDjr1+zc/EcXXU3GS3w=;
 b=JQURoVob/w7Vv80cUorwuv0HIs6y7/H1FtCc5zE1piVPbQLUejo5i/ej
 ZjT4c4a0odHNPawlR10OuUa/UIqN5DzV/ISbIh9Q2Ejdv5ByC9ouMS/y2
 jFdtAvqEep+JeSbyEAubqPxElT+wpCgcFicAbQHSB78IrfY35CVXwINc1
 Ngq/yirrJ/Lz7OAFHjnWoAfCAtRN9UI29CT54BJ+ascYmA13Hmp9RE9IH
 URqS8uTicf7sq4K8mpAddCzUFsCONDr9e8vG2++DXOsl4A0+V+DyYs/Ab
 /haT9bLAlDJabuFVqRdv1nTwY3hcz3spAf11/ho5U/oBhDt/nspjgq9Z9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JQURoVob
Subject: [Intel-wired-lan] [iwl-net 2/4] ice: stop truncating queue ids when
 checking
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

Queue IDs can be up to 4096, update invalid check
to stop truncating IDs to 8 bits.

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

