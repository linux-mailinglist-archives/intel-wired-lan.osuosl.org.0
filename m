Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D4B3BA4F7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 23:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 752804238F;
	Fri,  2 Jul 2021 21:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mujowDoVUDUc; Fri,  2 Jul 2021 21:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 594BD4238D;
	Fri,  2 Jul 2021 21:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9163C1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 21:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FD52605CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 21:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 600ajG0YTPjx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 21:14:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 087976068F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 21:14:32 +0000 (UTC)
Received: from 1.general.jvosburgh.us.vpn ([10.172.68.206]
 helo=famine.localdomain)
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <jay.vosburgh@canonical.com>)
 id 1lzQUT-0002oY-4X; Fri, 02 Jul 2021 21:14:25 +0000
Received: by famine.localdomain (Postfix, from userid 1000)
 id 5EE165FDD5; Fri,  2 Jul 2021 14:14:23 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 57427A040B;
 Fri,  2 Jul 2021 14:14:23 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Taehee Yoo <ap420073@gmail.com>
In-reply-to: <20210702142648.7677-7-ap420073@gmail.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
 <20210702142648.7677-7-ap420073@gmail.com>
Comments: In-reply-to Taehee Yoo <ap420073@gmail.com>
 message dated "Fri, 02 Jul 2021 14:26:46 -0000."
X-Mailer: MH-E 8.6+git; nmh 1.6; GNU Emacs 27.0.50
MIME-Version: 1.0
Content-ID: <14148.1625260463.1@famine>
Date: Fri, 02 Jul 2021 14:14:23 -0700
Message-ID: <14149.1625260463@famine>
Subject: Re: [Intel-wired-lan] [PATCH net 6/8] bonding: disallow setting
 nested bonding + ipsec offload
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
Cc: netdev@vger.kernel.org, vfalico@gmail.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Taehee Yoo <ap420073@gmail.com> wrote:

>bonding interface can be nested and it supports ipsec offload.
>So, it allows setting the nested bonding + ipsec scenario.
>But code does not support this scenario.
>So, it should be disallowed.
>
>interface graph:
>bond2
> |
>bond1
> |
>eth0
>
>The nested bonding + ipsec offload may not a real usecase.
>So, disallowing this is fine.

	Is a stack like "bond1 -> VLAN.XX -> bond2 -> eth0" also a
problem?  I don't believe the change below will detect this
configuration.

	-J

>Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
>Signed-off-by: Taehee Yoo <ap420073@gmail.com>
>---
> drivers/net/bonding/bond_main.c | 15 +++++++++------
> 1 file changed, 9 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
>index 7659e1fab19e..f268e67cb2f0 100644
>--- a/drivers/net/bonding/bond_main.c
>+++ b/drivers/net/bonding/bond_main.c
>@@ -419,8 +419,9 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
> 	xs->xso.real_dev = slave->dev;
> 	bond->xs = xs;
> 
>-	if (!(slave->dev->xfrmdev_ops
>-	      && slave->dev->xfrmdev_ops->xdo_dev_state_add)) {
>+	if (!slave->dev->xfrmdev_ops ||
>+	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
>+	    netif_is_bond_master(slave->dev)) {
> 		slave_warn(bond_dev, slave->dev, "Slave does not support ipsec offload\n");
> 		rcu_read_unlock();
> 		return -EINVAL;
>@@ -453,8 +454,9 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
> 
> 	xs->xso.real_dev = slave->dev;
> 
>-	if (!(slave->dev->xfrmdev_ops
>-	      && slave->dev->xfrmdev_ops->xdo_dev_state_delete)) {
>+	if (!slave->dev->xfrmdev_ops ||
>+	    !slave->dev->xfrmdev_ops->xdo_dev_state_delete ||
>+	    netif_is_bond_master(slave->dev)) {
> 		slave_warn(bond_dev, slave->dev, "%s: no slave xdo_dev_state_delete\n", __func__);
> 		goto out;
> 	}
>@@ -479,8 +481,9 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
> 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
> 		return true;
> 
>-	if (!(slave_dev->xfrmdev_ops
>-	      && slave_dev->xfrmdev_ops->xdo_dev_offload_ok)) {
>+	if (!slave_dev->xfrmdev_ops ||
>+	    !slave_dev->xfrmdev_ops->xdo_dev_offload_ok ||
>+	    netif_is_bond_master(slave_dev)) {
> 		slave_warn(bond_dev, slave_dev, "%s: no slave xdo_dev_offload_ok\n", __func__);
> 		return false;
> 	}
>-- 
>2.17.1
>

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
