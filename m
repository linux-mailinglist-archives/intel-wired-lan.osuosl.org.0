Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5D96CEC80
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 17:14:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22014841D3;
	Wed, 29 Mar 2023 15:14:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22014841D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680102870;
	bh=HARMh8Jep6cUGgi3WMXi0UymqgZjJP6scbAMjFaPjto=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kyTdeY+xSHvZtHU+aXF5IFlmiEIITsuV59NdKlhsG0gKO9ucRHdp5sfPXEyX75BC5
	 JGs70H9N9NbFc8IJCObp8E+xyPU9ylK3FfwJAXoSbPTk3XqZVb9I03+J8vkKrDbs7f
	 pCtqn3TLxhJa0l/Ekr1Uc0G1NH1J8/jUpEr7G90CnnN8BaN0K3hzsvmLNQpkx9dKxV
	 CSCgfFIZZT+YcbMlPKeDzQlRBYEOkbwc5e8V5c2EGr5/ksX4YIjxd3x2T+842lwZpF
	 VSno1siehB79Vbe1MxnDk+MrVgXhwP9JweNIw9tMCnYuDhdt96Teskk9si9SIDOXl6
	 PGd/i+eajEGaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XDcd3avFAQxf; Wed, 29 Mar 2023 15:14:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E327A8417D;
	Wed, 29 Mar 2023 15:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E327A8417D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DC491BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55CAD8418E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55CAD8418E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G78-5oOlXBsw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 14:07:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79B608418D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 79B608418D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:07:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="342480730"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="342480730"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 07:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748791338"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748791338"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by fmsmga008.fm.intel.com with ESMTP; 29 Mar 2023 07:06:23 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Mar 2023 07:03:49 -0700
Message-Id: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Mar 2023 15:14:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680098821; x=1711634821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DOIMPybVYLjZlX0A4mY/W1/H+1SGbgxMev7siSo6gQA=;
 b=UU3Rd/PYgjrOLBD+Y32NAAReUdpiqLdozbCqIzoQxKe8Qx1hdLvKRi6I
 dCQ/EoFhMjoEpnRr+36SzHgo124hVfbnyPTifA56dYPfBhUxrbN+opf3l
 3H2DwGFnpebkteerX7Vic9CeZ5LDq7x9T41X/WVreprSzOghktzCD3Wtk
 s7KhucadaphK8w7648uKUnxFVnKdsH5Q61zbtYlrR+GWe+b1ARRvPwQAc
 nmCd8JSgIvKJ8F8r+rClvMqcMXAq0G35D2A1tmq6eCgO9H/17Nhq+6+0K
 BY/Qv+m6faH+4tFhQYmqytrug8Wh0EFpmiH0yBAi8Px12vmRoYZPeyFDy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UU3Rd/PY
Subject: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series introduces the Infrastructure Data Path Function (IDPF)
driver. It is used for both physical and virtual functions. Except for
some of the device operations the rest of the functionality is the same
for both PF and VF. IDPF uses virtchnl version2 opcodes and structures
defined in the virtchnl2 header file which helps the driver to learn
the capabilities and register offsets from the device Control Plane (CP)
instead of assuming the default values.

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

 .../device_drivers/ethernet/intel/idpf.rst    |   46 +
 drivers/net/ethernet/intel/Kconfig            |   11 +
 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   18 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  734 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  644 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  131 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  190 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  179 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1325 +++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  124 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  293 +
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  128 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2551 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   85 +
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1262 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4850 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  838 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  180 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3802 +++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1153 ++++
 .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  644 +++
 25 files changed, 19394 insertions(+)
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
