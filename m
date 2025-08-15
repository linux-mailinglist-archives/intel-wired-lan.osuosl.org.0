Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0904CB28651
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 21:23:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DE7182243;
	Fri, 15 Aug 2025 19:23:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_QcRpjIkyUZ; Fri, 15 Aug 2025 19:23:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CC6982244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755285823;
	bh=QJnIVxwqsmyXZiZ4k0FK/SBSbvmm32uQPQa7PwJSyB8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3ZWYiLyQc0GqWp4/+Ny0udJMCA1dyqtAPgeCFYvgEowYRUZ4Kzt8xwOvM7gfHD+H5
	 aI/JsMqg68oxTdxTTQMsPVjWFuYWrGRHo53i2k6DqK3w/Y7/cXSh4IcLINv4o6IVXv
	 vx+Q0gIcMuu5sgUgT21u1BuBa1uGJDO6pas63/hC/hGmWPQTP8rTDYK1zrB5WwYlqn
	 WCkPOWkZ3I2jaV1/rq+vIw9EH9fSsgWdqdoY9UDZxDuI4ghIlm2//R7h9kEdO58gUB
	 IoVB5VC/zwGidLLrFxL2N+I8Z37InMPBInXBSPJi0WduQUs1Iakdn9iDlChimyB5tr
	 heWw6LwYukRTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CC6982244;
	Fri, 15 Aug 2025 19:23:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B6287223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 19:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B2F9782240
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 19:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JBow6cgPuy3X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 19:23:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 26AC48223E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26AC48223E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 26AC48223E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 19:23:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E298E5C68F1;
 Fri, 15 Aug 2025 19:23:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79A54C4CEEB;
 Fri, 15 Aug 2025 19:23:38 +0000 (UTC)
Date: Fri, 15 Aug 2025 12:23:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tariq Toukan <tariqt@nvidia.com>
Cc: Jiri Pirko <jiri@nvidia.com>, Jiri Pirko <jiri@resnulli.us>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Donald
 Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Brett
 Creeley <brett.creeley@amd.com>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, "Cai Huoqing"
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Sunil Goutham
 <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, Geetha
 sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, hariprasad
 <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, Saeed
 Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Mark Bloch
 <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-rdma@vger.kernel.org>, "Gal Pressman" <gal@nvidia.com>, Dragos
 Tatulea <dtatulea@nvidia.com>, "Shahar Shitrit" <shshitrit@nvidia.com>
Message-ID: <20250815122337.4aa50105@kernel.org>
In-Reply-To: <1755111349-416632-4-git-send-email-tariqt@nvidia.com>
References: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
 <1755111349-416632-4-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755285819;
 bh=JtacZUTLhICvO5yuLBzEN+3vCLB7bp1fK7RdD5/lksY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aSDhjSm+hjhcyqFW5Zn3ElR2eNNM57vXdtPe4U9uZ9swYyEoVgIDsMcD9aic3XUuO
 EEUqvo2T55OYe0w2a3QPWiZ05emD7U6s/w2WlRx/ipXbj7XDD1wTpCBmq3ldbLHv3z
 ZtnCNvXdYX4QA2n2N69ma08fi+/WHPOX/UdM/bJhRFVNZfMycVQTQ9rm1g8ZEWTc/G
 ZI8pYAFimYwzuFvi8MJi3SVYHQb8c1+2sad2ea3KkROM0AvExgNxTtaGNZZaYUctWH
 7B4lSeBVmUW3pNt3hHO5SbAPqj8If/L5yPPhlgTjz7+A+9TiTviteU+Qnh1X5Clpup
 +xXtsvKhm85hg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aSDhjSm+
Subject: Re: [Intel-wired-lan] [PATCH net-next V3 3/5] devlink: Introduce
 error burst period for health reporter
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

On Wed, 13 Aug 2025 21:55:47 +0300 Tariq Toukan wrote:
> + * @default_error_burst_period: default time (in msec) for
> + *				error recoveries before
> + *				starting the grace period

FWIW you don't have to indent the continuation lines this much,
one tab is enough to make it clear that it's a continuation.

> +static bool
> +devlink_health_reporter_burst_period_active(struct devlink_health_reporter *reporter)

Not sure what it means for a period to be active.

devlink_health_reporter_in_burst()
