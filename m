Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49026A5D613
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 07:24:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F295760D90;
	Wed, 12 Mar 2025 06:24:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 59vWhjk8WNSH; Wed, 12 Mar 2025 06:24:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C74460D7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741760693;
	bh=VRxIgThC9KJqpFO35tSj9UcxCEy9I3xFmKh5xFxrQEY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z7FxL1U6wgvsQJbnVuXjrXo+9QSV9kEDjIGEQ53vYLpnvX3NbLm66P7TP/XwsSG6/
	 wd2Jxpepqtw9U2Lilc3uW0XJCN9+9+zQ0Tb0uUYbZLHcMM6cdn4d+blJdEMcDaAcwC
	 1ZM60PL9ATO9FUvRRnbxgGOihXIr9AilLEJTKG/6kHZZx4AUpHnhLIl6qiS3YGJsn2
	 AlpfUUEtGJNANTPFrf73XfrDQm7xKqJXEC+9FBn7Fv3NqBXEbsDGYJOYERCOJ+yLDO
	 H68In+A3XMmHx1WUVfb7AKssbAWDKvnTUYS/GJSX+Ph+cImn3H/96k78ZFyXnaSktR
	 lg2433ys3CGBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C74460D7F;
	Wed, 12 Mar 2025 06:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B7AE943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5464960D87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hgUteXgGaxzk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 06:24:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8152460D5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8152460D5E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8152460D5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:47 +0000 (UTC)
X-CSE-ConnectionGUID: KVRTeObZRi6y/18P7/RLCg==
X-CSE-MsgGUID: L0i/3wvlSumcYBloSR4taA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="43005577"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="43005577"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:24:48 -0700
X-CSE-ConnectionGUID: OnRR4v9jQguJaiVB+pswtQ==
X-CSE-MsgGUID: Bl1nWDZHTwyZItAOnZP0Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120569570"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa007.fm.intel.com with ESMTP; 11 Mar 2025 23:24:45 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com
Date: Wed, 12 Mar 2025 07:24:25 +0100
Message-ID: <20250312062426.2544608-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
References: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741760688; x=1773296688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f7jVrCQKvaDwmfFBLWA7ybCVdKelIvpRJlfqSeslQos=;
 b=eAAcRGhjnOkS86TLQ5GI4sMiuwR/uqW5V6w9Vvykf8qYkxBHZFdmfmZ1
 yis56oIliWpCXa1bGbrk2UnverKjpR6MDl0dDnLvhMg2VWEvOIGl23KAo
 bhK6LWgEDlTil29bojEcm+PS3Mu7m1iNyAFBUvVkFmwmKJ6wA1qwQu1Su
 89bq1m23dn4F5N3H2aCOEDWi0XaYcCK6Z6c76LT5NuyX2U5bgO1K/u+Al
 tg+rHc7/DcywCNKQye64D92jFx7y1NNMfxjT0J3biVJUCr9kPsGkEuWna
 2UEQuTnpzwMp6SRD2HphJ3K7G9XeHQVrBrDDyB0BlCfUx1sOUw+9FIJes
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eAAcRGhj
Subject: [Intel-wired-lan] [iwl-next v1 7/8] iavf: use libie_aq_str
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
index a8fa67fe9336..bf9408a2606a 100644
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
index 6d7ba4d67a19..9d825ba4e656 100644
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

