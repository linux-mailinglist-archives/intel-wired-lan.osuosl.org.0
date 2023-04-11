Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B49D6DCEE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 03:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B1BF41789;
	Tue, 11 Apr 2023 01:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B1BF41789
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681175663;
	bh=bt7E7yTJ4pcWxXeAAgIjMaH0Kr7KdV9khnLxSQqPMTo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CH1Muji0L9Wd3aKgd7O4WIHI1HIa5ruilFumzg4uU1LY6X9p7rTtqYrojpgS6sk5y
	 wE4e3TV2VKHylSAQtQBmwdS4055G5evyeZwiaOvm3MelA7nzNZvJvxp6IU+QgE03yt
	 NX8R4rCHBNlowcKL1idk+FwDD0bvx3hD28YFZedOp/2OiLYSUzvtmRKiROKQv/XDSL
	 EhkPZqEVDXgudTwxPuNEPOZhlCb1UFnrqtMpAHPIVDhV9kJWLxCDyN4+0zQF18c68A
	 jhIdqEHZT1rvAxdLUKup+IMqvMevO1fVyVQAVpo1y0yDFhtMjCuOb6paUv1HJawCVR
	 zOOE7P9w1TuPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6OOkBDxLyiH; Tue, 11 Apr 2023 01:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DBFA41776;
	Tue, 11 Apr 2023 01:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DBFA41776
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 787771C3BA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 01:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A8C941785
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 01:14:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A8C941785
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k_BTzrw1up2k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 01:14:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38509409DE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 38509409DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 01:14:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="371339553"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="371339553"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 18:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="688431885"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="688431885"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga002.jf.intel.com with ESMTP; 10 Apr 2023 18:14:13 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Apr 2023 18:13:39 -0700
Message-Id: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681175656; x=1712711656;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x16NX1sN/D20IiVe2JjvS6050LCRL7cex35BntA2nH0=;
 b=MaZdGG+ov75iv5zga/RInuYGIX34lhWH8FLY7mIzKWXc4ddflGNUSt9y
 Xlfa5JJeZWREgVFDvsmnRnqmuv1qRXtTjt47L+w8jm/0TY/iQcKMkainD
 nyZGs0UfL+BhC3CN75LOW35TaCWk0Lwd7b/SdL8cQlglAWHizCYo/wM3t
 ZrPiTfagPzMc6MvZojuDWYj/RC1sJHKvzqCYGGklTSXXVmNvJc6Kvarxc
 u2huZOIbo2JhqNU5r3kjYpmzSvSCMokec3WPeJ4jvW/7EQVM7WbWbfRhn
 qpFojnfyBj2LxUJ+k0WYAFiKdw3NONEokHylajTFyRQ7yu/kURpSNG5O0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MaZdGG+o
Subject: [Intel-wired-lan] [PATCH net-next v2 00/15] Introduce Intel IDPF
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series introduces the Intel Infrastructure Data Path Function
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

v1 --> v2: link [1]
 * removed the OASIS reference in the commit message to make it clear
   that this is an Intel vendor specific driver
 * fixed misspells
 * used comment starter "/**" for struct and definition headers in
   virtchnl header files
 * removed AVF reference
 * renamed APF reference to IDPF
 * added a comment to explain the reason for 'no flex field' at the end of
   virtchnl2_get_ptype_info struct
 * removed 'key[1]' in virtchnl2_rss_key struct as it is not used
 * set VIRTCHNL2_RXDID_2_FLEX_SQ_NIC to VIRTCHNL2_RXDID_2_FLEX_SPLITQ
   instead of assigning the same value
 * cleanup unnecessary NULL assignment to the rx_buf skb pointer since
   it is not used in splitq model
 * added comments to clarify the generation bit usage in splitq model
 * introduced 'reuse_bias' in the page_info structure and make use of it
   in the hot path
 * fixed RCT format in idpf_rx_construct_skb
 * report SPEED_UNKNOWN and DUPLEX_UNKNOWN when the link is down
 * fixed -Wframe-larger-than warning reported by lkp bot in
   idpf_vport_queue_ids_init
 * updated the documentation in idpf.rst to fix LKP bot warning

[1] https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/

Pavan Kumar Linga (15):
  virtchnl: add virtchnl version 2 ops
  idpf: add module register and probe functionality
  idpf: add controlq init and reset checks
  idpf: add core init and interrupt request
  idpf: add create vport and netdev configuration
  idpf: continue expanding init task
  idpf: configure resources for TX queues
  idpf: configure resources for RX queues
  idpf: initialize interrupts and enable vport
  idpf: add splitq start_xmit
  idpf: add TX splitq napi poll support
  idpf: add RX splitq napi poll support
  idpf: add singleq start_xmit and napi poll
  idpf: add ethtool callbacks
  idpf: configure SRIOV and add other ndo_ops

 .../device_drivers/ethernet/intel/idpf.rst    |  162 +
 drivers/net/ethernet/intel/Kconfig            |   11 +
 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   18 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  734 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  644 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  131 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  188 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  179 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1330 +++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  124 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  293 +
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  128 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2551 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   85 +
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1262 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4861 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  854 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  180 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3821 +++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1201 ++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  666 +++
 25 files changed, 19629 insertions(+)
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
