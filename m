Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0F2AEFE5C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 17:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC52581216;
	Tue,  1 Jul 2025 15:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jza8mzcr6rn3; Tue,  1 Jul 2025 15:33:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D577810F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751384009;
	bh=pNDDl3giINh4ElN2+q9CEDaybTYzJ3vjtIg/cRe6/Ok=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yPkGMAhHr9PWtI9tzq3TjI2IpX7lrwPliJw2bQAGUB7/HHaZ0IP+sHizA+4eLe/3Z
	 SqlxVULN8FC3a0EQWE0igericdwD6HEiT4b7nbE7nFqKPKzQqTXnKBNDlpT0E4vWmG
	 oxLf9Wvc7KzJJQDTCu/t7Fm+eeOexEZ3XXowPl0cR+lWn5H4G4kfdLz5uxb6PXSO2M
	 zBTBA0UX0NLkzNDjhE7Ul3jph5BsSCpgRRm42HOlsSjQt+qeMT7bqRkMXsg9RIU9th
	 31zMsQa8lvaRXb6bvNzrMf96/3ExeZJbS7kd2M+wsnhsdpHpTvb/LcMSk5FzLj/POs
	 2kiSFENF8j1rA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D577810F0;
	Tue,  1 Jul 2025 15:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6ACE7179
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 15:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CDB360DCF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 15:33:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NHNhUI0ENabT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 15:33:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0A6560BB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0A6560BB7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0A6560BB7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 15:33:26 +0000 (UTC)
X-CSE-ConnectionGUID: aFhynLeKQS6+uhZGCsRnVw==
X-CSE-MsgGUID: LVSWYAVcREq7JI2re3VcnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53746637"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53746637"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 08:33:26 -0700
X-CSE-ConnectionGUID: akivDv/4RH+1HKDs4VXSeQ==
X-CSE-MsgGUID: qS/idK05QxmXlVuVBchTpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="184849780"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa002.jf.intel.com with ESMTP; 01 Jul 2025 08:33:25 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com
Date: Tue,  1 Jul 2025 17:32:34 +0200
Message-ID: <20250701153234.802092-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751384007; x=1782920007;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IfVRgTpqYnNJsm7JPdH4asicqJ4tbo+jNXwhuoGRDlw=;
 b=nc8znNujpFx/sjNJ1Vu8JRtqwjFvkeInAIStX9ahoeZHJf7v86bxYHLg
 L90I0N5PuBKrJUWqPZWLPTjK2VIgNgHhI7sjW+ygepMgf2WvP5wyggMPS
 CH9nbMDlNIfgCeEsSOmmhRtpA8EL6ekjQj1036Auk7UCqyj7sox0YdV+V
 XcWjPjPFZvQ8Uy23340id82oYgtL2DszIPlqzfB7FllUHDuXV3xyQJ5zS
 uVic/jkDtsizKju/ZoV8ye38Ka0tmrNJGoSp/ydrunU75umLmtZ8Ra/pf
 2Hghqy5RwkUteUjvfqTl5MkfhO7l/Iym/gyr2gfwU+iYLIZwwLEivZHCy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nc8znNuj
Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: fix driver probe with
 CONFIG_LOCKDEP=y
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

At the moment of idpf_vport_queues_alloc() when an interface gets opened
for the first time, rxq->q_vector is NULL yet. But
idpf_xdp_rxq_assign_prog() dereferences it in case of enabled lockdep.

Just move idpf_xdp_copy_prog_to_rqs() from the abovementioned function
to idpf_rx_bufs_init_all(), where rxq->q_vector is always initialized
already.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
To Tony: this is a hotfix for

"idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq"

where this call was introduced, please squash.
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index ed1736e52b1c..d50516abb7fb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -832,6 +832,8 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 	bool split = idpf_is_queue_model_split(vport->rxq_model);
 	int i, j, err;
 
+	idpf_xdp_copy_prog_to_rqs(vport, vport->xdp_prog);
+
 	for (i = 0; i < vport->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
 		u32 truesize = 0;
@@ -1680,8 +1682,6 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	if (err)
 		goto err_out;
 
-	idpf_xdp_copy_prog_to_rqs(vport, vport->xdp_prog);
-
 	return 0;
 
 err_out:
-- 
2.50.0

