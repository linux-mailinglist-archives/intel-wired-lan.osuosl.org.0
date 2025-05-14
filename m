Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA6EAB6B83
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 14:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F569607B1;
	Wed, 14 May 2025 12:36:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c_uX5xrdUU_P; Wed, 14 May 2025 12:36:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F143C607DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747226199;
	bh=zr2qBDK4PiUcUcQh7q3I/XJQfcGEH7OpUHB2VAMvy0k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9d/Q9gNfJpSGcadnSwziX5C7TLfP7b4A9XwYak7nkjQAlb9yYJD+GuC/j9YcmEPMT
	 0TjYaNcGwUHw9Fuqo4XrEzLiD21HE+Qc1xdX2mbmUaIp2wzB5JGEiar/AcD4fgxU1l
	 TQN7hw716GwDLS3X67SDGfC18w4Q5EhaAqfiAhtzyiB1VKyPavSG2Quk6Z8qKgrs9y
	 vtIw5q1mvUL/ra+Vql2Rq+fKgEZGTm+9Llj0jhBNLPKYCBNnMkMSr7j+KnJ23pvzer
	 qYiMO08YqAHkjj7alqmRIHY+2iV1dazv/QmKA9+tl0wTH2KPui1OogytuBPJE6ulWZ
	 zejmUyAfS1XAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F143C607DE;
	Wed, 14 May 2025 12:36:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8610B150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BB4383748
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pKooOY-ugEfk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 12:36:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 98E5583709
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98E5583709
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98E5583709
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:36:36 +0000 (UTC)
X-CSE-ConnectionGUID: ATXJq/5RQ0GF+a23Z6sVJQ==
X-CSE-MsgGUID: gLnjFbTaRBmVT6WY7KkrPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="60130671"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="60130671"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:36:36 -0700
X-CSE-ConnectionGUID: HRadXT8TQNKCpy0R8uujUw==
X-CSE-MsgGUID: CryiEIizRNGPm2Ks/UHrog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="142973736"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa004.jf.intel.com with ESMTP; 14 May 2025 05:36:35 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 May 2025 14:35:03 +0200
Message-Id: <20250514123503.3385036-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747226197; x=1778762197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zebrXRFvitvRaxbeJQykQjVVAl0Baiwmam497h9AmFA=;
 b=kSAzc8w1NFVbMq1ppIB7szZFpJ1hojYn6sxNjmov7HVpHQlohbXrcAFL
 4DRzB34WJ+paAV9Tef0B4Fy/cfQTiHZKj1eKVeAtWrXrwd0Oxjdj7Ec8v
 mPJ+rKbn1o5iPQuYrGXs0ed4gxqHgQAldahwA1PAdpxnIQsOomNNZGRhS
 UYJkd/GhM5lei1Fd11YmG4xlc+bPfLraUaTanUIYkHiuYkF/0lvcNlDAG
 x3BS7QfmnpmpqcGz0KCVeDmh1Bii5yhUuRVOz+THuuc3PSa/cMeydsZoI
 G6wLYkCYSUigBNP/u0AaCeIaC4qXGjawF+PmzwlbBZswusXYkAKckX3Uh
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kSAzc8w1
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix eswitch code memory
 leak in reset scenario
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add simple eswitch mode checker in attaching VF procedure and allocate
required port representor memory structures only in switchdev mode.
The reset flows triggers VF (if present) detach/attach procedure.
It might involve VF port representor(s) re-creation if the device is
configured is switchdev mode (not legacy one).
The memory was blindly allocated in current implementation,
regardless of the mode and not freed if in legacy mode.

Kmemeleak trace:
unreferenced object (percpu) 0x7e3bce5b888458 (size 40):
  comm "bash", pid 1784, jiffies 4295743894
  hex dump (first 32 bytes on cpu 45):
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
  backtrace (crc 0):
    pcpu_alloc_noprof+0x4c4/0x7c0
    ice_repr_create+0x66/0x130 [ice]
    ice_repr_create_vf+0x22/0x70 [ice]
    ice_eswitch_attach_vf+0x1b/0xa0 [ice]
    ice_reset_all_vfs+0x1dd/0x2f0 [ice]
    ice_pci_err_resume+0x3b/0xb0 [ice]
    pci_reset_function+0x8f/0x120
    reset_store+0x56/0xa0
    kernfs_fop_write_iter+0x120/0x1b0
    vfs_write+0x31c/0x430
    ksys_write+0x61/0xd0
    do_syscall_64+0x5b/0x180
    entry_SYSCALL_64_after_hwframe+0x76/0x7e

Testing hints (ethX is PF netdev):
- create at least one VF
    echo 1 > /sys/class/net/ethX/device/sriov_numvfs
- trigger the reset
    echo 1 > /sys/class/net/ethX/device/reset

Fixes: 415db8399d06 ("ice: make representor code generic")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index ed21d7f55ac1..5b9a7ee278f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -502,10 +502,14 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_repr *repr, unsigned long *id)
  */
 int ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf)
 {
-	struct ice_repr *repr = ice_repr_create_vf(vf);
 	struct devlink *devlink = priv_to_devlink(pf);
+	struct ice_repr *repr;
 	int err;
 
+	if (!ice_is_eswitch_mode_switchdev(pf))
+		return 0;
+
+	repr = ice_repr_create_vf(vf);
 	if (IS_ERR(repr))
 		return PTR_ERR(repr);
 

base-commit: bdb6054ece876dadc7f70995b303485a34dde8ef
-- 
2.39.3

