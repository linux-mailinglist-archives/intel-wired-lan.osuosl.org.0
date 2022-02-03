Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2114A8248
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 11:26:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABDB383FFB;
	Thu,  3 Feb 2022 10:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUSbdYVmgngC; Thu,  3 Feb 2022 10:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 996A682A87;
	Thu,  3 Feb 2022 10:26:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A1861BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1106D41666
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqjEALV0e59N for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 10:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CAEC41664
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643883980; x=1675419980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZEbrKZ3eMhAiusP5soNImWO4KgK71JHRpq/0Dzrpe3I=;
 b=C78n6MXM82YTprvCofacSja1a+KpP21ncDUPbU+iprUZbxemQLBbMT8H
 pWjVfBwguduSUE1zjhBIhZBEPyGZVvq5792sKOMT9IjOdJsWqK3O12Qjq
 pqexLllkP3DYeoy10q/nkue+3bPq7kn4jR+zUV5UqAHa4UianrR8AtK9m
 Io6RK88nExb65T+d2ACMquo051CB+KXwzPTOPDduxbLulNUmREiPDI4QT
 EFAPidKQU2FMvfwZD9o3N4FMz1WjUCbS7p8S4QjGic8n2UJq5sWBC5Q61
 hQKRmjig+6Pc31M8eF4fQslm2eU4Pa5ngE9fPTuot2c79Y8UUkWk2q6fm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="235517126"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="235517126"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 02:26:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="699265304"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga005.jf.intel.com with ESMTP; 03 Feb 2022 02:26:18 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Feb 2022 11:25:18 +0100
Message-Id: <20220203102518.2701-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Remove non-inclusive
 language from Intel code.
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove non-inclusive language from Intel code in iavf driver.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_common.c | 4 ++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_status.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index e9cc7f6..34e46a2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -131,8 +131,8 @@ const char *iavf_stat_str(struct iavf_hw *hw, enum iavf_status stat_err)
 		return "IAVF_ERR_INVALID_MAC_ADDR";
 	case IAVF_ERR_DEVICE_NOT_SUPPORTED:
 		return "IAVF_ERR_DEVICE_NOT_SUPPORTED";
-	case IAVF_ERR_MASTER_REQUESTS_PENDING:
-		return "IAVF_ERR_MASTER_REQUESTS_PENDING";
+	case IAVF_ERR_PRIMARY_REQUESTS_PENDING:
+		return "IAVF_ERR_PRIMARY_REQUESTS_PENDING";
 	case IAVF_ERR_INVALID_LINK_SETTINGS:
 		return "IAVF_ERR_INVALID_LINK_SETTINGS";
 	case IAVF_ERR_AUTONEG_NOT_COMPLETE:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 16742f3..e558644 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -90,7 +90,7 @@ int iavf_status_to_errno(enum iavf_status status)
 	case IAVF_ERR_UNKNOWN_PHY:
 	case IAVF_ERR_LINK_SETUP:
 	case IAVF_ERR_ADAPTER_STOPPED:
-	case IAVF_ERR_MASTER_REQUESTS_PENDING:
+	case IAVF_ERR_PRIMARY_REQUESTS_PENDING:
 	case IAVF_ERR_AUTONEG_NOT_COMPLETE:
 	case IAVF_ERR_RESET_FAILED:
 	case IAVF_ERR_BAD_PTR:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_status.h b/drivers/net/ethernet/intel/iavf/iavf_status.h
index 46e3d1f6..2ea5c7c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_status.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_status.h
@@ -18,7 +18,7 @@ enum iavf_status {
 	IAVF_ERR_ADAPTER_STOPPED		= -9,
 	IAVF_ERR_INVALID_MAC_ADDR		= -10,
 	IAVF_ERR_DEVICE_NOT_SUPPORTED		= -11,
-	IAVF_ERR_MASTER_REQUESTS_PENDING	= -12,
+	IAVF_ERR_PRIMARY_REQUESTS_PENDING	= -12,
 	IAVF_ERR_INVALID_LINK_SETTINGS		= -13,
 	IAVF_ERR_AUTONEG_NOT_COMPLETE		= -14,
 	IAVF_ERR_RESET_FAILED			= -15,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
