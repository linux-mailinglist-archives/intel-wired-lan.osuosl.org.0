Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782BC93B55F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9129E40E19;
	Wed, 24 Jul 2024 16:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l_WVJ6YV-XqQ; Wed, 24 Jul 2024 16:58:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB5F240E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721840321;
	bh=uYxTDcc0TXGSK0z+mPbG/xuCyXExmYsXZZJJ31LFFuQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CfABOfIoT7D/myjzmzDHJUwXrsLIiKVsVEQQyxofrEwo+kkDSJsuGw8aTn5LK7V+u
	 +LSjhxU4MmM7timlnpyzeolJZE4kTHOHedlZv3AwLTGtgQPmwIGTtEN2mpQxMw+MBn
	 8LXlAJ+TEeEU71ghTb8lk2UOWbc/Fsd1P67nASiLli9eJGKKYGKMa9VvZDXiDdLMF5
	 VOU6kLubpQ7acATKgj4+CWbEZv5RoXkLMyim7pT08IDcJ6ELxsu5lDbZniFEpEnMFl
	 TSkuGYdmJAk4vaTUuKlmrmgDdWFgcRSSMAeWlS0wPrbzuOMXn9S5OFZIzSeWU6caxz
	 /Pg44Df+hyngA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB5F240E15;
	Wed, 24 Jul 2024 16:58:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0A381BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB502814B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TsySYJZBR-K8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:58:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6548813ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6548813ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6548813ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:38 +0000 (UTC)
X-CSE-ConnectionGUID: PWh3aIC5QuWXpfkglmyASA==
X-CSE-MsgGUID: FU7lcZWrQVGSS1HADG8ZnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30679781"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30679781"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:58:39 -0700
X-CSE-ConnectionGUID: WfIoqxQxRLeuGcfyfGQuwQ==
X-CSE-MsgGUID: CkD4sznGSp2VYi1mOn9WdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="56960631"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2024 09:58:34 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 909A12878C;
 Wed, 24 Jul 2024 17:58:32 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 18:48:35 +0200
Message-ID: <20240724164840.2536605-5-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240724164840.2536605-1-larysa.zaremba@intel.com>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721840320; x=1753376320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XXOM9x7lnT1f6EFgRH1Y5lZwdBw476V3dhOkr66oUaI=;
 b=BMIWQCumqrYm/eJ2L6FN8hYY8/LlidF7uFRehUivCfl41sAVBflehHSY
 +HVRePgW4EkyFWgZWvWoIy1Rut9DhYsKtnJl+Axd1wn0jKPSdXqNMtBQa
 R5N2SeQWaasyyxAtUaPx0/v1N/EA4nDvIH3Wv3cvDU+28gXkjcNMCpB2q
 wBOC+ikEHG7oqQ5Wxvu2gfNMAWqsgOghN/O3t4idXSdjCty/5SUi1+Yj7
 GXqVHyHylEfKmF5HmJoiCTXXl6gBDE94YhvC7mS2c+x4Yi/j2TeoqL4wj
 FWiNrC7Kco2znWamqqjR4GPeZLAh2fxQ7/i5ZpOkerLtKS7zFPhr6x8Qo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BMIWQCum
Subject: [Intel-wired-lan] [PATCH iwl-net v2 4/6] ice: check ICE_VSI_DOWN
 under rtnl_lock when preparing for reset
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

Consider the following scenario:

.ndo_bpf()		| ice_prepare_for_reset()		|
________________________|_______________________________________|
rtnl_lock()		|					|
ice_down()		|					|
			| test_bit(ICE_VSI_DOWN) - true		|
			| ice_dis_vsi() returns			|
ice_up()		|					|
			| proceeds to rebuild a running VSI	|

.ndo_bpf() is not the only rtnl-locked callback that toggles the interface
to apply new configuration. Another example is .set_channels().

To avoid the race condition above, act only after reading ICE_VSI_DOWN
under rtnl_lock.

Fixes: 0f9d5027a749 ("ice: Refactor VSI allocation, deletion and rebuild flow")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f9852f1a136e..b773078ad81a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2665,8 +2665,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
  */
 void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 {
-	if (test_bit(ICE_VSI_DOWN, vsi->state))
-		return;
+	bool already_down = test_bit(ICE_VSI_DOWN, vsi->state);
 
 	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
 
@@ -2674,15 +2673,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 		if (netif_running(vsi->netdev)) {
 			if (!locked)
 				rtnl_lock();
-
-			ice_vsi_close(vsi);
+			already_down = test_bit(ICE_VSI_DOWN, vsi->state);
+			if (!already_down)
+				ice_vsi_close(vsi);
 
 			if (!locked)
 				rtnl_unlock();
-		} else {
+		} else if (!already_down) {
 			ice_vsi_close(vsi);
 		}
-	} else if (vsi->type == ICE_VSI_CTRL) {
+	} else if (vsi->type == ICE_VSI_CTRL && !already_down) {
 		ice_vsi_close(vsi);
 	}
 }
-- 
2.43.0

