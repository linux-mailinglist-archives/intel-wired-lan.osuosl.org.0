Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5D265BF65
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 12:54:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91C3F40580;
	Tue,  3 Jan 2023 11:54:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91C3F40580
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672746856;
	bh=GQ7A4v+JDJLbmZ/SWGyCJ8x5hhpe5aGDPLkbe/VW09g=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=2eNaJGp+kcL+f9vdTGTuAxRu8I26EYgpljMwkJCc0yQy3IyYguXaHtCPeInEKt+5k
	 He1ZgQXQABnQhP/JnrQIRtjp0pftGJdJEc2UK0PI543ZQHYj9ORqw4D+gYeLYhRsR9
	 8Cxx28DqpYuEjY1cq430A26H9/mdqWn5Eea6z8GNOb5yacgq/Vlrf/SIOGd/lVTJDm
	 /numMnq+mwP/g3mmk1aszb8kYg2Om5qJiX79oBQiPV0Ils5mcXI5n6CRbxbqxhkaHO
	 gHmeJyzj4yp0Cf9MwLczV9fpZyzwAGoIENYboTPa29r1pbVCNlSM1b6Gm2Qfn7Udhu
	 H3hQcAHegvqeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S5iJrdxMYyOK; Tue,  3 Jan 2023 11:54:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87EF84056D;
	Tue,  3 Jan 2023 11:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87EF84056D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 288921BF86B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 11:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F0308128D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 11:54:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F0308128D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8bm2dNeSYPRY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 11:54:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11E4081282
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 11E4081282
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 11:54:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id AA293CE10E4;
 Tue,  3 Jan 2023 11:54:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01D8C433EF;
 Tue,  3 Jan 2023 11:54:03 +0000 (UTC)
Date: Tue, 3 Jan 2023 05:54:02 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230103115402.GA848993@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7P7UKpmE8/LsmOn@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672746843;
 bh=/4mB6P2Bm4GaYOrK2xAGD+BWjqC6TeZT/BUcGYXroUI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=oE+HpvffB1aMuaiplglU2hipGASxDz6CXaHX58XITEWtm9XbLkBkqUL/2ddB3w9Qc
 yqaSl7oN3jI0k+TusgLQuxWxR9Baq3ZFwy+QeiQAl2+C8tMOjHNLrRfyKVvtzsQRnv
 3fFEIOR9vhRIUQbKzplX/+Doj2XWeTQ2yE0wg99Enz/YTnsr1EKYIO0dE8VefTvGhf
 WtxDR2/yg4MwgPyLshBuG1ADxN9QdUQxp/goi6i8qJRfVSdKVenX+gF0iM6bU/HNj8
 yzODfjeG3Wqez6T/O5HEwwZFsVXlPzjCn87NAwv0VZ8ukrGY08hj1RxcPsv067J6O7
 5igxLQPwt/tgg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oE+Hpvff
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
 Rajat Khandelwal <rajat.khandelwal@linux.intel.com>,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, rajat.khandelwal@intel.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 03, 2023 at 11:54:24AM +0200, Leon Romanovsky wrote:
> On Sun, Jan 01, 2023 at 11:34:21AM +0100, Paul Menzel wrote:
> > Am 01.01.23 um 09:32 schrieb Leon Romanovsky:
> > > On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
> > > > The CPU logs get flooded with replay rollover/timeout AER errors in
> > > > the system with i225_lmvp connected, usually inside thunderbolt devices.
> > > > 
> > > > One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
> > > > an Intel Foxville chipset, which uses the igc driver.
> > > > On connecting ethernet, CPU logs get inundated with these errors. The point
> > > > is we shouldn't be spamming the logs with such correctible errors as it
> > > > confuses other kernel developers less familiar with PCI errors, support
> > > > staff, and users who happen to look at the logs.

> > > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c

> > > > +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)

> > > Shouldn't this igc_mask_aer_replay_correctible function be implemented
> > > in drivers/pci/quirks.c and not in igc_probe()?
> > 
> > Probably. Though I think, the PCI quirk file, is getting too big.
> 
> As long as that file is right location, we should use it.
> One can refactor quirk file later.

If a quirk like this is only needed when the driver is loaded, I think
the driver is a better place than drivers/pci/quirks.c.  If it's in
quirks.c, either we have to replicate driver Kconfig via #ifdefs, or
the kernel contains the quirk for systems that don't need it.

I'm generally not a fan of simply masking errors because they're
annoying.  I'd prefer to figure out the root cause and fix it if
possible.  Or maybe we can tone down or rate-limit the logging so it's
not so alarming.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
