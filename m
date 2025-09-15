Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43390B57D87
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 15:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D199C822BC;
	Mon, 15 Sep 2025 13:39:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O1cANpxwiNGk; Mon, 15 Sep 2025 13:39:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 182B2822EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757943576;
	bh=zO0Z1J1UJmLYnx8Y4F3NawXD9kXlFSGS7/t73Qka4o8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IhzyUn7PMj5f+T4LCLLmGs4WwmjU7EVclk8t8L8mTB4hH/eCi3bBXEOCORNBXRcmf
	 hQhkPL0K2tY2fpJuNpB9O4GgcQwJz2F6f3Zj6s9R9kBoLlwmDQyOViqIZD8I6jqD5A
	 8semcII5AteRWH+DAoUfTw+lOazcUmGpjMxg7v+yeosK38AASw6q/e0bLFEHUUFVUw
	 SBfr7im3dz0hFmvHb/aYEOA6CyiOlWpdi2Q3xZJW0j0vQ7QWewmHsg5kjArps6LTnH
	 b+HPaRg//WQoI3ceVTc9r1wzhPkvvLmftERR5XS+m0odcQ4lu1SI64eK/b4Pia1+lm
	 qYgNiFjNa2ZNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 182B2822EB;
	Mon, 15 Sep 2025 13:39:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DDA81F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 13:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B294612C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 13:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ignjiNxPn6O0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 13:39:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4AE766118D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AE766118D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AE766118D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 13:39:32 +0000 (UTC)
X-CSE-ConnectionGUID: 9ZUlO7xaQ1Kw1rInm8xlzA==
X-CSE-MsgGUID: UJjdq08rQya87bmVHtuySw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64008071"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64008071"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:39:31 -0700
X-CSE-ConnectionGUID: EPy7YuN9QjyBDN3JXNmn5g==
X-CSE-MsgGUID: vby4lyzjQQa2CIF5JqX6/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="205421474"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 15 Sep 2025 06:39:29 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 mschmidt@redhat.com, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Mon, 15 Sep 2025 13:39:23 +0000
Message-ID: <20250915133928.3308335-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757943573; x=1789479573;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2EWzJkrz3A3fwypSvViuBqhRWGtrvE7GvbjIg5VhLoA=;
 b=LzibfhuQa5z9MfB4n4vNR3muL2/JLLsYcw45Mp9knhB2qz/WNZ05G8Lw
 6lAkKL2o/XOclYcYMXT7yYk+zjcEtZktXsjUZoMOsSCIeR6kn0r3nI6w0
 uVYIyjERh8wZhT305qMpawcPXsGyBs3C51G23DpiJ5TtjIUdp+a1gXQ/h
 iMOzTSd727bdEBw6jBmbVQjQMAMGi/X9ebVphiqwUlIRzq9Vrv0y73dkT
 084rn7ijhWUN3GlxeWHVDKoscyXa7SnJPGys0zjUkflaRvne/9LG86eZ2
 UFjKumtWgpqYiyO+tAo9zCE0q/4ycuSvo0a4emCLdqZuoMWrYEvpH6th7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LzibfhuQ
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/5] iavf and ice: GTP RSS
 support and flow enhancements
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

This patch series introduces support for Receive Side Scaling (RSS)
configuration of GTP (GPRS Tunneling Protocol) flows via the ethtool
interface on virtual function (VF) interfaces in the iavf driver.

The implementation enables fine-grained traffic distribution for
GTP-based mobile workloads, including GTPC and GTPU encapsulations, by
extending the advanced RSS infrastructure. This is particularly beneficial
for virtualized network functions (VNFs) and user plane functions (UPFs)
in 5G and LTE deployments.

Key features:
 - Adds new RSS flow segment headers and hash field definitions for GTP
   protocols.
 - Enhances ethtool parsing logic to support GTP-specific flow types.
 - Updates the virtchnl interface to propagate GTP RSS configuration to PF.
 - Extends the ICE driver to support GTP RSS configuration for VFs.

changelog:
v5:
   -fix NULL ptr dereference and minor improvements in 1/5 & 2/5
v4:
   -remove redundant bitmask in iavf_adv_rss.c for dmesg
v3:
   -fix kdoc-s in ice_virtchnl_rss.c
v2:
   - reduce much repetition with ice_hash_{remove,moveout}() calls
     (Przemek, leftover from internal review)
   - now applies on Tony's tree

v1/RFC: https://lore.kernel.org/intel-wired-lan/20250811111213.2964512-1-aleksandr.loktionov@intel.com

Aleksandr Loktionov (4):
  ice: add flow parsing for GTP and new protocol field support
  ice: add virtchnl and VF context support for GTP RSS
  ice: improve TCAM priority handling for RSS profiles
  iavf: add RSS support for GTP protocol via ethtool

Przemek Kitszel (1):
  ice: extend PTYPE bitmap coverage for GTP encapsulated flows

 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |  119 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |   31 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   89 ++
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   91 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |    1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |  251 ++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   94 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |   20 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   48 +
 .../net/ethernet/intel/ice/ice_virtchnl_rss.c | 1404 ++++++++++++++++-
 include/linux/avf/virtchnl.h                  |   50 +
 11 files changed, 2070 insertions(+), 128 deletions(-)

--
2.47.1


