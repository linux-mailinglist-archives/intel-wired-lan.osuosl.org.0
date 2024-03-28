Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE68E88FB9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 10:34:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B84DA416D2;
	Thu, 28 Mar 2024 09:34:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QDzGxz1G_RUQ; Thu, 28 Mar 2024 09:34:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC487416D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711618456;
	bh=MibaKc3/r07ZfvEuYDydtpg/WOOfWHma+9R0JBzh4Gk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gKGiHa4GmXSJsJbWGzI7UyBUC/u5Uki0hgq5/NDqj2DMEzviwmqEG9l4oavmOCKK+
	 bmbXBfNjFw/qs8D0/XLypG+iaIzOJ44gahohtTg4o0KaURKBmkcIoWDXxzqigzjxDo
	 I4jsgYAujBzXDglV9yFG1Cdh7eV0ezEPygO8T7G+VqWiVrHBe93c2RvwR49caWNXzb
	 J37toh+kZy2lvHUJVTEZWf9lpFZOAugEeHWzfE97JGQtGxdrbz96DE6bJHsAOZVGFW
	 dYk75dzKnrrm2FPAXBmaZFvyomjTVzbAefa9MqYbwigvG5XwILtKR6CUwuXJ/22a/Z
	 a23oe8x/LYIZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC487416D3;
	Thu, 28 Mar 2024 09:34:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F28D11BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 09:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE32C81E3A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 09:34:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2my0L84oYd8z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 09:34:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1946E817A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1946E817A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1946E817A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 09:34:12 +0000 (UTC)
X-CSE-ConnectionGUID: XiyBFno1SUuAbMdNhrL8QA==
X-CSE-MsgGUID: mGYEWJcVQjKXb3U8C45NmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6952635"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6952635"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 02:34:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21276268"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa005.jf.intel.com with ESMTP; 28 Mar 2024 02:34:09 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Mar 2024 10:25:18 +0100
Message-ID: <20240328093405.336378-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711618453; x=1743154453;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RTgyQhh5hfPvHOZxi4F5KEWwjYtUZKgGi+s8RkLBcn4=;
 b=FPR9xQEBoUHSxhOS2uWoStvzXplMEP6Z0AHSEMEwQQ+OuHnYd7WzZs4J
 iznIpLjg9XM5HOBl6oDN8SWmZ3f4XSeiIPp734lhdtu4hoyklPMhpmDHs
 pQlS3jS2gsMAKVGh5zxvhS1BgJN9+l9+nwILufzCQD2Wqqoj8spjiBJWU
 9d5o2CcRBsjZO2SZ5mFRnDVwdIQ3vPnoN1HXhfjgM4Jx4ZeFkXb2hPck4
 BluoxLTY89JvJJ1eIYqGucZFo0pcSvdvChW6m8VxXNro448muzqNMN+u3
 C8IFvpTtiUT7W+zdmeoSynwgg50LPzArpO6lsg2UySyGMG7nFrJe7YpF/
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FPR9xQEB
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 00/12] Introduce ETH56G PHY
 model for E825C products
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825C products have a different PHY model than E822, E823 and E810 products.
This PHY is ETH56G and its support is necessary to have functional PTP stack
for E825C products.

Grzegorz Nitka (2):
  ice: Add NAC Topology device capability parser
  ice: Adjust PTP init for 2x50G E825C devices

Jacob Keller (2):
  ice: Introduce helper to get tmr_cmd_reg values
  ice: Introduce ice_get_base_incval() helper

Karol Kolacinski (4):
  ice: Introduce ice_ptp_hw struct
  ice: Add PHY OFFSET_READY register clearing
  ice: Change CGU regs struct to anonymous
  ice: Support 2XNAC configuration using auxbus

Michal Michalik (1):
  ice: Add support for E825-C TS PLL handling

Sergey Temerkhanov (3):
  ice: Implement Tx interrupt enablement functions
  ice: Move CGU block
  ice: Introduce ETH56G PHY model for E825C products

 drivers/net/ethernet/intel/ice/ice.h          |   23 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |   77 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   58 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  263 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  402 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3656 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  284 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3907 insertions(+), 934 deletions(-)


base-commit: a81f6acc75e74f8b5502e4fa7ede177623de2035
-- 
2.43.0

