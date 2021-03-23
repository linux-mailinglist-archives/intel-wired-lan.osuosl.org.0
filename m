Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 442AE345920
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 08:56:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FFBC40484;
	Tue, 23 Mar 2021 07:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PjDx5K5vymwv; Tue, 23 Mar 2021 07:56:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46EE74047A;
	Tue, 23 Mar 2021 07:56:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DBBF1BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 07:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BDDF60668
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 07:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D8xMMHmZ4MuI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 07:56:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B1F260652
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 07:56:41 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aef73.dynamic.kabel-deutschland.de
 [95.90.239.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0D31A206479E4;
 Tue, 23 Mar 2021 08:56:38 +0100 (CET)
To: Grzegorz Siwik <grzegorz.siwik@intel.com>
References: <1616425907-12165-1-git-send-email-grzegorz.siwik@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <95f8be30-1d80-22bc-78be-9265a2816abf@molgen.mpg.de>
Date: Tue, 23 Mar 2021 08:56:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <1616425907-12165-1-git-send-email-grzegorz.siwik@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix parameters in
 aq_get_phy_register()
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Grzegorz,


Maybe use something like below as the commit message summary:

> i40e: ethtool: Report correct statistics for each interface

Am 22.03.21 um 16:11 schrieb Grzegorz Siwik:
> Change parameters order in aq_get_phy_register() due to wrong
> statistics in PHY reported by ethtool. Previosly all PHY statistics were

Nit: Previously

> exactly the same for all interfaces
> Now statistics are reported correctly - different for different interfaces
> 
> Fixes: 0514db37dd78 ("i40e: Extend PHY access with page change flag")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> ---
> v2:
> -Changed target tree to net
> ---
>   drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 96d5202..0e92668 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -5480,7 +5480,7 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
>   
>   		status = i40e_aq_get_phy_register(hw,
>   				I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
> -				true, addr, offset, &value, NULL);
> +				addr, true, offset, &value, NULL);
>   		if (status)
>   			return -EIO;
>   		data[i] = value;

The rest looks good.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
