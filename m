Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E7D5ACE2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jun 2019 20:54:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EED1D86B0B;
	Sat, 29 Jun 2019 18:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVUg3DSFGx-P; Sat, 29 Jun 2019 18:54:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8424586B67;
	Sat, 29 Jun 2019 18:54:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C56C1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jun 2019 18:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F43986B0B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jun 2019 18:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lT6R8f5S8LSc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jun 2019 18:54:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0282886AFD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jun 2019 18:54:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jun 2019 11:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,432,1557212400"; d="scan'208";a="185972847"
Received: from ssaleem-mobl.amr.corp.intel.com ([10.254.177.95])
 by fmsmga004.fm.intel.com with ESMTP; 29 Jun 2019 11:54:14 -0700
From: Shiraz Saleem <shiraz.saleem@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 29 Jun 2019 13:53:48 -0500
Message-Id: <20190629185405.1601-1-shiraz.saleem@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH rdma-next 00/17] Add unified Intel
 Ethernet RDMA driver (irdma)
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Shiraz Saleem" <shiraz.saleem@intel.com>

This patchset adds a unified Intel Ethernet RDMA driver that
supports a new network device E810 (iWARP and RoCEv2 capable)
and the existing X722 iWARP device. The driver architecture
provides the extensibility for future generations of Intel HW
supporting RDMA.

This driver obsoletes legacy X722 driver i40iw which is marked for
deprecation and extends the ABI already defined for i40iw. It is
backward compatible with legacy X722 rdma-core provider (libi40iw).

This series was built against the rdma for-next branch.

RFC --> v0:
* Rehashed the design to unify RDMA driver. irdma is registered as a
  platform driver capable of supporting RDMA capable devices added to
  the virtual platform bus by their individual netdev drivers i40e/ice.
  Listening to netdev notifiers or running netdev lists are no longer
  needed for attachment. There is no load order dependencies between
  netdev drivers and irdma in the new model.

  MFD architecture was also considered, and we selected the simpler
  platform model. Supporting a MFD architecture would require an
  additional MFD core driver, individual platform netdev, RDMA function
  drivers, and stripping a large portion of the netdev drivers into
  MFD core. The sub-devices registered by MFD core for function
  drivers are indeed platform devices.  

*Use netdev_to_ibdev API to reliably get iwdev in notifiers.
 Remove VSI dev list tracking as a result.
*Fixed build make W=1 issues, sparse endianness warnings, 0-day
 32-bit compile warnings.
*Test for userspaceness with udata and remove uobject references.
*Remove abstractions for memory allocators, dev_* and pr_* prints.
*Remove redundant castings in the driver.
*Relax barriers to a dma_wmb()/dma_rmb() since we are using coherent
 mappings.
*Clang-format run on various portions of the driver.
*Remove internal verb objects tracking from driver as its already done
 in IB core.
*Report correct values for max_send_wr and max_recv_wr in irdma_query_qp()
*Check and fail the call for invalid input values on irdma_create_qp().
*ABI fixups - __aligned_u64 on all u64s. Fix travis hit and removed
 irdma_hw_attrs struct out of ABI.
*Use IRDMA_RING_MOVE_HEAD_NO_CHECK on cq_ring
*Sort call tables, Kconfig, Makefiles
*Add CQ resize feature and few fixes since RFC was published.
*Use same DRIVER_ID enum for irdma as i40iw.
*Updated ib_copy_from_udata/ib_copy_to_udata calls to do a safe copy()
*Adapt to core handling verb object allocations and other core API changes
*devlink is used to switch between RoCE and iWARP on a per function basis

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

Shiraz Saleem (3):
  RDMA/irdma: Update MAINTAINERS file
  RDMA/irdma: Add Kconfig and Makefile
  RDMA/i40iw: Mark i40iw as deprecated

 MAINTAINERS                              |   10 +-
 drivers/infiniband/Kconfig               |    1 +
 drivers/infiniband/hw/Makefile           |    1 +
 drivers/infiniband/hw/i40iw/Kconfig      |    4 +-
 drivers/infiniband/hw/irdma/Kconfig      |   11 +
 drivers/infiniband/hw/irdma/Makefile     |   31 +
 drivers/infiniband/hw/irdma/cm.c         | 4514 ++++++++++++++++++++++
 drivers/infiniband/hw/irdma/cm.h         |  415 +++
 drivers/infiniband/hw/irdma/ctrl.c       | 5958 ++++++++++++++++++++++++++++++
 drivers/infiniband/hw/irdma/defs.h       | 2126 +++++++++++
 drivers/infiniband/hw/irdma/hmc.c        |  706 ++++
 drivers/infiniband/hw/irdma/hmc.h        |  219 ++
 drivers/infiniband/hw/irdma/hw.c         | 2563 +++++++++++++
 drivers/infiniband/hw/irdma/i40iw_hw.c   |  210 ++
 drivers/infiniband/hw/irdma/i40iw_hw.h   |  163 +
 drivers/infiniband/hw/irdma/i40iw_if.c   |  256 ++
 drivers/infiniband/hw/irdma/icrdma_hw.c  |   75 +
 drivers/infiniband/hw/irdma/icrdma_hw.h  |   63 +
 drivers/infiniband/hw/irdma/irdma.h      |  191 +
 drivers/infiniband/hw/irdma/irdma_if.c   |  426 +++
 drivers/infiniband/hw/irdma/main.c       |  531 +++
 drivers/infiniband/hw/irdma/main.h       |  639 ++++
 drivers/infiniband/hw/irdma/osdep.h      |  108 +
 drivers/infiniband/hw/irdma/pble.c       |  511 +++
 drivers/infiniband/hw/irdma/pble.h       |  136 +
 drivers/infiniband/hw/irdma/protos.h     |   96 +
 drivers/infiniband/hw/irdma/puda.c       | 1693 +++++++++
 drivers/infiniband/hw/irdma/puda.h       |  187 +
 drivers/infiniband/hw/irdma/status.h     |   70 +
 drivers/infiniband/hw/irdma/trace.c      |  113 +
 drivers/infiniband/hw/irdma/trace.h      |    4 +
 drivers/infiniband/hw/irdma/trace_cm.h   |  459 +++
 drivers/infiniband/hw/irdma/type.h       | 1701 +++++++++
 drivers/infiniband/hw/irdma/uda.c        |  391 ++
 drivers/infiniband/hw/irdma/uda.h        |   65 +
 drivers/infiniband/hw/irdma/uda_d.h      |  383 ++
 drivers/infiniband/hw/irdma/uk.c         | 1739 +++++++++
 drivers/infiniband/hw/irdma/user.h       |  451 +++
 drivers/infiniband/hw/irdma/utils.c      | 2333 ++++++++++++
 drivers/infiniband/hw/irdma/verbs.c      | 4347 ++++++++++++++++++++++
 drivers/infiniband/hw/irdma/verbs.h      |  199 +
 drivers/infiniband/hw/irdma/ws.c         |  396 ++
 drivers/infiniband/hw/irdma/ws.h         |   40 +
 include/uapi/rdma/irdma-abi.h            |  159 +
 include/uapi/rdma/rdma_user_ioctl_cmds.h |    1 +
 45 files changed, 34693 insertions(+), 2 deletions(-)
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
 create mode 100644 include/uapi/rdma/irdma-abi.h

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
