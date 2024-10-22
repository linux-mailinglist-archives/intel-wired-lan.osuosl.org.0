Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 066FA9A98AE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CA8480B02;
	Tue, 22 Oct 2024 05:41:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W7cXV8-pdYjC; Tue, 22 Oct 2024 05:41:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A79B80AA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729575680;
	bh=eoXs8uqnVWKWeiFd3a64TtSa8qb62Ef9CI5GPGnqrdo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=alVQ2+Twkhhgcc/qu5fjMU7s/vaiovcEbk458IZ7TxPNr9yp8F/pnSdzNqpkTgApu
	 zT7sTZcVBSv5LghPu0SMpBYd7WO/v3W8QYZ2ERPS4UxNGmBEDFmcqk6k0200tmaagQ
	 BhA3hC7qDNRl9nqx5/sxQiXzKupHcD+UwNf6lHO+VoiH37jyGC3sc03o7tXrePg+tr
	 a9rs43rRHXKuZ4LOLOepDtRI3evpl6bG/V1nXgLM8Gsyz8ygSqGIouIl3MCjnUUKVx
	 +PwRPFWxauyEOZR8SYnqEJsRRslJ4dLPkrQ608EfdETr8RAfXe3Imp0h6GN4xvAdX/
	 DRFuNaFI6fAaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A79B80AA7;
	Tue, 22 Oct 2024 05:41:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 664D4963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CA8A60784
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hKRg7pRIE7Hd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:41:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A4E7E60766
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4E7E60766
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4E7E60766
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:12 +0000 (UTC)
X-CSE-ConnectionGUID: z4SMOXXFTMCr9ekVfuajHA==
X-CSE-MsgGUID: ncBNm7pURPSG3U627rFOZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33015589"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33015589"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:41:12 -0700
X-CSE-ConnectionGUID: S0Al3gnCRrmUGb+3EX9l1w==
X-CSE-MsgGUID: 7CEvXZnNQBGNl6IhjeRPwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84558078"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 22:41:09 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 843DF27BCA;
 Tue, 22 Oct 2024 06:41:07 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 22 Oct 2024 07:41:07 -0400
Message-Id: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729575672; x=1761111672;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RhxsYHu4UcnKbtEwFAjVRy76QMqyckr7ihO1I6MDMoo=;
 b=SyqVpoiT8qnlTFhu6A5Y+kOgjS6VZ/tWHysewTy4r5etLF5jCG949Hes
 ju/wVxLL1D0OBks8lw1vn+aiiBAEqX7q1n/4zVYo5nbgdJCP6EaWU603F
 ev6u8qJIYHTseePFFxBzTthQ/RSoQF4F+uj4oSy1ICtpBF0z8mFSMi51Q
 TBsWGhimjgyCdZ0r22LBd/rBhTFhNN3P5pKyUCWElOlwzD4XDeweUZKre
 THbj14EoAErO1Lgwu1Z62QFqdp4cEN5IrFau3Y7k3lEmaNTYMAw5hQmOZ
 6Xv8XRRHKAuApiqN+Fy7Yivx24H142uJJW3LgemRIDxvhJk0mYVccQATx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SyqVpoiT
Subject: [Intel-wired-lan] [PATCH iwl-next v12 00/14] Add support for Rx
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
v12:
- small changes versus v11, fixed compilation warnings and errors and covered
  Vadim's request about ptp_read_system_prets and ptp_read_system_postts()
  in iavf_read_phc_indirect() function. Added stubs in iavf_ptp.h file depends
  on CONFIG_PTP_1588_CLOCK config option.

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
 24 files changed, 1786 insertions(+), 331 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_types.h


base-commit: af148a444def1452fb6a565d8d81d4e7bbe06c30
-- 
2.38.1

