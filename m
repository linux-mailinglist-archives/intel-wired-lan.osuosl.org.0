Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836E396C726
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 21:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB70440B85;
	Wed,  4 Sep 2024 19:08:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z20pJ9HS1dKr; Wed,  4 Sep 2024 19:08:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B626E40AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725476890;
	bh=UxN9BugtAlKG9zuPDjXmvzb5CzexfJ52mJXzYIfqG3k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Re5lfrykwdM6f7zLKyA2MmKm8g9xiyTUe8Axx0x4mdsTUBhtvULsGjcGpCwcrR556
	 HEQ98hAqx/ng2+rizeazRSrCg1sgoJ1kyckZYVGjK0VcpR9kACBXL2XLR9nTG+NApx
	 KBd0ww9aFTeLA6/1+R7qhCeB7oP6bolVVDVyhRiUosOqqugPVmsJDzid90WAoTv/PK
	 qIJJ6Zj40uk4twXkdHIYv5HPAYo9HrL9ohXnb3FemaVann7fIbvyVfElf0kf+tetAN
	 KKSHqpyrWl9e4EYrntJvRDqfUfyP4IwxZNe0AXCeQtVuNr0mNolOgnMsurYWpe8E3F
	 2dbTd7tAAdgZw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B626E40AE8;
	Wed,  4 Sep 2024 19:08:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6904E1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 19:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55BC6608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 19:08:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8V4Y_NBHnjDu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 19:08:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.118;
 helo=mx08lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 79689608AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79689608AB
Received: from mx08lb.world4you.com (mx08lb.world4you.com [81.19.149.118])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79689608AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 19:08:07 +0000 (UTC)
Received: from [88.117.52.244] (helo=[10.0.0.160])
 by mx08lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96.2)
 (envelope-from <gerhard@engleder-embedded.com>) id 1slvM7-0003yc-27;
 Wed, 04 Sep 2024 21:07:51 +0200
Message-ID: <dd42c1fd-c98b-4eda-b75f-01df15934653@engleder-embedded.com>
Date: Wed, 4 Sep 2024 21:07:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Hongbo Li <lihongbo22@huawei.com>, anthony.l.nguyen@intel.com
References: <20240902131407.3087903-1-lihongbo22@huawei.com>
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <20240902131407.3087903-1-lihongbo22@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UxN9BugtAlKG9zuPDjXmvzb5CzexfJ52mJXzYIfqG3k=; b=GuO53PleCApAFKlr7RvxHaoHza
 chRO/Ous/KJ0+ADx2Ab8txODYSyx/BiWXl5K65+5NS5RJOnlzlHVpKxjoIG6nmGzLI9yBWAqWdWex
 2lV4fTKCyU/GaoCQToA8P2R2RHX/8PrcKKcTZhvqs5EsYEipVV5jQ8cZSROI1hqi8no8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=GuO53Ple
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Make use of
 assign_bit() API
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
Cc: przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 02.09.24 15:14, Hongbo Li wrote:
> We have for some time the assign_bit() API to replace open coded
> 
>      if (foo)
>              set_bit(n, bar);
>      else
>              clear_bit(n, bar);
> 
> Use this API to clean the code. No functional change intended.
> 
> Signed-off-by: Hongbo Li <lihongbo22@huawei.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 46d3c5a34d6a..e3ad91b3ba77 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6522,8 +6522,7 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
>   	if (changed & NETIF_F_HW_TC) {
>   		bool ena = !!(features & NETIF_F_HW_TC);
>   
> -		ena ? set_bit(ICE_FLAG_CLS_FLOWER, pf->flags) :
> -		      clear_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
> +		assign_bit(ICE_FLAG_CLS_FLOWER, pf->flags, ena);
>   	}
>   
>   	if (changed & NETIF_F_LOOPBACK)

Reviewed-by: Gerhard Engleder <gerhard@engleder-embedded.com>
