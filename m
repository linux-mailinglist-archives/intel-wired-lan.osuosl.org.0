Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E7C97D8A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 18:56:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 712F042C33;
	Fri, 20 Sep 2024 16:56:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EajZPcV8fA56; Fri, 20 Sep 2024 16:56:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9643042C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726851403;
	bh=DqHAJQbfDrwe7+6lfYQclCeeTDa2BfMqw9AsC1bmSxg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=szgYkeosXD+0llUw1JQvNLQldn2FYo2EHWWO21gMpQUhguI6AOMTpGEBCVLX9y31N
	 j5iD9MGyGh8CdPi5VbEb/cQkZfZcSSH7FztNaMtU4L41Ft5HaoCbhrCniF6evC5i09
	 IC3dkBHHjtoLGV3P1SIYe1fp9tgM/wuOvp8cPUoRkPX6O9OZtwFVlL++0IsbExvPes
	 opsZomTxmRDy0IzELrrmXO8QPqgziq0b0yo76Ixv2nuxHn9cL955IDqnC1Kmeapu2D
	 o3wAKsoj83uo/v56XzkekK3yCt638PEONPf9EV07gWbAtGSHmKjTIzweIREt0pzaXo
	 feTy+a4ROPjCQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9643042C15;
	Fri, 20 Sep 2024 16:56:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1575D1BF589
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 16:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10A2E42C14
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 16:56:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ZmdAcCIiRnf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 16:56:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D64BD42C15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D64BD42C15
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D64BD42C15
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 16:56:36 +0000 (UTC)
X-CSE-ConnectionGUID: MBg/ZlrwR0CQPTSuDp4h3Q==
X-CSE-MsgGUID: 1X0jGJ/wQFijjTSGgtWvLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="25813932"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25813932"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 09:56:37 -0700
X-CSE-ConnectionGUID: o9BcRg3NQJCMVsHwBLFplQ==
X-CSE-MsgGUID: SN4S7695QtSOf9iEZ7aKcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="101100626"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 20 Sep 2024 09:56:35 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3B10827BD5;
 Fri, 20 Sep 2024 17:56:33 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2024 18:59:18 +0200
Message-ID: <20240920165916.9592-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240920165916.9592-3-marcin.szycik@linux.intel.com>
References: <20240920165916.9592-3-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726851397; x=1758387397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nh6mv2oBHb6+3x6OvpdB6dRt4qnb/Og0Cfl844iEMEI=;
 b=HftBUzXTu535NGhxbJlMr3yOeoG0K83lFagEUhqng1PQ23yW3hfmzBUM
 7UniUG3OAtSv5LgFfvatk+2vJTBFz9wCj7M8XayTd4gsKedK97prkKRMw
 TQ+JrWj9CKAVI1zxgAYyj2fJ0IIWcmtsTnRzBxEPIHZ9dLJNN7pNdUzrq
 wJF6rKx12bJBCdlDgwxEz1DSgBBADKPP8HRnyT6V9nP7tm7sDb2ftYEov
 rpk23TVnIX9HS65Em4tZACCWm61KMiR9SrgApiMLXyUnPw7vgMhJQMm8k
 Cb7Jg+s8dTht4MSKpOCypiPQFcP+M675GdM3LqgczO2mRC2n4keqJBOpS
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HftBUzXT
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: Fix netif_is_ice() in
 Safe Mode
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 maciej.fijalkowski@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 mateusz.polchlopek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

netif_is_ice() works by checking the pointer to netdev ops. However, it
only checks for the default ice_netdev_ops, not ice_netdev_safe_mode_ops,
so in Safe Mode it always returns false, which is unintuitive. While it
doesn't look like netif_is_ice() is currently being called anywhere in Safe
Mode, this could change and potentially lead to unexpected behaviour.

Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index aeebf4ae25ae..f0f27e78bde9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -87,7 +87,8 @@ ice_indr_setup_tc_cb(struct net_device *netdev, struct Qdisc *sch,
 
 bool netif_is_ice(const struct net_device *dev)
 {
-	return dev && (dev->netdev_ops == &ice_netdev_ops);
+	return dev && (dev->netdev_ops == &ice_netdev_ops ||
+		       dev->netdev_ops == &ice_netdev_safe_mode_ops);
 }
 
 /**
-- 
2.45.0

