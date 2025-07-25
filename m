Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CBAB11503
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 02:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27D9541B4E;
	Fri, 25 Jul 2025 00:10:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Em1lPrYjAGnz; Fri, 25 Jul 2025 00:10:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 787A441B52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753402216;
	bh=kCbcStO2purfk6GOxQKamWRgrHeVI3cgFRcPfdlpU1E=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bItIX7I+9/2CRtjGrXvN8h8Mu5HIj4JTm5Ji+ZJcBau7kRgKvPOUm5Xh8kMLViUfi
	 zSGkGX7VhRXdFBUyDhXkxmX1NOUKmXgqfsn+3h5OiUirsySSTvxQIH5mFv2Qmlx7oy
	 GAwlZcOm0SHIN37cb9OW5xz/Pnp+De93oK5smZunWIz+MtjVB56E6emA4Vru44TqHk
	 8n/aZ6CqCYg/sdVpzBe8baGe46mDCftEETux2ggTvmu+LdTkswYlQRdwUR/KJHNFO4
	 NnXNTsSvcNz61oTGsRlDEMuPh3JUd8lpNDQNOEXVmJe/W7lFloRa7js046iMsd23q9
	 wuYfNFBxPQ2Lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 787A441B52;
	Fri, 25 Jul 2025 00:10:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 197D9B83
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 00:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F343381BBD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 00:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dbGl59VdqFkI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 00:10:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4EAB981B71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EAB981B71
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4EAB981B71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 00:10:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AAF8145078;
 Fri, 25 Jul 2025 00:10:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C794C4CEED;
 Fri, 25 Jul 2025 00:10:12 +0000 (UTC)
Date: Thu, 24 Jul 2025 17:10:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tariq Toukan <ttoukan.linux@gmail.com>
Cc: Tariq Toukan <tariqt@nvidia.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>, Gal
 Pressman <gal@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Shahar
 Shitrit <shshitrit@nvidia.com>, Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Brett Creeley <brett.creeley@amd.com>,
 Michael Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Cai Huoqing <cai.huoqing@linux.dev>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>, Linu
 Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, Jerin
 Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, Subbaraya
 Sundeep <sbhatta@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>, Mark
 Bloch <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org
Message-ID: <20250724171011.2e8ebca4@kernel.org>
In-Reply-To: <6892bb46-e2eb-4373-9ac0-6c43eca78b8e@gmail.com>
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <20250718174737.1d1177cd@kernel.org>
 <6892bb46-e2eb-4373-9ac0-6c43eca78b8e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753402213;
 bh=Efr02ucghVvgSDn8C24njX+4voOe5UznirPQXWvnDzk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Yubfi/yxAM3CCWJCHIwvB4ZciDHFX+FvkC+gpWLrp0y7BMH/0tT5k++48ChpPTqJ/
 4iN8qXIyppWRWsOrgDLLRISLbDrH4rwbgeHMMp1OFsQn2OkgMsGylgayJN+0Y/N4Bw
 jBWU49qtKLt2bZTr5gn7Lwf61N8UE8J373uX9cEq2aJPDwe8aE09P9tNXb0UVT/zYZ
 13sm94F8Qip51ieaK7g8Amupe9wXYKFUE47ONq6/2AOitnsMsHhjjLp0bjaOiy+5kM
 A4vejS5beOwQIx32BiEDFYqtF1qSl5pA3exUk6nNxCh5RTbazzASBLu0g9ZHNISD2y
 XjrmJtxf3recQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Yubfi/yx
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] Expose grace period
 delay for devlink health reporter
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

On Thu, 24 Jul 2025 13:46:08 +0300 Tariq Toukan wrote:
> Design alternatives considered:
>=20
> 1. Recover all queues upon any error:
>     A brute-force approach that recovers all queues on any error.
>     While simple, it is overly aggressive and disrupts unaffected queues
>     unnecessarily. Also, because this is handled entirely within the
>     driver, it leads to a driver-specific implementation rather than a
>     generic one.
>=20
> 2. Per-queue reporter:
>     This design would isolate recovery handling per SQ or RQ, effectively
>     removing interdependencies between queues. While conceptually clean,
>     it introduces significant scalability challenges as the number of
>     queues grows, as well as synchronization challenges across multiple
>     reporters.
>=20
> 3. Error aggregation with delayed handling:
>     Errors arriving during the grace period are saved and processed after
>     it ends. While addressing the issue of related errors whose recovery
>     is aborted as grace period started, this adds complexity due to
>     synchronization needs and contradicts the assumption that no errors
>     should occur during a healthy system=E2=80=99s grace period. Also, th=
is
>     breaks the important role of grace period in preventing an infinite
>     loop of immediate error detection following recovery. In such cases
>     we want to stop.
>=20
> 4. Allowing a fixed burst of errors before starting grace period:
>     Allows a set number of recoveries before the grace period begins.
>     However, it also requires limiting the error reporting window.
>     To keep the design simple, the burst threshold becomes redundant.

We're talking about burst on order of 100s, right? The implementation
is quite simple, store an array the size of burst in which you can
save recovery timestamps (in a circular fashion). On error, count
how many entries are in the past N msecs.

It's a clear generalization of current scheme which can be thought of
as having an array of size 1 (only one most recent recovery time is
saved).

> The grace period delay design was chosen for its simplicity and
> precision in addressing the problem at hand. It effectively captures
> the temporal correlation of related errors and aligns with the original
> intent of the grace period as a stabilization window where further
> errors are unexpected, and if they do occur, they indicate an abnormal
> system state.

Admittedly part of what I find extremely confusing when thinking about
this API is that the period when recovery is **not** allowed is called
"grace period". Now we add something called "grace period delay" in
some places in the code referred to as "reporter_delay"..

It may be more palatable if we named the first period "error burst
period" and, well, the later I suppose it's too late to rename..
