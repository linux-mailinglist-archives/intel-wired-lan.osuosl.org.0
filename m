Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2680D28BBA1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 17:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B692286D98;
	Mon, 12 Oct 2020 15:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fT39IXa3awd3; Mon, 12 Oct 2020 15:16:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E51E886DAA;
	Mon, 12 Oct 2020 15:16:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3A151BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 15:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CEA9386D98
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 15:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hPd+BjsRcBnS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 15:16:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3135386A81
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 15:16:36 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A6B920878;
 Mon, 12 Oct 2020 15:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602515795;
 bh=0j6qf98C/VHd5JVBKbDLdE4Pd0CIJdHg9Om9AIcfSm0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ivnuej6X8z4a8TCAuaJTm6INdDWC6yUxZPKyVGbSEVvL27mCCNRxqp1yjXAmY8dPB
 YCMn70Op0MPtEkAbQ/faDox7RvTPLfnmu/SxQsD7KLFCfyWMzws84aA2d73Ta4BWez
 +fJD2shGgoJ1BcHUrs8Eu9NSL0LeNVBHzh+WeSns=
Date: Mon, 12 Oct 2020 08:16:33 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Message-ID: <20201012081633.7b501cde@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAMRc=MexKweGRjF5KNg1saz7NmE+tQq=03oR3wzoMsaTcm+CAA@mail.gmail.com>
References: <20200928071744.18253-1-brgl@bgdev.pl>
 <CAMRc=MexKweGRjF5KNg1saz7NmE+tQq=03oR3wzoMsaTcm+CAA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: ixgbe: don't propagate
 -ENODEV from ixgbe_mii_bus_init()
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
Cc: netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 intel-wired-lan@lists.osuosl.org, Yongxin Liu <yongxin.liu@windriver.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 12 Oct 2020 14:20:16 +0200 Bartosz Golaszewski wrote:
> On Mon, Sep 28, 2020 at 9:17 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> >
> > From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> >
> > It's a valid use-case for ixgbe_mii_bus_init() to return -ENODEV - we
> > still want to finalize the registration of the ixgbe device. Check the
> > error code and don't bail out if err == -ENODEV.
> >
> > This fixes an issue on C3000 family of SoCs where four ixgbe devices
> > share a single MDIO bus and ixgbe_mii_bus_init() returns -ENODEV for
> > three of them but we still want to register them.
> >
> > Fixes: 09ef193fef7e ("net: ethernet: ixgbe: check the return value of ixgbe_mii_bus_init()")
> > Reported-by: Yongxin Liu <yongxin.liu@windriver.com>
> > Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index 2f8a4cfc5fa1..d1623af30125 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -11032,7 +11032,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >                         true);
> >
> >         err = ixgbe_mii_bus_init(hw);
> > -       if (err)
> > +       if (err && err != -ENODEV)
> >                 goto err_netdev;
> >
> >         return 0;
>
> Gentle ping for this patch. Who's picking up networking patches now
> that David is OoO? Should I Cc someone else?

Intel went through a maintainer change of its own, and they usually
pick up their patches and send a PR.

Tony, do you want me to apply this directly?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
