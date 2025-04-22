Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE16A971EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 18:07:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBF1881E9B;
	Tue, 22 Apr 2025 16:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QsUP38hS5IS7; Tue, 22 Apr 2025 16:07:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ACFA81E9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745338062;
	bh=zc/BhdyW/0Z0lykgyRJO6/iKaM8vVtyCEQXQqFFxpi0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IBE90n6plluW1oAyCUHDgTxsG0Okgzx6coN+LsgH7acv8oBU5INpV1UguUowdKbJk
	 H822VpczbnWdk0kXudORxlqOfEXtwkRPAZUIO1BuukNVYYebWmblkVqjO+jnT46lEH
	 +YH32aMAVByw2LucHnTdNQRVggA+p7Ad1/ifTdKolLUheAx+pewG+ucA6zgpDhoJTs
	 aeQ/XMy+zZL9or0uCLXs6PXMuGmRXeRtW5PDXGH0dIXD3Vh+KD7j8zYDyJL/CpjQGk
	 Dy2PVaQrAE11fH7SgX64+clUCSMIXKbkC9KNeZOgALuc21Ph7xRSNk+J4NnrbrEuxU
	 fwMhqKXvkFMtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ACFA81E9D;
	Tue, 22 Apr 2025 16:07:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E3C1A1BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D587960BF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fB20xP0vbY2I for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 16:07:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4702D60BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4702D60BEC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4702D60BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:40 +0000 (UTC)
X-CSE-ConnectionGUID: niGNKKVgQ5eKDbjpyfSRyw==
X-CSE-MsgGUID: Uxe3+KstQcqt3sFyz6h3BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="50709018"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="50709018"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 09:07:40 -0700
X-CSE-ConnectionGUID: Z61mPEJGSYy+jPKYNkE3Tw==
X-CSE-MsgGUID: 4lF+pHrqT/aMWATg1Pe27w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="132592449"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa007.jf.intel.com with ESMTP; 22 Apr 2025 09:07:39 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 22 Apr 2025 18:01:46 +0200
Message-Id: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745338061; x=1776874061;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OotV9A4plTUiuTA8hgl+oKxod/ytATJED4aRe2n1lyU=;
 b=hBlAHGFx+pOzaQzHHDA/rXRlpHzEv+KwuPvdEkqII2rMR92SWug1lucC
 gfDz1qAINz9Jo9IS7n1lqKTCJ3isvHV2zCcwI8YieLQnPQqsbeyZFIrU3
 L2RFTw0zrcWqQD6IBbOB/1A1gbqH1+fkG7IPalAqf0GL7tG1/ssCm1DHn
 J0FfZSAFXWrjv1lRxaYUKxyvnU28rGUMPVFITIqJPakBFYwSiuFeooPl9
 EzLbjV7iholy/L1V8664aHMBI93Aqh/JHhzGMqvKQdqUVu9nHtXfFasWW
 Qv2QsEE8sgb5ECcoXTpICc5k4QDPqe5i1tJtYZRbEgvngIZ1yYvkISWiA
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hBlAHGFx
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/3] ice: decouple control of
 SMA/U.FL/SDP pins
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

Previously control of the dpll SMA/U.FL pins was partially done through
ptp API, decouple pins control from both interfaces (dpll and ptp).
Allow the SMA/U.FL pins control over a dpll subsystem, and leave ptp
related SDP pins control over a ptp subsystem.

Arkadiusz Kubalewski (1):
  ice: redesign dpll sma/u.fl pins control

Karol Kolacinski (2):
  ice: change SMA pins to SDP in PTP API
  ice: add ice driver PTP pin documentation

 .../device_drivers/ethernet/intel/ice.rst     |  13 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 927 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 254 +----
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   3 -
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
 6 files changed, 988 insertions(+), 233 deletions(-)


base-commit: f1b79f06407e20f12be7b5cd4aed493b2ec1b6ad
-- 
2.38.1

