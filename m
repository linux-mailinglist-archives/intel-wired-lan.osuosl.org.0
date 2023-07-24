Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CD775FE7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 19:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B55F1417F6;
	Mon, 24 Jul 2023 17:50:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B55F1417F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690221010;
	bh=TQoR+o8vJRyp5Dtkku0JSFOqe54QHwGHDhWxOyAQAyE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=37Ng2fT5udDaIopHTB3MvaKBhC8mcNzpsj/w04A5YNhsOh+sz8eVJ63Q977I4wzuc
	 123mWSpwZsrDqB3dCbmQwGDMpBcUqLETqB0CCjZ9ToPaLReCRxeTvwTTHJouBed2gK
	 t4oYNT/1z4dyFBWDux5WGvUFXV5HcpIdmGdMxiqDXsguXO7SVV8PkTzaKDgtSPZTjo
	 Lgo5ac8vAGCLsu4HVmDikes4oSWkh11rD50OozmfMqbn+Va4wq4kzztnsKIYqQ6GkK
	 Kl1NjKV3MtqrF3iFWCwIXWLQiBx4yRZqFXa8RZQAb3/Bm53bhcVVenvc53RzYTpF6/
	 73uM2WG0sZt0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-V7GeJqF52k; Mon, 24 Jul 2023 17:50:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82348417E2;
	Mon, 24 Jul 2023 17:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82348417E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C27B21BF488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 17:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99D3860F78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 17:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99D3860F78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emvWsr7kn0eN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 17:49:58 +0000 (UTC)
X-Greylist: delayed 314 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 17:49:57 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE3B460D78
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE3B460D78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 17:49:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E452961351;
 Mon, 24 Jul 2023 17:44:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57402C433C9;
 Mon, 24 Jul 2023 17:44:39 +0000 (UTC)
Date: Mon, 24 Jul 2023 20:44:35 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Lin Ma <linma@zju.edu.cn>
Message-ID: <20230724174435.GA11388@unreal>
References: <20230723075042.3709043-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230723075042.3709043-1-linma@zju.edu.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690220680;
 bh=ZvCIeXPtML1eefHbxFJM07QYwP5uIy2qwAnyhnutLOY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sL10NlEUThnOiXXtdsa4sja4xL/YW4tcTmoVDraN0w+OV0WS9J5sv3vsWzCRzP1+q
 ZFfjPP956rRClQnRaRiylI8DqZSCZ7DrMiPNx5QbZJBZt6ttf1oj8nTqkn2yOu8y0f
 LH8r9RO3/DmBnCQd8CSuJkWXwLsym63YLl9jtKc2tAuJhgX0gAAIoDW+Um42pf8bkB
 HcQ+iJ2A/wVx3H+XIEIi1WRka4x7am5XvjmlHIUKEZ9972g9tg9cLu4N4kVP60/8ir
 Mkj785kfacdOSQKxsw0J9Wy+DxrUqNceE88agG5QZeMu4Y9OcHlCY2iuY6AhMM3w4m
 SUkFEwL+jddTg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sL10NlEU
Subject: Re: [Intel-wired-lan] [PATCH v1] i40e: Add length check for
 IFLA_AF_SPEC parsing
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
Cc: hawk@kernel.org, daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jul 23, 2023 at 03:50:42PM +0800, Lin Ma wrote:
> The nla_for_each_nested parsing in function i40e_ndo_bridge_setlink()
> does not check the length of the attribute. This can lead to an
> out-of-attribute read and allow a malformed nlattr (e.g., length 0) to
> be viewed as a 2 byte integer.
> 
> This patch adds the check based on nla_len() just as other code does,
> see how bnxt_bridge_setlink (drivers/net/ethernet/broadcom/bnxt/bnxt.c)
> parses IFLA_AF_SPEC: type checking plus length checking.
> 
> Fixes: 51616018dd1b ("i40e: Add support for getlink, setlink ndo ops")
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..6363357bdeeb 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13186,6 +13186,9 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
>  		if (nla_type(attr) != IFLA_BRIDGE_MODE)
>  			continue;
>  
> +		if (nla_len(attr) < sizeof(mode))
> +			return -EINVAL;
> +

I see that you added this hunk to all users of nla_for_each_nested(), it
will be great to make that iterator to skip such empty attributes.

However, i don't know nettlink good enough to say if your change is
valid in first place.

Thanks

>  		mode = nla_get_u16(attr);
>  		if ((mode != BRIDGE_MODE_VEPA) &&
>  		    (mode != BRIDGE_MODE_VEB))
> -- 
> 2.17.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
