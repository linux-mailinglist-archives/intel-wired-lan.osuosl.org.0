Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 023C350C25C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Apr 2022 00:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B63D41CCE;
	Fri, 22 Apr 2022 22:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WJQYEITCmRoB; Fri, 22 Apr 2022 22:52:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FB3641CB4;
	Fri, 22 Apr 2022 22:52:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 848011BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 22:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E30540164
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 22:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CsT1p4DnLKCD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 22:52:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C923540159
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 22:52:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0A8FC61200;
 Fri, 22 Apr 2022 22:52:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB09EC385A0;
 Fri, 22 Apr 2022 22:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650667935;
 bh=LVT7Tuu3YFl0yAkyZDgcl+9CRLIGTAoAZA1x5aWMGbo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PAV9pLi04YZXLzLPI8FUh87Bh8iwy70eA+BtHZ+8D/BuUStEqOOBCNVAScWJMYj2c
 VQI8mf++Xz1RFSP6FBLfqJ7HjlVIaDaHOKpV9X9mpzG1U2SrCr4LfI2gZ3cczYEXwe
 OE8NQ+B4IZ3sE2lMqfn4dLllk7XrNv1GyZXM3IhZMmgEqeDeLxTxlVY9BNZlMwhLFE
 GhnDf3bZ1B5IpS4o42KqqSmc0F2pkF1tLXWsmwQGHte4zbWUVg99A20Z55JKj9rcox
 zzO5dZtwSGpYZs1qWLWqIRyWN00Z+bGABwgVxDDJ76SnEKH+5krF0fIENm1VuBY+At
 QAiBqHHMjRVwQ==
Date: Fri, 22 Apr 2022 15:52:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jeff Daly <jeffd@silicom-usa.com>
Message-ID: <20220422155213.3b9bf4a9@kernel.org>
In-Reply-To: <20220420205130.23616-1-jeffd@silicom-usa.com>
References: <20220420205130.23616-1-jeffd@silicom-usa.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ixgbe: correct SDP0 check of SFP
 cage for X550
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
Cc: Stephen Douthit <stephend@silicom-usa.com>, intel-wired-lan@osuosl.org,
 open list <linux-kernel@vger.kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 20 Apr 2022 16:51:30 -0400 Jeff Daly wrote:
> SDP0 for X550 NICs is active low to indicate the presence of an SFP in the
> cage (MOD_ABS#).  Invert the results of the logical AND to set
> sfp_cage_full variable correctly.
> 
> Fixes: aac9e053f104 ("ixgbe: cleanup crosstalk fix")
> 

No new lines between tags, please.

> Suggested-by: Stephen Douthit <stephend@silicom-usa.com>
> Signed-off-by: Jeff Daly <jeffd@silicom-usa.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> index 4c26c4b92f07..26d16bc85c59 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> @@ -3308,8 +3308,8 @@ s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
>  			break;
>  		case ixgbe_mac_X550EM_x:
>  		case ixgbe_mac_x550em_a:
> -			sfp_cage_full = IXGBE_READ_REG(hw, IXGBE_ESDP) &
> -					IXGBE_ESDP_SDP0;
> +			sfp_cage_full = !(IXGBE_READ_REG(hw, IXGBE_ESDP) &
> +					IXGBE_ESDP_SDP0);

nit: you need to adjust the continuation line so that it starts after
the column in which ( is, above. Alternatively you can use ~ on the
result of the register read to avoid the brackets.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
