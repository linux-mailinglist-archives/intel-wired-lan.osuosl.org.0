Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A04D1A1867
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Apr 2020 00:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEE28869A9;
	Tue,  7 Apr 2020 22:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mi4zAjgW45xv; Tue,  7 Apr 2020 22:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A36F86901;
	Tue,  7 Apr 2020 22:55:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A4D11BF40D
 for <intel-wired-lan@osuosl.org>; Tue,  7 Apr 2020 22:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 94F5920486
 for <intel-wired-lan@osuosl.org>; Tue,  7 Apr 2020 22:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7TGs-vNyYJrM for <intel-wired-lan@osuosl.org>;
 Tue,  7 Apr 2020 22:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id B3112203D2
 for <intel-wired-lan@osuosl.org>; Tue,  7 Apr 2020 22:55:20 +0000 (UTC)
IronPort-SDR: oH0pjPK94VGAmaf6QrDkemtPjDdgfRs1DhBdWDZWxEH+YO7KDv3IoM7SGxA+laTyA3nkvGyp++
 cjCR130HPnfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:55:19 -0700
IronPort-SDR: 0ayYRUOfaPoK7583VEi9cdQFouRM7bzSfklT20IN65GmgANudNw4EhDm1d3budSqZI8TYhDx8B
 l66pD0mvPQUw==
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="398013275"
Received: from jyguan-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.212.37.126])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:55:14 -0700
MIME-Version: 1.0
From: Andre Guedes <andre.guedes@linux.intel.com>
To: jeffrey.t.kirsher@intel.com
Date: Tue, 07 Apr 2020 15:55:09 -0700
Message-ID: <158630010981.24556.16261609938467026439@sabikunn-mobl1.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: [Intel-wired-lan] Wrong conflict resolution in dev-queue
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeff,

I'm not sure exactly what is the workflow of dev-queue branch, but I believe we
had a wrong conflict resolution.

In current dev-queue, patch "igc: Use netdev log helpers in igc_ethtool.c"
changes some if-statement lines, however the original patch doesn't.

--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1918,14 +1919,14 @@ static void igc_diag_test(struct net_device *netdev,
                else
                        igc_reset(adapter);

-               netdev_info(adapter->netdev, "register testing starting");
-               if (!igc_reg_test(adapter, &data[TEST_REG]))
+               netdev_info(netdev, "Register testing starting");
+               if (igc_reg_test(adapter, &data[TEST_REG]))
                        eth_test->flags |= ETH_TEST_FL_FAILED;

                igc_reset(adapter);

-               netdev_info(adapter->netdev, "eeprom testing starting");
-               if (!igc_eeprom_test(adapter, &data[TEST_EEP]))
+               netdev_info(netdev, "EEPROM testing starting");
+               if (igc_eeprom_test(adapter, &data[TEST_EEP]))
                        eth_test->flags |= ETH_TEST_FL_FAILED;

This breaks the selftest functionality added by "igc: add support to interrupt,
eeprom, registers and link self-tests" patch.

In addition to that, the original patch fixes the interrupt log message which
is missing in current dev-queue.

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
