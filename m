Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4777AF72C6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 13:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFEA661163;
	Thu,  3 Jul 2025 11:46:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sacMqqpC4Wdq; Thu,  3 Jul 2025 11:46:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3F9D60EE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751543205;
	bh=7uMbRHs7u9EISY41PQb4N5gzjdzx9Shxz/34N9ubolM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tUrzyFA8x0M913KSzSYJbrQlJp45xzTtX2L+SxnA+fupqhU+p0Lx7DoEjgJdCSByy
	 JSkKATQvpMitR40GUEn47GWAjlhPdHW6Vpp/I/wQYDDak+7yuXEAT4YKHhJd/s6SE/
	 PnnTxcKGu1arFCVR9FXUGquzRw8YmJuBk5TnCJ82gH3PQvz4Wi0FiiCztOdTPb8WGH
	 gkf5qGi1g4u/fLwQl83e0APAZzBoTZ+nXQfgjS48BCn5eZ+T4NskkMKiDe+4/VoOuC
	 e2ScxpWfgOIbnTk9XH8tEUx4EBN3fpuHufCMU3iuY5h5NejnyYzcjmIUHLfEb2Kk8w
	 fRCo4QA/2Lj2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3F9D60EE3;
	Thu,  3 Jul 2025 11:46:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C61A128
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 11:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12799401FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 11:46:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5y9h8Qz--Dv9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 11:46:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2BF104052D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BF104052D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BF104052D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 11:46:43 +0000 (UTC)
X-CSE-ConnectionGUID: dcA7cnsLTIenJRaO3OQRNA==
X-CSE-MsgGUID: mgQSzay/TJKhhAhHi2ae+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="76411129"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="76411129"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 04:46:43 -0700
X-CSE-ConnectionGUID: WitRaSFrRIKq6SVESFwcMA==
X-CSE-MsgGUID: poo7VvSxTBKyx4CmnSkXVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="153780339"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa006.jf.intel.com with ESMTP; 03 Jul 2025 04:46:41 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 david.kaplan@amd.com, dhowells@redhat.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 David Kaplan <David.Kaplan@amd.com>, Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu,  3 Jul 2025 13:30:22 +0200
Message-Id: <20250703113022.1451223-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250703113022.1451223-1-jedrzej.jagielski@intel.com>
References: <20250703113022.1451223-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751543204; x=1783079204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KZQ0phePQAB4080RNDczJJT3Ff0gY6JEBjYAn+tJzi8=;
 b=Nuzt0dvxqhYrK6RfHP6FNQrN+LJzki2ZhqEx7sY6wCpnHo1E4eKWRAIH
 4UlYsVSt13gMGfN9QeH7bBB79b+2xZBBzmhzn4FFA+6Y7OM3OypDDokyo
 tWbbPYfBihn2E1fXg6Sd2fLxiYewSpu6veCS3NcMoJnMJlZ1GR5m3RUZl
 lXBz5cCZXIQUP02LjtGkZehd8AlQ+Hced7/ypodXc5R8D7YYBxeJNgEKD
 gGfl0s6tZ5XNdJy+elDbxZTa3HURbiLdHEkD/+OB4YUg/B9TRqxkEQs3U
 xG5aA+yA48J7q78EDKCiOLxAiZQZ7RZBRa9tWqSA7dX7SUEGavnZu7fEI
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nuzt0dvx
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ixgbe: prevent from
 unwanted interfaces names changes
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

Users of the ixgbe drivers report that after adding devlink
support by the commit a0285236ab93 ("ixgbe: add initial devlink support")
their configs got broken due to unwanted changes of interfaces names.
It's caused by changing names by devlink port initialization flow.

To prevent from that add an empty implementation of ndo_get_phys_port_name
callback.

Reported-by: David Howells <dhowells@redhat.com>
Closes: https://lkml.org/lkml/2025/4/24/2052
Reported-by: David Kaplan <David.Kaplan@amd.com>
Closes:https://www.spinics.net/lists/netdev/msg1099410.html
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 48063586063c..e63a1831e661 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11043,6 +11043,12 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	return nxmit;
 }
 
+static int ixgbe_get_phys_port_name(struct net_device *netdev, char *name, size_t len)
+{
+	/* Avoid devlink adding unwanted suffix to interface name. */
+	return 0;
+}
+
 static const struct net_device_ops ixgbe_netdev_ops = {
 	.ndo_open		= ixgbe_open,
 	.ndo_stop		= ixgbe_close,
@@ -11088,6 +11094,7 @@ static const struct net_device_ops ixgbe_netdev_ops = {
 	.ndo_bpf		= ixgbe_xdp,
 	.ndo_xdp_xmit		= ixgbe_xdp_xmit,
 	.ndo_xsk_wakeup         = ixgbe_xsk_wakeup,
+	.ndo_get_phys_port_name = ixgbe_get_phys_port_name,
 };
 
 static void ixgbe_disable_txr_hw(struct ixgbe_adapter *adapter,
-- 
2.31.1

