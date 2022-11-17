Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BC462D898
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:55:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C1FE81F4D;
	Thu, 17 Nov 2022 10:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C1FE81F4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668682542;
	bh=t/nKfV4H8IPe0/l0c/xcqFtTLkf6pGiQhmUcg19bZKM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JwhWm4CxjfcfO/Rqb7e5scNOz0LlNe8nUiTJ58slPAdNuKNiTXPLeLdNHKZbdADYZ
	 aBf9Pd84BDgGfBknuo5TrRXWwMVH84mfNT5bjL+zg6rIccPG5xJvwq/VlBYKV6TCgC
	 hgspV8Wkz7/C073FfELUSNqlwLA2YC55RiFYjXKmZMfiXXZxb1sbFy+kNe7A+X3VyO
	 BTh8jiYiDNzRJsvSpGLtc8KdvWfxUlB5bivaCxbgCHWVOjbgTkgYEUg0apMJwQiPyo
	 kXRIZGwWKlxOA31ODyWfN2++A0RJiEWkdGhO8kF3oSBrUAK50uFHZoaMSKP/MFpSN7
	 S4yY8mG5HdBtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AlmqWWcylLiw; Thu, 17 Nov 2022 10:55:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73FF381F4C;
	Thu, 17 Nov 2022 10:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73FF381F4C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 039041BF3A1
 for <intel-wired-lan@osuosl.org>; Thu, 17 Nov 2022 10:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D1ED181F4C
 for <intel-wired-lan@osuosl.org>; Thu, 17 Nov 2022 10:55:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1ED181F4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Mz0VHDdF2Gb for <intel-wired-lan@osuosl.org>;
 Thu, 17 Nov 2022 10:55:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FECF81F48
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FECF81F48
 for <intel-wired-lan@osuosl.org>; Thu, 17 Nov 2022 10:55:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 19F5660ABE;
 Thu, 17 Nov 2022 10:55:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8EDEC433C1;
 Thu, 17 Nov 2022 10:55:32 +0000 (UTC)
Date: Thu, 17 Nov 2022 12:55:29 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <Y3YTIciHsqKm2J97@unreal>
References: <20221116122032.969666-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221116122032.969666-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668682533;
 bh=bqEgAabDndE4N1MKV7K/TPx0jmKHs8zrAlaQAHYeyrE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A3yFt2j527JgJRVjByOwkk+SqQrGviV+aBFy1gAUA9fkkxVlb+DHav/vJYGJv2e/R
 qoIktMqgI3Nl7LCmL17SOExm8btqt2RQeIx/8RKIKmZQ0dYHDJPIY3ji8jLS83xitd
 vPoBS44GF7x/yAPtYyyVTZ4j0/TP/12PiGD7yxkGeKknZg9QK40i6ECCN5Y9pyW5fL
 WN3rtHwG+Otf8jpRYJlL1zt7LXCvpVAxwlnRyRrd2athHPYRF111lZO2IB4VoSwqKV
 rXR0hQEe8wYIo6KH1HguekTKoYC/oD/L6NqOM9ckG7XVrcaLxL+AwZH4maSEQujt63
 l+DI2otOFoMVA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A3yFt2j5
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: remove redundant
 non-null check in ice_setup_pf_sw()
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
Cc: intel-wired-lan@osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 16, 2022 at 01:20:32PM +0100, Przemek Kitszel wrote:
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Remove a redundant null check, as vsi could not be null at this point.
> 
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
