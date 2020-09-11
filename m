Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55008265690
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 03:23:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 029C82E1F6;
	Fri, 11 Sep 2020 01:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V1aJLPcvLP4U; Fri, 11 Sep 2020 01:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6A6052E209;
	Fri, 11 Sep 2020 01:23:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F81B1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C98D87662
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6I6-FU8YRLWA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42B9E875CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
IronPort-SDR: P1yzYCvYi27zUae/Ks6+0f12//ad+Gow0NmvPDFVhY4pts1Cpb8YB/q4MaORd/2wBmmnG/GdRO
 LY/vUZR+kdpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="159613188"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="159613188"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
IronPort-SDR: X6Dp6g8S2cE0f0A+KmukmVWLfIhUivuB6X95Tv+HrxeotxfMVO1PpINPp7AtTgmpgUOJUWcQtw
 XewGPcgJDBmA==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449808141"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:44 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 10 Sep 2020 18:23:30 -0700
Message-Id: <20200911012337.14015-5-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200911012337.14015-1-jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH net-next v1 04/11] ixgbe: clean up W=1
 warnings in ixgbe
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Inspired by Lee Jones, this eliminates the remaining W=1 warnings in
ixgbe.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 8 ++++----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 0b675c34ce49..02899f79f0ff 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6175,8 +6175,9 @@ static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
 /**
  * ixgbe_tx_timeout - Respond to a Tx Hang
  * @netdev: network interface device structure
+ * @txqueue: queue number that timed out
  **/
-static void ixgbe_tx_timeout(struct net_device *netdev, unsigned int txqueue)
+static void ixgbe_tx_timeout(struct net_device *netdev, unsigned int __always_unused txqueue)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 7980d7265e10..f77fa3e4fdd1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -771,7 +771,7 @@ static s32 ixgbe_mii_bus_write_generic(struct ixgbe_hw *hw, int addr,
 
 /**
  *  ixgbe_mii_bus_read - Read a clause 22/45 register
- *  @hw: pointer to hardware structure
+ *  @bus: pointer to mii_bus structure which points to our driver private
  *  @addr: address
  *  @regnum: register number
  **/
@@ -786,7 +786,7 @@ static s32 ixgbe_mii_bus_read(struct mii_bus *bus, int addr, int regnum)
 
 /**
  *  ixgbe_mii_bus_write - Write a clause 22/45 register
- *  @hw: pointer to hardware structure
+ *  @bus: pointer to mii_bus structure which points to our driver private
  *  @addr: address
  *  @regnum: register number
  *  @val: value to write
@@ -803,7 +803,7 @@ static s32 ixgbe_mii_bus_write(struct mii_bus *bus, int addr, int regnum,
 
 /**
  *  ixgbe_x550em_a_mii_bus_read - Read a clause 22/45 register on x550em_a
- *  @hw: pointer to hardware structure
+ *  @bus: pointer to mii_bus structure which points to our driver private
  *  @addr: address
  *  @regnum: register number
  **/
@@ -820,7 +820,7 @@ static s32 ixgbe_x550em_a_mii_bus_read(struct mii_bus *bus, int addr,
 
 /**
  *  ixgbe_x550em_a_mii_bus_write - Write a clause 22/45 register on x550em_a
- *  @hw: pointer to hardware structure
+ *  @bus: pointer to mii_bus structure which points to our driver private
  *  @addr: address
  *  @regnum: register number
  *  @val: value to write
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
