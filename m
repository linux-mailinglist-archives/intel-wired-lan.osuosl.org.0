Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B79327CE8E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 15:08:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DACFB8452F;
	Tue, 29 Sep 2020 13:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qI_RyW4Pf_tY; Tue, 29 Sep 2020 13:08:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03C5E84530;
	Tue, 29 Sep 2020 13:08:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B0051BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 13:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0382A870B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 13:08:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cic3+BlXprs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 13:08:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2ED2E87032
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 13:08:55 +0000 (UTC)
IronPort-SDR: qgGmkZgPc3qUlUi6TXbzYOvO20P7Ve4x4MgmHAQmA8OYZg6wIabx0OnhTe4tj4W1jY7rq4i6kF
 trn3G8bewRsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="223773879"
X-IronPort-AV: E=Sophos;i="5.77,318,1596524400"; d="scan'208";a="223773879"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 06:08:53 -0700
IronPort-SDR: GLBwOey+qvi1JgCcffRXQGgfEkMe3pcTLQgmt0hdLiISYrL/vR5MLsui3fDMYhawdIqLfnFPtY
 F4lJ7fW6E8lA==
X-IronPort-AV: E=Sophos;i="5.77,318,1596524400"; d="scan'208";a="491071392"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.251.191.104])
 ([10.251.191.104])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 06:08:49 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, jeffrey.t.kirsher@intel.com
References: <20200924164542.19906-1-kai.heng.feng@canonical.com>
 <20200928083658.8567-1-kai.heng.feng@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <469c71d5-93ac-e6c7-f85c-342b0df78a45@intel.com>
Date: Tue, 29 Sep 2020 16:08:45 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928083658.8567-1-kai.heng.feng@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4] e1000e: Increase polling timeout
 on MDIC ready bit
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
Cc: andrew@lunn.ch, "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/28/2020 11:36, Kai-Heng Feng wrote:
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
> As Andrew Lunn pointed out, MDIO has nothing to do with phy, and indeed
> increase polling iteration can resolve the issue.
> 
> This patch only papers over the symptom, as we don't really know the
> root cause of the issue. The most possible culprit is Intel ME, which
> may do its own things that conflict with software.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
> v4:
>   - States that this patch just papers over the symptom.
> 
> v3:
>   - Moving delay to end of loop doesn't save anytime, move it back.
>   - Point out this is quitely likely caused by Intel ME.
> 
> v2:
>   - Increase polling iteration instead of powering down the phy.
> 
>   drivers/net/ethernet/intel/e1000e/phy.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index e11c877595fb..e6d4acd90937 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -203,7 +203,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>   	 * Increasing the time out as testing showed failures with
>   	 * the lower time out
>   	 */
> -	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
> +	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 10); i++) {
As we discussed (many threads) - AMT/ME systems not supported on Linux 
as properly. I do not think increasing polling iteration will solve the 
problem. Rather mask it.
I prefer you check option to disable ME vi BIOS on your system.
>   		udelay(50);
>   		mdic = er32(MDIC);
>   		if (mdic & E1000_MDIC_READY)
> 
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
