Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEDD51BDBD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 13:10:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB46A40C08;
	Thu,  5 May 2022 11:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XObHW-aulY3a; Thu,  5 May 2022 11:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B651140BFC;
	Thu,  5 May 2022 11:09:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 47BFB1C115D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 11:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FFC841983
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 11:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29g0mbRlpsTV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 11:09:50 +0000 (UTC)
X-Greylist: delayed 00:06:58 by SQLgrey-1.8.0
Received: from mail.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2283C41981
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 11:09:50 +0000 (UTC)
Received: from localhost (cpc147930-brnt3-2-0-cust60.4-2.cable.virginm.net
 [86.15.196.61])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id 68AC682316CB;
 Thu,  5 May 2022 04:02:48 -0700 (PDT)
Date: Thu, 05 May 2022 12:02:34 +0100 (BST)
Message-Id: <20220505.120234.829231575836812605.davem@davemloft.net>
To: leon@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <a8b37f45df031108d6b191916570a1005d645d38.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
 <a8b37f45df031108d6b191916570a1005d645d38.1651743750.git.leonro@nvidia.com>
X-Mailer: Mew version 6.8 on Emacs 27.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Thu, 05 May 2022 04:02:50 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 1/8] xfrm: free not used
 XFRM_ESP_NO_TRAILER flag
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
 netdev@vger.kernel.org, dsahern@kernel.org, intel-wired-lan@lists.osuosl.org,
 raeds@nvidia.com, kuba@kernel.org, pabeni@redhat.com, leonro@nvidia.com,
 saeedm@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leon@kernel.org>
Date: Thu,  5 May 2022 13:06:38 +0300

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> After removal of Innova IPsec support from mlx5 driver, the last user
> of this XFRM_ESP_NO_TRAILER was gone too. This means that we can safely
> remove it as no other hardware is capable (or need) to remove ESP trailer.
> 
> Reviewed-by: Raed Salem <raeds@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Acked-by: David S. Miller <davem@davemloft.net>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
