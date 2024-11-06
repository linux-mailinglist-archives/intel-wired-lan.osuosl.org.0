Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F13199BE59F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 12:37:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CA56811D5;
	Wed,  6 Nov 2024 11:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OU11O-o3AA9M; Wed,  6 Nov 2024 11:37:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66620811CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730893072;
	bh=MW2tjv79NFVOB7sl9PYXJVonPRmfGZ0bobjtzPFymcA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TAiAuShEYV48NOJkQPduz3MI9k00t3/o/8mi7zGqz/7dGkDQiYztjowwzWwonCrhd
	 /+nXuI4266gMhPvFp/1tQHHy37cbv1xqNVXx8mEHp4HPFJTVrZgm5UHHiWwG6kdAxC
	 gwaJRV+13L3IzO5obH9FbplOOQSYIloNB1DqGEUrOOhnLRaGHNENxmdtmAbYKhF4Dr
	 Uw3FYmxhP+koLIlvdxKSZTuw7B+C+9JfRPs4rKQo9zDybtn9VP4R8EUWm3gOs22fl4
	 BXCIW4JN1X7aH9uZ+Y5mVMJ6vvmG+CXdUoYR2CGiSx36zyT3FpnS7MF7XBHxWyIp5B
	 FZ5y5Fefon1ZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66620811CB;
	Wed,  6 Nov 2024 11:37:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AC1B43B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A05A608C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:37:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1NXhqacLnGao for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 11:37:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 30B90608A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30B90608A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30B90608A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 11:37:48 +0000 (UTC)
X-CSE-ConnectionGUID: 93J9WrbeQf+yNIgn+lV01Q==
X-CSE-MsgGUID: DtOg24LuRdWHa/Uak7kPtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30455486"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30455486"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 03:37:48 -0800
X-CSE-ConnectionGUID: RhJ+TEa5TQW3T1QhyE3xsQ==
X-CSE-MsgGUID: YpE/fHIgRUi/cVDYXGUg3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="122020108"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 06 Nov 2024 03:37:46 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8AAA228169;
 Wed,  6 Nov 2024 11:37:45 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Wed,  6 Nov 2024 12:37:17 -0500
Message-Id: <20241106173731.4272-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730893069; x=1762429069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R3UcfVcEoY2Q3PMzAqNdlN8eSsaPRv6104q206PTkcE=;
 b=SaZZLia3dSDM3132mmvBu0cJynh8MWkk6hj8mqOaCEb1WX0ZofcqUITX
 3fMhA2IcSzeGy4hpSOoibZ45xZmlpGuXdK6V3r0EaHsTB9i3ma3Z8q27F
 1XVdUNQVNtkAV4HAQDyhCX4yi1RpM//Zqt5heKyzH92YhprXbaE4hCMnr
 UBCmwxaSZHiAVuafHbNKthdMWAZN+bxsXufAh9sGy/JwboiLS02yndacV
 TPz30CmF2+ghfeke1QPh+9OfOIpbKCNG7WVcX/GIUI2qVty8txDdqwJUB
 UWhwpb8F1EyaV+Qf455t+87v86ntMqeKu7YPudsLu0p75BJAh0fux7iwM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SaZZLia3
Subject: [Intel-wired-lan] [PATCH iwl-next v13 00/14] Add support for Rx
 timestamping for both ice and iavf drivers
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

Initially, during VF creation it registers the PTP clock in
the system and negotiates with PF it's capabilities. In the
meantime the PF enables the Flexible Descriptor for VF.
Only this type of descriptor allows to receive Rx timestamps.

Enabling virtual clock would be possible, though it would probably
perform poorly due to the lack of direct time access.

Enable timestamping should be done using userspace tools, e.g.
hwstamp_ctl -i $VF -r 14

In order to report the timestamps to userspace, the VF extends
timestamp to 40b.

To support this feature the flexible descriptors and PTP part
in iavf driver have been introduced.
---
v13:
- cosmetic changes - added dependency to PTP_1588_CLOCK_OPTIONAL in Kconfig
  (patch 6) to prevent compilation warnings and added Tested-by tags. No logical
  and deeper changes in code.

v12:
- small changes versus v11, fixed compilation warnings and errors and covered
  Vadim's request about ptp_read_system_prets and ptp_read_system_postts()
  in iavf_read_phc_indirect() function. Added stubs in iavf_ptp.h file depends
  on CONFIG_PTP_1588_CLOCK config option.
https://lore.kernel.org/netdev/20241022114121.61284-1-mateusz.polchlopek@intel.com/

v11:
- addressed all comments from v10 done by Alexander L. Short list: changed some
  logging functions (like pci_warn instead of dev_warn), fix RCT, fix indentation,
  remove unnecessary comments and casts, change error codes where applicable,
  remove ptp.initialized field in struct (now check for ptp.clock as Olek
  suggested), invert condition in few places to avoid +1 indent level, function
  iavf_ptp_do_aux_work made as static, add more descriptive kdoc for libeth
  struct fields, restore ptype as a field in libeth struct, remove unused
  defines, pass to specific functions quad word of descriptor instead of pass
  rx_desc, add asserts to structs where applicable, return from fields extracting
  functions when !fields.eop, refactor get VLAN tags, remove unnecessary empty
  initialization of structs and few more. Please see v10 to compare all changes.
https://lore.kernel.org/netdev/20241013154415.20262-1-mateusz.polchlopek@intel.com/

v10:
- only cosmetic changes, make every patch compile, fixing checkpatch issues
https://lore.kernel.org/netdev/20240821121539.374343-1-wojciech.drewek@intel.com/

v9:
- another big refactor of code, again the list is too long to describe each change. Only
  patch1 and patch12 has not been changed AFAIR. Please take a look on v8 and changes
  requests from Alexander L. (in short - fixed structs paddings, aligns, optimized rx hot
  path, renamed few structs, added "const" keyword where applicable, added kdoc comments
  to newly introduced structs and defines, removed unnecessary casts, simplified few
  functions and few more).
https://lore.kernel.org/netdev/20240813125513.8212-1-mateusz.polchlopek@intel.com/

v8:
- big refactor to make code more optimised (too many changes to list them here, please
  take a look on v7 patch9 and comments from Alexander L) - patch 11. Because of that I
  decided to remove all gathered RB tags.
- changed newly introduced spinlock aq_cmd_lock to mutex type to avoid deadlock - patch 7
- adjusted function iavf_is_descriptor_done() to extract fields from descriptor in a new
  way - patch 12
- changed (and removed unused) defines that describe specific fields and bits in
  descriptor
https://lore.kernel.org/netdev/20240730091509.18846-1-mateusz.polchlopek@intel.com/

v7:
- changed .ndo_eth_ioctl to .ndo_hwtstamp_get and .ndo_hwtstamp_set
  (according to Kuba's suggestion) - patch 11
https://lore.kernel.org/netdev/20240604131400.13655-1-mateusz.polchlopek@intel.com/

v6:
- reordered tags
- added RB tags where applicable
- removed redundant instructions in ifs - patch 4 and patch 5
- changed teardown to LIFO, adapter->ptp.initialized = false
  moved to the top of function - patch 6
- changed cpu-endianess for testing - patch 9
- aligned to libeth changes - patch 9
https://lore.kernel.org/netdev/20240528112301.5374-1-mateusz.polchlopek@intel.com/

v5:
- fixed all new issues generated by this series in kernel-doc
https://lore.kernel.org/netdev/20240418052500.50678-1-mateusz.polchlopek@intel.com/

v4:
- fixed duplicated argument in iavf_virtchnl.c reported by coccicheck
https://lore.kernel.org/netdev/20240410121706.6223-1-mateusz.polchlopek@intel.com/

v3:
- added RB in commit 6
- removed inline keyword in commit 9
- fixed sparse issues in commit 9 and commit 10
- used GENMASK_ULL when possible in commit 9
https://lore.kernel.org/netdev/20240403131927.87021-1-mateusz.polchlopek@intel.com/

v2:
- fixed warning related to wrong specifier to dev_err_once in commit 7
- fixed warnings related to unused variables in commit 9
https://lore.kernel.org/netdev/20240327132543.15923-1-mateusz.polchlopek@intel.com/

v1:
- initial series
https://lore.kernel.org/netdev/20240326115116.10040-1-mateusz.polchlopek@intel.com/
---

Jacob Keller (10):
  virtchnl: add support for enabling PTP on iAVF
  virtchnl: add enumeration for the rxdid format
  iavf: add support for negotiating flexible RXDID format
  iavf: negotiate PTP capabilities
  iavf: add initial framework for registering PTP clock
  iavf: add support for indirect access to PHC time
  iavf: periodically cache PHC time
  iavf: refactor iavf_clean_rx_irq to support legacy and flex
    descriptors
  iavf: handle set and get timestamps ops
  iavf: add support for Rx timestamps to hotpath

Mateusz Polchlopek (3):
  libeth: move idpf_rx_csum_decoded and idpf_rx_extracted
  iavf: define Rx descriptors as qwords
  iavf: Implement checking DD desc field

Simei Su (1):
  ice: support Rx timestamp on flex descriptor

 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/iavf/Makefile      |   2 +
 drivers/net/ethernet/intel/iavf/iavf.h        |  35 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 228 +++++++-
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 485 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  47 ++
 drivers/net/ethernet/intel/iavf/iavf_trace.h  |   6 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 433 ++++++++++++----
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  24 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h   | 239 ++++-----
 drivers/net/ethernet/intel/iavf/iavf_types.h  |  34 ++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 203 ++++++++
 drivers/net/ethernet/intel/ice/ice_base.c     |   3 -
 drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   8 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  77 ++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   6 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   7 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  51 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  16 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  19 -
 include/linux/avf/virtchnl.h                  | 135 ++++-
 include/net/libeth/rx.h                       |  47 ++
 25 files changed, 1787 insertions(+), 331 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_types.h


base-commit: 2c2b80f0ad2ff47a6e56baad9381442e5dae3054
-- 
2.38.1

