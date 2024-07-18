Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4835934C03
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 12:54:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78A7C402DC;
	Thu, 18 Jul 2024 10:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u1jLsZpBAUQc; Thu, 18 Jul 2024 10:54:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46FF0403AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721300072;
	bh=RCyJflpE2wEjhpOsmrC24ssghsAtOz7sibiaFDjOdj0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hVfWMwoUUf+QnaoDzIxpY3ZaA/qy+skMuon06NX134olQVvnp9IXkc+00WghLMyz9
	 mz+uijsP5TefZKfH2myWwoPCZGnL9B7KGHRDxyS8lama3PJDV2RucultuOZZJbZDhv
	 6AEtKEKgLbvuOL0DJc/fMgG2BPaIwpu8GGc81YkuquGjx6x+ww4gdDzjEyIyGGFPnA
	 42Chh2EyAOfKfKGjkTFox/tthIzBzne2GUz7ZNK+VDDuz3wmTWL6CMHr7AfLij7U4w
	 xukCMdHh7nga8sJ/UFZbBoGzOyIsLRFGNMmpYjgcHYy4gIiS3TXk0a3FO1eiLh9GZB
	 vfYKR2dGG+vfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46FF0403AD;
	Thu, 18 Jul 2024 10:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 866C41BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68CAF4007D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DtNZ-M0hk7rq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 10:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D4A1402C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D4A1402C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D4A1402C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:27 +0000 (UTC)
X-CSE-ConnectionGUID: ROHS2DS9Q7C4p6PXyrmYbA==
X-CSE-MsgGUID: 3AE5gOHSSxiQDWQnaPH7vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18987482"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18987482"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 03:54:27 -0700
X-CSE-ConnectionGUID: /MZsoTwtQdmNcd/fADbQBA==
X-CSE-MsgGUID: IsRPWmyeRlCsR3GuQFQ4Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50774567"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa009.jf.intel.com with ESMTP; 18 Jul 2024 03:54:26 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jul 2024 12:52:48 +0200
Message-ID: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721300068; x=1752836068;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sxMWnGOzRQceGXp+LR0DnSHdV1N4rJK5zGv22/Wt+58=;
 b=Co1iXIZXVyGTN8z54Gh8nH3ddEYmQcxdC08daz5nFrSeYBnNoHkmfQaM
 1dsSr4FuFWpvms6buWqHDc/eAVSyfe/jt0ngolrFl5QaIZasDG90gUBG0
 RYauKG9MJskA0nsrsRjGuvIUFCma0JqPWVCU4g38309MIQQIgZRBWKpFC
 u9w2LkZhm85a93C9/jzYtjfK7Gl3+8PbWpnWV6deVR4+dN4IU/u6jGbmR
 9s+Ec/W6orqFyTF/2IT609GH5qaLlvbBa0dwIz59+kq1LHRHeaQJ6udbd
 ZiRGpQFHwZCs2EMmuUz8ozFhAsY2XFLVozeBsWQmcbP4j6o10uQ7MBzQS
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Co1iXIZX
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/5] Replace auxbus with
 ice_adapter in the PTP support code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series replaces multiple aux buses and devices used in the PTP support
code with struct ice_adapter holding the necessary shared data

Patches 1,2 add convenience wrappers
Patch 3 does the main refactoring
Patch 4 finalizes the refactoring

Previous discussion: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20240701/042528.html

v1->v2: Code rearrangement between patches
v2->v3: Patch cleanup
v3->v4: E825C support in ice_adapter

Sergey Temerkhanov (5):
  ice: Introduce ice_get_phy_model() wrapper
  ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
  ice: Initial support for E825C hardware in ice_adapter
  ice: Use ice_adapter for PTP shared data instead of auxdev
  ice: Drop auxbus use for PTP to finalize ice_adapter move

 drivers/net/ethernet/intel/ice/ice.h         |   5 +
 drivers/net/ethernet/intel/ice/ice_adapter.c |  22 +-
 drivers/net/ethernet/intel/ice/ice_adapter.h |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 339 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 7 files changed, 129 insertions(+), 310 deletions(-)

-- 
2.43.0

