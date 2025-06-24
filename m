Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8EBAE61CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 12:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE60040944;
	Tue, 24 Jun 2025 10:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gTgDnM9ngpyT; Tue, 24 Jun 2025 10:07:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68B3340968
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750759657;
	bh=M4jt+G9pbN7GzALH/vkEgnR9vDgRFdzzKARWvp/0jQ8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=07cYWhthKRcQi4QDPXQzl3vc0wPhv9+kKKxUSie7coZ6KY6wtyJ7Jp+IrQTBf3EHc
	 eukVIKBfWJPorsImvBF6Lb0kizbw7mEKNxHo5PU628sEGSuOse3mP6DhIvk2OljATN
	 bU3qm2WNJh+/lWibBg8oNholRKuQ3gdUmnugwM63LSl3CIaAmI6HDslEtymrNfcA+o
	 gVIeEP8E9UYAsZhohjMFg/0hNGjNUR7IjCw51LlRMUE5U0tvedS3fXgutDij3dc3j8
	 Ss+iiCaj2KaPH6ONhZzti2bx7WIiMIi0rKYsso+sZ/AgW3chJtbu0xkOc/8CrNdPth
	 n9cgGXGZLMAfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68B3340968;
	Tue, 24 Jun 2025 10:07:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C0A9012C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 10:07:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B291940266
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 10:07:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZroROIqylne for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 10:07:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1167E40198
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1167E40198
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1167E40198
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 10:07:34 +0000 (UTC)
X-CSE-ConnectionGUID: zzFGCk1SRD23V7pyw9mi+Q==
X-CSE-MsgGUID: TCqF1AXETK2JAMFxtdjdMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="64053072"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="64053072"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 03:07:34 -0700
X-CSE-ConnectionGUID: L2Yz06IJTGGtZIT8D9jOFw==
X-CSE-MsgGUID: s/+iqz9kRF+jDpXSSPVQoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="152400221"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa008.fm.intel.com with ESMTP; 24 Jun 2025 03:07:33 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 24 Jun 2025 11:26:36 +0200
Message-ID: <20250624092636.798390-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750759655; x=1782295655;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xefSx1wRgI7n8DHq6ASFIeX2Mwzkl89ly+dTVL1gfnY=;
 b=ALUc5ILBHbVqCZLyUiopqTvv/r00LecqoTp4iw0IOdIs1jdfJv2ohI0G
 UU8VULF5+YHa1QHBGKGosVNMHqdiYZ2vaBU3Trb6ZVBTa6roy/78tsdaW
 FCYhJInA/A/bVTouC3UncVEL8TKi+ZcHzDZT6QotofsYVGisDpsQppmKe
 9jFCGkbpcFRlsubU5f/bsCa4tJMS4brZkg/1vRJARG0DyMeEA6NcyIaK3
 5DCgkjmWa0ZGteUzeVLrNTpfBuVm3kr7SXKCKfKvFMSHouSc63Wkt1egY
 oAxREGgMR3qNKlCfdhm17VUU7Bha1UJ5lv1XjLyuORTvd5XcbSlTRMhpk
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ALUc5ILB
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: check correct pointer in
 fwlog debugfs
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

pf->ice_debugfs_pf_fwlog should be check for an error here.

Fixes: 96a9a9341cda ("ice: configure FW logging")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 9fc0fd95a13d..cb71eca6a85b 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -606,7 +606,7 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 
 	pf->ice_debugfs_pf_fwlog = debugfs_create_dir("fwlog",
 						      pf->ice_debugfs_pf);
-	if (IS_ERR(pf->ice_debugfs_pf))
+	if (IS_ERR(pf->ice_debugfs_pf_fwlog))
 		goto err_create_module_files;
 
 	fw_modules_dir = debugfs_create_dir("modules",
-- 
2.49.0

