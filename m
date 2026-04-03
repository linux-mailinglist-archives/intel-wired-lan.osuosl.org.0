Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAMDI1xXz2llvQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:59:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 038553914BD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:59:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 767AA40DA6;
	Fri,  3 Apr 2026 05:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kfB1PlQxAUUa; Fri,  3 Apr 2026 05:59:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E494F40EBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775195993;
	bh=jsZIIayd+SFS7tLtcJrkElZB1iFFIIXSFMR1hfPcVt0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rjeYnaJRgBtjMyGF/7BJd2JYGzL46MdWYjFIG+/kof2uEoKNlc6x6rdyiqgobsRy5
	 gnHPSJvYAt7Ml4M8Io2Fa6smt/73X/wwo9D87O4MsDv/3A74nduvVHAE9yL0I8jIxY
	 CK5Y8rVnXWSM/Z7XxKcjSfucQ/wEzN7oHYfk1sImrXbvfBTLb9r5VvLy/EYcNLWy/e
	 Axf0/wAYBCx4CJXz5MGZapTLPX9/gf2Y7AQolbVgBnqrQloPbQ4Xq7QJpmMae5chP+
	 rcWuj16sua+dos65gFUucbDrKn/ly3lxsF8l1n6Cu4jS8p/lnnvY26wQ2RVI9b3LMx
	 QQFGh5HC5trxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E494F40EBD;
	Fri,  3 Apr 2026 05:59:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F3F202CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5BE2807E6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Ck7iF76ZlLW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:59:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2D40280798
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D40280798
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D40280798
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:59:50 +0000 (UTC)
X-CSE-ConnectionGUID: 6i/BDQ5YTuCOHMYz/KmLHw==
X-CSE-MsgGUID: cXOZs07yQe+oG1CIKSDIkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="87649923"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="87649923"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:59:50 -0700
X-CSE-ConnectionGUID: BSKNbz52SEWx0SKtddhLcg==
X-CSE-MsgGUID: vaTLvJYRTYu3CScoQu0u8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="227426251"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 02 Apr 2026 22:59:49 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri,  3 Apr 2026 07:59:48 +0200
Message-ID: <20260403055948.3800555-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775195991; x=1806731991;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hkh+Nmw/K44d7gAG5USnMmol1zayw7cvyPtDXFrWDIM=;
 b=VwbB2M8Yifq908KyH+Udp7D0DWj341nCv/OqBbFmn/A6IpZgvilpq19d
 RQHdS42ixvBCTsyqPWErkZK/R64bZDfE5OHtVZHLaEV287ZjrWrGoOysp
 uTjfxUGIalycBuu9zToU08Li3hmuvvHe8APSDwl+/JPSFHRaamRsRoFf8
 sFDHF2AS0C8g4XvfTSzsdMC4hngKhZz6jwtHFD5JFOGNbMXb5dPT7f7ec
 RXSAncfMFpplp4KCjst9GPVHByrHZaTSwptYZi7n471vKccvBKFlsZqs1
 0taRVUpCYqKf/fhQPdi8e+xTVazgjQ9RjCW33HA5zj7SBudMc6/9ytRoH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VwbB2M8Y
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix netdev allocation with
 max queues instead of default
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 038553914BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
changed the default queue count from num_online_cpus() to
netif_get_num_default_rss_queues() which returns roughly half the CPU
count.  ice_cfg_netdev() passes vsi->alloc_txq and vsi->alloc_rxq to
alloc_etherdev_mqs(), so after that commit the netdevice is created with
only ~half the CPU count of Tx/Rx queues (dev->num_tx_queues).  However
ice_get_channels() still reports the old maximum (num_online_cpus()),
and ice_set_channels() accepts requests up to that limit.  When ethtool
 -L sets combined to the maximum, rings are assigned q_index values up to
num_online_cpus()-1, which exceed dev->num_tx_queues:

  # ethtool -L eth0 combined 96

  ice 0000:18:00.0: Failed to allocate 96 q_vectors for VSI 12, new value 49
  WARNING: CPU: 25 PID: 4484 at net/core/dev.c:2853 __netif_set_xps_queue+0x835/0x9a0
  [...]
  Call Trace:
   <TASK>
   netif_set_xps_queue+0x82/0xc0
   ice_vsi_cfg_txq+0x124/0x440 [ice]
   ice_vsi_cfg_lan_txqs+0x53/0x90 [ice]
   ice_vsi_cfg_lan+0x40/0x190 [ice]
   ice_vsi_open+0x2b/0x120 [ice]
   ice_vsi_recfg_qs+0x94/0x120 [ice]
   ice_set_channels+0x261/0x370 [ice]
   [...]

SUT: Intel S2600WFT, 96 CPUs (Xeon Platinum 8260), E810-C for QSFP

Reproduce:
  ethtool -L <iface> combined $(nproc)

Use min(num_online_cpus(), hw queue cap) for alloc_etherdev_mqs() to
size the netdevice for the actual maximum queue count, matching what
ice_get_channels() reports through ethtool.

Fixes: ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4da37ca..5c21c2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4699,8 +4699,11 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	struct net_device *netdev;
 	u8 mac_addr[ETH_ALEN];
 
-	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
-				    vsi->alloc_rxq);
+	netdev = alloc_etherdev_mqs(sizeof(*np),
+				    min_t(int, num_online_cpus(),
+					   vsi->back->hw.func_caps.common_cap.num_txq),
+				    min_t(int, num_online_cpus(),
+					   vsi->back->hw.func_caps.common_cap.num_rxq));
 	if (!netdev)
 		return -ENOMEM;
 
-- 
2.43.0
