Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A78923C40
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 13:18:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E264941678;
	Tue,  2 Jul 2024 11:18:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TGxsOBEEeEap; Tue,  2 Jul 2024 11:18:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 375EF40010
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719919108;
	bh=sayoHu3lQPgjCcln/en+thRL82n04XBE6nW3x1YOKu0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NCgoe7GWevPPHQ6ubxviPogv6s5VEpldq8vy4D/ZUjVzcitDdG/hjQxFIh01BYy3u
	 IZPnNpdAwgDiNP2CHA2t44CtCVhEIM7SADDeX4IcQReb2B8tEaRx04NrVtfGasq30p
	 5nvvqHq0CA8sWyKSdWATjfg9Cj495tSg7njbaovjoLAr9OuYIRmD4QF+pb3u16B6Ou
	 fRzAzOGblvrWQsXRKppN0TP0vPLJxKcfhJJlKBRq2Z8HOzTMpUU/wTEjbc188koCYW
	 36Vj5RvOFhLsLXggN6YD50dEksxeEHzZSqrTA2PcQPIRivCV3UUrVXPzI2ITY6H2Qn
	 hpt1IAEw3tdtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 375EF40010;
	Tue,  2 Jul 2024 11:18:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70F691BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E3BB60B63
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cx_G8enYi-Kk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 11:18:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB35460B46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB35460B46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB35460B46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:18:25 +0000 (UTC)
X-CSE-ConnectionGUID: tCz2DSHWQoGB7ls6tqWR+w==
X-CSE-MsgGUID: Ua8vthUySoqh9uJ+DySKrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28482081"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="28482081"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 04:18:25 -0700
X-CSE-ConnectionGUID: ZiiKdZQ2QM6vkEVFdLAKFg==
X-CSE-MsgGUID: jqF5gOhST5W7gunqXsnXrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46006195"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2024 04:18:23 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 13:13:18 +0200
Message-ID: <20240702111807.87802-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719919106; x=1751455106;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3n5NEBZLdFEteR11qjJ/4y7R0o7wx6C2YeZBWutLvQ4=;
 b=KRqA4W+2w7sT2opmA/tAXiM/W858ZkF2jhc2iKr6l1POwcs+LLSauPO6
 xqA4/d8T4MIaOlDjm0DaPw2eVlreiy/H5AouMimAactm0hsWRq7lUOFmd
 1fy8tSug0Jqgtfl0ZxJre6AjnWVo5yzqXFwnDTQvhEgDaVujAntsF6Z//
 PdcBx72yQtCrRDPd58tSVhGthRxlohPpMAWgFidsQYXgTJb8fUPS9th4S
 ZDLAvWV9EkIDllOAa9bpWZlAPgMtlTwfT+Qoa11HNakwmna9EznDIRIgI
 eggAq82yMMNiKiiir3Bn7VOMwWdeY3iMCa9HqQctF1fqhNa2dWCDRBe0H
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KRqA4W+2
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 0/3] ice: Fix incorrect
 input/output pin behavior
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

This patch series fixes incorrect external timestamps handling, which
may result in kernel crashes or not requested extts/perout behavior.

Jacob Keller (2):
  ice: Don't process extts if PTP is disabled
  ice: Reject pin requests with unsupported flags

Milena Olech (1):
  ice: Fix improper extts handling

 drivers/net/ethernet/intel/ice/ice_ptp.c | 131 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h |   9 ++
 2 files changed, 110 insertions(+), 30 deletions(-)

V2 -> V3: Adjusted formatting in "ice: Fix improper extts handling" and
          reworded commit message
V1 -> V2: Fixed typos and other formatting issues in all patches

base-commit: 0a8975e20f25bb2f5edb28d883dc715802231e71
-- 
2.45.2

