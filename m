Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 467103EEB8F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 13:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F234836C3;
	Tue, 17 Aug 2021 11:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4aOEs-gki9Nw; Tue, 17 Aug 2021 11:24:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8923780ABD;
	Tue, 17 Aug 2021 11:24:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49B4B1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37FDD836C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4za7aT8W2HT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 11:24:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FB0E83696
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="279788787"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="279788787"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 04:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="531010219"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2021 04:24:47 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Aug 2021 13:09:14 +0200
Message-Id: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-next 0/4] Add support for E810-T
 PTP pins
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend the driver implementation to support PTP pins on E810-T and
derivative devices.

E810-T adapters are equipped with:
- 2 external bidirectional SMA connectors
- 1 internal TX U.FL shared with SMA1
- 1 internal RX U.FL shared with SMA2

The SMA and U.FL configuration is controlled by the external
multiplexer.

E810-T Derivatives are equipped with:
- 2 1PPS outputs on SDP20 and SDP22
- 2 1PPS inputs on SDP21 and SDP23

v2:
* Fix code style errors
* Change pca9575_handle type returned by ice_get_pca9575_handle to u16

Maciej Machnikowski (4):
  ice: Refactor ice_aqc_link_topo_addr
  ice: Implement functions for reading and setting GPIO pins
  ice: Add support for SMA control multiplexer
  ice: Implement support for SMA and U.FL on E810-T

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  87 +++-
 drivers/net/ethernet/intel/ice/ice_common.h   |   7 +
 drivers/net/ethernet/intel/ice/ice_devids.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  15 +
 drivers/net/ethernet/intel/ice/ice_lib.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 374 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  21 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 156 ++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  22 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 12 files changed, 693 insertions(+), 14 deletions(-)

-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
