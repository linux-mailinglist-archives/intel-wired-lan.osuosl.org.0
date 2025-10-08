Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 192FCBC4529
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 12:31:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2A7240800;
	Wed,  8 Oct 2025 10:31:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E36QQj37tp4P; Wed,  8 Oct 2025 10:31:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 392E540854
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759919487;
	bh=qWOQGyZF6H3FLjMi6BaaiNR3SCcvMoxy1k0sXPOxtEc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DO7j8ZRXxx9RUjCzY2bN+m51lyPB8+RhHPC1FEpUceTq5ZslNKRSCVEbWwMaqQXUW
	 H/w+uwY+jnYL99XYFEaQaWVbtBXGA2Jgitb1puh9RXvh4g2JNzLSmfwj21rqcXwa9h
	 PbKvKMPdzXq+V31csJ6Jx+2j8zVKErzGMIeghmLrSeMc3dZ2emJXxSrtfcbFAAx3qN
	 vbLSr0poreSkaAxKOx1FjtBVRlBNH1CbXEm6sFjokXxmda5aY8srUMCfCyLsAA/dFf
	 OZA3iZ0YG6k2aooLfo3QposmibvzeZ3JVP3vxIabzzNZY5tH1j7+4kOvm2Mw3Dwq22
	 2OCVLokAV6NVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 392E540854;
	Wed,  8 Oct 2025 10:31:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B777D119
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 10:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A93888132A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 10:31:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEN3dlH7w45R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 10:31:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B75381320
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B75381320
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B75381320
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 10:31:24 +0000 (UTC)
X-CSE-ConnectionGUID: hc/0V/EMQQCVwY2tsfmYfA==
X-CSE-MsgGUID: 0A3kVYgyROWo30NmJM5gzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="61314899"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="61314899"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 03:30:57 -0700
X-CSE-ConnectionGUID: r3EuW9CJS5OKctu8XH4RLQ==
X-CSE-MsgGUID: tYTE/BKiTB2+U5f4lQCSNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="180231287"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa007.jf.intel.com with ESMTP; 08 Oct 2025 03:30:51 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Oct 2025 12:28:53 +0200
Message-Id: <20251008102853.1058695-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759919485; x=1791455485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L8s98Pp+Npa8RTT/IAdqGHuMIi9QoaXe5bkMmNP7FE0=;
 b=FOb9FaBNAKAHfllRW4LsGgj7Vv70pKIsfsrPAuHJlI7G/LNY83i+Xe2p
 Bx6zVx+7pe5axrookgG8G/u/KM9V2zXrX5pMLpOd5nqcw3Yf865xobPay
 unX58VvXJpTcqSzfToxlgfQ0gSUPzNpxycoAG4d4vWrSlhq7Jbv2XYsMO
 Hse7dLPsCHOFxqiidFBPJWURdW6IwFPmr4fsmYTmlq/ww2I5LdTDD73MY
 fb2AUtHVo16tBW4EPmpCvjwiHoGmhwYp+ILL2z/pLrx75KZ4f2Z29jG6a
 g3FBrWQxokUbWPAV5Wnpf79Vo7m6zpJSwigzZ7rQGMdovXf6GE5oz6kfs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FOb9FaBN
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix usage of logical PF id
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In some devices, the function numbers used are non-contiguous. For
example, here is such configuration for E825 device:

root@/home/root# lspci -v | grep Eth
0a:00.0 Ethernet controller: Intel Corporation Ethernet Connection
E825-C for backplane (rev 04)
0a:00.1 Ethernet controller: Intel Corporation Ethernet Connection
E825-C for backplane (rev 04)
0a:00.4 Ethernet controller: Intel Corporation Ethernet Connection
E825-C 10GbE (rev 04)
0a:00.5 Ethernet controller: Intel Corporation Ethernet Connection
E825-C 10GbE (rev 04)

When distributing RSS and FDIR masks, which are global resources across
the active devices, it is required to have a contiguous PF id, which can
be described as a logical PF id. In the case above, function 0 would
have a logical PF id of 0, function 1 would have a logical PF id
of 1, and functions 4 and 5 would have a logical PF ids 2 and 3
respectively.
Using logical PF id can properly describe which slice of resources can
be used by a particular PF.

The 'function id' to 'logical id' mapping has been introduced with the
commit 015307754a19 ("ice: Support VF queue rate limit and quanta size
configuration"). However, the usage of 'logical_pf_id' field was
unintentionally skipped for profile mask configuration.
Fix it by using 'logical_pf_id' instead of 'pf_id' value when configuring
masks.

Without that patch, wrong indexes, i.e. out of range for given PF, can
be used while configuring resources masks, which might lead to memory
corruption and undefined driver behavior.
The call trace below is one of the examples of such error:

[  +0.000008] WARNING: CPU: 39 PID: 3830 at drivers/base/devres.c:1095
devm_kfree+0x70/0xa0
[  +0.000002] RIP: 0010:devm_kfree+0x70/0xa0
[  +0.000001] Call Trace:
[  +0.000002]  <TASK>
[  +0.000002]  ice_free_hw_tbls+0x183/0x710 [ice]
[  +0.000106]  ice_deinit_hw+0x67/0x90 [ice]
[  +0.000091]  ice_deinit+0x20d/0x2f0 [ice]
[  +0.000076]  ice_remove+0x1fa/0x6a0 [ice]
[  +0.000075]  pci_device_remove+0xa7/0x1d0
[  +0.000010]  device_release_driver_internal+0x365/0x530
[  +0.000006]  driver_detach+0xbb/0x170
[  +0.000003]  bus_remove_driver+0x117/0x290
[  +0.000007]  pci_unregister_driver+0x26/0x250

Fixes: 015307754a19 ("ice: Support VF queue rate limit and quanta size configuration")
Suggested-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 363ae79a3620..013c93b6605e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1479,7 +1479,7 @@ static void ice_init_prof_masks(struct ice_hw *hw, enum ice_block blk)
 	per_pf = ICE_PROF_MASK_COUNT / hw->dev_caps.num_funcs;
 
 	hw->blk[blk].masks.count = per_pf;
-	hw->blk[blk].masks.first = hw->pf_id * per_pf;
+	hw->blk[blk].masks.first = hw->logical_pf_id * per_pf;
 
 	memset(hw->blk[blk].masks.masks, 0, sizeof(hw->blk[blk].masks.masks));
 

base-commit: 8b223715f39c8a944abff2831c47d5509fdb6e57
-- 
2.39.3

