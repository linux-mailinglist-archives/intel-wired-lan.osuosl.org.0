Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDD565ECCF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 14:19:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4871260D89;
	Thu,  5 Jan 2023 13:19:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4871260D89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672924751;
	bh=s1J4qSU52YeAuKCVtT/6NEmX8BDx4LHUs1OQUoNLwao=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ysUUDMkKIHPvrn4CrQGL5UlsHXi3Wp7AmWDC9SpjWbMJYTZqIVIqoEA2t/35eTi5l
	 Tl1fwI3+VoAGkoRThAkhnBiw1Pxyx5zubfgKNf6KITxN2CBk1aXrKOA5SXXk9DIGOn
	 zX/GQmlTzmQbxo6x4HwlPWgNMYkiWRZYTAni8R3qxpwo/rLRhGJaHtS3jMfhF0qMV+
	 bTEAdXKKuI+KSq8Nq+RUcxDAR4wybPyJBQ6KwE+Pw9QjV/DMvDhDgGBRgEPKvsJ69I
	 FC/4TC6vjGyqFt1PTZHBlc93SoOvvd+5JqBw9s8bSGiA21x5FHHYZqbjsfU84cXLCZ
	 bDmVhCv2QLyaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dhbU1XpLTg41; Thu,  5 Jan 2023 13:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37B5160804;
	Thu,  5 Jan 2023 13:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37B5160804
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06D9B1BF409
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 13:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D530340C2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 13:19:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D530340C2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id knjaB9Rejlbw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 13:19:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E8CC40125
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E8CC40125
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 13:19:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9D9E561A01;
 Thu,  5 Jan 2023 13:19:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AFB7C433EF;
 Thu,  5 Jan 2023 13:19:02 +0000 (UTC)
Date: Thu, 5 Jan 2023 15:18:58 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <Y7bOQoFJQUhsB1kC@unreal>
References: <20230105120518.29776-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230105120518.29776-1-mateusz.palczewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672924743;
 bh=oeiqTX+YktoVuCEksUYADqphwlZpszjcAzOZO0MUgZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a6mlhy57XL4NNdsfanSq8y9rXhWOQTlnSPehyeCmIZ+/cmcDmQliInZEyi2t7syr1
 qan+Kt132Hwei+/NPSla1LoVHJSAEWi9zXfQd+x9KLqrwC4Pip+0XBStSdgu3/VdAJ
 kBElWcf4WFdaISl8v6Xo3FxS/OCwTAHIAJ9xSQ1jB43hB6mEvNdVH7yflG108qTyxG
 C7jLnzNJyn0dNZ3pY9ZaUdcwkIIPabzzE1U7+HMid1pkMRO5plNpTJrXmrHvPKHuzf
 WlSAv1qIgwZlJl+S1RZPSd497E0hmODfbijcjD0/LiYWiXoljpbhr5LTPPsVggeTIn
 r3A96+7j7V+6Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=a6mlhy57
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix deadlock on the
 rtnl_mutex
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 05, 2023 at 07:05:18AM -0500, Mateusz Palczewski wrote:
> There is a deadlock on rtnl_mutex when attempting to take the lock
> in unregister_netdev() after it has already been taken by
> ethnl_set_channels(). This happened when unregister_netdev() was
> called inside of ice_vsi_rebuild().
> Fix that by removing the unregister_netdev() usage and replace it with
> ice_vsi_clear_rings() that deallocates the tx and rx rings for the VSI.
> 
> Fixes: df0f847915b4 ("ice: Move common functions out of ice_main.c part 6/7")
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed goto unwind to remove code redundancy
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 35 ++++++++++++------------
>  1 file changed, 17 insertions(+), 18 deletions(-)
> 

I think that it will be beneficial to have lockdep trace in commit message too.

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
