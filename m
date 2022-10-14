Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE325FEB2C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 10:52:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D40C942229;
	Fri, 14 Oct 2022 08:52:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D40C942229
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665737537;
	bh=z3J2cZl8297GhX1f+RkSK5IXKDa7MIZb74UpuOZJqRc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TEG8m1vU8f14tj91XqsGAduEV/xk95/w3PgCx8Tt9T8ihM+Dpg/QvKMfkTia43RDg
	 2ClcBS65KxqQVXmGNQPIxGOt2y2XtncI5zkjFEnYj8saolnyXNnX52qE0xJV+HuDXy
	 RczhPjseXjeFRCTA4pTKYSKOmqd92nohWi+k5RgRimBSEvMsgrAKOBf/DihodTAqRD
	 prv0Kte/FSGV4tI9SwEIq+JLmGMpiTP5PcDwGdUivp6y2xpFXqWK7FMg35Fb9d4JDs
	 EW5hLbrrJuknBlYAanx7SW7NNnrr+Glfsa9vLAYUY7+FZ9wTfUFPSK3HlrIJ5Y3FLk
	 cye09iNu6spag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXLmf9-CWg-t; Fri, 14 Oct 2022 08:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2060842214;
	Fri, 14 Oct 2022 08:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2060842214
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE1061BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 08:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8F0540C57
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 08:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8F0540C57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GxziDzuKB6Xz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 08:52:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EED0A40298
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EED0A40298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 08:52:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="306977002"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="306977002"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="690467136"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="690467136"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga008.fm.intel.com with ESMTP; 14 Oct 2022 01:52:01 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Oct 2022 04:50:08 -0400
Message-Id: <20221014085008.383570-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665737529; x=1697273529;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l/vDyxPFIOD0NLAuPfOk1ku1rVTWtAenv6GQPcYm2OY=;
 b=YCKoqddtx3uyPSijFRJHZy8qA3j4yLz8LjTMlJvdSbLgdOWgUircOHmh
 X+RTefUagnAN3ht1LKKwhOmLnQQYewV6M08Kt2mWwXLCaCluYb7ZjqJl/
 z8FQLUIVZCT1/2XCNO7qvGqfW3o5lXxztZslFH1w/5t+a7FAnGPKdvcw+
 ImlYjh0VFI2VcllGXFINOErKrMDTB2kX+jwvmBiHch+eAESaGzWJrU1G/
 8tI+eLBShP45BVv7CQka6HfG+0UFRWYOGyDU8EsmYjwFxueMXKYC3Z8UE
 UoGqUgboUDK7ONC9rfdt6t2T0FA08qRcB1yjr0rLBpin32NfZ0dq2JYVS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YCKoqddt
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: Add additional CSR
 registers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

Add additional CSR registers that will provide more information
in the dump that occurs after Tx hang.

Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 169 +++++++++++++++++++
 1 file changed, 169 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 6c2ad100c3f7..4191994d8f3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -151,6 +151,175 @@ static const u32 ice_regs_dump_list[] = {
 	QINT_RQCTL(0),
 	PFINT_OICR_ENA,
 	QRX_ITR(0),
+#define GLDCB_TLPM_PCI_DM			0x000A0180
+	GLDCB_TLPM_PCI_DM,
+#define GLDCB_TLPM_TC2PFC			0x000A0194
+	GLDCB_TLPM_TC2PFC,
+#define TCDCB_TLPM_WAIT_DM(_i)			(0x000A0080 + ((_i) * 4))
+	TCDCB_TLPM_WAIT_DM(0),
+	TCDCB_TLPM_WAIT_DM(1),
+	TCDCB_TLPM_WAIT_DM(2),
+	TCDCB_TLPM_WAIT_DM(3),
+	TCDCB_TLPM_WAIT_DM(4),
+	TCDCB_TLPM_WAIT_DM(5),
+	TCDCB_TLPM_WAIT_DM(6),
+	TCDCB_TLPM_WAIT_DM(7),
+	TCDCB_TLPM_WAIT_DM(8),
+	TCDCB_TLPM_WAIT_DM(9),
+	TCDCB_TLPM_WAIT_DM(10),
+	TCDCB_TLPM_WAIT_DM(11),
+	TCDCB_TLPM_WAIT_DM(12),
+	TCDCB_TLPM_WAIT_DM(13),
+	TCDCB_TLPM_WAIT_DM(14),
+	TCDCB_TLPM_WAIT_DM(15),
+	TCDCB_TLPM_WAIT_DM(16),
+	TCDCB_TLPM_WAIT_DM(17),
+	TCDCB_TLPM_WAIT_DM(18),
+	TCDCB_TLPM_WAIT_DM(19),
+	TCDCB_TLPM_WAIT_DM(20),
+	TCDCB_TLPM_WAIT_DM(21),
+	TCDCB_TLPM_WAIT_DM(22),
+	TCDCB_TLPM_WAIT_DM(23),
+	TCDCB_TLPM_WAIT_DM(24),
+	TCDCB_TLPM_WAIT_DM(25),
+	TCDCB_TLPM_WAIT_DM(26),
+	TCDCB_TLPM_WAIT_DM(27),
+	TCDCB_TLPM_WAIT_DM(28),
+	TCDCB_TLPM_WAIT_DM(29),
+	TCDCB_TLPM_WAIT_DM(30),
+	TCDCB_TLPM_WAIT_DM(31),
+#define GLPCI_WATMK_CLNT_PIPEMON		0x000BFD90
+	GLPCI_WATMK_CLNT_PIPEMON,
+#define GLPCI_CUR_CLNT_COMMON			0x000BFD84
+	GLPCI_CUR_CLNT_COMMON,
+#define GLPCI_CUR_CLNT_PIPEMON			0x000BFD88
+	GLPCI_CUR_CLNT_PIPEMON,
+#define GLPCI_PCIERR				0x0009DEB0
+	GLPCI_PCIERR,
+#define GLPSM_DEBUG_CTL_STATUS			0x000B0600
+	GLPSM_DEBUG_CTL_STATUS,
+#define GLPSM0_DEBUG_FIFO_OVERFLOW_DETECT	0x000B0680
+	GLPSM0_DEBUG_FIFO_OVERFLOW_DETECT,
+#define GLPSM0_DEBUG_FIFO_UNDERFLOW_DETECT	0x000B0684
+	GLPSM0_DEBUG_FIFO_UNDERFLOW_DETECT,
+#define GLPSM0_DEBUG_DT_OUT_OF_WINDOW		0x000B0688
+	GLPSM0_DEBUG_DT_OUT_OF_WINDOW,
+#define GLPSM0_DEBUG_INTF_HW_ERROR_DETECT	0x000B069C
+	GLPSM0_DEBUG_INTF_HW_ERROR_DETECT,
+#define GLPSM0_DEBUG_MISC_HW_ERROR_DETECT	0x000B06A0
+	GLPSM0_DEBUG_MISC_HW_ERROR_DETECT,
+#define GLPSM1_DEBUG_FIFO_OVERFLOW_DETECT	0x000B0E80
+	GLPSM1_DEBUG_FIFO_OVERFLOW_DETECT,
+#define GLPSM1_DEBUG_FIFO_UNDERFLOW_DETECT	0x000B0E84
+	GLPSM1_DEBUG_FIFO_UNDERFLOW_DETECT,
+#define GLPSM1_DEBUG_SRL_FIFO_OVERFLOW_DETECT	0x000B0E88
+	GLPSM1_DEBUG_SRL_FIFO_OVERFLOW_DETECT,
+#define GLPSM1_DEBUG_SRL_FIFO_UNDERFLOW_DETECT  0x000B0E8C
+	GLPSM1_DEBUG_SRL_FIFO_UNDERFLOW_DETECT,
+#define GLPSM1_DEBUG_MISC_HW_ERROR_DETECT       0x000B0E90
+	GLPSM1_DEBUG_MISC_HW_ERROR_DETECT,
+#define GLPSM2_DEBUG_FIFO_OVERFLOW_DETECT       0x000B1680
+	GLPSM2_DEBUG_FIFO_OVERFLOW_DETECT,
+#define GLPSM2_DEBUG_FIFO_UNDERFLOW_DETECT      0x000B1684
+	GLPSM2_DEBUG_FIFO_UNDERFLOW_DETECT,
+#define GLPSM2_DEBUG_MISC_HW_ERROR_DETECT       0x000B1688
+	GLPSM2_DEBUG_MISC_HW_ERROR_DETECT,
+#define GLTDPU_TCLAN_COMP_BOB(_i)               (0x00049ADC + ((_i) * 4))
+	GLTDPU_TCLAN_COMP_BOB(1),
+	GLTDPU_TCLAN_COMP_BOB(2),
+	GLTDPU_TCLAN_COMP_BOB(3),
+	GLTDPU_TCLAN_COMP_BOB(4),
+	GLTDPU_TCLAN_COMP_BOB(5),
+	GLTDPU_TCLAN_COMP_BOB(6),
+	GLTDPU_TCLAN_COMP_BOB(7),
+	GLTDPU_TCLAN_COMP_BOB(8),
+#define GLTDPU_TCB_CMD_BOB(_i)                  (0x0004975C + ((_i) * 4))
+	GLTDPU_TCB_CMD_BOB(1),
+	GLTDPU_TCB_CMD_BOB(2),
+	GLTDPU_TCB_CMD_BOB(3),
+	GLTDPU_TCB_CMD_BOB(4),
+	GLTDPU_TCB_CMD_BOB(5),
+	GLTDPU_TCB_CMD_BOB(6),
+	GLTDPU_TCB_CMD_BOB(7),
+	GLTDPU_TCB_CMD_BOB(8),
+#define GLTDPU_PSM_UPDATE_BOB(_i)               (0x00049B5C + ((_i) * 4))
+	GLTDPU_PSM_UPDATE_BOB(1),
+	GLTDPU_PSM_UPDATE_BOB(2),
+	GLTDPU_PSM_UPDATE_BOB(3),
+	GLTDPU_PSM_UPDATE_BOB(4),
+	GLTDPU_PSM_UPDATE_BOB(5),
+	GLTDPU_PSM_UPDATE_BOB(6),
+	GLTDPU_PSM_UPDATE_BOB(7),
+	GLTDPU_PSM_UPDATE_BOB(8),
+#define GLTCB_CMD_IN_BOB(_i)                    (0x000AE288 + ((_i) * 4))
+	GLTCB_CMD_IN_BOB(1),
+	GLTCB_CMD_IN_BOB(2),
+	GLTCB_CMD_IN_BOB(3),
+	GLTCB_CMD_IN_BOB(4),
+	GLTCB_CMD_IN_BOB(5),
+	GLTCB_CMD_IN_BOB(6),
+	GLTCB_CMD_IN_BOB(7),
+	GLTCB_CMD_IN_BOB(8),
+#define GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(_i)   (0x000FC148 + ((_i) * 4))
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(1),
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(2),
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(3),
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(4),
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(5),
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(6),
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(7),
+	GLLAN_TCLAN_FETCH_CTL_FBK_BOB_CTL(8),
+#define GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(_i) (0x000FC248 + ((_i) * 4))
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(1),
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(2),
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(3),
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(4),
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(5),
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(6),
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(7),
+	GLLAN_TCLAN_FETCH_CTL_SCHED_BOB_CTL(8),
+#define GLLAN_TCLAN_CACHE_CTL_BOB_CTL(_i)       (0x000FC1C8 + ((_i) * 4))
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(1),
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(2),
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(3),
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(4),
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(5),
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(6),
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(7),
+	GLLAN_TCLAN_CACHE_CTL_BOB_CTL(8),
+#define GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(_i)  (0x000FC188 + ((_i) * 4))
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(1),
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(2),
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(3),
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(4),
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(5),
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(6),
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(7),
+	GLLAN_TCLAN_FETCH_CTL_PROC_BOB_CTL(8),
+#define GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(_i) (0x000FC288 + ((_i) * 4))
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(1),
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(2),
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(3),
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(4),
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(5),
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(6),
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(7),
+	GLLAN_TCLAN_FETCH_CTL_PCIE_RD_BOB_CTL(8),
+#define PRTDCB_TCUPM_REG_CM(_i)			(0x000BC360 + ((_i) * 4))
+	PRTDCB_TCUPM_REG_CM(0),
+	PRTDCB_TCUPM_REG_CM(1),
+	PRTDCB_TCUPM_REG_CM(2),
+	PRTDCB_TCUPM_REG_CM(3),
+#define PRTDCB_TCUPM_REG_DM(_i)			(0x000BC3A0 + ((_i) * 4))
+	PRTDCB_TCUPM_REG_DM(0),
+	PRTDCB_TCUPM_REG_DM(1),
+	PRTDCB_TCUPM_REG_DM(2),
+	PRTDCB_TCUPM_REG_DM(3),
+#define PRTDCB_TLPM_REG_DM(_i)			(0x000A0000 + ((_i) * 4))
+	PRTDCB_TLPM_REG_DM(0),
+	PRTDCB_TLPM_REG_DM(1),
+	PRTDCB_TLPM_REG_DM(2),
+	PRTDCB_TLPM_REG_DM(3),
 };
 
 struct ice_priv_flag {
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
