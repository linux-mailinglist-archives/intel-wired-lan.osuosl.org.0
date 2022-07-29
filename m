Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E25585374
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 18:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EB7560F69;
	Fri, 29 Jul 2022 16:32:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EB7560F69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659112332;
	bh=E1EWXLbWhV1AjwogKe2AXA7H1PNuokBQmG4PaxXnK60=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XXyxDVzAcFOD1irGl+HXKgk5Pb4yxU740KTa3JPio98F1ODDpazB3HfenPoxERgPn
	 8/wUzRBh1s5GWhIhtEZ36o4P5vr7H1i2aZzrW6w4fN1Xhu7d3uTjstePw3tKu1uMPp
	 KLohhty+tqilC2l7Y3fJ+7pZ4nWv8r5qTVJNmwvtbSQLAX/KqyHlInW4r09meM4u6f
	 iRyMuCAax4oo2wxOv4f/ECBIGnXwFhWyePY7CrKSrwFuioENvGb912WuiZatAMyCt6
	 QkJkBIyHjY5+h2oYJg8yu7RL4MSaN0okv77DTnztuD0JWoSPZioX5Zjg1goBGj/XDA
	 Nr1S5sKSq6juw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ke9EqxV3bpNv; Fri, 29 Jul 2022 16:32:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DF3860E91;
	Fri, 29 Jul 2022 16:32:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DF3860E91
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 933891BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 16:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A2188404F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 16:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A2188404F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WcrVhGvZN2Pe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 16:32:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0611C84046
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0611C84046
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 16:32:04 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 w63-20020a17090a6bc500b001f3160a6011so6988860pjj.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 09:32:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=8vEvEoXiOGD+iC089b5mhdDPX1NyQHNd+5UkIwp9jpU=;
 b=LU21jCgk7FiGVqnZcmFem4Dw2wqxSEmXmCRVMzDc8U+N4fpK3Kf4l/G4rnBmXpJt2g
 Ev1syrcYjldogTzdaKWZJHvqYjtE8rpT11S5XpaZC2Ah9BPfvq4OG6X8C/NPu70eo1xq
 shWmtp112YlN6beUpBPE1hhQkY/CDycM3k3hlnypCREO1rWPN181xg7sr3QZ2kmA4wwI
 2PZh6qkWAfUE9N8y76O2dSvDR8gOy3+2UgETEnNhWyDqLHHS12hGdiWZzqarohlpvbIY
 38AQLClVCQ3W/eMhWwF3bA6gkzqhb8p/y6gM4QswHpdLaSZqcGTuQDnRLlOV7tjektqf
 lCmA==
X-Gm-Message-State: ACgBeo1IgI9VS8brzafRkm/ebtCTUiON12cgLYiuUuuQQz8zibVH2vF7
 gOin2lh0NY1M40UbjXTLYZc2Hg==
X-Google-Smtp-Source: AA6agR6lyMYO+GX4YTLRUO8LAJhKt8b8BkgoLNf7SXU/iApo9H2hD5WF0kIFPWtmsu0ndMGBVorkPQ==
X-Received: by 2002:a17:902:a9c6:b0:16c:9d5a:fde1 with SMTP id
 b6-20020a170902a9c600b0016c9d5afde1mr4662863plr.3.1659112324302; 
 Fri, 29 Jul 2022 09:32:04 -0700 (PDT)
Received: from [192.168.0.3] ([50.53.169.105])
 by smtp.gmail.com with ESMTPSA id
 f15-20020a17090a638f00b001f04479017fsm3291279pjj.29.2022.07.29.09.32.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Jul 2022 09:32:03 -0700 (PDT)
Message-ID: <4f3764f1-1faa-c28d-21b1-3356ddb3cede@pensando.io>
Date: Fri, 29 Jul 2022 09:32:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.11.0
Content-Language: en-US
To: Guangbin Huang <huangguangbin2@huawei.com>, davem@davemloft.net,
 kuba@kernel.org, edumazet@google.com, pabeni@redhat.com, brett@pensando.io,
 drivers@pensando.io, anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
References: <20220729101755.4798-1-huangguangbin2@huawei.com>
 <20220729101755.4798-3-huangguangbin2@huawei.com>
From: Shannon Nelson <snelson@pensando.io>
In-Reply-To: <20220729101755.4798-3-huangguangbin2@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pensando.io; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=8vEvEoXiOGD+iC089b5mhdDPX1NyQHNd+5UkIwp9jpU=;
 b=F2Y8kzczwb9Km0nTTNTajsiO92LybDkIifBYVq4p6ymFg7+WSIyfXBFF52ceO21JVD
 JqWFT19Kn/PRXZpfy7eL1Cv41SlhQ2HdMXOwFfP36dGIOdn1hFq0j3S76arWHXwxdw4k
 pLD/TV69dbLrO0ugmieC7WExIVCh1vqqOAPmoIVATp9he30zbKarFbt7e3TMgWFfN3Tq
 kN87eNJBtu7agDtVESu0GYRIrYqZUWVnqxTi7uNKDgS8HsjDStNuHHnfQ/BTDaf5jERU
 X28afroqc6Grdb8Nu1I+txorb6coSVUmBgJU3vb0lAuqDB+8qt3UWQYd/9X4pOwGdJ4l
 zQrg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=pensando.io header.i=@pensando.io
 header.a=rsa-sha256 header.s=google header.b=F2Y8kzcz
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] net: ionic: fix error check
 for vlan flags in ionic_set_nic_features()
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, lipeng321@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/29/22 3:17 AM, Guangbin Huang wrote:
> From: Jian Shen <shenjian15@huawei.com>
> 
> The prototype of input features of ionic_set_nic_features() is
> netdev_features_t, but the vlan_flags is using the private
> definition of ionic drivers. It should use the variable
> ctx.cmd.lif_setattr.features, rather than features to check
> the vlan flags. So fixes it.
> 
> Fixes: beead698b173 ("ionic: Add the basic NDO callbacks for netdev support")
> 
> Signed-off-by: Jian Shen <shenjian15@huawei.com>
> Signed-off-by: Guangbin Huang <huangguangbin2@huawei.com>

Good catch - thanks!

Acked-by: Shannon Nelson <snelson@pensando.io>


> ---
>   drivers/net/ethernet/pensando/ionic/ionic_lif.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_lif.c b/drivers/net/ethernet/pensando/ionic/ionic_lif.c
> index f3568901eb91..1443f788ee37 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_lif.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_lif.c
> @@ -1437,7 +1437,7 @@ static int ionic_set_nic_features(struct ionic_lif *lif,
>   	if ((old_hw_features ^ lif->hw_features) & IONIC_ETH_HW_RX_HASH)
>   		ionic_lif_rss_config(lif, lif->rss_types, NULL, NULL);
>   
> -	if ((vlan_flags & features) &&
> +	if ((vlan_flags & le64_to_cpu(ctx.cmd.lif_setattr.features)) &&
>   	    !(vlan_flags & le64_to_cpu(ctx.comp.lif_setattr.features)))
>   		dev_info_once(lif->ionic->dev, "NIC is not supporting vlan offload, likely in SmartNIC mode\n");
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
