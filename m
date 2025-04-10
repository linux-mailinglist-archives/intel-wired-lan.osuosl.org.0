Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B4A83FD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 12:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29EF0407A8;
	Thu, 10 Apr 2025 10:01:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7rM8lFf3sBFA; Thu, 10 Apr 2025 10:01:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5125A40B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744279306;
	bh=GDFJFa/aHBVixRRVY6Z9osqWDfROXU6rmNHAMYm34o4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iN91u9rwGoCbgRW81Y/vhFbAyERdAmpjU/V8pMMwSbE0BKMfwKynY0VYCoARCQdcY
	 rwCiaQzHhCCcE9FxHoYc4PKqn6qOvvg03zP6sIxRdA0VEzo1Kjk1LkVxp6aXN6DCsF
	 NpbeZcfeAvEqL7Ll/AjLMb1aUOc15wnLDeX58fJQi1PviousBJgSud3t280kRyzyAT
	 P6NWakELJiJnPMt+3odvkvP6YlHCk0r+7KIx/aBfxmrNAkG972oFDNg0qJgT32yfq1
	 8B61+hvlgXXl9ck4zVzPOcdvrrsYMpKafK2/dgT6DX4BRYjWn8ddw7a09v2oCEg8tI
	 +SEebtv9b1z5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5125A40B8B;
	Thu, 10 Apr 2025 10:01:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 79315108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75B0A4064D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IiWI721KWua1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:01:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA42740C23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA42740C23
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA42740C23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:43 +0000 (UTC)
X-CSE-ConnectionGUID: Vo35GJeURtiYsA7zJ9f4xQ==
X-CSE-MsgGUID: W+dIcC7ORU2mEWcMYQZMuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="63183916"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63183916"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 03:01:43 -0700
X-CSE-ConnectionGUID: WWsw2xqpQN+d66fN0Tch4g==
X-CSE-MsgGUID: HVfRDyItT+uOf3kO4uDuOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159819801"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2025 03:01:41 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Thu, 10 Apr 2025 12:01:20 +0200
Message-ID: <20250410100121.2353754-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744279303; x=1775815303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jAg/40in19GYDbgk6D3oK2wpbqw+hw8XtWQ4vs/PfYY=;
 b=U+ix+dtx/XFRHdvrV2oDllwmI8NKwtEhX/rkxcu5UIuozUv32/fZ4l1+
 lTxlOI8ytsomNew6zD3iyN7mQHIY5ZBDUrRAOBD5VU7d1dCNkVHAnn7/u
 ozI1AWq7kyT/vdDznOue60VoUEHz1Vh7lehXaWawDFIr7BxxoXhk+BNLt
 lvdIxUrlFj/tGy+jZK3C87G3sYJzuPbvWSIp6F3+745v73An9loW1bbvC
 RymhNeCvwhgWSWQXmyWn1FXOBAtQHfiGSxqPBiCpaufqRvP0ns+keXwS1
 AaQ2k4Pb9U8bW4bF9fT9yB6kKPLVqbxyEvXO/OKJVo3uS9T+jX74dyc75
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U+ix+dtx
Subject: [Intel-wired-lan] [iwl-next v2 7/8] iavf: use libie_aq_str
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

There is no need to store the err string in hw->err_str. Simplify it and
use common helper. hw->err_str is still used for other purpouse.

It should be marked that previously for unknown error the numeric value
was passed as a string. Now the "LIBIE_AQ_RC_UNKNOWN" is used for such
cases.

Add libie_aminq module in iavf Kconfig.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |  1 +
 .../net/ethernet/intel/iavf/iavf_prototype.h  |  1 -
 drivers/net/ethernet/intel/iavf/iavf_common.c | 52 -------------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  5 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  2 +-
 5 files changed, 5 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index d5de9bc8b1b6..29c03a9ce145 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -260,6 +260,7 @@ config I40E_DCB
 config IAVF
 	tristate
 	select LIBIE
+	select LIBIE_ADMINQ
 	select NET_SHAPER
 
 config I40EVF
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index 34b5ed87a9aa..7f9f9dbf959a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -34,7 +34,6 @@ void iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask mask,
 
 bool iavf_check_asq_alive(struct iavf_hw *hw);
 enum iavf_status iavf_aq_queue_shutdown(struct iavf_hw *hw, bool unloading);
-const char *iavf_aq_str(struct iavf_hw *hw, enum libie_aq_err aq_err);
 const char *iavf_stat_str(struct iavf_hw *hw, enum iavf_status stat_err);
 
 enum iavf_status iavf_aq_set_rss_lut(struct iavf_hw *hw, u16 seid,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index cc71e48b5689..614a886bca99 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -7,58 +7,6 @@
 #include "iavf_adminq.h"
 #include "iavf_prototype.h"
 
-/**
- * iavf_aq_str - convert AQ err code to a string
- * @hw: pointer to the HW structure
- * @aq_err: the AQ error code to convert
- **/
-const char *iavf_aq_str(struct iavf_hw *hw, enum libie_aq_err aq_err)
-{
-	switch (aq_err) {
-	case LIBIE_AQ_RC_OK:
-		return "OK";
-	case LIBIE_AQ_RC_EPERM:
-		return "LIBIE_AQ_RC_EPERM";
-	case LIBIE_AQ_RC_ENOENT:
-		return "LIBIE_AQ_RC_ENOENT";
-	case LIBIE_AQ_RC_ESRCH:
-		return "LIBIE_AQ_RC_ESRCH";
-	case LIBIE_AQ_RC_EIO:
-		return "LIBIE_AQ_RC_EIO";
-	case LIBIE_AQ_RC_EAGAIN:
-		return "LIBIE_AQ_RC_EAGAIN";
-	case LIBIE_AQ_RC_ENOMEM:
-		return "LIBIE_AQ_RC_ENOMEM";
-	case LIBIE_AQ_RC_EACCES:
-		return "LIBIE_AQ_RC_EACCES";
-	case LIBIE_AQ_RC_EBUSY:
-		return "LIBIE_AQ_RC_EBUSY";
-	case LIBIE_AQ_RC_EEXIST:
-		return "LIBIE_AQ_RC_EEXIST";
-	case LIBIE_AQ_RC_EINVAL:
-		return "LIBIE_AQ_RC_EINVAL";
-	case LIBIE_AQ_RC_ENOSPC:
-		return "LIBIE_AQ_RC_ENOSPC";
-	case LIBIE_AQ_RC_ENOSYS:
-		return "LIBIE_AQ_RC_ENOSYS";
-	case LIBIE_AQ_RC_EMODE:
-		return "LIBIE_AQ_RC_EMODE";
-	case LIBIE_AQ_RC_ENOSEC:
-		return "LIBIE_AQ_RC_ENOSEC";
-	case LIBIE_AQ_RC_EBADSIG:
-		return "LIBIE_AQ_RC_EBADSIG";
-	case LIBIE_AQ_RC_ESVN:
-		return "LIBIE_AQ_RC_ESVN";
-	case LIBIE_AQ_RC_EBADMAN:
-		return "LIBIE_AQ_RC_EBADMAN";
-	case LIBIE_AQ_RC_EBADBUF:
-		return "LIBIE_AQ_RC_EBADBUF";
-	}
-
-	snprintf(hw->err_str, sizeof(hw->err_str), "%d", aq_err);
-	return hw->err_str;
-}
-
 /**
  * iavf_stat_str - convert status err code to a string
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2c0bb41809a4..1b4a9a921d6c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -50,6 +50,7 @@ MODULE_ALIAS("i40evf");
 MODULE_DESCRIPTION("Intel(R) Ethernet Adaptive Virtual Function Network Driver");
 MODULE_IMPORT_NS("LIBETH");
 MODULE_IMPORT_NS("LIBIE");
+MODULE_IMPORT_NS("LIBIE_ADMINQ");
 MODULE_LICENSE("GPL v2");
 
 static const struct net_device_ops iavf_netdev_ops;
@@ -1734,7 +1735,7 @@ static int iavf_config_rss_aq(struct iavf_adapter *adapter)
 	if (status) {
 		dev_err(&adapter->pdev->dev, "Cannot set RSS key, err %s aq_err %s\n",
 			iavf_stat_str(hw, status),
-			iavf_aq_str(hw, hw->aq.asq_last_status));
+			libie_aq_str(hw->aq.asq_last_status));
 		return iavf_status_to_errno(status);
 
 	}
@@ -1744,7 +1745,7 @@ static int iavf_config_rss_aq(struct iavf_adapter *adapter)
 	if (status) {
 		dev_err(&adapter->pdev->dev, "Cannot set RSS lut, err %s aq_err %s\n",
 			iavf_stat_str(hw, status),
-			iavf_aq_str(hw, hw->aq.asq_last_status));
+			libie_aq_str(hw->aq.asq_last_status));
 		return iavf_status_to_errno(status);
 	}
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a6f0e5990be2..65340ba0b152 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -29,7 +29,7 @@ static int iavf_send_pf_msg(struct iavf_adapter *adapter,
 	if (status)
 		dev_dbg(&adapter->pdev->dev, "Unable to send opcode %d to PF, status %s, aq_err %s\n",
 			op, iavf_stat_str(hw, status),
-			iavf_aq_str(hw, hw->aq.asq_last_status));
+			libie_aq_str(hw->aq.asq_last_status));
 	return iavf_status_to_errno(status);
 }
 
-- 
2.42.0

