Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6597A7D165A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 21:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA6AC84CD2;
	Fri, 20 Oct 2023 19:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA6AC84CD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697830702;
	bh=JCj8hJQ//U4vTzjo2/CCpyX9z0x/pXoObbD8IwfT/wI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hQ9lqmLTcZof9Ty/+4CocvN7+IQpFMka344TINQxGDrBAgGyR2F31q0miAe7MK1nL
	 eE4EDGUP7hQVN1SjBxa+wL/FtbwjA7yjgCm58HKJ9ufyztsjsUQyEQZG4sDFAD1Gby
	 Q6Hr3Pved9ZPdI+yUON1/Ou3VItEr1HaJnYwSRutmT2oqjevio0463z9L90HSUJ6qT
	 H8+mZ+JdB0vk/9ECavdr/636WU/Vf2Y5cISjZWvG+OnYJYr7kAbl5Hymm64Qco1llE
	 kv+VdjN1rWYBJlFqgo5zgnuuGqYJupHM+lMD9l4amtxKBOf6XOjx8pahqCusJGNwxg
	 u8l75aAblT5Dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FW2vmLmlnRRT; Fri, 20 Oct 2023 19:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DE9D84CB6;
	Fri, 20 Oct 2023 19:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DE9D84CB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6619E1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F9E384CD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F9E384CD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MRWvg2mx-wti for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 19:38:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E70184CB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E70184CB8
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-Wn8qypecNgCyS0PD6FYezg-1; Fri, 20 Oct 2023 15:37:49 -0400
X-MC-Unique: Wn8qypecNgCyS0PD6FYezg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 20A1C3C1016C;
 Fri, 20 Oct 2023 19:37:49 +0000 (UTC)
Received: from p1.luc.com (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 341A7C15BB8;
 Fri, 20 Oct 2023 19:37:47 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 20 Oct 2023 21:37:37 +0200
Message-ID: <20231020193746.2274379-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697830691;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=W3RsnyeipnBfFTo07NnrzIlV7yB7g314ddY+RHz4USc=;
 b=f96e3K8x2bxC1euWXk9p5hp+PEuuZB6bgZRaBW4oTM6k1oehWq+w302Ui0NaZCNLj3tJD2
 H+KH/qp3GelaBAfhPcIHSDHLbdgYwR1IssyCFtlJrf8HP7HW771bA5B74afuQBD89+cKPN
 ySnZdMG7nlmI2gxdTjssgNoi+eyw6QA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=f96e3K8x
Subject: [Intel-wired-lan] [PATCH iwl-next 1/6] i40e: Remove unused flags
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
Cc: Eric Dumazet <edumazet@google.com>, dacampbe@redhat.com,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The flag I40E_FLAG_RX_CSUM_ENABLED and I40E_HW_FLAG_DROP_MODE are
set and never read. Remove them.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        | 57 +++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  3 +-
 4 files changed, 31 insertions(+), 37 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index f86a4241eca2..6e3e2a6d18c4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -501,33 +501,32 @@ struct i40e_pf {
 #define I40E_HW_RESTART_AUTONEG			BIT(18)
 
 	u32 flags;
-#define I40E_FLAG_RX_CSUM_ENABLED		BIT(0)
-#define I40E_FLAG_MSI_ENABLED			BIT(1)
-#define I40E_FLAG_MSIX_ENABLED			BIT(2)
-#define I40E_FLAG_RSS_ENABLED			BIT(3)
-#define I40E_FLAG_VMDQ_ENABLED			BIT(4)
-#define I40E_FLAG_SRIOV_ENABLED			BIT(5)
-#define I40E_FLAG_DCB_CAPABLE			BIT(6)
-#define I40E_FLAG_DCB_ENABLED			BIT(7)
-#define I40E_FLAG_FD_SB_ENABLED			BIT(8)
-#define I40E_FLAG_FD_ATR_ENABLED		BIT(9)
-#define I40E_FLAG_MFP_ENABLED			BIT(10)
-#define I40E_FLAG_HW_ATR_EVICT_ENABLED		BIT(11)
-#define I40E_FLAG_VEB_MODE_ENABLED		BIT(12)
-#define I40E_FLAG_VEB_STATS_ENABLED		BIT(13)
-#define I40E_FLAG_LINK_POLLING_ENABLED		BIT(14)
-#define I40E_FLAG_TRUE_PROMISC_SUPPORT		BIT(15)
-#define I40E_FLAG_LEGACY_RX			BIT(16)
-#define I40E_FLAG_PTP				BIT(17)
-#define I40E_FLAG_IWARP_ENABLED			BIT(18)
-#define I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED	BIT(19)
-#define I40E_FLAG_SOURCE_PRUNING_DISABLED       BIT(20)
-#define I40E_FLAG_TC_MQPRIO			BIT(21)
-#define I40E_FLAG_FD_SB_INACTIVE		BIT(22)
-#define I40E_FLAG_FD_SB_TO_CLOUD_FILTER		BIT(23)
-#define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
-#define I40E_FLAG_RS_FEC			BIT(25)
-#define I40E_FLAG_BASE_R_FEC			BIT(26)
+#define I40E_FLAG_MSI_ENABLED			BIT(0)
+#define I40E_FLAG_MSIX_ENABLED			BIT(1)
+#define I40E_FLAG_RSS_ENABLED			BIT(2)
+#define I40E_FLAG_VMDQ_ENABLED			BIT(3)
+#define I40E_FLAG_SRIOV_ENABLED			BIT(4)
+#define I40E_FLAG_DCB_CAPABLE			BIT(5)
+#define I40E_FLAG_DCB_ENABLED			BIT(6)
+#define I40E_FLAG_FD_SB_ENABLED			BIT(7)
+#define I40E_FLAG_FD_ATR_ENABLED		BIT(8)
+#define I40E_FLAG_MFP_ENABLED			BIT(9)
+#define I40E_FLAG_HW_ATR_EVICT_ENABLED		BIT(10)
+#define I40E_FLAG_VEB_MODE_ENABLED		BIT(11)
+#define I40E_FLAG_VEB_STATS_ENABLED		BIT(12)
+#define I40E_FLAG_LINK_POLLING_ENABLED		BIT(13)
+#define I40E_FLAG_TRUE_PROMISC_SUPPORT		BIT(14)
+#define I40E_FLAG_LEGACY_RX			BIT(15)
+#define I40E_FLAG_PTP				BIT(16)
+#define I40E_FLAG_IWARP_ENABLED			BIT(17)
+#define I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED	BIT(18)
+#define I40E_FLAG_SOURCE_PRUNING_DISABLED       BIT(19)
+#define I40E_FLAG_TC_MQPRIO			BIT(20)
+#define I40E_FLAG_FD_SB_INACTIVE		BIT(21)
+#define I40E_FLAG_FD_SB_TO_CLOUD_FILTER		BIT(22)
+#define I40E_FLAG_DISABLE_FW_LLDP		BIT(23)
+#define I40E_FLAG_RS_FEC			BIT(24)
+#define I40E_FLAG_BASE_R_FEC			BIT(25)
 /* TOTAL_PORT_SHUTDOWN
  * Allows to physically disable the link on the NIC's port.
  * If enabled, (after link down request from the OS)
@@ -549,8 +548,8 @@ struct i40e_pf {
  *   the link is being brought down by clearing bit (I40E_AQ_PHY_ENABLE_LINK)
  *   in abilities field of i40e_aq_set_phy_config structure
  */
-#define I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(27)
-#define I40E_FLAG_VF_VLAN_PRUNING		BIT(28)
+#define I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(26)
+#define I40E_FLAG_VF_VLAN_PRUNING		BIT(27)
 
 	struct i40e_client_instance *cinst;
 	bool stat_offsets_loaded;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 9ce6e633cc2f..9a5a47b29bb7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -555,10 +555,8 @@ static void i40e_set_hw_flags(struct i40e_hw *hw)
 
 	if (aq->api_maj_ver > 1 ||
 	    (aq->api_maj_ver == 1 &&
-	     aq->api_min_ver >= 8)) {
+	     aq->api_min_ver >= 8))
 		hw->flags |= I40E_HW_FLAG_FW_LLDP_PERSISTENT;
-		hw->flags |= I40E_HW_FLAG_DROP_MODE;
-	}
 
 	if (aq->api_maj_ver > 1 ||
 	    (aq->api_maj_ver == 1 &&
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index f24d2e13fcd1..b44d8d8b0474 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12733,9 +12733,7 @@ static int i40e_sw_init(struct i40e_pf *pf)
 	u16 pow;
 
 	/* Set default capability flags */
-	pf->flags = I40E_FLAG_RX_CSUM_ENABLED |
-		    I40E_FLAG_MSI_ENABLED     |
-		    I40E_FLAG_MSIX_ENABLED;
+	pf->flags = I40E_FLAG_MSI_ENABLED | I40E_FLAG_MSIX_ENABLED;
 
 	/* Set default ITR */
 	pf->rx_itr_default = I40E_ITR_RX_DEF;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 2a5c7aec0bb1..2c791b7342b9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -553,8 +553,7 @@ struct i40e_hw {
 #define I40E_HW_FLAG_FW_LLDP_STOPPABLE      BIT_ULL(4)
 #define I40E_HW_FLAG_FW_LLDP_PERSISTENT     BIT_ULL(5)
 #define I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED BIT_ULL(6)
-#define I40E_HW_FLAG_DROP_MODE              BIT_ULL(7)
-#define I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE BIT_ULL(8)
+#define I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE BIT_ULL(7)
 	u64 flags;
 
 	/* Used in set switch config AQ command */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
