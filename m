Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A47F77008D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 14:53:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E14B41FED;
	Fri,  4 Aug 2023 12:53:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E14B41FED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691153580;
	bh=xij/pxvjlGrr13GPGcBr3N3JWSa79JW9oWPlAI5er8A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cCR5vMdK26ms6o7jj2jBA/5Sx9ubv63Mz3sZcnjFGSbx7ExgmztxKTcf7BNe46EPK
	 OW2pCvMX25sqwAUPpzkBOasaI4WeZ4C+BphaDtwq6AyV4D3ZBQLYvajWy42MW5qI/e
	 rmz2lUc+XxdSaQn6xpAUOxohkRYOPUJQ/T6uzaSm2sJabVT/Jt50EpwSFnkVhu57BB
	 KUiHfHbwVtngBaG6JDdidfhgtXxciettgHlRp34OVXcDQ3WxjwSDrt04Sd2eTIflhZ
	 LERiLr9ALcsCOMpXLECov49mENyFuOSu6363z20ZOWaaG9W+OKBPlTm9bWB14gL1JB
	 FyDTxDxiykjtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZgObtVQGleR; Fri,  4 Aug 2023 12:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3EF44151F;
	Fri,  4 Aug 2023 12:52:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3EF44151F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 624A61BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 12:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68B7E81303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 12:52:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68B7E81303
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adsu055MN5mU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 12:52:19 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 627BF813E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 12:52:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 627BF813E1
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RHQWM3NvQzGpnc;
 Fri,  4 Aug 2023 20:48:47 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 4 Aug
 2023 20:52:13 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <daniel@veobot.com>, <yuehaibing@huawei.com>
Date: Fri, 4 Aug 2023 20:52:03 +0800
Message-ID: <20230804125203.30924-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove unused function
 declarations
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit dc166e22ede5 ("ixgbe: DCB remove ixgbe_fcoe_getapp routine")
leave ixgbe_fcoe_getapp() unused.
Commit ffed21bcee7a ("ixgbe: Don't bother clearing buffer memory for descriptor rings")
leave ixgbe_unmap_and_free_tx_resource() declaration unused.
And commit 3b3bf3b92b31 ("ixgbe: remove unused fcoe.tc field and fcoe_setapp()")
removed the ixgbe_fcoe_setapp() implementation.

Commit c44ade9ef8ff ("ixgbe: update to latest common code module")
declared but never implemented ixgbe_init_ops_generic().

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h        | 6 ------
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.h | 1 -
 2 files changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 63d4e32df029..b6f0376e42f4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -945,8 +945,6 @@ void ixgbe_update_pf_promisc_vlvf(struct ixgbe_adapter *adapter, u32 vid);
 void ixgbe_clear_interrupt_scheme(struct ixgbe_adapter *adapter);
 netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *, struct ixgbe_adapter *,
 				  struct ixgbe_ring *);
-void ixgbe_unmap_and_free_tx_resource(struct ixgbe_ring *,
-				      struct ixgbe_tx_buffer *);
 void ixgbe_alloc_rx_buffers(struct ixgbe_ring *, u16);
 void ixgbe_write_eitr(struct ixgbe_q_vector *);
 int ixgbe_poll(struct napi_struct *napi, int budget);
@@ -997,10 +995,6 @@ int ixgbe_setup_fcoe_ddp_resources(struct ixgbe_adapter *adapter);
 void ixgbe_free_fcoe_ddp_resources(struct ixgbe_adapter *adapter);
 int ixgbe_fcoe_enable(struct net_device *netdev);
 int ixgbe_fcoe_disable(struct net_device *netdev);
-#ifdef CONFIG_IXGBE_DCB
-u8 ixgbe_fcoe_getapp(struct ixgbe_adapter *adapter);
-u8 ixgbe_fcoe_setapp(struct ixgbe_adapter *adapter, u8 up);
-#endif /* CONFIG_IXGBE_DCB */
 int ixgbe_fcoe_get_wwn(struct net_device *netdev, u64 *wwn, int type);
 int ixgbe_fcoe_get_hbainfo(struct net_device *netdev,
 			   struct netdev_fcoe_hbainfo *info);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
index 4b531e8ae38a..34761e691d52 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
@@ -8,7 +8,6 @@
 #include "ixgbe.h"
 
 u16 ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw);
-s32 ixgbe_init_ops_generic(struct ixgbe_hw *hw);
 s32 ixgbe_init_hw_generic(struct ixgbe_hw *hw);
 s32 ixgbe_start_hw_generic(struct ixgbe_hw *hw);
 s32 ixgbe_start_hw_gen2(struct ixgbe_hw *hw);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
