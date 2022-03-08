Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE8D4D136F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 10:31:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86B7740396;
	Tue,  8 Mar 2022 09:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ae75MDE1Zhcw; Tue,  8 Mar 2022 09:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ADAD400FF;
	Tue,  8 Mar 2022 09:31:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BE501BF30D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81FFF400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pYxYuFw-nrlp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 09:31:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A17C400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646731904; x=1678267904;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OKr2G179OKyEpBdQNjPTBc7g0fgqGfb42y8bxL6msHA=;
 b=bCtoN9ZjBOgjwe8OXUiJFUupAoDjh1vEmk8C9/Vubg5MBcQn4whm1Ejd
 lLZVmNBwLTk9oCS6KZ8vJup1on3id1wYI/GYi9AuyH449oQLyeIhiQV5u
 S7fTo+ilmdFSP5VjB3riopR3pPdLICYeH5MclhKeEpo+oarGe3fTiAWL5
 yXlXQ4DHkq73EaSBdp9IEs8vo/f00GFcCCbFvq13lwbKUexWuvwCegS3k
 4Bx99YrvLaDZKz3qVOGNzwP3f7z6joCkGOtvToV1Cj2pWoHZZScYjOB0m
 UAZUxMCpi93dHIbaH2IlPgRecZoFBBcYBtdGOKxzNM4sT4fdDZcHySrxs Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="341071919"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="341071919"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:31:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="687865874"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by fmsmga001.fm.intel.com with ESMTP; 08 Mar 2022 01:31:42 -0800
Date: Tue, 8 Mar 2022 10:31:41 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <YicifXBo5S6pSXAj@boxer>
References: <20220308092422.2971655-1-sasha.neftin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220308092422.2971655-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix BUG: scheduling while
 atomic: kworker/u64:0/9/0x00000002
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
Cc: Corinna Vinschen <vinschen@redhat.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 08, 2022 at 11:24:22AM +0200, Sasha Neftin wrote:
> Replace usleep_range() method with udelay() method to allow atomic contects

s/contects/contexts

> in low-level MDIO access functions.
> 
> Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=2014971

I don't have access to that bugzilla, so can I ask to include the splat in
the commit message itself?

> Fixes: 5586838fe9ce ("igc: Add code for PHY support")
> Reported-by: Corinna Vinschen <vinschen@redhat.com>
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 40dbf4b43234..6961f65d36b9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -581,7 +581,7 @@ static s32 igc_read_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 *data)
>  	 * the lower time out
>  	 */
>  	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
> -		usleep_range(500, 1000);
> +		udelay(50);
>  		mdic = rd32(IGC_MDIC);
>  		if (mdic & IGC_MDIC_READY)
>  			break;
> @@ -638,7 +638,7 @@ static s32 igc_write_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 data)
>  	 * the lower time out
>  	 */
>  	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
> -		usleep_range(500, 1000);
> +		udelay(50);
>  		mdic = rd32(IGC_MDIC);
>  		if (mdic & IGC_MDIC_READY)
>  			break;
> -- 
> 2.30.2
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
