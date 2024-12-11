Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BC39EC3F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Dec 2024 05:21:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49E4781E11;
	Wed, 11 Dec 2024 04:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qBPz3MDUO2Ip; Wed, 11 Dec 2024 04:21:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C98481E1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733890878;
	bh=VKM3csLSqyfkWMjC55cOtYOpueaKlWzCN9EN3gTL1Hs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dgec3SOPyjw27rvRigoYiQQokhFUAigrceHGzGfQ75WTGXzcFF/o32X9pQnKFKVsS
	 SyvVG+zlwvdXrzHHo8d4do/qwTpSXFFtck1wDuDOUsU7+gL630T8wUGz5UkREGZVYT
	 IrjNPzkj8W0h6wW5LBGjH0Xl+5b1vDplOptAf3DxEmXXfcZkO0LkYhJKpqjW5GN89o
	 BJE+0SBl7Ytxz2nCD8fb78zN511kMhnYrjBWP+cD6RvFtZS+EzZEoIjupARFnSyVos
	 gBpp4DE/8EsiStPmxA5JS5ml0MDs12eGbo+ZWULfxprBNKYbpLzpkbiUUerRTxDuKb
	 kBkXJWiVAAo8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C98481E1A;
	Wed, 11 Dec 2024 04:21:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E7B9FED2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 04:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D46B2400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 04:21:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jyVhKqfw6aLw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Dec 2024 04:21:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6DC9D40CC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DC9D40CC2
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DC9D40CC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Dec 2024 04:21:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7A20DA41E24;
 Wed, 11 Dec 2024 04:19:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E338CC4CED2;
 Wed, 11 Dec 2024 04:21:12 +0000 (UTC)
Date: Tue, 10 Dec 2024 20:21:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Message-ID: <20241210202111.7d3a2dc8@kernel.org>
In-Reply-To: <Z1eZXKe58ncARD2N@LQ3V64L9R2>
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
 <20241210002626.366878-3-ahmed.zaki@intel.com>
 <Z1eZXKe58ncARD2N@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733890873;
 bh=00Xr4iiIPcrxg8sF6uscKsYeAVXQPkoHYFPv+z1hHhQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s8ESym3dEZqHWhAxasFMSDQMWKT8bUdo4BGeqJYrHiYsgHklnE+3cWNZe0vHK14ir
 fdf7+wliWyrkEnp8oPENX+BWfSHQ7cxJicZ/pG/qItyEbRQnbBtEZ1npIdQqqBzxt6
 LennZzmTpI/2/xI5RxFDVsDLp7rpeKG8BQcRoeznLdnf9k7ljrDip9NsmKTbXPb4d2
 CgSq0YFk+NJ5fPrhhiBfyots77Fz7xREzRsfxA5zjCNAZQjDUTSbVYB/Tvz39BSqnU
 JbSRe54n0HnztuJTYFhO0W08cOFyWJv7rIQzYLyuA75Q1Kl1s5qYgqFsRtU6xYFInw
 loK8M2Q8jL9Jg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=s8ESym3d
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next 2/6] net: napi: add CPU
 affinity to napi->config
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

On Mon, 9 Dec 2024 17:29:00 -0800 Joe Damato wrote:
> My understanding when I attempted this was that using generic IRQ
> notifiers breaks ARFS [1], because IRQ notifiers only support a
> single notifier and so drivers with ARFS can't _also_ set their own
> notifiers for that.

Ah, you are so right, I forgot the details and was grepping for
notifier registration :S

> Two ideas were proposed in the thread I mentioned:
>   1. Have multiple notifiers per IRQ so that having a generic core
>      based notifier wouldn't break ARFS.
>   2. Jakub mentioned calling cpu_rmap_update from the core so that a
>      generic solution wouldn't be blocked.
> 
> I don't know anything about option 1, so I looked at option 2.
> 
> At the time when I read the code, it seemed that cpu_rmap_update
> required some state be passed in (struct irq_glue), so in that case,
> the only way to call cpu_rmap_update from the core would be to
> maintain some state about ARFS in the core, too, so that drivers
> which support ARFS won't be broken by this change.
> 
> At that time there was no persistent per-NAPI config, but since
> there is now, there might be a way to solve this.
> 
> Just guessing here, but maybe one way to solve this would be to move
> ARFS into the core by:
>   - Adding a new bit in addition to NAPIF_F_IRQ_AFFINITY... I don't
>     know NAPIF_F_ARFS_AFFINITY or something? so that drivers
>     could express that they support ARFS.
>   - Remove the driver calls to irq_cpu_rmap_add and make sure to
>     pass the new bit in for drivers that support ARFS (in your
>     changeset, I believe that would be at least ice, mlx4, and
>     bnxt... possibly more?).
>   - In the generic core code, if the ARFS bit is set then you pass
>     in the state needed for ARFS to work, otherwise do what the
>     proposed code is doing now.

SG, maybe I'd put the flag(s) in struct net_device, so that we are sure 
the whole device either wants the new behavior or not.

I say flag(s) because idpf probably wants just to opt in for affinity
mask management, without ARFS. So pretty close to Ahmed's existing code.
ARFS support will require another flag to ask for rmap management in
the core as you describe.
