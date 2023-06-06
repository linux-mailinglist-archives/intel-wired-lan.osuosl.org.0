Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C08A723F9B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 12:34:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF38C60E84;
	Tue,  6 Jun 2023 10:34:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF38C60E84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686047653;
	bh=9C9GsOyMjuVMuqiqFYxoneHZkZnNk7rJlXtJrDTjU5I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rDYtPNBLUZp/M4vTNylg4hT1sthq0OgeMrxPBsoRTWdATw2hrW9fhm4k59Q4jBp3W
	 zVWn2pxzPS8YOUdy3cuynDb6X9V1Cqo0kbljdIsKEFOsTBYGVAoenPn9ykqTrtYYbj
	 CEgIVAXEruylNyIjzQGWlMKAOKpCVJiBS/eRGKN5aZ4ZRdSz4E+yB6w0ExjAwvAaWs
	 j14PW3a8ddLwKFuxHx8vj0nnak3B8+eChB1LFlLc+WSdOD0aQSVN7SC1sj1Sfydhfx
	 sRDZrtHU1CFPeC1QgC5I/zaZTygTHud5tjZtiFmmPuXCGrpsZHp3rESWz5aBsJEb5E
	 CbWk+4eynJ1gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUO8Nxu9mKMD; Tue,  6 Jun 2023 10:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0D6C605AE;
	Tue,  6 Jun 2023 10:34:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0D6C605AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EA901BF31E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4B16408FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4B16408FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yM_Nt85ZdMp9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 10:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D44A4064A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D44A4064A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:34:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="359084611"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="359084611"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 03:34:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="712163423"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="712163423"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2023 03:34:04 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Jun 2023 12:33:58 +0200
Message-Id: <20230606103358.10632-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686047646; x=1717583646;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3M8mG5A5gMd7W3gSWn2OtmnReUTy85Ii9+H+K9MEyvY=;
 b=BpVWRkoUX2ewNcjKMOj+f087xj9UGZbaVSG9AFy1ikAdcjryu7MS+qtN
 cg7nyQy2NjVQWo8CVYrpjYNaRyRk0ITl7owectCxXD7enCQku7ilCS4yR
 vvcVz88K3HRXSAK569eEQ/L2g54P4DSauIttkK6mrcFgY1jn9D2WDULlD
 ySukZTgNfI8NHk0H0FmS4092Gw0/54EMi2EDZljGuqRI88NdboLOL0308
 QdybDBzftJM/GmBPzQKp/Q1sMIAQBrl9yC6wUy+ZD6e5wFSamGin8nBjR
 h77Pgfhn7f8sBbxQi3E+NDQlFJa2KL2ZQpBZ7RmtHHErB4LBDcQScg6sb
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BpVWRkoU
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix XDP memory leak when
 NIC is brought up and down
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the buffer leak that occurs while switching
the port up and down with traffic and XDP by
checking for an active XDP program and freeing all empty TX buffers.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v2: new Fixes tag
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..03513d4871ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7056,6 +7056,10 @@ int ice_down(struct ice_vsi *vsi)
 	ice_for_each_txq(vsi, i)
 		ice_clean_tx_ring(vsi->tx_rings[i]);
 
+	if (ice_is_xdp_ena_vsi(vsi))
+		ice_for_each_xdp_txq(vsi, i)
+			ice_clean_tx_ring(vsi->xdp_rings[i]);
+
 	ice_for_each_rxq(vsi, i)
 		ice_clean_rx_ring(vsi->rx_rings[i]);
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
