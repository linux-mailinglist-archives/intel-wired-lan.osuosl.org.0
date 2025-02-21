Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB9FA3F3A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 13:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1569C8169A;
	Fri, 21 Feb 2025 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rnZswhxIQjER; Fri, 21 Feb 2025 12:05:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A31EF81228
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740139512;
	bh=y1v3Wg4sRPVB1lV2hX0zlp+KkpaTTZ1kpS+99HQbqVs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EGLSIiBbFXM+7EJ5gkge8MOzB4lTiKTH5YKQedRaUGI0R7oz7COqsK9EXmqa1uzqC
	 Em/TJ34jLhOR6jFu9EXyBhR+6clAr0/qrIjRbTat0wZpcUJy6G0spp++PJgWe1sI+7
	 /Z8gIJukHpT3EmAID1LeI0R3+sLKf6GKTejpsKeoanVxhlS2vliTaZM9uTZrP+74U/
	 K3b1e9hRQGKCpZ1CiFrgBkZZ3Uhe8dGvMSBwHNy4E4b65oglVGoGqb+tnCBirniF/g
	 L5ZDS6Q6CJm4DjbXLvyuJ7oEadVGhBFfPRMbwPDBzCAIA4j9Kj+5jrEUxdFhOhBEYl
	 p2dc98t1XCwTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A31EF81228;
	Fri, 21 Feb 2025 12:05:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9583B194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F547811FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4L_RGTa4WxgB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 12:05:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 53317811AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53317811AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53317811AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:09 +0000 (UTC)
X-CSE-ConnectionGUID: njsZC+FeT1ic7qePgD35Sg==
X-CSE-MsgGUID: C6bWq9uVSf2kpHXlDgABsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51598917"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51598917"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 04:05:08 -0800
X-CSE-ConnectionGUID: OyQ69OMrS9KZk2HMTs3mwA==
X-CSE-MsgGUID: 3ai3IJMuRWWlmSe4OZxJOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116260289"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 21 Feb 2025 04:05:06 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Fri, 21 Feb 2025 12:51:01 +0100
Message-Id: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740139509; x=1771675509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XWoitO8jJI3YJR3Xvlh2E/c0auXNkncOG07P314vs9I=;
 b=YFnbzEusBu0Z9R26LoVWCVkg36FmyLDNqbS9A9fDmaEnBXTt3gfmpzwA
 k0xC4VIqBsuzn7CWQQJubYzX3hJnu7youj5AOsOBbvlq3CR687Dsr2FAQ
 7+gXNdrz+MMmEiFk2fti5mNC2qolPdxqXBYHvY1bxivNPQ3rvRFR7TrFe
 BIay4kNUS4YoQEsBQHguu/c/hHtHhr98VpEdWULiM1EH9n8sS5IH6G29m
 CMQhdYB3uOf4mnNjAFy8rnYEeJ5JKnYHKkuJ+X1EGsVOl5+oNnToA9Ahi
 Xo+RBiU0+A2ZnpEjWbDLAQYb/mR+w5/9Xe2DFmGx1553ghIsBmbUczGqw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YFnbzEus
Subject: [Intel-wired-lan] [PATCH iwl-next v5 00/15] ixgbe: Add basic
 devlink support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Create devlink specific directory for more convenient future feature
development.

Flashing and reloading are supported only by E610 devices.

Introduce basic FW/NVM validation since devlink reload introduces
possibility of runtime NVM update. Check FW API version, FW recovery mode
and FW rollback mode. Introduce minimal recovery probe to let user to
reload the faulty FW when recovery mode is detected.

This series is based on the series introducing initial E610 device
support:
https://lore.kernel.org/intel-wired-lan/20241205084450.4651-1-piotr.kwapulinski@intel.com/

Andrii Staikov (1):
  ixgbe: add support for FW rollback mode

Jedrzej Jagielski (10):
  devlink: add value check to devlink_info_version_put()
  ixgbe: add initial devlink support
  ixgbe: add handler for devlink .info_get()
  ixgbe: add .info_get extension specific for E610 devices
  ixgbe: add E610 functions getting PBA and FW ver info
  ixgbe: extend .info_get with stored versions
  ixgbe: add device flash update via devlink
  ixgbe: add support for devlink reload
  ixgbe: add FW API version check
  ixgbe: add E610 implementation of FW recovery mode

Przemek Kitszel (1):
  ixgbe: wrap netdev_priv() usage

Slawomir Mrozowicz (3):
  ixgbe: add E610 functions for acquiring flash data
  ixgbe: read the OROM version information
  ixgbe: read the netlist version information

 Documentation/networking/devlink/index.rst    |    1 +
 Documentation/networking/devlink/ixgbe.rst    |  105 ++
 drivers/net/ethernet/intel/Kconfig            |    2 +
 drivers/net/ethernet/intel/ixgbe/Makefile     |    3 +-
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  585 +++++++
 .../ethernet/intel/ixgbe/devlink/devlink.h    |   10 +
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   21 +
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   |    1 +
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |   56 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1512 +++++++++++++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   16 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   86 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |   12 +-
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |  708 ++++++++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.h    |   12 +
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |   10 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  261 ++-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   16 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    5 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  161 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |    1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |    2 +-
 net/devlink/dev.c                             |    2 +-
 26 files changed, 3351 insertions(+), 240 deletions(-)
 create mode 100644 Documentation/networking/devlink/ixgbe.rst
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h


base-commit: 0a5f2afff8673e66160725b8ec8310f47c74f8b9
-- 
2.31.1

