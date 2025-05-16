Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9DDAB9CF8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 15:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9322141781;
	Fri, 16 May 2025 13:10:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CouhKh63mzuE; Fri, 16 May 2025 13:10:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 074D141779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747401051;
	bh=76K5udQslp3KjtdNFysOJdSnVqH482ypqzX7+cAjZro=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DlIM859lvmRzRarK7GxUD/ESnEj/1kPlWxIWWuJaEaJRNAEU4CKdr+6WPyHQajxvN
	 78NW9uTVELeb5pXHmHWf6aXzl+8la6amJmO03Cjha1UWJ/Kt6mfC2n0w6X+oWTAEy1
	 K+fkcfIS0wZx/bb2QSL4erZ4tMC4dv5MWqfVEPtcj7ctGyZ5BLycIalwM6RHP7q3cb
	 x0jFxsb1gzUe+Q3DduWkY4PtmhoQPeIoT2Ptrislcd9j5fpvlRal53U/sn4BLFdY3D
	 MJbPtiL6gKmVbZLzaa8MV8G+gOa0pTFizjMM5JHVEH/9sfXi0g+dv4Oumb/FO+AQCb
	 xcPQ8jc9L5OSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 074D141779;
	Fri, 16 May 2025 13:10:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5897F1AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 13:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DAA641742
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 13:10:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0zDE8E7QrlDB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 13:10:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F7234176A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F7234176A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F7234176A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 13:10:48 +0000 (UTC)
X-CSE-ConnectionGUID: ojkt5eMUTFm3ccVsNv22ew==
X-CSE-MsgGUID: 8wMfgAFeRQixiXVOTKaZmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="66924685"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="66924685"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 06:10:48 -0700
X-CSE-ConnectionGUID: CitHtpdfS0yJpTUsuJWDSQ==
X-CSE-MsgGUID: 5kIM4BIiSmyKzK+j2tETaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="169735672"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa001.fm.intel.com with ESMTP; 16 May 2025 06:10:47 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 May 2025 15:09:07 +0200
Message-Id: <20250516130907.3503623-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747401049; x=1778937049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K9h2+0CIeLWJk6m9Bp2dv674EF0JQkEXZ3KQr4daZpo=;
 b=nRClxAp2iPnW4e63huM7eE3WfAw9FMwd39SBH+801dguGtzHXj8/tohQ
 l4GLA+5Fa/Is21USOtjBHh9nuGy04w/bBw6ayHnnkbImyXVqabzhX4NJx
 LbztT4F5wKBWbhjrCBpN2vgVZDm3qniplzQ7RtM2NMGAE8BF8voSSzqj5
 BDJGUb8bn6iORM5XL9fdTYcGdnCAtz+hWUAWz1EA1+9VNRxPTXsluqdYx
 ZO7HD25Cy1gp6Jb1zxUkCzJH0eFkpQXsPOakp5pAaNqyAvwQFA3wft0YA
 CsV02oa5Jcu/4yJ2dnqZXqV7RtJZiMV728qZAH5KrKRnzmefblpKdVnsk
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nRClxAp2
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix eswitch code memory
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
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

v1->v2: rebase, adding netdev mailing list

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
 

base-commit: 2ac71b085957eb2c674e1c57107a7f0f22d2311e
-- 
2.39.3

