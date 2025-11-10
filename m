Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBE8C49CED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 00:46:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4E0581785;
	Mon, 10 Nov 2025 23:46:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zb7tSqJMNc_m; Mon, 10 Nov 2025 23:46:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C61381831
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762818410;
	bh=vVYJpfphQEEEjec/RD/qNfWPctFjvU06h/A56kUxSZ0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d4aHLdyOEgElF7bfqUdyzEcC6P/7qde9xH0qOxN52DrxseJJbL4klbUwJKrjvirNo
	 wQa4H/mRNJDXMF4H486qf1oD9XeqahhiUi/XfmeKJDbtqgs/gsqaRT5szBEV+tRpyj
	 YoAUglQr1ZL9evGJFLCJsv1aTC6Zj+VN11oevvhGN1Vo9hLepjP4EnQctev9fSIUYX
	 qv31f33F/ouHvP/6aIj71Io5vaU/TAqseqUIJiPFpMYb0USXH2WlteqXQslUoAu6Fb
	 P9bjr2uh8/A76i7aTuKo4ovDMnTh4L/zR0/GSupHuzxCLyspuluA5MCLw5Yla/IiuY
	 0hruPzxIZN5kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C61381831;
	Mon, 10 Nov 2025 23:46:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ABC82FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D30F406DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:46:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ydorhXjqT1JN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 23:46:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F32F0406D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F32F0406D6
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F32F0406D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:46:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 599E744595;
 Mon, 10 Nov 2025 23:46:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28E6FC4CEF5;
 Mon, 10 Nov 2025 23:46:44 +0000 (UTC)
Date: Mon, 10 Nov 2025 15:46:43 -0800
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
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
Message-ID: <20251110154643.66d15800@kernel.org>
In-Reply-To: <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130>
 <jhmdihtp63rblcjiy2pibhnz2sikvbm6bhnkclq3l2ndxgbqbb@e3t23x2x2r46>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762818406;
 bh=4e1bgpUV/iimHsy8hCdENWKdiFeyy00W/2NkO5sEUAI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oP2yrdDG0/mUFvFidbKQaKe6gJ9F/49YmJX2dk2zIRQVnLBAUt5Bk09EXUhtxHglT
 RAHcKDqMcD6UbGffywoOsfuUPYOzyut01P+a224sUF9Q/lCufFp9yx3N1QHe8hHzQ1
 h1Gcdd3ZW0XNvLVdJLo0EU9+29ceM4l9zpj0MH6jJCfTtB7C1/yevHRx8d/7412s8d
 I7WAj66CpWa5b2UnoISnNm/NI/L7rkfg3Llh78AlgAm4kaqySG0bWidh4Tqr8v6nCf
 UIrKMk8d7m0dQaOHa+KAQEtIcdyh5ignOrmz8lLJaeASJcxf/Y4qB4NfmGN21hdN5y
 KC7cNoFQCREBw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oP2yrdDG
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

On Sun, 9 Nov 2025 11:46:37 +0100 Jiri Pirko wrote:
> >So, I checked a couple of flows internally, and it seems this allows
> >some flexibility in the FW to decide later on which mode to pick,
> >based on other parameters, which practically means
> >"user has no preference on this param". Driver can only find out
> >after boot, when it reads the runtime capabilities, but still
> >this is a bug, by the time the driver reads this (in devlink), the
> >default value should've already been determined by FW, so FW must
> >return the actual runtime value. Which can only be one of the following  
> 
> I don't think it is correct to expose the "default" as a value.
> 
> On read, user should see the configured value, either "full_csum" or
> "l4_only". Reporting "default" to the user does not make any sense.
> On write, user should pass either "full_csum" or "l4_only". Why we would
> ever want to pass "default"?

FWIW I agree that this feels a bit odd. Should the default be a flag
attr? On get flag being present means the value is the FW default (no
override present). On set passing the flag means user wants to reset
to FW default (remove override)?

> Regardless this patch, since this is param to be reflected on fw reboot
> (permanent cmode), I think it would be nice to expose indication if
> param value passed to user currently affects the fw, or if it is going
> to be applied after fw reboot. Perhaps a simple bool attr would do?

IIUC we're basically talking about user having no information that 
the update is pending? Could this be done by the core? Core can do 
a ->get prior to calling ->set and if the ->set succeeds and 
cmode != runtime record that the update is pending?

That feels very separate from the series tho, there are 3 permanent
params in mlx5, already. Is there something that makes this one special?
