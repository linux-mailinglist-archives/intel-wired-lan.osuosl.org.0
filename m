Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAB443A934
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 02:24:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C81F6083F;
	Tue, 26 Oct 2021 00:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J727epiwynJT; Tue, 26 Oct 2021 00:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B2C360775;
	Tue, 26 Oct 2021 00:24:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE6911BF25F
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 00:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4F51400FA
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 00:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7-SnTN08N25I for <intel-wired-lan@osuosl.org>;
 Tue, 26 Oct 2021 00:24:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50BB4400BB
 for <intel-wired-lan@osuosl.org>; Tue, 26 Oct 2021 00:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1635207888;
 bh=Z6l5B8/+2G+xSA9zUObzK7Tm7OhAu2eHSWcdpb+Al3I=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=EvtBJk86Dp/vb/siB1LKQFzl7HZzr4V9LhshJ3AkMqU86B+cLE0pqgcoi5I3Jdcs0
 NWyLwfHhavDLP0c6+SnMepq9A7IACgeXtflsJ+tKmJeJC+Qwr8cNku0HEctLXhwkAS
 ay9XmOvY4b6r9PK4cND/8bT2e6caewwlnseqRxHg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bap12.server.lan [172.19.172.82]) (via HTTP); Tue, 26 Oct 2021
 02:24:48 +0200
MIME-Version: 1.0
Message-ID: <trinity-d1eee2a2-f92d-4a57-adcb-d82f227094f7-1635207888762@3c-app-gmx-bap12>
From: Robert Schlabbach <robert_s@gmx.net>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Date: Tue, 26 Oct 2021 02:24:48 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:fzBeo96hm2eXtZ5Dw6Ww10/tegS+h5gDjXqdMYwu09oiNWLJ+o8Kp4Hosvv2Kdp5C7Sd+
 me3jUA4pPl6NICkYXbdc1T6RoSYhSHgykvu4ufN3hzs4bakbfwN4jLwMM59jKGPNC4FTGFBANzho
 CP1o9aZZk5X9+Tj7wAeBGlqraTZJMsdUZM7W+90eKdfDo8RsffW/oADPdTPXCfapxenPbpmPR1yr
 AlIkkeMFGAnT1Ob6gf88+f58mrZrdF5ky0qKPkHxGJsAaLwZrsI1xrSb25NYVuOPcnoi39kKDkep
 K4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:HVsVt0vWl1Y=:VHiuVvzt06UA5ptfGz2zRM
 xVShj66VRgJWW2fzW9GfnaXxIl6XD/68Q7/m2RmDGieqAlfrHzchKXsBSGIkaXOn0rZNGt1h2
 +rV923TMdBPsICfTDNPlQEPHuHDIhH9D+n1NzKTg5cxt5rLAwIiBLar/Ilnbr7fEBmrf1hfBI
 QKojJpuZnnS4gQiULCZa6uLk822wziZmlE56Rb7+VuKxYUjHkX3Mthf+KyclGFolOnzukef88
 ID9Q4WTKQ2TwdbcIyCBDyWm/sV0IW0igT3q376ArETTF6AZ+03YjetBb/k8i7BcpvYIp3C+Kz
 YD8WhbDmAMLBQ1xVSiqkPtQJhBytdl1MsEkC71IxZ+tRAtsdE+EBQiQBUR1QlAza49YewW7My
 BB73TfpoKz7FDmznz/r4CIog0LA7fCe3n+ARgaCl4cH2JocRJ9L2abriKgzMoKzz/lYjqquLI
 XKpj07KVwSWBufwSu5ZYeBIkSwpZHstafKhGGOec6+VHV8CfTkUTbQB+4e4ZI2zVCCJE6aMkO
 +dBhWt17dvE1CcoBZznza9mU9F4M+5G9KfFac8HAPmLD+k/hLyofhSfj8DGEG/yTti6erL4ZJ
 EkHLzCHRIqx1pyBdWnSxqqQ6ZBMTOwZDGfkiBNeQGA83F7JihYBSaliP6GdLJ0QnQ0Z/qfa/p
 6G+rSGNmTQgvJzc0FVZLrL5/2YzA4VweShg+mCi9i1TbAFvjuo/5fndcv9NiGGBDjaglbrD1L
 DN/bBSQL9YlagArB7vxsPEmUivrnwcQxdJxeO7LK5nCob3OJVkqTRxVFP6BapsCZz7ARa2xq6
 Vl11Uu+
Subject: [Intel-wired-lan] [PATCH net] ixgbe: Document how to enable NBASE-T
 support
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
Gbps support") introduced suppression of the advertisement of NBASE-T
speeds by default, according to Todd Fujinaka to accommodate customers
with network switches which could not cope with advertised NBASE-T
speeds, as posted in the E1000-devel mailing list:

https://sourceforge.net/p/e1000/mailman/message/37106269/

However, the suppression was not documented at all, nor was how to
enable NBASE-T support.

Properly document the NBASE-T suppression and how to enable NBASE-T
support.

Fixes: a296d665eae1 ("ixgbe: Add ethtool support to enable 2.5 and 5.0 Gbps support")
Reported-by: Robert Schlabbach <robert_s@gmx.net>
Signed-off-by: Robert Schlabbach <robert_s@gmx.net>
---
 .../device_drivers/ethernet/intel/ixgbe.rst      | 16 ++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  4 ++++
 2 files changed, 20 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
index f1d5233e5e51..a60b507e5173 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
@@ -515,6 +515,22 @@ The offload is also supported for ixgbe's VFs, but the VF must be set as
   ethtool --set-priv-flags eth<x> vf-ipsec on
   ip link set eth<x> vf <y> trust on

+NBASE-T Support
+---------------
+The ixgbe driver supports NBASE-T on some devices. However, the advertisement
+of NBASE-T speeds is suppressed by default, to accommodate broken network
+switches which cannot cope with advertised NBASE-T speeds. Use the ethtool
+command to enable advertising NBASE-T speeds on devices which support it::
+
+  ethtool -s eth? advertise 0x1800000001028
+
+On Linux systems with INTERFACES(5), this can be specified as a pre-up command
+in /etc/network/interfaces so that the interface is always brought up with
+NBASE-T support, e.g.::
+
+  iface eth? inet dhcp
+       pre-up ethtool -s eth? advertise 0x1800000001028 || true
+

 Known Issues/Troubleshooting
 ============================
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 13c4782b920a..750b02bb2fdc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5526,6 +5526,10 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 	if (!speed && hw->mac.ops.get_link_capabilities) {
 		ret = hw->mac.ops.get_link_capabilities(hw, &speed,
 							&autoneg);
+		/* remove NBASE-T speeds from default autonegotiation
+		 * to accommodate broken network switches in the field
+		 * which cannot cope with advertised NBASE-T speeds
+		 */
 		speed &= ~(IXGBE_LINK_SPEED_5GB_FULL |
 			   IXGBE_LINK_SPEED_2_5GB_FULL);
 	}
--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
