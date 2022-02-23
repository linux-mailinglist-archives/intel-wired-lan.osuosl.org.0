Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 445E14C05EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF79360F16;
	Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tVWaD_qWbsbq; Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B75CC60BAD;
	Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9EF21BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EBA1405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjoEmfBr9sB5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C8C0400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576039; x=1677112039;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k9H3bydtoDXw1R1rayzvUQWDceDoBvn5zZh6rL0j6pI=;
 b=a42vWEOYV+OYPxEJJku/vXxNbbnN9Mu0sthJGBwzOgynTZzf5ktDF46+
 wIVmk/W4MVTggtDZz07/mWoml5diMw8BQ8kUVgMFJ5rB+2yf/+FVrak+9
 PrZIhvY0E+sm09ZUkwiKqBSY6duBoEl9l11L9MjN6p5gk4PEN8GGSJrwA
 gn+9QyJivA6OnabuhChQWkb5D/n38VbHN24gyDEAwoSynooIoBYX6oVEn
 ys8n3CROfdI2dqJB6nPuNd0RHBg0SbcroWGwZInmIaI9R+bTprDhRWbCi
 jY9VOL6GxCy7bcslPbKg4jv5ox+6R/3fVRwBkVuDQSLGx+kpD53N54/TW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468963"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468963"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505727992"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:47 -0800
Message-Id: <20220223002712.2771809-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 00/25] ice: reorganize
 virtualization code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_virtchnl_pf.c file has become a single place for a lot of
virtualization functionality. This includes most of the virtchnl message
handling, integration with kernel hooks like the .ndo operations, reset
logic, and more.

We are planning in the future to implement and support Scalable IOV in the
ice driver. To do this, much (but not all) of the code in ice_virtchnl_pf.c
will want to be reused.

Rather than dump all of the Scalable IOV implementation into
ice_virtchnl_pf.c it makes sense to house it in a separate file. But that
still leaves all of the Single Root IOV code littered among more generic
logic.

This series reorganizes code to make the non-implementation specific bits
into new files with the following general guidelines:

 * ice_vf_lib.[ch]

   Basic VF structures and accessors. This is where scheme-independent
   code will reside.

 * ice_virtchnl.[ch]

   Virtchnl message handling. This is where the bulk of the logic for
   processing messages from VFs using the virtchnl messaging scheme will
   reside. This is separated from ice_vf_lib.c because it is distinct
   and has a bulk of the processing code.

 * ice_sriov.[ch]

   Single Root IOV implementation, including initialization and the
   routines for interacting with SR-IOV based netdev operations.

 * (future) ice_siov.[ch]

   Scalable IOV implementation.

The goal is to make it easier to re-use parts of the virtualization logic
while separating concerns such as Single Root specific implementation
details.

In addition, this series has several minor cleanups and refactors we've
accumulated during this development cycle which help prepare the ice driver
for the Scalable IOV implementation.

This series builds on top of the recent hash table refactor work.

Jacob Keller (25):
  ice: rename ice_sriov.c to ice_vf_mbx.c
  ice: rename ice_virtchnl_pf.c to ice_sriov.c
  ice: remove circular header dependencies on ice.h
  ice: convert vf->vc_ops to a const pointer
  ice: remmove unused definitions from ice_sriov.h
  ice: rename ICE_MAX_VF_COUNT to avoid confusion
  ice: refactor spoofchk control code in ice_sriov.c
  ice: move ice_set_vf_port_vlan near other .ndo ops
  ice: cleanup error logging for ice_ena_vfs
  ice: log an error message when eswitch fails to configure
  ice: use ice_is_vf_trusted helper function
  ice: introduce ice_vf_lib.c, ice_vf_lib.h, and ice_vf_lib_private.h
  ice: fix incorrect dev_dbg print mistaking 'i' for vf->vf_id
  ice: introduce VF operations structure for reset flows
  ice: fix a long line warning in ice_reset_vf
  ice: move reset functionality into ice_vf_lib.c
  ice: drop is_vflr parameter from ice_reset_all_vfs
  ice: make ice_reset_all_vfs void
  ice: convert ice_reset_vf to standard error codes
  ice: convert ice_reset_vf to take flags
  ice: introduce ICE_VF_RESET_NOTIFY flag
  ice: introduce ICE_VF_RESET_LOCK flag
  ice: cleanup long longs in ice_sriov.c
  ice: introduce ice_virtchnl.c and ice_virtchnl.h
  ice: remove PF pointer from ice_check_vf_init

 drivers/net/ethernet/intel/ice/Makefile       |    6 +-
 drivers/net/ethernet/intel/ice/ice.h          |    5 +-
 drivers/net/ethernet/intel/ice/ice_arfs.h     |    3 +
 drivers/net/ethernet/intel/ice/ice_base.c     |    2 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    4 +-
 drivers/net/ethernet/intel/ice/ice_dcb.h      |    1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |    1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |    1 +
 drivers/net/ethernet/intel/ice/ice_flow.h     |    2 +
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |    1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |   25 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h    |   11 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     |    6 +-
 drivers/net/ethernet/intel/ice/ice_repr.h     |    1 -
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 2305 ++++++++++---
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  165 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 1029 ++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  290 ++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   40 +
 .../intel/ice/{ice_sriov.c => ice_vf_mbx.c}   |    2 +-
 .../intel/ice/{ice_sriov.h => ice_vf_mbx.h}   |    6 +-
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |    2 +-
 .../ice/{ice_virtchnl_pf.c => ice_virtchnl.c} | 3002 +----------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   82 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |    1 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.h    |    1 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  437 ---
 drivers/net/ethernet/intel/ice/ice_xsk.h      |    1 -
 29 files changed, 3566 insertions(+), 3867 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
 copy drivers/net/ethernet/intel/ice/{ice_sriov.c => ice_vf_mbx.c} (99%)
 copy drivers/net/ethernet/intel/ice/{ice_sriov.h => ice_vf_mbx.h} (95%)
 rename drivers/net/ethernet/intel/ice/{ice_virtchnl_pf.c => ice_virtchnl.c} (57%)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl.h
 delete mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h


base-commit: 81003a1453e724321ed9cc9f75fb92d74884c413
prerequisite-patch-id: 9685201f53a380b760fafc19ce4c52503dce7b0f
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
