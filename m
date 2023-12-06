Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E298063D7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:01:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97DBB61430;
	Wed,  6 Dec 2023 01:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97DBB61430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824510;
	bh=jegcw9Oml/T1LwAKn4sMTSI1kbZqgu8W6OuoE9T9DjE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2Uv7lspRuau6KgaXOep0TP1Os2dnHX6QwFOqAstC2w8pl1GqBHIF9HMoc4/MSkw+Z
	 oCKA5LlCB2Uyx50T74drrSjHj2W5r4T6TRZkx89/p6Z7mbH03BDWpwsP9sttQQwDnU
	 V3lafKTGVjJ6XHYyISPzz6n7dfAgEOYkBL3wcLCUp71Z3wnCG8EGUyrjrZI6q9krPy
	 k9ilmOZHi5XOUE3T5Umbc6j4PDjw3YHQ6C0kbIiKzadkHRYq6uncekVU0yWR6JavSI
	 YP0MUJWPZfDIOFu5UZehO2DHCQc3RUghOFqnAY55032tmRfbiveBG85juVjDaacd4M
	 fWEW7gf5cMRDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IMBg8QmqY2_f; Wed,  6 Dec 2023 01:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DE4261182;
	Wed,  6 Dec 2023 01:01:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DE4261182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 580E11BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 799AD41BC3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 799AD41BC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qdk3u6jbR9GX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 375FE41714
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 375FE41714
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700271"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700271"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655222"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655222"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:31 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:00:59 -0800
Message-Id: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824494; x=1733360494;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fSnTxwXLOBRZesBJYhidvES+57lor34uzQNYXqvOaME=;
 b=GV/ORXY2Z1CUJ09uQ2Xurjiae7lL3vAkg6HTvvgCn9+BOGPkaoeriy1P
 Nwkjj2yhdNyjlQNG8LbMZHpc0PA2xvcIfptvIWW4S4IghVq/MmnZtfXFu
 YUCbTwuw5WxGJyjd04Yy2KSvOaHfyAQ4fZ+IgNR2jMglVDLxCuULGJ2Ib
 Gv8a89b2J2lKyl2g2pMlBku0GfP1ZR46KXO2hiPFtOlIoNQ+geLxTjLV0
 21Jkk20iLJji92NGRy7UOxYxaKaW2VzCvY+J3qCW1l+9Xc5XEtslSUAOb
 Po52U/2yljTtLOIMTEKSMzdfIPOL0RRPg4bn72zSr8LwmXLenk69pgHsX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GV/ORXY2
Subject: [Intel-wired-lan] [PATCH iwl-next v2 00/15] intel: use bitfield
 operations
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com, horms@kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After repeatedly getting review comments on new patches, and sporadic
patches to fix parts of our drivers, we should just convert the Intel code
to use FIELD_PREP() and FIELD_GET().  It's then "common" in the code and
hopefully future change-sets will see the context and do-the-right-thing.

In v2 there were a few conversions to use leXX_{get,set,encode}_bits() where
possible.

This conversion was done with a coccinelle script which is mentioned in the
commit messages. Generally there were only a couple conversions that were
"undone" after the automatic changes because they tried to convert a
non-contiguous mask.

Patch 1 is required at the beginning of this series to fix a "forever"
issue in the e1000e driver that fails the compilation test after conversion
because the shift / mask was out of range.

The second patch just adds all the new #includes in one go.

The patch titled: "ice: fix pre-shifted bit usage" is needed to allow the
use of the FIELD_* macros and fix up the unexpected "shifts included"
defines found while creating this series.

The rest are the conversion to use FIELD_PREP()/FIELD_GET(), and the
occasional leXX_{get,set,encode}_bits() call, as suggested by Alex.

CC: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: add some conversions to the ice patch, add the idpf patch, respond to
comments from reviewers, resulting in more le*_bits usage (Olek), add more
reviewed-bys, see each individual patch for details. changed title of
0/0
v1: original

Jesse Brandeburg (15):
  e1000e: make lost bits explicit
  intel: add bit macro includes where needed
  intel: legacy: field prep conversion
  i40e: field prep conversion
  iavf: field prep conversion
  ice: field prep conversion
  ice: fix pre-shifted bit usage
  igc: field prep conversion
  intel: legacy: field get conversion
  igc: field get conversion
  i40e: field get conversion
  iavf: field get conversion
  ice: field get conversion
  ice: cleanup inconsistent code
  idpf: refactor some missing field get/prep conversions

 drivers/net/ethernet/intel/e1000/e1000_hw.c   |  46 ++-
 .../net/ethernet/intel/e1000e/80003es2lan.c   |  23 +-
 drivers/net/ethernet/intel/e1000e/82571.c     |   3 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c   |   7 +-
 drivers/net/ethernet/intel/e1000e/ich8lan.c   |  18 +-
 drivers/net/ethernet/intel/e1000e/mac.c       |   8 +-
 drivers/net/ethernet/intel/e1000e/netdev.c    |  11 +-
 drivers/net/ethernet/intel/e1000e/phy.c       |  24 +-
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c   |   7 +-
 drivers/net/ethernet/intel/fm10k/fm10k_vf.c   |  10 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 140 ++++-----
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    | 276 +++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   7 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  85 +++---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  14 +-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  70 ++---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  29 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c |  34 +--
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   8 +-
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  21 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  18 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |  32 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  60 ++--
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  79 ++---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   4 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   3 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  69 ++---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   8 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  64 ++--
 drivers/net/ethernet/intel/ice/ice_main.c     |  48 ++-
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  15 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  13 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |   3 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  41 +--
 drivers/net/ethernet/intel/ice/ice_switch.c   |  75 +++--
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  14 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  15 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  41 +--
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   7 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  58 ++--
 drivers/net/ethernet/intel/igb/e1000_82575.c  |  29 +-
 drivers/net/ethernet/intel/igb/e1000_i210.c   |  19 +-
 drivers/net/ethernet/intel/igb/e1000_mac.c    |   7 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c    |  18 +-
 drivers/net/ethernet/intel/igb/e1000_phy.c    |  17 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  11 +-
 drivers/net/ethernet/intel/igb/igb_main.c     |  13 +-
 drivers/net/ethernet/intel/igbvf/mbx.c        |   1 +
 drivers/net/ethernet/intel/igbvf/netdev.c     |  33 +--
 drivers/net/ethernet/intel/igc/igc_base.c     |   6 +-
 drivers/net/ethernet/intel/igc/igc_i225.c     |   6 +-
 drivers/net/ethernet/intel/igc/igc_main.c     |  10 +-
 drivers/net/ethernet/intel/igc/igc_phy.c      |   5 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |   2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  30 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |   4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |   8 +-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   8 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   8 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |  19 +-
 include/linux/avf/virtchnl.h                  |   1 +
 72 files changed, 758 insertions(+), 1043 deletions(-)


base-commit: 1409f235a4577f79409f89911f63b680b3341ba5
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
