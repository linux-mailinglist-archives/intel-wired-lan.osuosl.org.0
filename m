Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F22A457961D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 11:19:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A717C415CB;
	Tue, 19 Jul 2022 09:19:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A717C415CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658222367;
	bh=SjBrpXT++K3eMy9GogCKw9GlEvbgaHPK6bI9RI6yQLk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=egFrykFnokmAMdM9gIzbxBeAIBfX52DWdziUhFpbN+bep6DRT8S9GFj4GdIrVQKqI
	 Ko0PG2S7HLvVmRDTPyH92pZEeJEXYIH5wJkhZzWYErbyNiaATL87W3sHM4nQZ/BXjj
	 n9x7WceblkQtmvnQ1VQ+qPvK+0A5vWlKpdJPxpSHMciPXhwP2HihyEgXYBeQ819hOb
	 YrktSOqeovUWMnWCdcjYc5PvHyv/koJXzvaiD43kQ8ZtC42ETDuSBtaoUXaPJmfK/R
	 fDzAgLM2HbrJ7gtKb3hsX72LCofIInk1vdUXFEb4v3uHnsFWAUFk7S9Pw9F1Q/8cd1
	 Vc7sgE8bE/A8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WHx0on2BpuKu; Tue, 19 Jul 2022 09:19:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30B1D409E9;
	Tue, 19 Jul 2022 09:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30B1D409E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 702C81BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47A18410AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47A18410AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qwi45nhn7bNG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 09:19:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35C48409E9
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35C48409E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 09:19:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="285196516"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="285196516"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 02:19:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="724193186"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2022 02:19:17 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Jul 2022 11:16:52 +0200
Message-Id: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658222360; x=1689758360;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xdPGpRAobwgbZyD+kIE5XdPoqh4v2RtdCoJFSejdpwE=;
 b=HICM/NoCqWSkfaJEe5ysUohoLc3FGuCmRGLtG0sjikDdGV43x5tHr00F
 NVj671Eyy2YyODaFxH1pSq/WySVKuOeWGJ1i5p4dXks+uz/Ju1V6+7CIb
 5C+NU5l7vGYRNjaVvuJZXHZzOBsOqP6Ve2ICTc7ZT9KL7ES25kzCqCspn
 Ukdrn3suKz+bZ4pDx2tkSs4g926IyOfKa23JdGV4oqXpk3Y5VyFUctLyd
 qYXPUphvVRfycWMmx3RezZs6O7uA6f0NpxQgDMTXeY+nVLrq2c1jVhkl9
 Gvj0aZ9qatqoU3MnxuEyuypAd8n/POah7EPmMNe/DDmHIKuJtcE2kOEhB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HICM/NoC
Subject: [Intel-wired-lan] [PATCH net v1 1/3] iavf: Fix adminq error handling
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
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
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
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
