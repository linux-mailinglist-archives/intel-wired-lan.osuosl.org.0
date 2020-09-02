Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FAC25B66D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Sep 2020 00:28:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E15CC86658;
	Wed,  2 Sep 2020 22:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o1ZJNSz-w1dH; Wed,  2 Sep 2020 22:28:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93E028589A;
	Wed,  2 Sep 2020 22:28:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBEF11BF345
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 22:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1A73872EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 22:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nkl5thA-HUyp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 22:28:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 130CA872EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 22:28:38 +0000 (UTC)
IronPort-SDR: k6NJ6KVQPrvh+5jLDCa6EWKqvKRHltAbG4rKeLyr5dQe+HDqHP9Rp2DqQGr2jiCIsYZysbByGZ
 tjXToTnOk5lg==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="242306792"
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="242306792"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 15:28:37 -0700
IronPort-SDR: i2ih89pLoFEvWrWrQYy0gNr6l6gxXu7iLzTlNkM+SVquou90xQKccMzs7JtAKCIfj/CDO2pi2a
 w5D3o9XFzJTQ==
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; d="scan'208";a="477812622"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 15:28:38 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 15:27:08 -0700
Message-Id: <20200902222708.2144290-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ixgbe: clean up W=1 warnings in
 ixgbe
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

Inspired by Lee Jones, this elminates the remaining W=1 warnings in
ixgbe.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 8 ++++----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 09a38272b413..cf272d3c5658 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6195,8 +6195,9 @@ static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
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
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
