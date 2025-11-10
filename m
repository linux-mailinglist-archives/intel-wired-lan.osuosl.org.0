Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44769C49AE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 00:01:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA5AB60AEA;
	Mon, 10 Nov 2025 23:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fCu7qC4Fke-h; Mon, 10 Nov 2025 23:01:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B5DF60AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762815699;
	bh=r1tN2gxr595XAwJ0SPkwcrUmxMxwbMA4icSMwYnrAy0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6UiBK/Bqx5w8I5BLckG9WaBMflt84Nw0jpuv/MCIPVyYDX8JJYDI1wA6BJrmLNS1E
	 K56+JkgR/oQbsNb08w62zhKI5xctdQXQlJ8W5CCzVpQOoEO8l4YWW4DiSLOvwePwTa
	 a/hEA8nE4QRSmUp8SbQQUBxaZwMuqAAb8d/tn6BM3fKVYyEyrF+vs2bkp4pqYmdB09
	 pnILQ0UzziyY/XquSs6ehAZCOOx8wp7gyZtnf3LlFsTAQ9f20anqw+b4t7AP9iz38I
	 /zsQWosh1j9FI+QvjgEZe/O4bb99iL5a6or13bNGbwGI8E3fgFBiZa6m67nMRPhRb/
	 vVyMDt4achogQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B5DF60AE8;
	Mon, 10 Nov 2025 23:01:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C8A50FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A941660AEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qN5fmN9Uuss3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 23:01:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 175EE60ADB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 175EE60ADB
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 175EE60ADB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 23:01:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A093C444C9;
 Mon, 10 Nov 2025 23:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FF72C113D0;
 Mon, 10 Nov 2025 23:01:34 +0000 (UTC)
Date: Mon, 10 Nov 2025 15:01:33 -0800
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
Message-ID: <20251110150133.04a2e905@kernel.org>
In-Reply-To: <aQ7f1T1ZFUKRLQRh@x130>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <aQ7f1T1ZFUKRLQRh@x130>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762815696;
 bh=pw8l6QAhWfbgalj/rdjn7/vFNJjdaYWZBrq9g5kSPg4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S8HLZtN4P9lQykfRX66OjCW5XNx3EB4nqyUYkr1K6qVFAiH/1B2WuyT6Xhr1zrk3/
 ExH2jrpU7zVP87t7kjXI3Kt7IahNaP4FHi9dEbWmkOfhcNkjbdFjYkvn4BLSd1EO/T
 mW7RS3pOB4sk39x+S77N8ZE2JAcYlWzhiXk3H/uSO91rQ9fRt5JYiPOs+MVIHezx3p
 x9hl9uOQ1E29htlhgUjiKxDmue8SYA7DhtwxpT5AFCPuGOlVR6hlAxRLWDHkZVinqY
 BGjV1lxESgN7GVwIwfb+L72Fky5jmzzbLAUnbIGEkRxFXZVmRVflMaGWkr0kgqrKoi
 I+5wpEmr7hZzw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=S8HLZtN4
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

On Fri, 7 Nov 2025 22:14:45 -0800 Saeed Mahameed wrote:
> >+	err = mlx5_nv_param_read_sw_accelerate_conf(dev, mnvda, sizeof(mnvda));
> >+	if (err) {
> >+		NL_SET_ERR_MSG_MOD(extack,
> >+				   "Failed to read sw_accelerate_conf mnvda reg");  
> 
> Plug in the err, NL_SET_ERR_MSG_FMT_MOD(.., .., err);
> other locations as well.

Incorrect. extack should basically be passed to perror()
IOW user space will add strerror(errno) after, anyway.
Adding the errno inside the string is pointless and ugly.
