Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9AB88C946
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:31:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44D78404F9;
	Tue, 26 Mar 2024 16:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2IPLjaZkKEmF; Tue, 26 Mar 2024 16:31:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7502140484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711470669;
	bh=qJApAC9b6Wq/IrXDOMyx1U5u8HRT3Eo1lNuSWDTEvUg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nd/g/VjhuFlktuInFzJlEGToAtXyQ8q7DpMCHgP6rjhrj6oSgoUAV/3Rsg4iUUsPE
	 8cTV7l9LiVK3YcsdZE4SuqCKoup0sOtkgYSeQsvE/8UHTo8Hk3Ro0NWDlTlryj7afs
	 QbVlXcoHPhkNAKuhPGiC5nFdaDA0t4h5Ry08rBWEncfZOeTws0E1F1KWDXIk9oUL5b
	 b8bnGWx0bG+vHhc8jz7TD2U3hk/gG3m7ktVSi06dKBX7NEWaNRODIbqjJesfUWCKCL
	 Qx4XbRiagL83vvNmW5Hc3YzCI4MyMjTDOTxk6rNwlPTW5tvMrP74gaQs9lIALHYan8
	 zRnYlrfqBBRCA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7502140484;
	Tue, 26 Mar 2024 16:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70D4D1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D13740582
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tyzw6Y58LEEI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:31:05 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Mar 2024 16:31:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6DBA340571
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DBA340571
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DBA340571
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:31:04 +0000 (UTC)
X-CSE-ConnectionGUID: rxq8UsLpRFGbnxaw6dLgqQ==
X-CSE-MsgGUID: 4IYzMsNXR/GnyFka08DwCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6724998"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6724998"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20729255"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa005.jf.intel.com with ESMTP; 26 Mar 2024 09:23:57 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 17:22:21 +0100
Message-ID: <20240326162339.146053-14-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711470665; x=1743006665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U1buKvqbmRCkX1AdoER2EVMvAHaVnEkSvTcQPvCWgnI=;
 b=iV3OteOwWRtEEqz3HtyQHt6A79nImG0WwdzjLcvKqCgOJmli3+I4pOKb
 /L7qJOWB5QvOMhZnSV+3aT4vMWbCajpY4rmBFTpo6WtoOCq+z5Vnsb70v
 hNh91y/gmTpsKPHwZqESkhh/qYsaRg1voKwV2Xg/LHzkPgQPX+jll2fol
 gSP+ox+ON5pUFVJCt5F3TjJUjXdVBCfMdiKD6X4aeMHI0iOG7rnwv3n1u
 vWzY+/wo+UYXv2gGhWKGeQkvkdK6acdR81SqnazeitSueR0u6tJ/ubfH2
 1ebcstaQefei7N37e+eNtHCiZSTpYi7NM/2lpvn7Nv1s2BAK4X3gryqal
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iV3OteOw
Subject: [Intel-wired-lan] [PATCH iwl-next 00/12] Introduce ETH56G PHY model
 for E825C products
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
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 3652 +++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  284 +-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   60 +-
 13 files changed, 3905 insertions(+), 932 deletions(-)


base-commit: 51e66116babc46cc4d5157d76f86d3accce53aae
-- 
2.43.0

