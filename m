Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F9C770C4A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 01:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E514B41E91;
	Fri,  4 Aug 2023 23:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E514B41E91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691191242;
	bh=i23mhZQCGHYG1BR4ZTUOEQ88t36dPkF/ALZXdFOEWuE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=clDnMwMnsCekRPDzi4y9rJxECU5XJFH3YlkKuprybIdAXlgWrYuEtlGT2mlGNYZYG
	 eEpC343NNxSg9Qec5bqNwcwLWWtnhmTKxENvaDu/LsarMTtnB8Fzx5mFPEahzOUIhv
	 dpCNKzd1WhavBFMWkWn49LfRsLAn+IVidbadomP0Y5Ql1BcutgKa9pWjPPx4ph0qMg
	 wy8d9zOHA3ejfZttZwm2nVvhiYocfUBryRWNcdyqDjBm31+WLNJo+m7QEmQ/YWNrcJ
	 OupqJXzlfli5B6qUkgcA0v7RGsjo1DUHBVaz6c0w5xVP+ChGXpa8IKr0smDAtupmrM
	 Uw+n/9m0foSIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rmhSHi5nGggo; Fri,  4 Aug 2023 23:20:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9819F41D8C;
	Fri,  4 Aug 2023 23:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9819F41D8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDE171BF327
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 23:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A77F40A52
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 23:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A77F40A52
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0e48XFVsLjje for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 23:20:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF3C540448
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 23:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF3C540448
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="401226405"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="401226405"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 16:20:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="853984303"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="853984303"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2023 16:20:22 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Aug 2023 16:19:13 -0700
Message-Id: <20230804231929.168064-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691191224; x=1722727224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mdNvIIj9NzuGltRucnPo2Xqqqj36DGtDegqkHGaDU1Q=;
 b=E5B1LJQKOc9yc5LVhXyvJzP4zivHzBQQ6C0366sgxFt0w+/i8PKZhIA2
 9Zu3e25jNKSomcD8dpNscMXYTOKu5KqRTZdcjs2nZ3BQEGa/x0rDLM1A0
 AzWT5h24+uCLnkFBrWNzNKNTp8cs2doIJKdsZdQHs5aod+K8KO6UGBubR
 gWiP5CTa5YWiluLxlAV5kqS5ZUjXjWWxgrdzYzylz7qq5H/LL6xZDTlcD
 xFpZgIaW5Y+qP+vRR8L5/P+dKAO9dZiRy1E4WjCmtmm+sS9oSm0ICmN7v
 vrgC9hIS7wlIjoVDzkYqAF2g4kD5F17AEmsxyHioMaqPuREggItTBxNVG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E5B1LJQK
Subject: [Intel-wired-lan] [PATCH iwl-next v9 00/15] Introduce Intel IDPF
 driver
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
Cc: willemb@google.com, decot@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series introduces the Intel(R) Infrastructure Data Path Function
(IDPF) driver. It is used for both physical and virtual functions. Except
for some of the device operations the rest of the functionality is the
same for both PF and VF. IDPF uses virtchnl version2 opcodes and
structures defined in the virtchnl2 header file which helps the driver
to learn the capabilities and register offsets from the device
Control Plane (CP) instead of assuming the default values.

The format of the series follows the driver init flow to interface open.
To start with, probe gets called and kicks off the driver initialization
by spawning the 'vc_event_task' work queue which in turn calls the
'hard reset' function. As part of that, the mailbox is initialized which
is used to send/receive the virtchnl messages to/from the CP. Once that is
done, 'core init' kicks in which requests all the required global resources
from the CP and spawns the 'init_task' work queue to create the vports.

Based on the capability information received, the driver creates the said
number of vports (one or many) where each vport is associated to a netdev.
Also, each vport has its own resources such as queues, vectors etc.
From there, rest of the netdev_ops and data path are added.

IDPF implements both single queue which is traditional queueing model
as well as split queue model. In split queue model, it uses separate queue
for both completion descriptors and buffers which helps to implement
out-of-order completions. It also helps to implement asymmetric queues,
for example multiple RX completion queues can be processed by a single
RX buffer queue and multiple TX buffer queues can be processed by a
single TX completion queue. In single queue model, same queue is used
for both descriptor completions as well as buffer completions. It also
supports features such as generic checksum offload, generic receive
offload (hardware GRO) etc.
---
v8 -> v9:
 (patch 1):
 * s/virtcnl/virtchnl
 * removed the kernel doc for the error code definitions that dont exist
 * reworded the summary part in the virtchnl2 header
 (patch 3):
 * don't set local variable to NULL on error
 * renamed sq_send_command_out label with err_unlock
 * don't use __GFP_ZERO in dma_alloc_coherent
 (patch 4):
 * introduced mailbox workqueue to process mailbox interrupts
 (patch 3, 4, 5, 6, 7, 8, 9, 11, 15):
 * removed unnecessary variable 0-init
 (patch 3, 5, 7, 8, 9, 15):
 * removed defensive programming checks wherever applicable
 * removed IDPF_CAP_FIELD_LAST as it can be treated as defensive
   programming
 (patch 3, 4, 5, 6, 7):
 * replaced IDPF_DFLT_MBX_BUF_SIZE with IDPF_CTLQ_MAX_BUF_LEN
 (patch 2 to 15):
 * add kernel-doc for idpf.h and idpf_txrx.h enums and structures
 (patch 4, 5, 15):
 * adjusted the destroy sequence of the workqueues as per the alloc
   sequence
 (patch 4, 5, 9, 15):
 * scrub unnecessary flags in 'idpf_flags'
   - IDPF_REMOVE_IN_PROG flag can take care of the cases where
     IDPF_REL_RES_IN_PROG is used, removed the later one
   - IDPF_REQ_[TX|RX]_SPLITQ are replaced with struct variables
   - IDPF_CANCEL_[SERVICE|STATS]_TASK are redundant as the work queue
     doesn't get rescheduled again after 'cancel_delayed_work_sync'
   - IDPF_HR_CORE_RESET is removed as there is no set_bit for this flag
   - IDPF_MB_INTR_TRIGGER is removed as it is not needed anymore with the
     mailbox workqueue implementation
 (patch 7 to 15)
 * replaced the custom buffer recycling code with page pool API
 * switched the header split buffer allocations from using a bunch of
   pages to using one large chunk of DMA memory
 * reordered some of the flows in vport_open to support page pool
 (patch 8, 12):
 * don't suppress the alloc errors by using __GFP_NOWARN
 (patch 9):
 * removed dyn_ctl_clrpba_m as it is not being used
 (patch 14):
 * introduced enum idpf_vport_reset_cause instead of using vport flags
 * introduced page pool stats

v7 -> v8:
 (patch 5):
 * instead of void, used 'struct virtchnl2_create_vport' type for
   vport_params_recvd and vport_params_reqd and removed the typecasting
 * used u16/u32 as needed instead of int for variables which cannot be
   negative and updated in all the places whereever applicable
 (patch 6):
 * changed the commit message to "add ptypes and MAC filter support"
 * used the sender Signed-off-by as the last tag on all the patches
 * removed unnecessary variables 0-init
 * instead of fixing the code in this commit, fixed it in the commit
   where the change was introduced first
 * moved get_type_info struct on to the stack instead of memory alloc
 * moved mutex_lock and ptype_info memory alloc outside while loop and
   adjusted the return flow
 * used 'break' instead of 'continue' in ptype id switch case

v6 --> v7:
 (patch 2):
 * added "Intel(R)" to the DRV_SUMMARY and Makefile.
 (patch 4, 5, 6, 15):
 * replaced IDPF_VC_MSG_PENDING flag with mutex 'vc_buf_lock' for the
   adapter related virtchnl opcodes.
 * get the mutex lock in the virtchnl send thread itself instead of
   in receive thread.
 (patch 5, 6, 7, 8, 9, 11, 14, 15):
 * replaced IDPF_VPORT_VC_MSG_PENDING flag with mutex 'vc_buf_lock' for
   the vport related virtchnl opcodes.
 * get the mutex lock in the virtchnl send thread itself instead of
   in receive thread.
 (patch 6):
 * converted get_ptype_info logic from 1:N to 1:1 message exchange for
   better handling of mutex lock.
 (patch 15):
 * introduced 'stats_lock' spinlock to avoid concurrent stats update.

iwl-next:
v8 - https://lore.kernel.org/intel-wired-lan/20230616011539.85875-1-pavan.kumar.linga@intel.com/
v7 - https://lore.kernel.org/intel-wired-lan/20230612231021.39409-1-pavan.kumar.linga@intel.com/
v6 - https://lore.kernel.org/netdev/20230523002252.26124-1-pavan.kumar.linga@intel.com/
v5 - https://lore.kernel.org/netdev/20230513225710.3898-1-emil.s.tantilov@intel.com/
v4 - https://lore.kernel.org/netdev/20230508194326.482-1-emil.s.tantilov@intel.com/
v3 - https://lore.kernel.org/netdev/20230427020917.12029-1-emil.s.tantilov@intel.com/
v2 - https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.kumar.linga@intel.com/
v1 - https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/

Alan Brady (4):
  idpf: configure resources for TX queues
  idpf: configure resources for RX queues
  idpf: add RX splitq napi poll support
  idpf: add ethtool callbacks

Joshua Hay (5):
  idpf: add controlq init and reset checks
  idpf: add splitq start_xmit
  idpf: add TX splitq napi poll support
  idpf: add singleq start_xmit and napi poll
  idpf: configure SRIOV and add other ndo_ops

Pavan Kumar Linga (5):
  virtchnl: add virtchnl version 2 ops
  idpf: add core init and interrupt request
  idpf: add create vport and netdev configuration
  idpf: add ptypes and MAC filter support
  idpf: initialize interrupts and enable vport

Phani Burra (1):
  idpf: add module register and probe functionality

 .../device_drivers/ethernet/index.rst         |    1 +
 .../device_drivers/ethernet/intel/idpf.rst    |  160 +
 drivers/net/ethernet/intel/Kconfig            |   12 +
 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   18 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  932 ++++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  621 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  169 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  164 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1363 ++++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  124 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  293 ++
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  128 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2357 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  285 ++
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1182 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4303 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 1028 ++++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  163 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3769 +++++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1266 +++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  448 ++
 26 files changed, 19118 insertions(+)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/idpf.rst
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ethtool.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2.h
 create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
