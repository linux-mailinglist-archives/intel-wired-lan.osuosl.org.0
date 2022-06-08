Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842C65439E7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 19:06:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69788401C5;
	Wed,  8 Jun 2022 17:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9IhPPI2ERTGP; Wed,  8 Jun 2022 17:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7480F40101;
	Wed,  8 Jun 2022 17:06:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FFE51BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 17:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E0A340101
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 17:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j3BLndBWLqNp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 17:05:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 466AC40002
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 17:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654707957; x=1686243957;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mIkkQ8/5DrIuapdEq8RIpJ7NiFbp8MDGZSzozoidtH0=;
 b=KYvVUzGhsoAvGSb5VPaS4utvx6Sb+vRGv9InlrLZNvhwQJwTb72BT7r2
 tpOcRzIvgj8NwThEkfu9ZLen3GTjkHwekEbVdm3c5NDZp5oI0wA9kahBQ
 j/TZ0Vqy/jK/Tfgh+C/qsXbR8I1u4t3jQ9Wg7Czr48zCsf6M/a7RScEcC
 /xLBYR9icpP4rq/3+RVYDm5qVNViqZnMk52TqCBGc22Zs4PBPybB1jqhp
 WRzvqBjVATcBJbAyzMPMF2gpu/y4AqFzkodfT246wbwVYq3UBjhowhYEu
 PJjVUhhoS4GvQzJXKc5fIC42wBSJQn1wdEFK2sV8ci6ozuXLat/rTH1Fq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="338756306"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="338756306"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 10:05:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="648727689"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jun 2022 10:05:52 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jun 2022 13:05:40 -0400
Message-Id: <20220608170540.3463098-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix missing state logs
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
