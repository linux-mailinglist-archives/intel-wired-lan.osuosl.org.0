Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081B22CC77A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 21:10:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B85A87A35;
	Wed,  2 Dec 2020 20:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fl3GzBIhBR05; Wed,  2 Dec 2020 20:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6D0087A31;
	Wed,  2 Dec 2020 20:10:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 460DA1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F8532E2AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NueYVYlvcpKs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 20:10:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A2CB42033B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:10:31 +0000 (UTC)
Date: Wed, 2 Dec 2020 14:10:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606939831;
 bh=i8Vnq+pvTHhHj/1IWA3etZDAb0TNeRlQer8PLomWRag=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=XUGocHXmgEyD9+LeXma512Rxjr/oRoaZddwcMN6uut9D2vKacomoXW/lfh2/viOmc
 u7jzKI0DGX8iB/YimFhyu7rg+Eh4LsHFGtaqxqMqJ1kfRlQZzEMaTw2HdcXQgQp1vT
 4Ix+tZzvcKXO7ykBwZIa7QKEaGVtL0F6UrEQt27qinrTshhF1+ML3mu5rbvUFaiygG
 O4Bmn9WYojEL3cV4D/KXyjJQLB3XZol06a1FMbizfoIBOZmX4XhASkyK3Ba/hqcf0C
 9tHKfcUXM3cCobFeuY0y0EbY1weCqM+0K/MS08ttncCjSRJ7Lfydd4MnyGyQlv7UtX
 nAj1msYc+CJIA==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Message-ID: <20201202201029.GA1464938@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202161748.128938-2-mario.limonciello@dell.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/5] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Yijun.Shen@dell.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 02, 2020 at 10:17:44AM -0600, Mario Limonciello wrote:
> From: Vitaly Lifshits <vitaly.lifshits@intel.com>
> 
> Changed a configuration in the flows to align with
> architecture requirements to achieve S0i3.2 substate.

I guess this is really talking about requirements of a specific
CPU/SOC before it will enter S0i3.2?

> Also fixed a typo in the previous commit 632fbd5eb5b0
> ("e1000e: fix S0ix flows for cable connected case").

Not clear what the typo was, maybe these?

  > -	ew32(FEXTNVM12, mac_data);
  > +	ew32(FEXTNVM6, mac_data);

  > -	ew32(FEXTNVM12, mac_data);
  > +	ew32(FEXTNVM6, mac_data);

I would probably have put typo fixes in a separate patch, especially
since the cover letter mentions regressions related to 632fbd5eb5b0.
Maybe the commit log for the fix should mention that it's fixing a
regression, what the regression was, and include a Fixes: tag?  But
not my circus.

> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index b30f00891c03..128ab6898070 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6475,13 +6475,13 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>  
>  	/* Ungate PGCB clock */
>  	mac_data = er32(FEXTNVM9);
> -	mac_data |= BIT(28);
> +	mac_data &= ~BIT(28);
>  	ew32(FEXTNVM9, mac_data);
>  
>  	/* Enable K1 off to enable mPHY Power Gating */
>  	mac_data = er32(FEXTNVM6);
>  	mac_data |= BIT(31);
> -	ew32(FEXTNVM12, mac_data);
> +	ew32(FEXTNVM6, mac_data);
>  
>  	/* Enable mPHY power gating for any link and speed */
>  	mac_data = er32(FEXTNVM8);
> @@ -6525,11 +6525,11 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>  	/* Disable K1 off */
>  	mac_data = er32(FEXTNVM6);
>  	mac_data &= ~BIT(31);
> -	ew32(FEXTNVM12, mac_data);
> +	ew32(FEXTNVM6, mac_data);
>  
>  	/* Disable Ungate PGCB clock */
>  	mac_data = er32(FEXTNVM9);
> -	mac_data &= ~BIT(28);
> +	mac_data |= BIT(28);
>  	ew32(FEXTNVM9, mac_data);
>  
>  	/* Cancel not waking from dynamic
> -- 
> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
