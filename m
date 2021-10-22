Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3D3438046
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Oct 2021 00:35:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DF7F80E27;
	Fri, 22 Oct 2021 22:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qK3GXnLswHFK; Fri, 22 Oct 2021 22:35:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DE9C80E1F;
	Fri, 22 Oct 2021 22:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D5351BF3BF
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3895C40442
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JgeLvxoSE394 for <intel-wired-lan@osuosl.org>;
 Fri, 22 Oct 2021 22:35:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C67DA401EC
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634942110;
 bh=GMsRodDdK4b07AnhcdBQ2SjvFe1PXnAEYiu47JsDgyg=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=WomdXcqrS6462YoCLdJDOIVAsqcd68mh1zOLZX6FIqP96Ht2o214vljIEHzg0PukQ
 a5UPj+kYfaEVi5tZKKeX8GU7ZgImARqY8WOPUkbCoj/zJlgMlUQbgJRDFkQy9+p2L1
 eHyMko/HTfCpDdSBEdh0YQyX/cFVBPkSCh+cjDoo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bs49.server.lan [172.19.170.102]) (via HTTP); Sat, 23 Oct 2021
 00:35:10 +0200
MIME-Version: 1.0
Message-ID: <trinity-4711ab3d-ed72-4135-8e93-a2866fe1301c-1634942110780@3c-app-gmx-bs49>
From: robert_s@gmx.net
To: intel-wired-lan@osuosl.org
Date: Sat, 23 Oct 2021 00:35:10 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:QUYJS5OzGntVD5qMyHxAMUcZfJ02vLUwnX2AlTZu4ZlbR4VUGlQfqnahINYAIXWlJ3qzQ
 PF7Tai4UNyc7/23f5ic7afVi5Ye87NvZLQQ2VUDa7kBv/idH/CiGxF6PmPYvbeg5UbYu98c2movd
 B21wpU4Yhs9lQskPaF+d41rKfbr0AApynBTJ7v4NqOQcerVua5JmHM9MWXJOCZQVBNcwsfYKgN1j
 UeQ5ysUp16u03Lan5XwzL+v0KA31OyLsLBg5wEZEH7jeg7Jwb6pZFxxR6lDEdBi5XPk2F90hpBD/
 +Q=
X-UI-Out-Filterresults: notjunk:1;V03:K0:Nc8onYQC3yU=:X01iqKg9CQYa0GrRtVDD8j
 mr9p+iY9rpcJyirnr35jfxu/C5OXa2Mck1s8bx4OnUKdQF2Lp7UhoRawhIRHZTgszmF9UEiRv
 GHN7vP79NJ2XUW1gvLj+V1MKjE6LA1QLkb8QB88rZUK6Fo8z0wZE0Mdw/IJ9tZrNdTMXTvPIU
 pTCkbMp3NnkA+CuLnKBUaclNswmYzsamH4QM0DDbNJ1Rh9oNYAZxhC9+HW2QClEiW2eHcSKxU
 RoVwgrrcKBnnlOZ58DGKw2lLPI7UTv0a8e7535mf5k2InjMgMPkL+scfbf7wTIC6Gk7pInxsd
 BY/4HpHeC+P17RPHAykrDrwnX//yoPPiD8RxJXK7Mgz81rUYtbr060yo5Ik37yH7HabkVNxe1
 m6QSx6oPUmCDJw1+Wrhcn8ByfqrlYO5spASp/TsbCMSt7++6HE848inB+iCn0Y8F0kkavCBbZ
 OyzSOqHotIbYZeG0NSIa8gRNQPAOulWWL9Dt96G5Mqjg/OepbUxmz3IyGXc+EDM+A4507y4Xm
 texIAhHCxe++JBSRQmXI7ps+4MZrsrF34IxWN9nBeox68T1l3AhbwhQgRYvYsoPcpu2gdYmKu
 E/vrtzaywtIogV9jKdQ6gB81O3h7s92XkDKUd1qZLbz+G2ms5BB+dDl10FV8k3qmMpJ6Oxivr
 pSMeB//yGMrByHlCYK7wjQYNDPO5SnCdNnPSJQC4D4CgO/Svyelab9tT+i/3KQrHoyIoeu1dz
 hx84C+S85A3Ho5zP5G/t2lgnwn1HcdHI9LmOBi4tUdqahBtKi7Nv3H2LDF/vRTx5CGAOdbvlS
 rEcRlvE
Subject: [Intel-wired-lan] [PATCH v3] ixgbe: Allow disabling NBASE-T
 suppression hack
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

Commit a296d665eae1 ("ixgbe: Add ethtool support to enable 2.5 and 5.0
Gbps support") introduced a hack which suppresses the advertisement of
NBASE-T speeds by default, according to Todd Fujinaka to accommodate
customers with network switches which could not cope with advertised
NBASE-T speeds, as he wrote in the E1000-devel mailing list:

https://sourceforge.net/p/e1000/mailman/message/37106269/

However, this hack was not documented at all, nor was the way to work
around it. Also, this was a rather unfriendly solution for customers
with NBASE-T switches.

Add the module parameter "enable_nbase_t_suppression_hack" to allow
disabling the hack at boot time, for the benefit of customers with
NBASE-T switches.

Properly document the hack and how to work around or disable it.

Fixes: a296d665eae1 ("ixgbe: Add ethtool support to enable 2.5 and 5.0 Gbps support")
Reported-by: Robert Schlabbach <robert_s@gmx.net>
Signed-off-by: Robert Schlabbach <robert_s@gmx.net>
---
 .../device_drivers/ethernet/intel/ixgbe.rst   | 30 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 15 ++++++++--
 2 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
index f1d5233e5e51..fb8bf85ccfd9 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
@@ -273,6 +273,16 @@ debug
 This parameter adjusts the level of debug messages displayed in the system
 logs.

+enable_nbase_t_suppression_hack
+-------------------------------
+:Valid Range: 0,1
+:Default Value: 1 (enabled)
+
+This parameter enables the hack which suppresses the advertisement of NBASE-T
+speeds to accommodate broken network switches which cannot cope with advertised
+NBASE-T speeds. It is recommended to set this parameter to 0 in all network
+environments with properly functioning network switches.
+

 Additional Features and Configurations
 ======================================
@@ -515,6 +525,26 @@ The offload is also supported for ixgbe's VFs, but the VF must be set as
   ethtool --set-priv-flags eth<x> vf-ipsec on
   ip link set eth<x> vf <y> trust on

+NBASE-T Support
+---------------
+The ixgbe driver supports NBASE-T on some devices. However, the advertisement
+of NBASE-T speeds is suppressed by default, to accommodate broken network
+switches which cannot cope with advertised NBASE-T speeds. There are two ways
+to enable advertising NBASE-T speeds on devices which support it:
+
+1. At runtime using the ethtool command (required after each boot)::
+
+  ethtool -s eth? advertise 0x1800000001028
+
+2. At boot time using the module parameter enable_nbase_t_suppression_hack::
+
+  Create a file /etc/modprobe.d/ixgbe.conf with the line::
+
+  options ixgbe enable_nbase_t_suppression_hack=0
+
+  Note that you may have to rebuild the initial ramdisk image for this change
+  to take effect. On Debian or Ubuntu, this is done via ``update-initramfs -u``.
+

 Known Issues/Troubleshooting
 ============================
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 13c4782b920a..8073d375bde2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -156,6 +156,11 @@ module_param(allow_unsupported_sfp, uint, 0);
 MODULE_PARM_DESC(allow_unsupported_sfp,
 		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");

+static unsigned int enable_nbase_t_suppression_hack = 1;
+module_param(enable_nbase_t_suppression_hack, uint, 0);
+MODULE_PARM_DESC(enable_nbase_t_suppression_hack,
+		 "Enable hack which suppresses the advertisement of NBASE-T speeds to accommodate broken network switches");
+
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
 module_param(debug, int, 0);
@@ -5526,8 +5531,14 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 	if (!speed && hw->mac.ops.get_link_capabilities) {
 		ret = hw->mac.ops.get_link_capabilities(hw, &speed,
 							&autoneg);
-		speed &= ~(IXGBE_LINK_SPEED_5GB_FULL |
-			   IXGBE_LINK_SPEED_2_5GB_FULL);
+		if (enable_nbase_t_suppression_hack) {
+			/* remove NBASE-T speeds from default autonegotiation
+			 * to accommodate broken network switches in the field
+			 * which cannot cope with advertised NBASE-T speeds
+			 */
+			speed &= ~(IXGBE_LINK_SPEED_5GB_FULL |
+				   IXGBE_LINK_SPEED_2_5GB_FULL);
+		}
 	}

 	if (ret)
--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
