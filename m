Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DD9B39959
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 552DF82AEF;
	Thu, 28 Aug 2025 10:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hq6yKiv2ob_i; Thu, 28 Aug 2025 10:16:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B19182B9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756376193;
	bh=QplnMq7MCnU7/kNizeU23vvTFSo6pk5Cw61Q+3Nx2G0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n5YVJp1/2Lg4vC7q671WIrwO5gXOTMm8gR34XwQaqgyrEdGdiBicIxrNP2dG5FpnU
	 GMQrR/+WDcYkNciF5/nTmByghAVQRxKbdPhx7moNqZ1GILHyv1g3lJiI6XYj6dGpe+
	 rE+1Zk+YiKrna8wGUbRpO4iWuDAJlkpul2BFlWAdx4cH+99Z1kEZaMpuyWpTFtQksS
	 8brdKtIAicfbwCAfH+/g6GYpfBw1Nbnwt1Z0E8IkbgFo1WHnw3uKJx/3x4Hg8JS28e
	 uESVMW2PhkcJijHAtySSUDaBLMnf2UHOofFeLqJ1WEWihAhBd10PLfSKCg7Ui14d33
	 lkcJRmBBSOusQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B19182B9F;
	Thu, 28 Aug 2025 10:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2321417D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F18B982B97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eqNrJ9hpL04j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:16:31 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 28 Aug 2025 10:16:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 474AB82AEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 474AB82AEF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 474AB82AEF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:31 +0000 (UTC)
X-CSE-ConnectionGUID: u1dRNfrFSHmsOIyCVH0YgQ==
X-CSE-MsgGUID: O4Oc4FJWQD2Tc+3LHsJ8UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="61274905"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="61274905"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 03:09:24 -0700
X-CSE-ConnectionGUID: XSCp3FLQRiCXHf9sSmWthA==
X-CSE-MsgGUID: wLti3rxyRZe/vFsR5mB8IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169972336"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa007.jf.intel.com with ESMTP; 28 Aug 2025 03:09:22 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Thu, 28 Aug 2025 11:52:23 +0200
Message-Id: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756376191; x=1787912191;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e3yOIyDahb1llweZF2UcsJlKDVQO7dwhmABbcAIJDTg=;
 b=a3JW8fBlihIImoOK3jC1cSmoIvRoTrSY2NgKvaGuXaV0yRHbVdq5Dp/1
 B8OGMdcVmJWfqQoVkXMwgQbQUkbUkWk9QBZArBAIIxTH8J7JNcEvUqkHC
 RwW0Bq/5BlxnTsGx26bk8ayd3IgAIrTKH5ocDPDZMNMv0USUg0iz3u2ML
 MC/xLuZfxcz1YMSidO9bW++hRXxKRmXiU9G6vNLoP+fz3IFY2YqbZtDXH
 /eg+vrD7l669gSKX8AfKU/RhXcty1q16748MNGv9pgLDhQj34XuLk2dR3
 uZYTg81EDSkcvzpP01kAjb0aMJN5APwa6xDZTv5NC29aKt93NExBfvKQ0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a3JW8fBl
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/4] ixgbe/ixgbevf: fix PF/VF
 communication issues
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

Within two-step API update let's provide 2 new MBX operations:
1) request PF's link state (speed & up/down) - as legacy approach became
   obsolete for new E610 adapter and link state data can't be correctly
   provided - increasing API to 1.6
2) ask PF about supported features - for some time there is quite a mess in
   negotiating API versions caused by too loose approach in adding new
   specific (not supported by all of the drivers capable of linking with
   ixgbevf) feature and corresponding API versions. Now list of supported
   features is provided by MBX operation - increasing API to 1.7

Jedrzej Jagielski (4):
  ixgbevf: fix getting link speed data for E610 devices
  ixgbe: handle IXGBE_VF_GET_PF_LINK_STATE mailbox operation
  ixgbevf: fix mailbox API compatibility by negotiating supported
    features
  ixgbe: handle IXGBE_VF_FEATURES_NEGOTIATE mbox cmd

 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |  15 ++
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  79 ++++++++
 drivers/net/ethernet/intel/ixgbevf/defines.h  |   1 +
 drivers/net/ethernet/intel/ixgbevf/ipsec.c    |  10 +
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |   7 +
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  34 +++-
 drivers/net/ethernet/intel/ixgbevf/mbx.h      |   8 +
 drivers/net/ethernet/intel/ixgbevf/vf.c       | 182 +++++++++++++++---
 drivers/net/ethernet/intel/ixgbevf/vf.h       |   1 +
 9 files changed, 304 insertions(+), 33 deletions(-)

-- 
2.31.1

