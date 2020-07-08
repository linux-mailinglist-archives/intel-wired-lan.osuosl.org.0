Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 620AA219394
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 00:37:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1766F200E5;
	Wed,  8 Jul 2020 22:37:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9IRcucoigyP3; Wed,  8 Jul 2020 22:37:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA1D220487;
	Wed,  8 Jul 2020 22:37:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AF211BF308
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1305188E64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRIeGmowQafD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 22:37:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5287588E62
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:37:33 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 65BDA1277ED54;
 Wed,  8 Jul 2020 15:37:30 -0700 (PDT)
Date: Wed, 08 Jul 2020 15:37:29 -0700 (PDT)
Message-Id: <20200708.153729.1570943134510183928.davem@davemloft.net>
To: jarod@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200708174631.15286-1-jarod@redhat.com>
References: <20200708174631.15286-1-jarod@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Jul 2020 15:37:30 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next] bonding: deal with xfrm
 state in all modes and add more error-checking
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
Date: Wed,  8 Jul 2020 13:46:31 -0400

> It's possible that device removal happens when the bond is in non-AB mode,
> and addition happens in AB mode, so bond_ipsec_del_sa() never gets called,
> which leaves security associations in an odd state if bond_ipsec_add_sa()
> then gets called after switching the bond into AB. Just call add and
> delete universally for all modes to keep things consistent.
> 
> However, it's also possible that this code gets called when the system is
> shutting down, and the xfrm subsystem has already been disconnected from
> the bond device, so we need to do some error-checking and bail, lest we
> hit a null ptr deref.
> 
> Fixes: a3b658cfb664 ("bonding: allow xfrm offload setup post-module-load")
> Signed-off-by: Jarod Wilson <jarod@redhat.com>

Applied, thanks Jarod.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
