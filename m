Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8458A51BDBC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 13:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 015AF61106;
	Thu,  5 May 2022 11:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fHMQTPaleYuB; Thu,  5 May 2022 11:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0896F610FF;
	Thu,  5 May 2022 11:09:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 449B21BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 11:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C9FB84044
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 11:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPmx2W0xc51f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 11:09:50 +0000 (UTC)
X-Greylist: delayed 00:06:58 by SQLgrey-1.8.0
Received: from mail.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23A2584000
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 11:09:50 +0000 (UTC)
Received: from localhost (cpc147930-brnt3-2-0-cust60.4-2.cable.virginm.net
 [86.15.196.61])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id 62DEC82316D0;
 Thu,  5 May 2022 04:03:40 -0700 (PDT)
Date: Thu, 05 May 2022 12:03:38 +0100 (BST)
Message-Id: <20220505.120338.1740932781798266692.davem@davemloft.net>
To: leon@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <2a59f8a4bfa849da0b3a9931bc2f687a6efdb74b.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
 <2a59f8a4bfa849da0b3a9931bc2f687a6efdb74b.1651743750.git.leonro@nvidia.com>
X-Mailer: Mew version 6.8 on Emacs 27.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Thu, 05 May 2022 04:03:43 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 3/8] xfrm: rename
 xfrm_state_offload struct to allow reuse
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
Date: Thu,  5 May 2022 13:06:40 +0300

> From: Leon Romanovsky <leonro@nvidia.com>
> 
> The struct xfrm_state_offload has all fields needed to hold information
> for offloaded policies too. In order to do not create new struct with
> same fields, let's rename existing one and reuse it later.
> 
> Reviewed-by: Raed Salem <raeds@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Acked-by: David S. Miller <davem@davemloft.net>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
