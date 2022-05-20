Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FC252F20E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 20:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AA1584739;
	Fri, 20 May 2022 18:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aD73y9zO1TD3; Fri, 20 May 2022 18:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1060284733;
	Fri, 20 May 2022 18:07:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 056E31BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 18:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01114418D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 18:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o991BpAGrJHj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 18:07:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A254A418CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 18:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653070071; x=1684606071;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k3RqF66ubHhblTUAjN7zWTiCNXNZYBerGA4ZwvMt+c8=;
 b=MWtP76itS10rPExj5cB4hcYQdIrwZh8pMwhQplzMOEq9ij0BfdIIeYPX
 nrjf9BRx3K3C0sdooeyG70CB28v+pk6IFNvJr2mRGeWDPKvEm0lC7FHvL
 yqpsbAD2vWij9i/Kz7/3UPnA3PebJQzbX7U6i+Adq+7ip5Hld4gqRX2ah
 b8MNMvh9O/bYJ7S/7t5VgWwIHwKepVl7vODXnc2lU73CXLvoThdTcrn9M
 Cd0qA4GbljXPbLsha1ZjnQ04GUhNlMd/vv/pSJKhGfedscF4y8jhpr1x8
 ahkarU9VajZMkZGrG+6L96b9ET3+G9v7FjjaPAjjqpGMuK4nq7rYy6FvT A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10353"; a="272666414"
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="272666414"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 11:07:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="662377858"
Received: from amlin-019-242.igk.intel.com (HELO amlin-018-242.igk.intel.com)
 ([10.102.19.242])
 by FMSMGA003.fm.intel.com with ESMTP; 20 May 2022 11:07:05 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 May 2022 18:07:03 +0000
Message-Id: <20220520180703.680212-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix interface init with MSI
 interrupts (no MSI-X)
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
Cc: Michal Maloszewski <michal.maloszewski@intel.com>,
 Dawid Lukwinski <dawid.lukwinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the inability to bring an interface up on a setup with
only MSI interrupts enabled (no MSI-X).
Solution is to add a default number of QPs = 1. This is enough,
since without MSI-X support driver enables only a basic feature set.

Fixes: bc6d33c8d93f ("i40e: Fix the number of queues available to be mapped for use")
Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
v2: Moving the comment in right place 
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8572993972ef..6c41ee966570 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1835,11 +1835,15 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 		 * non-zero req_queue_pairs says that user requested a new
 		 * queue count via ethtool's set_channels, so use this
 		 * value for queues distribution across traffic classes
+		 * We need at least one queue pair for the interface
+		 * to be usable as we see in else statement.
 		 */
 		if (vsi->req_queue_pairs > 0)
 			vsi->num_queue_pairs = vsi->req_queue_pairs;
 		else if (pf->flags & I40E_FLAG_MSIX_ENABLED)
 			vsi->num_queue_pairs = pf->num_lan_msix;
+		else
+			vsi->num_queue_pairs = 1;
 	}
 
 	/* Number of queues per enabled TC */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
