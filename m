Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7108B8BD18A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 17:32:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA671608CB;
	Mon,  6 May 2024 15:32:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1bpMVNTpkd3o; Mon,  6 May 2024 15:32:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B688B608CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715009565;
	bh=gryj5cU3lusC9pKBqTUss6omXlY8Sx36c1HSmoXrqZs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1ksDS2G6lDWnYFzZvsxcgo5PtJNwaAvX75jzWuUwwP1T56sqQLRUmHfm/UDvTOnrZ
	 5WFCeCAvjpsVPdsVtIBKZnLeGA3kmdSUaeJ8FWvlQOI8UiY2egY1+uDwC/jqNFehZQ
	 /35yj9XGNvA4/PfupdUAIrtv+Mkup9MULca7VYvVsRWZtnOi1y4fBBm/70KQA0/Zbp
	 CevWzEDKCrB2J2daReUXRT9fKHu1C3TBEHVZZoNMr99Q+8O3bhiZ/U3SEcCE71VwOm
	 2cXMDSeGITd+0Dj+iw5lrN8jgWLLpwXXqG1MkrGitWPZHJweTk5p7J6QytbGoKfoq4
	 Y3Y6v7DPexvFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B688B608CD;
	Mon,  6 May 2024 15:32:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DFB81BF471
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 15:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35F8B81F89
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 15:32:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KGoxpDyNvZsb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 15:32:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DB4C581F87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB4C581F87
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB4C581F87
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 15:32:42 +0000 (UTC)
X-CSE-ConnectionGUID: 5XsxJt50QFe88VWMxG8onQ==
X-CSE-MsgGUID: FWPXoTe2Qc+Emj6etiIpdg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14543034"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="14543034"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 08:32:42 -0700
X-CSE-ConnectionGUID: viwsUyFpSfyP81AsmVwn7w==
X-CSE-MsgGUID: h+ZjToWiSS6GUL/hmLzsSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28589981"
Received: from unknown (HELO localhost.igk.intel.com) ([10.91.240.220])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 08:32:40 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 May 2024 17:33:07 +0200
Message-ID: <20240506153307.114104-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715009563; x=1746545563;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1g9/UzO4DojBJepU43J1CZ5e5mfSJucwa+C7ZrcaPms=;
 b=BD94jljKp5H8N0XE1G7pJroOOHipw0V9kNHn2oMEaHI5/Ad2PtdMme6M
 VFgFvI84u6VCXXs8f7m8ilYPexfPLBGKVgNDCscVSmSG+mA2/KAmr4IqT
 8NuQK5MrZHjZnvZBDidZRAG8EeAOYleyi3t+BLXSoOOAGwPZLubRm+5DO
 SMU3ry1bLQVB0Sv6VPLQokjB0AXG75TJjqhqZ8A1TMtZwoZw2QlX+bdQP
 aCFMkV6qUXtb0Vbf4BiAFr74ZHKklaW1vbpq9WuZFTQ3BB253yhmHl00z
 D7m706kuUfO0SSQmvBwaBAbvOpHb2q/KXZmFGCWw5kXMajfRbDMcFO4ma
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BD94jljK
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: Do not get coalesce
 settings while in reset
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
Cc: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>

Getting coalesce settings while reset is in progress can cause NULL
pointer deference bug.
If under reset, abort get coalesce for ethtool.

Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce")
Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
Changes since v1:
* Added "Fixes:" tag
Changes since v2:
* Rebased over current IWL net branch
* Confirmed that the issue previously reported for this patch [1] by
Himasekhar Reddy Pucha was caused by other, internally tracked issue
Changes since v3:
* Using ice_wait_for_reset() instead of returning -EBUSY 

[1] https://lore.kernel.org/netdev/BL0PR11MB3122D70ABDE6C2ACEE376073BD90A@BL0PR11MB3122.namprd11.prod.outlook.com/
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d91f41f61bce..4ff16fd2eb94 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3815,6 +3815,13 @@ __ice_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
+	if (ice_is_reset_in_progress(vsi->back->state)) {
+		int err = ice_wait_for_reset(vsi->back, 10 * HZ);
+
+		if (err)
+			return err;
+	}
+
 	if (q_num < 0)
 		q_num = 0;
 
-- 
2.44.0

