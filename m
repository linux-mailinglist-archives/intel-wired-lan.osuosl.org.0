Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1653F23FC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 02:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6019C60B53;
	Fri, 20 Aug 2021 00:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 44-qksQ5UD3B; Fri, 20 Aug 2021 00:05:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A70A607A1;
	Fri, 20 Aug 2021 00:05:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 870A51BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7539C60B4E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id md7pfA4Huj41 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 00:05:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B48C260775
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 00:05:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="280413571"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="280413571"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 17:05:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="512317445"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2021 17:05:28 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 17:08:47 -0700
Message-Id: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 00/12] Add switchdev driver model
 for ice driver
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

The following patch series introduces basic switchdev model
support in ice driver. Implement the following blocks of
switchdev framework:
- VF port representors creation
- control plane VSI definition 
- exception path (a. k. a. "slow-path") - to allow a virtual
switch or linux bridge to receive any packet that doesn't match
any hw filter
- link state management of virtual ports
- query virtual port statistics

Hardware offload support in switchdev mode is out of scope of
this patchset. Devlink interface is used to toggle between
switchdev and legacy (the default) modes of the driver.

Changelog:
 v4:
  * Squash in the following patches:
    ice: change devlink port number for pf
    ice: Fix crash in switchdev mode during VFR
    ice: disable VLAN stripping on control VSI
    ice: fix ethtool set channel when in switchdev mode
    ice: handle MAC delete command on PR
    ice: remove msleep from reading PR stats
 v3:
  * add more info to Kconfig ICE_SWITCHDEV flag
  * correct spealing  
 v2:
  * fix build issue in ice: set and release switchdev environment
  by moving call of ice_vsi_setup to next patch which have definition
  of switchdev VSI

Grzegorz Nitka (5):
  ice: set and release switchdev environment
  ice: introduce new type of VSI for switchdev
  ice: enable/disable switchdev when managing VFs
  ice: rebuild switchdev when resetting all VFs
  ice: switchdev slow path

Michal Swiatkowski (5):
  ice: support basic E-Switch mode control
  ice: introduce VF port representor
  ice: allow process VF opcodes in different ways
  ice: manage VSI antispoof and destination override
  ice: allow changing lan_en and lb_en on dflt rules

Wojciech Drewek (2):
  ice: Move devlink port to PF/VF struct
  ice: add port representor ethtool ops and stats

 drivers/net/ethernet/intel/Kconfig            |  14 +
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  48 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |  37 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   5 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 109 ++-
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   6 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 658 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  82 +++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  55 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  80 +++
 drivers/net/ethernet/intel/ice/ice_fltr.h     |   7 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  43 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      | 112 ++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |  11 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  47 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 333 +++++++++
 drivers/net/ethernet/intel/ice/ice_repr.h     |  27 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   3 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   4 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 237 ++++++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  58 ++
 25 files changed, 1895 insertions(+), 94 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_repr.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_repr.h

-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
