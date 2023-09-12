Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F3279C26F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 04:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 870DE81F2F;
	Tue, 12 Sep 2023 02:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 870DE81F2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694484774;
	bh=BDPV2dt/a/0WxXjSX63QJ6MqKooeiZk59Y5i/GBhAmU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PWuIcnr1pqMucCR+DKhunZTTtGtk9jefyUA1vGfJK4l9bz1ECGehsxzjFNJzyMLJx
	 DxGn/cLvlNSfSnwaT/CunlzA0ecyEwkZEwffj8mBR0L+F6K3yOGuwV/fB96wZdU+qD
	 1Qp+0ItmGw1nXKh2pg2///69uPFq/Mb6etQe81jgaO+L+doFbkdOLuNAYPBx2HXZzF
	 wzAxSjACZQYd8YTgYuNrzM/a6p96bJHA5OcB+WtiLmpPkqcoj0vR8g7yTYQbJxZQpW
	 e50fiTmUTOIMIT94MqjX/p2FN7Vl9vcElNcws2fPlJFVZBNq23N+P3HYwX94E2Xkb5
	 91mq1oa0oSZuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W9ErpARndrDU; Tue, 12 Sep 2023 02:12:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95C0B81EEC;
	Tue, 12 Sep 2023 02:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95C0B81EEC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 541631BF398
 for <intel-wired-lan@osuosl.org>; Tue, 12 Sep 2023 02:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E48B416C3
 for <intel-wired-lan@osuosl.org>; Tue, 12 Sep 2023 02:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E48B416C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yzjc6TvWzU9d for <intel-wired-lan@osuosl.org>;
 Tue, 12 Sep 2023 02:12:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC380416AC
 for <intel-wired-lan@osuosl.org>; Tue, 12 Sep 2023 02:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC380416AC
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="377171086"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="377171086"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 19:12:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="917254947"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="917254947"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga005.jf.intel.com with ESMTP; 11 Sep 2023 19:12:33 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 12 Sep 2023 10:11:22 +0800
Message-Id: <20230912021122.7952-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694484766; x=1726020766;
 h=from:to:cc:subject:date:message-id;
 bh=yDkj37U8MeXKLhb7pRCl/IDfSW456QDKTW2bX+q49Ew=;
 b=Js5ghjarggSUw50e+lB0fyJnk2zwcr5ENjKTQcjZYJemy49xZMup4HXP
 OzbvlzUbXCKPuPstUXZENVQ+xXQ2JDA31l8gcjDKw3B0oBbF/oSkY+/gN
 SH8v0c5Y1eDumB2cInIWyW2kebBClOuA2FWHUta0+CFump/QBzo7Jr5FH
 +mPiCPsAACs0fdufdNpMy6nu+qybg4FQH4PhbuqcwAf6kX1cgdPuioMEA
 GEM40Jw+89Kr1kjm1CyNrbYwhHMnL6wIV/YT7JTGiM239+hmTE6BXhUup
 M5x3p/3PvNWwsD4qduHOiamRRQt3QWu7jeUrISGrq0AOiX7mCf6PvRsg3
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Js5ghjar
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Add support for receiving
 error frames
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
Cc: husainizulkifli@gmail.com, anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch enables the NIC to (optionally, via ethtool) receives
the errored packet frames as it was not provided to user before.

According to Software User Manual Chapter 8.9.1, once Bit(2) is set
in Receive Control Register - RCTL, bad packets will be received and
and sent to host memory. Receive descriptor error field (RDESC.ERRORS)
shall have the corresponding bit to signal the driver that packets
is errored.

By turning on NETIF_F_RXALL as well, all broadcast packets will be
received, and any flow control packets that aren't recognised will
be sent to the host.

How to test:
User can set to receive all frames using ethtool command.

Example command:
ethtool -K <interface> rx-all on

Previous output:

ethtool -K enp1s0 rx-all on
Actual changes:
rx-all: off [requested on]
Could not change any device features

New output:

ethtool -K enp1s0 rx-all on
ethtool -k enp1s0 | grep rx-all
rx-all: on

Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 98de34d0ce07..e3f4b3e95cd0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6850,6 +6850,7 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->hw_features |= NETIF_F_NTUPLE;
 	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
 	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
+	netdev->hw_features |= NETIF_F_RXALL;
 	netdev->hw_features |= netdev->features;
 
 	netdev->features |= NETIF_F_HIGHDMA;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
