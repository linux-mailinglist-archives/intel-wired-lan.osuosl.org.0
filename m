Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE3C349E11
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C957984B73;
	Fri, 26 Mar 2021 00:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LRKoFlow0KqL; Fri, 26 Mar 2021 00:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B458484B6C;
	Fri, 26 Mar 2021 00:38:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 152C01C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28B2D60B9F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bsZTF5XolLgA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 772C960B82
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
IronPort-SDR: qU+DfCf+8nm9BgXBR0uTdzUMHCoyB/9Bw713N54fRjCRP82qUx5eaVRHnIclhopdcaKB4KHn/T
 n5roB9m+ePbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762077"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762077"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:44 -0700
IronPort-SDR: 20yu7BMwPyYwVXFbpwIluTPuYlYB4pm5ilaEQuF1f+PZ5K5niwJ4JmqsqCcN5Nsk7VGjpSsweJ
 ARH78EQd8t/Q==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276244"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:25 -0700
Message-Id: <20210326003834.3886241-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 02/11] intel: remove checker
 warning
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The sparse checker (C=2) found an assignment where we were mixing
types when trying to convert from data read directly from the
device NVM, to an array in CPU order in-memory, which
unfortunately the driver tries to do in-place.

This is easily solved by using the swap operation instead of an
assignment, and is already proven in other Intel drivers to be
functionally correct and the same code, just without a sparse
warning.

The change is the same in all three drivers.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning Detail:
  CHECK   .../e1000/e1000_ethtool.c
.../e1000/e1000_ethtool.c:516:32: warning: incorrect type in assignment (different base types)
.../e1000/e1000_ethtool.c:516:32:    expected unsigned short [usertype]
.../e1000/e1000_ethtool.c:516:32:    got restricted __le16 [usertype]
  CHECK   .../igb/igb_ethtool.c
.../igb/igb_ethtool.c:834:32: warning: incorrect type in assignment (different base types)
.../igb/igb_ethtool.c:834:32:    expected unsigned short [usertype]
.../igb/igb_ethtool.c:834:32:    got restricted __le16 [usertype]
  CHECK   .../igc/igc_ethtool.c
.../igc/igc_ethtool.c:555:32: warning: incorrect type in assignment (different base types)
.../igc/igc_ethtool.c:555:32:    expected unsigned short [usertype]
.../igc/igc_ethtool.c:555:32:    got restricted __le16 [usertype]
---
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c     | 2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index f976e9daa3d8..3c51ee94fa00 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -513,7 +513,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
 	memcpy(ptr, bytes, eeprom->len);
 
 	for (i = 0; i < last_word - first_word + 1; i++)
-		eeprom_buff[i] = cpu_to_le16(eeprom_buff[i]);
+		cpu_to_le16s(&eeprom_buff[i]);
 
 	ret_val = e1000_write_eeprom(hw, first_word,
 				     last_word - first_word + 1, eeprom_buff);
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 7545da216d8b..636a1b1fb7e1 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -831,7 +831,7 @@ static int igb_set_eeprom(struct net_device *netdev,
 	memcpy(ptr, bytes, eeprom->len);
 
 	for (i = 0; i < last_word - first_word + 1; i++)
-		eeprom_buff[i] = cpu_to_le16(eeprom_buff[i]);
+		cpu_to_le16s(&eeprom_buff[i]);
 
 	ret_val = hw->nvm.ops.write(hw, first_word,
 				    last_word - first_word + 1, eeprom_buff);
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 9722449d7633..2cb12431c371 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -554,7 +554,7 @@ static int igc_ethtool_set_eeprom(struct net_device *netdev,
 	memcpy(ptr, bytes, eeprom->len);
 
 	for (i = 0; i < last_word - first_word + 1; i++)
-		eeprom_buff[i] = cpu_to_le16(eeprom_buff[i]);
+		cpu_to_le16s(&eeprom_buff[i]);
 
 	ret_val = hw->nvm.ops.write(hw, first_word,
 				    last_word - first_word + 1, eeprom_buff);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
