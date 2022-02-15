Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3944B6ACD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Feb 2022 12:29:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C996408AC;
	Tue, 15 Feb 2022 11:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f0F-s3g-q_N0; Tue, 15 Feb 2022 11:29:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5211408E8;
	Tue, 15 Feb 2022 11:29:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27DE81BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 11:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21CBC4047C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 11:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id blmR2IvMY7Gc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Feb 2022 11:29:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0BC5540127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 11:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644924542; x=1676460542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LX5ww2tULeTN13y+wtFkWqAcTle/MdCl7zobsUn4KZM=;
 b=Y/C+tIlXs07Ij0KtSlAiznXMFpePlYzeYp4peXbU9t/EdN9e/o20Cbph
 j8+f7HY5sla/FMI6jYPqy8lam8Q8L2R1BSme1aJCBu8b3T2TSIWR8rnh1
 TAB2dEMHDJYnUxaPIKgpfD7HWHW6A4bz/oogLY4rJPzeix/o8sUz4kl3x
 9OlEAS9XkImV3qUXuBDxbVK/ICir+JKuJ5mXMpBOG4EL+u0xArHXkKEku
 sOu4rMCFQqW6PxXJAYvreehWLa351sRWk+U7fDFQnygeCHvyApNQTsQDj
 BJEn2MmFjOU4MF5/UOa8NEs9P7VLWglFx8scuqxuRsaFs+T5DKTIrh+nh g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="247927549"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="247927549"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 03:29:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="635817810"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by orsmga004.jf.intel.com with ESMTP; 15 Feb 2022 03:28:59 -0800
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Feb 2022 13:35:51 +0000
Message-Id: <20220215133551.330076-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix interface init with MSI
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
 drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8572993972ef..dfaa56235b60 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1840,6 +1840,9 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 			vsi->num_queue_pairs = vsi->req_queue_pairs;
 		else if (pf->flags & I40E_FLAG_MSIX_ENABLED)
 			vsi->num_queue_pairs = pf->num_lan_msix;
+		else
+			/* We need at least one queue pair for the interface to be usable */
+			vsi->num_queue_pairs = 1;
 	}
 
 	/* Number of queues per enabled TC */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
