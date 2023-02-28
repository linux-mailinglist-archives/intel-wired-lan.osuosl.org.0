Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9966A5632
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 11:01:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8F196111C;
	Tue, 28 Feb 2023 10:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8F196111C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677578474;
	bh=0Sz+54l9sUfopk+9pMCwrt3kKAhZBHy3hFBfdSWclVw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KeXHuwBvAV3U/F8e13zvPIgUFT5jxW4/4civOVDK9b44jbxGHg1aDe2mcax3gqaO6
	 unsOErfLagPqp+jynbLXsasKa6z/wrif4b0ERK7kcM63G5z+BD/s1HNyHoaAaQ8vK8
	 ymo2iz5ZARJgMSnvtHVhCKorGT1bKRpLFJrifUPrVhWImugfwxxx3lbHf3PnaRXV2G
	 Z321HMcif+V6OPMmmcUkM8GIqeY8BG+SillE2nTdcs1NM9BmMm1/KPrISrObw0Zaq5
	 r1CaYTzlb4lzFEyZkRBzcy1bHLNUomT1nR6hz6XkMQuRTq2g2Eyy0zKDjRSQQyAEoc
	 m56iCqhXpAE/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e4c29OokdwxB; Tue, 28 Feb 2023 10:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C20E161109;
	Tue, 28 Feb 2023 10:01:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C20E161109
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 173671BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 10:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D613C6115D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 10:01:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D613C6115D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nbdkl0XtHrQP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 10:01:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 285536059E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 285536059E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 10:01:03 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DF73F6244DF88;
 Tue, 28 Feb 2023 11:01:00 +0100 (CET)
Message-ID: <7d2b1ae3-2bec-1456-3df9-7fb04105c681@molgen.mpg.de>
Date: Tue, 28 Feb 2023 11:01:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
References: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix implicit cast u32
 to u16
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
Cc: intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Kalyan, dear Marcin,


Am 28.02.23 um 09:49 schrieb Kalyan Kodamagula:
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> Fix implicit cast by changing argument types of two functions to correct
> types.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ddp.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index d71ed210f9c4..830fa53b5e0a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -701,14 +701,14 @@ struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
>   	return bld;
>   }
>   
> -static bool ice_is_gtp_u_profile(u16 prof_idx)
> +static bool ice_is_gtp_u_profile(u32 prof_idx)
>   {
>   	return (prof_idx >= ICE_PROFID_IPV6_GTPU_TEID &&
>   		prof_idx <= ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER) ||
>   	       prof_idx == ICE_PROFID_IPV4_GTPU_TEID;
>   }
>   
> -static bool ice_is_gtp_c_profile(u16 prof_idx)
> +static bool ice_is_gtp_c_profile(u32 prof_idx)
>   {
>   	switch (prof_idx) {
>   	case ICE_PROFID_IPV4_GTPC_TEID:

Is there a reason to limit the length or could `unsigned int` be used?


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
