Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A54D94B0CDB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Feb 2022 12:57:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BB8B829B6;
	Thu, 10 Feb 2022 11:57:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QNoewNqdq6rF; Thu, 10 Feb 2022 11:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4826782861;
	Thu, 10 Feb 2022 11:57:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D50D1BF25F
 for <intel-wired-lan@osuosl.org>; Thu, 10 Feb 2022 11:57:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2971640998
 for <intel-wired-lan@osuosl.org>; Thu, 10 Feb 2022 11:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v797ifb5ByBP for <intel-wired-lan@osuosl.org>;
 Thu, 10 Feb 2022 11:57:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9C2440862
 for <intel-wired-lan@osuosl.org>; Thu, 10 Feb 2022 11:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644494248; x=1676030248;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aUDTUwtDlGMi21r3TDkZxoQ2hVhLGhZaFoI/YDySAPc=;
 b=D8ZRPRpTTwN5kYrlOdAwljpuSS1ZDXZye+DognHDF2najUMPY9vitIcD
 HtI7iRXQ6JOMnmQcVj95ZSiByeJ7n/YCzNMszLauijCDoIF00V+824FLZ
 EGtOVyEcv105cWUHeQzoPaOzUr3mynbAdg3mFbf+pgMQHBkduutrkPydm
 8gxb3edFoob/xjMj8rrCxm0ckJGux9K97M1aa9l96vfCKb4xM58hn0Fvx
 HKECrZ1O5f/LLlU4RY/JnL5qpxgb4hrl2+5Kb1yYsxxSDA19y3001GgYg
 irELzoKmnf5FtyiX/He/mD1qK1IaVqhbMI9Lujf2sk8QJeQnCkiYVy9oC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="236877442"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="236877442"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 03:57:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="541577635"
Received: from chenyu-dev.sh.intel.com (HELO chenyu-dev) ([10.239.158.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 03:57:25 -0800
Date: Thu, 10 Feb 2022 19:56:53 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20220210115653.GA53223@chenyu-dev>
References: <20220209234302.50833-1-yu.c.chen@intel.com>
 <c496b425-7e8a-a0d9-b27a-990b54743a01@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c496b425-7e8a-a0d9-b27a-990b54743a01@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Print PHY register address
 when MDI read/write fails
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
Cc: Len Brown <len.brown@intel.com>, intel-wired-lan@osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Todd Brandt <todd.e.brandt@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul, thanks for the review,
On Wed, Feb 09, 2022 at 05:54:25PM +0100, Paul Menzel wrote:
> Dear Chen,
> 
> 
> First, your system time is incorrect, and the message date from the future.
> 
I did not realize this after the system been re-installed recently,
thanks for reminding me.
> 
> Am 10.02.22 um 00:43 schrieb Chen Yu:
> > There is occasional suspend error from e1000e which blocks the
> > system from further suspending:
> 
> Please add a blank line here.
>
Ok.
> Also, please document the specific board/configuration in question.
> 
Ok.
> > [   20.078957] PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x780 [e1000e] returns -2
> > [   20.078970] PM: dpm_run_callback(): pci_pm_suspend+0x0/0x170 returns -2
> > [   20.078974] e1000e 0000:00:1f.6: PM: pci_pm_suspend+0x0/0x170 returned -2 after 371012 usecs
> > [   20.078978] e1000e 0000:00:1f.6: PM: failed to suspend async: error -2
> 
> Please add a blank line her.e
> 
Ok.
> > According to the code flow, this might be caused by broken MDI read/write to PHY registers.
> > However currently the code does not tell us which register is broken. Thus enhance the debug
> > information to print the offender PHY register for easier debugging.
> 
> Please reflow for 75 characters per line, and maybe even paste the new
> messages, if you have a system, where you can reproduce that on.
> 
Ok, will do.

Thanks,
Chenyu
> > Reported-by: Todd Brandt <todd.e.brandt@intel.com>
> > Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/phy.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> > index 0f0efee5fc8e..fd07c3679bb1 100644
> > --- a/drivers/net/ethernet/intel/e1000e/phy.c
> > +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> > @@ -146,11 +146,11 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
> >   			break;
> >   	}
> >   	if (!(mdic & E1000_MDIC_READY)) {
> > -		e_dbg("MDI Read did not complete\n");
> > +		e_dbg("MDI Read PHY Reg Address %d did not complete\n", offset);
> >   		return -E1000_ERR_PHY;
> >   	}
> >   	if (mdic & E1000_MDIC_ERROR) {
> > -		e_dbg("MDI Error\n");
> > +		e_dbg("MDI Read PHY Reg Address %d Error\n", offset);
> >   		return -E1000_ERR_PHY;
> >   	}
> >   	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
> > @@ -210,11 +210,11 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
> >   			break;
> >   	}
> >   	if (!(mdic & E1000_MDIC_READY)) {
> > -		e_dbg("MDI Write did not complete\n");
> > +		e_dbg("MDI Write PHY Reg Address %d did not complete\n", offset);
> >   		return -E1000_ERR_PHY;
> >   	}
> >   	if (mdic & E1000_MDIC_ERROR) {
> > -		e_dbg("MDI Error\n");
> > +		e_dbg("MDI Write PHY Red Address %d Error\n", offset);
> >   		return -E1000_ERR_PHY;
> >   	}
> >   	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
> 
> Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
