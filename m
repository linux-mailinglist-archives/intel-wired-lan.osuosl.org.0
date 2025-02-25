Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81554A4346E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 06:05:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D67CF608E4;
	Tue, 25 Feb 2025 05:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8--VJnYOH9C; Tue, 25 Feb 2025 05:05:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C764B6079E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740459937;
	bh=wVgBi4MqzL8AxXQN8sKcUcgJyjGiSbiZtsFocvblXEM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MW0OvETZHr5VitHAJkL6HY+7giYe99lfmM+XlUcv9mPHauGHXDgmOpYaDqDiresdu
	 lb8R3qdDCulnL8oPqB53t9CsB2S9YEkWjkCO9BbQxvxYzDY26df3jMvlIJCIrsFCOY
	 9ijbB6HhxbJ+K7s49KXHXGr0Uvfs65veoB8jKuvQ5uPjt1cocwDJfbayY95XVE1rA2
	 DQbhisT7UvDQkwwYmwsBe1orhS15unhK46/hAzLQT4YiC8a60RCzgz+oAN5GliM6uw
	 olDZy4Fqe3bdZo3l4/kShj46aNOK/mJu06hCdGsfo+nLoKmYIYnLu2FfOhFU1HAy7W
	 MSXHCHS5/SOUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C764B6079E;
	Tue, 25 Feb 2025 05:05:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C2792292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 05:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2880C80F40
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 05:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TMLJdFT7BO_k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 05:05:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B40480F3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B40480F3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B40480F3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 05:05:33 +0000 (UTC)
X-CSE-ConnectionGUID: c7qwoSApSx6QbO39ldM4+g==
X-CSE-MsgGUID: jst7wtHmQraMnTl434jU5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="44075726"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="44075726"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 21:05:33 -0800
X-CSE-ConnectionGUID: LXeW1j1sRqGQzAwchtkDbA==
X-CSE-MsgGUID: xmQadiNhQfCRcpXFG2Q8RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116773605"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.246.115.109])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 21:05:32 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 david.m.ertman@intel.com, Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Mon, 24 Feb 2025 23:04:27 -0600
Message-Id: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740459934; x=1771995934;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4EoFHydMSPUuRYDVxFvSPsyBP8kzcKATNbkRd22e18M=;
 b=gzU9worLgiDMPi4x7gqVtqYaYpPZ/oC9g9h6imqF74HTrwkYezH4kohp
 eGd1zpo+dt80pn1b5OoB4i0yr3h02mLrHZII2YYQLr/6WqfpDrZ6EC4rZ
 ULrBH1hkdZb2k1nCXIr0gZLoKLmKEMIAq/ehcbrYH9pJhIWJFOMXphQVM
 MhaRvXXy40xsVhbS/kTsHZloV5LGuUeAMQOwlnXDjU2J67KXpUU4h8LpF
 5+S3LR/qPeWlf8iIxVE3wSFoOpglC+fuJ2itskJ0GZ4fD/fEECEJF6+co
 kk7IsS5l1cSKyvr7xf14XForZDSNVs+vRCrA0GWCrbWN+u5w2303JWmmb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gzU9worL
Subject: [Intel-wired-lan] [iwl-next v4 0/1] Add RDMA support for Intel IPU
 E2000 (GEN3)
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

To align with review comments, the patch series [1] introducing RDMA
RoCEv2 support for the Intel Infrastructure Processing Unit (IPU) E2000
line of products is going to be submitted in three parts:

1. Allow for multiple consumers in the Inter-Driver Communication (IDC)
interface and modify ice to use the generalized IDC definitions. 

2. Adapt idpf to the IDC definitions and add RDMA support to idpf.

3. Add RDMA RoCEv2 support for the E2000 products, referred to as GEN3
in irdma.

This first part is a single patch - "iidc/ice/irdma: Update IDC to support
multiple consumers" which allows for multiple consumers using auxiliary bus,
implementing an "ops" struct and core_dev_info struct.

This patch is based on v6.14-rc1.

[1] https://lore.kernel.org/intel-wired-lan/20250207194931.1569-1-tatyana.e.nikolova@intel.com/

Dave Ertman (1):
  iidc/ice/irdma: Update IDC to support multiple consumers

 drivers/infiniband/hw/irdma/main.c            | 110 ++++----
 drivers/infiniband/hw/irdma/main.h            |   3 +-
 drivers/infiniband/hw/irdma/osdep.h           |   4 +-
 .../net/ethernet/intel/ice/devlink/devlink.c  |  40 ++-
 drivers/net/ethernet/intel/ice/ice.h          |   6 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  46 +++-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |   4 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   8 +-
 drivers/net/ethernet/intel/ice/ice_idc.c      | 255 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  18 +-
 include/linux/net/intel/idc_rdma.h            | 138 ++++++++++
 include/linux/net/intel/iidc.h                | 107 --------
 include/linux/net/intel/iidc_rdma.h           |  67 +++++
 14 files changed, 527 insertions(+), 284 deletions(-)
 create mode 100644 include/linux/net/intel/idc_rdma.h
 delete mode 100644 include/linux/net/intel/iidc.h
 create mode 100644 include/linux/net/intel/iidc_rdma.h

-- 
2.37.3

