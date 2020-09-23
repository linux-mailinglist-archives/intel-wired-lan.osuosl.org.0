Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FA22757C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 14:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A972B203CC;
	Wed, 23 Sep 2020 12:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Ab97cqtgjZe; Wed, 23 Sep 2020 12:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 25FB220460;
	Wed, 23 Sep 2020 12:18:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38EB71BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 12:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 34BA286160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 12:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRPYIuunTWAs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 12:17:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0425186144
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 12:17:57 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kL3iW-00FsW6-JS; Wed, 23 Sep 2020 14:17:48 +0200
Date: Wed, 23 Sep 2020 14:17:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20200923121748.GE3770354@lunn.ch>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923074751.10527-1-kai.heng.feng@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Power cycle phy on PM resume
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 23, 2020 at 03:47:51PM +0800, Kai-Heng Feng wrote:
> We are seeing the following error after S3 resume:
> [  704.746874] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
> [  704.844232] e1000e 0000:00:1f.6 eno1: MDI Write did not complete
> [  704.902817] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
> [  704.903075] e1000e 0000:00:1f.6 eno1: reading PHY page 769 (or 0x6020 shifted) reg 0x17
> [  704.903281] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
> [  704.903486] e1000e 0000:00:1f.6 eno1: writing PHY page 769 (or 0x6020 shifted) reg 0x17
> [  704.943155] e1000e 0000:00:1f.6 eno1: MDI Error
> ...
> [  705.108161] e1000e 0000:00:1f.6 eno1: Hardware Error
> 
> Since we don't know what platform firmware may do to the phy, so let's
> power cycle the phy upon system resume to resolve the issue.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 664e8ccc88d2..c2a87a408102 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6968,6 +6968,8 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
>  	    !e1000e_check_me(hw->adapter->pdev->device))
>  		e1000e_s0ix_exit_flow(adapter);
>  
> +	e1000_power_down_phy(adapter);
> +

static void e1000_power_down_phy(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;

	/* Power down the PHY so no link is implied when interface is down *
	 * The PHY cannot be powered down if any of the following is true *
	 * (a) WoL is enabled
	 * (b) AMT is active
	 * (c) SoL/IDER session is active
	 */
	if (!adapter->wol && hw->mac_type >= e1000_82540 &&
	   hw->media_type == e1000_media_type_copper) {

Could it be coming out of S3 because it just received a WoL?

It seems unlikely that it is the MII_CR_POWER_DOWN which is helping,
since that is an MDIO write itself. Do you actually know how this call
to e1000_power_down_phy() fixes the issues?

   Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
