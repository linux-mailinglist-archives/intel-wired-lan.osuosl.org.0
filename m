Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB2A65BF7C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 13:00:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A879E60F5C;
	Tue,  3 Jan 2023 12:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A879E60F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672747218;
	bh=mwpxrUEQSJxeA6a04ps8F0Fe5dXwSsc+I3qxZwENJBo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PLhFqRZ5yL6aNapurDzxG0QSGfoTTTkr7NtGVTPsn8a1mF7u6Y8AF+LGBXMjsR9tB
	 S2pAB8iAwCiXLljyphmoM75oXL2vIE0mnvyCUqsecxnxBqjcNozvonl5f3tv0mHFtA
	 vM2Tt7maLM5/sMzvcMUQTzd8HgMcHohJrmy/uA+BCCbEE5KPUGQJ1EwOsmf5sTI2zt
	 nM8Q9DZPyd/6NWAjJqUpGMGgh3CG/D/hrjnJqRwSshZ5ZO9j1UoAm+SpPWPsDWJ5fj
	 TS6sE3v61bVJQ/w/5sOt6tD6oYUTEFCsflGFlw+xpF0DPcgh1ouEU/iT3sMPweHErd
	 HgwF0szWvEBBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pjWp8_n-1R48; Tue,  3 Jan 2023 12:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F10760F46;
	Tue,  3 Jan 2023 12:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F10760F46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50BDA1BF86B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A5FC81E67
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A5FC81E67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0gd0yJvsnUJQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 12:00:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8417F81306
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8417F81306
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:00:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 682B461275;
 Tue,  3 Jan 2023 12:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11E8CC433EF;
 Tue,  3 Jan 2023 12:00:07 +0000 (UTC)
Date: Tue, 3 Jan 2023 14:00:04 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <Y7QYxAhcUa2JtjSy@unreal>
References: <Y7P7UKpmE8/LsmOn@unreal>
 <20230103115402.GA848993@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230103115402.GA848993@bhelgaas>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672747208;
 bh=h9kbUWYnH4uArH2bII+AxBQ3uPevdlLQIWanWnBVjHE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q38z5R7Wd5krBkticzxr5cxpBQ+YI7yuKgc63H0GQ3zlDV7LmPUlvb5iQm6WpJAft
 Sxnd24XCamUMxt+EttTPccaKXWv2elj/CBQI6DyrrnBM8n6z6Tc6c8QD5t33rCug7+
 kTw7DfxbjsTvpcF00WZgEsNDKDXw4JSalHR3exzPEBYor3+A8cE5m6ehbqWRTEt3DG
 K1Ne/T13pWfiG8yUkv9SpoAVh4fWcq+PgsIYlGk1fBbnKjGXyDeDL53c7Lii/Aglbu
 vDhRjcmXUAqCWauLQ9RWopeJiSxYG3ocHhqaugixEKM0qfM8v3yNE2/fPP8cxYi2RO
 2zJEs2gERKq9w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=q38z5R7W
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

On Tue, Jan 03, 2023 at 05:54:02AM -0600, Bjorn Helgaas wrote:
> On Tue, Jan 03, 2023 at 11:54:24AM +0200, Leon Romanovsky wrote:
> > On Sun, Jan 01, 2023 at 11:34:21AM +0100, Paul Menzel wrote:
> > > Am 01.01.23 um 09:32 schrieb Leon Romanovsky:
> > > > On Thu, Dec 29, 2022 at 05:56:40PM +0530, Rajat Khandelwal wrote:
> > > > > The CPU logs get flooded with replay rollover/timeout AER errors in
> > > > > the system with i225_lmvp connected, usually inside thunderbolt devices.
> > > > > 
> > > > > One of the prominent TBT4 docks we use is HP G4 Hook2, which incorporates
> > > > > an Intel Foxville chipset, which uses the igc driver.
> > > > > On connecting ethernet, CPU logs get inundated with these errors. The point
> > > > > is we shouldn't be spamming the logs with such correctible errors as it
> > > > > confuses other kernel developers less familiar with PCI errors, support
> > > > > staff, and users who happen to look at the logs.
> 
> > > > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> 
> > > > > +static void igc_mask_aer_replay_correctible(struct igc_adapter *adapter)
> 
> > > > Shouldn't this igc_mask_aer_replay_correctible function be implemented
> > > > in drivers/pci/quirks.c and not in igc_probe()?
> > > 
> > > Probably. Though I think, the PCI quirk file, is getting too big.
> > 
> > As long as that file is right location, we should use it.
> > One can refactor quirk file later.
> 
> If a quirk like this is only needed when the driver is loaded, 

This is always the case with PCI devices managed through kernel, isn't it?
Users don't care/aware about "broken" devices unless they start to use them.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
