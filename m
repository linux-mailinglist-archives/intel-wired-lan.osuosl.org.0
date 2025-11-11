Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 146CEC4B563
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 04:34:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93EBF80891;
	Tue, 11 Nov 2025 03:34:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OYBZRs4rFoEc; Tue, 11 Nov 2025 03:34:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8960D8088F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762832085;
	bh=5ybvPyCWCryLYMwNPrUcTbYSuDTVAqGVqNlWmKbggiQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6dI3EjnuaWMEI3jpmWfVO9EB4y7NhyozrQsnsCA4Xsy8DjjgnwkAsbWRsKMdYsvVG
	 BtZyfhuJGOUu6IuNBxDlMqBkEK9cQixiWgVxxlXgizvqyYO1a3o1AnJEltzaz8ZaGD
	 tBo0hlIHIuiN1qFtxjy6ZfYLUb1emTsP7VeokcbaCwckk57GUyNzhCZkoLyqaUZAYS
	 c2sqdl/FLFSZtgl023CW3upXeo/jOVeOIBvMkjswIAEIOhI8yavB4IpB7YvE+acX/D
	 Ks/tkv+dGG5P5R9E0WfJu6zQTJbiWQ2C+y+wKSCRpzZbcvh/xwGGX9RmlGy0hRN5MT
	 OtfPIC4OII3Eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8960D8088F;
	Tue, 11 Nov 2025 03:34:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EA8E2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 03:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0B7F60B1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 03:34:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Azx4EufdQFMI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 03:34:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=saeed@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 344F460B1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 344F460B1D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 344F460B1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 03:34:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 63C5E44427;
 Tue, 11 Nov 2025 03:34:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2054FC16AAE;
 Tue, 11 Nov 2025 03:34:42 +0000 (UTC)
Date: Mon, 10 Nov 2025 19:34:40 -0800
From: Saeed Mahameed <saeed@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Daniel Zahka <daniel.zahka@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Srujana Challa <schalla@marvell.com>,
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>,
 Jerin Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Roger Quadros <rogerq@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
Message-ID: <aRKu0Iknk0jftv2Z@x130>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130> <20251110150133.04a2e905@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20251110150133.04a2e905@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762832082;
 bh=rl4quI5CP3hR4drgVFblTgTJWg1WQ4rTS/8XInVRBRs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NbJY+8OuCVAtsk/Qd+DQWuoyHMS9NkjdFKRoJpxSnvZSQFA/3FKgriuCuQ1hTdk6Z
 VjuCJv1ZBON+kwFu3S0k4zhP38utHIs06bxZk/JxbAL4MgY4WZ0b0K66OKFnUgq+Y8
 na1I/6IureNbUb3dwmULna0Fv/98r43yq4TloLeCSGlwnK6LXR8Ab2BJu7lVc8lFno
 wtCf1NiGMqYg2vS4c9AvQiH0rVaCy3zm03oauR/L3PhKsqwYnqFnrGy9EZ8rIKpYJc
 dh1MzY663AuvvZCqkzxOkymtEHga8UogMw9P81gLVBAMYDeOTuCflwVQRDTzh9isAq
 sc2+TiU77i4ig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NbJY+8Ou
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

On 10 Nov 15:01, Jakub Kicinski wrote:
>On Fri, 7 Nov 2025 22:14:45 -0800 Saeed Mahameed wrote:
>> >+	err = mlx5_nv_param_read_sw_accelerate_conf(dev, mnvda, sizeof(mnvda));
>> >+	if (err) {
>> >+		NL_SET_ERR_MSG_MOD(extack,
>> >+				   "Failed to read sw_accelerate_conf mnvda reg");
>>
>> Plug in the err, NL_SET_ERR_MSG_FMT_MOD(.., .., err);
>> other locations as well.
>
>Incorrect. extack should basically be passed to perror()
>IOW user space will add strerror(errno) after, anyway.
>Adding the errno inside the string is pointless and ugly.

ernno set by stack. err set by driver. we can't assume err will propagate
to errno, this is up to the stack.

And not at all ugly, very useful debug hint to the user, unless you
guarantee err == errno.


