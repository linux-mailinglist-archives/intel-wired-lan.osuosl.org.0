Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2D05159A9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Apr 2022 03:46:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B3F860AC3;
	Sat, 30 Apr 2022 01:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v6JtlMiynW6o; Sat, 30 Apr 2022 01:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D4F260808;
	Sat, 30 Apr 2022 01:46:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B78F1BF346
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Apr 2022 01:46:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F1E9813C0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Apr 2022 01:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94u3F6wk__pz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Apr 2022 01:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B044681388
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Apr 2022 01:46:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 891B6624CB;
 Sat, 30 Apr 2022 01:46:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C941C385DC;
 Sat, 30 Apr 2022 01:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651283198;
 bh=8kP/MRpm1KKd3Rl9molXNCPZpQsRev4DC366b3abSJg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FHOkqeeY341VJtIRkHZ/wFD9kpmdQmlxFxvjQmxtTGNiHWWFY2WQDyFuUj7xUn0QX
 aa/G+NaZUzfDfYHjIAs+OSETdfW/RThbzraDlNwj81q9LCVO+Ees3IArkGIUur/1Vc
 mVVFGhaTZovAp7DMr+7+DBRXjNhZzbZI03Lwx6rbZQEBl938YpGI9ajnlftd03djV/
 i1xar24F3qGUJk01ngzu37vgE7T28CzHWhJCXc4Imryd5zQEAgwhY7J5nr9T2W3BFd
 IO/XANqI4YZfboz5VJuZFqcrpo+s0KS+9P6Rr9g2E3e5ycbVZseLZz2zFMvwdustxP
 EBzhOSMg3KlpA==
Date: Fri, 29 Apr 2022 18:46:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <20220429184636.0b869ae7@kernel.org>
In-Reply-To: <26815b6deebef7f02e864ca41714533c7009e7b7.1651236082.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1651236081.git.eng.alaamohamedsoliman.am@gmail.com>
 <26815b6deebef7f02e864ca41714533c7009e7b7.1651236082.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/2] rtnetlink: add extack
 support in fdb del handlers
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, roopa@nvidia.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 29 Apr 2022 14:49:06 +0200 Alaa Mohamed wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index fde839ef0613..3fccac358198 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5678,7 +5678,7 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
>  static int
>  ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>  	    struct net_device *dev, const unsigned char *addr,
> -	    __always_unused u16 vid)
> +	    __always_unused u16 vid, struct netlink_ext_ack *extack)

You need to update the kdoc on this one.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
