Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C69736893
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7701410A6;
	Tue, 20 Jun 2023 10:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7701410A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255237;
	bh=CRyJu24il+IUPIGuTzefy90fX1q88ANcwKwy5D6NbUg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BVj44nE8g5IUBlpPMxvCjZ3ttXHrlKz7oqBdfRavaVNaqYcbNhMEj3JMT/51nauq0
	 xdH2PFu9A77HqZdbcA2dLXVLVXVPYVZ8TT3vErDH3ErXeS3IgRXnNzbhpXww26ry8r
	 J899UhRZ5Cc9L2hNhW7xMwDlA4IJJoUPNYB10/NUG8OicsyplDDwo86ibcfOZvdSsd
	 H22SfLBXJkhDC02yYWPt+5c5n5ejg4Gr8P1N03B2U9exbXpH5zWCitH3yMtT78dNwi
	 a5ogMy0+5d0g2jSAgiDRZmutUx4UvUX4mVaUhDrqU+H7OHm67jmzunS3ZP7ag/yD3I
	 4w7Hb2OKyek8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFgAUCZMpenv; Tue, 20 Jun 2023 10:00:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF20C418BB;
	Tue, 20 Jun 2023 10:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF20C418BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D785F1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0073404BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0073404BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29kRlYdU3z-c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA2B1400C1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA2B1400C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688167"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688167"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664226826"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664226826"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:15 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:46 +0000
Message-Id: <20230620100001.5331-1-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255229; x=1718791229;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0KrHnTA+sSYHhh2pbS7vwueF6cc3tGZ7EeAew+YQoR0=;
 b=AFHrfboZdBQOsE/yCsncmU8CP1XzFxhyrFDJ60tdDinfxmNdReo7WXXd
 V4bJCGqEqZ7WlCzOj3FsjPdcSoZLp75qX5py4bElS8N2FXSheVAEeSHuk
 kkHSY5vXIwiHfDKkeZiqRdP+5S4FvpGtjKBiJzwS4l0ZFhdUzLDyhupin
 KuU8S5fliMK6M0C/ApcNPTpvcq65qWQ6f6uIMW41w4Nkkn8w78nuQvwkD
 +AGq92jqofsxE2XsnPbeDIPPFsGpvFSjsFWMBp0HccwVdDiVF50h4wrQO
 I1xcoyT7TpP7PW9Kstlod0u0KhZO1OdxWtlVd5THjVevHy1MoqwFiuv/U
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AFHrfboZ
Subject: [Intel-wired-lan] [PATCH iwl-next V1 00/15] Add E800 live migration
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
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 241 +++--
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
 20 files changed, 2348 insertions(+), 113 deletions(-)
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
