Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE62A9BE66
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 08:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B7E54148A;
	Fri, 25 Apr 2025 06:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UcyczF37YSl2; Fri, 25 Apr 2025 06:08:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3046F40925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745561297;
	bh=gTcqTWhfK4hRQj5Yp8H/EL/erxHnMx/FY2nNj9h+QnI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WGOrCzMpcaPwVAzIHw0NouPI2ejsFOVqsZy846saPBWpG56NG3FjxJZQmAlgzlDZK
	 oC70VyyzJdwOfIP0kjymrq+7r9LKSKhhUUp5QMqwVqy8mFq09kLkyR6toepb/otQDa
	 GaGW1Vp6jYf+rWMFhg5ZgGSbf23doSew+Szh57NyeZzJx5Nr6EqTaT6yG5XDNbG5B2
	 3GVgHRdTmrZvxc7KWiQ5Aqwx/fIl/HmdExiqf4CiVAqMmIJsjyLAnjfjhRnJC4XceW
	 wN+IQPtblFWYB1Weibwv58g5IgZitdDFxIupBb11LqJ2DXVOvvE+QDTl0rO273fdXZ
	 HRyLdlPYtiG0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3046F40925;
	Fri, 25 Apr 2025 06:08:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 02D0FC1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 06:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCCAF60ABD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 06:08:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsKUpevKm6L6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 06:08:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A4E0360A6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4E0360A6F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4E0360A6F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 06:08:13 +0000 (UTC)
X-CSE-ConnectionGUID: gknBN8vuSXWtiy945mLSAA==
X-CSE-MsgGUID: TvpMGzrSRQ+3xP1p+n2qdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58578891"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="58578891"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 23:08:11 -0700
X-CSE-ConnectionGUID: BYCgyGlET1SqefRpIhqyfg==
X-CSE-MsgGUID: 1cv+0rWTRbWjitA1HdOf/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132703133"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa010.jf.intel.com with ESMTP; 24 Apr 2025 23:08:10 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Fri, 25 Apr 2025 08:08:01 +0200
Message-ID: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745561292; x=1777097292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qKaOs39ZG47vDsyLQKKsbRRjRgLvoPVTnHvNqIUg26Y=;
 b=Cm1hnjLhzFFg2XhroRmNoAeBqWWjVbICwf0yLHn1a+O7KsaGQC7MSGXy
 FVBNMkNG4hZNSbZd4E6cuxb8m4c75Vfndhy9v0x/7cBgo/kD3K9n1RQoY
 PsXvkQ4upXFQ1CwnVlIw+kFZsVCAqBImKdXk+We3AafspLqKtsv63/qfE
 sF0gMHdQc5GCMEnoNWV6ryxXyOSdTB0BbUO0Rs7nEaAI2kmrBzTrOfK4F
 7nVczyXpqdjYL0x5cP8yCrZyj9wfbNuEDwvGIc0e/1GFEIzcVd6+MAk9e
 YqeDyh4nUiIQcUk2xO1dISog1vNrZ40w8nv72JYS1Jhx+mDAd/BzffB8k
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cm1hnjLh
Subject: [Intel-wired-lan] [iwl-next v3 0/8] libie: commonize adminq
 structure
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

Hi,

It is a prework to allow reusing some specific Intel code (eq. fwlog).

Move common *_aq_desc structure to libie header and changing
it in ice, ixgbe, i40e and iavf.

Only generic adminq commands can be easily moved to common header, as
rest is slightly different. Format remains the same. It will be better
to correctly move it when it will be needed to commonize other part of
the code.

Move *_aq_str() to new libie module (libie_adminq) and use it across
drivers. The functions are exactly the same in each driver. Some more
adminq helpers/functions can be moved to libie_adminq when needed.

v2 --> v3: [2]
 * rebase
 * fix kdoc (patch 1 and 5)
 * remove space before tab (patch 1)

v1 --> v2: [1]
 * add short descriptions in kdoc (patch 1, 5)
 * handle all error types in switch to allow clean build (patch 3)

[1] https://lore.kernel.org/netdev/20250312062426.2544608-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20250410100121.2353754-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (8):
  ice, libie: move generic adminq descriptors to lib
  ixgbe: use libie adminq descriptors
  i40e: use libie adminq descriptors
  iavf: use libie adminq descriptors
  libie: add adminq helper for converting err to str
  ice: use libie_aq_str
  iavf: use libie_aq_str
  i40e: use libie_aq_str

 drivers/net/ethernet/intel/Kconfig            |   3 +
 drivers/net/ethernet/intel/libie/Kconfig      |   6 +
 drivers/net/ethernet/intel/libie/Makefile     |   4 +
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  12 +-
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 155 +---
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  15 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   6 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq.h |  12 +-
 .../net/ethernet/intel/iavf/iavf_adminq_cmd.h |  83 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice.h          |   1 -
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 270 +------
 drivers/net/ethernet/intel/ice/ice_common.h   |   6 +-
 drivers/net/ethernet/intel/ice/ice_controlq.h |   8 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 226 +-----
 include/linux/net/intel/libie/adminq.h        | 309 ++++++++
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   7 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 730 ++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  10 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   8 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  46 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  36 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 240 +++---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  18 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  27 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq.c |  62 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c | 110 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   5 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
 .../net/ethernet/intel/ice/devlink/devlink.c  |  10 +-
 .../net/ethernet/intel/ice/devlink/health.c   |   6 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 390 +++++-----
 drivers/net/ethernet/intel/ice/ice_controlq.c |  53 +-
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  36 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  47 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c     |  20 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
 .../net/ethernet/intel/ice/ice_fw_update.c    |  38 +-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  16 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  63 +-
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  20 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |  18 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |  55 +-
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c   |   6 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   6 +-
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |   6 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  24 +-
 .../net/ethernet/intel/ixgbe/devlink/region.c |   4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 272 +++----
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |   4 +-
 drivers/net/ethernet/intel/libie/adminq.c     |  52 ++
 59 files changed, 1578 insertions(+), 2140 deletions(-)
 create mode 100644 include/linux/net/intel/libie/adminq.h
 create mode 100644 drivers/net/ethernet/intel/libie/adminq.c

-- 
2.42.0

