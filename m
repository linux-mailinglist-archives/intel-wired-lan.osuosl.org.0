Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E0F219415
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 01:09:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 364DF89691;
	Wed,  8 Jul 2020 23:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IFHgtRqoOiT0; Wed,  8 Jul 2020 23:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8605989666;
	Wed,  8 Jul 2020 23:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 805291BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 23:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B7D386D7D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 23:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJGOB5AJiTdX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 23:09:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCFF686D04
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 23:09:27 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7E0FD12780FED;
 Wed,  8 Jul 2020 16:09:26 -0700 (PDT)
Date: Wed, 08 Jul 2020 16:09:25 -0700 (PDT)
Message-Id: <20200708.160925.601637997950999733.davem@davemloft.net>
To: jarod@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200708225849.25198-1-jarod@redhat.com>
References: <20200708225849.25198-1-jarod@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Jul 2020 16:09:27 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next] bonding: don't need RTNL for
 ipsec helpers
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
 vfalico@gmail.com, netdev@vger.kernel.org,
 syzbot+582c98032903dcc04816@syzkaller.appspotmail.com, kuba@kernel.org,
 huyn@mellanox.com, intel-wired-lan@lists.osuosl.org, andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jarod Wilson <jarod@redhat.com>
Date: Wed,  8 Jul 2020 18:58:49 -0400

> The bond_ipsec_* helpers don't need RTNL, and can potentially get called
> without it being held, so switch from rtnl_dereference() to
> rcu_dereference() to access bond struct data.
> 
> Lightly tested with xfrm bonding, no problems found, should address the
> syzkaller bug referenced below.
> 
> Reported-by: syzbot+582c98032903dcc04816@syzkaller.appspotmail.com
> Signed-off-by: Jarod Wilson <jarod@redhat.com>

Applied, thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
