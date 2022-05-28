Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2726C539174
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:09:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E8B241C3F;
	Tue, 31 May 2022 13:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNwggB-CfVAi; Tue, 31 May 2022 13:08:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9C1D4183C;
	Tue, 31 May 2022 13:08:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E43431BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD2F083F96
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o4qZ4ggBwXLr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 May 2022 12:33:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48D1783EF9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653741195; x=1685277195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kTqxEHapl+wX9DZddm1wFNmrkuqZW8jiLDyrJBUDs74=;
 b=Hr+Z4wsFYjq/S9zCR8d35HthiE8wn50P7/a/rza/lpzRDjNLtWFh/T0Y
 Vdz6jDB06abReqQpnwhJEQzd8CxNFyK7GP/O9jouawMBHK1srw2713oK1
 Fm5omKAKgeEihLx88LayYV4um4Ywzu+O6H6pzja9far5opT0qLfkRb8+3
 2DdhlQOBM1Q3avRz+uc0KdQLL5V9OXaOi6ZCqNBuXfC9jbbS7JH1skxpJ
 iqS6bGqfqUXXl6gf75HV37pi+bAwc5K3G1q2uUKXyI+1qvU3sZvxf+ctm
 SwNMk6YT/HZoj8hZ5gjkXNPzOLD1sSqp0u/I85YPxrASPq+mp7noFISQi A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="262287049"
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="262287049"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="604391840"
Received: from unknown (HELO jiaqingz-server.sh.intel.com) ([10.239.48.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:11 -0700
From: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Sat, 28 May 2022 20:31:22 +0800
Message-Id: <20220528123123.1851519-3-jiaqing.zhao@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220528123123.1851519-1-jiaqing.zhao@linux.intel.com>
References: <20220528123123.1851519-1-jiaqing.zhao@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
Subject: [Intel-wired-lan] [PATCH 2/3] ixgb: Fix typos in comments
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
Cc: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"VLAN filter" was misspelled as "VLAN filer" in some comments.

Signed-off-by: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgb/ixgb_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgb/ixgb_hw.c b/drivers/net/ethernet/intel/ixgb/ixgb_hw.c
index c8d1e815ec6b..98bd3267b99b 100644
--- a/drivers/net/ethernet/intel/ixgb/ixgb_hw.c
+++ b/drivers/net/ethernet/intel/ixgb/ixgb_hw.c
@@ -576,7 +576,7 @@ ixgb_rar_set(struct ixgb_hw *hw,
  * Writes a value to the specified offset in the VLAN filter table.
  *
  * hw - Struct containing variables accessed by shared code
- * offset - Offset in VLAN filer table to write
+ * offset - Offset in VLAN filter table to write
  * value - Value to write into VLAN filter table
  *****************************************************************************/
 void
@@ -588,7 +588,7 @@ ixgb_write_vfta(struct ixgb_hw *hw,
 }
 
 /******************************************************************************
- * Clears the VLAN filer table
+ * Clears the VLAN filter table
  *
  * hw - Struct containing variables accessed by shared code
  *****************************************************************************/
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
