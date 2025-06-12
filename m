Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE5BAD7DFE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 00:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAF7682003;
	Thu, 12 Jun 2025 22:00:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DYWO6aaX0k1W; Thu, 12 Jun 2025 22:00:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8C6681F9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749765621;
	bh=XQKhqpqcNXSj/Ve9qkrCl/iKtBoKtrhAMeKFU2xYAdQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yS3CHRKPtt4BOVwc/2GIM0+4Z5onZeL1lymf8FWYGWQMF8/6lT4qbHpAJXB3WyK/o
	 sYvEJ0qoedYH3FP8wyKgGVjTL6ulLrr8M8kP3T43CfT0BPRxtXQl09GFLQVbaJQpJh
	 akzwVExpWUOcV6wADMFEKkYwNsBiHLfBUji65wvL8e8IH6ukbiC6y1B9wyhWobi5uF
	 ohsPSWJICADzUhqoypReyGEZLE5O+1IbHxej7tJ1dxJK3Y6sMa69ULlfShT2bHHXpS
	 J3gsLXv7uKcm0rq0Z2w2EL9is6kWPlQXL4C7C7XxajPmoU6sU98sy1M5SiBKRHhYZF
	 gK8GpDh+qvEgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8C6681F9A;
	Thu, 12 Jun 2025 22:00:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B49CF183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E82881F84
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7FtQu3VESP6s for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 22:00:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D287A81F33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D287A81F33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D287A81F33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:18 +0000 (UTC)
X-CSE-ConnectionGUID: F8/u/VO1TW2DD8+09rOpng==
X-CSE-MsgGUID: +AJB1ur/Td2+fOsdsokd3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51078253"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51078253"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 15:00:18 -0700
X-CSE-ConnectionGUID: 8tBik7dNRJa+BRcL0p5WIA==
X-CSE-MsgGUID: moOzaooKQvmuuFAUHnY+FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148004195"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 15:00:17 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Thu, 12 Jun 2025 16:59:56 -0500
Message-ID: <20250612220002.1120-1-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749765618; x=1781301618;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yn9phey9bqAiHFmyBz3Povli4APEk34jXJQdbpqV9lI=;
 b=DFxyi2axob3Q/gA7nR1U4pBZdH8vd1TRdRSrL+p0LRHwy4JdS23dzNpR
 xkgmRBkeKSD43f1h0zqetIjaICrymBbmE8vPhMlT2OZHW+u5np8P6th3h
 H2GqgUq9E/TjwNPcJ9oJAkZJlLVheGfbOwdEP8qQ8m9a/pK3ZNO1TfYbn
 x+K/l2C4LKrf4Rig2VqbG9Hbu4hditD19+NkT4Vm/DzSwDSiCns++KZVs
 zqHnTP/ZVAdIiYH3LRZDKwkq8SEP4VDNAoMHNakaPtMwojJAYgn8Jg6h0
 OiXabcusQhBMv9nD2gFdSRiQzGt+L9Rm49hhmWTgqPR5BQwwggXSqUdhe
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DFxyi2ax
Subject: [Intel-wired-lan] [iwl-next v2 0/6] Add RDMA support for Intel IPU
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

This idpf patch series is the second part of the staged submission
for introducing RDMA RoCEv2 support for the IPU E2000 line of products,
referred to as GEN3.

To support RDMA GEN3 devices, the idpf driver uses
common definitions of the IIDC interface and implements
specific device functionality in iidc_rdma_idpf.h.

The IPU model can host one or more logical network endpoints called
vPorts per PCI function that are flexibly associated with a physical
port or an internal communication port.

Other features as it pertains to GEN3 devices include:
* MMIO learning
* RDMA capability negotiation
* RDMA vectors discovery between idpf and control plane

These patches are split from the submission
"Add RDMA support for Intel IPU E2000 (GEN3)" [1]
and are based on 6.16-rc1. A shared pull request for net-next and
rdma-next will be sent following review.

Changelog:

v2:
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

Joshua Hay (6):
  idpf: use reserved RDMA vectors from control plane
  idpf: implement core RDMA auxiliary dev create, init, and destroy
  idpf: implement RDMA vport auxiliary dev create, init, and destroy
  idpf: implement remaining IDC RDMA core callbacks and handlers
  idpf: implement IDC vport aux driver MTU change handler
  idpf: implement get LAN MMIO memory regions

 drivers/net/ethernet/intel/idpf/Makefile      |   1 +
 drivers/net/ethernet/intel/idpf/idpf.h        | 117 ++++-
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  14 +-
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  19 +-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  49 +-
 drivers/net/ethernet/intel/idpf/idpf_idc.c    | 497 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 102 +++-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  32 +-
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   8 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  45 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 190 ++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   3 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  42 +-
 include/linux/net/intel/iidc_rdma_idpf.h      |  55 ++
 15 files changed, 1102 insertions(+), 73 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_idc.c
 create mode 100644 include/linux/net/intel/iidc_rdma_idpf.h

-- 
2.31.1

