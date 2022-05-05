Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1426551C571
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 18:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8042402C3;
	Thu,  5 May 2022 16:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFrF0s-H1bmt; Thu,  5 May 2022 16:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7E524021C;
	Thu,  5 May 2022 16:53:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4121BF57F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 16:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 801F04161B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 16:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6PN_GHZIk-I for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 16:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F47841604
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 16:53:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A8A16B82DF6;
 Thu,  5 May 2022 16:53:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3781C385A8;
 Thu,  5 May 2022 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651769589;
 bh=r5GQqpd4Djf6aR9amOOzWwYgZVHXIiCxvaP0g6X1ios=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rVCBTPW1wb0zTbZmnnMlzeUtSCR7bv5JveLhRXQhfJKXqhFgl4zQ+56+7oE1g7bSU
 3HQ+ULHgCuk1yOCXjLblERZR0StmjWdP5o74DIw7iT5UtHP67wOy5pxUEe+1boc80G
 TZxwq4x7L+Ergqk8UXpCo3Ti8EzkCLLpayE6toUxPft7+0MgGh8yabBee9vWpDg4xk
 HJWR6mFLsxkTGBTVk9NxtoQIu1X3QGsaLBTcxfOAcXcAqGOz/yz+ni7nyLvRvmLv37
 EQi7+esvNe4tYAkUPZf96CuKbGxL2HPJqJ3kVJn3rceqS+2s9YqvNkyaa0n2MmqR5N
 0xsE9ko4ki3uQ==
Date: Thu, 5 May 2022 09:53:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20220505095307.488c093b@kernel.org>
In-Reply-To: <54be8183fb49a5486a8137627c204f00595e21af.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
 <54be8183fb49a5486a8137627c204f00595e21af.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 6/8] netdevsim: rely on
 XFRM state direction instead of flags
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Raed Salem <raeds@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  5 May 2022 13:06:43 +0300 Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Make sure that netdevsim relies on direction and not on flags.
> 
> Reviewed-by: Raed Salem <raeds@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
