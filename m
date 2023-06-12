Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED76472D4CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 01:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EC9340984;
	Mon, 12 Jun 2023 23:10:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EC9340984
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686611455;
	bh=BJtdQbR6mupUyD99AOjJ5EmF4fFVqoSHkTXU+aP9rjI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Elltj1p2gHDlhZp8h9psBLge1r9SokeBF3GIkRZhMKbj75o5O578U2dtGv7MRgqZW
	 FPdI5Rgu4aDv00YhTIsDxCXV/lPAvPQTdbPp+KKOnpcGjRJMpeSG2drDyTndP5ysm2
	 vkMv2kSNx5F09ONBlQgeW1QxOODu58f9TeRkvt21oP+0ZbOypVa9S3gRm0uPPi/H6N
	 iCZRL6PAaDoGbTOqVqTCxe5aR2Nsi9DN3eKIsC9Ed16mPt8FqR2Dm8Cb860ASfisLm
	 d7ebVSVFF0A8q4N3N7PuABaJO5xlzfewYNkrAnj/2pfxd4s9Mg8sz5qzp31IWUjUpe
	 aM/l0bH3tip5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3ENiyFqe9cP; Mon, 12 Jun 2023 23:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C460B40983;
	Mon, 12 Jun 2023 23:10:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C460B40983
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 784061BF29A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F89A81E56
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F89A81E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zb0xkJtalQBp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 23:10:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25F3D81D18
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 25F3D81D18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:10:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="360662320"
X-IronPort-AV: E=Sophos;i="6.00,238,1681196400"; d="scan'208";a="360662320"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 16:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="855851760"
X-IronPort-AV: E=Sophos;i="6.00,238,1681196400"; d="scan'208";a="855851760"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.80.24])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2023 16:10:43 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Jun 2023 16:10:06 -0700
Message-Id: <20230612231021.39409-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686611446; x=1718147446;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vsgZZV5cFKMXvZqtD1aVbEeo9hFhlnM4k126hErsE9M=;
 b=Vp8zDctestZagNLkFobYF05L43oNRszDlCPR9Hc2c/APMVFhmZ5i8twF
 fzIw4z34lkcpTz+kvNEv2LKV/a16kuyN/KLWEYf96SouPoCWouSWhgNuc
 R1g8RIdx9UyNLxZJnStRxprx12ceccm6UkuhvUR4Q6yPtGdc027fRHwgR
 TcZOoYoDp+axqg7XGhKSB1ZbhXzd3Q+ACmKnWnmwsBerCfMp6BO3R2enW
 0oDOAWfqZ62aQsrVx0qZY2fjthkc3ykLspsstA3VVkLLs2mlT0b7+3DPl
 eqeC8Rl+Z0pcDbaO4Vz/jS/NbSa1dA/8oOIxsS2FGKO5UlLjIcMLv+rK8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vp8zDcte
Subject: [Intel-wired-lan] [PATCH iwl-next v7 00/15] Introduce Intel IDPF
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
  idpf: continue expanding init task
  idpf: initialize interrupts and enable vport

Phani Burra (1):
  idpf: add module register and probe functionality

 .../device_drivers/ethernet/index.rst         |    1 +
 .../device_drivers/ethernet/intel/idpf.rst    |  160 +
 drivers/net/ethernet/intel/Kconfig            |   10 +
 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   18 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  751 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  641 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  131 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  169 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  165 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1331 +++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  124 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  293 ++
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  128 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2362 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  271 +
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1251 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4604 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  852 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  164 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3802 ++++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1289 +++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  448 ++
 26 files changed, 19171 insertions(+)
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
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
