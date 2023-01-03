Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA02D65BD7D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 10:54:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEBB34055F;
	Tue,  3 Jan 2023 09:54:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEBB34055F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672739687;
	bh=WwcGauNSaG1aT3qribu1f8nDmtG4kbiZgdYQmObpMFc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HplHKyauS5S6Q5cA9ylsf7HaT/z376EA6J7fffGbS7RfiFjU4PO++hFuVar3xALQ9
	 3U30tAgLPICbyqvKbBuAADxn9SzTMU3QVXL8BXtuyIQh+kFS+x6SJ2fFUKTCaq3oLt
	 Pso65jFr4ZGYDAmez1JmsrKlrg5c62dCQIQIn6Xcr6NnYTNaOWdkvbdPzhs38o1YBR
	 TNmxpWAWvWPz7ScOjLUHmfMbjMpBnXNiVSwrokaT8w0+2jrWpc54zfD0RauArnoUrd
	 osLVPCUQUpWIz5Voeti2pYCgSLNrs2gCdHAUwcn6RRBfflzQLOeqgm7F8rXOVxJ4y9
	 EZuLco5u/MpEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vDJGMl5AVDEf; Tue,  3 Jan 2023 09:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9485A404D8;
	Tue,  3 Jan 2023 09:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9485A404D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E4ECB1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 09:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC14E404D8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 09:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC14E404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yqmEipaEyfFL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 09:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F90240135
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F90240135
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 09:54:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 037B6B80E71;
 Tue,  3 Jan 2023 09:54:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6DD7C433EF;
 Tue,  3 Jan 2023 09:54:28 +0000 (UTC)
Date: Tue, 3 Jan 2023 11:54:24 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <Y7P7UKpmE8/LsmOn@unreal>
References: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
 <Y7FFESJONJqGJUkb@unreal>
 <a4216a94-72b3-4711-bc90-ad564a57b310@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4216a94-72b3-4711-bc90-ad564a57b310@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672739669;
 bh=BpfDQ8HqIK6YKlZtjbbpD8Zo3Pb/8YhLfqVQpatUtt0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KxJii57/6HLZ5doJil0NXj28Kw4JpRkyPmP7KGXKsLj4q3nx9/+eBuPvve4qqAvvn
 GMp0W+1yVkKF9vK4hhcKvKGJN3KNZaSkG+JskFvdXGm2KNMN25TM2TtDySGpOReh9w
 etMBWuT8aISx+egjmKosD8zICLvqak10muDDkbeiLNHV6yml4gNhmf1C/hs27dC4J2
 R0aBXrrf88B5574M0quLMUDDPuTzV6Kjz+7ONopNNM2l5C+Y8Bbgq73NXEh1SLENuo
 exYF8Yv7UYU/BAQ76jVmo6A1LxSQ0XSdEf7PDK8idSO9P28r+jW+JdSLsVxSc7tDsa
 rOe4mrEXoO92g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KxJii57/
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>,
 linux-pci@vger.kernel.org, netdev@vger.kernel.org, rajat.khandelwal@intel.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jan 01, 2023 at 11:34:21AM +0100, Paul Menzel wrote:
> [Cc: +Bjorn, +linux-pci]
> 
> Dear Leon, dear Rajat,
> 
> 
> Am 01.01.23 um 09:32 schrieb Leon Romanovsky:
> > On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
> > > The CPU logs get flooded with replay rollover/timeout AER errors in
> > > the system with i225_lmvp connected, usually inside thunderbolt devices.
> > > 
> > > One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
> > > an Intel Foxville chipset, which uses the igc driver.
> > > On connecting ethernet, CPU logs get inundated with these errors. The point
> > > is we shouldn't be spamming the logs with such correctible errors as it
> > > confuses other kernel developers less familiar with PCI errors, support
> > > staff, and users who happen to look at the logs.
> > > 
> > > Signed-off-by: Rajat Khandelwal <rajat.khandelwal@linux.intel.com>
> > > ---
> > >   drivers/net/ethernet/intel/igc/igc_main.c | 28 +++++++++++++++++++++--
> > >   1 file changed, 26 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > > index ebff0e04045d..a3a6e8086c8d 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -6201,6 +6201,26 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
> > >   	return value;
> > >   }
> > > +#ifdef CONFIG_PCIEAER
> > > +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
> > > +{
> > > +	struct pci_dev *pdev = adapter->pdev;
> > > +	u32 aer_pos, corr_mask;
> > > +
> > > +	if (pdev->device != IGC_DEV_ID_I225_LMVP)
> > > +		return;
> > > +
> > > +	aer_pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ERR);
> > > +	if (!aer_pos)
> > > +		return;
> > > +
> > > +	pci_read_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, &corr_mask);
> > > +
> > > +	corr_mask |= PCI_ERR_COR_REP_ROLL | PCI_ERR_COR_REP_TIMER;
> > > +	pci_write_config_dword(pdev, aer_pos + PCI_ERR_COR_MASK, corr_mask);
> > 
> > Shouldn't this igc_mask_aer_replay_correctible function be implemented
> > in drivers/pci/quirks.c and not in igc_probe()?
> 
> Probably. Though I think, the PCI quirk file, is getting too big.

As long as that file is right location, we should use it.
One can refactor quirk file later.

Thanks

> 
> 
> Kind regards,
> 
> Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
