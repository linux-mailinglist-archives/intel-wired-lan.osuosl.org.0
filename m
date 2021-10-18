Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DD1432A36
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 01:16:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C55A60AD7;
	Mon, 18 Oct 2021 23:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mT_y79NJIVNd; Mon, 18 Oct 2021 23:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EC6460ACB;
	Mon, 18 Oct 2021 23:16:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D80F1BF400
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 23:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E42BD40662
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 23:16:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQwtaDlCI0F4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 23:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AAD24066B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 23:16:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228655715"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="228655715"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 16:16:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="629385991"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.209.135.88])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 16:16:12 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Oct 2021 18:16:03 -0500
Message-Id: <20211018231603.1690-4-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211018231603.1690-1-shiraz.saleem@intel.com>
References: <20211018231603.1690-1-shiraz.saleem@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 3/3] RDMA/irdma: Set protocol based on
 PF rdma_mode flag
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set the RDMA protocol to use at driver bind time based on the ice PF's
rdma_mode flag.

Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
---
 drivers/infiniband/hw/irdma/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 51a4135..3fda7b7 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -228,7 +228,8 @@ static void irdma_fill_device_info(struct irdma_device *iwdev, struct ice_pf *pf
 	rf->msix_count =  pf->num_rdma_msix;
 	rf->msix_entries = &pf->msix_entries[pf->rdma_base_vector];
 	rf->default_vsi.vsi_idx = vsi->vsi_num;
-	rf->protocol_used = IRDMA_ROCE_PROTOCOL_ONLY;
+	rf->protocol_used = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2 ?
+			    IRDMA_ROCE_PROTOCOL_ONLY : IRDMA_IWARP_PROTOCOL_ONLY;
 	rf->rdma_ver = IRDMA_GEN_2;
 	rf->rsrc_profile = IRDMA_HMC_PROFILE_DEFAULT;
 	rf->rst_to = IRDMA_RST_TIMEOUT_HZ;
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
