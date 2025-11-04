Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE91C32C26
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 20:22:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7CAC40E19;
	Tue,  4 Nov 2025 19:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zrfnstfkZsgB; Tue,  4 Nov 2025 19:22:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E080940E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762284142;
	bh=Olxv1rxRmXd1BhX+5sdrwYpA0F1vfnEwNxNkuO82J30=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BmsHWnoBOaShsgWo7Q+/h/jMUeEXAtPgl1elCMDbh/GIybUvHnkKHWRkfPIMRmnGZ
	 NpriHH5Bj0IJJj1fqvZiZjEqQ2/cj+GYh8raYdpyO199yDlI/FAnsM1zumVhZyLpvv
	 Db792JZaTtZkhiGU6BxzZdkROMCflgls+rJq1WOJ+mYm1kW6vD9r+jmoYOQGSLZGgG
	 IdLDxJDkJXIhiIytvNrLxAKT4XT2Fk239f+EQEkjocwMNaCdLnJKYsGmef5vcbHVDw
	 PcM/icKXliqFKSU6f16xhHfEKvRoLdqHysejBo79SWszdKIO/hDjxDI7GsQSsrx/3+
	 hMYTIX9tBzdKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E080940E15;
	Tue,  4 Nov 2025 19:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F180462
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 19:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70EDD61080
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 19:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id doIDoHC_fJCV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 19:22:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BA0EC6107F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA0EC6107F
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA0EC6107F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 19:22:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8F82D60208;
 Tue,  4 Nov 2025 19:22:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A88DC16AAE;
 Tue,  4 Nov 2025 19:22:15 +0000 (UTC)
Date: Tue, 4 Nov 2025 11:22:14 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Cc: Daniel Zahka <daniel.zahka@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>, Bharat Bhushan
 <bbhushan2@marvell.com>, Herbert Xu <herbert@gondor.apana.org.au>, Brett
 Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Sunil Goutham
 <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, Geetha
 sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, hariprasad
 <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, Tariq Toukan
 <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky
 <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>, Ido Schimmel
 <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>, Manish Chopra
 <manishc@marvell.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Siddharth Vadapalli
 <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, Loic Poulain
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
Message-ID: <20251104112214.7f60b252@kernel.org>
In-Reply-To: <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-3-daniel.zahka@gmail.com>
 <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762284138;
 bh=+lf7dW++l2EW9+9yEsAcle5UBElW4w+UfVpXaHOHW2Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=B+/TZv1XRq0zzd5NbGu3Z9bN5OyQZnNOsope6laxMrWxA3/9XRg7VX+3PhsjNe7lW
 5cbgxn6SqwRaVkJbyodTHSn0LdeO5DaMLbCFV/YkdMgryijwrq6LyocnrsiVuNyhLv
 xHsrmZselWKpvNIRQMjhLTdiIa0VnfoixY52BS0uFlEVig1wBgEFGzD/T3bGyB56e6
 1l8b7lD0a36nrmABwnEvq70bPZRM5IzkSVy7iTQN+TPjab7k/GpzkYFUllJxth410q
 4+JiRU+f29KNZ9lJy0ZuU0cQlh4AQfIsQMj0TIhuqexc7SbGFrZJBc5IimM07mEMvE
 R1RZeW1bSnP0w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=B+/TZv1X
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] net/mlx5: implement
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

On Tue, 4 Nov 2025 11:14:03 +0100 Jiri Pirko wrote:
> >@@ -548,6 +703,12 @@ static const struct devlink_param mlx5_nv_param_devlink_params[] = {
> > 			     mlx5_nv_param_devlink_cqe_compress_get,
> > 			     mlx5_nv_param_devlink_cqe_compress_set,
> > 			     mlx5_nv_param_devlink_cqe_compress_validate),
> >+	DEVLINK_PARAM_DRIVER(MLX5_DEVLINK_PARAM_ID_SWP_L4_CSUM_MODE,
> >+			     "swp_l4_csum_mode", DEVLINK_PARAM_TYPE_STRING,  
> 
> I still think that even unlikely this will be implemented in other
> driver, it is generic param. Could you please treat it as such?

We need a clearer definition of what this does then.

Is it basically disabling silicon validation of L4 checksum and allows
for the FW to compute the L4 checksum? Which may negatively impact
performance? (hence disabled by default?)
