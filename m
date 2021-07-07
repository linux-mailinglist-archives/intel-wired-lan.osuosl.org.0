Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10A03BF1D6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 00:10:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92B8940232;
	Wed,  7 Jul 2021 22:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMWVScDVRlqZ; Wed,  7 Jul 2021 22:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 816E140147;
	Wed,  7 Jul 2021 22:10:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14B311BF350
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 22:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 034D482FE4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 22:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l0sBGei3VxJf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 22:10:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5879082F8A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 22:10:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A664E61CBE;
 Wed,  7 Jul 2021 22:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625695844;
 bh=Krj0NcI/vPoGRovvAGXcsL3NienP2oguEHItO3C5azU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=E8lXzKWTlyvg25yMM8pCFQT2dftOY0PgFQbHs08wXkuhnQDxizdK0Df+f5l8/BdK2
 8IoQgVOdKECBLbcWNS5j1ZfJRUYxcrrLFcRjo3d5nUQIckhX1xSfb7yT/yMUMNqgF2
 R6evXm8h72o7621UpUSQMHWyLGUFBU6GfZZHsny0JqhSX9zonU8r0vP1bTwV5MSpco
 LWGOZ+y433AplT1sCKyFNUuyY8pnx1S2ky9MyBjhTCq+mKydbC1iLUU74kKrvMsHkn
 eh92SnZ6t+Zh+r4nbeknVYkN5Lox4HScNeUJkrDjVCAEAfe3Q1SXztC13LzkRJNaEf
 kbr+C2gOr7Gsw==
Date: Wed, 7 Jul 2021 17:10:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Message-ID: <20210707221042.GA939059@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210707215337.lwbgvb6lxs3gmsbb@pali>
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 07, 2021 at 11:53:37PM +0200, Pali Roh=E1r wrote:
> On Tuesday 06 July 2021 15:12:41 Bjorn Helgaas wrote:
> > On Fri, Jul 02, 2021 at 12:51:19PM +0800, Aaron Ma wrote:
> > > Check PCI state when rd/wr iomem.
> > > Implement wr32 function as rd32 too.
> > > =

> > > When unplug TBT dock with i225, rd/wr PCI iomem will cause error log:
> > > Trace:
> > > BUG: unable to handle page fault for address: 000000000000b604
> > > Oops: 0000 [#1] SMP NOPTI
> > > RIP: 0010:igc_rd32+0x1c/0x90 [igc]
> > > Call Trace:
> > > igc_ptp_suspend+0x6c/0xa0 [igc]
> > > igc_ptp_stop+0x12/0x50 [igc]
> > > igc_remove+0x7f/0x1c0 [igc]
> > > pci_device_remove+0x3e/0xb0
> > > __device_release_driver+0x181/0x240
> > > =

> > > Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> > > ---
> > >  drivers/net/ethernet/intel/igc/igc_main.c | 16 ++++++++++++++++
> > >  drivers/net/ethernet/intel/igc/igc_regs.h |  7 ++-----
> > >  2 files changed, 18 insertions(+), 5 deletions(-)
> > > =

> > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/=
ethernet/intel/igc/igc_main.c
> > > index f1adf154ec4a..606b72cb6193 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -5292,6 +5292,10 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
> > >  	u8 __iomem *hw_addr =3D READ_ONCE(hw->hw_addr);
> > >  	u32 value =3D 0;
> > >  =

> > > +	if (igc->pdev &&
> > > +		igc->pdev->error_state =3D=3D pci_channel_io_perm_failure)
> > > +		return 0;
> > =

> > I don't think this solves the problem.
> > =

> >   - Driver calls igc_rd32().
> > =

> >   - "if (pci_channel_io_perm_failure)" evaluates to false (error_state
> >     does not indicate an error).
> > =

> >   - Device is unplugged.
> > =

> >   - igc_rd32() calls readl(), which performs MMIO read, which fails
> >     because the device is no longer present.  readl() returns ~0 on
> >     most platforms.
> > =

> >   - Same page fault occurs.
> =

> Hi Bjorn! I think that backtrace show that this error happens when PCIe
> hotplug get interrupt that device was unplugged and PCIe hotplug code
> calls remove/unbind procedure to stop unplugged driver.
> =

> And in this case really does not make sense to try issuing MMIO read,
> device is already unplugged.
> =

> I looked that PCIe hotplug driver calls pci_dev_set_disconnected() when
> this unplug interrupt happens and pci_dev_set_disconnected() just sets
> pci_channel_io_perm_failure flag.
> =

> drivers/pci/pci.h provides function pci_dev_is_disconnected() which
> checks if that flag pci_channel_io_perm_failure is set.
> =

> So I think that pci_dev_is_disconnected() is useful and could be
> exported also to drivers (like this one) so they can check if
> pci_dev_set_disconnected() was called in past and PCI driver is now in
> unbind/cleanup/remove state because PCIe device is already disconnected
> and not accessible anymore.
> =

> But maybe this check should be on other place in driver unbound
> procedure and not in general MMIO read function?

If we add the check as proposed in this patch, I think people will
read it and think this is the correct way to avoid MMIO errors.  It
does happen to avoid some MMIO errors, but it cannot avoid them all,
so it's not a complete solution and it gives a false sense of
security.

A complete solution requires a test *after* the MMIO read.  If you
have the test after the read, you don't really need one before.  Sure,
testing before means you can avoid one MMIO read failure in some
cases.  But avoiding that failure costs quite a lot in code clutter.

> > The only way is to check *after* the MMIO read to see whether an error
> > occurred.  On most platforms that means checking for ~0 data.  If you
> > see that, a PCI error *may* have occurred.
> > =

> > If you know that ~0 can never be valid, e.g., if you're reading a
> > register where ~0 is not a valid value, you know for sure that an
> > error has occurred.
> > =

> > If ~0 might be a valid value, e.g., if you're reading a buffer that
> > contains arbitrary data, you have to look harder.   You might read a
> > register than cannot contain ~0, and see if you get the data you
> > expect.  Or you might read the Vendor ID or something from config
> > space.
> > =

> > >  	value =3D readl(&hw_addr[reg]);
> > >  =

> > >  	/* reads should not return all F's */
> > > @@ -5308,6 +5312,18 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
> > >  	return value;
> > >  }
> > >  =

> > > +void igc_wr32(struct igc_hw *hw, u32 reg, u32 val)
> > > +{
> > > +	struct igc_adapter *igc =3D container_of(hw, struct igc_adapter, hw=
);
> > > +	u8 __iomem *hw_addr =3D READ_ONCE(hw->hw_addr);
> > > +
> > > +	if (igc->pdev &&
> > > +		igc->pdev->error_state =3D=3D pci_channel_io_perm_failure)
> > > +		return;
> > > +
> > > +	writel((val), &hw_addr[(reg)]);
> > > +}
> > > +
> > >  int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
> > >  {
> > >  	struct igc_mac_info *mac =3D &adapter->hw.mac;
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/=
ethernet/intel/igc/igc_regs.h
> > > index cc174853554b..eb4be87d0e8b 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> > > +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> > > @@ -260,13 +260,10 @@ struct igc_hw;
> > >  u32 igc_rd32(struct igc_hw *hw, u32 reg);
> > >  =

> > >  /* write operations, indexed using DWORDS */
> > > -#define wr32(reg, val) \
> > > -do { \
> > > -	u8 __iomem *hw_addr =3D READ_ONCE((hw)->hw_addr); \
> > > -	writel((val), &hw_addr[(reg)]); \
> > > -} while (0)
> > > +void igc_wr32(struct igc_hw *hw, u32 reg, u32 val);
> > >  =

> > >  #define rd32(reg) (igc_rd32(hw, reg))
> > > +#define wr32(reg, val) (igc_wr32(hw, reg, val))
> > >  =

> > >  #define wrfl() ((void)rd32(IGC_STATUS))
> > >  =

> > > -- =

> > > 2.30.2
> > > =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
