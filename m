Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4AB7D4ED6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:32:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D85E94ED17;
	Tue, 24 Oct 2023 11:32:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D85E94ED17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147125;
	bh=V8+6DyuelYFQQJVDEQAvnpjkyYGqYc5ntGR818AWRDs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7IGLvebX6n2KqNu4I1HtO0KWx8tkiQ2qZID6FXMPoMaaBfjqSq5/2DDmBYmD+Ht5A
	 LLls8v7SoRTXdXeAt9ucYbKIPnNAzF9k1k7e88j+H7ApypI/NDvEeFtR5RCKsmSu+d
	 I0mBenXQ4aFbLKZ6ntCzXrY3dKlDyAUVVA7UqZbTUM1IA/3vsFrQLVMXFcPRU8r3SB
	 wEmotepZvuA4js+ya0gJtQEXJyoLGmvmkBLDMvcHmwB8dCTprv5H1sbLK7kqDKGjrG
	 hibAs67RnsM/V+yychq3J6UUH+bmFv+nYXerk+Ae6GzpJVkig7aBCvrJCCWt3eoNMU
	 MNqoiKxozT+Kg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYKvqv8EIBvk; Tue, 24 Oct 2023 11:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 659614ED08;
	Tue, 24 Oct 2023 11:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 659614ED08
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38DAE1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A3E94310E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:31:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A3E94310E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dmE6oPMH5NzR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:31:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBE034054E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:31:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBE034054E
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="390911471"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="390911471"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:31:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="849101728"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="849101728"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Oct 2023 04:31:53 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C978E332A9;
 Tue, 24 Oct 2023 12:31:52 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:29:12 +0200
Message-Id: <20231024112912.1811594-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147117; x=1729683117;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VbXnsmHFbnLTke+oU1WE8hgV4d/8F8er/Gvdu6OjtK4=;
 b=T5GXY2h0SJ/b9VoG1afHJZsfD1ej6lWaJN+G0lunVhj4UIrWLesDW9+L
 nGJfxLjbC8iLleA/LMXLG5EW26D2S2AFq+3yOjDWTNvg+BCVScQO9rrVq
 3QZicn53YlvhsTxIani0jLqM0oHixo0e9TEIyUxCs99UnD0tyt5904PEt
 AUgRCfzrccTMOZQ+OeHv1FiAQ/ROzhIOwZDwUCpvf3ZpWXhiiuXb0liO8
 2q467TMNdiULQWkOFxojYTOeIw2RYROMJ1KxyJK6mK4CwJQN2aBklpi2T
 a2aUFPDKyuScQVdOUXmATPRsF9hVhC139J3SLWaWCvCeG5ez5wJ8utd5z
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T5GXY2h0
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Reset VF on Tx MDD event
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 lukasz.czapnik@intel.com, Liang-min Wang <liang-min.wang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Liang-min Wang <liang-min.wang@intel.com>

In cases when VF sends malformed packets that are classified as malicious,
sometimes it causes Tx queue to freeze. This frozen queue can be stuck
for several minutes being unusable.

When MDD event occurs, perform graceful VF reset to quickly bring VF
back to operational state.

Signed-off-by: Liang-min Wang <liang-min.wang@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 66095e9b094e..cf9fd1f168f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1836,8 +1836,13 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			vf->mdd_tx_events.count++;
 			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
-				dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
+				dev_info(dev,
+					 "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
 					 vf->vf_id);
+			dev_info(dev,
+				 "PF-to-VF reset on VF %d due to Tx MDD TX_TCLAN event\n",
+				 vf->vf_id);
+			ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
 		}
 
 		reg = rd32(hw, VP_MDET_TX_TDPU(vf->vf_id));
@@ -1846,8 +1851,13 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			vf->mdd_tx_events.count++;
 			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
-				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
+				dev_info(dev,
+					 "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
 					 vf->vf_id);
+			dev_info(dev,
+				 "PF-to-VF reset on VF %d due to Tx MDD TX_TCLAN event\n",
+				 vf->vf_id);
+			ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
 		}
 
 		reg = rd32(hw, VP_MDET_RX(vf->vf_id));
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
