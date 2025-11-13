Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6A8C54E6A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 01:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDF4640C35;
	Thu, 13 Nov 2025 00:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id parkhcQliiRP; Thu, 13 Nov 2025 00:31:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00BA040B99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762993861;
	bh=KQaoyvn1IQ7N13EqXOWbBH8hF15Q48YafBWTmGlnL00=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=H0LeTbouarRIQkP40EsSVmHk+tnARgyy9FNV0pa9lXo9eTJ5FAWi/mTR8WBBFavpe
	 5YCHOMQCURdj77MpEkd9Sl+jbNgEi3wh70NTN3hPAsppQJ3wi3BZ2vVslMMIaXTRoN
	 iqKzkGFhAmLyWe3N3mhuCAJUTShA/UPR5ceO78BCM4taBY+pp3z3YPlpb4djfLDRrS
	 gWoqliF2BD/VAIYG2xkRGgfrqYh3nLqiJBvESyPzRWWHR3eCk8FJJGZHZ+/YvcgBIc
	 coj9t6krlfkKGFTdzdEIa4VNxHB0tfpKSbgirSzvEmyJnpY5Au0DZPN3Ch/LqCaMOb
	 wl+SX075fh5tw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00BA040B99;
	Thu, 13 Nov 2025 00:31:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 09AA4158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEE3060866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:30:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OvxQ1HdHd6lD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 00:30:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3C6060651
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3C6060651
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3C6060651
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:30:57 +0000 (UTC)
X-CSE-ConnectionGUID: qLqVu7XrQJyq4DwEROHEQQ==
X-CSE-MsgGUID: ocBTyLGtSSSD/O0ZYiSz+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="82465646"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="82465646"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 16:30:56 -0800
X-CSE-ConnectionGUID: AJCU0pI1R8+guqM+HWsmSg==
X-CSE-MsgGUID: 1XI4YxzURBCorGfNQo7+Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="190099550"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa010.fm.intel.com with ESMTP; 12 Nov 2025 16:30:56 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Wed, 12 Nov 2025 16:41:33 -0800
Message-Id: <20251113004143.2924761-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762993858; x=1794529858;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bqiGwZWBSOW8OWX12O0Etl/S678/8vxVit3LLhrgjBA=;
 b=eiGm94fiD88pTXpSN6D5jF3zbVo82jYGxS3RM/tj1FOaNS723lsqnIAG
 mPrszdYlR7n8QFFNAVQ/nmQYvtD+VR/XdHXmK539pQbJWjY6U3GM6knUp
 6MHgftVa0JzzkgVxAG84LQxbXWqfEt0V4ArLSAMgP3JVN0/c4Rf9vjgUd
 nCLYZVisshQqj+Zv3pXBFbrY1HoSSDRsQLcGMQ725CU9zaZ+aegtgDYnx
 It1VLhIid3zpxooagYPnbNxx7cYFF9B1kgM99HvtXjQbEtq1lktnDrG3L
 Xk1cXkCQ+wS1dBQFBJGaHEzUD6NnJOpVNuFqVeaZI43v6WxrvMV0s3SsG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eiGm94fi
Subject: [Intel-wired-lan] [PATCH iwl-next v10 00/10] refactor IDPF resource
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
v10:
* resolved queue_chunk memory leak and added queue_chunk deinit helper
func
* rebased on tip of dev-queue 

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
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1045 +++++++++--------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   88 +-
 drivers/net/ethernet/intel/idpf/xdp.c         |   48 +-
 drivers/net/ethernet/intel/idpf/xdp.h         |    6 +-
 drivers/net/ethernet/intel/idpf/xsk.c         |   12 +-
 13 files changed, 1386 insertions(+), 1127 deletions(-)

-- 
2.39.2

