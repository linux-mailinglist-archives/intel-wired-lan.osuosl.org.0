Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 801607BB90B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 15:26:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E6AD61418;
	Fri,  6 Oct 2023 13:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E6AD61418
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696598767;
	bh=UasigF5qqzbofCMMn44KHHTY2usEVl+MbB8MratBpZY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l8Pd4cO2PBNh3DslkTASWGZjaT7ilAEuqg90WEa4q4beUcJ+jEBFizG7exlqbgEYv
	 bXaq+F6KghNfeVAR7a/OmQCe0SlThcvYxxlmHUDGr7uLR7RGmHfqqPE5RmB8VvLCjP
	 Tw7Q3/CrcTh+TbnoJHFn7t6qKNYsSag4H7hjGazeETh65jixLSeNs8pu12IrAvMjKR
	 vsp704VEqLl1eH4R18cxNJGMrj9JWD8VHGKuk7olv65jT+JK+c2CmJBAoqh4G3kRZ5
	 ByqFeK2tVXniUj+V8xMrPhNL4x2O+/r05bYGTqjrWYcorVoqVXS5rA9IEj/0wGdvDO
	 sYesvnLR40Szw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYk2uv2EW9BH; Fri,  6 Oct 2023 13:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F360360F5F;
	Fri,  6 Oct 2023 13:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F360360F5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9C591BF377
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 13:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 826714049F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 13:26:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 826714049F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JCpQp9g2C_1J for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 13:26:01 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C83C940468
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 13:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C83C940468
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5B7E6CE27F5;
 Fri,  6 Oct 2023 13:25:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9523DC433C7;
 Fri,  6 Oct 2023 13:25:55 +0000 (UTC)
Date: Fri, 6 Oct 2023 15:25:53 +0200
From: Simon Horman <horms@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZSAK4eB2Wkl5RImI@kernel.org>
References: <ZSADNdIw8zFx1xw2@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZSADNdIw8zFx1xw2@kadam>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696598757;
 bh=GK6+gdGAri1G6rozMe9+EwaIXQ9xuRPorgKW+tLw1L4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hyXzPBiYVRHBuL1QwV3tmCN0UqHukILJ3h4u8TxJvG9SgcfyjffCHRnrTkmecrBcI
 Aq01AZUiCeZQIJc5233PU9okbYh1Bcm38ceGU1KtFnp7D9TV9NWx4rh2B6yH02w5ep
 GoiwWthZ8JntltpZhFJhyVWfzBsrBJ6gs2izE1og9o0GfRszEET1xMjbAqAyzHLxL6
 g7qrZZFt52GRRoulRee3sO9n9rMj7KiZMp93qoahLcY2rMXUQMI2iiB8QkuEQwcc8e
 UE6GlyTi6Uq53a9ovcKOcnfTiQUsl7oRN/JEypGlOefT++3f2cGcnuv9I7XlJb9TVW
 QJEiC4XDXMM6g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hyXzPBiY
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: fix crash with empty VF
 macvlan list
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 06, 2023 at 03:53:09PM +0300, Dan Carpenter wrote:
> The adapter->vf_mvs.l list needs to be initialized even if the list is
> empty.  Otherwise it will lead to crashes.
> 
> Fixes: a1cbb15c1397 ("ixgbe: Add macvlan support for VF")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
> v2: Use the correct fixes tag.  Thanks, Simon.

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
