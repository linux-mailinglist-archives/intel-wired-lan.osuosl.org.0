Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4A6C0CB23
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 10:37:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC2AB840CA;
	Mon, 27 Oct 2025 09:37:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxUQMQpy1AFR; Mon, 27 Oct 2025 09:37:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18DA5840D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761557862;
	bh=eb+RzDrguE3pxFuzvEMwBZLL/0Yknactx3UNVLWs8fk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=D5rFNq+n4RQIszzQS6MLp4vwT741snNNKkoXlh/W7R3H4v39b2iHo0RqlZ5DgcLE4
	 QeWq1wB51SUdjg1i4DGMwJDLfis7mw2ELHj2O/HWoEqVyHR+flZoxWQ1UmWHmiuey5
	 OFOIf+QDYjKueCPK0DQVt6yvg1QurxIwG/hGtJoV1KfoMVAt62rEj5bG41Pe/YzwD0
	 bydeWkIjt0o2avVx6uV2Ltw7kUVMWlyOihB39Qzz7qW7rnxwTAV6XcxwR1Ji75MH07
	 ed191mwt4WDye4h9N3yST9WP0kqRIVm7wXwEQCrghzwB5OitoD2rU6Ok+DcP29YVyR
	 c6wajc7lzup8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18DA5840D1;
	Mon, 27 Oct 2025 09:37:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D428F15F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5E5B40DFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 81JDsNzqLKUw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 09:37:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F36440DB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F36440DB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F36440DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:37:39 +0000 (UTC)
X-CSE-ConnectionGUID: o0ZVu9FNQsecFluGLKUG9A==
X-CSE-MsgGUID: WVhQCRyzQkS0NU00+wDgkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63670484"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="63670484"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 02:37:39 -0700
X-CSE-ConnectionGUID: S5g4BYwASyCy0Nx6PTrHxA==
X-CSE-MsgGUID: Qj79KHNeRhOa81c+bz0BAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="185349349"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 27 Oct 2025 02:37:37 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com
Date: Mon, 27 Oct 2025 10:37:30 +0100
Message-ID: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761557860; x=1793093860;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=42RsqUTPUbIOZPnLf+HdFFP6npJl5dilXMS7DLvN7e4=;
 b=crFEzEO4aQEfYJcYJjlPXcynmxnDOxz0wC12M4HQGnffAQB5cT6F6tyG
 rSQQJg6v9gPTMRm19wn4aaLQN8BAppR0IXxyzujtaS4Ni2iPURu65VcZB
 W6jTBMUPOnGpATbf57hqrypcP/tgOTMXi19pwP6nHn3Qey33Hsv1n9UQl
 wXoD1p5gDqulpsX9V78ZOMSk8rPUkzYtNRZICMDXLfFz+OZIWWgMYWWL5
 HxqlyWHtyctSJ+Ag3d2c9RuRaBJXxndtsbMQv66yzsMFUrYVTNoiao9uA
 eKAMlBSZF0LlqEJX3+1QYbxYGgMBqI3WiD74ijsG/j2O69dN6srLlcYnh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=crFEzEO4
Subject: [Intel-wired-lan] [PATCH iwl-next v7 0/6] iavf and ice: GTP RSS
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


