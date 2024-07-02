Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F4B923F49
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 15:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4322A819F8;
	Tue,  2 Jul 2024 13:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6QLv3IO7heF; Tue,  2 Jul 2024 13:45:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 796BC817D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719927900;
	bh=kThyrsgVvmnPT6wa3nXROvXXI2ZJx4Aagi5dU9koYq4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FKCiD/znLKLpTuxPg2C8bfn8poFwouVr4g6vZGCpuwxQPmm99oFTdpv9dT/wyoPOh
	 ewMsMpqyOgK2KFZdqjDmLoqJfaK3uiNo5vGVF7RdIJg3nI0JSH9PIqh8xhIDEbOvcb
	 r9mOMIHo4oXRGi883rZw/h46NiRku9ciUXgRqfqjVOPlBLEpaWFLtIieQGL6h+0Ocl
	 EgUXioqVxcZ3MH9iOpQ/fjG3RuJn1TBMVLA1O+iXKNQIjtvWYqk25dGoH7MtRr3xhF
	 Z3CuLdgAfwgS0n5Dv4FBMaVxL3wQT7kIaJVFcElCCmjmgduwqtL2jnFqOLAoCdPVd9
	 SeIVWDjsGtEzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 796BC817D3;
	Tue,  2 Jul 2024 13:45:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDE9E1BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5B09410E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:44:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 03IPM-7Z0sb3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 13:44:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DBCB1410D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBCB1410D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DBCB1410D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 13:44:57 +0000 (UTC)
X-CSE-ConnectionGUID: JjFJ1vKBSo6AiyVCTSnS7w==
X-CSE-MsgGUID: aEhyqIpEQ+2ig4HnKvGmjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="16826398"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16826398"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 06:44:57 -0700
X-CSE-ConnectionGUID: 8sa5tS7OTkypD3T1vOjt2A==
X-CSE-MsgGUID: iAtLnuk5SlmKYxqn6500Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="83460492"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa001.jf.intel.com with ESMTP; 02 Jul 2024 06:44:56 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 15:41:29 +0200
Message-ID: <20240702134448.132374-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719927898; x=1751463898;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2gpnR2gAVTCUgMbD2zpjQMoFCN1JPTv8HiXHTi269wY=;
 b=LILiKqskldYnuK/7M/nWJNQPLJPeW/3WUYUoJw8dBfQ118atozLh86qi
 Jmlbsktz2oanWlQJAcvBLJ+Z9qV8VMR1ztqf1ksTDaUQhj/kn1NmMkxqY
 ThUautt/BjmGkUQSnhQ/fttKRyx9J6z3DpA4/BSJo6pXzSz443+l2BHsR
 vrojfDDulVqd547+48QyyicREwu+PZXN7pbN+sXelQfHWtugTOB9QMjsu
 cxMhbGkSC0cbxOZnP+YHUFSjHWrFeBUcJ87/KJm3DVMKLIcviWz4bRKuq
 I26LGrwTNYiIu7ceZXakBuIFBhEIpy8Qa4fwwVyGBGnPoLpheBsqBJKN/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LILiKqsk
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/7] ice: Cleanup and refactor
 PTP pin handling
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
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series cleans up current PTP GPIO pin handling, fixes minor bugs,
refactors implementation for all products, introduces SDP (Software
Definable Pins) for E825C and implements reading SDP section from NVM
for E810 products.

Karol Kolacinski (5):
  ice: Implement ice_ptp_pin_desc
  ice: Add SDPs support for E825C
  ice: Align E810T GPIO to other products
  ice: Cache perout/extts requests and check flags
  ice: Disable shared pin on E810 on setfunc

Sergey Temerkhanov (1):
  ice: Enable 1PPS out from CGU for E825C products

Yochai Hagvi (1):
  ice: Read SDP section from NVM for pin definitions

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    9 +
 drivers/net/ethernet/intel/ice/ice_gnss.c     |    4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 1129 +++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  119 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |    2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  103 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   72 +-
 7 files changed, 799 insertions(+), 639 deletions(-)

V1 -> V2: fixed formatting issues for:
          - ice: Implement ice_ptp_pin_desc
          - ice: Add SDPs support for E825C
          - ice: Align E810T GPIO to other products
          - ice: Cache perout/extts requests and check flags
          - ice: Disable shared pin on E810 on setfunc
          - ice: Enable 1PPS out from CGU for E825C products

base-commit: e3b49a7f2d9eded4f7fa4d4a5c803986d747e192
-- 
2.45.2

