Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7BD8D1352
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 06:33:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCBD240590;
	Tue, 28 May 2024 04:33:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QwMnGm5pHiH0; Tue, 28 May 2024 04:33:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E1C940595
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716870795;
	bh=cdBX6WXFLAYHSdGBpp2Kc9YOkdCaYz8dHx+dx1VbxbM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CSRoCXl6V7MZDD++ZZrVpKRQ6v1ZKHxDzDUKLlkmQQdWt5jlUUPXk2L/Dh8oVI7o7
	 b6+lYaXg5h3YsEdWiKZqpZaaVRnSca014NR+38MDsXfOx7UfFtkfc90l0OBYaRTYN3
	 WMn7UKdjCnMU7Oio5Z30PRbVoGx2riS2Mlz9O9ttscRM4OKWzxe1KmtX+vO0b1OjsC
	 ttCEX8OcWaDtdxFHKOCs0Fdn62RumHryR1JjSzHNkc/UU/WOcLyCNoGgDi6MLmH01W
	 6DfWuRgbWNEYcClEQb3He1Sk5rPyDHDi7OnVp90gSCuP9kwBZWbouo83GNkdjzqSGd
	 MdUozh6FOnB3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E1C940595;
	Tue, 28 May 2024 04:33:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 267C11D23B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00F9E4058F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AX52atTJ0-1P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 04:33:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2F20A4058D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F20A4058D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F20A4058D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:09 +0000 (UTC)
X-CSE-ConnectionGUID: cusCWn2dRm6DgfrP018RwA==
X-CSE-MsgGUID: HMxdNYlKQyqtHAwuQVBjZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13020063"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13020063"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 21:33:09 -0700
X-CSE-ConnectionGUID: WjacOOZlQBSHzU40REcD4Q==
X-CSE-MsgGUID: ZUx0qnGPQf24vrWMVTFzHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="66152397"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 27 May 2024 21:33:06 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 06:37:58 +0200
Message-ID: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716870790; x=1748406790;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NgKBPgOnzAVqa4Jit3Fu+Oibx3LafvAl41sMAT3mdOA=;
 b=lYIjQ/0Eh8WIvbPXuXMH/iADpWsttkpWljsVMad7DS9POaJbd5/61VO+
 NrdSfGEDr6ffUEt3a3HBPf5L+0qJunVRYX5t93YAScQEPcWaxNvvXUMsf
 6djF1FLDk5v/Aygm/M77mKgi0fCnUBMsqSSd4L0IXT6vTRxsrdCOx9Npg
 4afJ7Z38sJcWRauFwdEgrqBq25sUhoUKkEW0pNE8AZxySk6I4vTxy9Jim
 E6p1ca5U2UQDtZR7/A8+K0Z1DrGKaOEJn1Qeau4jFdkaKmhmvRytJs3YX
 un5t7P3/rkD4FhVlnOI3mvc9bnuzT4o6GFLN2DCXgdnL7+IeEONgIksjY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lYIjQ/0E
Subject: [Intel-wired-lan] [iwl-next v3 00/15] ice: support devlink
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
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

