Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABDD434CF3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Oct 2021 16:00:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3447240481;
	Wed, 20 Oct 2021 14:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kZCv1DIsDHjf; Wed, 20 Oct 2021 14:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4026740426;
	Wed, 20 Oct 2021 14:00:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7D281BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 09:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C60716074D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 09:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojx2ExDQHMFR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Oct 2021 09:25:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38A3560602
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Oct 2021 09:25:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F3E4D610EA;
 Wed, 20 Oct 2021 09:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634721941;
 bh=5j2NUaDRml2UEYq1ijWuh7CqRu3+GudwsIOWQ4VzLyY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hGXYa09GMpEFO+0V+wzM56y0glURH5WykLAzqaSiH/vYTat3DP/1E6o7W0MyPj2Dr
 q3HfSWs4S6RKl6iEgkS2qhK9tcnC3PmdA184xjidGEvgQcNbM6QNHRNA3zeWjTDfqP
 zoBBqxZYlZL8di8HK9oPNeSbwOocApVR3kwefJPsJkVKiwuTQ77kADaRdLBfcCFCBa
 N//j7+Wwv8LDg6CZWdh7DWGubrae25NaYaQ6nXYdEE6P05tAlbMl7L+yiLuku1brAT
 XL19oHLrKXnZYBa6I9QWqQUI758681DOV1wjuc7ZWslWAArSXlT9knK8y+043+G492
 YzDDkmS2zcfLQ==
Date: Wed, 20 Oct 2021 11:25:37 +0200
From: Simon Horman <horms@kernel.org>
To: luo penghao <cgel.zte@gmail.com>
Message-ID: <20211020092537.GF3935@kernel.org>
References: <20211018085305.853996-1-luo.penghao@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211018085305.853996-1-luo.penghao@zte.com.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Wed, 20 Oct 2021 14:00:14 +0000
Subject: Re: [Intel-wired-lan] [PATCH linux-next] e1000: Remove redundant
 statement
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
Cc: netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, luo penghao <luo.penghao@zte.com.cn>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 18, 2021 at 08:53:05AM +0000, luo penghao wrote:

nit: s/linux-next/net-next/ in subject

> This statement is redundant in the context, because there will be
> an identical statement next. otherwise, the variable initialization
> is actually unnecessary.
> 
> The clang_analyzer complains as follows:
> 
> drivers/net/ethernet/intel/e1000/e1000_ethtool.c:1218:2 warning:
> 
> Value stored to 'ctrl_reg' is never read.

I agree this does seem to be the case.

> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: luo penghao <luo.penghao@zte.com.cn>

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index 0a57172..8951f2a 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -1215,8 +1215,6 @@ static int e1000_integrated_phy_loopback(struct e1000_adapter *adapter)
>  		e1000_write_phy_reg(hw, PHY_CTRL, 0x8140);
>  	}
>  
> -	ctrl_reg = er32(CTRL);
> -
>  	/* force 1000, set loopback */
>  	e1000_write_phy_reg(hw, PHY_CTRL, 0x4140);
>  
> -- 
> 2.15.2
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
