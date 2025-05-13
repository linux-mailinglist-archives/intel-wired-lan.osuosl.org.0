Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6A0AB5658
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 15:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D953D410A6;
	Tue, 13 May 2025 13:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y2olnFQUafUS; Tue, 13 May 2025 13:41:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E004F40EC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747143668;
	bh=olkgELY0zeDUN5PqLBrjj3wdi9hHgekOQB3YGpc6x2M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZtGQ9C6Q2cwHZoDlcWV+V8xoUwWj1XD0q9HzuaFVp+mFh1Lzdy8NZiZDOD1UkNsQP
	 r4qTczb+eikV8RX582ZaJoYQPE5205Pi/vAEUqmZDsBu9Q1pB2WxwUD4Cc1eXv0wXj
	 FscHJwfCOmRA0uLDQAn9faWF5dOdeTHH0jKAiR2W3YXgoK+G2LBWiRSJNfkhMmlRMb
	 XNxCmlgjczComzSvDMccE5h1JEgePYgLDh9L5+Wsw9YxQ744E/J6BXql2FlfxDwi68
	 ab1+xPJAx5X70bSYBegZuIcgI3TXvsNEV+fAyhjTKKM6ZEDJv7ywq59zhGczibEtvB
	 e4aU4j5z/gYHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E004F40EC3;
	Tue, 13 May 2025 13:41:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EEFB9150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFD2840E5F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:41:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qEnz9LqgbONn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 13:41:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6B7674071D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B7674071D
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B7674071D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:41:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 53F1AA4D858;
 Tue, 13 May 2025 13:41:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47246C4CEE4;
 Tue, 13 May 2025 13:40:58 +0000 (UTC)
Date: Tue, 13 May 2025 14:40:55 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
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
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <20250513134055.GB3339421@horms.kernel.org>
References: <20250509134319.66631-1-larysa.zaremba@intel.com>
 <20250512124906.GA1417107@horms.kernel.org>
 <aCH19kCiDI0GUs8s@soc-5CG4396X81.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aCH19kCiDI0GUs8s@soc-5CG4396X81.clients.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747143664;
 bh=S00eQUskUp0D65XsF+o/OCXFi+oPqCIXuzNkGKHgNjY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sA03TyxpdSkLcwUQ6qaOB9Kn1Tplkuq75cj2Zf4bbNLaRdG+LXqWkFjj91hDS4zWs
 +tlyO0fPEGFlzjTNk01cKiEmKosvj0hwU17+nM7m77dDSIAdp9kpULZenwB21O0vyw
 wgJYKLIxf4rnLtTZbVXhR3sUmENZWweOs1NdHo+X9hX6KNxC+ulrptUkxmMb7ysg8Y
 +5ZlsMPZOb6uTT78QuRBIBJFUMP22YkTwXUx1GxB6tn9xF/RibgfQAwXr4dH/ZEW9V
 AaO93EmzvnPamQ0UydWpVQ74EW/eHcfM7e5yEfRZZDiSgTvo0GIhmzWo5QmsYk5ONl
 DeMdEv8DRHyrA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=sA03Tyxp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 00/15] Introduce iXD driver
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

On Mon, May 12, 2025 at 03:21:58PM +0200, Larysa Zaremba wrote:
> On Mon, May 12, 2025 at 01:49:06PM +0100, Simon Horman wrote:
> > On Fri, May 09, 2025 at 03:42:57PM +0200, Larysa Zaremba wrote:
> > > This patch series adds the iXD driver, which supports the Intel(R)
> > > Control Plane PCI Function on Intel E2100 and later IPUs and FNICs.
> > > It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
> > > exposed by the same card. The reason for the separation is to be able
> > > to offload the control plane to the host different from where the data
> > > plane is running.
> > > 
> > > This is the first phase in the release of this driver where we implement the
> > > initialization of the core PCI driver. Subsequent phases will implement
> > > advanced features like usage of idpf ethernet aux device, link management,
> > > NVM update via devlink, switchdev port representors, data and exception path,
> > > flow rule programming, etc.
> > 
> > Hi Larysa,
> > 
> > I am having a bit of trouble figuring out where to cleanly apply this
> > series to. Could you help me out?
> 
> Tree did change quite a bit in a short span of time between me fetching and 
> sending, sorry for the trouble.
> 
> The base commit is 10f540c09cf9 "ice: default to TIME_REF instead of TXCO on 
> E825-C". In case you cannot access it, I have pushed the tree to my github.
> 
> https://github.com/walking-machine/linux/commits/ixd_phase1_iwl_v3

Thanks. I did not have that commit present locally, but I was able
to fetch it from the URL above. And the series did indeed apply cleanly
on top of it.

> This version is probably much closer to what would be in dev-queue eventually, 
> compared to a properly rebased one. Some patches were pulled out of dev-queue 
> because of validation problems, but should be back pretty soon, as far as I 
> know. Those patches are the reason why I have an additional fix in the github 
> tree.

Understood.
