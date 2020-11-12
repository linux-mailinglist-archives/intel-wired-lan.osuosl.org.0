Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB03D2B0F14
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 21:34:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D183E87887;
	Thu, 12 Nov 2020 20:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QqwuZnWmXahn; Thu, 12 Nov 2020 20:34:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9937087878;
	Thu, 12 Nov 2020 20:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AECC61BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 20:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A854887883
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 20:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DQTbgJZrlIWv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 20:34:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C5E448731F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 20:34:18 +0000 (UTC)
Received: from localhost.localdomain (ip5f5af1d9.dynamic.kabel-deutschland.de
 [95.90.241.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 347A62064712A;
 Thu, 12 Nov 2020 21:34:15 +0100 (CET)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 12 Nov 2020 21:33:56 +0100
Message-Id: <20201112203356.344748-1-pmenzel@molgen.mpg.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ixgbe: Support external GBE SerDes PHY
 BCM54616s
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jostar Yang <jostar_yang@accton.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Guohan Lu <lguohan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jostar Yang <jostar_yang@accton.com>

The Broadcom PHY is used in switches, so add the ID, and hook it up.

This upstreams the Linux kernel patch from the network operating system
SONiC from Februar 2020 [1].

[1]: https://github.com/Azure/sonic-linux-kernel/pull/122

Signed-off-by: Jostar Yang <jostar_yang@accton.com>
Signed-off-by: Guohan Lu <lguohan@gmail.com>
Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 3 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index fc389eecdd2b..cb685e917b0c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -380,6 +380,9 @@ static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id)
 	case X557_PHY_ID2:
 		phy_type = ixgbe_phy_x550em_ext_t;
 		break;
+	case BCM54616S_E_PHY_ID:
+		phy_type = ixgbe_phy_ext_1g_t;
+		break;
 	default:
 		phy_type = ixgbe_phy_unknown;
 		break;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 2be1c4c72435..4c317b0dbfd4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -1407,6 +1407,7 @@ struct ixgbe_nvm_version {
 #define QT2022_PHY_ID    0x0043A400
 #define ATH_PHY_ID       0x03429050
 #define AQ_FW_REV        0x20
+#define BCM54616S_E_PHY_ID 0x03625D10
 
 /* Special PHY Init Routine */
 #define IXGBE_PHY_INIT_OFFSET_NL 0x002B
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
