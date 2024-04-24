Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5F58B0AD6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 15:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B940415B2;
	Wed, 24 Apr 2024 13:28:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Au-7NgGVeXb; Wed, 24 Apr 2024 13:28:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82406415B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713965315;
	bh=7kncebqNscYUJUKrpG1T/T8OhE6/Ls1rUn6dQ+HdGYY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NVi/G1RuJPoDNzW0hVrDIaOyhnxaun/ICaLQoPX3KedEo4DLcpeiTGhaT7hjBZo5p
	 BxU8MRUvLxzKq6347H5AlMNzJVfkhpeLSNR4uUkP6LbRfClQ+3qiyiDsCaG+uEN1Ek
	 ifcVGZdYwdXp6zmRFCRGcRs0BH0TjNNzu5ioV027LPntUo9J7+DR1ZCoKKxgLZxPtN
	 UrlvLq3C5oNx5ttNoIW4T2SzpjcAfDLjGBYv2TseDnVbfdwcBVLD4AkaVYwcgfgwl0
	 vwK4Gn6ygTHSYGYMEHh4qwFcpuLYWxo3y8O+NULZhU33HCm5CthzJ0rA/6vggiXBmJ
	 RAA827mJYaUVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82406415B3;
	Wed, 24 Apr 2024 13:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D622B1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF96E41597
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vhC91BG7GPBD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 13:28:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C64B44157E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C64B44157E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C64B44157E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:28:32 +0000 (UTC)
X-CSE-ConnectionGUID: ZBhbzsoGS5GHChEK23hvbw==
X-CSE-MsgGUID: 5Yal2rD/STeTFu4WwCTxuQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="27109407"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="27109407"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 06:28:32 -0700
X-CSE-ConnectionGUID: t2dpmhd7Qzu1GdmLq4P12A==
X-CSE-MsgGUID: uBvjrvmATP20HmvoXDXwjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="29350654"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa003.jf.intel.com with ESMTP; 24 Apr 2024 06:28:31 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Apr 2024 15:22:58 +0200
Message-ID: <20240424132824.111827-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713965312; x=1745501312;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xzYZK0bkx/6l071/oTzRHb0U+Rji80nUPCD0ixKgpvk=;
 b=HzeZUvHU9v9QpRXbez14h/56H6T6JU1oeZXMxW/6/d1KRbID7/0tXOaZ
 bCPj2vccvKNKEQmhcgUj/uHpzyyflcfSy0lhsBhqcD7t90sVL29sZ112V
 yHlfbA+uNm8Fi5ZbhpbZpDDcLejT2RXPVQ/dKjpnXqpqAMd1mQoSWrg6t
 VU5bedNVbbli7NGQclFsmf0jdxhy1omGoYpogqEk/bSmA5zIrzuNTw8hD
 Cwlgo4ueHLssD/Lo/AJCTgBNKdvt1wFiqWErlRcnZswP9ikdux/8A9SQS
 n5mUM0XZogxeWjc8pU2WPjeDopQYWVyqjG4JKN29Vj9gnGgypijLY5XBu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HzeZUvHU
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 00/12] Introduce ETH56G PHY
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

V9 -> V10: Changes in:
           - ice: Add support for E825-C TS PLL handling
           - ice: Support 2XNAC configuration using auxbus

V8 -> V9: Fixed kernel-doc warnings by adding missing summaries and return codes
          in all patches

V7 -> V8: Changes in:
          - ice: Move CGU block
          - ice: Introduce ETH56G PHY model for E825C products

V6 -> V7: Changes in:
          - ice: Move CGU block

V5 -> V6: Changes in:
          - ice: Implement Tx interrupt enablement functions
          - ice: Move CGU block

V4 -> V5: Changes in:
          - ice: Introduce ice_ptp_hw struct
          - ice: Introduce helper to get tmr_cmd_reg values
          - ice: Introduce ice_get_base_incval() helper
          - ice: Introduce ETH56G PHY model for E825C products
          - ice: Add support for E825-C TS PLL handling
          - ice: Adjust PTP init for 2x50G E825C devices

V1 -> V4: Changes in:
          - ice: Introduce ETH56G PHY model for E825C products

 drivers/net/ethernet/intel/ice/ice.h          |   27 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    2 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h |   77 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   74 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  272 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  402 ++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3306 ++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  295 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3873 insertions(+), 659 deletions(-)


base-commit: ca2791b2bf030090c5d10868fa79ab97de34f57f
-- 
2.43.0

