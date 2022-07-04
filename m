Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEC856573E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 15:32:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6658582882;
	Mon,  4 Jul 2022 13:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6658582882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656941562;
	bh=NEPTMtNSZMHcO6XrvEM/KOYAaNWieyAbN31stmcOYbk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Fbo6Jk+8cMpb45jMsW3shJ/7uXyMAsuktbHdiGZaVvEIPJAlHL3PEYFuTdivUNwjd
	 S2HMSAMPI8SORq7tnPnphtqVrt9az8wdBPZLdG6apTWD0S7u8K5eCX1Xm4eG5UWkLG
	 ARkYFXyab8FPPNUDs2ad8dh0swbYlCILKqV1KjUgBu2pavQOIUEzwgWUEgjgDNqaNt
	 2GG827c8hSidzd7nx9IYTo+wclfQ98TOeaHpRq8ydrQWOY2+4bSlFM/7Trf61w/kdn
	 2qSr+C4if5WDq67sAZjV//A1CzQT016e1Y1DdZAqzfXHfIpQSjdO6YOWxZD29MPJHC
	 xjEkdxQSz9VVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yTxTNF63Yg-d; Mon,  4 Jul 2022 13:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C656827E0;
	Mon,  4 Jul 2022 13:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C656827E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A18491BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BC4C405EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BC4C405EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SC-jRXcedv7j for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 13:32:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BC2D401F2
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BC2D401F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="283859627"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="283859627"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="590078112"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga007.jf.intel.com with ESMTP; 04 Jul 2022 06:32:32 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 15:32:18 +0200
Message-Id: <20220704133218.1356322-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656941555; x=1688477555;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nU7Ka8reMKtcYyHAua1kuZcUqCeqrzSD9HtjnQrGjjg=;
 b=Zjjk76uCktjjAmpIW/iDptx6dVMWbiySpJ6WhnJOkHjbwBiVLtkpdIZb
 I9Ehf/wt5O0KpBI6ZSd7ZFpJXU47YkArBrzpeD1dCE3lZ4kTNENgw0HtZ
 oBIs1KX6U8HSl8EH1x+QzGhtvmjsWpqOcuz3b0QInClCVOPxaHPCk+EbR
 YRke0b89RosgrmzppFszxjcNgIV0Nlsx5e9vjYPGweNtV1hfm94cW6/+0
 UKFqRBAiNYmQr+dYDZITTxeqcP0YRMZwrdDzEYvIcZBZF+a6MXsKAErfn
 3BEft709W5ovEx3CclilyUyhF9o2Ede+3Jx7G8M7BiHpI3JSfLRvxq5Vd
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zjjk76uC
Subject: [Intel-wired-lan] [PATCH net v3 3/3] iavf: Fix adminq error handling
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

iavf_alloc_asq_bufs/iavf_alloc_arq_bufs allocates with dma_alloc_coherent
memory for VF mailbox.
Free DMA regions for both ASQ and ARQ in case error happens during
configuration of ASQ/ARQ registers.
Without this change it is possible to see when unloading interface:
74626.583369: dma_debug_device_change: device driver has pending DMA allocations while released from device [count=32]
One of leaked entries details: [device address=0x0000000b27ff9000] [size=4096 bytes] [mapped with DMA_BIDIRECTIONAL] [mapped as coherent]

Fixes: d358aa9a7a2d ("i40evf: init code and hardware support")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
index cd4e6a22d0f9..9ffbd24d83cb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
@@ -324,6 +324,7 @@ static enum iavf_status iavf_config_arq_regs(struct iavf_hw *hw)
 static enum iavf_status iavf_init_asq(struct iavf_hw *hw)
 {
 	enum iavf_status ret_code = 0;
+	int i;
 
 	if (hw->aq.asq.count > 0) {
 		/* queue already initialized */
@@ -354,12 +355,17 @@ static enum iavf_status iavf_init_asq(struct iavf_hw *hw)
 	/* initialize base registers */
 	ret_code = iavf_config_asq_regs(hw);
 	if (ret_code)
-		goto init_adminq_free_rings;
+		goto init_free_asq_bufs;
 
 	/* success! */
 	hw->aq.asq.count = hw->aq.num_asq_entries;
 	goto init_adminq_exit;
 
+init_free_asq_bufs:
+	for (i = 0; i < hw->aq.num_asq_entries; i++)
+		iavf_free_dma_mem(hw, &hw->aq.asq.r.asq_bi[i]);
+	iavf_free_virt_mem(hw, &hw->aq.asq.dma_head);
+
 init_adminq_free_rings:
 	iavf_free_adminq_asq(hw);
 
@@ -383,6 +389,7 @@ static enum iavf_status iavf_init_asq(struct iavf_hw *hw)
 static enum iavf_status iavf_init_arq(struct iavf_hw *hw)
 {
 	enum iavf_status ret_code = 0;
+	int i;
 
 	if (hw->aq.arq.count > 0) {
 		/* queue already initialized */
@@ -413,12 +420,16 @@ static enum iavf_status iavf_init_arq(struct iavf_hw *hw)
 	/* initialize base registers */
 	ret_code = iavf_config_arq_regs(hw);
 	if (ret_code)
-		goto init_adminq_free_rings;
+		goto init_free_arq_bufs;
 
 	/* success! */
 	hw->aq.arq.count = hw->aq.num_arq_entries;
 	goto init_adminq_exit;
 
+init_free_arq_bufs:
+	for (i = 0; i < hw->aq.num_arq_entries; i++)
+		iavf_free_dma_mem(hw, &hw->aq.arq.r.arq_bi[i]);
+	iavf_free_virt_mem(hw, &hw->aq.arq.dma_head);
 init_adminq_free_rings:
 	iavf_free_adminq_arq(hw);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
