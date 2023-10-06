Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C37BB5E1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:05:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60BD841BBD;
	Fri,  6 Oct 2023 11:05:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60BD841BBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696590340;
	bh=mbE4F13gxCKaEF8AK7b2sDNbfD6i6576qEmt/zi3vsg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0yEEwNFoE/7XR4eiXmUYd4+OV9FMQy/A2uT04qEXYcXgbIsb/C+dgITt1zU8iID/P
	 WV1wuzomBvnA1Wrd2CGJnozlEYvc8dxqz0ewT/uYWxTa0xTiJKSCNyfBKxbqrt4CD7
	 alHv/oizPcMApdAQPYCx4tNqHA9/FoPmaq3I7cSgnknHB5ZiZbNfRu28ZlPsxoCBUM
	 2AJTjGjeRBSdlBUDsXrV0zx0eUWVIh+EMeohxboJ/Zj/xskBmK2of517xQcEB9aFPg
	 urohh2HTGh0CNsKM07PO3/KmOLVb0/Q9/WVNY/GhLg2ZWEGnGE/J2lWdetrLwbPyk8
	 yOW2wvGeoWJrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KRAphghTu-_B; Fri,  6 Oct 2023 11:05:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 153CF41A32;
	Fri,  6 Oct 2023 11:05:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 153CF41A32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E654F1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE882416FB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE882416FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TyYbuCpbr0el for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:05:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2DF341582
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:05:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2DF341582
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="450222384"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="450222384"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:05:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="1083413843"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="1083413843"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 06 Oct 2023 04:05:28 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 24E1636345;
 Fri,  6 Oct 2023 12:05:28 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Oct 2023 07:02:07 -0400
Message-Id: <20231006110212.96305-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696590331; x=1728126331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ND8R416ORbdhl7YpEgoz187sjPvI4B1VXPgdbfANzXo=;
 b=IaZH5xAZRji6nXWUSECjpSqPxWBxwvniMXYTto3G92k4NuuOSV01FhEC
 BaDOHbGBWe1z8A/wgjTfbZj3t0eQ0Cbwp8EmRh+iUTc1IZtEGV8ygF/+J
 tbwh06FMWVe2/02+ROMcyaYZ0js9clOc2E9kXNP084yo1mlcuKseRhDqM
 u7/1ooeXBqg++aZFueXhgTkz7rEe9WDszG+HIeTHJD6E/oz1qE8U1D5mG
 mhFW6ZDr7oliKEO/b08KpakOYJoUlWtc5/2XK5PS6T4H+DkgFMmRS6QNL
 NbQ8tXC51jlp1H0XmELs3mXKwn9z6eRa5tHIFWzvc599fJ0OeGFElIndB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IaZH5xAZ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: Support 5 layer Tx
 scheduler topology
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For performance reasons there is a need to have support for selectable
Tx scheduler topology. Currently firmware supports only the default
9-layer and 5-layer topology. This patch series enables switch from
default to 5-layer topology, if user decides to opt-in.

---
v2:
- updated documentation
- reorder of variables list (default-init first)
- comments changed to be more descriptive
- added elseif's instead of few if's
- returned error when ice_request_fw fails
- ice_cfg_tx_topo() changed to take const u8 as parameter (get rid of copy
  buffer)
- renamed all "balance" occurences to the new one
- prevent fail of ice_aq_read_nvm() function
- unified variables names (int err instead of int status in few
  functions)
- some smaller fixes, typo fixes

v1: https://lore.kernel.org/netdev/20230523174008.3585300-1-anthony.l.nguyen@intel.com/
---

Lukasz Czapnik (1):
  ice: Add tx_scheduling_layers devlink param

Michal Wilczynski (2):
  ice: Enable switching default Tx scheduler topology
  ice: Document tx_scheduling_layers parameter

Raj Victor (2):
  ice: Support 5 layer topology
  ice: Adjust the VSI/Aggregator layers

 Documentation/networking/devlink/ice.rst      |  50 +++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  32 +++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 199 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   7 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 174 ++++++++++++++-
 .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
 .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  97 +++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_sched.c    |  37 ++--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 14 files changed, 575 insertions(+), 45 deletions(-)

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
