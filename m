Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2E4C4ED8B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 16:49:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9468C4072E;
	Tue, 11 Nov 2025 15:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3OUCgx9hgMXR; Tue, 11 Nov 2025 15:49:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9B82406E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762876143;
	bh=cj0myj6iUX7CU5DwatM7p0kPyXsnn7a4M3wQU+T8vPA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uqf4jjvET5mVggbRUK+EmKsqIgf7I5SHrD+8VNbWdofTzqxPuMROAy3PBdmGkvMyP
	 fKk8BiRfVRNsYFB4K+Jvt3fu/MzKkSJe1BILwDXcY13oMcJoW+am8fHE82PxdaREfY
	 TaQsY1WzYhrZxoIP8Y408fxTI2LUoO1jcpGVxOVgs0TLfBaJM4x7DMjw8I+1aEjaU9
	 dgv2Ss2dmrn/32IJWjB4S4eZdtafKAnTy1Y/LSqa/7C/4QwkQa/eTu6O715wZ24E9a
	 7lr6gc/NpLaw8Y+ZknXkMdBBx/mFBbP1cEXIxROfPwu0ZOt8OKC6ON2JMhSl8eqhNG
	 FB+bAQgwBzlmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9B82406E9;
	Tue, 11 Nov 2025 15:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5290EFA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:49:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38B9B406E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:49:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7kqSsSBRr4Tf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 15:49:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 40847406B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40847406B1
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40847406B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:49:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B46B640450;
 Tue, 11 Nov 2025 15:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFC01C16AAE;
 Tue, 11 Nov 2025 15:48:58 +0000 (UTC)
Date: Tue, 11 Nov 2025 07:48:57 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Cc: Saeed Mahameed <saeed@kernel.org>, Daniel Zahka
 <daniel.zahka@gmail.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Srujana Challa
 <schalla@marvell.com>, Bharat Bhushan <bbhushan2@marvell.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Brett Creeley <brett.creeley@amd.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>, Linu
 Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, Jerin
 Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, Subbaraya
 Sundeep <sbhatta@marvell.com>, Tariq Toukan <tariqt@nvidia.com>, Saeed
 Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Mark Bloch
 <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Roger Quadros <rogerq@kernel.org>, Loic Poulain
 <loic.poulain@oss.qualcomm.com>, Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean
 <olteanv@gmail.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, "Russell King (Oracle)"
 <rmk+kernel@armlinux.org.uk>, Alexander Sverdlin
 <alexander.sverdlin@gmail.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Message-ID: <20251111074857.7fdb7e88@kernel.org>
In-Reply-To: <cgg6fxjjf6zq6yyzx4njhjmetrlhjgor4lzktwe6nls6rgqd6s@c3abd3ehlzvr>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130>
 <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
 <20251110154643.66d15800@kernel.org> <aRKs6jXqSvC3G_R0@x130>
 <cgg6fxjjf6zq6yyzx4njhjmetrlhjgor4lzktwe6nls6rgqd6s@c3abd3ehlzvr>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762876140;
 bh=Gd488RsUGSpxyLROhr/DeWbJLb69PP0AZLYMgSD5IeI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QDuUJTI5rcGRBMT8WX8HL0Z8Irit8SyhSKMs6hhQNmT3MJFpqKEPCFRhBHJ0lcXPQ
 R+KcnFRHHlDqku8Yg/Y3LYomSmAi35QZ57Jyf+SUfECgXj6KvMZGg0qZAxxOY2d9OF
 ocGwd+Q4E1Zkenr/EQWsFJlrgLqY0fXOYajg8rDKN6qRKFWn7/KFdaucXnYoVvfiD0
 gl3FZEosbxMS8rga/mc6vUc2hCoFYoYpzqNTJiLCYc23k/Yqfo5zYbcDC1rr2GvjmV
 GwAQrmp4Y6MGvKYrLy0pMtFLvC78r/cmHbSlVPSHWmYOa4gQJO4ZGjAiZZ5bA7Q10a
 +onXuhoxqZ2rA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QDuUJTI5
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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

[stripping some of the bouncy CCs.]

On Tue, 11 Nov 2025 15:39:03 +0100 Jiri Pirko wrote:
> Tue, Nov 11, 2025 at 04:26:34AM +0100, saeed@kernel.org wrote:
> >On 10 Nov 15:46, Jakub Kicinski wrote:  
> >> On Sun, 9 Nov 2025 11:46:37 +0100 Jiri Pirko wrote:  
> >> > >So, I checked a couple of flows internally, and it seems this allows
> >> > >some flexibility in the FW to decide later on which mode to pick,
> >> > >based on other parameters, which practically means
> >> > >"user has no preference on this param". Driver can only find out
> >> > >after boot, when it reads the runtime capabilities, but still
> >> > >this is a bug, by the time the driver reads this (in devlink), the
> >> > >default value should've already been determined by FW, so FW must
> >> > >return the actual runtime value. Which can only be one of the following  
> >> > 
> >> > I don't think it is correct to expose the "default" as a value.
> >> > 
> >> > On read, user should see the configured value, either "full_csum" or
> >> > "l4_only". Reporting "default" to the user does not make any sense.
> >> > On write, user should pass either "full_csum" or "l4_only". Why we would
> >> > ever want to pass "default"?  
> >> 
> >> FWIW I agree that this feels a bit odd. Should the default be a flag
> >> attr? On get flag being present means the value is the FW default (no
> >> override present). On set passing the flag means user wants to reset
> >> to FW default (remove override)?

Y'all did not respond to this part, should we assume that what 
I described is clear and makes sense? I think we should make that
part of the series, unlike the pending indication.

> >> > Regardless this patch, since this is param to be reflected on fw reboot
> >> > (permanent cmode), I think it would be nice to expose indication if
> >> > param value passed to user currently affects the fw, or if it is going
> >> > to be applied after fw reboot. Perhaps a simple bool attr would do?  
> >> 
> >> IIUC we're basically talking about user having no information that
> >> the update is pending? Could this be done by the core? Core can do
> >> a ->get prior to calling ->set and if the ->set succeeds and
> >> cmode != runtime record that the update is pending?
> >>   
> >
> >Could work if on GET driver reads 'current' value from FW, then it should
> >be simpler if GET != SET then 'pending', one problem though is if SET was
> >done by external tool or value wasn't applied after reboot, then we loose
> >that information, but do we care? I think we shouldn't.
> >  
> >> That feels very separate from the series tho, there are 3 permanent
> >> params in mlx5, already. Is there something that makes this one special?  
> 
> Agreed. That is why I wrote "regardless this patch". But I think the
> pending indication is definitelly nice to have.

Yes, I've been wondering why it's missing since the day devlink params
were added :)

> >In mlx5 they all have the same behavior, devlink sets 'next' value, devlink
> >reads 'next' value. The only special thing about the new param
> >is that it has a 'device_default' value and when you read that from 'next' it
> >will always show 'device_default' as the actual value is only
> >known at run time ,e.g. 'next boot'.
> >
> >I think the only valid solution for permanent and drv_init params is to
> >have 'next' and 'current' values reported by driver on read. Or maybe go just
> >with  'set' != 'get' then 'pending' as discussed above ?  
> 
> Hmm, is it possible to rebind the driver without fw going through
> next-boot phase? I'm wondering if it wouldn't be safer to have this
> pending flag set to be responsibility of the driver...

The downside is that drivers may either have bugs or not implement 
the new feature. So when there's no indication of pending change
the user will have no idea whether its because there's none or the
driver simply does not report both. 

My experience implementing the pending FW version in a couple of
products is that it takes a lot of "discussions" to get FW people 
to implement this sort of a thing right. mlx5 already has the right 
FW APIs so we should allow their full use. But I don't think the 
"what if user change the setting with fwctl", "what if user reloaded
the driver" corner cases should stop us from trying to get the core
to implement 99% of the cases right.

FTR I'm not aware of any Meta-internal products having permanent knobs.
I just don't think we can depend on the random people that submit
drivers these days to get this right. And devlink users will assume
that it's Linux that sucks if it doesn't work right, not vendor X.

Long story short I think we can add the reporting of both values via GET
but I'd definitely still like to see the core trying to do the tracking
automatically.
