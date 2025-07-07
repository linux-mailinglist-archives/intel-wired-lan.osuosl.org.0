Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D08EAFAF59
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 11:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF50381E53;
	Mon,  7 Jul 2025 09:15:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h9-9UsbbyA_p; Mon,  7 Jul 2025 09:15:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4C6D81E54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751879708;
	bh=wi/ovyUJMcBNkZLqslr1ftLO02p9bnrIf/p9tffJbwc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f745da1gblRo1lha9mJIkFNevWF4Lo2UhBCihP1RYTmTdG0MNJ1cvs5F1LJFbg07+
	 9lyi0YLcwFiYYpquhtEEMDal9ygQRD7W7V9FCZSo6c2VtHyGyo68/amAdK3KSj/2go
	 H3VOx0ltBJOJcYL2rQBl9NXbhwVuIUTb+q0Xt7Obsp8C0+GN0kodb9qpysDF/kqbg5
	 eGXoyAdrDse9BdgasZygguPe7x4szvnuz+2dernJko2JeBfVrT8m48xjYEHPRA6diS
	 0I2PJnFKHo8SBkvtYf77e2uAjJX7CCo5JlQ9mOvAB7X6RzECJ7Ny3KLFwTGuz0TKyT
	 91Pm3ajD+oDYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4C6D81E54;
	Mon,  7 Jul 2025 09:15:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CD8C912E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF25E408C5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:15:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NT2hc1TEPj2x for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 09:15:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA4BD40AFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA4BD40AFB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA4BD40AFB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:15:04 +0000 (UTC)
X-CSE-ConnectionGUID: ZzYwMBj4S9uXjPiYaKuS9w==
X-CSE-MsgGUID: ygyh1EmKQeeL1mDSnz8xow==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="57897112"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="57897112"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 02:15:04 -0700
X-CSE-ConnectionGUID: EuHg3E3kRq6NYjZ3RsTS1Q==
X-CSE-MsgGUID: HGQa/TbHR3Cjf3qgr3SoJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="154578671"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa006.jf.intel.com with ESMTP; 07 Jul 2025 02:15:01 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, dhowells@redhat.com,
 David.Kaplan@amd.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Date: Mon,  7 Jul 2025 10:58:37 +0200
Message-Id: <20250707085837.1461086-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
References: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751879705; x=1783415705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fnk2ILkbvf/XI4Kx3G6gmlk0qASx3GjBL2OnPBfp2pI=;
 b=O5jnQYb0ec+Or+ZPmJDjV9FFiI4khu0UMVCC3kfB7E2UA8zkF5YUtgLl
 agW2zYwmDDRr9L5aqYiAC7QXYGglrFCSMNjmBgNCgJ2g71CN/AOE5qNhY
 9wXVtqh9tkw9d1C7N9mf+n4B4PhRKGIFZ6G74WYNz/WqpkPjcbTT3ObSl
 RU91Je9+BLEu2/SOv4Hkh7OsPq8JLpG83mn1zFbzRIk9XRb6OjK+2pKFH
 el8A0eExX7y89fjgNTR7S9moASv0tYHaDe2MV6vTX9i7YzTaLyxC99V13
 TyZ0jAKKZlB7PeHrfnh4DWUNMa+ExOmuXijaBVUZNLHP18O5M/j1edbep
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O5jnQYb0
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: prevent from
 unwanted interface name changes
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

Users of the ixgbe driver report that after adding devlink
support by the commit a0285236ab93 ("ixgbe: add initial devlink support")
their configs got broken due to unwanted changes of interfaces names.
It's caused by changing names by devlink port initialization flow.

To prevent from that set skip_phys_port_name_get flag for ixgbe
devlink ports.

Reported-by: David Howells <dhowells@redhat.com>
Closes: https://lkml.org/lkml/2025/4/24/2052
Reported-by: David Kaplan <David.Kaplan@amd.com>
Closes: https://www.spinics.net/lists/netdev/msg1099410.html
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: use new flag instead of creating blank implementation of
    ndo_get_phys_port_name()
---
 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 54f1b83dfe42..47fae5035b9f 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -543,6 +543,7 @@ int ixgbe_devlink_register_port(struct ixgbe_adapter *adapter)
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
 	attrs.phys.port_number = adapter->hw.bus.func;
+	attrs.skip_phys_port_name_get = 1;
 	ixgbe_devlink_set_switch_id(adapter, &attrs.switch_id);
 
 	devlink_port_attrs_set(devlink_port, &attrs);
-- 
2.31.1

