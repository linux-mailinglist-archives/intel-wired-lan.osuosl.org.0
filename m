Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE9EAB0585
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 23:50:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F03E83CA2;
	Thu,  8 May 2025 21:50:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLwcPr_p2cmS; Thu,  8 May 2025 21:50:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6246483CA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746741053;
	bh=9M977NC2nMeuHvVDp4JpjSnjsK/OYpyiAul8WWV8luo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=N7Au4VvPCzs/KBpfKxulVzWOUSV3d4n+5cZLkU2QsqFXMh48b+lQp8PRqlTCVj8cr
	 QfPbXvImSasqRZ34omK7UM8lRcuBD1/CHXAWXFpyAZUekHhSyhqmfAJWF0k+W56v7k
	 PIMibgWSX3Bm4v8qlqiVqlicNgihggrG1EhLb/U3SbjHe3I+jVkHTdH+6blTvRy9l6
	 wtCdLhgX/1iL6P1Osd8cbAKNc2i16fGz80EoJDtHXbwx6smA5dCkNkeS7M1bvwWe09
	 +XVvRbyF75c46JjbHY+1gEZs5RyOrdch0yIVFC0wJ5KVdbAHEzbEh9MmXhY/eJ+Hhs
	 OY4nM3Pfys8NA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6246483CA3;
	Thu,  8 May 2025 21:50:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 01E9C1A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E738F41525
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BugZBE0ns77o for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 21:50:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 49A8F4151D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49A8F4151D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49A8F4151D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 21:50:49 +0000 (UTC)
X-CSE-ConnectionGUID: v0wemF2NSIOSJMb8yE5c5Q==
X-CSE-MsgGUID: gQ1zu/LhTi28jQVbVGPyWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47808313"
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="47808313"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 14:50:49 -0700
X-CSE-ConnectionGUID: BJe7//yBQPyGVxmxil6ZTQ==
X-CSE-MsgGUID: HAPlfAI9QzGCptfkdwxFlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,273,1739865600"; d="scan'208";a="141534265"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa005.jf.intel.com with ESMTP; 08 May 2025 14:50:49 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Thu,  8 May 2025 14:50:04 -0700
Message-ID: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746741050; x=1778277050;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QKrDywDbuFUKtgOHlIuQ7LMMUreYpsFJHTwC8r+T6Dg=;
 b=c2jfzIH0Xda9IPCz78vWPtYQnOtAOYGWHIIOEdMDF177NFjQBsS6HBM2
 61l2YGYgpu6c4c7ZbQAjty5OoSRoneOalSEGpJEz3sAU7WMk7wHX++3C/
 RyL973X44W58eRMW07Te0eA8OA9KwbEup1hduhMJMy6HZ7i0KpbwSN6Bw
 tgFuu9i6o7fHIyxswUqvIeQ3t4j5MQobeCjujCc1ntvD7AyhXhsHF71SW
 vryqirkEPGiNWxycm66Seg9Lz5+DF4qW0Nq2Luu0l9PmBuCr876/8Oqsz
 +AYF0ga5SIVOnx8erj6vuRZvGi8S4zXnx1MYES11py+LKlSN31U/pGPs+
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c2jfzIH0
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/9] refactor IDPF resource
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

 drivers/net/ethernet/intel/idpf/idpf.h        |  152 ++-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   12 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   87 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  233 ++--
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |   17 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  639 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   36 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   15 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1130 ++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   81 +-
 10 files changed, 1252 insertions(+), 1150 deletions(-)

-- 
2.43.0

