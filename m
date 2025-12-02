Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36211C9D4ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 00:14:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A513784098;
	Tue,  2 Dec 2025 23:13:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CB7EJcZtI1-E; Tue,  2 Dec 2025 23:13:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1611E84099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764717223;
	bh=bwGCSP6jSfI2JMEQF0YhZHCvMch2U32QmWvs5CoFdbc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2sDFmgDzD0Z1kbrz33WvouDYmO9e9Zu6m3Vi1DLSx0+GEftu1oIhzBlGg++x0Pwyl
	 QuwKCPWrubp/7Zlb4AHuYdnBiB3EmV2Xszx+QOtQDVX7hNaoA6whYGwwyOzPgMF7D5
	 XaTOP8dye4X0V6TGL/VZrS892gBJ8APKxbf5N8ud508aBV35HfdmeDYXYnMR6oCfN6
	 ybcHUP5Myu6kPbGYOmIHd+X8bfVueRQ712qgkubFAAehVyg1AXZqZAPgWEpvlNpCHx
	 hz4e8dINXZy9Zob15aTQ0OkY4Wy3Hv2qlzDHYgNPrzINsOsY1mFWcL8O68NVtZnB6g
	 5hmvc6i/MIABw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1611E84099;
	Tue,  2 Dec 2025 23:13:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B3889D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 23:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5E454004D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 23:13:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e69hcYITH2Mc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 23:13:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CA49A40024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA49A40024
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA49A40024
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 23:13:39 +0000 (UTC)
X-CSE-ConnectionGUID: hSKVIFnoQNmRFSsiynxyUQ==
X-CSE-MsgGUID: RzHyy1eRSA+IkJOvrO7RZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66741165"
X-IronPort-AV: E=Sophos;i="6.20,244,1758610800"; d="scan'208";a="66741165"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 15:13:39 -0800
X-CSE-ConnectionGUID: U1es4Tc2Qhav/mITG6KdTw==
X-CSE-MsgGUID: QzSaEjHJRam7qFV6VeQOWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,244,1758610800"; d="scan'208";a="194505867"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa007.jf.intel.com with ESMTP; 02 Dec 2025 15:13:39 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue,  2 Dec 2025 17:12:46 -0600
Message-Id: <20251202231246.63157-1-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764717220; x=1796253220;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fB1lfHRjYWJU+XiQfufCsleOAjIffS1TuegcepeOWEs=;
 b=PkwIc1k8N+tEVsgZpk3KmtcDgPgPhBIYw1NVDLBpYursyQvJRl48Vamo
 QTzBQbjHtiixtYItWH1UnaL4qeF3m3DKJBEf69QrIAP4ibcTbQy/iLMIR
 vBtwQRAjlY4RpajTlx8LVcRJMC6X/nX2ee0iCEV3TRRVBVxo4mGI7EAzd
 4KlIiPn/bwSzLo6RbqWWCq4wxPNEBEB/5M7n5QHr7juhPivxA4eoRg9U7
 BMKUuZTWUCwOiBdBFx5wt5vBwnCY4gdxOpIT3QYBuixIJUF+Q8PXDe4AS
 ZJwVSGr/V+W2c6Bc+qncVhGsYtmrCj6WuZ2dH+rB8fYdRIffNfDkYku7B
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PkwIc1k8
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: Fix error handling in
 idpf_vport_open()
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

Fix error handling to properly cleanup interrupts when
idpf_vport_queue_ids_init() or idpf_rx_bufs_init_all() fail. Jump to
'intr_deinit' instead of 'queues_rel' to ensure interrupts are cleaned up
before releasing other resources.

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 89f3b46378c4..a5051a96f2ad 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1516,14 +1516,14 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue registers for vport %u: %d\n",
 			vport->vport_id, err);
-		goto queues_rel;
+		goto intr_deinit;
 	}
 
 	err = idpf_rx_bufs_init_all(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize RX buffers for vport %u: %d\n",
 			vport->vport_id, err);
-		goto queues_rel;
+		goto intr_deinit;
 	}
 
 	idpf_rx_init_buf_tail(vport);
-- 
2.43.0

