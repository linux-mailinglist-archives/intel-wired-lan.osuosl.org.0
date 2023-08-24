Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD777868F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 09:55:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 113496133F;
	Thu, 24 Aug 2023 07:55:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 113496133F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692863720;
	bh=lmgsIyWNgHNiXC1IZcnESeCPpeNnABHU/+oYP2mH5Ss=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wc2vRY366X/YGrOlEy9xByigiGLOTATK6Ofe15AieDp31xeT30K5HX9Kb6WdmfpE+
	 bVBhwAURd/+JX1tYB4dATgzCMR/qDiYm2gTMT4l4QURYCaKEz4RvngUgpQ+YDjfsH6
	 vg6URKvlefhbiuuZKTxf9unqf9dtPVsJyulLftqkQU8MAXw+Hm0KGHsF4un524+KQk
	 CMohDhcjrVfZY05Ozz1hpbkI11+OxGKGoKdFyFB924EkdCPrGqIhY5dCtWCo7LZYVK
	 j8CteLMBPB0oRcWL1JS4ZBqOQCRlrpQJQjeweqHJP7FNuHgpndh8UsTMxzP2qeaLn2
	 Czlvzjw1SRsXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id niznYp6qAGXV; Thu, 24 Aug 2023 07:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 907F56131B;
	Thu, 24 Aug 2023 07:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 907F56131B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A30A1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 226E081919
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 226E081919
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eWtXNjISBjcL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 07:55:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E09CC817AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E09CC817AE
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354705167"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354705167"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:55:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="772022512"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="772022512"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2023 00:55:06 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 15:54:45 +0800
Message-Id: <20230824075500.1735790-1-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823093158.782802-1-junfeng.guo@intel.com>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692863711; x=1724399711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9JDfLNsK36KVDWL7dh1yKr8983tD3qdVoOQ4o36eiWg=;
 b=SfGJNGiNA5bcvZx7tdWLmRc6NUY/upVsn2kRMznphpB5e0YS92JCeJtX
 BqXayLVULgyKI4wmiYIfCAdjF9oQE5q5pBzce1c9xM7vpxbQHuhLNoaT4
 VL71Z9Cu7yORoO1YCOV+8w9xf5jYZSHy+kslrGDbYztUcSMwsIfZ3Lk9L
 nmgxzJFXOlYYfOdINZH2YNxUUcCEr4TXW5+RxsncblqUoWGDRyRwALOEJ
 yv3ooSmZIR8wjTVKvK65DKseSz4P653+ifXMYx0ah89PbfpU5bIj2jwnC
 cYIaBbLZxwVSdEE/Fj9kI4mPAf3AHjR0l85VGaHOXWycQ+QnFmYmLYO+V
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SfGJNGiN
Subject: [Intel-wired-lan] [PATCH iwl-next v8 00/15] Introduce the Parser
 Library
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, qi.z.zhang@intel.com,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current software architecture for flow filtering offloading limited
the capability of Intel Ethernet 800 Series Dynamic Device
Personalization (DDP) Package. The flow filtering offloading in the
driver is enabled based on the naming parsers, each flow pattern is
represented by a protocol header stack. And there are multiple layers
(e.g., virtchnl) to maintain their own enum/macro/structure
to represent a protocol header (IP, TCP, UDP ...), thus the extra
parsers to verify if a pattern is supported by hardware or not as
well as the extra converters that to translate represents between
different layers. Every time a new protocol/field is requested to be
supported, the corresponding logic for the parsers and the converters
needs to be modified accordingly. Thus, huge & redundant efforts are
required to support the increasing flow filtering offloading features,
especially for the tunnel types flow filtering.

This patch set provides a way for applications to send down training
packets & masks (in binary) to the driver. Then these binary data
would be used by the driver to generate certain data that are needed
to create a filter rule in the filtering stage of switch/RSS/FDIR.

Note that the impact of a malicious rule in the raw packet filter is
limited to performance rather than functionality. It may affect the
performance of the workload, similar to other limitations in FDIR/RSS
on AVF. For example, there is no resource boundary for VF FDIR/RSS
rules, so one malicious VF could potentially make other VFs
inefficient in offloading.

The parser library is expected to include boundary checks to prevent
critical errors such as infinite loops or segmentation faults.
However, only implementing and validating the parser emulator in a
sandbox environment (like ebpf) presents a challenge.

The idea is to make the driver be able to learn from the DDP package
directly to understand how the hardware parser works (i.e., the
Parser Library), so that it can process on the raw training packet
(in binary) directly and create the filter rule accordingly.

Based on this Parser Library, the raw flow filtering of
switch/RSS/FDIR could be enabled to allow new flow filtering
offloading features to be supported without any driver changes (only
need to update the DDP package).


v8:
- Refactor bits revert functions with existing bitrev8()/bitrev8x4().

v7: https://lore.kernel.org/netdev/20230823093158.782802-1-junfeng.guo@intel.com/
- Move/Add below marco to the first appeared commit:
  ICE_PARSER_FLG_NUM and ICE_ERR_NOT_IMPL.

v6: https://lore.kernel.org/netdev/20230821081438.2937934-1-junfeng.guo@intel.com/
- Move `rt` field setting to the correct commit (first introduced).

v5: https://lore.kernel.org/netdev/20230821023833.2700902-1-junfeng.guo@intel.com/
- Update copyrights of new files to be 2023 only.
- Update patch set series prefix.
- Fix typo on patch 2 commit message.

v4: https://lore.kernel.org/intel-wired-lan/20230817094240.2584745-1-junfeng.guo@intel.com/
- Update cover letter series title.

v3: https://lore.kernel.org/intel-wired-lan/20230817093442.2576997-1-junfeng.guo@intel.com/
- Replace magic hardcoded values with macros.
- Use size_t to avoid superfluous type cast to uintptr_t in function
  ice_parser_sect_item_get.
- Prefix for static local function names to avoid namespace pollution.
- Use strstarts() function instead of self implementation.

v2: https://lore.kernel.org/intel-wired-lan/20230605054641.2865142-1-junfeng.guo@intel.com/
- Fix build warnings.

Junfeng Guo (15):
  ice: add parser create and destroy skeleton
  ice: init imem table for parser
  ice: init metainit table for parser
  ice: init parse graph cam tables for parser
  ice: init boost tcam and label tables for parser
  ice: init ptype marker tcam table for parser
  ice: init marker and protocol group tables for parser
  ice: init flag redirect table for parser
  ice: init XLT key builder for parser
  ice: add parser runtime skeleton
  ice: add internal help functions
  ice: add parser execution main loop
  ice: support double vlan mode configure for parser
  ice: add tunnel port support for parser
  ice: add API for parser profile initialization

 drivers/net/ethernet/intel/ice/Makefile       |  11 +
 drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 313 +++++++
 drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  52 ++
 drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  10 +-
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  14 +
 drivers/net/ethernet/intel/ice/ice_flg_rd.c   |  73 ++
 drivers/net/ethernet/intel/ice/ice_flg_rd.h   |  24 +
 drivers/net/ethernet/intel/ice/ice_imem.c     | 279 ++++++
 drivers/net/ethernet/intel/ice/ice_imem.h     | 217 +++++
 drivers/net/ethernet/intel/ice/ice_metainit.c | 181 ++++
 drivers/net/ethernet/intel/ice/ice_metainit.h | 104 +++
 drivers/net/ethernet/intel/ice/ice_mk_grp.c   |  51 ++
 drivers/net/ethernet/intel/ice/ice_mk_grp.h   |  17 +
 drivers/net/ethernet/intel/ice/ice_parser.c   | 562 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   | 140 +++
 .../net/ethernet/intel/ice/ice_parser_rt.c    | 843 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_parser_rt.h    |  73 ++
 .../net/ethernet/intel/ice/ice_parser_util.h  |  37 +
 drivers/net/ethernet/intel/ice/ice_pg_cam.c   | 397 +++++++++
 drivers/net/ethernet/intel/ice/ice_pg_cam.h   | 142 +++
 .../net/ethernet/intel/ice/ice_proto_grp.c    |  90 ++
 .../net/ethernet/intel/ice/ice_proto_grp.h    |  31 +
 drivers/net/ethernet/intel/ice/ice_ptype_mk.c |  73 ++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.h |  23 +
 drivers/net/ethernet/intel/ice/ice_tmatch.h   |  40 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_xlt_kb.c   | 262 ++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.h   |  80 ++
 29 files changed, 4141 insertions(+), 5 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_util.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tmatch.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.h

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
