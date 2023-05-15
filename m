Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5607030C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 17:00:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D71BD41D6B;
	Mon, 15 May 2023 15:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D71BD41D6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684162848;
	bh=i1KYZPNvHa/1xj2Ly12MHdSYrulPaO/rA87RfElb2Ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sy6os+Lq+JyS66QGtpuShyFS3xsiFFByOZcHJzxkNoXpA52SylaKmUeQy+jyxHxi1
	 6IhgoHnH965UYaXiORAldr9CExjc02RMPvJ2cK3JRsqA8w1A5/9ocvvvHGKVHwNA65
	 leycNKmzgmLHyRmyVpdmi05zFpwQylvnZxAURy4PxGF0yA7dCf9LNgloMQUC2f/2U/
	 jLBGlK3X1ERiZOAhLtgrQmmnEUE12XE/3xAcq0lQhRQwGE3vwNsMsAQ1mJz9gL/TYY
	 gpGHVXMQ7gMUQGGEzIEPHj2T6TPIaKD+ractTE6//k8dJHJbQh+WaNT43KxdplcocS
	 kHps13iz/GXPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBOZx7mZUhLy; Mon, 15 May 2023 15:00:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B440A4016C;
	Mon, 15 May 2023 15:00:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B440A4016C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 126FA1BF575
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9451F6157E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9451F6157E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qrN-ZFMzozci for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 15:00:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB06D61579
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB06D61579
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:00:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="335763918"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="335763918"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 08:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="1030929708"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="1030929708"
Received: from pgardocx-hp-z6-g4-workstation.igk.intel.com (HELO
 pgardocx-mobl1.igk.intel.com) ([10.237.95.41])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 08:00:34 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 May 2023 17:00:14 +0200
Message-Id: <20230515150015.239205-2-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230515150015.239205-1-piotrx.gardocki@intel.com>
References: <20230515150015.239205-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684162837; x=1715698837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jPrzCUE6IAZlk2meSUQ8bOCLudIGvUHCb+t6Sa4sFI4=;
 b=h7Fz8s67XPGbk0lCFI+6QD9Bq+X39jfblcjQxbfQ2sRKCVPjSHg9L7Um
 frdUgqr4EKXUVGmJGZ5o8chiAXRaC4sTbEGKfpbeEBGYdFk2k11Y7Uy3m
 BsBw6WOgPpxnZcPi0JNfzD6IDSOSwFpSLqpZXzBvg40uBq6lEk2rgX5SZ
 S+1MkVwrxrrKaQybreKVu+l5S2W1uBdUa+sDaxl7BP78n0zMZPTm020XR
 aoRdzVJ2S/4Cloq5PE7mOoIL9CmpEvuMDYurzWr2KXuJp4bM24FbcxRl2
 RqvjPOjS4gaI4c+pGsnd+yAimQYhtPq+Rnp2n/Z+9k1kPQAmdk6aIbeaw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h7Fz8s67
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] iavf: add check for current
 MAC address in set_mac callback
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
Cc: przemyslaw.kitszel@intel.com
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
