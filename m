Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA357C49AB3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 23:58:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A554F408B6;
	Mon, 10 Nov 2025 22:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u14Psv7LRPzg; Mon, 10 Nov 2025 22:58:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B8EF408AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762815518;
	bh=xEj6eZpyv1UfaAPzBSAVdY3T3blXd1bKHdMkO9FrXCg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gBQOpAJBYEOHuebGERnSlTY0nl4MeeE6u0W2bQb4yvxRELAxwVGaQtF/tPRzgQ5AO
	 nJfigJvlRk4huDagqORxPzR+rNiG5L87gXmDldfI181GAcap5PmfgCCKZxfU3kir6a
	 obkEJfqLREOSZ9enGB/TttFSeo0IG45l2dmSGNFKSpxzDxplO997rPLFoQkr28EASg
	 69xVHlFurLMFPn2ntCmz9myn32MpaXBfNSJU/DlrWvg1PCA1lQTu1hIPg7T+ttYdnW
	 cQCUxBzLSCIGglXuROxUEuBmz24KTNREkULVS2GhzMJT7fyqo2dPS2XjKGTvWSbtuF
	 Xms1S7jdVQRsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B8EF408AF;
	Mon, 10 Nov 2025 22:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D3E6FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 22:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 579B6406D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 22:58:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oHNgjoxRlQVe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 22:58:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A4EA740639
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4EA740639
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4EA740639
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 22:58:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D5AAA44197;
 Mon, 10 Nov 2025 22:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADE8DC16AAE;
 Mon, 10 Nov 2025 22:58:32 +0000 (UTC)
Date: Mon, 10 Nov 2025 14:58:31 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Daniel Zahka <daniel.zahka@gmail.com>
Cc: Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon
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
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
Message-ID: <20251110145831.15872b86@kernel.org>
In-Reply-To: <25ebaf18-f009-45de-a3e4-fe440c42ef19@gmail.com>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <mfuluoi4nebyc4avj52gkfs4nqikn6uwhqnkf4o6xfswtpceuq@zhpokcx6bb6l>
 <25ebaf18-f009-45de-a3e4-fe440c42ef19@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762815514;
 bh=gp119oKTnpbHC1P/d+n3Qm9C5OlbMz4VTP9qPySDarM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Wv5sTKvK8Fth+8Ulry2nulV4xCEtVBXnwIhWHQPmidsRNLKwkQ3d5V0GD068+lAO9
 LI3OqSg5CRVEyB//hIYRvUHrLnqzWExmmbDT9Z1UchTDbOP3Ryw9ll2uDjt6HDWyWj
 6KPxk/pHL763G49ToN0WUTIrt7+ddlaAHxfdQwJIFbCcTTqelmfK6pM2GNLDRQ4vys
 AfRF6fB43wY/PHKCpH1Uvy2oCOSMxac7NhkYiYrR01l/n/URrTywQFpukP74NlCWWD
 I99Zqwa+C5Z/WJT4fbNe3yCmM0qcOl3BeAEHvVNQphNd/uswiSxOEDkg692CA0h6BI
 d9gnLkn/HQN4w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Wv5sTKvK
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

On Mon, 10 Nov 2025 08:05:57 -0500 Daniel Zahka wrote:
> On 11/9/25 5:39 AM, Jiri Pirko wrote:
> > Daniel, I asked twice if this could be a non-driver param. Jakub asked
> > for clearer definition of this know in that context.
> >
> > Not sure why you are ignoring this :/
> >  
> 
> My apologies. I think there was a miscommunication. I assumed Jakub's 
> question was directed towards you. I have no objection to making it a 
> generic param; I will do so in v4. It sounded to me like Jakub was 
> wanting more information on what exactly this setting does beyond what I 
> was able to provide in the commit message and mlx5 devlink 
> documentation. My understanding is that this setting pertains to tx 
> csums and how the device expects the driver to prepare partial csums 
> when doing tx cso. I don't really know more than that. Especially not 
> something like what the FW's role in implementing this is.

Right, per To: field of my email I as asking Jiri for clarifications.

Since we struggle to understand the semantics nack on making this
generic. Chances are whoever reuses the "generic" param will have a
different interpretation of its meaning, so what's the point of making
it generic.
