Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 914E565C1BB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 15:21:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 208A781EB2;
	Tue,  3 Jan 2023 14:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 208A781EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672755678;
	bh=NGWc/Is4I5pFIiAGcsx8lg2tjb7qhYh3cavr911/taA=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=vFr9JZ7j8edvC9BUTn/GtAkJoFwDwDce7Y5eui9REZew1MXJXXD+vwnOhdQfesxMX
	 RbVUGDIaKF6m/5fzB7R66WoAxIByarIP0sEUT6qGwmT+6xIXzNJVvOi1AYMKVXwrtN
	 rUq010GvtpsJ/2OUrHFKtDqURLxz6mcU7Igv6r/A3yHUNrJyPyTVtiIXAfbGWK9+Kk
	 fg8mM09snJLyIKsTkD7PS7KufGlDsl4xJcVUbR+4iGTwLR6dzwehkkrc3n+7sJgTQS
	 SYMqd6P9PDlD/dAQ8tl+GsOOaNa7guG8cftAfeH/OPMkZYf3bE+K9WM51lSWx1axPC
	 UpuNt3GCvNmJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5XYYmAACw_Z; Tue,  3 Jan 2023 14:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 280A881EA7;
	Tue,  3 Jan 2023 14:21:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 280A881EA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 637E01BF27A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 14:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A938404DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 14:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A938404DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hWHCwBQefrGX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 14:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBE344016F
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBE344016F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 14:21:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0CF00B80E52;
 Tue,  3 Jan 2023 14:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81797C433EF;
 Tue,  3 Jan 2023 14:21:06 +0000 (UTC)
Date: Tue, 3 Jan 2023 08:21:04 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230103142104.GA996978@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7QYxAhcUa2JtjSy@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672755666;
 bh=QUDZzmWFzPSdSBUtQKpi4loUsOtqH8FrkQ91X2uvAOM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=tOyX8B6chAWJsL9m+at0UkVDXaPlwFNAtVfIe8xwlD0bq3KlKicnSRn1koeKwptfj
 5LifzE2ym6crzcv1h0TPR8Un2wV/Ljwoksm2BGcJCqf5jr3UlEVjlddeHqTDgX0VXI
 gtjbBy0I07sMlrq4g5rvfddQCscYc1Y3mR3cmLJgRW3D9pSiPt0sixwUiCM2aY3lqo
 r5US4fWJZsREhhKWkSBoea8hmktyMQqwg7vtLvW+MrmoFxmOmFOojJj0tEZW/x40ue
 4zSZrUOwVq6Sxk/Ukaq1hT2Go4Ae0McsAy4UGiFt00ux217yPW23Sj7C58NjjNaKUh
 8NLmzxwLiPiMg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tOyX8B6c
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

On Tue, Jan 03, 2023 at 02:00:04PM +0200, Leon Romanovsky wrote:
> On Tue, Jan 03, 2023 at 05:54:02AM -0600, Bjorn Helgaas wrote:
> > On Tue, Jan 03, 2023 at 11:54:24AM +0200, Leon Romanovsky wrote:
> > > On Sun, Jan 01, 2023 at 11:34:21AM +0100, Paul Menzel wrote:
> > > > Am 01.01.23 um 09:32 schrieb Leon Romanovsky:
> > > > > On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
> > > > > > The CPU logs get flooded with replay rollover/timeout AER errors in
> > > > > > the system with i225_lmvp connected, usually inside thunderbolt devices.
> > > > > > 
> > > > > > One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
> > > > > > an Intel Foxville chipset, which uses the igc driver.
> > > > > > On connecting ethernet, CPU logs get inundated with these errors. The point
> > > > > > is we shouldn't be spamming the logs with such correctible errors as it
> > > > > > confuses other kernel developers less familiar with PCI errors, support
> > > > > > staff, and users who happen to look at the logs.
> > 
> > > > > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > 
> > > > > > +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
> > 
> > > > > Shouldn't this igc_mask_aer_replay_correctible function be implemented
> > > > > in drivers/pci/quirks.c and not in igc_probe()?
> > > > 
> > > > Probably. Though I think, the PCI quirk file, is getting too big.
> > > 
> > > As long as that file is right location, we should use it.
> > > One can refactor quirk file later.
> > 
> > If a quirk like this is only needed when the driver is loaded, 
> 
> This is always the case with PCI devices managed through kernel, isn't it?
> Users don't care/aware about "broken" devices unless they start to use them.

Indeed, that's usually the case.  There's a lot of stuff in quirks.c
that could probably be in drivers instead.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
