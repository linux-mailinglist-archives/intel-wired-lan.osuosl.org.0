Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CD4609C51
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Oct 2022 10:20:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DC0060B1C;
	Mon, 24 Oct 2022 08:19:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DC0060B1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666599598;
	bh=gZ318AfrN/aGxYcdpTDTdPJ4px1J3k467ZnPvRhFeUw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UrnZShoPAF1CswLDewEKMaJMgMoxJZo1RzSc59BSmY0VUtFYIWbrvVFrTxIKaPNuy
	 Mo9CdZznsNepDUyYPW92F9vWrHIUWKv+U5hi1Hdq3LJh8qb7LPhe7nQVlxI7xf+B2v
	 QAjyGjsXUykviZHY86H7pIvTWvG+nEhz+uYPW+xMRTb4ILbO7v+9cf2P6IuwJXj/M0
	 r3u0TbCg2u/RLRQIxIJlJOBOyxWARLfraHedQ63l64iN/TkSIZCAglg2bfADgfTi9l
	 +cI3g23pvD0nse6oJgBYQ3TcKQVGaMv4q+lthVATTFVJGM997jnHdAaJGhadSvED+p
	 aFVnXSjzDduSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0JgsZusL1Zk; Mon, 24 Oct 2022 08:19:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E40260AE8;
	Mon, 24 Oct 2022 08:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E40260AE8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83F7A1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Oct 2022 08:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DEB0813C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Oct 2022 08:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DEB0813C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JuoFiOf_JGQw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Oct 2022 08:19:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 697138138B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 697138138B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Oct 2022 08:19:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="306097335"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="306097335"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 01:19:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="736328154"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="736328154"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2022 01:19:48 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Oct 2022 10:19:42 +0200
Message-Id: <20221024081942.34809-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666599590; x=1698135590;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x1Wo8cBKA3ylyXwXGsbyB6mAK97mvOz83dw6TQrTHog=;
 b=NaJG14a/y1Ex0OWgMUM2T0dSu6sR1IvO9uzH/Nmx1cTGOHFOgTIvKO9B
 MEGkCQoNVW5KujpTP0/JuYvWOQbT/KM0sgruZnKQ12QRzotAuuoB/wh50
 PKRHPTfS5FEUXe9YO4U6p1RHaodMCrdw0q5BRURjg4ecN5pMrdqysMqs6
 AoDVKzxBVc6A5ExVJzjUOLcf13f/nPIWr2GOS79WT5G3iQB8VSCKauKCC
 gLIxSW1MbAwC0qbtgVxS1Mr7nf6erFcrCNVeDn3UE6I+v7DNLPW0lNtJC
 eoCwBAs5QaP+EeFyAiPiCZ7KNYikfNUKyjwAt1QInC2F9Wa02z1Px/tg/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NaJG14a/
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix not setting default
 xps_cpus after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

During tx rings configuration default XPS queue config is set and
__I40E_TX_XPS_INIT_DONE is locked. __I40E_TX_XPS_INIT_DONE state is
cleared and set again with default mapping only during queues build,
it means after first setup or reset with queues rebuild. (i.e.
ethtool -L <interface> combined <number>) After other resets (i.e.
ethtool -t <interface>) XPS_INIT_DONE is not cleared and those default
maps cannot be set again. It results in cleared xps_cpus mapping
until queues are not rebuild or mapping is not set by user.

Add clearing __I40E_TX_XPS_INIT_DONE state during reset to let
the driver set xps_cpus to defaults again after it was cleared.

Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4b3b6e5b612d..2828c3629e6b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10674,6 +10674,21 @@ static int i40e_rebuild_channels(struct i40e_vsi *vsi)
 	return 0;
 }
 
+/**
+ * i40e_clean_xps_state - clean xps state for every tx_ring
+ * @vsi: ptr to the VSI
+ **/
+static void i40e_clean_xps_state(struct i40e_vsi *vsi)
+{
+	int i;
+
+	if (vsi->tx_rings)
+		for (i = 0; i < vsi->num_queue_pairs; i++)
+			if (vsi->tx_rings[i])
+				clear_bit(__I40E_TX_XPS_INIT_DONE,
+					  vsi->tx_rings[i]->state);
+}
+
 /**
  * i40e_prep_for_reset - prep for the core to reset
  * @pf: board private structure
@@ -10698,8 +10713,10 @@ static void i40e_prep_for_reset(struct i40e_pf *pf)
 	i40e_pf_quiesce_all_vsi(pf);
 
 	for (v = 0; v < pf->num_alloc_vsi; v++) {
-		if (pf->vsi[v])
+		if (pf->vsi[v]) {
+			i40e_clean_xps_state(pf->vsi[v]);
 			pf->vsi[v]->seid = 0;
+		}
 	}
 
 	i40e_shutdown_adminq(&pf->hw);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
