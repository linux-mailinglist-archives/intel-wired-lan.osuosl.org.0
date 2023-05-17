Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70D37068A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 14:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65B5341593;
	Wed, 17 May 2023 12:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65B5341593
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684327988;
	bh=i1KYZPNvHa/1xj2Ly12MHdSYrulPaO/rA87RfElb2Ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qsvSyojM78Zt1YEGE73dIWg05TVZckA/Hx2L+vocBzP7vD4SFnxfUJK8+wPv5qHSR
	 DL5tF8k2tKdhIyfi/d1mb7jaVnJsNcLmHuCAQ6j6EQyykAwVyCs0KEon6P2nWhm0gD
	 f5/CjoeDT02UlJvo4RCYyFBEx8iS5yCVRupoNf+PfYzVabJYDupOZw/++Drl6q8czF
	 5HJ2NaJ0hDgsfCHw3v2Y23QCjJ8MM/Fo1fRXCJWkU6V3orvXDW2BDgDGeDIQ6ypVgq
	 cfPmfCvg6qD4Snfb5eHnlwjYSQC84eaHGXAbz8DXgXGfKw5KSMGI5zjamsKTLS4WmP
	 3vI7RVidEnLQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HwHuopg5IueS; Wed, 17 May 2023 12:53:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35CF640182;
	Wed, 17 May 2023 12:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35CF640182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 079D91BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 12:52:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1BF660E0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 12:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1BF660E0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VgtfS0eA-cRI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 12:52:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43C4C60F84
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43C4C60F84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 12:52:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="351769826"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="351769826"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="652225138"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="652225138"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:52:55 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 14:52:46 +0200
Message-Id: <20230517125247.331227-2-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230517125247.331227-1-piotrx.gardocki@intel.com>
References: <20230517125247.331227-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327977; x=1715863977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jPrzCUE6IAZlk2meSUQ8bOCLudIGvUHCb+t6Sa4sFI4=;
 b=dja1On5+HR4eW3/JtTHNeoWG8+g0YA5RyoPpxwRnET/2/0iY5e/o+AId
 jpedSq+4NLZToPCg2ViaEn49E2cqZgz6Ga3suPOi7+t/tWBSxEMEVsRme
 m3GoXdRZShFpEF0fIOL5B+9RK89mxcxKIPUZd08tV2MlV0NJB04U0MSPZ
 TT0g7QFS/oV9HiuRvGQ7W7VmFbIgtszdkZEpz7y9Jn2uXI6UgWOqvETwq
 1q1sfA6863uvPmcohkoEciwVrH01TrR7B6wDtmHPzYiWlKdfbQ75CAYy7
 /wCOVp8uFw4kOcf747q8vRHA9bkT2ZFGWtqQV4ub7ahwuKdK0cBlw1OHV
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dja1On5+
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] iavf: add check for
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
