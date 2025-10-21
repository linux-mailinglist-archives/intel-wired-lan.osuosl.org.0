Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3EEBF9335
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 01:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C817409E5;
	Tue, 21 Oct 2025 23:20:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id siAwZv_j7RbF; Tue, 21 Oct 2025 23:20:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EF9C409E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761088814;
	bh=ihwgaCoCfqKyRYuIxmddHVn+V/rqLerVn2nOFlPZjQk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HuM767NWja834zDO0aqVxYoQo96CTLs7sZQnYCNHyCVx2+jIkSS1AMFgBMOJUFddz
	 gfIFFs1BrLDmd2UNkYXAB/92LhhY1wuEU3BWU0hmjrcn0mXoItTAJblY5U/KbykWSK
	 vvAIaIXbPvjQLYSFinl8RN6LhRvH7fIfb8dS1aLGC673XS7SK60UuwSSnmdNeB4V6Z
	 euHHVKClb/8jISVAOpCdaBSNtK0r+eJznfFnEwWUkjsGIY+va34Ej7dijCzscNDyVH
	 VO/1PpjmD0RZWs4HM+bKcL5yVLXUtD8+nV8LgG4SnxvzTg+stR0u+EmnGHQe4ABVOI
	 00/C0IvpCrq8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EF9C409E7;
	Tue, 21 Oct 2025 23:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C084643F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAC2340D97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JKAOhQ6e5yDR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CDBEC40D6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDBEC40D6F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDBEC40D6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:11 +0000 (UTC)
X-CSE-ConnectionGUID: p8WdKpCySkCWFevvxtzfoA==
X-CSE-MsgGUID: 6DJBNlHeR52Vq1u0O1HD8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74665324"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74665324"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 16:20:11 -0700
X-CSE-ConnectionGUID: 6TdtskARQSiNezQLV8XLmA==
X-CSE-MsgGUID: EtelkaLQT76r+j+wATuKlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214352297"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa002.jf.intel.com with ESMTP; 21 Oct 2025 16:20:11 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue, 21 Oct 2025 16:30:46 -0700
Message-Id: <20251021233056.1320108-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761088812; x=1792624812;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qVMCjY2QkM8JoERwPFi7tBz4Ibd7sbmtbKBrJpNEjAk=;
 b=M8akgIMq8T/SgoU3CRdHvR1ta9PzSTi2FzQVYYWWNomv3OsZrQRVA50k
 +EHZrtXkUtWlxelmY2yqamc5emVcZNCCgGDsdmhcVHezK3h+C6S/VwN4/
 TGzjHhCJ5Zd1k4ZO8dZsXNZq028d0RN7rBjEgVTPDCGO9K1o7VEYa6gKL
 TnfIQIOZeQ6irTRdOBKl8ASIxyTvxUDWdBtjm0PK5bnUcvxsDqX7HDtjD
 dtXQyA/XFTofkrC1qwFlBNmV2PXyrDkHhFXB3LTSqB4uHXqoMvNcvLptz
 E1J7JrbtVi7SrfgGjky5Z9Q2vVFcX+gvGIrDBZL6/vLjxx0YHA89ahELQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M8akgIMq
Subject: [Intel-wired-lan] [PATCH iwl-next v9 00/10] refactor IDPF resource
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
idpf_vport structure. At the time of configuration, these
resources are accessed using vport pointer. Meaning, all the
config path functions are tied to the default queue and vector
resources of the vport.

There are use cases which can make use of config path functions
to configure queue and vector resources that are not tied to any
vport. One such use case is PTP secondary mailbox creation
(it would be in a followup series). To configure queue and interrupt
resources for such cases, we can make use of the existing config
infrastructure by passing the necessary queue and vector resources info.

To achieve this, group the existing queue and vector resources into
default resource group and refactor the code to pass the resource
pointer to the config path functions.

This series also includes patches which generalizes the send virtchnl
message APIs and mailbox API that are necessary for the implementation
of PTP secondary mailbox.

---
v9:
* move iterator declaration changes to separate commit

v8:
* rebase on AF_XDP series [1]
* drop one commit as it was no longer necessary
* add new commit ("idpf: remove vport pointer from queue sets")
to make recently introduced queue_sets compatible with resoure
refactor and corresponding API changes

v7:
* modify idpf_q_vec_rsrc declaration in idpf_vport struct to not
mess with memcpy in idpf_initiate_soft_reset
* reshuffle vport struct fields to avoid holes

v6:
* packed idpf_queue_id_reg_chunk struct
* fixed inconsistent use of caps/small case for kdoc
* initialized loop iterator inloop and used the right type
* moved adapter out of the loop in idpf_rxq_group_alloc

v5:
* update function parameters to pass chunks as needed
* revert back the 'idpf_is_feature_ena' changes
* remove redundant vport parameter in idpf_[add/del]_mac_filter
* refactor all send_virtchnl APIs to avoid accessing vport pointer
* refactor get_ptypes to avoid calling it for each vport

v4:
* introduce local idpf structure to store virtchnl queue chunks
* remove 'req_qs_chunks' field
* fix function doc comments to use caps or lower case letters

v3:
* update commit message of 6th patch

v2:
* fix kdoc issues (s/rss/RSS, add return statement)
* rename structure idpf_rsrc to idpf_q_vec_rsrc
* reshuffle struct members to avoid holes created in idpf_q_vec_rsrc and
idpf_vport structures
* introduce additional 2 patches to the series which generalizes the
send virtchnl message APIs and mailbox APIs
* fix unintialized usage of a variable in idpf_initiate_soft_reset
(reported by kernel bot)

[1]
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250908/050286.html

Joshua Hay (2):
  idpf: move some iterator declarations inside for loops
  idpf: remove vport pointer from queue sets

Pavan Kumar Linga (8):
  idpf: introduce local idpf structure to store virtchnl queue chunks
  idpf: introduce idpf_q_vec_rsrc struct and move vector resources to it
  idpf: move queue resources to idpf_q_vec_rsrc structure
  idpf: reshuffle idpf_vport struct members to avoid holes
  idpf: add rss_data field to RSS function parameters
  idpf: generalize send virtchnl message API
  idpf: avoid calling get_rx_ptypes for each vport
  idpf: generalize mailbox API

 drivers/net/ethernet/intel/idpf/idpf.h        |  177 +--
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   18 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   93 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  212 ++--
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |   17 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  735 ++++++------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   41 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   21 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1038 +++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   81 +-
 drivers/net/ethernet/intel/idpf/xdp.c         |   48 +-
 drivers/net/ethernet/intel/idpf/xdp.h         |    6 +-
 drivers/net/ethernet/intel/idpf/xsk.c         |   12 +-
 13 files changed, 1372 insertions(+), 1127 deletions(-)

-- 
2.39.2

