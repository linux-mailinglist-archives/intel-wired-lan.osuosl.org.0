Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CA79CD597
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 03:44:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E5E0606BA;
	Fri, 15 Nov 2024 02:44:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NQy08AJuruNb; Fri, 15 Nov 2024 02:44:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDED06060C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731638652;
	bh=1g69dmQpA8O4S6jXzbNQKzCvQoIRe6JmZs4/Cin0T64=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kgUwCdSlq/acjwGCBbb7DwX2Py0T1LwJ/qPANfz6i27EtH9qh/wGKVZwUSzKu2dl+
	 uGpstz7zGnR3bHIMd0qtYg92e9KawA5WWx2oMcROKBx1hYd/K+/9HED6N35ECIlkKO
	 j4l8U44/0rv9SzuBFsqZqm5BXoxoU5i2FcXJvY+fnYTNNJlfNV4OKGVYaLA6W7KnjB
	 Fnxwl92PRCjgJOARMFuc9cgfHJBl7GPwmQkXhn4l2KlIPdFkcDO1HVOxiIHTS6xYNu
	 RE18VIGXd/KslVIjFjUkzj5llZ90ZaY9RSjqtkEEEXkkclZtdFs7P2knSpBQ1SeaxI
	 mxnbni3XXerPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDED06060C;
	Fri, 15 Nov 2024 02:44:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CB089BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 02:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC6A640760
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 02:44:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vspw8-qPVpOT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 02:44:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CF9364074D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF9364074D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF9364074D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 02:44:10 +0000 (UTC)
X-CSE-ConnectionGUID: 9M35AcB0Q7acrxIW2zBdiQ==
X-CSE-MsgGUID: JEcCrvVwSUqfHpr++hCSQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31722672"
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="31722672"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 18:44:09 -0800
X-CSE-ConnectionGUID: GAOiYYtBQ2WMzyanpPCy2g==
X-CSE-MsgGUID: 3AHNBOZ4RLqcJgI5djzekA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="93467477"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa004.jf.intel.com with ESMTP; 14 Nov 2024 18:16:44 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, rlance@google.com, decot@google.com,
 willemb@google.com, joshua.a.hay@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Thu, 14 Nov 2024 18:16:18 -0800
Message-Id: <20241115021618.20565-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731638651; x=1763174651;
 h=from:to:cc:subject:date:message-id;
 bh=OxSWWLIUP+xkl6A/4kcNUvrt7MZBic5/QiYfBI412ds=;
 b=P9rm+u5Wj4cVY//153RNw7AUl7N2BpOsq7pQ2ub0slGepadylOrQmvKZ
 ly38JQTyn++0QhTdWBgFByofyPUu5B6irrYXDGWc9qSgQCJs6Iftor+8v
 aNIVmNOumMEC38F0ORQzCrosnOA//FsE72qEBExvuZd1PbirGYoBw4PaE
 VX2nniIorVHOfVa6ZzKF7tYZYK8p/jmr26CsFOpQ5zWQy7HH2hngJJu1+
 MVDciBXIZxlUdfl2S8ktvNuQyB/IkIfuyk22s7R1fq+n4ENcvFD0r8Bhg
 FxQzkAkwhvR5paAa3zJ+TMRulrP5uP4aRZ/eU3GHyb1SXt5s6Pl6QlGnP
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P9rm+u5W
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: add read memory barrier
 when checking descriptor done bit
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

Add read memory barrier to ensure the order of operations when accessing
control queue descriptors. Specifically, we want to avoid cases where loads
can be reordered:

1. Load #1 is dispatched to read descriptor flags.
2. Load #2 is dispatched to read some other field from the descriptor.
3. Load #2 completes, accessing memory/cache at a point in time when the DD
   flag is zero.
4. NIC DMA overwrites the descriptor, now the DD flag is one.
5. Any fields loaded before step 4 are now inconsistent with the actual
   descriptor state.

Add read memory barrier between steps 1 and 2, so that load #2 is not
executed until load has completed.

Fixes: 8077c727561a ("idpf: add controlq init and reset checks")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Suggested-by: Lance Richardson <rlance@google.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_controlq.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
index 4849590a5591..61c7fafa54a1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -375,6 +375,11 @@ int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
 		desc = IDPF_CTLQ_DESC(cq, ntc);
 		if (!(le16_to_cpu(desc->flags) & IDPF_CTLQ_FLAG_DD))
 			break;
+		/*
+		 * This barrier is needed to ensure that no other fields
+		 * are read until we check the DD flag.
+		 */
+		dma_rmb();
 
 		/* strip off FW internal code */
 		desc_err = le16_to_cpu(desc->ret_val) & 0xff;
@@ -562,6 +567,11 @@ int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
 
 		if (!(flags & IDPF_CTLQ_FLAG_DD))
 			break;
+		/*
+		 * This barrier is needed to ensure that no other fields
+		 * are read until we check the DD flag.
+		 */
+		dma_rmb();
 
 		q_msg[i].vmvf_type = (flags &
 				      (IDPF_CTLQ_FLAG_FTYPE_VM |
-- 
2.17.2

