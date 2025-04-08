Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D44FA8137C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 19:24:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5174D82C35;
	Tue,  8 Apr 2025 17:24:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gK8Y1dfyUzqi; Tue,  8 Apr 2025 17:24:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D62D82C98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744133064;
	bh=1upSKW5eCpUQczYENK/hVExwHYVE895dNF5qEBAZtEc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gcGYFae4RVRdMlQub8Lcw+n/oUDLLy2Vawp1HylcyaMUVZetoH3tPfSFHmaKtoS0j
	 wKvxj0eRuAriJh9gRcsU05FeNiuLxTWWKnKflkwnO4HK9fJnGugNuBE4fma/EXxNrm
	 VCS4/QK1oDtSrWBRuri7IoPrExBOOFtM+Zwg5VffIZm1PIAWmAxfD8G0lw+TVTKRUa
	 9iqi39Eo0mq8p6K7Sayat3mz8yKnSCcfNAePnlwPqGvZBk9z44rHhi6/W0tsfkdso+
	 +pw2JnGE+GspEb3FH1b74vi/jbWDt8nTFRi7foGXaC2qJ80r7TSXs00r8GBmr9GUwr
	 emmjZmB4LpzVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D62D82C98;
	Tue,  8 Apr 2025 17:24:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DED5E1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 17:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C318882A72
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 17:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SbYQZOFkzpbN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 17:24:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2725682CDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2725682CDE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2725682CDE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 17:24:20 +0000 (UTC)
X-CSE-ConnectionGUID: tCixB9I7QW+vqGr1m/A7IQ==
X-CSE-MsgGUID: JmpMUY2tTnKCF+PcqVK7Fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45744131"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45744131"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 10:24:20 -0700
X-CSE-ConnectionGUID: P8KrnZXfSNi1DwmKfeVmlA==
X-CSE-MsgGUID: fSxm7UGlTjWcOa3jFIRnKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128839662"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa010.fm.intel.com with ESMTP; 08 Apr 2025 10:24:19 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue,  8 Apr 2025 19:18:33 +0200
Message-Id: <20250408171836.998073-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744133061; x=1775669061;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/TkdCI6CvZCoKfW3p16k0WxDFHT1vD+zzJY2loP6GhU=;
 b=Q++EhChoiRcil0pXQ7udxarph8Fl4iXZCyL8FOPMoI52SRcP0w2K5YG6
 kBqXpIy8cR2kRUxhjwxhojj82Kke1a6yOwAdaJNTtM412eCchSvuIGRqC
 jwfFsZVvve192jwYlGnk9sUYgFGOqRPWVBc7HoWb2CB2+HzDjsoXFPL0Z
 sGyiPNljRWofyboO2q6zNGmlNZiss7YmXI2Ao+/y6ZTpAVNgAC2cnVkrr
 8EE7tznJ95k90keDF2FwG7GkKy1meuNV1LJdDkpsqHL10vBfgF8W8syeu
 ISc7BlBtBdSxzBR3pE+GchdtrYmglBF2NTHnrlEUpd2YLyCYeODC86967
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q++EhCho
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/3] ice: decouple control of
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
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 925 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h     |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 254 +----
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   3 -
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
 6 files changed, 986 insertions(+), 233 deletions(-)


base-commit: 808e3ee1385480f99a2129156c437fadee01823a
-- 
2.38.1

