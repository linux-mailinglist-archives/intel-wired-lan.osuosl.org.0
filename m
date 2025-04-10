Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0EFA841AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 13:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60766610FA;
	Thu, 10 Apr 2025 11:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FmiG_c_mPaWP; Thu, 10 Apr 2025 11:24:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BFF961099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744284242;
	bh=GC35vgbUBwhXD2gW4NrLmYLNvWoJOA7P40A3YMVxAQc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fCy7X4k2dUBVsBNG2KnAtrHeZSQzEogMzDu2mhSy+iwalGhoonTZXpvFyzZ2zOTrR
	 dJY1N4lE9o3x3NhzWrVj935GRwzTl5mi4MRapdMv1Vx81bRVgPyK/ah8K9siCabUVF
	 +oJWMuJhtyU65Z+7rixZC5VG3f62OU3h+Xb/fp76j6b/R2upEEUkbjviGZ0BUgFZ4a
	 G5PTZUb69VLSt71nAx4kOTuhmAFUNsx3i/RTj59zZU2XySYp1g57ccs8sMdIeexlW2
	 Rexrog95XHhw1KAzvJGsDTF7ykiJudm0GJM+BsW7EtkDLjrMvlkRdC2/j6MviyGkpv
	 01PBzeOBxslJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BFF961099;
	Thu, 10 Apr 2025 11:24:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 35E5D201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 11:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 135D282278
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 11:24:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vJ_hxR9ROpfQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 11:24:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C988380F8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C988380F8F
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C988380F8F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 11:23:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BFFA4A4A756;
 Thu, 10 Apr 2025 11:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEFA7C4CEEA;
 Thu, 10 Apr 2025 11:23:55 +0000 (UTC)
Date: Thu, 10 Apr 2025 14:23:49 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Phani R Burra <phani.r.burra@intel.com>
Message-ID: <20250410112349.GP199604@unreal>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744284238;
 bh=PknozqK0QTn2k3o+Lhfc4fC0nxKDbSSnOTmCnXOnXH8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ObQEx2DOUSjDBCjmT86Ayu3EXJCCbxib5UoaWSInHWLgCMWsHihi3YS4zHro79c78
 vURW2nF2T3EoE/4oLFef1xn9aIq0OFFuF+YXa9JzYhwJPXgua4mby2r916vRBAvNkJ
 cGzzrxlj93SElFDJ6e1uUf9IVuJpGe32Z6qupCwI08Yy46y5iVUvgtXDtpdwKiRIys
 GNfPOkPjf5cG1NCWovKsOsWsKyBaABGKQPq34xAnaIckdnuLKGUycHhIMzGbByRMto
 Ya6F12LmPMrZmqzZtEaXPZYuhwsJUT4kq7rMlnaze+lpf1fqOENvBwDYsK6yLdAEAE
 9SS3/32amAt6g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ObQEx2DO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/14] libeth: add control
 queue support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
> > On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
> > > From: Phani R Burra <phani.r.burra@intel.com>
> > > 
> > > Libeth will now support control queue setup and configuration APIs.
> > > These are mainly used for mailbox communication between drivers and
> > > control plane.
> > > 
> > > Make use of the page pool support for managing controlq buffers.
> > 
> > <...>
> > 
> > >  libeth-y			:= rx.o
> > >  
> > > +obj-$(CONFIG_LIBETH_CP)		+= libeth_cp.o
> > > +
> > > +libeth_cp-y			:= controlq.o
> > 
> > So why did you create separate module for it?
> > Now you have pci -> libeth -> libeth_cp -> ixd, with the potential races between ixd and libeth, am I right?
> >
> 
> I am not sure what kind of races do you mean, all libeth modules themselves are 
> stateless and will stay this way [0], all used data is owned by drivers.

Somehow such separation doesn't truly work. There are multiple syzkaller
reports per-cycle where module A tries to access module C, which already
doesn't exist because it was proxied through module B.

> 
> As for the module separation, I think there is no harm in keeping it modular. 

Syzkaller reports disagree with you. 

> We intend to use basic libeth (libeth_rx) in drivers that for sure have no use 
> for libeth_cp. libeth_pci and libeth_cp separation is more arbitral, as we have 
> no plans for now to use them separately.

So let's not over-engineer it.

> 
> Module dependencies are as follows:
> 
> libeth_rx and libeth_pci do not depend on other modules.
> libeth_cp depends on both libeth_rx and libeth_pci.
> idpf directly uses libeth_pci, libeth_rx and libeth_cp.
> ixd directly uses libeth_cp and libeth_pci.

You can do whatever module architecture for netdev devices, but if you
plan to expose it to RDMA devices, I will vote against any deep layered
module architecture for the drivers.

BTW, please add some Intel prefix to the modules names, they shouldn't
be called in generic names like libeth, e.t.c

Thanks

> 
> [0] https://lore.kernel.org/netdev/61bfa880-6a88-4eac-bab7-040bf72a11ef@intel.com/
> 
> > Thanks
