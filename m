Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2035B96A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26D8688058;
	Fri, 20 Sep 2019 17:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTA0--FYoLCK; Fri, 20 Sep 2019 17:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63C7B87D5E;
	Fri, 20 Sep 2019 17:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63B8F1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5DAAC20505
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SEI2x0ydF5+H for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A6F620401
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635341"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:52 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:22 -0700
Message-Id: <20190920091724.51767-8-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920091724.51767-1-alice.michael@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 08/10] i40e: allow ethtool to
 report SW and FW versions in recovery mode
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Let ethtool print driver and firmware versions when NIC is in
recovery mode.  Assign i40e_get_drvinfo() operation to ethtool
recovery mode operations.  Previously ethtool did not report
driver and firmware versions when NIC was in recovery mode.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 883b43ac9816..001a2fad297d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5375,6 +5375,7 @@ static int i40e_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 }
 
 static const struct ethtool_ops i40e_ethtool_recovery_mode_ops = {
+	.get_drvinfo		= i40e_get_drvinfo,
 	.set_eeprom		= i40e_set_eeprom,
 	.get_eeprom_len		= i40e_get_eeprom_len,
 	.get_eeprom		= i40e_get_eeprom,
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
