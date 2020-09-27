Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8248C27A5F4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:43:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A6BA2037E;
	Mon, 28 Sep 2020 03:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jnBi08VCAhl1; Mon, 28 Sep 2020 03:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62C96204B9;
	Mon, 28 Sep 2020 03:42:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 383201BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 344EB8513B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zPJyrA7DZ9Fu for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4E69E85624
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:32 +0000 (UTC)
Message-Id: <20200927194921.839848434@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=E8BWshtU8a/PkQjFPYy93BN17JLJsGh02VUnxk0upzE=;
 b=N+JwA8r3ht2f/M3ne58BpHfK1GOt4GMqgR18UWPfudBaJBFVIMdq0c1il9j4d+HHmtwtzs
 dmqcYnudPntJFjQw+NeBhPlRkwqSgONwm1d7AhSB6RMMtlKXUSrO/zsTuOPAOq0SzUhg72
 ZYvkb2hSCYvJCyLpN5Nw1itasArreCiHk2i661yoGbLq2npjGEWG3aIJgA2yx7gcFqOoeX
 s3wVL+sMCKLksBDWA0g69AYJhaNQL0jnR8gZXl3eqiXQxdYi914TlLexu6dI2Y6U7nqN5H
 5n1t4HiKzEK+gZC8Kb5q4zYumbZWOdMm39zvPowPfdmw12wBDSIyP1vvzR1+2g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=E8BWshtU8a/PkQjFPYy93BN17JLJsGh02VUnxk0upzE=;
 b=4RL85lLhlslR61dMUmztot7BjIosLb2ekytQx92VaR4TQzSfM5fCdFe3L+k6GNbwDMYffR
 V1pCph8cyROkLAAQ==
Date: Sun, 27 Sep 2020 21:49:06 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 20/35] net: usb: kaweth: Replace
 kaweth_control() with usb_control_msg()
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Martin Habets <mhabets@solarflare.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

kaweth_control() is almost the same as usb_control_msg() except for the
memory allocation mode (GFP_ATOMIC vs GFP_NOIO) and the in_interrupt()
check.

All the invocations of kaweth_control() are within the probe function in
fully preemtible context so there is no reason to use atomic allocations,
GFP_NOIO which is used by usb_control_msg() is perfectly fine.

Replace kaweth_control() invocations from probe with usb_control_msg().

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-usb@vger.kernel.org
Cc: netdev@vger.kernel.org

---
 drivers/net/usb/kaweth.c |   93 +++++++++++++++--------------------------------
 1 file changed, 30 insertions(+), 63 deletions(-)

--- a/drivers/net/usb/kaweth.c
+++ b/drivers/net/usb/kaweth.c
@@ -282,19 +282,13 @@ static int kaweth_control(struct kaweth_
  ****************************************************************/
 static int kaweth_read_configuration(struct kaweth_device *kaweth)
 {
-	int retval;
-
-	retval = kaweth_control(kaweth,
-				usb_rcvctrlpipe(kaweth->dev, 0),
+	return usb_control_msg(kaweth->dev, usb_rcvctrlpipe(kaweth->dev, 0),
 				KAWETH_COMMAND_GET_ETHERNET_DESC,
 				USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
-				0,
-				0,
-				(void *)&kaweth->configuration,
+				0, 0,
+				&kaweth->configuration,
 				sizeof(kaweth->configuration),
 				KAWETH_CONTROL_TIMEOUT);
-
-	return retval;
 }
 
 /****************************************************************
@@ -302,21 +296,14 @@ static int kaweth_read_configuration(str
  ****************************************************************/
 static int kaweth_set_urb_size(struct kaweth_device *kaweth, __u16 urb_size)
 {
-	int retval;
-
 	netdev_dbg(kaweth->net, "Setting URB size to %d\n", (unsigned)urb_size);
 
-	retval = kaweth_control(kaweth,
-				usb_sndctrlpipe(kaweth->dev, 0),
-				KAWETH_COMMAND_SET_URB_SIZE,
-				USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
-				urb_size,
-				0,
-				(void *)&kaweth->scratch,
-				0,
-				KAWETH_CONTROL_TIMEOUT);
-
-	return retval;
+	return usb_control_msg(kaweth->dev, usb_sndctrlpipe(kaweth->dev, 0),
+			       KAWETH_COMMAND_SET_URB_SIZE,
+			       USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
+			       urb_size, 0,
+			       &kaweth->scratch, 0,
+			       KAWETH_CONTROL_TIMEOUT);
 }
 
 /****************************************************************
@@ -324,21 +311,14 @@ static int kaweth_set_urb_size(struct ka
  ****************************************************************/
 static int kaweth_set_sofs_wait(struct kaweth_device *kaweth, __u16 sofs_wait)
 {
-	int retval;
-
 	netdev_dbg(kaweth->net, "Set SOFS wait to %d\n", (unsigned)sofs_wait);
 
-	retval = kaweth_control(kaweth,
-				usb_sndctrlpipe(kaweth->dev, 0),
-				KAWETH_COMMAND_SET_SOFS_WAIT,
-				USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
-				sofs_wait,
-				0,
-				(void *)&kaweth->scratch,
-				0,
-				KAWETH_CONTROL_TIMEOUT);
-
-	return retval;
+	return usb_control_msg(kaweth->dev, usb_sndctrlpipe(kaweth->dev, 0),
+			       KAWETH_COMMAND_SET_SOFS_WAIT,
+			       USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
+			       sofs_wait, 0,
+			       &kaweth->scratch, 0,
+			       KAWETH_CONTROL_TIMEOUT);
 }
 
 /****************************************************************
@@ -347,22 +327,15 @@ static int kaweth_set_sofs_wait(struct k
 static int kaweth_set_receive_filter(struct kaweth_device *kaweth,
 				     __u16 receive_filter)
 {
-	int retval;
-
 	netdev_dbg(kaweth->net, "Set receive filter to %d\n",
 		   (unsigned)receive_filter);
 
-	retval = kaweth_control(kaweth,
-				usb_sndctrlpipe(kaweth->dev, 0),
-				KAWETH_COMMAND_SET_PACKET_FILTER,
-				USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
-				receive_filter,
-				0,
-				(void *)&kaweth->scratch,
-				0,
-				KAWETH_CONTROL_TIMEOUT);
-
-	return retval;
+	return usb_control_msg(kaweth->dev, usb_sndctrlpipe(kaweth->dev, 0),
+			       KAWETH_COMMAND_SET_PACKET_FILTER,
+			       USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
+			       receive_filter, 0,
+			       &kaweth->scratch, 0,
+			       KAWETH_CONTROL_TIMEOUT);
 }
 
 /****************************************************************
@@ -407,14 +380,11 @@ static int kaweth_download_firmware(stru
 		   kaweth->firmware_buf, kaweth);
 	netdev_dbg(kaweth->net, "Firmware length: %d\n", data_len);
 
-	return kaweth_control(kaweth,
-		              usb_sndctrlpipe(kaweth->dev, 0),
+	return usb_control_msg(kaweth->dev, usb_sndctrlpipe(kaweth->dev, 0),
 			      KAWETH_COMMAND_SCAN,
 			      USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
-			      0,
-			      0,
-			      (void *)kaweth->firmware_buf,
-			      data_len,
+			      0, 0,
+			      kaweth->firmware_buf, data_len,
 			      KAWETH_CONTROL_TIMEOUT);
 }
 
@@ -433,15 +403,12 @@ static int kaweth_trigger_firmware(struc
 	kaweth->firmware_buf[6] = 0x00;
 	kaweth->firmware_buf[7] = 0x00;
 
-	return kaweth_control(kaweth,
-			      usb_sndctrlpipe(kaweth->dev, 0),
-			      KAWETH_COMMAND_SCAN,
-			      USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
-			      0,
-			      0,
-			      (void *)kaweth->firmware_buf,
-			      8,
-			      KAWETH_CONTROL_TIMEOUT);
+	return usb_control_msg(kaweth->dev, usb_sndctrlpipe(kaweth->dev, 0),
+			       KAWETH_COMMAND_SCAN,
+			       USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
+			       0, 0,
+			       (void *)kaweth->firmware_buf, 8,
+			       KAWETH_CONTROL_TIMEOUT);
 }
 
 /****************************************************************

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
