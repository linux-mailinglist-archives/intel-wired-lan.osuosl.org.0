Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FoONIgwxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5304D340563
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11C5883C23;
	Fri, 27 Mar 2026 07:23:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hNCE6oLbcBSZ; Fri, 27 Mar 2026 07:23:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DDDC83C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596228;
	bh=hfr/V0XeCghX3MYEj6NQq5W5AxnsTramHk9v4WbpJzY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PMsMB2cr0/AG832VOgpooZR+lnyOiy/dDO6efHskOEkXyPYYkorl0avme4GwYvZTJ
	 8JNelvGHWImu3X3O2/xnc+2uJNWkTKWLmrbG0H3NYFoBWvQvx2OvuRZ0eYFEWzczSr
	 aCZja5McyplaAPRHErc7Zd6LJdi1GF2uLpwFU9+NpoaXgeJ5HABDCye60QGALONV42
	 T2G7GHSiuuEbDh76l3VOWa/w9NVBM3xU3pyoDG15PW6rZWXX4wrIplBVm3J+wMERWX
	 R8/5GqNYJdPHnyA2m/TfLRI7Zw6+/r55n5LumLd9bQ0Rs8+C0y59cZ3DJhnX4C4bQG
	 YEB0uPyxFtEfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DDDC83C18;
	Fri, 27 Mar 2026 07:23:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 259ED249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1809C415FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MKfMlWrI868b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:23:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A66741574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A66741574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A66741574
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:45 +0000 (UTC)
X-CSE-ConnectionGUID: NY/j+PlJT/KjY5mxqEL8lA==
X-CSE-MsgGUID: nBDXwrIZT3e8Q+duaFa90Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75733978"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75733978"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:23:45 -0700
X-CSE-ConnectionGUID: gtJv4Gg8SM+0/j4xItdRpg==
X-CSE-MsgGUID: cfCkn3ZyQHWEJAepH4flog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255739111"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:23:43 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 27 Mar 2026 08:23:30 +0100
Message-ID: <20260327072332.130320-7-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596225; x=1806132225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LBFE63JaCQqSofulUu3xv89vB3PFNkSXDiss19Iht1Q=;
 b=Oj7y0drJRI/wzHhphg9DRQUsn9Qepclcj4LjHlGh54EA/qiKBsBRu63i
 VkVIAyvL8iiq57qHeEWuE2ASzL1sWS4eUzU6talIUOQAgEslAcvJxWXAZ
 ki/DnrGN85fK5gnEdP1chgba3F7ZMSwkv8knfeO3wfe1VEK4i6VaYIr3R
 +D8u8zxukhcIAg7CJDp2vGhOe2Rt0tVfRnKQruENVNjuW5LZaXDj3IHrr
 5k0Yc0x5PeaIh82GPsBus+z0EY6DuoZ3BZp5LuZY00326EsjU4sd13rgn
 RR8S/H39F+NwtnnNzZaC2u3utqD7cvfmWeN8Ym9aYJcYjZWP8i7b2+P1o
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oj7y0drJ
Subject: [Intel-wired-lan] [PATCH net] ice: fix netdev bring-up and
 bring-down in self-test
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
Cc: netdev@vger.kernel.org, Konstantin Ilichev <konstantin.ilichev@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5304D340563
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Konstantin Ilichev <konstantin.ilichev@intel.com>

When an offline self-test is initiated with ethtool -t, any ongoing
traffic could get stuck because ice_stop() and ice_open() are called
without letting the OS know about state transitions.  In most cases
a write() system call would block.

Fix this by calling dev_change_flags() to bring the netdev up and
down, which ensures ndo_open()/ndo_stop() are called and all watchers
are notified correctly.

Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
Cc: stable@vger.kernel.org
Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Konstantin Ilichev <konstantin.ilichev@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 96d95af..2a4f06f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1416,7 +1416,7 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 		/* If the device is online then take it offline */
 		if (if_running)
 			/* indicate we're in test mode */
-			ice_stop(netdev);
+			dev_change_flags(netdev, netdev->flags & ~IFF_UP, NULL);
 
 		data[ICE_ETH_TEST_LINK] = ice_link_test(netdev);
 		data[ICE_ETH_TEST_EEPROM] = ice_eeprom_test(netdev);
@@ -1434,10 +1434,12 @@ ice_self_test(struct net_device *netdev, struct ethtool_test *eth_test,
 		clear_bit(ICE_TESTING, pf->state);
 
 		if (if_running) {
-			int status = ice_open(netdev);
+			int status = dev_change_flags(netdev,
+						      netdev->flags | IFF_UP,
+						      NULL);
 
 			if (status) {
-				dev_err(dev, "Could not open device %s, err %d\n",
+				dev_err(dev, "Could not bring up device %s, err %d\n",
 					pf->int_name, status);
 			}
 		}
-- 
2.52.0

