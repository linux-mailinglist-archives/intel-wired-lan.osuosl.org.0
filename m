Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 074E1EB592
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2019 17:58:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5157087988;
	Thu, 31 Oct 2019 16:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nSgV6DgtyWeV; Thu, 31 Oct 2019 16:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 049AE8796A;
	Thu, 31 Oct 2019 16:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27A2C1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 16:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2201D882F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 16:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5bU1rFHKB-IQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2019 16:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63A82882F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 16:58:54 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p12so4420425pgn.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 09:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=f05iF9G/ns17rw6cWJfFu0PgDfLMjLHyebXYR1Ckmlg=;
 b=DkSoRXJw1W+71GwuFvu0kD3++jlSponfDd7ClMOLNsxEwkHMn0jd8JKBqtihFBP0Fj
 8FvYmMSpvVEb3/+tgTiUHEvX8Cx8Dcc+PLviBuzmNqfs/2u5FSBWMhBF4qljZSF4wzuM
 lpx16wijqYPNnd285Yh/IqVKFoASglncCZBa0gp5eG2eExIbOFojDjadlR4v8wBcsX3Y
 8hzm0Y+ffSUK/lmDtNGVxc2IPU/QNSpC8Jhmdhmps0mM9FQL/bcD6qTh26G61dhuQnBj
 Q3jsEJWUhKP7+xgpo2g+0QDg6dB5Z7SfmK87pFAXgOxBXPXr4Mra0jLePTQv+gHOyD/+
 rf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=f05iF9G/ns17rw6cWJfFu0PgDfLMjLHyebXYR1Ckmlg=;
 b=ozyZi0lDEO9Kp5vxvlPaykvxILMtC0AdxV/eMZBomy3IKDp+wjXeeiytV05DveWmwA
 4vtodZ7yfrezD6VZGVG2b1RppRmpsrp2DIUMM7VzP926/JlZwG0xlFOETzmTOVyfARl2
 w3G9IBiJssORt6esWwLTaNSEM+YANu+Oga4EPBGpO8zGm26A21wBQg7L+rgyNskDH6Kw
 Q+kVTQ0giR+Bjh7mJKIIoHRf9YF3tKZM3OPJBA2TJ/ESYJi1vGD639y3fcdKoL+yZk2q
 KjEQpJrGhxDS0QbQejWX6lQVTsz3ggd9/t0QRO4TzGiTDS6jVn3AhCvG1kbi/xjop25M
 s+dA==
X-Gm-Message-State: APjAAAVMLq+DpxSRh2B357eJkB7jHbobICpp6V3vC0aAAn5jpwi0h4dW
 AjTFnYgkJf1Xq8zGqYRUy2Q=
X-Google-Smtp-Source: APXvYqwFrU1yqpKXXBPuvye6oNxNqBJVeGKNV+dW703NTSZb4ccjtQbJslh1Up020KD8f+yf0tL92A==
X-Received: by 2002:a63:3603:: with SMTP id d3mr8094466pga.208.1572541133575; 
 Thu, 31 Oct 2019 09:58:53 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id h9sm4349964pfn.167.2019.10.31.09.58.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Oct 2019 09:58:52 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: joe@perches.com, jeffrey.t.kirsher@intel.com, davem@davemloft.net
Date: Thu, 31 Oct 2019 09:58:51 -0700
Message-ID: <20191031165537.24154.48242.stgit@localhost.localdomain>
In-Reply-To: <cf197ef61703cbaa64ac522cf5d191b4b74f64d6.camel@linux.intel.com>
References: <cf197ef61703cbaa64ac522cf5d191b4b74f64d6.camel@linux.intel.com>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue/net-next PATCH] e1000e: Use
 netdev_info instead of pr_info for link messages
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
Cc: zdai@linux.vnet.ibm.com, nhorman@redhat.com, netdev@vger.kernel.org,
 smorumu1@in.ibm.com, intel-wired-lan@lists.osuosl.org, sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Replace the pr_info calls with netdev_info in all cases related to the
netdevice link state.

As a result of this patch the link messages will change as shown below.
Before:
e1000e: ens3 NIC Link is Down
e1000e: ens3 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx

After:
e1000e 0000:00:03.0 ens3: NIC Link is Down
e1000e 0000:00:03.0 ens3: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---

Since Joe hasn't gotten back to me on if he wanted to do the patch or if
he wanted me to do it I just went ahead and did it. This should address the
concerns he had about the message formatting in "e1000e: Use rtnl_lock to
prevent race".

 drivers/net/ethernet/intel/e1000e/netdev.c |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index ef8ca0c134b0..a1aa48168855 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -4720,7 +4720,7 @@ int e1000e_close(struct net_device *netdev)
 		e1000_free_irq(adapter);
 
 		/* Link status message must follow this format */
-		pr_info("%s NIC Link is Down\n", netdev->name);
+		netdev_info(netdev, "NIC Link is Down\n");
 	}
 
 	napi_disable(&adapter->napi);
@@ -5070,8 +5070,9 @@ static void e1000_print_link_info(struct e1000_adapter *adapter)
 	u32 ctrl = er32(CTRL);
 
 	/* Link status message must follow this format for user tools */
-	pr_info("%s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
-		adapter->netdev->name, adapter->link_speed,
+	netdev_info(adapter->netdev,
+		"NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
+		adapter->link_speed,
 		adapter->link_duplex == FULL_DUPLEX ? "Full" : "Half",
 		(ctrl & E1000_CTRL_TFCE) && (ctrl & E1000_CTRL_RFCE) ? "Rx/Tx" :
 		(ctrl & E1000_CTRL_RFCE) ? "Rx" :
@@ -5304,7 +5305,7 @@ static void e1000_watchdog_task(struct work_struct *work)
 			adapter->link_speed = 0;
 			adapter->link_duplex = 0;
 			/* Link status message must follow this format */
-			pr_info("%s NIC Link is Down\n", adapter->netdev->name);
+			netdev_info(netdev, "NIC Link is Down\n");
 			netif_carrier_off(netdev);
 			netif_stop_queue(netdev);
 			if (!test_bit(__E1000_DOWN, &adapter->state))

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
