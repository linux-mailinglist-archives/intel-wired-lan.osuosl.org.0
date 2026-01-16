Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D51D30D09
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 13:03:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34EE585B90;
	Fri, 16 Jan 2026 12:03:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kuzNY4jz2IZ0; Fri, 16 Jan 2026 12:03:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54DFC85B92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768564998;
	bh=xzOKNpSFMweMHxgPegD7l1yLHw9w0fg6IdSlgK8XWIE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1nE453ESKbOcxGjfq5bCvmpG86N8qmN+iNpj82jXsYhMjRGH/ccp3/pw873vMee17
	 HezJGY3NeL2ZhlScoUMmiAY8mY8GyBkPlG/xn8Fkd7R78n0hRZVvQB4tYuuL/qwawK
	 PQzXPDYZ2Kaaxv+/QPIv/JmFuIdndYxM7QAiWTCAP2T3hwT/QIVNfDrBK7/YslV4aM
	 D9b5KJoPYUCWJ6EpuM47hloCU+STFxZbQkf1LINPXM1/CVXa/Xkej3aZem8XzhWV/a
	 hL6uSQAdwUTpVDUf1YdYqdQze/sD4q9l48OqIO6Xf8kv1U6e4Cky6xVYxTvcbbpFSk
	 TvZ33Hufe2rEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54DFC85B92;
	Fri, 16 Jan 2026 12:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 52ECA160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 12:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38865428D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 12:03:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-l7itnD3CLs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 12:03:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8FC014042C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FC014042C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FC014042C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 12:03:15 +0000 (UTC)
X-CSE-ConnectionGUID: m6dBM43LRQCNAz5g3+xwvw==
X-CSE-MsgGUID: UpFOTxrkTv24hiy8eqrlUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="68888348"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="68888348"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 04:03:15 -0800
X-CSE-ConnectionGUID: bXkxxtW9RdmRSUOnJaJnfw==
X-CSE-MsgGUID: 8OB1lOosT1yxsOeOHZpkfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="209721855"
Received: from amlin-018-252.igk.intel.com ([10.102.18.252])
 by orviesa004.jf.intel.com with ESMTP; 16 Jan 2026 04:03:12 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, dan.carpenter@linaro.org, horms@kernel.org,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 16 Jan 2026 13:23:53 +0100
Message-ID: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768564995; x=1800100995;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5LSHpYluNT3I38fsGIFTYyyt50V6fFj6n0MDSZ220pY=;
 b=ez0bEFCe2qewxzi1a+RM0LeB75GGPq6QI+fEqm7LtAFLudz6BCHjZ0it
 aZQOk0QqGKZ6YCPhfurQ1RXetyL6bSvdezLg/gRmyROWrjVFbxjqXOHd8
 HMABJGdz6tW825wjXI69xEna86IxNqn6TTbqW/af2+A6AAYyA29xmRThX
 hSC66gb/No2xD34FWjQfVVvbErS3wSiP4DEEWNgfh/eLxTaTOEO3RvI2S
 qI7NYVM8RyYSCXf6WKM4L9HcQDFq8uZmnCpZHYHKBJby65JENiqyGR96S
 ZTCz6kM3PYQV1bg5+mmiLdUEAQRRa56BArJeEP5oAZpnZSi6qW4yvhsuk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ez0bEFCe
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ixgbe: e610: add missing
 endianness conversion
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix a possible ACI issue on big-endian platforms.

Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index c2f8189..f494e90 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 
 	/* Descriptor is written to specific registers */
 	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
-		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
+		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
+				le32_to_cpu(raw_desc[i]));
 
 	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
 	 * PF_HICR_EV
@@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_SV)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = raw_desc[i];
+			raw_desc[i] = cpu_to_le32(raw_desc[i]);
 		}
 	}
 
@@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] = raw_desc[i];
+			raw_desc[i] = cpu_to_le32(raw_desc[i]);
 		}
 	}
 
-- 
2.47.1

