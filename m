Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4846E555E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 01:45:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E24041718;
	Mon, 17 Apr 2023 23:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E24041718
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681775103;
	bh=ubK8J7jlaNMvU0f7YvM2A5hQP6YsuA6rYxz0z2KXPqA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2Hl47lrIClEY7qIOC2nR2eVxQA/EI90kvnVTw76Ova4wg9UzGKEvgn9qyzUHBod/S
	 aAo0b7kgQBQe/o31ujpDaoR7KWCYXhKiauX6A2ZM4JIadOymcENbb0LhI6SQ4Gkjum
	 iIvQB1rgo4UXI6Z8jRNDrx+mgin4A05yPsJjNqJoK1ONrW6vHksLDYMxnD/DsV+MFs
	 GCBJRLySDLucJf09qsBQDRwCQntiIUthLfkNqKgr0OL+FVoYTqp8HKmFfmD90R3uUu
	 stBRJ1SM6aTjhYCJd04IcoA0AxSfeX4o/9f2KRRtLeAwtIy1yqyP49LGxnEHePyzKJ
	 MGnqdgpKMJoGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEOpcQuayRka; Mon, 17 Apr 2023 23:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49C3B416D3;
	Mon, 17 Apr 2023 23:45:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49C3B416D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B98C51C422D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 23:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B23C60EAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 23:44:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B23C60EAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82B-3thEVBs2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 23:44:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB72E60E8D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB72E60E8D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 23:44:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="347782037"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="347782037"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 16:44:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="1020589037"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="1020589037"
Received: from rnowicki-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.56.229])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 16:44:52 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 17:44:45 -0600
Message-Id: <20230417234445.3956555-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681775095; x=1713311095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XHWg5cyEKrzFzhC24zdkQC7Vv4eWOWKUy2uQphNkKdw=;
 b=RXEwkf4Nk7LH/TJbFLROtxM7SolcIkmXn39mB8FKfHe8GSR9UdGMHIa8
 5xdururAg6RsNYMOfxSaiExoU1d6M9HUX0IC/oUh1hUQLjNSsLhAQBsVS
 ZsLAeFYQWvglFPPCpaMHzvFLx543B2SYR/O5k3EnDYnoQNtyu16Lh1RdX
 sIppOEXzNZIg2S5pHDeLMgI8eFdz7ADhCaq9jC5Kgkg49HOn9TgjSO4DG
 PvGGVZAd3MT7ZwpDT3AgYWBDtaFI4sDeYPSNxBeP9mYDwPQOQFJt+Aja/
 j4t4Ud3B/4ho3xbTkqBsvy+PdkO6QKqPf6Ar9xqgT4iXvRaqNVy4NGC1N
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RXEwkf4N
Subject: [Intel-wired-lan] [PATCH net] ice: Fix stats after PF reset
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

After a core PF reset, the VFs were showing wrong Rx/Tx stats. This is a
regression in commit 6624e780a577 ("ice: split ice_vsi_setup into smaller
functions") caused by missing to set "stat_offsets_loaded = false" in the
ice_vsi_rebuild() path.

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 387bb9cbafbe..d9731476cd7f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2478,6 +2478,8 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 			goto unroll_vector_base;
 
 		ice_vsi_map_rings_to_vectors(vsi);
+		vsi->stat_offsets_loaded = false;
+
 		if (ice_is_xdp_ena_vsi(vsi)) {
 			ret = ice_vsi_determine_xdp_res(vsi);
 			if (ret)
@@ -2522,6 +2524,9 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 		ret = ice_vsi_alloc_ring_stats(vsi);
 		if (ret)
 			goto unroll_vector_base;
+
+		vsi->stat_offsets_loaded = false;
+
 		/* Do not exit if configuring RSS had an issue, at least
 		 * receive traffic on first queue. Hence no need to capture
 		 * return value
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
