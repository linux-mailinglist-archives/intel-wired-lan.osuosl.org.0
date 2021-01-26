Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D91D303A45
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 11:30:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A092986794;
	Tue, 26 Jan 2021 10:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9dj--ISNClk; Tue, 26 Jan 2021 10:30:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66FB386759;
	Tue, 26 Jan 2021 10:30:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 020D71BF277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 10:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D80BE203E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 10:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uRPPL9LDSyfl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 10:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by silver.osuosl.org (Postfix) with ESMTPS id A2A84203E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 10:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611657044;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KuZg9upurN3kgrK07D1i3fm6HoQPuTKGYFjpYfOzLAo=;
 b=UapkGD9RSkhvOzHYcIMQe37tbxO0+YmP6zSti1hKe1osbf6NeZngkjXzXSCCDR9JNZGsdT
 MsUF/noRt2qmZWUIPhZ4DMkoaMhADHth6JTvAWbGRW1hD67D9SHFZKWchy/3QxpBiuqJwu
 d3sNtP/OleTHpNua6kZB6eKgqenokQY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-453-hdxK8C7DOsWxFZjpwsOrHQ-1; Tue, 26 Jan 2021 05:30:40 -0500
X-MC-Unique: hdxK8C7DOsWxFZjpwsOrHQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DCE0318C8C03;
 Tue, 26 Jan 2021 10:30:38 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-118.ams2.redhat.com
 [10.36.112.118])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9BB73710DC;
 Tue, 26 Jan 2021 10:30:38 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 252A5A80D7F; Tue, 26 Jan 2021 11:30:37 +0100 (CET)
Date: Tue, 26 Jan 2021 11:30:37 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20210126103037.GH4393@calimero.vinschen.de>
Mail-Followup-To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 sasha.neftin@intel.com
References: <20201117195040.178651-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117195040.178651-1-vinschen@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: Re: [Intel-wired-lan] igc: fix link speed advertising
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ping?

It looks like this patch got lost somehow.  Without this patch,
setting link speed advertising is broken.


Thanks,
Corinna


On Nov 17 20:50, Corinna Vinschen wrote:
> Link speed advertising in igc has two problems:
> 
> - When setting the advertisement via ethtool, the link speed is converted
>   to the legacy 32 bit representation for the intel PHY code.
>   This inadvertently drops ETHTOOL_LINK_MODE_2500baseT_Full_BIT (being
>   beyond bit 31).  As a result, any call to `ethtool -s ...' drops the
>   2500Mbit/s link speed from the PHY settings.  Only reloading the driver
>   alleviates that problem.
> 
>   Fix this by converting the ETHTOOL_LINK_MODE_2500baseT_Full_BIT to the
>   Intel PHY ADVERTISE_2500_FULL bit explicitely.
> 
> - Rather than checking the actual PHY setting, the .get_link_ksettings
>   function always fills link_modes.advertising with all link speeds
>   the device is capable of.
> 
>   Fix this by checking the PHY autoneg_advertised settings and report
>   only the actually advertised speeds up to ethtool.
> 
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 24 +++++++++++++++-----
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 61d331ce38cd..75cb4ca36bac 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1675,12 +1675,18 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>  	cmd->base.phy_address = hw->phy.addr;
>  
>  	/* advertising link modes */
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Half);
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Full);
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Half);
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Full);
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, 1000baseT_Full);
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, 2500baseT_Full);
> +	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
> +		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Half);
> +	if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
> +		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Full);
> +	if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
> +		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Half);
> +	if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
> +		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Full);
> +	if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
> +		ethtool_link_ksettings_add_link_mode(cmd, advertising, 1000baseT_Full);
> +	if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
> +		ethtool_link_ksettings_add_link_mode(cmd, advertising, 2500baseT_Full);
>  
>  	/* set autoneg settings */
>  	if (hw->mac.autoneg == 1) {
> @@ -1792,6 +1798,12 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>  
>  	ethtool_convert_link_mode_to_legacy_u32(&advertising,
>  						cmd->link_modes.advertising);
> +	/* Converting to legacy u32 drops ETHTOOL_LINK_MODE_2500baseT_Full_BIT.
> +	 * We have to check this and convert it to ADVERTISE_2500_FULL
> +	 * (aka ETHTOOL_LINK_MODE_2500baseX_Full_BIT) explicitely.
> +	 */
> +	if (ethtool_link_ksettings_test_link_mode(cmd, advertising, 2500baseT_Full))
> +		advertising |= ADVERTISE_2500_FULL;
>  
>  	if (cmd->base.autoneg == AUTONEG_ENABLE) {
>  		hw->mac.autoneg = 1;
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
