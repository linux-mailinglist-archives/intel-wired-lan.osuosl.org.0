Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE83B0D7BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 656F642A3D;
	Tue, 22 Jul 2025 11:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PfrPCv68D_AV; Tue, 22 Jul 2025 11:07:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA29442A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182434;
	bh=oS4LYYav/nIemdMS4Hi6m0eZ9pyqs8vXf8XyC6bmmw4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L52rfbLPdsiYCuZRkGfsAQJv+ISvTvWVYEQ4jI4yZwckPYYLOohEtTyXKdztBPxYi
	 liJNGExLfQj3TZmiO3uEv5eHvWldjnuk6bvojp+v3H3vT4fCvoYJ9oPsjFHPVxwK/N
	 Ixgh8tNaEsFU+173L6HMSaOCW+667+4PS9SnoLc/JzU89Ti+UD7uCI90AbEzyBR11Y
	 rAw8oyFcephSyzcyAOkSUq4EQYWdqhx/NBKJZ1mHeGk8jGWP8WesrK9yUbuDsn6yXV
	 uQ0rNMKHAJOi2CAP3bBdbVtFLhwcAOXQtWJVS0+BiaJVP4yMIgCKLQ+LLqRU4EiL6d
	 cLdmY2UU3DBkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA29442A43;
	Tue, 22 Jul 2025 11:07:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B32AA127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9964C84B49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qX8iGPL97l0N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC62284B27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC62284B27
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC62284B27
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:10 +0000 (UTC)
X-CSE-ConnectionGUID: t3M/xTh/QZORcwZ43v7bHA==
X-CSE-MsgGUID: 2IY2CMKnRjm76amv2PCHxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083612"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083612"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:11 -0700
X-CSE-ConnectionGUID: JFW1nJ6MR06twSS5+tVPyQ==
X-CSE-MsgGUID: xd+8WJsKTHeExMa7dq074g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153964"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:07:09 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:45:53 +0200
Message-ID: <20250722104600.10141-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182431; x=1784718431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QP9GUCAor9gC0Bchqukq1BDFNneOrXprXCte43gP9BU=;
 b=M3oxiA8ixz8uVT6uwOni5X+A2Dk7YD5uGrf+FwDC+80FVmiC0C8gzYak
 6Gv5Q0EIPkIkI+pkvggMrg8UVuJIf24t/KgqMzDWGSvjWJbEVgYXpQckD
 km6WBs0I6oGzTDfIyD538fHBuhFD+ALQIY6Uy4CWwbYC4tHtUIXlCaTj4
 85KMfJ5fln1oKreMmezxRtMlCCwjqU6H/wKFOnT7TeJZiCSCNY2MB4Hel
 GvA+MGk9CF3agklXXf5ReoM5UUk6+q2s52684guBwrzNoJLPwcTgDBC6r
 5rF1yTH1mUQkNdeq6/ZdW5cREOdGJnsghdYtovcWOUTYvS4fzP60BMv15
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M3oxiA8i
Subject: [Intel-wired-lan] [PATCH iwl-next v1 08/15] ice: check for PF
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

