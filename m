Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D2EA19FB1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 09:19:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88C614145B;
	Thu, 23 Jan 2025 08:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MNzNcds-29hI; Thu, 23 Jan 2025 08:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B24764146B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737620345;
	bh=tlMJ2iPJJXT+98p2KKaBs4RnNGe+5/+oCn2va1tuyjU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lGxHep2ugNzs2/XHmRT1UHm0kmYKXtcX79FkgFgl+YXuP7dyvcZQy8LPa8SRWd2HZ
	 7o4B4X3wOfvsmMsU51hcFc5WNYCxwCOMcyZdDclkfoN1sBhQzaARRWERLBzYmoJjn1
	 n1rpQERcevQ+GtsiFL0VUm7VZCro4FvwLUZ4FhpUTCStfXawzj3ipv+6QTIdtjVVqz
	 F/xaWqyTJsIVX6IWYGbUtUCrch0Z1KITECYdU7JwHB+d//Scj7gBCYLCAjBnz4h2fm
	 dxZpjktpSUIgRXQ1mZLoqeOwXhkh/vwlLWopz1bDCFwjqzdz3Nr+y3P6tPSohE0+Px
	 dDGyKTfkWm3IQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B24764146B;
	Thu, 23 Jan 2025 08:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6365EB88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 08:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4382741454
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 08:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x72I2pjRZyHC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 08:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 60C2E4144A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60C2E4144A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60C2E4144A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 08:19:01 +0000 (UTC)
X-CSE-ConnectionGUID: UlGAf2QiQmGAsHb+oO+biA==
X-CSE-MsgGUID: HyAm3ZmFQQGHTNulOz1/BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="37367432"
X-IronPort-AV: E=Sophos;i="6.13,227,1732608000"; d="scan'208";a="37367432"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 00:19:01 -0800
X-CSE-ConnectionGUID: 3BCBMiajSwWA8L2gLrBW1A==
X-CSE-MsgGUID: t4F6L9C8RSG1qdHzUJ8/kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144631774"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 23 Jan 2025 00:19:00 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 Jan 2025 09:15:39 +0100
Message-Id: <20250123081539.1814685-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737620342; x=1769156342;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e1qw4y4PLJCQfmeGcA03ZD+XvKSBFChpfjWZUn2EDtQ=;
 b=GNd3WSUEi/KqWucFtI5gAv3ALa0fRgtEmb5/Li5ePAMci0I78fc7WEWw
 6mF7CWQ5OyXvcnB+byOxyeoDJvxxDCr9KB9vMwVt2Oq+s2G04s9y41Lru
 qtYKGJr8QSqiTzGFTO4tL1lNlVq1Ek2J91aOZXcw1vrrgXiG/QQ9AxEZZ
 5w9xEL/rJcTc1wl2F5VsRSp0q1EUgdAArXmH5ptgYih7gn2ox1+w5G/Eh
 hJuaNPd1GquxHKNLMKHR/J4sTEXd8O8VsC5CrzaK0J/Z8fvyfR9tac1AN
 +OZPn6Tlf6LsAqGCLVdGpNQmieRFfSU67me2HSgzvbMOAYm7KhMxVojGZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GNd3WSUE
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix memory leak in aRFS
 after reset
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
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix aRFS (accelerated Receive Flow Steering) structures memory leak by
adding a checker to verify if aRFS memory is already allocated while
configuring VSI. aRFS objects are allocated in two cases:
- as part of VSI initialization (at probe), and
- as part of reset handling

However, VSI reconfiguration executed during reset involves memory
allocation one more time, without prior releasing already allocated
resources. This led to the memory leak with the following signature:

[root@os-delivery ~]# cat /sys/kernel/debug/kmemleak
unreferenced object 0xff3c1ca7252e6000 (size 8192):
  comm "kworker/0:0", pid 8, jiffies 4296833052
  hex dump (first 32 bytes):
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
  backtrace (crc 0):
    [<ffffffff991ec485>] __kmalloc_cache_noprof+0x275/0x340
    [<ffffffffc0a6e06a>] ice_init_arfs+0x3a/0xe0 [ice]
    [<ffffffffc09f1027>] ice_vsi_cfg_def+0x607/0x850 [ice]
    [<ffffffffc09f244b>] ice_vsi_setup+0x5b/0x130 [ice]
    [<ffffffffc09c2131>] ice_init+0x1c1/0x460 [ice]
    [<ffffffffc09c64af>] ice_probe+0x2af/0x520 [ice]
    [<ffffffff994fbcd3>] local_pci_probe+0x43/0xa0
    [<ffffffff98f07103>] work_for_cpu_fn+0x13/0x20
    [<ffffffff98f0b6d9>] process_one_work+0x179/0x390
    [<ffffffff98f0c1e9>] worker_thread+0x239/0x340
    [<ffffffff98f14abc>] kthread+0xcc/0x100
    [<ffffffff98e45a6d>] ret_from_fork+0x2d/0x50
    [<ffffffff98e083ba>] ret_from_fork_asm+0x1a/0x30
    ...

Fixes: 28bf26724fdb ("ice: Implement aRFS")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_arfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 7cee365cc7d1..405ddd17de1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -511,7 +511,7 @@ void ice_init_arfs(struct ice_vsi *vsi)
 	struct hlist_head *arfs_fltr_list;
 	unsigned int i;
 
-	if (!vsi || vsi->type != ICE_VSI_PF)
+	if (!vsi || vsi->type != ICE_VSI_PF || ice_is_arfs_active(vsi))
 		return;
 
 	arfs_fltr_list = kcalloc(ICE_MAX_ARFS_LIST, sizeof(*arfs_fltr_list),

base-commit: 3ef16bb459c1a3af2c071cb5651877a47cd03295
-- 
2.39.3

