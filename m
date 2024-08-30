Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5A96601F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 13:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E10D584133;
	Fri, 30 Aug 2024 11:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C7jHRzfhfYng; Fri, 30 Aug 2024 11:10:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8C5881F2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725016243;
	bh=s/ZbfdM1eeBVLj16GvgdJ6VEnoTaaM6pi7ixjEuummo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yr3u3AyYFrgfgJDWvp+UhNDkR1CE3T+gFYDCgHQflpDMdIpd6YJ9oNXS6mOiBsNsY
	 limSy46/R0Ttqfnc/+cKMBwNrgn7jmXiDR/K6EO391UMG82kkCAFLUSnuZDOqKE3TD
	 3evVnoAtdxIk/p8tglyxd3jyW2PbkwqDShG2ukwqZoeWBP7hdYca0qnXJIpgnvCuy3
	 b2CNgj8jFvTNuo3+FKyQklwAuwnNVOymw7zIKr636HuSpERZzh47FxfG0Q1mGT7dBq
	 CFe4jcQCalZzIQdwwY6J/ME5fT5Q887PSAc59AGPbeJonJv5/y7F1IudvlIL2pzgTO
	 CrKmToQXa4XLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8C5881F2B;
	Fri, 30 Aug 2024 11:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A60061BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 911A942430
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FuxpoUOdyo5t for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 11:10:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96A0F41A6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96A0F41A6E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96A0F41A6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 11:10:38 +0000 (UTC)
X-CSE-ConnectionGUID: WTe4n/k1SoWSpEEof2vGww==
X-CSE-MsgGUID: SxJHK40oRZ2mbii8iTDySA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23517576"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23517576"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 04:10:38 -0700
X-CSE-ConnectionGUID: pmX8JsBGSqWguzqqBl0FiA==
X-CSE-MsgGUID: uZLl58ThTGafKERSAWojDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68273553"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 30 Aug 2024 04:10:36 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Aug 2024 13:07:16 +0200
Message-ID: <20240830111028.1112040-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725016240; x=1756552240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NtTOOuyHAWtbaPGb4uJuSSxIBMIlghCEwU/dKFHFg6w=;
 b=fLu/vNOaxcCKomB/a/JG2KP5oLKaOsI6Cv38OnkWaEryTYWt8cvnQ0mm
 8wPA6gREZ0mgRG+8kfpctm/XT15FvG5UwAsnJaVAFdQwORvKwEQS8KfVs
 V2XUQXzg/LXaHGPXBLblEsIxMPzmaizoMeTM8fHFD2PnK3vLr7/EC0Lna
 Jcs7gl7aRQQNrUxZbPAJ6Wp8DgtCernH2pLEWmyTQes1oOXWa639KHQwc
 j6Y+WIcdRHnXAqHPRQPm7KwxbldQKNbDIYZcD/NrvnouB/oIpZy6EnSIB
 zaRyBs1pqgHQESTHBroFrHKusggNmktm/yHYpuWpIfq74g4s5naV94IP1
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fLu/vNOa
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 0/7] ice: Cleanup and refactor
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
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 1121 +++++++++--------
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  119 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |    2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  103 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   72 +-
 7 files changed, 784 insertions(+), 646 deletions(-)

V3 -> V4: rebased patchset and replaced uints with unsigned ints
V2 -> V3: swapped in/out pin numbers in all patches introducing them
V1 -> V2: fixed formatting issues for:
          - ice: Implement ice_ptp_pin_desc
          - ice: Add SDPs support for E825C
          - ice: Align E810T GPIO to other products
          - ice: Cache perout/extts requests and check flags
          - ice: Disable shared pin on E810 on setfunc
          - ice: Enable 1PPS out from CGU for E825C products

base-commit: 05b5f6e89970647ddaaca100f545ef6e1f7989f8
-- 
2.46.0

