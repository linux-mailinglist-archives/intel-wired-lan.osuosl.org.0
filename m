Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0935E4373BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Oct 2021 10:37:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BEF5407A3;
	Fri, 22 Oct 2021 08:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0c6Sw1lm5TRi; Fri, 22 Oct 2021 08:37:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73F1B40775;
	Fri, 22 Oct 2021 08:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3EACA1BF342
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 08:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C033836A7
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 08:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8xiUKapPEat6 for <intel-wired-lan@osuosl.org>;
 Fri, 22 Oct 2021 08:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E219C832B3
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 08:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634891867;
 bh=Rn5pIvTxhZ/yuXm+5YvcTDnOjUNbf1Qi8W2lB/LB/6U=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=ejcJ44dAf05OM7aEW5VHVLNVhAlA6Ofe4kPeUPHEelOW3PE3DLC70pDLbNBo9Z8B5
 6WIEWGSNzUo4HCDioSp2+qLXhvVW6CxqGV4AytZBZOSbTLquCTQzHftS6TDkC+nwUz
 mmmMLy1lVUrvhxn3GbtX7RJeU+jNoLF/pV9/e7mQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bap44.server.lan [172.19.172.114]) (via HTTP); Fri, 22 Oct 2021
 10:37:47 +0200
MIME-Version: 1.0
Message-ID: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
From: Robert Schlabbach <robert_s@gmx.net>
To: intel-wired-lan@osuosl.org
Date: Fri, 22 Oct 2021 10:37:47 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:trGhgRRTjF7LQoIxfEcxpCroN6b66db97vjcwtR2MTBLyGjOHaucB55rCv5cNlZYNCzIL
 sowckNKZs1Y4l6DLqMoE2oOQaslenKZZb4xSLoalb4LMZSphiVXq7baV1f7MKmNUPYRm/KMc67ck
 VuCksJojifo8YsY5R3ThBp9AyktbN3MeBlgxrg29334j5XhrqJhrOUSi+ASlACu6rSOzpEy8v7br
 zPOvovBBQKuR8cY1xP6Csip1OqOSc+ne6JfeRtiw0iX4vRA85IMn9Azvk0OsBFglwKwlbubZaYXq
 Ds=
X-UI-Out-Filterresults: notjunk:1;V03:K0:0RLTWn6Cn1w=:x5uFHzLn1v8eGf2gLiveto
 HVVHoIYAlL1Vy5MqMDDs2vKngh+a2JJEJCC5J+VyQiWbKp/VNen3yIPKHg+474rLnLQHSo6MH
 rHXVMa4P6koPtb6Tj6Mkv+lFUrJhtxvNkzSei6OUDF6OXeea5J+0ins0JdeePxyNabmSArSpg
 UlDFSzWZbMih/gCSYrJEed6WdqPQ2ppFfI7IhOOH35gL+pOh7ZtMgohS7MOE0WJq8NlJJQ6Bn
 ghTyjnKkhDkpVq7SpaWu68iPkux+S/CYZV3EFHMQS8pE2ZEz9yrnN7qm3IYq4XAt4vjjp95h+
 JprU7cul/lnlDCXsNw4vVaUOOMr0OHg1LxB3ByjCBT8Uju27kXlsikyj8+KvhGTZBewbHkFmu
 nZMgJWTdu8fvHTJK3Pyom4f9YQuE7A4/mh2OawTYPVYAP9OCJpXUIvv2fwEczQpZTiqLe7UQK
 COVYC8IyUJ1DZ3z/C4xg077U2VYPUoTuqKffXhLATjop73dCFidi9gf1vD6T4BCHszBa3kcKu
 rcM9xkemaYLIBrTcLMLBaTD3i+p49epdQwbXkx9cNiWkE23Qkl1oEbRY023lCfIgiIrGQiHiZ
 n4rYu5OULaUa2ck+sU6VLc/tWtzpn9DaRXN9Zy9FRUBFuys7AT2GC3CiPG0o+drCBfbsHYPXQ
 zUpXRLOu80ipynQgb1Yn4dM6YZ0YqC6bOFt+6H1eodDgcyo7TYCRCQ/kg63nXvjHNR14eGA1P
 ky/70Tbgtma/4kVVAjIz0dx5fujc3PoETrFIo08Akzd9ngPyJSsnskB4LPBXtduv8WL6SYxfU
 uWAbX/M
Subject: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
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
NBASE-T speeds. However, this hack was not documented at all, nor was
the way to work around it. Also, this was a rather unfriendly solution
for customers with NBASE-T switches.

Add a module parameter "disable_nbase_t_suppression_hack" to allow
disabling the hack at boot time, for the benefit of customers with
NBASE-T switches.

Properly document the hack and how to work around or disable it.

Reported-by: Robert Schlabbach <robert_s@gmx.net>
Signed-off-by: Robert Schlabbach <robert_s@gmx.net>
---
 .../device_drivers/ethernet/intel/ixgbe.rst   | 30 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 15 ++++++++--
 2 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
index f1d5233e5e51..46502c7dcba6 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
@@ -273,6 +273,16 @@ debug
 This parameter adjusts the level of debug messages displayed in the system
 logs.

+disable_nbase_t_suppression_hack
+--------------------------------
+:Valid Range: 0,1
+:Default Value: 0 (hack enabled)
+
+This parameter disables the hack which suppresses the advertisement of NBASE-T
+speeds to accommodate broken network switches which cannot cope with advertised
+NBASE-T speeds. It is recommended to set this parameter to 1 in all network
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
+2. At boot time using the module parameter disable_nbase_t_suppression_hack::
+
+  Create a file /etc/modprobe.d/ixgbe.conf with the line::
+
+  options ixgbe disable_nbase_t_suppression_hack=1
+
+  Note that you may have to rebuild the initial ramdisk image for this change
+  to take effect. On Debian or Ubuntu, this is done via "update-initramfs -u".
+

 Known Issues/Troubleshooting
 ============================
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 13c4782b920a..f75943879fe7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -156,6 +156,11 @@ module_param(allow_unsupported_sfp, uint, 0);
 MODULE_PARM_DESC(allow_unsupported_sfp,
 		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");

+static unsigned int disable_nbase_t_suppression_hack;
+module_param(disable_nbase_t_suppression_hack, uint, 0);
+MODULE_PARM_DESC(disable_nbase_t_suppression_hack,
+		 "Disable hack which suppresses the advertisement of NBASE-T speeds to accommodate broken network switches");
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
+		if (!disable_nbase_t_suppression_hack) {
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
