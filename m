Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE9C85CA39
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 22:46:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F98E60D56;
	Tue, 20 Feb 2024 21:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I76Q5KZt9O3Y; Tue, 20 Feb 2024 21:46:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A502860C33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708465599;
	bh=aHax+f0nWKdjCooVtaQJ4ZA0pha+obUFcq4rs2RTGwo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ilh5MpYehUZvw9ShU/+NfG6wdu8j0YyrO1BOn5PE1S4Emz4F/LnO2tdpoEMRJQRBF
	 2I4/wVyP260kTCmUjyXWtZa1G6eSs2EbFH5QqapuGmZ0+a/rhJ9F9l2nj8ovKwqSmZ
	 xwMbyqAP6qZ0K4484N5b4twDTmOFa121PJ5/T4VlqUBcJ20d8zCjOYbhd3HNVZhBWD
	 9rLXo72m3uncWaPD53k+Qx8tK+ldjGuKEWTLGCjf19tANgCcw4JhAg8EDYhNausV4E
	 7Kuq/7vhKKgFUKr4iHTWDzXWDZX9m8hgMa35eHzMQK4edKdGxs2Z2IHNi14z2xYEHX
	 IkmXaJCXIVoGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A502860C33;
	Tue, 20 Feb 2024 21:46:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E77F11BF475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E08CF41596
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ikznauy3ogGP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 21:46:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 19E45415C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19E45415C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19E45415C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2462668"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2462668"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 13:46:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="35681896"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 20 Feb 2024 13:46:32 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 22:45:52 +0100
Message-Id: <20240220214553.714243-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
References: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708465594; x=1740001594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jFUP/0VDq+41yXI5gQU74pPhbR/gHbWouGqxLCCp7d0=;
 b=dZz08OF01F1cZZDrHkkIlBNCY6qh+F5E3UdHpFqFe6OH2MbmluSeb6yw
 OEyALH929uweAICtdqWzkMYxQaQNnhIa0/f9h9seYe4WyU4sLIh7HaCJX
 9h1MfjEtahnnDz6ENXm3GIXRkoP47eX4bBzYiRMgMyQ6mtH5jcpsWTvv2
 3DuRlBeq4ZamgnLk9y68Zzrl9N329E1IKnl5YwJ8YN7rOhiD/M9CiYDEL
 6bw17KgHUKQ7K0CtFQxTNVDHMbWOS9A9KLVOeHZAmz9SKCNLpZfR7u6Rp
 c+XSEaKnHQDDSpCtfthTw0Fo97ZYc+PTbKyPxk/92xlypE3MGLvoHVoa5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dZz08OF0
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] i40e: disable NAPI right
 after disabling irqs when handling xsk_pool
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Disable NAPI before shutting down queues that this particular NAPI
contains so that the order of actions in i40e_queue_pair_disable()
mirrors what we do in i40e_queue_pair_enable().

Fixes: 123cecd427b6 ("i40e: added queue pair disable/enable functions")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6e7fd473abfd..eab2d4c3a5fc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13564,9 +13564,9 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
 		return err;
 
 	i40e_queue_pair_disable_irq(vsi, queue_pair);
+	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
 	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
 	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
-	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
 	i40e_queue_pair_clean_rings(vsi, queue_pair);
 	i40e_queue_pair_reset_stats(vsi, queue_pair);
 
-- 
2.34.1

