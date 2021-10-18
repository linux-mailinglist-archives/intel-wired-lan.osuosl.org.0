Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38766432A37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 01:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D5DE60AD1;
	Mon, 18 Oct 2021 23:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jhuBfHfFwDOU; Mon, 18 Oct 2021 23:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A7F60A3D;
	Mon, 18 Oct 2021 23:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA161BF400
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 23:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D4DD4066B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 23:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HuVNTywaXefF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 23:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DEFA4066A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 23:16:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228655712"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="228655712"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 16:16:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="629385981"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.209.135.88])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 16:16:11 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Oct 2021 18:16:00 -0500
Message-Id: <20211018231603.1690-1-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 0/3] Configure iWARP or RoCEv2 protocol
 support for E800 devices
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently E800 devices come up as RoCEv2 devices by default.

This series add supports for users to configure iWARP or RoCEv2 functionality
per PCI function. devlink parameters is used to realize this and is keyed
off similar work in [1].

[1] https://lore.kernel.org/linux-rdma/20210810132424.9129-1-parav@nvidia.com/

Shiraz Saleem (3):
  devlink: Add 'enable_iwarp' generic device param
  net/ice: Add support for enable_iwarp and enable_roce devlink param
  RDMA/irdma: Set protocol based on PF rdma_mode flag

 .../networking/devlink/devlink-params.rst          |   3 +
 drivers/infiniband/hw/irdma/main.c                 |   3 +-
 drivers/net/ethernet/intel/ice/ice.h               |   1 +
 drivers/net/ethernet/intel/ice/ice_devlink.c       | 144 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h       |   6 +
 drivers/net/ethernet/intel/ice/ice_idc.c           |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c          |   9 +-
 include/linux/net/intel/iidc.h                     |   7 +-
 include/net/devlink.h                              |   4 +
 net/core/devlink.c                                 |   5 +
 10 files changed, 180 insertions(+), 6 deletions(-)

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
