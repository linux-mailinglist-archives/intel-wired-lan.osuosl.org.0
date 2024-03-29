Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE43F892168
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 17:17:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D215941779;
	Fri, 29 Mar 2024 16:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ELg7LqSEcCYU; Fri, 29 Mar 2024 16:17:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A50CE4177B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711729062;
	bh=//EKJtPML4KB68LI6W3xBevcrTL4oWqabR2NOaBvjVs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JZYGA4PDosNpaxSPiGcCCIkR1GaBpDMHxT91wJz1IEGOw8slmmPtByxoqM6/okaKx
	 zOFjx23xwRdcikNY86mSarIEQa7QbBLzfMzrr0sow0ScthvKb0aFqks/k3quVFHGyT
	 08ckT9xT0jF8igPVzuySJEB/qEFO+AMoCC58+iBrXvsy2TVHktxLA6+GiGbtNVBdMJ
	 7SksR9FgKvKoKHz+59GhOH5SdZ2+O+CN/mn4qLXFSCa9RJP/yOWIO1kNYWgPWRiupl
	 lf+elVJccr1C44VyeuqPQwqksF7PVEKhKNtfzXi3FU9WoiB2v+g+XUHRV1V27/JmGo
	 Wxd0k/hQrOU6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A50CE4177B;
	Fri, 29 Mar 2024 16:17:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CCB31BF41B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:17:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75D4C82EAD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:17:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pyjqGJkz71Ev for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 16:17:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0156782D45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0156782D45
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0156782D45
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 16:17:35 +0000 (UTC)
X-CSE-ConnectionGUID: IKGHuVzYSViCH7w5O/FHkw==
X-CSE-MsgGUID: YBnxGFo3SgKT4gFkrv+6GQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7038289"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7038289"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 09:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="21474478"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa005.fm.intel.com with ESMTP; 29 Mar 2024 09:17:33 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Mar 2024 17:09:39 +0100
Message-ID: <20240329161730.47777-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711729056; x=1743265056;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TWEar+EA5p/uHKzxMG0sGK1L5h5ifWNU0O+J2bTzfwA=;
 b=f2ffMwGXsBhQf5FLTJJb/pW5TKNR8WS5yBb8PcgoyDx8Ob9I1Uj2gXn6
 7h14R0kg8QpXG0BI07JSgUv/canCfCGPrZR5V+lBDncXLgFvJrwuzcEkd
 FxXF9eltd5owQ/CCN6NytZAce3nMzcRwg11SG7Mmflo1ll289Xdr9IU3q
 w+VxHBr1XkEdhqvpir2XIiMtQD7UCi+qaN7HR1eBt3qjcSyRGeZ+DRwvd
 kOMJeYYECxwpUbFV0AwOT5h5ebyXaks1iqCZKfOwITFZ6GPNPJ68B5S1t
 BnxQiGOqSsnA9+xucVUo28EwoFQ9I697Xbedz+FaGqrRGUx7qMtbZN+cr
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f2ffMwGX
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 00/12] Introduce ETH56G PHY
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
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3659 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  286 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3912 insertions(+), 934 deletions(-)


base-commit: ab4851b5e85f6c55f3d6ebd18134d43746b1f7ce
-- 
2.43.0

