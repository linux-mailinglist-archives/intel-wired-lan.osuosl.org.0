Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3A5B21C64
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D315141E19;
	Tue, 12 Aug 2025 04:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXk2VcNq8gnU; Tue, 12 Aug 2025 04:54:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DD7241DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974457;
	bh=oS4LYYav/nIemdMS4Hi6m0eZ9pyqs8vXf8XyC6bmmw4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pBJlCouGenE+SUifNivyDdKsIN8m6VEtsAx39ZLLdSN0Rl/sqkKQ7ksvCJDqljuWS
	 gW7EuuOrqnGCZFJaG9AqlisKP9VD1kHY0rut2lft1nc3UFWC/PwLQ9aGjvNY/XDhKz
	 96gGu+xGQH0tsPtMGLt4gaWVEFKke86k5tzx5BFM2/1Bbjbwmwbd9Lll7NVO51Si0S
	 RA1maZcFQEuD2HaVfsyB+sErcyhbllGKwMeABhuu18WjnVU+NsUOb/9C/2AIyK+iz0
	 lGl9b0ETHSzVuBM4qdhbfoM5XgpJeqYTnHUiKN6vEIKxvFZymmKd/9tnrKa4aeMk3p
	 3QtovcaqK+yPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DD7241DF8;
	Tue, 12 Aug 2025 04:54:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B8ED183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6DAE0612A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xLuSSutTZZxN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C52C661356
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C52C661356
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C52C661356
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:14 +0000 (UTC)
X-CSE-ConnectionGUID: tFz8cOUZQ7KpBmJ0LHIwxw==
X-CSE-MsgGUID: KvyyZ3WdR/CsxF0VyPJHeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612759"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612759"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:47:09 -0700
X-CSE-ConnectionGUID: c0hNlJvzSbCJ9nmJonwOJQ==
X-CSE-MsgGUID: dVW1VjN+Spa3mdfZskJQag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327904"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:47:08 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:29 +0200
Message-ID: <20250812042337.1356907-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974455; x=1786510455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QP9GUCAor9gC0Bchqukq1BDFNneOrXprXCte43gP9BU=;
 b=fECAnWbQfK7kwa+7fQp1eDWJ9LlUpCCN1jud+z0sbkfeyeCPYU0Lfmfs
 a+tl5MlAJmfW0cUkJZ333xGpGx5JxVq3+VCo3C3nA1/d0rgC+IfNL9cKV
 8kwloP35P+FkNFe3vGsvcanpRS/+yKenO7sx5ZadwgDlmKQUOXaAxNPso
 ICNrhzwiSS4wCurVaWd7ieP7SPH3yA6H3d8DyTys6p9QTUmskFTuSf2qq
 zQVkEN2bfefBypCFEYSRlSJ/eeZhJy0Os3dQo9/dO4h0gLCB2hOwAML0u
 6+gQNDAnC76SuWgsOUn/TgZ4drj1zbCEPGBDY8OBMCKCnRjtFN7qjXCqc
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fECAnWbQ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/15] ice: check for PF
 number outside the fwlog code
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

Fwlog can be supported only on PF 0. Check this before calling
init/deinit functions.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 8 ++++++++
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 4 ----
 drivers/net/ethernet/intel/ice/ice_fwlog.c   | 7 -------
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9119d097eb08..2666e59b0786 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1002,6 +1002,10 @@ static int __fwlog_init(struct ice_hw *hw)
 	};
 	int err;
 
+	/* only support fw log commands on PF 0 */
+	if (hw->bus.func)
+		return -EINVAL;
+
 	err = ice_debugfs_pf_init(pf);
 	if (err)
 		return err;
@@ -1186,6 +1190,10 @@ int ice_init_hw(struct ice_hw *hw)
 
 static void __fwlog_deinit(struct ice_hw *hw)
 {
+	/* only support fw log commands on PF 0 */
+	if (hw->bus.func)
+		return;
+
 	ice_debugfs_pf_deinit(hw->back);
 	ice_fwlog_deinit(hw, &hw->fwlog);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index c7d9e92d7f56..e5b63b6bd44d 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -588,10 +588,6 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 	struct dentry **fw_modules;
 	int i;
 
-	/* only support fw log commands on PF 0 */
-	if (pf->hw.bus.func)
-		return;
-
 	/* allocate space for this first because if it fails then we don't
 	 * need to unwind
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index f7dbcb5e11aa..634e3de3ae66 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -242,9 +242,6 @@ static void ice_fwlog_set_supported(struct ice_fwlog *fwlog)
 int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
 		   struct ice_fwlog_api *api)
 {
-	/* only support fw log commands on PF 0 */
-	if (hw->bus.func)
-		return -EINVAL;
 
 	fwlog->api = *api;
 	ice_fwlog_set_supported(fwlog);
@@ -296,10 +293,6 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 	struct ice_pf *pf = hw->back;
 	int status;
 
-	/* only support fw log commands on PF 0 */
-	if (hw->bus.func)
-		return;
-
 	/* make sure FW logging is disabled to not put the FW in a weird state
 	 * for the next driver load
 	 */
-- 
2.49.0

