Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 469C1425FB5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 00:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C50AC607E8;
	Thu,  7 Oct 2021 22:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fJCRAUiAg97g; Thu,  7 Oct 2021 22:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C356960754;
	Thu,  7 Oct 2021 22:16:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E9961BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08DD640A0A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eG8EjCoh7gdB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 22:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46FA24068C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 22:16:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289878253"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="289878253"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:16:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="590327166"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2021 15:16:15 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Oct 2021 15:01:20 -0700
Message-Id: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/7] Remove enum ice_status
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the use of ice_status from the driver. This begins with
refactoring of DDP package download. Package download relies on a
variety of variables to determine its state, including ice_status.
Rework DDP download functions to determine and communicate this state.
These states are DDP specific and only to be used by the package
download functions.

Patches 2-4 are mainly scripted removals and conversions of ice_status
values and helper functions which are followed up by code cleanups as a
result of these changes.

Tony Nguyen (6):
  ice: Remove string printing for ice_status
  ice: Use int for ice_status
  ice: Remove enum ice_status
  ice: Cleanup after ice_status removal
  ice: Remove excess error variables
  ice: Propagate error codes

Wojciech Drewek (1):
  ice: Refactor status flow for DDP load

 drivers/net/ethernet/intel/ice/ice.h          |   1 -
 drivers/net/ethernet/intel/ice/ice_base.c     |  22 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 408 ++++++------
 drivers/net/ethernet/intel/ice/ice_common.h   | 102 +--
 drivers/net/ethernet/intel/ice/ice_controlq.c | 118 ++--
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  91 ++-
 drivers/net/ethernet/intel/ice/ice_dcb.h      |  26 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  68 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 143 ++--
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  44 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  18 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  10 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 617 ++++++++++--------
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  78 ++-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 158 +++--
 drivers/net/ethernet/intel/ice/ice_flow.h     |  20 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  89 ++-
 drivers/net/ethernet/intel/ice/ice_fltr.h     |  34 +-
 .../net/ethernet/intel/ice/ice_fw_update.c    |  56 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     |  30 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 229 +++----
 drivers/net/ethernet/intel/ice/ice_lib.h      |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 532 ++++++---------
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 136 ++--
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  32 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  10 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  13 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   3 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    | 394 +++++------
 drivers/net/ethernet/intel/ice/ice_sched.h    |  36 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  40 +-
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  12 +-
 drivers/net/ethernet/intel/ice/ice_status.h   |  44 --
 drivers/net/ethernet/intel/ice/ice_switch.c   | 448 +++++++------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  56 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  12 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   3 -
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  24 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 126 ++--
 40 files changed, 2034 insertions(+), 2256 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_status.h

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
