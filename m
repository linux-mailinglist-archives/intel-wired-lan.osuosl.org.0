Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0E465C4EA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 18:17:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19BD7409DB;
	Tue,  3 Jan 2023 17:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19BD7409DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672766236;
	bh=Y/g/7iIN9qVdBSncMkarg7SHpm+j111Khb/GNUswQuE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rfc3bPb2UdYo/5B31uIz1WBRsSNx5KDQYDkbUYZm7Ziuoi91ASSjxlwqCRhXbrlAQ
	 HLqQD8OySRSElLV4emyJW1oRXYlWwvcUtJcsN9Nx2G6sOhpvSAAqAMDXzLMYD9BuTU
	 6NIOB2FvfRNbkcqRbld/9Cw+kEQakSmhsNwx93PZnPESTJoXHs6Nqo79kXDiw+6sSb
	 HPbnwrN952yP+jJIP1HOmvNIev+XghGu4rUXVIbYHNUEYXk6zmyxX8xQZa5LBKGc8G
	 SXbstEEgxRHo66gnknNr8DlxYziLjKEuN+Kz+p98gG3DQNAKO3DeSSShKL+fzBpf7c
	 3ZZhM/PcTvq7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5vUDXqGtYLhq; Tue,  3 Jan 2023 17:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11E34409D3;
	Tue,  3 Jan 2023 17:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11E34409D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61CFB1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 17:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40089400CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 17:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40089400CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vc1snRCISILr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 17:17:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8698409C8
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8698409C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 17:17:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BFF28B81054;
 Tue,  3 Jan 2023 17:17:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8418C433D2;
 Tue,  3 Jan 2023 17:17:02 +0000 (UTC)
Date: Tue, 3 Jan 2023 19:16:58 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <Y7RjCkanr0Ulx3TD@unreal>
References: <Y7QYxAhcUa2JtjSy@unreal>
 <20230103142104.GA996978@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230103142104.GA996978@bhelgaas>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672766223;
 bh=NjPyEb+7G3mfwu5Ui90hyTTySgvhBTP+HjDquXjxoXI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h8ynO3FjWLUp5rAM+BsXMdghGepwYtxqLiZOaXk2YPMRGSLBeepHNu31slrnTsDQn
 OlXE/K/ZiYE++LiLWZo0ENK9ktqb/RjeCJsMSf9GGWg+v2WljLeKtzD/EWECgfqR2H
 z1KVwPFqiJkW/XGV3rlS76iWh7KFXIgtYjPBBAmChHuRPXhbGKjSW+4WVJE+8zyIVJ
 IB9CDCbfFjJoc2L4eRFNp8qIqFZd18HBS/1reilA1PLXs3qUhbSOMsAq65Dv73yPtk
 M0uS/r/ZNNWJIVOo6LeC8ZeXyPnnNOeVSsH2OfCAfZZh+OtrbUGpgbdz5xHX6PbnBR
 8gfxTblAZanMg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=h8ynO3Fj
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Rajat Khandelwal <rajat.khandelwal@linux.intel.com>, netdev@vger.kernel.org,
 rajat.khandelwal@intel.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, kuba@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 03, 2023 at 08:21:04AM -0600, Bjorn Helgaas wrote:
> On Tue, Jan 03, 2023 at 02:00:04PM +0200, Leon Romanovsky wrote:
> > On Tue, Jan 03, 2023 at 05:54:02AM -0600, Bjorn Helgaas wrote:
> > > On Tue, Jan 03, 2023 at 11:54:24AM +0200, Leon Romanovsky wrote:
> > > > On Sun, Jan 01, 2023 at 11:34:21AM +0100, Paul Menzel wrote:
> > > > > Am 01.01.23 um 09:32 schrieb Leon Romanovsky:
> > > > > > On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
> > > > > > > The CPU logs get flooded with replay rollover/timeout AER errors in
> > > > > > > the system with i225_lmvp connected, usually inside thunderbolt devices.
> > > > > > > 
> > > > > > > One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
> > > > > > > an Intel Foxville chipset, which uses the igc driver.
> > > > > > > On connecting ethernet, CPU logs get inundated with these errors. The point
> > > > > > > is we shouldn't be spamming the logs with such correctible errors as it
> > > > > > > confuses other kernel developers less familiar with PCI errors, support
> > > > > > > staff, and users who happen to look at the logs.
> > > 
> > > > > > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > > > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > 
> > > > > > > +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
> > > 
> > > > > > Shouldn't this igc_mask_aer_replay_correctible function be implemented
> > > > > > in drivers/pci/quirks.c and not in igc_probe()?
> > > > > 
> > > > > Probably. Though I think, the PCI quirk file, is getting too big.
> > > > 
> > > > As long as that file is right location, we should use it.
> > > > One can refactor quirk file later.
> > > 
> > > If a quirk like this is only needed when the driver is loaded, 
> > 
> > This is always the case with PCI devices managed through kernel, isn't it?
> > Users don't care/aware about "broken" devices unless they start to use them.
> 
> Indeed, that's usually the case.  There's a lot of stuff in quirks.c
> that could probably be in drivers instead.

NP, so or deprecate quirks.c and prohibit any change to that file or
don't allow drivers to mangle PCI in their probe routines.
Everything in-between will cause to enormous mess in long run.

Thanks

> 
> Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
