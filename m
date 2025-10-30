Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AF6C206D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 15:00:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8683E613FD;
	Thu, 30 Oct 2025 13:59:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YKB1CQ99O3-z; Thu, 30 Oct 2025 13:59:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A87A961400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761832796;
	bh=olKLPi+2h402ak+NaKEWlImA6dVqmL5cFM57/raGP0A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wXNeMMefaEfHLjP/JuSVBwg61euwomh+VUGyp9hgKMmFpN+2+4aVdPl8I1lJX8nim
	 mU2LscH8jy03TsFNYJDQVSU4ylKC3Jnd0oiAO66CPmBKyiwHQ9V0CcMs2L7k+Eycrk
	 5ypAaUCCQoZbNreObFBvgy6/S6Cvr9ky+dS7hcqUmYSiHy39x1TKAthnTUatslaJPC
	 7N6A2iQOmQkYcjfPA/QW+2YSPYZnESbkOdte9t5f0HDxoTKjjP5Ihwdhk6BiGEWHMz
	 +MW/YuCHF3ScV2UFGR2tK0LoxFArVbh5I1td8GPkj7s9ApapN77DloRcsa66hkix3b
	 2NGdJI4Jg7Xgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A87A961400;
	Thu, 30 Oct 2025 13:59:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5561F2A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 13:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BA75613F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 13:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6sFzYC6HXxfB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 13:59:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63B2D6125F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63B2D6125F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63B2D6125F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 13:59:54 +0000 (UTC)
X-CSE-ConnectionGUID: 0xvvCSkcT3iTW47hS1txSw==
X-CSE-MsgGUID: tlGOI3LBTcuXGS0omXX3cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63178374"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63178374"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:59:53 -0700
X-CSE-ConnectionGUID: rCBX5y/9T76jBs9+Wk+AOw==
X-CSE-MsgGUID: 3LkIs1sRTz+jUZKJAoNryg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185895792"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 30 Oct 2025 06:59:52 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com, horms@kernel.org
Date: Thu, 30 Oct 2025 14:59:44 +0100
Message-ID: <20251030135951.424128-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761832794; x=1793368794;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vmxl21B1EmNQ2pqpdTn9OpyBv+1bJgvrYuvdM0SRPVw=;
 b=UtC+bForSzD/Tqf/3hSz3dUzBlj8aY4ZLhJ+XdGIv0qe9E/3vv0zv19m
 BrvIVFSLkkrRrrGiW4dFh6MwvNGkrcScEGXayhPEGGyEdsXZHH+cywXlF
 NrceX5OE+w3ps8RXVihFhoZ+Tbfh24O7WXmXI25h8v30OBv8agJUZ7Ysq
 0cKyY3XraVB6jUfFypFr3NCi2JODkXhNoL0T+0Zt9zulOtxzcsYXfdSlu
 lJ/ggIQP7yY6rVf5v0EOMNCmNU5j2rPes44jtTemzXMwXKbeVx9zfpfRP
 3IJB9L+qN/RS6x55+BSOrjFCQFwqTn1oA/LL0OqqRU53hIcgQ9R43M0oy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UtC+bFor
Subject: [Intel-wired-lan] [PATCH iwl-next v8 0/6] iavf and ice: GTP RSS
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
v8:
   - patch 2/6 build fixed + kdoc updated
v7:
   - refactor ice_vc_rss_hash_update() to use int error codes
v6:
   - split patch 2/6 int static data and define changes + minor fixes
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


