Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D30D95C9F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 12:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D20381EE1;
	Fri, 23 Aug 2024 10:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Rvhfw8eC8wK; Fri, 23 Aug 2024 10:08:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD97781EDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724407697;
	bh=Zk/HqWbrNMib1Qhp8gYeQZ9PfIdA2fdK10wvMsvVaJ4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jo2ikWqSU3JuS5nSJxNb7uUwvFx0oNrpaZjNXpcWUGVxgPyTcFWaZT7LXfuH5OI6Q
	 f62SEGZPwIjRHjs6DP9lxRCrGBXfzlkxEXSCxOEqdYFT6cVnM/Gw9x6vpn+VavD743
	 +1KMSwJb7Ha7kxhLu/hLQRTyWxox6Zh4SMCG2f4PG87geXHc1JoEhc3O/LIrIRo9J1
	 awwRNr+5bTzMjJ8kCrDRUgjhxs9uUmj2buY8qxJAKswM0T50PiTmKUHiyzcyOSDHdt
	 7ql5Qlm89hABvksjwreJPGqbCd5G73DXRGKkgJ25kE6xHcLXc50ecritW2EHR63qIs
	 TfTka6whl5/Yw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD97781EDE;
	Fri, 23 Aug 2024 10:08:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53D571BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41275400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mWR55fHi6Shi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 10:08:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 55A2D400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55A2D400C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55A2D400C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:15 +0000 (UTC)
X-CSE-ConnectionGUID: 79PAixOHStCM+3iq5bIDZA==
X-CSE-MsgGUID: pbJv+pQSTsGSSJ3h99/dzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34285082"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="34285082"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:08:15 -0700
X-CSE-ConnectionGUID: 58cZOUOOQIek5SMcwl17xw==
X-CSE-MsgGUID: LYBAkeKxQ+y7kAoyMW2llQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62479138"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 23 Aug 2024 03:08:10 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 71C9D33BD5;
 Fri, 23 Aug 2024 11:08:07 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 23 Aug 2024 11:59:31 +0200
Message-ID: <20240823095933.17922-7-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240823095933.17922-1-larysa.zaremba@intel.com>
References: <20240823095933.17922-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724407695; x=1755943695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pPZzUi92RCPmXkYRAwLn62bmcZwB1cpvraqBFYr+I68=;
 b=UEFW8xiYAq+isevDjf/BACCMh+5LQhhbpJtU7zACCyuku2haoW2VKV0r
 Ii1GR9sQdW4KUKE9xJ/Pfl/cXRv3I43fjGdDGC9Tu+BSlpiGk2DFoiQSn
 j23Pp0iaUchjSKoPzzZ/Ye9Orvcc+9x4IWlDaDxp0cdJjnuKjsa6awUk9
 VDqlrVzwxN5XootPt48OB6XBCMgabgAsG62nu4lRMjzh/xBSIliGfR1T3
 XILkxJM0mNmP61+sO+GJS9C4OcdQpim/oALruBnRtoTVBJ3BHprx6lv4p
 8JJi2AILDdf8x9qS2Te/R4Sn+48ObcRk0CTfKoVnuPimb5ehdDmGbmA4f
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UEFW8xiY
Subject: [Intel-wired-lan] [PATCH iwl-net v4 6/6] ice: do not bring the VSI
 up, if it was down before the XDP setup
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
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, przemyslaw.kitszel@intel.com,
 John Fastabend <john.fastabend@gmail.com>, anirudh.venkataramanan@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, sridhar.samudrala@intel.com, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After XDP configuration is completed, we bring the interface up
unconditionally, regardless of its state before the call to .ndo_bpf().

Preserve the information whether the interface had to be brought down and
later bring it up only in such case.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a718763d2370..d3277d5d3bd2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2984,8 +2984,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		   struct netlink_ext_ack *extack)
 {
 	unsigned int frame_size = vsi->netdev->mtu + ICE_ETH_PKT_HDR_PAD;
-	bool if_running = netif_running(vsi->netdev);
 	int ret = 0, xdp_ring_err = 0;
+	bool if_running;
 
 	if (prog && !prog->aux->xdp_has_frags) {
 		if (frame_size > ice_max_xdp_frame_size(vsi)) {
@@ -3002,8 +3002,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		return 0;
 	}
 
+	if_running = netif_running(vsi->netdev) &&
+		     !test_and_set_bit(ICE_VSI_DOWN, vsi->state);
+
 	/* need to stop netdev while setting up the program for Rx rings */
-	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
+	if (if_running) {
 		ret = ice_down(vsi);
 		if (ret) {
 			NL_SET_ERR_MSG_MOD(extack, "Preparing device for XDP attach failed");
-- 
2.43.0

