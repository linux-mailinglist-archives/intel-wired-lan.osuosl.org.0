Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AF4AFD92A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 23:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3B7181F7A;
	Tue,  8 Jul 2025 21:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mh2S31O9X9aV; Tue,  8 Jul 2025 21:06:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9986881E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752008816;
	bh=R/gzkY7vfLageYRFGHBTL7E0RA4u8qzF5bsGTqxE1Sk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8ddVT9lxK81ZLT6c4ZSBhAOkS76o2kcqoHy2Nn8MHMPSoVBFY+Bc0zyjUNG6jrDGU
	 NF9vz2SRZu0EFgKF0nJLptOuPrmC8YbaY+SM/XZwMETei1T65ikH506S8WRVagq3rH
	 qp2GVSEzoIKx7wL/yJSHP50ciy27F3dBOGpzRKLrqcs4uKBceWanV6tiTvHNohhu/o
	 PDNFWUkQ/UpyUjeji8CfJOOyPLpKLMv2JUmWItbN6ExMLIIXvrhyfaAmcLmz2klZ0c
	 WzWzJLWhecZDsKQ//9VFXTdtlVUj8MCuqSRP9vAdrlbBtoT89Ti9NoTzEyTqQzHXoa
	 nxdMEu9cBwWGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9986881E7F;
	Tue,  8 Jul 2025 21:06:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD55F15F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 21:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE00E40B96
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 21:06:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vibn72p1FEuF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 21:06:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D2D8F40B51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2D8F40B51
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2D8F40B51
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 21:06:53 +0000 (UTC)
X-CSE-ConnectionGUID: ief41k4zT+WdeT1lUFkRgQ==
X-CSE-MsgGUID: Godor4tDQr6EYJE2U2C09g==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54391708"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="54391708"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 14:06:53 -0700
X-CSE-ConnectionGUID: I0N5iFn5RCK6VEwOZgZskg==
X-CSE-MsgGUID: T8vPMygtSNKhpCW2su6wtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="179276523"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 14:06:52 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Tue,  8 Jul 2025 16:05:48 -0500
Message-ID: <20250708210554.1662-1-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752008814; x=1783544814;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AVwBQylNK2PncxFUdAgKzpOfnswfruxyvv7gs/YAeDw=;
 b=C8NXFs21i/reKl6V3TpNnXa5zDzTYXJ5lFRwBkbjsJ9ogDIUZUxX8EUl
 fiZ4Y41bFfWUIHOYxFWwEUx2qyfq3KCWMsTfNKiIHeFSoZv/EcYzMjeKT
 WHyBcqHm0hGX5TVhoC1xsVq5eHRTsspBXu51GNxDAyCl52SuFvge/75vU
 hGhgvXIjviV2VlEiwO01yX7hvwFKldPN2MTwh1o22wp835O5LYDq3Y9Fd
 NT+KsMJdkB50H0tRLYBHNZLG8uFOaCoXUT4djxSOwPgjftVc7NXveh2tM
 mjgLoTwoij0apLDu7w2Wos7eyNtV6f8IdNMVVzCbon7Ha3e3F2hL8Cip4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C8NXFs21
Subject: [Intel-wired-lan] [iwl-next v3 0/6] Add RDMA support for Intel IPU
 E2000 in idpf
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

This idpf patch series is the second part of the staged submission for
introducing RDMA RoCEv2 support for the IPU E2000 line of products,
referred to as GEN3.

To support RDMA GEN3 devices, the idpf driver uses common definitions of
the IIDC interface and implements specific device functionality in
iidc_rdma_idpf.h.

The IPU model can host one or more logical network endpoints called vPorts
per PCI function that are flexibly associated with a physical port or an
internal communication port.

Other features as it pertains to GEN3 devices include:
* MMIO learning
* RDMA capability negotiation
* RDMA vectors discovery between idpf and control plane

These patches are split from the submission "Add RDMA support for Intel
IPU E2000 (GEN3)" [1] and are based on 6.16-rc1. The patches have been
tested on a range of hosts and platforms with a variety of general RDMA
applications which include standalone verbs (rping, perftest, etc.),
storage and HPC applications.

A shared pull request for net-next and rdma-next will be sent following review.

Changelog:

v3:
* Include export.h header file
* Use managed version of pci_request_region API

v2 at [5]:
* Minor improvements like variable rename, logging,
remove a redundant variable, etc.
* A couple of cdev_info fixes to properly free it in
error path and not to dereference it before NULL check.

Changes since split (v1) at [4]:
* Replace core dev_ops with exported symbols
* Align with new header split scheme (iidc_rdma.h common header
and iidc_rdma_idpf.h specific header)
* Align with new naming scheme (idc_rdma -> iidc_rdma)
* The idpf patches are submitted separately from the ice and
irdma changes.

At [3]:
* Reduce required minimum RDMA vectors to 2

At [2]:
* RDMA vector number adjustment
* Fix unplugging vport auxiliary device twice
* General cleanup and minor improvements

[1] https://lore.kernel.org/all/20240724233917.704-1-tatyana.e.nikolova@intel.com/
[2] https://lore.kernel.org/all/20240824031924.421-1-tatyana.e.nikolova@intel.com/
[3] https://lore.kernel.org/all/20250207194931.1569-1-tatyana.e.nikolova@intel.com/
[4] https://lore.kernel.org/all/20250523170435.668-1-tatyana.e.nikolova@intel.com/ 
[5] https://lore.kernel.org/all/20250612220002.1120-1-tatyana.e.nikolova@intel.com/


Joshua Hay (6):
  idpf: use reserved RDMA vectors from control plane
  idpf: implement core RDMA auxiliary dev create, init, and destroy
  idpf: implement RDMA vport auxiliary dev create, init, and destroy
  idpf: implement remaining IDC RDMA core callbacks and handlers
  idpf: implement IDC vport aux driver MTU change handler
  idpf: implement get LAN MMIO memory regions

 drivers/net/ethernet/intel/idpf/Makefile      |   1 +
 drivers/net/ethernet/intel/idpf/idpf.h        | 117 +++-
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  14 +-
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  19 +-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  49 +-
 drivers/net/ethernet/intel/idpf/idpf_idc.c    | 499 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 102 +++-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  32 +-
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   8 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  45 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 191 ++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   3 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  42 +-
 include/linux/net/intel/iidc_rdma_idpf.h      |  55 ++
 15 files changed, 1105 insertions(+), 73 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_idc.c
 create mode 100644 include/linux/net/intel/iidc_rdma_idpf.h

-- 
2.37.3

