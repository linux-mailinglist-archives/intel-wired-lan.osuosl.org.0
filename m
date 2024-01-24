Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE34883A19E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 06:56:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 531EE6FB45;
	Wed, 24 Jan 2024 05:56:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 531EE6FB45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706075813;
	bh=g0PHiMiElhrW6soL6QZ3bDs9/Q+9VEvAsCekTMuIHKE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6DyQlNCg0kGbDwnLv2QS2WL8jZ23rpvNkgiMUArcZb9arY6ZZGxkq1WaeIH/nt+ei
	 fodl/E8IgonYeC4y6bOFtjLFlLHlKiRt2juQVFlh4kxYYqBYwqkQVc2VX9sPCUKKWd
	 kzMZ8IiuYDZtGx5KGx5Yw9K9TdQzVnYl6IbFYIG57nq1IPy/P9LaiEUXvbStqNcGju
	 +wCTj8SnHxGKpoQ7KPIKT3lkPjkRGYpNX6TXnt58tgWjbKtk9ZAtbtjBkWG+B/7dJL
	 jW+Zl4qxBjCVtWkRMOrmSoNpxod2b3HnWmic1uj3UzTyAJOMx8UE3XwVrgdHG+qWDc
	 nnMGyvA3P5bqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEgBPbBGfINS; Wed, 24 Jan 2024 05:56:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64A216F78F;
	Wed, 24 Jan 2024 05:56:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64A216F78F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 235CE1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 05:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF7006F78F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 05:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF7006F78F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAaEiSt8BCrx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 05:56:45 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-15.smtpout.orange.fr
 [80.12.242.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97EA96F690
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 05:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97EA96F690
Received: from [192.168.1.18] ([92.140.202.140]) by smtp.orange.fr with ESMTPA
 id SWFarRZez8jVDSWFarqsnB; Wed, 24 Jan 2024 06:56:42 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 24 Jan 2024 06:56:42 +0100
X-ME-IP: 92.140.202.140
Message-ID: <e2d00e0f-0211-43c6-a868-7a36655847ab@wanadoo.fr>
Date: Wed, 24 Jan 2024 06:56:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
References: <d39bbffb8817499cc2ae636cdef3b9c1eba59618.1705771534.git.christophe.jaillet@wanadoo.fr>
 <CYYPR11MB8429776D3D1D830E140F5D64BD7B2@CYYPR11MB8429.namprd11.prod.outlook.com>
Content-Language: en-MW
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <CYYPR11MB8429776D3D1D830E140F5D64BD7B2@CYYPR11MB8429.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wanadoo.fr; s=t20230301; t=1706075802;
 bh=g0PHiMiElhrW6soL6QZ3bDs9/Q+9VEvAsCekTMuIHKE=;
 h=Date:Subject:To:References:From:Cc:In-Reply-To;
 b=In7+ica4uVuNs9ushLtua0BX9YGc5x3ELrA7TG7V1NfNWpaJS8I4emw0dhbluV5NR
 IOYz+3rwVI75dfhPKdiwqcnr7ADc1TvWwt08J5aiS85Tc+HXHqSp5id8eU3myridRW
 bYHGvyZBLpp/nyxJtoYL1jNlOHjWcE+si2MaKy94nQkW/+2AnhRClDOhf5+UKKuSA8
 wfmi4YaPiEpYVo5A8aZjnFqEI/uxbrEI1P87X4D2Y8O5L8ZfBVRJt9zgMm6MYhysaL
 eN3RMvYvO80GSRLXub9KfGyHTqi+Ig0nk9rorf8dmqszJ1LYhktkRYx0Pgbelj1TnA
 CrLkeBcgb9EsQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr
 header.a=rsa-sha256 header.s=t20230301 header.b=In7+ica4
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
 ixgbe_read_iosf_sb_reg_x550()
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Mark Rustad <mark.d.rustad@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Le 24/01/2024 à 05:00, Pucha, HimasekharX Reddy a écrit :
> Hi,
>
> Can you share testing hints for this patch.

Hi,

No I can't.

It was spotted by one of my cocci script that tries to find issues 
related to direct return when a function also has an error handling path 
+ manual review so see if it looks like a real issue.

As said in the patch, "This patch is speculative, review with care.". 
That means that it was not tested from my side.
I don't have the hardware, and don't know how to trigger the issue.

All I know is that the code looks wrong *to me*.

Maybe someone at intel.com could give this hint? :)

CJ


> Regards,
> Himasekhar Reddy.
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Christophe JAILLET
> Sent: Saturday, January 20, 2024 10:56 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Rustad, Mark D <mark.d.rustad@intel.com>
> Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>; intel-wired-lan@lists.osuosl.org; kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in ixgbe_read_iosf_sb_reg_x550()
>
> All error handling paths, except this one, go to 'out' where
> release_swfw_sync() is called.
> This call balances the acquire_swfw_sync() call done at the beginning of
> the function.
>
> Branch to the error handling path in order to correctly release some
> resources in case of error.
>
> Fixes: ae14a1d8e104 ("ixgbe: Fix IOSF SB access issues")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This patch is speculative, review with care.
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index 6208923e29a2..c1adc94a5a65 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -716,7 +716,8 @@ static s32 ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
>   	if ((command & IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK) != 0) {
>   		error = FIELD_GET(IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK, command);
>   		hw_dbg(hw, "Failed to read, error %x\n", error);
> -		return -EIO;
> +		ret = -EIO;
> +		goto out;
>   	}
>   
>   	if (!ret)
