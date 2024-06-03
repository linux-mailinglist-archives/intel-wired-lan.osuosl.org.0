Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81018D7F24
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 11:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DE174051F;
	Mon,  3 Jun 2024 09:45:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7_Fb2uWNPhDe; Mon,  3 Jun 2024 09:45:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7264C40350
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717407930;
	bh=GD99maK9LbS3fXRhIMmH0RlkjnQpmHkDd3gcASDMtEI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=273oWBibMFv8jAbZUzaXP3I+iT+kuKw1c3FCstFVkVL+DTkPe8HC+tMryQTMvbglw
	 fg/p4/roD4nSo5fQfCNxh2/lWsNeNQTqIQ05GZxrPZfesDMz3Zi3ADxhuf7oo49KCp
	 XklfdicGQTrkFXOFuwZWRiyohrzcuG9c7l2CPUjxj8mixaasdWalMSz+hXkVe783SF
	 iJCwEirdXJfHHd6EATJV9mikOcCEI6OMy6z2wPppYGURMXRjE1GHV7TiJLvufbnF/r
	 Z6GZk5HdMEbkDfXMJ4vdFFnjqLm4XGdLL6m0dSOMpyYoVf0jSgCFuybXg6jqM/y/Pp
	 RPhEusHv/5O6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7264C40350;
	Mon,  3 Jun 2024 09:45:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FD171BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3916682163
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id teKmTzP9j7KU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 09:45:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DDC0882156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDC0882156
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDC0882156
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:26 +0000 (UTC)
X-CSE-ConnectionGUID: g44bfkrISsmKx5x810dxgA==
X-CSE-MsgGUID: X9xP7UjzSPm0skmgoDsl8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17732648"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="17732648"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 02:45:26 -0700
X-CSE-ConnectionGUID: B40F5MUyRLOYv3bR8OzFyw==
X-CSE-MsgGUID: 14W9EwnxSwiPFqO670jU1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="37448141"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa007.jf.intel.com with ESMTP; 03 Jun 2024 02:45:23 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jun 2024 11:50:10 +0200
Message-ID: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717407927; x=1748943927;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JAzddVLO70gOUr5oUqkC16rLgkwaJquoK6drqhyTB/g=;
 b=F4XGB3M8B7HRXH7TnIQAWu3YAbBoGdvq4+e1zb+bImxtWndRVk/n/ziQ
 hW8YndCv1p/QtgZ3xM+QnLF2iU2bnhaSBE/MetiTypewJIJWTwnDsSEfp
 G8iztwbUCjnCgmEqqDfdLIajwcKK2XrY87c8sKK/1qz55MUfZEk00EpaH
 k0zaoYOt0RDa4Vs80McxRDtptwsxsSLnR1uTPc0slWS/jAS/y9xRmAJDX
 3cnbrxRzd2bNlwFqMbaIxoNgXbPojIRVMFaRS+HfiXaOO1cKhrR2DzqyO
 qsUoIS47zGOjHsCY5T6sflrvvjW0U0E20AnR5TX7tkuPnM8JqK5oAejpj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F4XGB3M8
Subject: [Intel-wired-lan] [iwl-next v4 00/15] ice: support devlink
 subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Currently ice driver does not allow creating more than one networking
device per physical function. The only way to have more hardware backed
netdev is to use SR-IOV.

Following patchset adds support for devlink port API. For each new
pcisf type port, driver allocates new VSI, configures all resources
needed, including dynamically MSIX vectors, program rules and registers
new netdev.

This series supports only one Tx/Rx queue pair per subfunction.

Example commands:
devlink port add pci/0000:31:00.1 flavour pcisf pfnum 1 sfnum 1000
devlink port function set pci/0000:31:00.1/1 hw_addr 00:00:00:00:03:14
devlink port function set pci/0000:31:00.1/1 state active
devlink port function del pci/0000:31:00.1/1

Make the port representor and eswitch code generic to support
subfunction representor type.

VSI configuration is slightly different between VF and SF. It needs to
be reflected in the code.

v3 --> v4: [6]
 * fix comment in ice_allocate_sf()
 * return ERR_PTR instead of NULL in ice_allocate_sf()

v2 --> v3: [5]
 * fix misspealing in commit tilte
 * add missing doc entries in ice_dynamic_port
 * drop dev_err where extack is available
 * fix RCT in declaration

v1 --> v2: [4]
 * allow changing SF MAC address only when port isn't attached
 * split patch with port representor creation into two (first making
   code generic and than adding support for SF representor)
 * fix warning massege in case of SF device creation
 * remove double space
 * add verb in commit message

Changelog for previous patchset version (not containing port representor
for SF support).

v3 --> v4: [3]
 * get rid of unnecessary checks
 * fix cosmetic issues (whitespaces, wording)
 * move unrelated chunks to separate patch
 * move implementing activation/deactivation to last patch

v2 --> v3: [2]
 * fix building issue between the patches; allocating devlink for
 subfunction need to include base subfunction header
 * fix kdoc issues

v1 --> v2: [1]
 * use correct parameters in ice_devlink_alloc() thanks to Mateusz

[1] https://lore.kernel.org/netdev/20240507114516.9765-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20240410050809.125043-1-michal.swiatkowski@linux.intel.com/
[3] https://lore.kernel.org/netdev/20240412063053.339795-1-michal.swiatkowski@linux.intel.com/
[4] https://lore.kernel.org/netdev/20240408103049.19445-1-michal.swiatkowski@linux.intel.com/
[5] https://lore.kernel.org/netdev/20240513083735.54791-1-michal.swiatkowski@linux.intel.com/
[6] https://lore.kernel.org/netdev/20240528043813.1342483-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (8):
  ice: treat subfunction VSI the same as PF VSI
  ice: make representor code generic
  ice: create port representor for SF
  ice: don't set target VSI for subfunction
  ice: check if SF is ready in ethtool ops
  ice: implement netdevice ops for SF representor
  ice: support subfunction devlink Tx topology
  ice: basic support for VLAN in subfunctions

Piotr Raczynski (7):
  ice: add new VSI type for subfunctions
  ice: export ice ndo_ops functions
  ice: add basic devlink subfunctions support
  ice: allocate devlink for subfunction
  ice: base subfunction aux driver
  ice: implement netdev for subfunction
  ice: allow to activate and deactivate subfunction

 drivers/net/ethernet/intel/ice/Makefile       |   2 +
 .../net/ethernet/intel/ice/devlink/devlink.c  |  48 ++
 .../net/ethernet/intel/ice/devlink/devlink.h  |   1 +
 .../ethernet/intel/ice/devlink/devlink_port.c | 503 ++++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |  46 ++
 drivers/net/ethernet/intel/ice/ice.h          |  19 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 113 +++-
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  52 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  66 ++-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 211 ++++++--
 drivers/net/ethernet/intel/ice/ice_repr.h     |  22 +-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 329 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  33 ++
 .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.c  |  21 +
 .../ethernet/intel/ice/ice_sf_vsi_vlan_ops.h  |  13 +
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   4 +
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
 26 files changed, 1396 insertions(+), 138 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_vsi_vlan_ops.h

-- 
2.42.0

