Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF726737E0C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CFD1417FA;
	Wed, 21 Jun 2023 09:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CFD1417FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338688;
	bh=VL8TjZfcrEEqS2dNQEaR1V8ilZkPYcS58IRq3hcza9E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0vwUovzmOCpBjm87zjTbSt1zlxVWIxJASN7hvJbHHbU1NMqL16au/59uH18LyU8ok
	 sfEAjzF119k/b8/s3sB2252jy4r4OpSooRUGj8nxhg8VStAg8AsvAXAxc7TNw8lqa4
	 q5Tj5q3tw0suiFm/Mhxt8169RbWg3c0wrb3xoZ4P85jv8V0mJMClq/isQjOj3ThOP7
	 Cg0VYvQyF7Gl/VulloE2Isa2dgrfJXoFrQgLVXmCO0Q1sfLep7YGhqxwo6C1iSZ210
	 fhynnMgZZbGIXJzR91wNrAiKfsHm1vhhB/8BY0oQcw9JuTivJ7XD2avWyY6QCgCuIW
	 U24Js/0eYgdyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KP8VR9OF_aBT; Wed, 21 Jun 2023 09:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D528405BF;
	Wed, 21 Jun 2023 09:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D528405BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D8E881BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA03F405BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA03F405BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x2YZ0BO402It for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08100400B8
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08100400B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613602"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613602"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:20 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570728"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570728"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:17 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:10:57 +0000
Message-Id: <20230621091112.44945-1-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338681; x=1718874681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tsEPWECy0PJeuiFyPYcvjWrBwlkw4ZmbLjnlv8YCdIE=;
 b=DdOjQYbaov6nP/S8YWLrF3BWeaslUYKa5sZfCjylW1UcqXKp20ZK3y6w
 M61RV3YbifEZ8AjtrVXOlNUijVYt1ZdNGDhGbrh+zM+Y+sK0FugGbF+YI
 e5OJPC4p2Jn7o4BZaTsWk4Wdre1I3QvfFP/gRJ84z0SPy89Qn3xXOeWFn
 lp9X4pgMIXrrXE2ujJXm0VJUcl6aPSfq/vlxwxWpina762OauZuVG295X
 oycH78mSr+NNsqWcWNeo9xmhPREiM/0yTLKFXRe8kHxDzmJHyq49VgHC1
 f9kH7kKb47MycqIKNnmU6vlD/zgJweez0i0WEwWci9I4sjSPT90DVb8Vg
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DdOjQYba
Subject: [Intel-wired-lan] [PATCH iwl-next V2 00/15] Add E800 live migration
 driver
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series adds vfio live migration support for Intel E810 VF
devices based on the v2 migration protocol.

v2:
 - clarified comments and commit message
---
Lingyu Liu (11):
  ice: check VF migration status before sending messages to VF
  ice: add migration init field and helper functions
  ice: save VF messages as device state
  ice: save and restore device state
  ice: do not notify VF link state during migration
  ice: change VSI id in virtual channel message after migration
  ice: save and restore RX queue head
  ice: save and restore TX queue head
  ice: stop device before saving device states
  ice: mask VF advanced capabilities if live migration is activated
  vfio/ice: implement vfio_pci driver for E800 devices

Xu Ting (1):
  ice: Fix missing legacy 32byte RXDID in the supported bitmap

Yahui Cao (3):
  ice: add function to get rxq context
  vfio: Expose vfio_device_has_container()
  vfio/ice: support iommufd vfio compat mode

 MAINTAINERS                                   |   7 +
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 268 +++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   5 +
 .../net/ethernet/intel/ice/ice_migration.c    | 778 ++++++++++++++
 .../intel/ice/ice_migration_private.h         |  31 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   8 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 238 +++--
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  15 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  28 +-
 drivers/vfio/group.c                          |   1 +
 drivers/vfio/pci/Kconfig                      |   2 +
 drivers/vfio/pci/Makefile                     |   2 +
 drivers/vfio/pci/ice/Kconfig                  |  10 +
 drivers/vfio/pci/ice/Makefile                 |   4 +
 drivers/vfio/pci/ice/ice_vfio_pci.c           | 998 ++++++++++++++++++
 include/linux/net/intel/ice_migration.h       |  53 +
 include/linux/vfio.h                          |   1 +
 20 files changed, 2347 insertions(+), 111 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_migration_private.h
 create mode 100644 drivers/vfio/pci/ice/Kconfig
 create mode 100644 drivers/vfio/pci/ice/Makefile
 create mode 100644 drivers/vfio/pci/ice/ice_vfio_pci.c
 create mode 100644 include/linux/net/intel/ice_migration.h

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
