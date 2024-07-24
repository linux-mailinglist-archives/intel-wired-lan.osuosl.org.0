Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7872493B562
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:58:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29DE740E1E;
	Wed, 24 Jul 2024 16:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id muKNJa40cVIw; Wed, 24 Jul 2024 16:58:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53CBF40E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721840327;
	bh=M1Lt08VALvzvU5qFbmYeYoA6pbzPv9XoPfpjUe62Rno=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SEULUCetTyAJNYEBoKV4lHtRakgqTkLz4T7raXxzfx8Wc09P1crDQugdB+QpulCZH
	 22bgC6XiKtyb+Y4s9bkjlvT6OLIFLAehk4AteK+HMjzLkvgOGMu5O5tLkbpd9PS9nW
	 +TVETHV7LNArtKBoPQ4zmjpbdkP45Ya4rNWF+bZDMuywjWuq2aXBuH/5AR4yTCLC/3
	 3C7L2PUJV3r7bgxN8DjkEfRVdjgUx9hEHSqBL2ndZarPFcd2WS0NZKeI3XfCLrwiu2
	 H3lG0enNqdRE4D9Y4Z/TIFgABQfieFtXyFxux+1fY22wYa/o7/mxVfORto1o5mZ9Vm
	 asN2LsAKV0ulA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53CBF40E15;
	Wed, 24 Jul 2024 16:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A16591BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C5EB814B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15ckz6FsbJcF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:58:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E9919813ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9919813ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9919813ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:41 +0000 (UTC)
X-CSE-ConnectionGUID: QCW031CGTXy3WDP01DUeEA==
X-CSE-MsgGUID: IoTZasOWTbGTb9If7nz6GQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30679805"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30679805"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:58:42 -0700
X-CSE-ConnectionGUID: 0P2upW94T22UPkkd7wmRmw==
X-CSE-MsgGUID: KIIZe/GaQguqGXc9K6DSug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="56960638"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2024 09:58:38 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AC06228785;
 Wed, 24 Jul 2024 17:58:36 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 18:48:37 +0200
Message-ID: <20240724164840.2536605-7-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240724164840.2536605-1-larysa.zaremba@intel.com>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721840323; x=1753376323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=78cTlGOON8+LDz3iPFPQlv471L1LvIyJOUR08Ru6yKE=;
 b=G4OyGsC1fFITed8QPH17fLdZDhQC6OVuIggHU4ZB0Rx2o/WesVAnpnMq
 GfU3JmvfN1HDyG2NB2nS9Hjsrw0SJbJqC9hW2gORtzR1YrKzxE3knEeNs
 pdKOle0UdtEVZxRMmFY+km5yv7UUxa3CSrbDuIAHXPu/BVHBC5CLrwFpx
 vhUJL0j8WSAEhsKLLfKYVMK4xD1qPpKWkGeaXHXzB3uAUdlLylp4JGIh5
 TsdaeER1XnU5n/K9z+XKmH//ZC0ZxvuRKTZJPfhiCjMAZ6JjZrD2HxyxX
 9cDt73BrMft+aXKvuBVzKXJXOhCjZjVC1UaEYAcR6OuKYsmD6vsOWValW
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G4OyGsC1
Subject: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ice: do not bring the VSI
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After XDP configuration is completed, we bring the interface up
unconditionally, regardless of its state before the call to .ndo_bpf().

Preserve the information whether the interface had to be brought down and
later bring it up only in such case.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d7cc641643f8..d83cde431fa5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3000,8 +3000,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		   struct netlink_ext_ack *extack)
 {
 	unsigned int frame_size = vsi->netdev->mtu + ICE_ETH_PKT_HDR_PAD;
-	bool if_running = netif_running(vsi->netdev);
 	int ret = 0, xdp_ring_err = 0;
+	bool if_running;
 
 	if (prog && !prog->aux->xdp_has_frags) {
 		if (frame_size > ice_max_xdp_frame_size(vsi)) {
@@ -3018,8 +3018,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
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

