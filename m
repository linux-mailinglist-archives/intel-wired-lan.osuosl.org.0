Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D2991A7B6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4118760E47;
	Thu, 27 Jun 2024 13:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyTM_rfCMsfY; Thu, 27 Jun 2024 13:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A55A060E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494344;
	bh=nDGHwAV4fZ35QG9s8xMwMxlosKDIHwrXmkHvBELPJ+U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1hi7NvGo6BghHXEX+vpCLnSRnMChluU1msgEacX17PMo5uaZzUFaZP2JNbXpl8SFo
	 kewTWApYYwDeBPFidivev27Bbqxj5zNeGmaQFjSf3ooUOSvOXSmBut7UsOWIJEPDIs
	 GIS1v4HjXwvlZgCyUfaTTnhnCcZaTBdqcyhR3TpdHYOOOiwaEuRfKzjDm+DdmjUsE3
	 HduGZqiBILGIlHWhAE4d/sMJgp0v8Zoxfolm+YIVYcL0m0qYiFBJrdmEVQL4Bbgmxa
	 BWAiiGPW/WQIbjoCkb6umSclnAqqneILGJfEm2WuoTWumAwSg7HkNEBzP7Pk8rqYis
	 TE/GsHp9yy7Kw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A55A060E46;
	Thu, 27 Jun 2024 13:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED1DC1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7815410A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FTc68a5kW2Hz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 006A140D0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 006A140D0B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 006A140D0B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:19:01 +0000 (UTC)
X-CSE-ConnectionGUID: mMuwQsiNRyiobDyHUcw45A==
X-CSE-MsgGUID: r74nlsBiTXi7xV1WEWrssA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452373"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452373"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:19:02 -0700
X-CSE-ConnectionGUID: gz9QdukTRpGSHyG58YYJfg==
X-CSE-MsgGUID: Ze7wdeLZR8+H+9p0zT8ZsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315432"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:59 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:56 +0200
Message-Id: <20240627131757.144991-8-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
References: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494343; x=1751030343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ua5dTpw+9qCBRIHWSRrOzgeAU3++bdFfmcyuB6QgoB4=;
 b=V2jxM/7i8XJEEFhrcmb4v9/IMofXNjwLrDgSExtR6RuQ/wBBsFXcVctF
 G+eXLd7SnZV5MksOPwp8YlrJrF9+3MWoUD8gD94Gr6I3cz1xKilb0qVxe
 RpgIuQe1sshAyqUJuIOj4yNnwtS7ycUo3FUsQNvv01m8lOL+Tz9ry+KY/
 hX2u4GwnTcTViqkZNEqu1RFgdwfEivXSr/508vhgZY8sgUVo/7EAPz3OK
 GccG2xjvoxp71SA5uzKMTNrRY+kNVRJWSjr1xE32nla/k/O2LMr8LzxWu
 l4WnQZNKL9bpSn5n4fdZhXIYC0W2Qnx45Gn/oX15wE9Q7La3QiuwsrGer
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V2jxM/7i
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 7/8] ice: add missing
 WRITE_ONCE when clearing ice_rx_ring::xdp_prog
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, aleksander.lobakin@intel.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>, magnus.karlsson@intel.com,
 Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is read by data path and modified from process context on remote cpu
so it is needed to use WRITE_ONCE to clear the pointer.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index f4b2b1bca234..4c115531beba 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -456,7 +456,7 @@ void ice_free_rx_ring(struct ice_rx_ring *rx_ring)
 	if (rx_ring->vsi->type == ICE_VSI_PF)
 		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
 			xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
-	rx_ring->xdp_prog = NULL;
+	WRITE_ONCE(rx_ring->xdp_prog, NULL);
 	if (rx_ring->xsk_pool) {
 		kfree(rx_ring->xdp_buf);
 		rx_ring->xdp_buf = NULL;
-- 
2.34.1

