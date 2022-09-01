Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC49C5A9A69
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 16:33:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33A4C6118A;
	Thu,  1 Sep 2022 14:33:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33A4C6118A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662042818;
	bh=RR37Bnw25eaJp8c4oeeY67pEduT24aVaffIb88evinU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CNJghK+uMx1MyrskyOjNwGSUL+dR53MQ6PIf0WqUJuGFqmCzT2Di5FvQQk1VMmd0Z
	 ohFwNo92mKMpisJjc88kkiVHZd7S116FYPiw75Ip/Ipcgp7ZEHrV/gV8XUiYA/51cf
	 5Wq9v5AFoIBcQM4YtjY0foEaji5YIVT4Zc3qLJac196GNb2MKQdgLNGSMsS/jaU+cJ
	 DReAbzQk80b4GPQ7b+WWha1oxX1p/I2cxSoaF8KizllaA24UReHg2r1VtjmJnpwh81
	 iVOKma9r1OxgKgRYEZE3k8nMOMdxnBM6/ZNTBLGJYkFFonsmtxwwvlfKiJGhtfVVW5
	 OOC2jiFHipWvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebBehtQJObZs; Thu,  1 Sep 2022 14:33:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20E6461183;
	Thu,  1 Sep 2022 14:33:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20E6461183
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65A651BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 14:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F2FD61183
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 14:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F2FD61183
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBIt6HyVuAlC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 14:33:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3BEA60D62
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3BEA60D62
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 14:33:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="275477123"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="275477123"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 07:33:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="701758740"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Sep 2022 07:33:25 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Sep 2022 16:32:06 +0200
Message-Id: <20220901143206.454183-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662042810; x=1693578810;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AJ4UBO5+JgMeYnMBMxD0jmtNLuSLPz1y9IRhT9pKo0A=;
 b=C8V6dhA4MIehNVpZfkxJgsrbJRmHzBGcSmziNhrjhjqFelljHZMHPJJV
 JHLTlnyNNonvua0V3nXULu39b/58uhsL9/UceHny1dSCu2xjYxqqIHjlg
 vsOkndExyw5ItWD1gNF0mCECUKNM25eyQPr9bh1sojgTbApT/GR0gxy7o
 +yyM4EOBAruQTzUt66JcnB0jmZo5AOXlkIaVIx+JGy1d670X767MKEew2
 oyshSTlz44KPtW5z4JIIanUAEjnl+enDOsc/srksgyYEKK94xzLDma6rZ
 cnmLJBBowN5AIIR7BZ76Wc4+cX33jD21LJNbkk3XRA8gfDzkxBwRNipOY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C8V6dhA4
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix change VF's mac address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

Previously changing mac address gives false negative because
ip link set <interface> address <MAC> return with
RTNLINK: Permission denied.
In iavf_set_mac was check if PF handled our mac set request,
even before filter was added to list.
Because this check returns always true and it never waits for
PF's response.

Move iavf_is_mac_handled to wait_event_interruptible_timeout
instead of false. Now it will wait for PF's response and then
check if address was added or rejected.

Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Added missing signed-off-by, fixed commit message and moved 
 parenthesis to the line where function is called
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 10aa99dfdcdb..0c89f16bf1e2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1077,7 +1077,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	struct sockaddr *addr = p;
-	bool handle_mac = iavf_is_mac_set_handled(netdev, addr->sa_data);
 	int ret;
 
 	if (!is_valid_ether_addr(addr->sa_data))
@@ -1094,10 +1093,9 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 		return 0;
 	}
 
-	if (handle_mac)
-		goto done;
-
-	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue, false, msecs_to_jiffies(2500));
+	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue,
+					       iavf_is_mac_set_handled(netdev, addr->sa_data),
+					       msecs_to_jiffies(2500));
 
 	/* If ret < 0 then it means wait was interrupted.
 	 * If ret == 0 then it means we got a timeout.
@@ -1111,7 +1109,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 	if (!ret)
 		return -EAGAIN;
 
-done:
 	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		return -EACCES;
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
