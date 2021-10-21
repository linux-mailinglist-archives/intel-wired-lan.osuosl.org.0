Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A06436C47
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 22:39:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EF3A4027A;
	Thu, 21 Oct 2021 20:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6c-CBIuOOZb; Thu, 21 Oct 2021 20:39:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 661C9401EB;
	Thu, 21 Oct 2021 20:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 308CF1BF318
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 20:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28D2882D75
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 20:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ndJTpWUu514C for <intel-wired-lan@osuosl.org>;
 Thu, 21 Oct 2021 20:38:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB6F582BBA
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 20:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634848678;
 bh=ZKxWBVEozOWbR8/XRWJ6rcCjE5JFDP6Ei0x84TA8sTM=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=fgZvyJGaGuD/oD/IrWvGe2V6VDAGQapaKlnucUk4tW7TV4SpJjpUv0+WpjYEJxlcW
 urRZcFW04l6yHCqwzwx+4PRougi3xpZj2MKJqqmsDg9eSEwmwgv2+CP4RkoHD7JriB
 vG2GBJCkIPzuZsxC+akh5D3SPzZKmnCXQrAnOMcg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bap43.server.lan [172.19.172.113]) (via HTTP); Thu, 21 Oct 2021
 22:37:58 +0200
MIME-Version: 1.0
Message-ID: <trinity-a47d7640-4103-411d-9233-72b2eb0cb13b-1634848678818@3c-app-gmx-bap43>
From: Robert Schlabbach <Robert.Schlabbach@gmx.net>
To: intel-wired-lan@osuosl.org
Date: Thu, 21 Oct 2021 22:37:58 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:G/3ewsV7mBL+pxIzMjwoBbFZEwauhbY2CPLusWz1POSM007rHntD+7QSFlVgkGIGBK1nM
 uE87v7diy/XAKATEaYMKcUJ4aEIF+fd6cyKEoFvC05U5aylTuyJNOOrsPIeVEpAijjwnafFkWSND
 XRCA37qPO1Qz/oCJYtP+sYR2WHkM0eMUTXm2ObCENFZ8q7Md5toDAQcVRgXww8yomiHCRYizh4e0
 N6NsNpo3M22yQMSV+FvDaCgFiXAJ3ZAam5k6zXqPMkgHDHweY63ZkWE1DxND+V2mH5fXE0gJUfnv
 j0=
X-UI-Out-Filterresults: notjunk:1;V03:K0:zHcy7A7dg4E=:RRvMxeRzjMUjqSOkgsbQdk
 eVnvqLuB/hiuZdqqfvmsRQKgePBUQlVO7nDdg6lrs5mu6wPYfSsSA7muj7ct9ryHRq/eWHYxl
 pmzc3X7XSr2roM8wSpz6bFsXkk+Sa8KBYT5YoCSocecVy0H7zvIceQVVAbnMMGBh/GWn7iunA
 NLQutk/auFjiLI/orEvwnHEul9whl3n9F3B+YfIt3ONqVzR8XBfDONuZfTvRGhmxI3d/hZPPZ
 86NcxyTtkQbsWcOQ72VmX88TWBl4nj+GEohgXThKKgcCIqXUobs2S1vIEg6XvVTxNRAYXZg+i
 T7IVFDZ9v6GnbynKTyPZkpoDZm1Qdwe8syNlIHw36/EcyS4fWnvgVsDK4liCwadj5YomlF97N
 iAw+7Iz5CxhN+cYq+hEhi+w3l6qRGY7Z9zt1YaWxwTgg951GJmAgqQl2MEvYfkKW6/iRPr0Dn
 JpAQFUzAJDUlaHizjp9M4Az7exxjis1HXQ30UZJf++yLw5gO0/Os4brAm9aC9XCJ6BFxEoVk+
 hp6lZZKCFzQIgbaIfDf54iXVQjwAwswtHlkgg8kovvedCisz0Spgwd4Cjz9BJ6j8yVXX1j8cy
 F48oZmHPf6kTknBahc0Tj/UXRkuEk3sVJp3FWXdF4WYxlsf21pGtxe78DV5oy4KjyAe879tr9
 +fCMYIcJcN5QMpctMsMAGoN4bTQ77UKtX02ZNop/I85tq4KPwoM08ZbqGYvMI/C+1Zq4+WSJY
 Zl7Qr//4gXS+HSXjkKC6bbolgr+fEPetem8SvlgwrRlC59v009tiWhMoD/59btQijfXquGd4r
 ju+jLt6
X-Mailman-Approved-At: Thu, 21 Oct 2021 20:39:23 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: Allow disabling NBASE-T
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

Commit a296d665eae1e8ec6445683bfb999c884058426a introduced a hack which
suppresses the advertisement of NBASE-T speeds by default, according to
Todd Fujinaka to accommodate customers with broken network switches
which could not cope with advertised NBASE-T speeds. However, this hack
was not documented at all, nor was the way to work around it. Also, this
was a rather unfriendly solution for customers with NBASE-T switches.

Add a module parameter "disable_nbase_t_suppression_hack" to allow
disabling the hack at boot time, for the benefit of customers with
NBASE-T switches.

Properly document the hack and how to work around or disable it.

Reported-by: Robert Schlabbach <robert_s@gmx.net>
Signed-off-by: Robert Schlabbach <robert_s@gmx.net>
---
 .../device_drivers/ethernet/intel/ixgbe.rst   | 27 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 +++++++++--
 2 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
index f1d5233e5e51..8ec8454d0504 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
@@ -273,6 +273,16 @@ debug
 This parameter adjusts the level of debug messages displayed in the system
 logs.

+disable_nbase_t_suppression_hack
+--------------------------------
+:Valid Range: 0,1
+:Default Value: 0 (disabled)
+
+This parameter disables the hack which suppresses the advertisement of NBASE-T
+speeds to accommodate broken network switches which cannot cope with advertised
+NBASE-T speeds. It is recommended to set this parameter to 1 in all network
+environments with properly functioning switches.
+

 Additional Features and Configurations
 ======================================
@@ -515,6 +525,23 @@ The offload is also supported for ixgbe's VFs, but the VF must be set as
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

 Known Issues/Troubleshooting
 ============================
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 13c4782b920a..6d58a6dd65bb 100644
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
@@ -5526,8 +5531,15 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 	if (!speed && hw->mac.ops.get_link_capabilities) {
 		ret = hw->mac.ops.get_link_capabilities(hw, &speed,
 							&autoneg);
-		speed &= ~(IXGBE_LINK_SPEED_5GB_FULL |
-			   IXGBE_LINK_SPEED_2_5GB_FULL);
+		if (!disable_nbase_t_suppression_hack) {
+			/*
+			 * remove NBASE-T speeds from default autonegotiation
+			 * to accomodate broken network switches in the field
+			 * which cannot cope with advertised NBASE-T speeds.
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
