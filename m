Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6640211650
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 00:53:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A163525EA4;
	Wed,  1 Jul 2020 22:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iYjToicQ-gE1; Wed,  1 Jul 2020 22:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E402D265F4;
	Wed,  1 Jul 2020 22:53:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43E151BF38B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 22:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1F4A225F87
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 22:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AjNRqQYDfvzM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 22:53:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 6FE5425EA4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 22:53:51 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A501314A8D68C;
 Wed,  1 Jul 2020 15:53:49 -0700 (PDT)
Date: Wed, 01 Jul 2020 15:53:48 -0700 (PDT)
Message-Id: <20200701.155348.853858023908987046.davem@davemloft.net>
To: jarod@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200630184941.65165-1-jarod@redhat.com>
References: <20200630184941.65165-1-jarod@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 01 Jul 2020 15:53:50 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next] bonding: allow xfrm offload
 setup post-module-load
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
Cc: steffen.klassert@secunet.com, herbert@gondor.apana.org.au,
 j.vosburgh@gmail.com, linux-kernel@vger.kernel.org, saeedm@mellanox.com,
 vfalico@gmail.com, netdev@vger.kernel.org, kuba@kernel.org, huyn@mellanox.com,
 intel-wired-lan@lists.osuosl.org, andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jarod Wilson <jarod@redhat.com>
Date: Tue, 30 Jun 2020 14:49:41 -0400

> At the moment, bonding xfrm crypto offload can only be set up if the bonding
> module is loaded with active-backup mode already set. We need to be able to
> make this work with bonds set to AB after the bonding driver has already
> been loaded.
> 
> So what's done here is:
> 
> 1) move #define BOND_XFRM_FEATURES to net/bonding.h so it can be used
> by both bond_main.c and bond_options.c
> 2) set BOND_XFRM_FEATURES in bond_dev->hw_features universally, rather than
> only when loading in AB mode
> 3) wire up xfrmdev_ops universally too
> 4) disable BOND_XFRM_FEATURES in bond_dev->features if not AB
> 5) exit early (non-AB case) from bond_ipsec_offload_ok, to prevent a
> performance hit from traversing into the underlying drivers
> 5) toggle BOND_XFRM_FEATURES in bond_dev->wanted_features and call
> netdev_change_features() from bond_option_mode_set()
> 
> In my local testing, I can change bonding modes back and forth on the fly,
> have hardware offload work when I'm in AB, and see no performance penalty
> to non-AB software encryption, despite having xfrm bits all wired up for
> all modes now.
> 
> Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
> Reported-by: Huy Nguyen <huyn@mellanox.com>
> Signed-off-by: Jarod Wilson <jarod@redhat.com>

Applied, thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
