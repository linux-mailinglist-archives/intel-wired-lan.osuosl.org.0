Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26834AC2813
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 19:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0802C80D2D;
	Fri, 23 May 2025 17:06:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ag100pedZclM; Fri, 23 May 2025 17:06:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2A1980D3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748019963;
	bh=Y4Iz5NwZIsXtLEvK7zaVsoOOA0FW8K1n6XiacEG73wo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jRltDyDMRSx1NDaxsNLWegRRIeD4JYylnOwDYkyC8ob3TnBBq6f6zersy+fZWXcuM
	 4LISBpTRhtsWuuFE6g+TWybToeYw1+elgk40K4p35Ytp1Xk/HtZGgxffklTjUtJP9N
	 IEPh/fmiLd5K2tujPg7+lnepxgXVyucSAg6imDmRgTit/HtKAXXvrDiMbpxilO1pfT
	 7LudxJPNydSFreG7pLQeaYOVeCwxwZ+mC+QhTeJ+BZFdLnrXGODNeE9XYmwGloBkJe
	 d7osiBaqxgUhQlt62zkA4/E7a1XvuyCSPkIn2zFo0ntK94d7dfDdfQyme2offaCntm
	 2OK2Ef0R6swnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2A1980D3C;
	Fri, 23 May 2025 17:06:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 23A1768
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11BD940BB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xg5ATtaxBnim for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 17:06:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E83BF400F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E83BF400F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E83BF400F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:00 +0000 (UTC)
X-CSE-ConnectionGUID: ThQ6M4C/SqysXQ5V6URfJA==
X-CSE-MsgGUID: 31VuEkU0TkyXYkf7ZPnvWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60738373"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="60738373"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:06:00 -0700
X-CSE-ConnectionGUID: QJUtUc19R5WI37SD/xrM1A==
X-CSE-MsgGUID: 0eFFd0u0RQ6eytnK7PAJXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="164457417"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:05:59 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri, 23 May 2025 12:04:29 -0500
Message-ID: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748019961; x=1779555961;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GwH5EQqeA1kYy7kbiPpZ6eaEDgz5rff8/jLIjUHdyVc=;
 b=Qwz9grtiaZU3n0BZY7ez9ZMq6uQ5REgJI7YF/mZHbWKLTqeA0jWYyMOD
 8MVFz0DNEdG3lMfSOYn0qhyJICY7xqphvh5LyKJgHXQjeAg2YAGN+cbp5
 HgIuqdDzFYFLKVuje9tP+XnKnAPsjhiROre+QLz6G/xAxbK9xBDUf2yGH
 EEm5BoLi4cg5oqpTqMQZol9XDxaSV/r2toWYWiB/t7JI9LiGsmpdZmR/F
 21yLmsyr/J5W9+/d5IcVi3fh5AErmjb6EfduXR+lDL0SD4S1m/WL6grfl
 XP+r8RRCShUapWSXyJAPHE4UoKJtEq45yGh6ehuICzhN7L2kZAz57LNow
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qwz9grti
Subject: [Intel-wired-lan] [iwl-next 0/6] Add RDMA support for Intel IPU
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
and are based on 6.15-rc1 + "Prepare for Intel IPU E2000 (GEN3)" [4]. 
A shared pull request will be sent following review.

Changelog:

Changes since split:
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
[4] https://lore.kernel.org/all/20250509200712.2911060-1-anthony.l.nguyen@intel.com/

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
 drivers/net/ethernet/intel/idpf/idpf_idc.c    | 496 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  93 +++-
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  32 +-
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   8 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  45 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 190 ++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   3 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  52 +-
 include/linux/net/intel/iidc_rdma_idpf.h      |  55 ++
 15 files changed, 1104 insertions(+), 71 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_idc.c
 create mode 100644 include/linux/net/intel/iidc_rdma_idpf.h

-- 
2.37.3

