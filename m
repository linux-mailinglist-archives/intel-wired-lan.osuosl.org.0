Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DD49D5F12
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Nov 2024 13:47:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0902A81129;
	Fri, 22 Nov 2024 12:46:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hp_b4BJSyxHJ; Fri, 22 Nov 2024 12:46:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EAE681137
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732279618;
	bh=uNLPy3ZpRLZN5TwpTJFcWTFlJrTf9fJ/AxUGaebt4ww=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oCY2U5PKjWq/IbNEwqf+zEiSwKZmYpIAKBZ7QMTClGo53wnKcZ+Khd+X1yT+83Wmd
	 Un9+faZoo86Ylt5QP+HmNAU7qQpu+IpTdKhli2vB/Xo1tJUJFd/1zuRxgj9RZvm09e
	 FynrxDTYST/2hRCxeIVbVDQO7+eAkk8rZ857yWTbcJ/bej6idE4GNmSnjLt2gmVL6W
	 JzFddBY2Mol6+RBQ1nCDIw0eL86mdgBHKj0jI7piTFAH6dFsKJx2WO77OFnQNjVACM
	 FRdOD1H1J87olg1vkcLR05weIkUp8Tu+gwGTjugBihAJ0BLQAlO983dVHa5Mg/3FqW
	 VxHOMfUPq65SQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EAE681137;
	Fri, 22 Nov 2024 12:46:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9225CB8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 12:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EEAA403B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 12:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z1dbch04GbWc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Nov 2024 12:46:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A242640372
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A242640372
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A242640372
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 12:46:55 +0000 (UTC)
X-CSE-ConnectionGUID: rdq17HzcSP6oQRBq5eTJMA==
X-CSE-MsgGUID: 2YG4KYHcSj+yXIUiYzZU/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="32585220"
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="32585220"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 04:46:55 -0800
X-CSE-ConnectionGUID: 2f6oPqMeR4y23dnEGaEBXg==
X-CSE-MsgGUID: y7FSIJ20R8aQc8Z9vlwBUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="90371100"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa007.fm.intel.com with ESMTP; 22 Nov 2024 04:46:53 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 22 Nov 2024 13:13:18 +0100
Message-Id: <20241122121317.2117826-1-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732279616; x=1763815616;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yvSMM6KMScxa/lLEsxxshorzTDmjaupIGau2oY4cgn0=;
 b=IL54nT/+6FZv5CRyaEFm7zjcaeheDdYvix/91yuttTKxY9xDyp6MJH8Q
 qGXWUoilv36O0eFTuKOvExHbYDK42MNXwgQ+HOscUCow2O2Ux/QBmFeAQ
 94oYafvrs1iCGJElyYWUCXsQGQpxJWID8ChaknDOFbw7baxR6ooATgSjS
 4G04eh9pWoUu3lmeTU10z9cnfKCJJbRJr82uN064HLzLpRYfI3CsKI7hq
 3nviIzs+dze5SyZ+rcm6FNJHlLrYX1s2yAzBCxVy6n5eWpTuPJ9W+25R8
 tJW20r4wUAIzZnJhT9bOIadCVTuI99vsh96zKVMoy2Tlrn5CAt2Sdb6+d
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IL54nT/+
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Enable XDP support when
 SRIOV is enabled
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

Remove the check that prevents XDP support when SRIOV is enabled.
There is no reason to completely forbid the user from using XDP
with SRIOV.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

---

Added CC netdev

---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 459a539cf8db..a07e28107a42 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10637,9 +10637,6 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 	bool need_reset;
 	int num_queues;
 
-	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
-		return -EINVAL;
-
 	if (adapter->flags & IXGBE_FLAG_DCB_ENABLED)
 		return -EINVAL;
 
-- 
2.36.1

