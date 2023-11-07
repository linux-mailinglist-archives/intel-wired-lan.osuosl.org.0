Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9567E4C18
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Nov 2023 23:59:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F6E9417AE;
	Tue,  7 Nov 2023 22:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F6E9417AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699397955;
	bh=4uVbTbrGsMIpArPUGDnAyu1wmgPXDOaQ899TpIAwgVU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=a3d9u7BmzhQtAjL0Z5+nVNrF8aSomenG3PcY5IjmRAu+uqT4SaVh9QYaUalinHIVb
	 MhIJc9ONsrN9kH8eFQiP5pIZIp/5yu3JSKwvODPkF6vwq67TJ1o4T6/iSKxbzqfdNi
	 4ZiNzgvJalAdjPbciJjYBrLm8S8pbCnkOrH91r+DSpcT8qY758XotALhxfjXmOLTNb
	 43mojxF1I+2sMRqeYGKCU+W0MuHOcHJVnJs63QArzBAGUZyzu4TbD0Ww419f3U50th
	 VfYNdpxIPvxlMJ4IoLFk7iNb0EwJI4jx2PjC8xRGMTkl3EBMMvia9XYcEWkkOWMPzt
	 UKb+pLLKQN+QQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6poO3UzwynWF; Tue,  7 Nov 2023 22:59:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18B85417A9;
	Tue,  7 Nov 2023 22:59:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18B85417A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EF741BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 22:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2676560D53
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 22:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2676560D53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lr9DTF9QiEtO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Nov 2023 22:59:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75D5C60B1D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 22:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75D5C60B1D
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="8293328"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; 
   d="scan'208";a="8293328"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 14:59:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="1094310946"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="1094310946"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 14:59:03 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  7 Nov 2023 14:58:59 -0800
Message-ID: <20231107225859.1042860-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699397947; x=1730933947;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=htYZvsoC1ixlFPNciHtNSNWjM7gM/EjRWTomSwyROCw=;
 b=PTRzSf3d1Q4Z7ojSSgUGLnCGXen9HPpyYYonSp80uzS7N/Oi63g6ELjt
 iC41GYYvFilXwhHioaZoa+bV81Zam2XjE/Os8ewIwV04WnxshTQqaaTHz
 /RNgEBwOio21+TIXT2+3bRUvX+yRuIhSBPTmLwf+2HkFbLppjfTrtW5qi
 m5rrTlKhXOFjQ0oNgUxPPTrVum3cXMthwkk4XAuvf2+42gZmkO5HtZe/M
 C4MvXf869F9gTYB8z6O7GFaeT2yQ9bdhBd4AxYHUqaahgb34scJrwUVMd
 RgTVts2ZjrKyGq2vOVMp3XM8XKY+OYvBlO9vcvz+deY2HxlUPQCCANoTB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PTRzSf3d
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: validate tx_coalesce_usecs
 even if rx_coalesce_usecs is zero
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In __iavf_set_coalesce, the driver checks both ec->rx_coalesce_usecs and
ec->tx_coalesce_usecs for validity. It does this via a chain if if/else-if
blocks. If every single branch of the series of if statements exited, this
would be fine. However, the rx_coalesce_usecs is checked against zero to
print an informative message if use_adaptive_rx_coalesce is enabled. If
this check is true, it short circuits the entire chain of statements,
preventing validation of the tx_coalesce_usecs field.

For example, the following ethtool command would allow programming a
tx-usecs value outside the expected range:

 $ ethtool -C ens260f0v2 rx-usecs 0 tx-usecs 15000 adaptive-rx off adaptive-tx-off

As far as I can tell from code review, the result is the tx-usecs value
getting bitwise truncated to fit the ITR register mask, incorrectly
programming the Tx ITR value.

In addition, since commit e792779e6b63 ("iavf: Prevent changing static ITR
values if adaptive moderation is on") the iavf driver actually rejects any
change to the tx_coalesce_usecs or rx_coalesce_usecs when
use_adaptive_tx_coalesce or use_adaptive_rx_coalesce is enabled. This check
happens later in iavf_set_itr_per_queue(). The end result is that the
existing check for adaptive-rx is irrelevant.

Fix this error by removing the unnecessary and redundant checks for
use_adaptive_rx_coalesce and use_adaptive_tx_coalesce, preventing the short
curcuit and ensuring that both the Tx and Rx ITR values are validated.

Fixes: 65e87c0398f5 ("i40evf: support queue-specific settings for interrupt moderation")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 6f236d1a6444..ee1702854451 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -827,16 +827,10 @@ static int __iavf_set_coalesce(struct net_device *netdev,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	int i;
 
-	if (ec->rx_coalesce_usecs == 0) {
-		if (ec->use_adaptive_rx_coalesce)
-			netif_info(adapter, drv, netdev, "rx-usecs=0, need to disable adaptive-rx for a complete disable\n");
-	} else if ((ec->rx_coalesce_usecs < IAVF_MIN_ITR) ||
-		   (ec->rx_coalesce_usecs > IAVF_MAX_ITR)) {
+	if ((ec->rx_coalesce_usecs < IAVF_MIN_ITR) ||
+	    (ec->rx_coalesce_usecs > IAVF_MAX_ITR)) {
 		netif_info(adapter, drv, netdev, "Invalid value, rx-usecs range is 0-8160\n");
 		return -EINVAL;
-	} else if (ec->tx_coalesce_usecs == 0) {
-		if (ec->use_adaptive_tx_coalesce)
-			netif_info(adapter, drv, netdev, "tx-usecs=0, need to disable adaptive-tx for a complete disable\n");
 	} else if ((ec->tx_coalesce_usecs < IAVF_MIN_ITR) ||
 		   (ec->tx_coalesce_usecs > IAVF_MAX_ITR)) {
 		netif_info(adapter, drv, netdev, "Invalid value, tx-usecs range is 0-8160\n");

base-commit: 21e5fd91eadd2d98429abcfc9e584ffb0bccd38f
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
