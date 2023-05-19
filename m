Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 226B8709AC2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 17:00:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD0B342588;
	Fri, 19 May 2023 15:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD0B342588
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684508454;
	bh=i1KYZPNvHa/1xj2Ly12MHdSYrulPaO/rA87RfElb2Ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v3GM5xkOCp1DoMNuGAtH5IRl627MBWmh2oWbwyu0TaQFLe4SaY3WH4K5wZvdMYhQ+
	 c+H5cJqH7EFX69GjlsUa441hD/w223PNANG54BmLXHvODbbk3ZKqfxApMGMXLpdCJH
	 JRJ+4eLCksa4tfPtXU6tR4dhToQGFn/PoPO3Xla1/qpwWSepJQYgSTZmrC3tK9oRcj
	 Bskhz0UnTCR5LAeTytlgVFP+ygTIceZy7gB+b6vg4io6m/PuHE0lYZGxCU2wckBiWi
	 7IWl9HiE9tQiGziN737A5tSw7bYztBLonTUPCJzzkUFd+KhN3NCxM7xwktK8A2s+Iy
	 r26FU2L4kf0Sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id df572gUoTwzs; Fri, 19 May 2023 15:00:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 449D14257C;
	Fri, 19 May 2023 15:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 449D14257C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 888911BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 15:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6214760BEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 15:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6214760BEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V6vm1eUNROfO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 15:00:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABDE7611FE
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ABDE7611FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 15:00:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="418087128"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="418087128"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="792397407"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="792397407"
Received: from pgardocx-hp-z6-g4-workstation.igk.intel.com (HELO
 pgardocx-mobl1.igk.intel.com) ([10.237.95.41])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:00:41 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 May 2023 17:00:28 +0200
Message-Id: <20230519150029.370332-2-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519150029.370332-1-piotrx.gardocki@intel.com>
References: <20230519150029.370332-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684508443; x=1716044443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jPrzCUE6IAZlk2meSUQ8bOCLudIGvUHCb+t6Sa4sFI4=;
 b=LfEw2kDEZWpqZMlkXxcI7DDKTplPnD7+Zc19jiEdACNpLfZQAw4KaGSU
 PL9a0COyJM+AmGJ5l/9Q5nPiVRSLE9VFjwrzAMTksrVZS3+RWMrr4Bo84
 kzOd6IFZNfumWUuD55MEiI92/HVRoTs3Or/b2dSYpKVpcn0BESBtjAV6R
 k0CJ+RMuIb8MTBM+1SKx9YgLNSBPZ5DGF6KxlA/y/KlH7Z6IGPv+yBgEp
 25V83IMIi3EEXtZgt+eyNVZphAzJaeM1dVb7YRSVLIHimYOQMhxREpyBq
 OpaFIUstE/Vr+yX7PY9cwA6Y2tsmJ4jGm5biQVPzY1UeXfhndqWl1nWSs
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LfEw2kDE
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/2] iavf: add check for
 current MAC address in set_mac callback
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
Cc: przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In some cases it is possible for kernel to come with request
to change primary MAC address to the address that is actually
already set on the given interface.

If the old and new MAC addresses are equal there is no need
for going through entire routine, including AdminQ and
waitqueue.

This patch adds proper check to return fast from the function
in these cases. The same check can also be found in i40e and
ice drivers.

An example of such case is adding an interface to bonding
channel in balance-alb mode:
modprobe bonding mode=balance-alb miimon=100 max_bonds=1
ip link set bond0 up
ifenslave bond0 <eth>

Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e18d7cacf99c..888d063478a1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1085,6 +1085,12 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 	if (!is_valid_ether_addr(addr->sa_data))
 		return -EADDRNOTAVAIL;
 
+	if (ether_addr_equal(netdev->dev_addr, addr->sa_data)) {
+		netdev_dbg(netdev, "already using mac address %pM\n",
+			   addr->sa_data);
+		return 0;
+	}
+
 	ret = iavf_replace_primary_mac(adapter, addr->sa_data);
 
 	if (ret)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
