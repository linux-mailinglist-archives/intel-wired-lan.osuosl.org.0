Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B7F782521
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 10:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67100403BF;
	Mon, 21 Aug 2023 08:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67100403BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692605695;
	bh=K5TnPZnXGrkaEhmbKgszHvo3E+CcggucWbc40MT+5p0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Av81nKzqpxQ674/3sli59nLOdv8Yg7l26MkHlz61fepQHkQIdOmciDJtgX8tKkGoI
	 RlVhP4jrvVbTalZb7X5gYoM+1I9WvR4UB1K5ATVukyBkjH37zWG4+tZ+oY12gXVTdL
	 vdbX1g3S+X8J2CE8hX1rntrBSq+IBHpYIjPPsDbLEc1ivMBCAOe3MLzccZkfKpOA8U
	 X+v7IoAi3g75fUc8WSi88M15qukCfXN2WYytdpaO31xxpWqwxvELFnBOEJs4H5u+tG
	 V2pYLZhGaZ4RQZuzQFjfJEpRIuQ8LBLPPO3uOkBCyoadiSSF4ZcdjDmlKorEi67vsf
	 Wy44g295STYJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7LbWxQpNlO5; Mon, 21 Aug 2023 08:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6E23409E6;
	Mon, 21 Aug 2023 08:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6E23409E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB1C81BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB863813FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB863813FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2h7sRUVm7Ul4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 08:14:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DBC1813FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DBC1813FA
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="376280314"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="376280314"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 01:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="685577350"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="685577350"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2023 01:14:42 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Aug 2023 16:14:23 +0800
Message-Id: <20230821081438.2937934-1-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230821023833.2700902-1-junfeng.guo@intel.com>
References: <20230821023833.2700902-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692605687; x=1724141687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ssyXh7Eo+nV994uxkYP746bnpbkmYjteurYZN3CbbMo=;
 b=RCWuh2DR30t4GEzp4tvpJI5Kq2iTrbok6/qLk8enyZHDp5wMC/TqmL6s
 ET+x4rp9XaU0Ex+QMBsz8duj21v7r75BXqg9/ouvu/89HiKX+jhCkttXv
 S/G0qL13zeaJ8y0LXAD6WqxIPvAjeb0fr2Jx7MaL3E+NtT+jh/Mt+L+TY
 iga9HMdWU8LxdiXJ2fMmcYM5M5ZYmQdm+TG4ktBYvNskrh1XLBB73Cxr+
 HVvnEC+1amsA4HcPvIpCNMj81W0/l5oGJIuplqnMiqwVOmQW6+4z/GsCj
 QBJkiCRRWlf11vdnpg3fTzKjYmaSDVIY4lQ0RfMTEb4r8iPEm+zT1vfL3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RCWuh2DR
Subject: [Intel-wired-lan] [PATCH iwl-next v6 00/15] Introduce the Parser
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
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org
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


v6:
- Move `rt` field setting to the correct commit (first introduced).

v5:
- Update copyrights of new files to be 2023 only.
- Update patch set series prefix.
- Fix typo on patch 2 commit message.

v4:
- Update cover letter series title.

v3:
- Replace magic hardcoded values with macros.
- Use size_t to avoid superfluous type cast to uintptr_t in function
 ice_parser_sect_item_get.
- Prefix for static local function names to avoid namespace pollution.
- Use strstarts() function instead of self implementation.

v2:
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
 drivers/net/ethernet/intel/ice/ice_common.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  10 +-
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  14 +
 drivers/net/ethernet/intel/ice/ice_flg_rd.c   |  73 ++
 drivers/net/ethernet/intel/ice/ice_flg_rd.h   |  24 +
 drivers/net/ethernet/intel/ice/ice_imem.c     | 279 ++++++
 drivers/net/ethernet/intel/ice/ice_imem.h     | 217 +++++
 drivers/net/ethernet/intel/ice/ice_metainit.c | 181 ++++
 drivers/net/ethernet/intel/ice/ice_metainit.h | 104 +++
 drivers/net/ethernet/intel/ice/ice_mk_grp.c   |  51 +
 drivers/net/ethernet/intel/ice/ice_mk_grp.h   |  17 +
 drivers/net/ethernet/intel/ice/ice_parser.c   | 562 +++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   | 140 +++
 .../net/ethernet/intel/ice/ice_parser_rt.c    | 877 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_parser_rt.h    |  73 ++
 .../net/ethernet/intel/ice/ice_parser_util.h  |  37 +
 drivers/net/ethernet/intel/ice/ice_pg_cam.c   | 397 ++++++++
 drivers/net/ethernet/intel/ice/ice_pg_cam.h   | 142 +++
 .../net/ethernet/intel/ice/ice_proto_grp.c    |  90 ++
 .../net/ethernet/intel/ice/ice_proto_grp.h    |  31 +
 drivers/net/ethernet/intel/ice/ice_ptype_mk.c |  73 ++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.h |  23 +
 drivers/net/ethernet/intel/ice/ice_tmatch.h   |  40 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_xlt_kb.c   | 262 ++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.h   |  80 ++
 29 files changed, 4173 insertions(+), 5 deletions(-)
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
