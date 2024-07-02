Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968F9923C31
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 13:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0104C41666;
	Tue,  2 Jul 2024 11:16:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xQySKfipR2Kf; Tue,  2 Jul 2024 11:16:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEAAF41669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719919012;
	bh=CIylphKu2PaZcEUnNajN39fHXCO3vpj3I7iKrVoE7UA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OL1ApVhKA+XTIcWEcIVPlc2QaJWxml+S4bDlCRUA+JWQjHJl4wa8Qv+eP8objLea9
	 TpvwgWqG/T7qlomWWaHNodFQC1hcP1qWhphZWFOuqCEaewtIIfMPnUOzxOrByjNrUN
	 T0ulIl51wfu9VerIHo9snp8aE7lhVENur8qfYJqfzmUSjCrrKkA3j9XlrTMrUGaW0L
	 dENlCbye+Jd7iRNv/h4OC7bhtQQK1/wVCJlqtUuFlCVJeXVd/c/HBmllhGlj4jB+ku
	 hu269M1UTpqAB09JxBLV/8OInoFTwP7bLUuSXAxd2gWpHB1i+/QAljpO0BFHf8Jp/z
	 GAUUnTBpCZgAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEAAF41669;
	Tue,  2 Jul 2024 11:16:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2010A1BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 196A560B46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cKflWOWSeZsl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 11:16:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 28EE660AFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28EE660AFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28EE660AFA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:16:50 +0000 (UTC)
X-CSE-ConnectionGUID: 6+XwWIFQRbSjaYlzBpc0hA==
X-CSE-MsgGUID: wHKPzKcMRUydjZ/y7y7dHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28481834"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="28481834"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 04:16:50 -0700
X-CSE-ConnectionGUID: O/Yiek0pS5+bBgEGALDFIw==
X-CSE-MsgGUID: G5Vyqi26Qz2BeVeuE1TcHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46005711"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2024 04:16:48 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 13:15:29 +0200
Message-ID: <20240702111533.83485-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719919010; x=1751455010;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TmwvCbXGUOyqh2fsdiY4RTdtMgEQTuFLI6cCmk0YpNY=;
 b=aX/lkvc++CeWhlj3E3saJQ4YroR9jDObice7I/ovXnLFq/sqNxSjMeQ5
 u/KxTFKguUc9X496BXa0WS64pjcNS2ozCSigtEtgB+BEyAp3+vqSME/TK
 c4vAOWqkb3vVWZv02UGbDSDHXpMdxnkuN2dXwJ77IKIIctoZiFqc1zfZA
 8Ew3C3DGAZ1K6QAwY0NiK27orLkyRHmoiMNBooIBiZG7M23Xb9r9IU6Cr
 DbHtt3Z/vRd7XYNwSPIKIBEFCN2ltCp11o0KhxKa6C1YK4FMmLXoCX0Fp
 2M2kHq7XbXKDg/RqfFmdfiu7TPqbqV+tAOO4Cg5h+rHofhm3YTdfN/Lbl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aX/lkvc+
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/4] Replace auxbus with
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

Previous discussion: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20240624/042439.html

v1->v2: Code rearrangement between patches
v2->v3: Patch cleanup

Sergey Temerkhanov (4):
  ice: Introduce ice_get_phy_model() wrapper
  ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
  ice: Use ice_adapter for PTP shared data instead of auxdev
  ice: Drop auxbus use for PTP to finalize ice_adapter move

 drivers/net/ethernet/intel/ice/ice.h         |   5 +
 drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
 drivers/net/ethernet/intel/ice/ice_adapter.h |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 337 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 7 files changed, 112 insertions(+), 309 deletions(-)

-- 
2.43.0

