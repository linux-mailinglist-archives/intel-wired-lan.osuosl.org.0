Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFIsIjR7wWkQTQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D38CE2FA300
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E84D440C2E;
	Mon, 23 Mar 2026 17:41:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id blDHQPKTa7ek; Mon, 23 Mar 2026 17:41:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00B8340C30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774287664;
	bh=BO5VvO5oSKe9B5mUdQjVoChNyd6ROpFwW7ijy6Cz91Q=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WwkFOiu8JQD1Zw4Fiim9SXioBdVAbFz3rzHxfjQuzBWs8cHQes+hYSKYXhRuBzFJG
	 pmpjU1ASS72ZB7cHdiqfbHJ8s7aCsmZ8sJt14K2GM+2sKVPF3yHGHLOmG0HhWc0wgb
	 I4O+sKZjLPZqvdJYc84S8wm3C/bYB3GRPNGR24zv0HBlm5+FOfRS7PeHU1e/MOpEoA
	 L6CoCkMMTeyRr8ys7rnmBR7YDtYZWYHgczqNX6Pltq17TGIgU2WVNFh3DROmjVN2OC
	 snyfrtpNd6Ex/KovR0gIMU4bz5cohrmRWpq7d2Qr9mC7VwaWCpk7qNnz8I2yGdyz4K
	 pYNWd+n9YvoEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00B8340C30;
	Mon, 23 Mar 2026 17:41:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B9BE353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D40F81CD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id unaiLXRP4H1i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 17:41:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54C6F81C58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54C6F81C58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54C6F81C58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:01 +0000 (UTC)
X-CSE-ConnectionGUID: ELXK49m/Tu24MeZJ7lRBtg==
X-CSE-MsgGUID: ZiJW3ROnSUmQ1WMASAJM+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75484619"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75484619"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 10:41:00 -0700
X-CSE-ConnectionGUID: cRtpfw+TSweToxmCf3WbcA==
X-CSE-MsgGUID: VU3nZgdwSwC8pnIHLxMuRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="228576615"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 23 Mar 2026 10:40:55 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BBB16312F6;
 Mon, 23 Mar 2026 17:40:52 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 23 Mar 2026 18:40:31 +0100
Message-ID: <20260323174052.5355-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774287661; x=1805823661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qYWxev8vleVpmgYJPWrmDWTpnQtgSMVl5ovVUlobR9c=;
 b=jjyTgDzOr6oechA0DmW3XCRIo6KHQgHD9TGNuTNWjLTJg9/RJVdK+X+u
 eebwXSb+MZBx0fa3/mBin+2jSkHetnRkWunE6UzwVtcZfJTdiwxpEhEOR
 S1oeFLyI2+k7kqdmVnaVHpUkae0FVYPHVLU+i/p2A8YteUehmtKaIz4vk
 DB3+L/YGkt4sFuazuooBK8eom03Z7y6C6Igqwp9JBQwVGeBZr4IZTUVWJ
 5x6TElGvFqjotgFPTfA4Nw1+SCoakjwTSpkXCMhvNXalw865FNhwuYGGS
 5GwXvB6INbKVzXkMknssZI1XhspIBchCaW1GBFYhsKfJ6Rdocz3fYKWcT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jjyTgDzO
Subject: [Intel-wired-lan] [PATCH iwl-next v6 00/14] Introduce iXD driver
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D38CE2FA300
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series adds the iXD driver, which supports the Intel(R)
Control Plane PCI Function on Intel E2100 and later IPUs and FNICs.
It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
exposed by the same card. The reason for the separation is to be able
to offload the control plane to the host different from where the data
plane is running.

This is the first phase in the release of this driver where we implement the
initialization of the core PCI driver. Subsequent phases will implement
advanced features like usage of idpf ethernet aux device, link management,
NVM update via devlink, switchdev port representors, data and exception path,
flow rule programming, etc.

The first phase entails the following aspects:

1. Additional libie functionalities:
Patches 1-5 introduce additional common library API for drivers to
communicate with the control plane through mailbox communication.
A control queue is a hardware interface which is used by the driver
to interact with other subsystems (like firmware). The library APIs
allow the driver to setup and configure the control queues to send and
receive virtchnl messages. The library has an internal bookkeeping
(XN API) mechanism to keep track of the send messages. It supports both
synchronous as well as asynchronous way of handling the messages. The
library also handles the timeout internally for synchronous messages
using events. This reduces the driver's overhead in handling the timeout
error cases.

The current patch series supports only APIs that are needed for device
initialization. These include APIs in the libie_pci module:
* Allocating/freeing the DMA memory and mapping the MMIO regions for
  BAR0, read/write APIs for drivers to access the MMIO memory

and libie_cp module:
* Control queue initialization and configuration
* Transport initialization for bookkeeping
* Blocking and asynchronous mailbox transactions

Once the mailbox is initialized, the drivers can send and receive virtchnl
messages to/from the control plane.

The modules above are not supposed to be linked witn the main libie library,
but do share the folder with it.

2. idpf :
Patches 6-9 refactor the idpf driver to use the libie APIs for control
queue configuration, virtchnl transaction, device initialization and
reset and adjust related code accordingly.

3. ixd:
Patches 11-14 add the ixd driver and implement multiple pieces of the
initialization flow as follows:
* Add the ability to load
* A reset is issued to ensure a clean device state, followed by
  initialization of the mailbox
* Device capabilities:
  As part of initialization, the driver has to determine what the device is
  capable of (ex. max queues, vports, etc). This information is obtained from
  the firmware and stored by the driver.
* Enable initial support for the devlink interface

v5->v6:
* improved failure handling and input validation
* removed cp version from devlink in ixd
* patch 8 requires retest

v4->v5:
* rebase on top of queue resources refactor
* overwrite idpf's memory regions management that was merged in the meantime
* introduce libie_pci_unmap_fltr_regs()
* rebase on top on RDMA patchset - patches 8 & 9
* use pcim_* helpers in libie_pci (patch 3)
* fix issue with reset not being triggered (reported by Emil) - patch 8
* introduce idpf_send_mb_msg_kfree function to handle cases, where
  idpf allocates buffers on different size for the same command - patch 8

v3->v4:
* non-trivial rebase affecting patch 1 (moving headers) and idpf refactoring
  patches

v2->v3:
* non-trivial rebase affecting idpf refactoring patches
* add include/linux/intel under both Tony and NETWORKING DRIVERS
* due to rebase, in libie account for libeth_rx now using netmem instead
  of plain pages
* make libie_ctlq_release_rx_buf() take only one argument, as the producing
  queue is not actually needed to release a page pool buffer
* fix return value not being set in idpf_send_get_rx_ptype_msg()
* fix kdoc comments, so libie and ixd generate it cleanly
* separate idpf refactoring into 2 patches: pci+mmio and ctlq+xn
* suplement idpf refactoring commit message with information about module size
  and resource usage changes
* reformat commit messages to reduce the number of wasted lines

v1->v2:
* rename libeth_cp and libeth_pci to libie_cp and libie_pci respectively,
  move them into an appropriate folder
* rebase on top of recent PTP changes, this alters idpf refactor
* update maintainers after moving headers
* cast resource_size_t to unsigned long long when printing
* add ixd devlink documentation into index
* fix xn system kdoc problems
* fix indentation in libeth_ctlq_xn_deinit()
* fix extra kdoc member vcxn_mngr in idpf_adapter

Amritha Nambiar (1):
  ixd: add devlink support

Larysa Zaremba (5):
  idpf: make mbx_task queueing and cancelling more consistent
  idpf: print a debug message and bail in case of non-event ctlq message
  ixd: add basic driver framework for Intel(R) Control Plane Function
  ixd: add reset checks and initialize the mailbox
  ixd: add the core initialization

Pavan Kumar Linga (4):
  libeth: allow to create fill queues without NAPI
  idpf: remove 'vport_params_reqd' field
  idpf: refactor idpf to use libie_pci APIs
  idpf: refactor idpf to use libie control queues

Phani R Burra (3):
  libie: add PCI device initialization helpers to libie
  libie: add control queue support
  libie: add bookkeeping support for control queue messages

Victor Raj (1):
  virtchnl: create 'include/linux/intel' and move necessary header files

 .../device_drivers/ethernet/index.rst         |    1 +
 .../device_drivers/ethernet/intel/ixd.rst     |   39 +
 Documentation/networking/devlink/index.rst    |    1 +
 Documentation/networking/devlink/ixd.rst      |   30 +
 MAINTAINERS                                   |    6 +-
 drivers/infiniband/hw/irdma/i40iw_if.c        |    2 +-
 drivers/infiniband/hw/irdma/icrdma_if.c       |    2 +-
 drivers/infiniband/hw/irdma/ig3rdma_if.c      |    2 +-
 drivers/infiniband/hw/irdma/main.c            |    2 +-
 drivers/infiniband/hw/irdma/main.h            |    2 +-
 drivers/net/ethernet/intel/Kconfig            |    2 +
 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/i40e/i40e.h        |    4 +-
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c |    2 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |    2 +-
 .../net/ethernet/intel/i40e/i40e_prototype.h  |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |    4 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |    2 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |    2 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |    2 +-
 .../net/ethernet/intel/iavf/iavf_adminq_cmd.h |    2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c |    2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |    2 +-
 .../net/ethernet/intel/iavf/iavf_prototype.h  |    2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |    2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |    2 +-
 drivers/net/ethernet/intel/iavf/iavf_types.h  |    4 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |    2 +-
 drivers/net/ethernet/intel/ice/ice.h          |    2 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |    2 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |    2 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    2 +-
 drivers/net/ethernet/intel/ice/ice_flow.h     |    2 +-
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |    4 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |    2 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |    2 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |    2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |    2 +-
 .../net/ethernet/intel/ice/virt/virtchnl.h    |    2 +-
 drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |    2 -
 drivers/net/ethernet/intel/idpf/idpf.h        |  103 +-
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  621 ------
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  144 --
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  169 --
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  101 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   28 +-
 drivers/net/ethernet/intel/idpf/idpf_idc.c    |   38 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   69 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  117 +-
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    4 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   99 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1820 +++++++----------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   95 +-
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  304 ++-
 drivers/net/ethernet/intel/ixd/Kconfig        |   15 +
 drivers/net/ethernet/intel/ixd/Makefile       |   13 +
 drivers/net/ethernet/intel/ixd/ixd.h          |   58 +
 drivers/net/ethernet/intel/ixd/ixd_ctlq.c     |  149 ++
 drivers/net/ethernet/intel/ixd/ixd_ctlq.h     |   33 +
 drivers/net/ethernet/intel/ixd/ixd_dev.c      |   89 +
 drivers/net/ethernet/intel/ixd/ixd_devlink.c  |   97 +
 drivers/net/ethernet/intel/ixd/ixd_devlink.h  |   44 +
 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |   68 +
 drivers/net/ethernet/intel/ixd/ixd_lib.c      |  166 ++
 drivers/net/ethernet/intel/ixd/ixd_main.c     |  147 ++
 drivers/net/ethernet/intel/ixd/ixd_virtchnl.c |  178 ++
 drivers/net/ethernet/intel/ixd/ixd_virtchnl.h |   12 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |    2 +-
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |    2 +-
 drivers/net/ethernet/intel/libeth/rx.c        |   12 +-
 drivers/net/ethernet/intel/libie/Kconfig      |   14 +
 drivers/net/ethernet/intel/libie/Makefile     |    8 +
 drivers/net/ethernet/intel/libie/adminq.c     |    2 +-
 drivers/net/ethernet/intel/libie/controlq.c   | 1195 +++++++++++
 drivers/net/ethernet/intel/libie/fwlog.c      |    2 +-
 drivers/net/ethernet/intel/libie/pci.c        |  208 ++
 drivers/net/ethernet/intel/libie/rx.c         |    2 +-
 include/linux/{net => }/intel/i40e_client.h   |    0
 include/linux/{net => }/intel/iidc_rdma.h     |    0
 include/linux/{net => }/intel/iidc_rdma_ice.h |    0
 .../linux/{net => }/intel/iidc_rdma_idpf.h    |    0
 include/linux/{net => }/intel/libie/adminq.h  |    0
 include/linux/intel/libie/controlq.h          |  424 ++++
 include/linux/{net => }/intel/libie/fwlog.h   |    2 +-
 include/linux/intel/libie/pci.h               |   56 +
 include/linux/{net => }/intel/libie/pctype.h  |    0
 include/linux/{net => }/intel/libie/rx.h      |    0
 include/linux/{avf => intel}/virtchnl.h       |    0
 .../idpf => include/linux/intel}/virtchnl2.h  |    0
 .../linux/intel}/virtchnl2_lan_desc.h         |    0
 include/net/libeth/rx.h                       |    4 +-
 97 files changed, 4196 insertions(+), 2876 deletions(-)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/ixd.rst
 create mode 100644 Documentation/networking/devlink/ixd.rst
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
 delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
 create mode 100644 drivers/net/ethernet/intel/ixd/Kconfig
 create mode 100644 drivers/net/ethernet/intel/ixd/Makefile
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_ctlq.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_ctlq.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_dev.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lib.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_main.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.c
 create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.h
 create mode 100644 drivers/net/ethernet/intel/libie/controlq.c
 create mode 100644 drivers/net/ethernet/intel/libie/pci.c
 rename include/linux/{net => }/intel/i40e_client.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma_ice.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma_idpf.h (100%)
 rename include/linux/{net => }/intel/libie/adminq.h (100%)
 create mode 100644 include/linux/intel/libie/controlq.h
 rename include/linux/{net => }/intel/libie/fwlog.h (98%)
 create mode 100644 include/linux/intel/libie/pci.h
 rename include/linux/{net => }/intel/libie/pctype.h (100%)
 rename include/linux/{net => }/intel/libie/rx.h (100%)
 rename include/linux/{avf => intel}/virtchnl.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)

-- 
2.47.0

