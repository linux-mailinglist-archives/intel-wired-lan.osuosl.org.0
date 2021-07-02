Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414963BA505
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 23:26:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AA3E40255;
	Fri,  2 Jul 2021 21:26:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kkNyiMs6n_bZ; Fri,  2 Jul 2021 21:26:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 953C840147;
	Fri,  2 Jul 2021 21:26:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F15A1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 21:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B7DD42399
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 21:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2sUFvHeGmLCf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 21:26:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3B2D42396
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 21:26:31 +0000 (UTC)
Received: from 1.general.jvosburgh.us.vpn ([10.172.68.206]
 helo=famine.localdomain)
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <jay.vosburgh@canonical.com>)
 id 1lzQg5-0003hu-S5; Fri, 02 Jul 2021 21:26:26 +0000
Received: by famine.localdomain (Postfix, from userid 1000)
 id 0FF3F5FDD5; Fri,  2 Jul 2021 14:26:24 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 08451A040B;
 Fri,  2 Jul 2021 14:26:24 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Taehee Yoo <ap420073@gmail.com>
In-reply-to: <20210702142648.7677-7-ap420073@gmail.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
 <20210702142648.7677-7-ap420073@gmail.com>
Comments: In-reply-to Taehee Yoo <ap420073@gmail.com>
 message dated "Fri, 02 Jul 2021 14:26:46 -0000."
X-Mailer: MH-E 8.6+git; nmh 1.6; GNU Emacs 27.0.50
MIME-Version: 1.0
Content-ID: <14515.1625261183.1@famine>
Date: Fri, 02 Jul 2021 14:26:24 -0700
Message-ID: <14516.1625261184@famine>
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

[...]
>@@ -479,8 +481,9 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
> 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
> 		return true;

	Not a question about this patch, but isn't the "return true"
above incorrect (i.e., should return false)?  I understand that the
ipsec offload is only available for active-backup mode, but the test
above will return true for all modes other than active-backup.

	-J

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
