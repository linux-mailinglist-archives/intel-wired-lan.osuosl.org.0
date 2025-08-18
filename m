Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B130B2A1BF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 14:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C513083E3C;
	Mon, 18 Aug 2025 12:39:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PqoqCY4tkj-V; Mon, 18 Aug 2025 12:39:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA4AB83D61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755520767;
	bh=xFhMLG+hnpMpJiqxpuhZ6DyXPzkGEC8DmH3/ekomeb0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=f7nfdxE0eg1Uzq2pDFdu3O204D9+8twOOPcnwb4Xi/4UCD9EV2sI66jqtjARwGPjO
	 7jZMLosr2LC0VzmdmBdU8oVVxqWvPa7wUEfNcP2e7WGZFsYQexLhLutsW+qtqGN+HH
	 gGeaEIMXzmPFHV6BT5GhqBocINj7SEbPcenZF8G5hmcLttzEcBvH2iLyT1EAfDcSR7
	 etbLKpljccga8KKtPLqOfuLTWW0l1VZKpU0RMq7iLeaD6FrVEeq3W3wU9hBsaX9YQ3
	 gfWFTqQmXQQ8fCsFXyQ/SCTrW76ksGz44cz7LzI7hhZA6utdnx3pyMEPdOQuiav93e
	 5TGWQobjobarg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA4AB83D61;
	Mon, 18 Aug 2025 12:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 59294E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 12:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F7B361BA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 12:39:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A7LV-2xCqO8E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 12:39:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7936D61B8E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7936D61B8E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7936D61B8E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 12:39:25 +0000 (UTC)
X-CSE-ConnectionGUID: /g8blfTWSo6+ziGk5j6+jg==
X-CSE-MsgGUID: ixsl/088TxSvo6w6kpcXMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="75309120"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="75309120"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 05:39:25 -0700
X-CSE-ConnectionGUID: pvPjU/daSye+9qRi2vocuQ==
X-CSE-MsgGUID: sr99iaffTTK7C9J8GI07RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="172906306"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa005.jf.intel.com with ESMTP; 18 Aug 2025 05:39:20 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Mon, 18 Aug 2025 12:39:12 +0000
Message-ID: <20250818123918.238640-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755520766; x=1787056766;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rhBvuqypf5LHhK3Z0/md04qrIWQLJc20kETHaLtkhz8=;
 b=BBAR51EmTHE0JUGRMMdV61Zv+eo0nywgQZweEyI7ZCl+TQsO3RsR7R8K
 a379+753HpdUwNcjdnZHEXER5nPen7z+IAm3wivI2Jz9G1noyu/cmy8/1
 uf1771aJ5bkEkEhgiLAauvR1AZ51oFS1w8A+mxO4NKFB+57CyxZFEaaco
 k0NHY1U+6eUkvzK7D5ljzciFQPimt5OI2fec9RiTreMco2Bfqt0IeQxQR
 M8BVVHK2tlhFQITdrYzKjEPldhstHxMk+JWpNgz80TuQC0SCJqIQL0BNA
 xr/ebGkWdQ6OoMtMyvduj+YkGU1Nzf936MCRTuejjLcAtD/1YhRIpzdyy
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BBAR51Em
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] iavf and ice: GTP RSS
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
Cc: netdev@vger.kernel.org
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
