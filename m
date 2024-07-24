Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5C893B898
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 23:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C107D406EB;
	Wed, 24 Jul 2024 21:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Anvjh4dBdsBI; Wed, 24 Jul 2024 21:36:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BF86406EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721857006;
	bh=psoWcjtoTcArNxHBVQK/wrzBlx2NT9JLbfT/pyj681g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RWg8AaT0CyQWF3y/h/Emz/vKSSRPvM+UtdxW0HbOwNj99kovqjpn4Uxw+fzXUCDj6
	 NxhstrG77wlJy56+fcEUM9R1boI6VdkP0DOkeEUtYwQ7Ajse5qDYK/KBW27l3iNcaz
	 4ZrASzA7XUQK8uJ3SCXpybcUV4blJtVVOw5riwmLd3ZPmxKG6em8AtN5IG9iZkJ6yM
	 1F+OyeH7AZqELlF5pcW5u/z0uo2lCxu5jv7LlHQ4O316fnDoHGUBMkXmdNX4w50YXd
	 +zBjiEkIihOmfwCV7nlDzUnREunf/rW/tsqTxWgcQLmM8rbdvlTFVcy4ddB/4S6Qjo
	 oPLA8X8Jc0FOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BF86406EE;
	Wed, 24 Jul 2024 21:36:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05A781BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 017B880BA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:36:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8wKOj5_FvuLs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 21:36:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D1DF080D12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1DF080D12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1DF080D12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:36:42 +0000 (UTC)
X-CSE-ConnectionGUID: 7GYC+Hr7QRSsUc+MYddhYQ==
X-CSE-MsgGUID: mf4bF97aQjyDzM2rGEl39Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19704037"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19704037"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:36:42 -0700
X-CSE-ConnectionGUID: IAUDStSTTzKDfBZMtahL3w==
X-CSE-MsgGUID: yIgbMm/+Swuo7UspD45aAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52579487"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.206])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:36:39 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:36:09 -0600
Message-ID: <20240724213623.324532-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721857003; x=1753393003;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A8yAgvkWWrp8ZCJvP4WVJ0gItCU4rZ/Ypb7eOyH7P4A=;
 b=Zn/29rm166igdHocrrVpjrdaiwdWuci5/jCQT9gwpSgnB4eCQZUmQoR9
 FgI+m6Mp1iTtOZtBQkckGAPQZYjXtAnXQyKgXIDEK2V+Bg1jb8bWgbwMD
 wcfmupNxatqEMhAFbQI4pmlA/4p86HJOfRk2TQiFjwFcTu0rhSSshbMdI
 IPHBonYd9d37Z06V2TjjLyez92qDdu/DOQWgTk5xe1YUlyGpqF2AstcJx
 TkCk2GN24kyKie46LKFvpKSVrNnmj7ixv+4s0Q4xMAX2tyX9mVjZu1rkS
 y9h/5WkTqsfPhX8+ExCFWXxFqTAJHucq9qjtGQlHOq2VKUSfG3b7uZSky
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zn/29rm1
Subject: [Intel-wired-lan] [PATCH iwl-next v4 00/13] ice: iavf: add support
 for TC U32 filters on VFs
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, horms@kernel.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Intel® Ethernet 800 Series is designed with a pipeline that has
an on-chip programmable capability called Dynamic Device Personalization
(DDP). A DDP package is loaded by the driver during probe time. The DDP
package programs functionality in both the parser and switching blocks in
the pipeline, allowing dynamic support for new and existing protocols.
Once the pipeline is configured, the driver can identify the protocol and
apply any HW action in different stages, for example, direct packets to
desired hardware queues (flow director), queue groups or drop.  

Patches 1-8 introduce a DDP package parser API that enables different
pipeline stages in the driver to learn the HW parser capabilities from 
the DDP package that is downloaded to HW. The parser library takes raw
packet patterns and masks (in binary) indicating the packet protocol fields
to be matched and generates the final HW profiles that can be applied at
the required stage. With this API, raw flow filtering for FDIR or RSS
could be done on new protocols or headers without any driver or Kernel
updates (only need to update the DDP package). These patches were submitted
before [1] but were not accepted mainly due to lack of a user.

Patches 9-11 extend the virtchnl support to allow the VF to request raw
flow director filters. Upon receiving the raw FDIR filter request, the PF
driver allocates and runs a parser lib instance and generates the hardware
profile definitions required to program the FDIR stage. These were also
submitted before [2].

Finally, patches 12 and 13 add TC U32 filter support to the iavf driver.
Using the parser API, the ice driver runs the raw patterns sent by the
user and then adds a new profile to the FDIR stage associated with the VF's
VSI. Refer to examples in patch 13 commit message.

[1]: Link: https://lore.kernel.org/netdev/20230904021455.3944605-1-junfeng.guo@intel.com/
[2]: Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20230814/036333.html 

---
v4:
  - Fix idx init value in ice_parser_create_table() (patch 2)
  - Use non-fixed width types for iterators in ice_disable_fd_swap()
    (patch 10)
  - Do not cast return value of ice_parser_create_table() (*void) in all
    callers (patch 2)
  - Add kdoc short descriptions (patch 11)
  - Add description to patch 12 message that a minor bug is also fixed
    (access FDIR list out of spinlock protection)
  - Document return values of iavf_add_cls_u32(), iavf_del_cls_u32() and
    iavf_setup_tc_cls_u32() (patch 13) 

v3:
  - Remove header inclusion re-order in ice_vf_lib.c (patch 11).
  - Fix couple of errors reported by smatch:
      - https://lore.kernel.org/all/202407070634.aTz9Naa1-lkp@intel.com/
      - https://lore.kernel.org/all/202406100753.38qaQzo9-lkp@intel.com/
  - Add "Return:" description in kernel-docs for all new functions.
  - Use new macro ICE_MI_GBDM_GENMASK_ULL for better readability (patch 2)
  - Remove unnecessary casts in ice_parser.c and ice_parser_rt.c. 

v2:
  - No changes, just cc netdev

Ahmed Zaki (2):
  iavf: refactor add/del FDIR filters
  iavf: add support for offloading tc U32 cls filters

Junfeng Guo (11):
  ice: add parser create and destroy skeleton
  ice: parse and init various DDP parser sections
  ice: add debugging functions for the parser sections
  ice: add parser internal helper functions
  ice: add parser execution main loop
  ice: support turning on/off the parser's double vlan mode
  ice: add UDP tunnels support to the parser
  ice: add API for parser profile initialization
  virtchnl: support raw packet in protocol header
  ice: add method to disable FDIR SWAP option
  ice: enable FDIR filters from raw binary patterns for VFs

 drivers/net/ethernet/intel/iavf/iavf.h        |   30 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   59 +-
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   |   89 +-
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |   13 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  154 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   25 +-
 drivers/net/ethernet/intel/ice/Makefile       |    2 +
 drivers/net/ethernet/intel/ice/ice_common.h   |    1 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      |   10 +-
 drivers/net/ethernet/intel/ice/ice_ddp.h      |   13 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  101 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |    7 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     |  108 +-
 drivers/net/ethernet/intel/ice/ice_flow.h     |    5 +
 drivers/net/ethernet/intel/ice/ice_parser.c   | 2428 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |  540 ++++
 .../net/ethernet/intel/ice/ice_parser_rt.c    |  862 ++++++
 drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |    8 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |    4 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  403 ++-
 include/linux/avf/virtchnl.h                  |   13 +-
 22 files changed, 4786 insertions(+), 90 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c

-- 
2.43.0

