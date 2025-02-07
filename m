Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5671EA2CE97
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5B9484A3A;
	Fri,  7 Feb 2025 21:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lLitvtIcnKQG; Fri,  7 Feb 2025 21:01:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A895B849DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962078;
	bh=BY2ey8kDmCjLlRqs/CyUNKZE//Xx4a2ViU/4hXvRsig=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ErRf6r+BINGS6GCZo6EIcJtxgjAyfLTPBodbBVwbhaLy9jxkjepEE9DcEgHHLnn9Y
	 jqlhcdpKCLlOUzeSB+9kZ87f0RnYwLjWx9CzjF23R7sQUYKmv4STe2rXvLiAdnqdqL
	 f9aW/sz2xHlJJKq/oy1Hdlh12itUCShq4hTlNgDPTyH7qOKHY84wC2GQCf72hkUIZE
	 CYQdfv/qGLM62ls0T2vB2gxJavRbYjnbxnuOIRfl2peIBfOj0aWos6+oo32pd/MQCQ
	 oAdDfn782ZzjjJy6uBtbddehm46qWznG9RM/K+TCpwGJN6a3ySzQ7p114Ec+GI0nHt
	 DtRg5UZb9TrXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A895B849DE;
	Fri,  7 Feb 2025 21:01:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A14FE4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D20E42C99
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7EwkSgPuA8Ty for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4867A4143E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4867A4143E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4867A4143E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:20 +0000 (UTC)
X-CSE-ConnectionGUID: Wa2EU+RIQhSAwsR0hGiC1w==
X-CSE-MsgGUID: 2LMHWAjETd+HNioY8T7vYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451737"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451737"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:20 -0800
X-CSE-ConnectionGUID: 34C0oul1Q0mQnLtRAAtGdw==
X-CSE-MsgGUID: MzrsVY2MScq5uEMwMK5a5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238093"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:20 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:07 -0600
Message-Id: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957821; x=1770493821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GtGlxqXv+tsjAO8Caeb7ywfrHU4twoF3PXGRm0Pnm1k=;
 b=IiawNioQ0LfuvwQ3GGQqEcd7VndGduxUV46bs2LuJZM2KYJ3twUEd3pr
 iWeWDu47xDzZig75Hf5z5YTzceLGXpneKkHxcuasLOdEjy3mc7zxY3vpH
 4NCYvsuQwmaYyrI36+tLCwwUG5FGMVcaCP+BDQYzlBHhVg5v+yumb7TM3
 EUEV+i/PDzN+RYLtjRo6PA7z0TEX9lBivO/Clty/MZDSRWCo2qPlVyA99
 5jKg0p5J6A7NWtRMLiVZ2RVFTcb0pIWD0A7fVrWDlTV69dMVNaPYEY5v4
 6GQV++pYGoYjwEeqC+4ZDciWAC3UgnSTGwkSnnvOzMCIlsm2KwfD3xsR0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IiawNioQ
Subject: [Intel-wired-lan] [iwl-next,
 rdma v3 00/24] Add RDMA support for Intel IPU E2000 (GEN3)
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

This patch series is based on 6.14-rc1 and includes both netdev and RDMA
patches for ease of review. It can also be viewed here [1]. A shared pull
request will be sent for patches 1-7 following review.

The patch series introduces RDMA RoCEv2 support for the Intel Infrastructure
Processing Unit (IPU) E2000 line of products, referred to as GEN3 in the
irdma provider.  It supports both physical and virtual functions.
The irdma driver communicates with the device Control Plane (CP) to
discover capabilities and perform privileged operations through an
RDMA-specific messaging interface built atop the Infrastructure
Data-Plane Function (IDPF) mailbox and virtchannel protocol [2].

To support RDMA for E2000 product, the idpf driver requires the use of
the Inter-Driver Communication (IDC) interface which is currently already
in use between ice and irdma. With a second consumer, the IDC is
generalized to support multiple consumers and ice, idpf and irdma
are adapted to the IDC definitions.

The IPU model can host one or more logical network endpoints called vPorts
per PCI function that are flexibly associated with a physical port or an
internal communication port. irdma exposes a verbs device per vPort.

Other key highlights of this series as it pertains to GEN3 device include:

MMIO learning, RDMA capability negotiation and RDMA vectors
discovery between idpf and CP
PCI core device level RDMA resource initialization via
a GEN3 core auxiliary driver
Shared Receive Queue (SRQ) Support
Atomic Operations Support (Compare and Swap and Fetch and Add)
Completion Queue Element (CQE) Error and Flush Handling
Push Page Support

Changelog:

V3 series irdma changes:
* Move the call to get RDMA features just after CQP is created,
otherwise the feature flags are not defined before used.
* Move the check for supported atomic operations after reading
the RDMA feature info to correctly enable atomics.
* Round up to power of two the resource size for Read Responses and
Transmit Queue elements.
* Do not use the Work Queue element index passed in the Asynchronous Event
info to get SRQ context, because it is incorrect.
* Fix detection of Completion Queue (CQ) empty when 64-byte CQ elements
are enabled.
* Minor improvements and cleanup.

V3 series idpf changes:
* Reduce required minimum RDMA vectors to 2.

V2 RFC series includes only idpf changes:

* RDMA vector number adjustment
* Fix unplugging vport auxiliary device twice
* General cleanup and minor improvements

V2 RFC series is at https://lwn.net/Articles/987141/.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/linux.git/log/?h=idpf-rdma
[2] https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

Christopher Bednarz (1):
  RDMA/irdma: Discover and set up GEN3 hardware register layout

Dave Ertman (1):
  iidc/ice/irdma: Update IDC to support multiple consumers

Faisal Latif (2):
  RDMA/irdma: Add SRQ support
  RDMA/irdma: Add Atomic Operations support

Jay Bhat (1):
  RDMA/irdma: Add Push Page Support for GEN3

Joshua Hay (6):
  idpf: use reserved RDMA vectors from control plane
  idpf: implement core RDMA auxiliary dev create, init, and destroy
  idpf: implement RDMA vport auxiliary dev create, init, and destroy
  idpf: implement remaining IDC RDMA core callbacks and handlers
  idpf: implement IDC vport aux driver MTU change handler
  idpf: implement get LAN mmio memory regions

Krzysztof Czurylo (2):
  RDMA/irdma: Add GEN3 CQP support with deferred completions
  RDMA/irdma: Add GEN3 HW statistics support

Mustafa Ismail (3):
  RDMA/irdma: Refactor GEN2 auxiliary driver
  RDMA/irdma: Add GEN3 core driver support
  RDMA/irdma: Introduce GEN3 vPort driver support

Shiraz Saleem (7):
  RDMA/irdma: Add GEN3 support for AEQ and CEQ
  RDMA/irdma: Add GEN3 virtual QP1 support
  RDMA/irdma: Extend QP context programming for GEN3
  RDMA/irdma: Support 64-byte CQEs and GEN3 CQE opcode decoding
  RDMA/irdma: Restrict Memory Window and CQE Timestamping to GEN3
  RDMA/irdma: Extend CQE Error and Flush Handling for GEN3 Devices
  RDMA/irdma: Update Kconfig

Vinoth Kumar Chandra Mohan (1):
  RDMA/irdma: Add support for V2 HMC resource management scheme

 drivers/infiniband/hw/irdma/Kconfig           |    7 +-
 drivers/infiniband/hw/irdma/Makefile          |    4 +
 drivers/infiniband/hw/irdma/ctrl.c            | 1469 +++++++++++++++--
 drivers/infiniband/hw/irdma/defs.h            |  266 +--
 drivers/infiniband/hw/irdma/hmc.c             |   18 +-
 drivers/infiniband/hw/irdma/hmc.h             |   19 +-
 drivers/infiniband/hw/irdma/hw.c              |  357 ++--
 drivers/infiniband/hw/irdma/i40iw_hw.c        |    2 +
 drivers/infiniband/hw/irdma/i40iw_hw.h        |    2 +
 drivers/infiniband/hw/irdma/i40iw_if.c        |    3 +
 drivers/infiniband/hw/irdma/icrdma_hw.c       |    3 +
 drivers/infiniband/hw/irdma/icrdma_hw.h       |    5 +-
 drivers/infiniband/hw/irdma/icrdma_if.c       |  267 +++
 drivers/infiniband/hw/irdma/ig3rdma_hw.c      |  170 ++
 drivers/infiniband/hw/irdma/ig3rdma_hw.h      |   29 +
 drivers/infiniband/hw/irdma/ig3rdma_if.c      |  279 ++++
 drivers/infiniband/hw/irdma/irdma.h           |   23 +-
 drivers/infiniband/hw/irdma/main.c            |  323 +---
 drivers/infiniband/hw/irdma/main.h            |   42 +-
 drivers/infiniband/hw/irdma/osdep.h           |    4 +-
 drivers/infiniband/hw/irdma/pble.c            |   20 +-
 drivers/infiniband/hw/irdma/protos.h          |    1 +
 drivers/infiniband/hw/irdma/puda.h            |    4 +-
 drivers/infiniband/hw/irdma/type.h            |  224 ++-
 drivers/infiniband/hw/irdma/uda_d.h           |    5 +-
 drivers/infiniband/hw/irdma/uk.c              |  303 +++-
 drivers/infiniband/hw/irdma/user.h            |  268 ++-
 drivers/infiniband/hw/irdma/utils.c           |  133 +-
 drivers/infiniband/hw/irdma/verbs.c           |  873 ++++++++--
 drivers/infiniband/hw/irdma/verbs.h           |   47 +
 drivers/infiniband/hw/irdma/virtchnl.c        |  656 ++++++++
 drivers/infiniband/hw/irdma/virtchnl.h        |  189 +++
 .../net/ethernet/intel/ice/devlink/devlink.c  |   40 +-
 drivers/net/ethernet/intel/ice/ice.h          |    6 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   46 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |    4 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |    8 +-
 drivers/net/ethernet/intel/ice/ice_idc.c      |  255 ++-
 drivers/net/ethernet/intel/ice/ice_idc_int.h  |    5 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   18 +-
 drivers/net/ethernet/intel/idpf/Makefile      |    1 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  114 +-
 .../net/ethernet/intel/idpf/idpf_controlq.c   |   14 +-
 .../net/ethernet/intel/idpf/idpf_controlq.h   |   15 +-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   48 +-
 drivers/net/ethernet/intel/idpf/idpf_idc.c    |  490 ++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   93 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   32 +-
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |    8 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    1 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   44 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  189 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |    3 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |   52 +-
 include/linux/net/intel/idc_rdma.h            |  138 ++
 include/linux/net/intel/iidc.h                |  107 --
 include/linux/net/intel/iidc_rdma.h           |   67 +
 include/uapi/rdma/irdma-abi.h                 |   17 +-
 58 files changed, 6693 insertions(+), 1137 deletions(-)
 create mode 100644 drivers/infiniband/hw/irdma/icrdma_if.c
 create mode 100644 drivers/infiniband/hw/irdma/ig3rdma_hw.c
 create mode 100644 drivers/infiniband/hw/irdma/ig3rdma_hw.h
 create mode 100644 drivers/infiniband/hw/irdma/ig3rdma_if.c
 create mode 100644 drivers/infiniband/hw/irdma/virtchnl.c
 create mode 100644 drivers/infiniband/hw/irdma/virtchnl.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_idc.c
 create mode 100644 include/linux/net/intel/idc_rdma.h
 delete mode 100644 include/linux/net/intel/iidc.h
 create mode 100644 include/linux/net/intel/iidc_rdma.h

-- 
2.37.3

