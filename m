Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D96AFBF94
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 02:58:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D69D54193C;
	Tue,  8 Jul 2025 00:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LxzQgYKOXzSN; Tue,  8 Jul 2025 00:58:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 359E141951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751936332;
	bh=o3lXHpYYX2Wn0EimQe+x/NlcU0nw1yrrJY0pxxObcXk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jp3RpXwKqqDCkocBixz4xnv89oksLNWzDoBjLVg7VYopjg1ANhmMlOXmc14qrJ1zZ
	 RNhJX8GE5tYD4w3J/aawdfUfhRz6OL8sgltr5fGG6N9z+BS95ZNP8inA0bYSaiJlcE
	 TCf3TcARvA5edGXcrN9fk0Ta2sllBHnKXFWSrpRFYpfcGqnfMXxlTAHZi2NXxcxzPC
	 EbfepCeuWcr/g3c3meoNLgznz0iN+FcedRFstXWA0y1gnuKj2Kgq0otMk6wMkQEiEW
	 t0dAFeYDNh+JW8F8DKpaQh1Zb03abfokyswj4hwXM/OZI7MEaMmiBiOcZICSKmr20H
	 /NnKf8Vazaonw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 359E141951;
	Tue,  8 Jul 2025 00:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 832EE12E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7454641912
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Amqtev1ejkZw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 00:58:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B9B88418DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9B88418DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9B88418DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:47 +0000 (UTC)
X-CSE-ConnectionGUID: jwHZHGP7TD+3F0bNFOKP7w==
X-CSE-MsgGUID: UPqEzbaiTDai1klwhMI0wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54307575"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="54307575"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 17:58:47 -0700
X-CSE-ConnectionGUID: KCOQZagBT4+GEy/9ZFDEVw==
X-CSE-MsgGUID: IEHNjzK0Qv6cy2T3M9V/eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="159695486"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa003.jf.intel.com with ESMTP; 07 Jul 2025 17:58:47 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Mon,  7 Jul 2025 17:58:28 -0700
Message-ID: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751936330; x=1783472330;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bUhAh8LTQyY10BGUrHxxxUVPT3mQLLu4lH8R8TKPS1c=;
 b=cInEoR7j0CbjJENscLjDN/70p5kRVk4xUnt7wUIyyKiI2gDkN8AszJ0d
 YdwHDImS8No+5IGT9SwURpKz2HOjej1Kqmz5B5C+gnROh8jws94YBEMKO
 8OnVh3MHZx4a7zSREPSLBVtzZroNtW0FDHGDmvlOD5MXI2yjBtUO82WVT
 NEcWNiKDyTZnv2UNQgwYx4U2gMKFCdl4SzZHNgWjl+UFsWioeW3BFFI4t
 KwxkKS7JV0UQiScOEs4Un86YtQGmu+OFUhNbIAN/xv53w8tvGH9v8vKjg
 ifVpxX5uMXQNKvM5fKC/rWy3t+PaNRUwL4Kd5XCYazLyOusalan2+bJpR
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cInEoR7j
Subject: [Intel-wired-lan] [PATCH iwl-next v6 0/9] refactor IDPF resource
 access
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

Queue and vector resources for a given vport, are stored in the
idpf_vport structure. At the time of configuration, these resources are
accessed using vport pointer. Meaning, all the config path functions
are tied to the default queue and vector resources of the vport.

There are use cases which can make use of config path functions to
configure queue and vector resources that are not tied to any vport.
One such use case is PTP secondary mailbox creation (it would be in a
followup series). To configure queue and interrupt resources for such
cases, we can make use of the existing config infrastructure by passing
the necessary queue and vector resources info.

To achieve this, group the existing queue and vector resources into
default resource group and refactor the code to pass the resource
pointer to the config path functions.

This series also includes patches which generalizes the send virtchnl
message APIs and mailbox API that are necessary for the implementation
of PTP secondary mailbox.

---
v6:
* rebase on top of XDP series

v4:
* avoid returning an error in idpf_vport_init if PTP timestamp caps are
  not supported
* re-flow the commit messages and cover letter to ~72chars per line
  based on off-list feedback from Paul Menzel <pmenzel@molgen.mpg.de>

v3:
* rebase on top of libeth XDP and other patches

v2:
* rebase on top of PTP patch series


Pavan Kumar Linga (9):
  idpf: introduce local idpf structure to store virtchnl queue chunks
  idpf: use existing queue chunk info instead of preparing it
  idpf: introduce idpf_q_vec_rsrc struct and move vector resources to it
  idpf: move queue resources to idpf_q_vec_rsrc structure
  idpf: reshuffle idpf_vport struct members to avoid holes
  idpf: add rss_data field to RSS function parameters
  idpf: generalize send virtchnl message API
  idpf: avoid calling get_rx_ptypes for each vport
  idpf: generalize mailbox API

 drivers/net/ethernet/intel/idpf/idpf.h        |  175 ++-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   18 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   87 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  237 ++--
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |   17 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  653 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   37 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   21 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1118 ++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   81 +-
 drivers/net/ethernet/intel/idpf/xdp.c         |   33 +-
 drivers/net/ethernet/intel/idpf/xdp.h         |    6 +-
 12 files changed, 1293 insertions(+), 1190 deletions(-)

-- 
2.43.0

