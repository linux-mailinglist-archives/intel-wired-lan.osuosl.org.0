Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E14ADA4DBE2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 12:09:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 598524084A;
	Tue,  4 Mar 2025 11:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qdZiE7DOmlUf; Tue,  4 Mar 2025 11:09:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A3B040836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741086555;
	bh=TvYbU227Urjz9EgJtqoLUQR7XVY7+BsXNGMOCrNPtEo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BEemQF/0/Ga15UwU2pJcIDPNBMvfq14EaK5HeYTpCAOcnQFlxNMnp6DeFrrSG5PeW
	 ZZ15EuZmdNkCbbkQ8/Qd5ONcUqm1NpHYJzcPPRQS+zSKxx0GVVDy9GtnFzMJcn6Dvr
	 JTXKcIREF1BTnI6j9iGApq1n3dIXrA5xil1Of+gJT3EHdxu9FZHaBsRytzwHo12YQM
	 N2Q1/V5tOtxM+wztLyUWwWfVaUtBrzZKHbVwbMvjF/jclYYjFUEdVKuEuUtWDJfywx
	 C03dH57hGdZUjdkzF6XjI7neZ/DQXFX1xn8ZrjgmlTpRtUidAtepo4XSfdTLqlblgi
	 9adMcNqcwz/3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A3B040836;
	Tue,  4 Mar 2025 11:09:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BB7A944
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D0FE403DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wQoadcG0gBOo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 11:09:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 872CE403C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 872CE403C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 872CE403C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:12 +0000 (UTC)
X-CSE-ConnectionGUID: Q673YO8SRhqfv6jabBVJSg==
X-CSE-MsgGUID: jnrt2Z6WSYG+Y12t8pK8gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41247018"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="41247018"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:09:12 -0800
X-CSE-ConnectionGUID: r6hfVo9aSf6a9e7Hsj5xvg==
X-CSE-MsgGUID: fneyscdOQKWxJnR366XkAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118341352"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa007.fm.intel.com with ESMTP; 04 Mar 2025 03:09:10 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue,  4 Mar 2025 12:08:32 +0100
Message-ID: <20250304110833.95997-5-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741086552; x=1772622552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+FokbEjIo6EWGZsc1hJnWYHHvZiQYXYkKTV6GBaOM3Q=;
 b=aBdW0/m0aRDup57f6GAMxOKMtCuWdOtuo9GQ0AAtMMIWstw3cupE8q3X
 oBz+eFdQdL1l7732s7acC+k9j8yFql51dcx4gHpnvNYpDy5I9KCpi2rbB
 dRC/cMWgGilPboGKcX/ZFElZIvPfYgguS6tAqRwvO9naRTwLNJGe4MVs2
 /EEudtdEL527DmBuoAbcnk+Q8nwXNN5ymkALcs5D/6kayVz+LHUddIWB1
 EYGkcEmRp5Jj43Btz05Ye9uStOBEFBuN+PpfBBm91ZcPM28dK6+coI7xf
 6qfMBLzIr+qTWEL92+Bf+kACPB7QNR/TzMJgHM0UZ6X4oloKFa7S4tnR0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aBdW0/m0
Subject: [Intel-wired-lan] [iwl-net v3 2/5] ice: stop truncating queue ids
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
Reviewed-by: Simon Horman <horms@kernel.org>
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

