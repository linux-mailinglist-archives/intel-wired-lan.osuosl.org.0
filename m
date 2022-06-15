Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2D454D07F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 19:57:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC06081B70;
	Wed, 15 Jun 2022 17:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dqXzL-OimRjq; Wed, 15 Jun 2022 17:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B603E81A8E;
	Wed, 15 Jun 2022 17:57:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40D4B1BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 17:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 20CDE415CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 17:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id icFfw3zxuLfE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 17:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21255409FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 17:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655315853; x=1686851853;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mpRgWiOmGz3S7N9uHsWfpd1PiTlTTZFrpAxauFO1/hA=;
 b=fXAQ2mLk68nkcEPhT0HGwXw/UF+K88uFMfG06Zs72o9VvRsf0pA35s/w
 9iDQlNbCXuin5R8F8N12L++t4Rpj5o20b7TcotRLL175wWHiOgV9rXeex
 UiJVtcMR+pzIMgMzXpmROM3MaZvV3CAIuqTBIu92FPlNjGtMt8iNvj+oQ
 ic1ZB3s9CU+acBHzfYxz+I+8uA+QvV6w0wzDsHBWUlTjJGDesUMDHfctE
 sQtKEWyIVuFsB+exaV70Hc32SpNbW0l/BdAvXTuQOFiuLP5EXICYX0RV3
 gDspNEG61qNuSBqHu4NE471RNOWAvbbWe60vhwrM8qgO/nTu5F94T6TO7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279770662"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="279770662"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 10:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="618576065"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by orsmga001.jf.intel.com with ESMTP; 15 Jun 2022 10:57:32 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Jun 2022 13:57:20 -0400
Message-Id: <20220615175720.4058112-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix missing state logs
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix debug prints, by adding missing state prints.

Extend iavf_state_str by strings for __IAVF_INIT_EXTENDED_CAPS and
__IAVF_INIT_CONFIG_ADAPTER.

Without this patch, when enabling debug prints for iavf.h, user will
see:
iavf 0000:06:0e.0: state transition from:__IAVF_INIT_GET_RESOURCES to:__IAVF_UNKNOWN_STATE
iavf 0000:06:0e.0: state transition from:__IAVF_UNKNOWN_STATE to:__IAVF_UNKNOWN_STATE

Fixes: 605ca7c5c670 ("iavf: Fix kernel BUG in free_msi_irqs")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
v2: add Fixes Tag and Blank lines @ commit message
v3: change code author
---
 drivers/net/ethernet/intel/iavf/iavf.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index fda1198d2c00..cbcf0c710072 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -464,6 +464,10 @@ static inline const char *iavf_state_str(enum iavf_state_t state)
 		return "__IAVF_INIT_VERSION_CHECK";
 	case __IAVF_INIT_GET_RESOURCES:
 		return "__IAVF_INIT_GET_RESOURCES";
+	case __IAVF_INIT_EXTENDED_CAPS:
+		return "__IAVF_INIT_EXTENDED_CAPS";
+	case __IAVF_INIT_CONFIG_ADAPTER:
+		return "__IAVF_INIT_CONFIG_ADAPTER";
 	case __IAVF_INIT_SW:
 		return "__IAVF_INIT_SW";
 	case __IAVF_INIT_FAILED:
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
