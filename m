Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B804293D137
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 12:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B76E409EA;
	Fri, 26 Jul 2024 10:31:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rKZ4QGYQKQCm; Fri, 26 Jul 2024 10:31:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F3A340B5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721989912;
	bh=g4jgB0IfdfL/LNuES3KCV3jZP1hfJJgDkrtadHecov0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oJKNHV45vJS9PMxAUSBYMgvuERVM/zMv3M1Jv2uw+dpr2r/iYzYuQlvLxeibAMzqK
	 kBS5vHsWUrXzz0YOkFhkNMRj+h0FmjSfrNfv1vhZ2nej/FFqYu7Kn1mfNZIiEGONYh
	 wO8bVMCNrA4fdh454Mzdn4ynoSZvAKMK43+Stx7ZBx7fsyQqHB6BTgrxJvlVBhJwSG
	 bO65HdD15A+PNwHeVj9lNtnpVwnIpPcEbDL9wu0+5UuEE6/mnOQGke7T9GlJ0zY+rr
	 3aFqlrjmWfACh+QyqIKeHmoiQDgxTV47GbJiO6wyOYaoXpoQcek0J16b6t0hikLj+i
	 jfQWCRi5P2RpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F3A340B5F;
	Fri, 26 Jul 2024 10:31:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4772E1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 10:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34022607F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 10:31:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BE3vRzR0YkcD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 10:31:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 65B9B60747
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65B9B60747
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65B9B60747
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 10:31:49 +0000 (UTC)
X-CSE-ConnectionGUID: AlQfdrbzRvOSgSa3XqqHpw==
X-CSE-MsgGUID: oEnUwtg7SAun1SexeqiHvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19961710"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19961710"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 03:31:49 -0700
X-CSE-ConnectionGUID: ad5voPjCSv2v8BPcJSddsA==
X-CSE-MsgGUID: CG58LzpERTaCFURT9ehRJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="76448474"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 26 Jul 2024 03:31:48 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D035D28198;
 Fri, 26 Jul 2024 11:31:46 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Jul 2024 06:19:28 -0400
Message-Id: <20240726101928.21674-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721989909; x=1753525909;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+O4pbmRzYkPAuPXMxDQIsMy+G9AHX62ZmuJIP+QIIEA=;
 b=JFyCWRQZhG5wWJbaKrYEy4kkk9CMAq9oJnuK5i+yDJwfN0omGVzBQstF
 a3wffeFAvJXzY5reqzLDuhC32Kyk3cuSPjIWHViokmeyqgg80qlEyD3QC
 +jzi8PybVzI3XXF+0oJHMmSJyMJITAAh3xtL9BgY/kp0BjxT+8O7uKZUM
 jrRQW+Pl8B5ECbgS37tcTQc3F/tpvXN82xzJx8id+sUvvFpn5EBnUUr/I
 2nGh2cJtMzlZ1WGSWJ5hUyMbwdkocrlDnnuQGpKcHHEJF0bDH+T8bH0Qx
 mbeBJBcwYJKacDKF5Je2aCQALWd7cW2AMNpCb20+lgSM5cxr++MThOqit
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JFyCWRQZ
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix incorrect assigns of
 FEC counts
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
Cc: netdev@vger.kernel.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit
ac21add2540e ("ice: Implement driver functionality to dump fec statistics")
introduces obtaining FEC correctable and uncorrectable stats per netdev
in ICE driver. Unfortunately the assignment of values to fec_stats
structure has been done incorrectly. This commit fixes the assignments.

Fixes: ac21add2540e ("ice: Implement driver functionality to dump fec statistics")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 8c990c976132..bc79ba974e49 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4673,10 +4673,10 @@ static int ice_get_port_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
 	if (err)
 		return err;
 
-	fec_stats->uncorrectable_blocks.total = (fec_corr_high_val << 16) +
-						 fec_corr_low_val;
-	fec_stats->corrected_blocks.total = (fec_uncorr_high_val << 16) +
-					     fec_uncorr_low_val;
+	fec_stats->corrected_blocks.total = (fec_corr_high_val << 16) +
+					     fec_corr_low_val;
+	fec_stats->uncorrectable_blocks.total = (fec_uncorr_high_val << 16) +
+						 fec_uncorr_low_val;
 	return 0;
 }
 
-- 
2.38.1

