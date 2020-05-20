Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 827971DA645
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 02:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14F8986D7D;
	Wed, 20 May 2020 00:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z3brrkTv_Gnf; Wed, 20 May 2020 00:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1463186DF7;
	Wed, 20 May 2020 00:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD4CA1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AC7BE232F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6Dqp7w-vRps for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 00:16:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 47C3E20015
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 00:16:44 +0000 (UTC)
IronPort-SDR: X0oGuxUvhgah9keMrrQEUHYllvNqq1IRdRRA1EY7CN+meiK2uM9/ZI3Ucc1BBeRO903prO9C6r
 7IDO5ckXCqvQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 17:16:43 -0700
IronPort-SDR: Fb4x03FtAOkyJDGXBUQF9TWan6NfhsMj+OnDoAqhFSPAOZooLL+a3I4ZYpgX0/goiPfPdNnLoT
 6B86ac63Dqgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; d="scan'208";a="466180235"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.209.18.5])
 by fmsmga005.fm.intel.com with ESMTP; 19 May 2020 17:16:42 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 May 2020 19:15:57 -0500
Message-Id: <20200520001613.475-1-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RFC v6 00/16] Add Intel Ethernet Protocol
 Driver for RDMA (irdma)
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
Cc: "Shiraz, Saleem" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Shiraz, Saleem" <shiraz.saleem@intel.com>

This patchset adds a unified Intel Ethernet Protocol Driver for RDMA
that supports a new network device E810 (iWARP and RoCEv2 capable)
and the existing X722 iWARP device. The driver architecture
provides the extensibility for future generations of Intel HW
supporting RDMA.

This driver replaces the legacy X722 driver i40iw and extends
the ABI already defined for i40iw. It is backward compatible
with legacy X722 rdma-core provider (libi40iw).

This series was built against the rdma for-next branch.

v5-->v6:
*Convert irdma destroy QP to a synchronous API
*Drop HMC obj macros for use counts like IRDMA_INC_SD_REFCNT et al.
*cleanup unneccesary 'mem' variable in irdma_create_qp
*cleanup unused headers such as linux/moduleparam.h et. al
*set kernel_ver in irdma_ualloc_resp struct to current ABI ver.
placeholder to support user-space compatbility checks in future
*GENMASK/FIELD_PREP scheme to set WQE descriptor fields considered
for irdma driver but decision to drop. The FIELD_PREP macro cannot
be used on the device bitfield mask array maintained for common WQE
descriptors and initialized based on HW generation. The macro expects
compile time constants only.
*Use irdma_dbg macro in driver callsites for debug. This macro will use
ibdev_dbg or dev_dbg depending on ibdevice allocated or not. Other
print callsites reviewed to use ibdev_* macros wherever possible.
*module alias for i40iw moved to Patch #15 where i40iw driver is removed.
*Misc. driver fixes

v4-->v5:
*Drop driver_data usage from virtbus device id. Use string id
match to identify virtbus device type.
*Rename device discovery functions
*Drop rdma_set_device_sysfs_group API usage
*READ_ONCE annotations for netdev flags in rcu_read_lock 

v4:
*Remove redundant explicit casts
*Scrub all WQs to define correct charateristics and use system WQ for reset recovery work
*Remove all non-functional NULL checks on IDC peer dev OPs
*Change all pr_* to dev_* if struct device present. Remove dev_info logging
*Dont use test_bit on non-atomic IIDC_* event types
*Remove all module parameters
*Use bool bitfields in structures instead of bool
*Change CQP completion handling from kthread to WQ
*Use the generic devlink parameter enable_roce instead of driver specific one
*Use meaningful labels for goto unwind
*Use new RDMA mmap API
*Use refcount_t APIs for refcounts on driver objects
*Add support for ibdev OP dealloc_driver
*Adapt to use new version of virtbus
*Remove RCU locking in CM address resolve
*Misc. driver fixes

Michael J. Ruhl (1):
  RDMA/irdma: Add dynamic tracing for CM

Mustafa Ismail (13):
  RDMA/irdma: Add driver framework definitions
  RDMA/irdma: Implement device initialization definitions
  RDMA/irdma: Implement HW Admin Queue OPs
  RDMA/irdma: Add HMC backing store setup functions
  RDMA/irdma: Add privileged UDA queue implementation
  RDMA/irdma: Add QoS definitions
  RDMA/irdma: Add connection manager
  RDMA/irdma: Add PBLE resource manager
  RDMA/irdma: Implement device supported verb APIs
  RDMA/irdma: Add RoCEv2 UD OP support
  RDMA/irdma: Add user/kernel shared libraries
  RDMA/irdma: Add miscellaneous utility definitions
  RDMA/irdma: Add ABI definitions

Shiraz Saleem (2):
  RDMA/irdma: Add irdma Kconfig/Makefile and remove i40iw
  RDMA/irdma: Update MAINTAINERS file

 Documentation/ABI/stable/sysfs-class-infiniband |   18 -
 MAINTAINERS                                     |    8 +-
 drivers/infiniband/Kconfig                      |    2 +-
 drivers/infiniband/hw/Makefile                  |    2 +-
 drivers/infiniband/hw/i40iw/Kconfig             |    9 -
 drivers/infiniband/hw/i40iw/Makefile            |    9 -
 drivers/infiniband/hw/i40iw/i40iw.h             |  622 ---
 drivers/infiniband/hw/i40iw/i40iw_cm.c          | 4422 -----------------
 drivers/infiniband/hw/i40iw/i40iw_cm.h          |  462 --
 drivers/infiniband/hw/i40iw/i40iw_ctrl.c        | 5294 --------------------
 drivers/infiniband/hw/i40iw/i40iw_d.h           | 1757 -------
 drivers/infiniband/hw/i40iw/i40iw_hmc.c         |  821 ---
 drivers/infiniband/hw/i40iw/i40iw_hmc.h         |  241 -
 drivers/infiniband/hw/i40iw/i40iw_hw.c          |  852 ----
 drivers/infiniband/hw/i40iw/i40iw_main.c        | 2070 --------
 drivers/infiniband/hw/i40iw/i40iw_osdep.h       |  217 -
 drivers/infiniband/hw/i40iw/i40iw_p.h           |  129 -
 drivers/infiniband/hw/i40iw/i40iw_pble.c        |  612 ---
 drivers/infiniband/hw/i40iw/i40iw_pble.h        |  131 -
 drivers/infiniband/hw/i40iw/i40iw_puda.c        | 1493 ------
 drivers/infiniband/hw/i40iw/i40iw_puda.h        |  188 -
 drivers/infiniband/hw/i40iw/i40iw_register.h    | 1030 ----
 drivers/infiniband/hw/i40iw/i40iw_status.h      |  102 -
 drivers/infiniband/hw/i40iw/i40iw_type.h        | 1375 ------
 drivers/infiniband/hw/i40iw/i40iw_uk.c          | 1232 -----
 drivers/infiniband/hw/i40iw/i40iw_user.h        |  430 --
 drivers/infiniband/hw/i40iw/i40iw_utils.c       | 1557 ------
 drivers/infiniband/hw/i40iw/i40iw_verbs.c       | 2791 -----------
 drivers/infiniband/hw/i40iw/i40iw_verbs.h       |  179 -
 drivers/infiniband/hw/i40iw/i40iw_vf.c          |   85 -
 drivers/infiniband/hw/i40iw/i40iw_vf.h          |   62 -
 drivers/infiniband/hw/i40iw/i40iw_virtchnl.c    |  756 ---
 drivers/infiniband/hw/i40iw/i40iw_virtchnl.h    |  124 -
 drivers/infiniband/hw/irdma/Kconfig             |   11 +
 drivers/infiniband/hw/irdma/Makefile            |   28 +
 drivers/infiniband/hw/irdma/cm.c                | 4484 +++++++++++++++++
 drivers/infiniband/hw/irdma/cm.h                |  417 ++
 drivers/infiniband/hw/irdma/ctrl.c              | 6021 +++++++++++++++++++++++
 drivers/infiniband/hw/irdma/defs.h              | 2167 ++++++++
 drivers/infiniband/hw/irdma/hmc.c               |  703 +++
 drivers/infiniband/hw/irdma/hmc.h               |  209 +
 drivers/infiniband/hw/irdma/hw.c                | 2694 ++++++++++
 drivers/infiniband/hw/irdma/i40iw_hw.c          |  219 +
 drivers/infiniband/hw/irdma/i40iw_hw.h          |  162 +
 drivers/infiniband/hw/irdma/i40iw_if.c          |  222 +
 drivers/infiniband/hw/irdma/icrdma_hw.c         |   80 +
 drivers/infiniband/hw/irdma/icrdma_hw.h         |   65 +
 drivers/infiniband/hw/irdma/irdma.h             |  193 +
 drivers/infiniband/hw/irdma/irdma_if.c          |  443 ++
 drivers/infiniband/hw/irdma/main.c              |  571 +++
 drivers/infiniband/hw/irdma/main.h              |  612 +++
 drivers/infiniband/hw/irdma/osdep.h             |   98 +
 drivers/infiniband/hw/irdma/pble.c              |  511 ++
 drivers/infiniband/hw/irdma/pble.h              |  136 +
 drivers/infiniband/hw/irdma/protos.h            |  120 +
 drivers/infiniband/hw/irdma/puda.c              | 1739 +++++++
 drivers/infiniband/hw/irdma/puda.h              |  187 +
 drivers/infiniband/hw/irdma/status.h            |   69 +
 drivers/infiniband/hw/irdma/trace.c             |  112 +
 drivers/infiniband/hw/irdma/trace.h             |    3 +
 drivers/infiniband/hw/irdma/trace_cm.h          |  458 ++
 drivers/infiniband/hw/irdma/type.h              | 1721 +++++++
 drivers/infiniband/hw/irdma/uda.c               |  391 ++
 drivers/infiniband/hw/irdma/uda.h               |   63 +
 drivers/infiniband/hw/irdma/uda_d.h             |  382 ++
 drivers/infiniband/hw/irdma/uk.c                | 1750 +++++++
 drivers/infiniband/hw/irdma/user.h              |  448 ++
 drivers/infiniband/hw/irdma/utils.c             | 2437 +++++++++
 drivers/infiniband/hw/irdma/verbs.c             | 4566 +++++++++++++++++
 drivers/infiniband/hw/irdma/verbs.h             |  216 +
 drivers/infiniband/hw/irdma/ws.c                |  393 ++
 drivers/infiniband/hw/irdma/ws.h                |   39 +
 include/uapi/rdma/i40iw-abi.h                   |  107 -
 include/uapi/rdma/ib_user_ioctl_verbs.h         |    1 +
 include/uapi/rdma/irdma-abi.h                   |  140 +
 75 files changed, 35287 insertions(+), 29183 deletions(-)
 delete mode 100644 drivers/infiniband/hw/i40iw/Kconfig
 delete mode 100644 drivers/infiniband/hw/i40iw/Makefile
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_cm.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_cm.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_ctrl.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_d.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_hmc.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_hmc.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_hw.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_main.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_osdep.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_p.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_pble.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_pble.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_puda.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_puda.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_register.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_status.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_type.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_uk.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_user.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_utils.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_verbs.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_verbs.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_vf.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_vf.h
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_virtchnl.c
 delete mode 100644 drivers/infiniband/hw/i40iw/i40iw_virtchnl.h
 create mode 100644 drivers/infiniband/hw/irdma/Kconfig
 create mode 100644 drivers/infiniband/hw/irdma/Makefile
 create mode 100644 drivers/infiniband/hw/irdma/cm.c
 create mode 100644 drivers/infiniband/hw/irdma/cm.h
 create mode 100644 drivers/infiniband/hw/irdma/ctrl.c
 create mode 100644 drivers/infiniband/hw/irdma/defs.h
 create mode 100644 drivers/infiniband/hw/irdma/hmc.c
 create mode 100644 drivers/infiniband/hw/irdma/hmc.h
 create mode 100644 drivers/infiniband/hw/irdma/hw.c
 create mode 100644 drivers/infiniband/hw/irdma/i40iw_hw.c
 create mode 100644 drivers/infiniband/hw/irdma/i40iw_hw.h
 create mode 100644 drivers/infiniband/hw/irdma/i40iw_if.c
 create mode 100644 drivers/infiniband/hw/irdma/icrdma_hw.c
 create mode 100644 drivers/infiniband/hw/irdma/icrdma_hw.h
 create mode 100644 drivers/infiniband/hw/irdma/irdma.h
 create mode 100644 drivers/infiniband/hw/irdma/irdma_if.c
 create mode 100644 drivers/infiniband/hw/irdma/main.c
 create mode 100644 drivers/infiniband/hw/irdma/main.h
 create mode 100644 drivers/infiniband/hw/irdma/osdep.h
 create mode 100644 drivers/infiniband/hw/irdma/pble.c
 create mode 100644 drivers/infiniband/hw/irdma/pble.h
 create mode 100644 drivers/infiniband/hw/irdma/protos.h
 create mode 100644 drivers/infiniband/hw/irdma/puda.c
 create mode 100644 drivers/infiniband/hw/irdma/puda.h
 create mode 100644 drivers/infiniband/hw/irdma/status.h
 create mode 100644 drivers/infiniband/hw/irdma/trace.c
 create mode 100644 drivers/infiniband/hw/irdma/trace.h
 create mode 100644 drivers/infiniband/hw/irdma/trace_cm.h
 create mode 100644 drivers/infiniband/hw/irdma/type.h
 create mode 100644 drivers/infiniband/hw/irdma/uda.c
 create mode 100644 drivers/infiniband/hw/irdma/uda.h
 create mode 100644 drivers/infiniband/hw/irdma/uda_d.h
 create mode 100644 drivers/infiniband/hw/irdma/uk.c
 create mode 100644 drivers/infiniband/hw/irdma/user.h
 create mode 100644 drivers/infiniband/hw/irdma/utils.c
 create mode 100644 drivers/infiniband/hw/irdma/verbs.c
 create mode 100644 drivers/infiniband/hw/irdma/verbs.h
 create mode 100644 drivers/infiniband/hw/irdma/ws.c
 create mode 100644 drivers/infiniband/hw/irdma/ws.h
 delete mode 100644 include/uapi/rdma/i40iw-abi.h
 create mode 100644 include/uapi/rdma/irdma-abi.h

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
