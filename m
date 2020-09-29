Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D5827D9A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD22E85FE4;
	Tue, 29 Sep 2020 21:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6kCwfzonxNB; Tue, 29 Sep 2020 21:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C315285FD5;
	Tue, 29 Sep 2020 21:03:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B274A1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADF9887136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bHH6WlJGbkLo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B83878712F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:06 +0000 (UTC)
Message-Id: <20200929203501.588965483@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=dtHtqsW00jC3rvu4LwKJmi9HFJLwcM5f6nIlhACuykk=;
 b=qK17a97Zs/lhHavAuw0FxEuT6GcoNA9eJJBSapPJ/Ays8X1DAHg2fZRQ3CzzzCUoINALyq
 1TYfi3v+F2BUVpxrxM+rqHymNLvRL6ew2wSpm7qYKLDLj/GoP7uOuX9DVBQr6o0GOtHP7Z
 DZGwJEjaPX1a/8NXiU2A2BJVugN98OlGI5tsIgrLJhd/uPeYj0Dp757mxAMTfYZDgiiQoj
 h9dfs/vBd3Y+GHa+L8+1gLmTXP6WHfDoxNrfHerwf7dREoWOkFLxoEYpDIZ0LPW2IL/nx4
 mBRhWsH8NbTZtRi2jDQszw9qV0IMwYFWIAeNc2BzG8VIQPF+7EOqsfk7GGAX5Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=dtHtqsW00jC3rvu4LwKJmi9HFJLwcM5f6nIlhACuykk=;
 b=EUeUbwhhkC1Ee5Dx9iTKNml9PWGe5S+zIsfu8+sMcU2oxcieXDsDlyv1Ks+HVilyMw11Mo
 WYvRig2rt9Ia3/Cg==
Date: Tue, 29 Sep 2020 22:25:30 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 21/36] net: usb: kaweth: Replace
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
 Christian Benvenuti <benve@cisco.com>,
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>, Amitkumar Karwar <amitkarwar@gmail.com>,
 Wright Feng <wright.feng@cypress.com>, Daniel Drake <dsd@gentoo.org>,
 Pensando Drivers <drivers@pensando.io>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>,
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
 Heiner Kallweit <hkallweit1@gmail.com>
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
