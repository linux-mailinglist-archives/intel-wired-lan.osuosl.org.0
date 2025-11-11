Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CD2C4ECB2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 16:34:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1D9040983;
	Tue, 11 Nov 2025 15:34:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CvSEsPxJ2sEj; Tue, 11 Nov 2025 15:34:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AE464097C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762875261;
	bh=4j8ZKzszseIjZ7pfR2T/668BGyXjq5DTM+7l1c3vmKM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o3Fvsmdi3wLZlHcTaJc2l/yQM9zpEqy/3bO34Gg0N8CrwQpadcCPceIfPmT/50uCM
	 bg+gH3c6ZHpuq67asYdC10fc9+a/kMGp2SfbO5t03Tpx2Zjx7l8kRh/dYn3aTBRmCk
	 X08asp0ZuM0s97xCdgzycay/AgN+u1BeYcwAup/PlctVhCmu6NkMehn0itD5EgoXtJ
	 zr119yQQPxQUF3ztdlG6M34G5cWjYLFLSmasvqPr2O1Bxmu2VB0GTpZou/zL87SBFE
	 nbDBFWUQ57EWw7urcoFdSmSivyeDHyUMr/ATS4EJvMWwSCLOX1vmzsqQZEi7S2MHgo
	 oqdD7D/qfmTFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AE464097C;
	Tue, 11 Nov 2025 15:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DC36B25D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE089408AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:34:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wk09OHSoQQap for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 15:34:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFDB34084F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFDB34084F
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFDB34084F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 15:34:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8B02660205;
 Tue, 11 Nov 2025 15:34:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F987C4CEF5;
 Tue, 11 Nov 2025 15:34:13 +0000 (UTC)
Date: Tue, 11 Nov 2025 07:34:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Saeed Mahameed <saeed@kernel.org>
Cc: Daniel Zahka <daniel.zahka@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Srujana Challa
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
Message-ID: <20251111073412.5aa12e38@kernel.org>
In-Reply-To: <aRKu0Iknk0jftv2Z@x130>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130> <20251110150133.04a2e905@kernel.org>
 <aRKu0Iknk0jftv2Z@x130>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762875255;
 bh=/IiWVNswHcrotcXImuZbhDizvXR5f83IzztpfhJsS3g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=C387oCWRJx0kXDCxVdceMrAw7Xp2ONrwf4fzsso3ilHBN5eUDEfDZc5gln26HIGHS
 QREeK2eYI5DB0V23P5YE8svKzYb0H0AfOXgoYultzhBBFQiTNuKRdO+ACLwEiqbOKy
 vFXuH/7UdT7zdJsvrSeDbmZNG7p2v0YmZOXzVdxc1ejFVQmXzaTVfQB+CL4ky9CiLP
 XkADHhMZkYQsAmvyySufJL72zovyGm+I26vbA/NJmxqPjzNLCA7O/HCSG9hLnQ0h3T
 1sR4//vn0OwcGa60PW9qgnyqkXWU9IY7XQADFO6bAuP8DOdUZyRkBfYhAVf8i0zu+w
 3DOhKUCwD9ZsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=C387oCWR
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

On Mon, 10 Nov 2025 19:34:40 -0800 Saeed Mahameed wrote:
> On 10 Nov 15:01, Jakub Kicinski wrote:
> >On Fri, 7 Nov 2025 22:14:45 -0800 Saeed Mahameed wrote:  
> >> Plug in the err, NL_SET_ERR_MSG_FMT_MOD(.., .., err);
> >> other locations as well.  
> >
> >Incorrect. extack should basically be passed to perror()
> >IOW user space will add strerror(errno) after, anyway.
> >Adding the errno inside the string is pointless and ugly.  
> 
> ernno set by stack. err set by driver. we can't assume err will propagate
> to errno, this is up to the stack.
> 
> And not at all ugly, very useful debug hint to the user, unless you
> guarantee err == errno.

Not propagating errno should be fixed, if that happens.
We need clear expectations to avoid the messages being all over 
the place. Historically we haven't included err because formatting
was not an option. So I think we should continue this way.
