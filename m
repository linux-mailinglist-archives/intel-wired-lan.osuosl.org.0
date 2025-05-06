Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C45C6AACA4A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 18:00:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77672403C5;
	Tue,  6 May 2025 16:00:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lS3v9WSA-hZy; Tue,  6 May 2025 16:00:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 534D24054A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746547209;
	bh=vNX5H4hO86/nz8RvkUdScB3jrLX+gub7feC/1zyYudg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ItkVDyEAZL3gG5tbFIm9e2YwOZiyNYU8GjPPKCqtIhbpjve0WbF+OvEvkcAFg1v6t
	 NMW1t+UFJnCuiCV2gWG9ygZBUapV7+IWoSNqQRG2EjkuG0E4be/6PMCXtaymT0E/KT
	 mDDX4/Vf/u4bYRZgAwos21Yvg4UNSTevBwQnfCl6L1iFHdCnqEfw8iNX8MVpUSr1R4
	 lh5S4Al9N3IT8Ym58W1INLMR3LIHIw0b3Vh0gOM8NM0ek6u8pIXVVH2U+Hp37ou1vZ
	 mFau/1OL7tC0cenbadt5kdo8kM4pFzpLEe9wp/t2GbLt+WUKcjHvGuYm+WoYZLwOS8
	 kUsBKLH/z1L1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 534D24054A;
	Tue,  6 May 2025 16:00:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F2633D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 16:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E459440B0A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 16:00:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WkIMlGtFnCQJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 May 2025 16:00:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2501B40B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2501B40B26
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2501B40B26
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 16:00:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 81E2A49E71;
 Tue,  6 May 2025 16:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8E42C4CEE4;
 Tue,  6 May 2025 16:00:00 +0000 (UTC)
Date: Tue, 6 May 2025 16:59:58 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <20250506155958.GT3339421@horms.kernel.org>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-2-larysa.zaremba@intel.com>
 <20250428161542.GD3339421@horms.kernel.org>
 <10fd9a4b-f071-47eb-bdde-13438218aee9@intel.com>
 <20250430085545.GT3339421@horms.kernel.org>
 <aBhvNfWP-Rmec3Ci@soc-5CG4396X81.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aBhvNfWP-Rmec3Ci@soc-5CG4396X81.clients.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746547206;
 bh=szbW/T48e07o7nsdAtspJ3TqCa91gXQ5dwM1QNp7ZX4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MGt6rFDota1d2WLpw7YKaQYlev1YgRkYOc97GjSpPzuQaqANHfObtJFxL0NbA9jpV
 fqrNNUZV6D7tKBJK6R5rWmTPS9NmzWrBJuGVo32+kLhVmLb41NkVmC1cWPEmfC4y3Q
 DcDYZDkvzEftF40AffVwywKhmBK5CyHg3Ka1heSiEfTi6SGf+mgEe63VThumLnTS0d
 NMiksZH4+DB/niW4uVrKhq+W5sayApdu9lNAXx8fPSdFSBLf1s+e9ErWFxTYPlJ9uS
 R54vHMJTjmcSfkDO3TsLYJazLU29CDW04BydjOh/w93ZxqsULPkQZsCJ9OPvz+FxZd
 1JOwKPeANPx8g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MGt6rFDo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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

On Mon, May 05, 2025 at 09:56:37AM +0200, Larysa Zaremba wrote:
> On Wed, Apr 30, 2025 at 09:55:45AM +0100, Simon Horman wrote:
> > On Tue, Apr 29, 2025 at 11:47:58AM -0700, Jacob Keller wrote:
> > > On 4/28/2025 9:15 AM, Simon Horman wrote:
> > > > On Thu, Apr 24, 2025 at 01:32:24PM +0200, Larysa Zaremba wrote:

...

> > > >> diff --git a/MAINTAINERS b/MAINTAINERS
> > > >> index 657a67f9031e..2e2a57dfea8f 100644
> > > >> --- a/MAINTAINERS
> > > >> +++ b/MAINTAINERS
> > > >> @@ -11884,8 +11884,8 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
> > > >>  F:	Documentation/networking/device_drivers/ethernet/intel/
> > > >>  F:	drivers/net/ethernet/intel/
> > > >>  F:	drivers/net/ethernet/intel/*/
> > > >> -F:	include/linux/avf/virtchnl.h
> > > >> -F:	include/linux/net/intel/iidc.h
> > > >> +F:	include/linux/intel/iidc.h
> > > >> +F:	include/linux/intel/virtchnl.h
> > > > 
> > > > I'm not sure that I understand the motivation for moving files out of
> > > > include/linux/net, but I guess the answer is that my suggestion, which
> > > > would be to move files into include/linux/net, is somehow less good.
> > > > 
> > > > But if file are moving out of include/linux/net then I think it would
> > > > make sense to make a corresponding update to NETWORKING DRIVERS.
> > > > 
> > > > Also, include/linux/intel, does feel a bit too general. These files
> > > > seem to relate to NICs (of some sort of flavour or another). But Intel
> > > > does a lot more than make NICs.
> > > > 
> > > 
> > > 'include/linux/net/intel' seems fine to me. I agree with moving
> > > virtchnl.h there since it is quite clear that any historical ambitions
> > > about AVF being vendor agnostic are long dead, so having it in its own
> > > 'non-intel' folder is silly.
> > > 
> > > Strictly speaking, I think the goal of moving the files is due to the
> > > fact that a lot of the core ixd code is not really network layer but
> > > instead PCI layer.
> > 
> > Sure. I was more thinking out loud in my previous email than requesting any
> > action. Thanks for filling in my understanding of the situation.
> >
> 
> Olek suggested this because intel was the only resident in include/linux/net and 
> include/linux/intel was vacant.
>  
> > But could we please consider updating NETWORKING DRIVERS so
> > that get_maintainers.pl can help people to CC netdev and it's maintainers
> > as appropriate?
> 
> I am not sure what kind of update do you mean, include/linux/net directory was 

Thanks I missed that.

> not under any maintainer. include/linux/mlx5 and include/linux/mlx4 are only 
> under vendor maintainers.
> 
> For sure I should add include/linux/intel/* under Tony.
> Do you think it also should be added to general networking maintainers?

I think it would make sense to add it to general networking, or at least
those files that would tend to be updated via netdev. But at least let's
put the directory under Tony so it's maintained by somebody.
