Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E3899C624
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 11:44:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 209A160712;
	Mon, 14 Oct 2024 09:44:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BwikDWNgztxr; Mon, 14 Oct 2024 09:44:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 253B16070C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728899047;
	bh=zspAMMw4htRJDP8KKZQ5PWRzhHGYELjFM9CI50yFiBE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=E/uypf3D4xbOpAb0hNTE+aRDbUqvtiRphEJEoMaVKaXXkDEJK4LHpi8qv/XMAXMLP
	 uMMWxfrT+0jFawwXDjfTfY2kkTE1NkuONsWKI2KV+zSOgrwZrCKb8nCdLmZlqyzWIe
	 1Wr42UYiEx5+ZGYJXrLQNP0VPzL88Ws+tRCOiK81u8y1IvBNLdxlhC1gZ+nCgDCgRh
	 pOZRroWcE3EE28ISCadjfvKOA09/YO/pX6xVy7bAL+BkYWKoBT4LLpnW0PQ7ojgaJb
	 OMKUNONTClJcgDYyGZb3Cv2GG3Fsi5/tza5ckJzs8m7e/5sjrrSw6eJq0aoN3KXAf5
	 sbvXjcOSBDaJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 253B16070C;
	Mon, 14 Oct 2024 09:44:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 934081BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80BC1404D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kg0VFcJFWBd1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 09:44:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A07C0402A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A07C0402A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A07C0402A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:03 +0000 (UTC)
X-CSE-ConnectionGUID: VVRcD68mT4S8JDYrk2zbww==
X-CSE-MsgGUID: 5VxKlbY2SsOObTehTHCxAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45712138"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45712138"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:02 -0700
X-CSE-ConnectionGUID: dN3unCp2Sdi0ytkh00mzdg==
X-CSE-MsgGUID: Yqdan1SET06D8kVSoEr48Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77531785"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 14 Oct 2024 02:44:00 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8CE9D27BA0;
 Mon, 14 Oct 2024 10:43:58 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Sun, 13 Oct 2024 11:44:01 -0400
Message-Id: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899043; x=1760435043;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Rwf2+973h7jAI+A4B1mvaxUtlBX4jABG4AkTX0WprQ=;
 b=DTluy7q4JHGBWnyHlQLRrtRBPt/KyNNwgUsy8AFhi7xLyYvQdId4We90
 nmMZcdjixSklKZU/HgVqr9TVYeJWHJBYEX6fG9CpyYUXlRgUxk9PySH1u
 X3GRzz8WRpdLoWH5vMXPUX6t0mTeQez1zDfMN7Duj2Pnh2rlJgwPt16ON
 62F3VvBfJ2oySaVtJ3Xzp3G3z6OzQaYMJG8ZAplYD1ZgBy8AD8UVNrjxK
 VaICKkjUCd9mVP7m6Et4k5e0mcqLfUdLrtaJg0IQ5JqD0vWs5h+Q+m/lD
 LQH6/SNkt06QC1s4UjLNXvaUntiEWQrti5W3lDYP5zwxg0lO7j/yBIkTV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DTluy7q4
Subject: [Intel-wired-lan] [PATCH iwl-next v11 00/14] Add support for Rx
 timestamping for both ice and iavf drivers
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
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

Side notes:
Wojtek did great job handling this series during my vacations. Thanks!
---
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
- fixed warning related to wrong specifier to dev_err_once in
  commit 7
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

 drivers/net/ethernet/intel/iavf/Makefile      |   2 +
 drivers/net/ethernet/intel/iavf/iavf.h        |  35 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 228 ++++++++-
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 483 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  22 +
 drivers/net/ethernet/intel/iavf/iavf_trace.h  |   6 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 433 ++++++++++++----
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  24 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h   | 239 ++++-----
 drivers/net/ethernet/intel/iavf/iavf_types.h  |  34 ++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 201 ++++++++
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
 24 files changed, 1757 insertions(+), 331 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_types.h


base-commit: a77c49f53be0af1efad5b4541a9a145505c81800
-- 
2.38.1

