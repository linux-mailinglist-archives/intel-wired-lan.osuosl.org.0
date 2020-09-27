Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C29BB27A5E1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 829B785621;
	Mon, 28 Sep 2020 03:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nlty8jE9ZTgR; Mon, 28 Sep 2020 03:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B637E855BE;
	Mon, 28 Sep 2020 03:42:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C63E41BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C19B685BDF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o--NksAfAwNL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A42CD85BCE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:33 +0000 (UTC)
Message-Id: <20200927194921.948595516@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236652;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=oz7MMx0m+YY+xDPxolgjEAAvNxkqMEkx+5nIefnzl+w=;
 b=U2mMxTLDbs+pJF+T4nm7E02QM81lT27a3LutujRoEa3KlVBwIPlMTtcbRkmn1MFek9xBNQ
 4mKAIgzgircyLYpmCNhCvwCDsQy6Gp2qyz5Q1wgf4eHYqJLI+Ln6jtJzcaFH0J5ThdprRx
 v2lCaydlaoY4vO/cbsuI0sL/1CaeW+QZibDyD27nv/p8HOMqIQiW+UZVKgStVUd/cRS20a
 XwYlOV9g8LAS2f6YW8dG5I9l0IQJ+mOs7duzIpIodXEFVSAylJ2pYeV5CEgAMhK11nWFZ9
 KC6K0+vz3Ao4VRCCAkJ8YsQeKKSchAgePFTvesNEE8tn/xrKwtG1kGRSkUa5CQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236652;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=oz7MMx0m+YY+xDPxolgjEAAvNxkqMEkx+5nIefnzl+w=;
 b=5V9NUT3adLz/9pPOxIQrrgpehdYxzsMCF6BfZjMkJGX770xc3JylD1cNtldMLWMBRqj1Fs
 zJAPHrACZbBCfMDQ==
Date: Sun, 27 Sep 2020 21:49:07 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 21/35] net: usb: kaweth: Remove last user
 of kaweth_control()
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
 Jouni Malinen <j@w1.fi>, Jon Mason <jdmason@kudzu.us>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, netdev@vger.kernel.org,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

kaweth_async_set_rx_mode() invokes kaweth_contol() and has two callers:

- kaweth_open() which is invoked from preemptible context
.
- kaweth_start_xmit() which holds a spinlock and has bottom halfs disabled.

If called from kaweth_start_xmit() kaweth_async_set_rx_mode() obviously
cannot block, which means it can't call kaweth_control(). This is detected
with an in_interrupt() check.

Replace the in_interrupt() check in kaweth_async_set_rx_mode() with an
argument which is set true by the caller if the context is safe to sleep,
otherwise false.

Now kaweth_control() is only called from preemptible context which means
there is no need for GFP_ATOMIC allocations anymore. Replace it with
usb_control_msg(). Cleanup the code a bit while at it.

Finally remove kaweth_control() since the last user is gone.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org
Cc: netdev@vger.kernel.org

---
 drivers/net/usb/kaweth.c |  168 ++++-------------------------------------------
 1 file changed, 17 insertions(+), 151 deletions(-)

--- a/drivers/net/usb/kaweth.c
+++ b/drivers/net/usb/kaweth.c
@@ -103,10 +103,6 @@ static int kaweth_probe(
 		const struct usb_device_id *id	/* from id_table */
 	);
 static void kaweth_disconnect(struct usb_interface *intf);
-static int kaweth_internal_control_msg(struct usb_device *usb_dev,
-				       unsigned int pipe,
-				       struct usb_ctrlrequest *cmd, void *data,
-				       int len, int timeout);
 static int kaweth_suspend(struct usb_interface *intf, pm_message_t message);
 static int kaweth_resume(struct usb_interface *intf);
 
@@ -236,48 +232,6 @@ struct kaweth_device
 };
 
 /****************************************************************
- *     kaweth_control
- ****************************************************************/
-static int kaweth_control(struct kaweth_device *kaweth,
-			  unsigned int pipe,
-			  __u8 request,
-			  __u8 requesttype,
-			  __u16 value,
-			  __u16 index,
-			  void *data,
-			  __u16 size,
-			  int timeout)
-{
-	struct usb_ctrlrequest *dr;
-	int retval;
-
-	if(in_interrupt()) {
-		netdev_dbg(kaweth->net, "in_interrupt()\n");
-		return -EBUSY;
-	}
-
-	dr = kmalloc(sizeof(struct usb_ctrlrequest), GFP_ATOMIC);
-	if (!dr)
-		return -ENOMEM;
-
-	dr->bRequestType = requesttype;
-	dr->bRequest = request;
-	dr->wValue = cpu_to_le16(value);
-	dr->wIndex = cpu_to_le16(index);
-	dr->wLength = cpu_to_le16(size);
-
-	retval = kaweth_internal_control_msg(kaweth->dev,
-					     pipe,
-					     dr,
-					     data,
-					     size,
-					     timeout);
-
-	kfree(dr);
-	return retval;
-}
-
-/****************************************************************
  *     kaweth_read_configuration
  ****************************************************************/
 static int kaweth_read_configuration(struct kaweth_device *kaweth)
@@ -531,7 +485,8 @@ static int kaweth_resubmit_rx_urb(struct
 	return result;
 }
 
-static void kaweth_async_set_rx_mode(struct kaweth_device *kaweth);
+static void kaweth_async_set_rx_mode(struct kaweth_device *kaweth,
+				     bool may_sleep);
 
 /****************************************************************
  *     kaweth_usb_receive
@@ -661,7 +616,7 @@ static int kaweth_open(struct net_device
 
 	netif_start_queue(net);
 
-	kaweth_async_set_rx_mode(kaweth);
+	kaweth_async_set_rx_mode(kaweth, true);
 	return 0;
 
 err_out:
@@ -749,7 +704,7 @@ static netdev_tx_t kaweth_start_xmit(str
 
 	spin_lock_irq(&kaweth->device_lock);
 
-	kaweth_async_set_rx_mode(kaweth);
+	kaweth_async_set_rx_mode(kaweth, false);
 	netif_stop_queue(net);
 	if (IS_BLOCKED(kaweth->status)) {
 		goto skip;
@@ -826,36 +781,31 @@ static void kaweth_set_rx_mode(struct ne
 /****************************************************************
  *     kaweth_async_set_rx_mode
  ****************************************************************/
-static void kaweth_async_set_rx_mode(struct kaweth_device *kaweth)
+static void kaweth_async_set_rx_mode(struct kaweth_device *kaweth,
+				     bool may_sleep)
 {
-	int result;
+	int ret;
 	__u16 packet_filter_bitmap = kaweth->packet_filter_bitmap;
 
 	kaweth->packet_filter_bitmap = 0;
 	if (packet_filter_bitmap == 0)
 		return;
 
-	if (in_interrupt())
+	if (!may_sleep)
 		return;
 
-	result = kaweth_control(kaweth,
-				usb_sndctrlpipe(kaweth->dev, 0),
-				KAWETH_COMMAND_SET_PACKET_FILTER,
-				USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
-				packet_filter_bitmap,
-				0,
-				(void *)&kaweth->scratch,
-				0,
-				KAWETH_CONTROL_TIMEOUT);
-
-	if(result < 0) {
+	ret = usb_control_msg(kaweth->dev, usb_sndctrlpipe(kaweth->dev, 0),
+			      KAWETH_COMMAND_SET_PACKET_FILTER,
+			      USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
+			      packet_filter_bitmap, 0,
+			      &kaweth->scratch, 0,
+			      KAWETH_CONTROL_TIMEOUT);
+	if (ret < 0)
 		dev_err(&kaweth->intf->dev, "Failed to set Rx mode: %d\n",
-			result);
-	}
-	else {
+			ret);
+	else
 		netdev_dbg(kaweth->net, "Set Rx mode to %d\n",
 			   packet_filter_bitmap);
-	}
 }
 
 /****************************************************************
@@ -1163,88 +1113,4 @@ static void kaweth_disconnect(struct usb
 }
 
 
-// FIXME this completion stuff is a modified clone of
-// an OLD version of some stuff in usb.c ...
-struct usb_api_data {
-	wait_queue_head_t wqh;
-	int done;
-};
-
-/*-------------------------------------------------------------------*
- * completion handler for compatibility wrappers (sync control/bulk) *
- *-------------------------------------------------------------------*/
-static void usb_api_blocking_completion(struct urb *urb)
-{
-        struct usb_api_data *awd = (struct usb_api_data *)urb->context;
-
-	awd->done=1;
-	wake_up(&awd->wqh);
-}
-
-/*-------------------------------------------------------------------*
- *                         COMPATIBILITY STUFF                       *
- *-------------------------------------------------------------------*/
-
-// Starts urb and waits for completion or timeout
-static int usb_start_wait_urb(struct urb *urb, int timeout, int* actual_length)
-{
-	struct usb_api_data awd;
-        int status;
-
-        init_waitqueue_head(&awd.wqh);
-        awd.done = 0;
-
-        urb->context = &awd;
-        status = usb_submit_urb(urb, GFP_ATOMIC);
-        if (status) {
-                // something went wrong
-                usb_free_urb(urb);
-                return status;
-        }
-
-	if (!wait_event_timeout(awd.wqh, awd.done, timeout)) {
-                // timeout
-                dev_warn(&urb->dev->dev, "usb_control/bulk_msg: timeout\n");
-                usb_kill_urb(urb);  // remove urb safely
-                status = -ETIMEDOUT;
-        }
-	else {
-                status = urb->status;
-	}
-
-        if (actual_length) {
-                *actual_length = urb->actual_length;
-	}
-
-        usb_free_urb(urb);
-        return status;
-}
-
-/*-------------------------------------------------------------------*/
-// returns status (negative) or length (positive)
-static int kaweth_internal_control_msg(struct usb_device *usb_dev,
-				       unsigned int pipe,
-				       struct usb_ctrlrequest *cmd, void *data,
-				       int len, int timeout)
-{
-        struct urb *urb;
-        int retv;
-        int length = 0; /* shut up GCC */
-
-	urb = usb_alloc_urb(0, GFP_ATOMIC);
-        if (!urb)
-                return -ENOMEM;
-
-        usb_fill_control_urb(urb, usb_dev, pipe, (unsigned char*)cmd, data,
-			 len, usb_api_blocking_completion, NULL);
-
-        retv = usb_start_wait_urb(urb, timeout, &length);
-        if (retv < 0) {
-                return retv;
-	}
-        else {
-                return length;
-	}
-}
-
 module_usb_driver(kaweth_driver);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
