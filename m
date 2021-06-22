Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3A43B1307
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 06:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E499607AF;
	Wed, 23 Jun 2021 04:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qpZBsD3_wj8L; Wed, 23 Jun 2021 04:55:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4458460670;
	Wed, 23 Jun 2021 04:55:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D5111BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56581606FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9yOBgrvN-N_V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 04:55:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6619A60670
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 04:55:37 +0000 (UTC)
IronPort-SDR: nOj3VHMX8SmZhI5hldlOf5pprtTon6U224MKkylELHqWuMVDZOosqWE3A4TWiFU3bDRTKRs/1F
 Uk6NOyPrOEsA==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="204185970"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="204185970"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 21:55:34 -0700
IronPort-SDR: GQC1KYt4jTHGc1wVHRLmJjNbgLhincMaTLtZVvfMsVGksCtkQ3iJQq27Uz5V6BoJhbDIwWS1bH
 XlFJpq5yQrqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="490547833"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2021 21:55:33 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jun 2021 23:21:23 +0200
Message-Id: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 00/12] Add switchdev driver
 model for ice driver
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
 v2:
  * fix build issue in ice: setting and releasing switchdev environment
  by moving call of ice_vsi_setup to next patch which have definition
  for switchdev VSI

Grzegorz Nitka (5):
  ice: setting and releasing switchdev environment
  ice: introduce new type of VSI for switchdev
  ice: enable/disable switchdev when managing VFs
  ice: rebuild switchdev when resetting all VFs
  ice: switchdev slow path

Michal Swiatkowski (5):
  ice: basic support for eswitch mode management
  ice: introduce VF port representor
  ice: allow process vf opcodes in different ways
  ice: manage VSI antispoof and destination override
  ice: allow changing lan_en and lb_en on dflt rules

Wojciech Drewek (2):
  ice: Move devlink port to PF/VF struct
  ice: add port representor ethtool ops and stats

 drivers/net/ethernet/intel/Kconfig            |  10 +
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  48 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |  37 +-
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 109 ++-
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   6 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 656 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  82 +++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  32 +-
 drivers/net/ethernet/intel/ice/ice_fltr.c     |  80 +++
 drivers/net/ethernet/intel/ice/ice_fltr.h     |   7 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  43 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      | 112 ++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |  11 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  47 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 329 +++++++++
 drivers/net/ethernet/intel/ice/ice_repr.h     |  27 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   2 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   3 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   4 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 196 +++++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  45 ++
 24 files changed, 1817 insertions(+), 80 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_repr.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_repr.h

-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
