Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B866481462E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 12:04:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30EB483DB0;
	Fri, 15 Dec 2023 11:04:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30EB483DB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702638241;
	bh=spWhZ8IF+NWvD1Fr7HyMyemB15UAXdC7ocS4VRlNSBk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sJBhSg/FOkbggjWFfpWeV/NUjMTJPGnVmwyOogsjfC2Kh0shCfA7sENq6Y4Oa2ot0
	 LKYw9YBlDaGXN7sqpqzTbU5Izwlcr1NTUYZKBoNgV61hl9GvWcU0disi6R0J0fcHoB
	 UAD/vwW0mU16ZWbOMnQIhOChBiCi8Bd38w5S5OANxYD68B0l44S9yxVmMbYPSbezOk
	 vVQ6c0BZbfhf0WBCIRNNnBpWn7syVgvhLFOlsdVhW5+O5vgYiyYvPSBcKRZjLsplL/
	 NPWXvb+uDKRkd81Jg5L4YzsNj6lQE1NDUFI0MUfzVYxsjdtrfLPQlEWUqeBbxExlLF
	 MwUgGy0mio4dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oF4lVAXAk68L; Fri, 15 Dec 2023 11:04:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DFA382093;
	Fri, 15 Dec 2023 11:04:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DFA382093
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 404AD1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73A9583D8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73A9583D8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4yitLfxbk19 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 11:03:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92AF283947
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92AF283947
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="385679110"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="385679110"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:03:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="918408309"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="918408309"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2023 03:03:42 -0800
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DF2A039C86;
 Fri, 15 Dec 2023 11:03:41 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Dec 2023 12:01:57 +0100
Message-Id: <20231215110157.296923-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231215110157.296923-1-wojciech.drewek@intel.com>
References: <20231215110157.296923-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638224; x=1734174224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r91IwQB98GjbzYQuxtqMyFt4lszlbhRTuZ/jgO7vu+s=;
 b=VVxdEsjewNaqZDi5cESYnPwFHnXOfjBUezXOpZxwMDa9uBYZkTtOtjBy
 2XGPDURZR50D/SRnfcaA/wjmhQ1t/prHhGFw7W3QjQkpwbTPEcAjz6FCH
 Nb+0eof+WHHlJZAshkqKAgkiaemAz14rborNlEPz9wgwhd/vcpHnpRHvZ
 zrV7INLNqwp9brscRd4ThgBi526knolJDG4qxzAsY+j5S76i4uedYX7/a
 F0oDbItk4VVJJOQS4MLa4VP2vJnoUrd8YAHaMSFNKB+MNoOhTULcZJZSs
 970miv2Gr2hd1V4x1lJCT1bD1PxYpnIE3PdO+KydVOo1p/+qNrkEvCQ+j
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VVxdEsje
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Shut down VSI with
 "link-down-on-close" enabled
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>

Disabling netdev with ethtool private flag "link-down-on-close" enabled
can cause NULL pointer dereference bug. Shut down VSI regardless of
"link-down-on-close" state.

Fixes: 8ac7132704f3 ("ice: Fix interface being down after reset with link-down-on-close flag on")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 67c2ed2e61f9..a56fbc39e7fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9301,6 +9301,8 @@ int ice_stop(struct net_device *netdev)
 			else
 				netdev_err(vsi->netdev, "Failed to set physical link down, VSI %d error %d\n",
 					   vsi->vsi_num, link_err);
+
+			ice_vsi_close(vsi);
 			return -EIO;
 		}
 	}
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
