Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACADDBD6B41
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 01:10:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BCE74148A;
	Mon, 13 Oct 2025 23:10:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SOODbOg7_Ae5; Mon, 13 Oct 2025 23:10:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E95841486
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760397006;
	bh=wwAYualKWzED6oy0V0mkxW2gV2O3a8jr3c48z3x+Pyk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RXk0nl/2Ksavy2TszIwVbKXOlql69hmXzcGMSwesfu56RcxmVMQH3siwW3Hz3Hf2B
	 G+lRZ60am5ftI79vfvfSmh6FNfRnacMQRKAjBfJc+dJsuIB4Bur4qmw2LBod6SJgai
	 Fi6LKI1dJTEpwvG1Gds9G6F03zrzBIYJ7a+TkF8u4svcS/d3b8RoPoifnu/1pC0NIi
	 2untL+VZJMaCrm+yIC4LskqB5RQ0aK79mDkBHLYG7E7lTnBQ0OH5g9XsrBib16GA8m
	 6NIvQ2vTwvLiqYOBwLebBXR4s3cHjpXbSLFEyzaP6G5mIdjmBil3m6bm5ddJ9zlvgF
	 yUSYad87ZOZNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E95841486;
	Mon, 13 Oct 2025 23:10:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D2592294
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B87A680DC9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mrXJYLXWTAdW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 23:10:04 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 13 Oct 2025 23:10:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E6AB80D25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E6AB80D25
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E6AB80D25
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 23:10:04 +0000 (UTC)
X-CSE-ConnectionGUID: mM/7hMTVQ72JpcX2gkoTwA==
X-CSE-MsgGUID: ACqvPsokQ1eJeWhOZRtIjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="79989109"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="79989109"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 16:02:57 -0700
X-CSE-ConnectionGUID: 3cdnoytjSbGjq3npE0hreg==
X-CSE-MsgGUID: YltNQUsTQFiPONOnvq+Yzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181404260"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa007.fm.intel.com with ESMTP; 13 Oct 2025 16:02:56 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon, 13 Oct 2025 16:13:32 -0700
Message-Id: <20251013231341.1139603-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760397005; x=1791933005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eIyFFXXBADs2ijaffsyOfGDvJdtStiL1xOwS3fHjbCA=;
 b=YQR0OnWsmH+c8Tku8UipYXp2g3la/aeRrI+j5gK/gJdj5vkpo5stR9Vc
 fdTD61Jf4oUrrmxq3awfb9DxKPLckfi9RXU0y2uaK0t5C+RYH/okDfJsf
 onOc/L95xzVCk8QS5kvMZZqelkNGmkrb6Br+p4hpwgsdnFadVb6SL/fe5
 LLe5nlRdCjPKwYXyfKR+qK3C8tqrt8N+K1acLmPrJFCviwG3NpeAoH6ip
 zblr4T1wqzeknjgWgptdxNFsPwbC4Vzw3siY85SJrijyniDN6QwXqXNgc
 oUG6LK4QuFJrZoNLe4MMuYbhl1AkVD05iw1rMu0fRjWok7PWJ/1nAiZ1E
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YQR0OnWs
Subject: [Intel-wired-lan] [PATCH iwl-next v8 0/9] refactor IDPF resource
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

Joshua Hay (1):
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
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  727 ++++++------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   41 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   21 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1038 +++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   81 +-
 drivers/net/ethernet/intel/idpf/xdp.c         |   48 +-
 drivers/net/ethernet/intel/idpf/xdp.h         |    6 +-
 drivers/net/ethernet/intel/idpf/xsk.c         |   12 +-
 13 files changed, 1368 insertions(+), 1123 deletions(-)

-- 
2.39.2

