Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE723A59266
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 12:14:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D84981EB6;
	Mon, 10 Mar 2025 11:14:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s-c3-DZMvMa6; Mon, 10 Mar 2025 11:14:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4155981EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741605256;
	bh=qOGhygCec0ngcTDmVziUeXYgyhFsD9BNSOrjeGKdm+E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aBfO1DniyhkqtWYheHCqH3VuFcKqs/kM6YBmUWJ0w20JcXO+IqrKdz5+pMTtj74+I
	 HobwyvZApbbDLEVIXYvPEEEYDpeoJjV4QfHnh6jeQTMCdTZQyiET7p495t4dUusCus
	 Q3+dU+EVKqbSPWGWy+Y2MMCO1wUBZbY2pIp1Jlj9r5QE0UntZFhyixnHzs2uztWM3h
	 cGG44X6InZxk9olyG8R8VJuwVOkrm+TkgOa/pEbj3hBY9MLH1gSBB9OYX08RTYeKpd
	 6e+bhn8HhLRwzZ03+WJGPZiYZ9xzxuwsGh/rIISAs9Wv9Y32xMkh0JvMKSn97/fhxI
	 zsq3/9WiUr24A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4155981EB2;
	Mon, 10 Mar 2025 11:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D8B41DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A895081EB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sa6yRq3izfzD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 11:14:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D41B81EA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D41B81EA3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D41B81EA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:12 +0000 (UTC)
X-CSE-ConnectionGUID: 3gFd2U5pQxea2qIwUfcAwQ==
X-CSE-MsgGUID: FRU+EI+RQ4CW1IGpeV0F0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="65048661"
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="65048661"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 04:14:11 -0700
X-CSE-ConnectionGUID: dZL6+079Q6OwfjitwQWQBA==
X-CSE-MsgGUID: vB5lMReOQi+vTsMY8taOGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="119968304"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by fmviesa007.fm.intel.com with ESMTP; 10 Mar 2025 04:14:09 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Karol Kolacinski <karol.kolacinski@intel.com>
Date: Mon, 10 Mar 2025 12:12:44 +0100
Message-ID: <20250310111357.1238454-12-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741605252; x=1773141252;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UlgUaNk4Hl2rsXKsSeQprHfcgFzi8IEM0uNFUjWDwdA=;
 b=FWSumPbZf+AZDAuJxE2/A6G70YiFU9Fj685SnzvTh88PaELyQhq46BvZ
 8XsfRaLOb8RMCaJm2NdzoqoS/rbwqnGo4mmknjXwwZZY0QioPUU3OBngR
 aMyS7CMqruUjcVBQCA+n2jF7/3dRzgiga+txjOpFoSFPcsLMPBYQeSTFE
 1QLqvMBE6RJYEamw3WtALF0NF/K4qHjMCr4hAYx9tQXbKLma4IYavRcTV
 E/9Q+kea0KQqVqvPcwObRbbxslJMlG59HlzaJl6mCAngSdqD6uSc+102v
 svEmj/m75zo3bBtQ87b5pOCGPHq12qJrfrkom6pUru/gLmR7Ps9OVFvQG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FWSumPbZ
Subject: [Intel-wired-lan] [PATCH iwl-next 00/10] ice: Separate TSPLL from
 PTP and clean up
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

Separate TSPLL related functions and definitions from all PTP-related
files and clean up the code by implementing multiple helpers.

Adjust TSPLL wait times and fall back to TCXO on lock failure to ensure
proper init flow of TSPLL.

Karol Kolacinski (10):
  ice: move TSPLL functions to a separate file
  ice: rename TSPLL and CGU functions and definitions
  ice: use designated initializers for TSPLL consts
  ice: add TSPLL log config helper
  ice: add ICE_READ/WRITE_CGU_REG_OR_DIE helpers
  ice: use bitfields instead of unions for CGU regs
  ice: add multiple TSPLL helpers
  ice: wait before enabling TSPLL
  ice: fall back to TCXO on TSPLL lock fail
  ice: move TSPLL init calls to ice_ptp.c

 drivers/net/ethernet/intel/ice/Makefile       |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 181 ------
 drivers/net/ethernet/intel/ice/ice_common.c   |  69 ++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  58 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  14 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   | 177 +-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 566 +-----------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  54 +-
 drivers/net/ethernet/intel/ice/ice_tspll.c    | 508 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tspll.h    |  28 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  20 +-
 12 files changed, 698 insertions(+), 980 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.h


base-commit: daa2036c311e81ee32f8cccc8257e3dfd4985f79
-- 
2.48.1

