Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3DDB1157D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 03:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ACBF40D47;
	Fri, 25 Jul 2025 01:01:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3k242j-RCWKl; Fri, 25 Jul 2025 01:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3589240B37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753405295;
	bh=CeVZUCG6jrlYwSiNDGcwVNnWTPFQhnRefLPWlZvPNRY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ScHnqNhknIYkDjn8h+gZ1E881Z5qi/CeKWaw/771DE6m5eyFzaAPgPtC2jJUxKpj0
	 rozAvNxJ8t9pXVvCrzye4gh8YnjFzpmUBUqP3xY9J4uoC4Ekfaa0dbxgYi1WSj7IO0
	 C9wddjh6QHwWg/sC3k5xmRNSQM8vLUKscBxBc9Ld9B/z/C5NigDbqg05BpTMHjpLUx
	 Vz9JQZqR51X4RVljsBQeP1wrcTG5KUCInJsynfJ1fxVpFo8O3MVHUsGfl3aD6g9q4R
	 JotaQfefalk+NNjnLlsGxCsiEh7fewtK6LtkhPnmG2uYeSKhTUKtAsasg+6HoBqXQt
	 cv6srLNV2flTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3589240B37;
	Fri, 25 Jul 2025 01:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B8775909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 01:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5A264079C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 01:01:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LuJRlYzfYsZo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 01:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC80B4041C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC80B4041C
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC80B4041C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 01:01:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 55E48A56274;
 Fri, 25 Jul 2025 01:01:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E0ECC4CEED;
 Fri, 25 Jul 2025 01:01:29 +0000 (UTC)
Date: Thu, 24 Jul 2025 18:01:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tariq Toukan <tariqt@nvidia.com>
Cc: Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Jiri Pirko <jiri@nvidia.com>, Jiri Pirko
 <jiri@resnulli.us>, Donald Hunter <donald.hunter@gmail.com>, Jonathan
 Corbet <corbet@lwn.net>, Brett Creeley <brett.creeley@amd.com>, Michael
 Chan <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 "Cai Huoqing" <cai.huoqing@linux.dev>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>, Linu
 Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, Jerin
 Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, Subbaraya
 Sundeep <sbhatta@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>, Ido Schimmel
 <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>, Manish Chopra
 <manishc@marvell.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-rdma@vger.kernel.org>, "Shahar
 Shitrit" <shshitrit@nvidia.com>, Gal Pressman <gal@nvidia.com>
Message-ID: <20250724180128.338977e3@kernel.org>
In-Reply-To: <1753390134-345154-1-git-send-email-tariqt@nvidia.com>
References: <1753390134-345154-1-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753405291;
 bh=2xm7u3ygcZYBzCZXGoS/pCUYoBjZBFKnG8HwfR0nmZA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S//hzPtkrEJWtjCpMVveiikuo8YGKwG6HXKQsFWNzKhUo1FqN3Qha5XSwann5Qfh0
 8qgq16uXtPh7baKfgU3rbq6tF4hAGNaNnQHvApWdE2oqiRU/Rl2yRN7OTZgRC+LXxn
 95gkYGtHVCApuf2h0QczyVlYs3RTMESoE1yX5KIsoEK67EeJoHbMmVPZbujbf+67Ma
 6pffUAXSOuY4fZWPPtXjlFUUir8R4XmbVwy2pJtTWzTWPWjBRaPHvAY8PNNw9KFuJC
 Y7KQ6PuuG/byFbltcIqK/g9BJnpqLoyUYm2flutmNIcZ6+ldBIsg0Y2tKUUqeS9BkW
 8WWl+mvi9bumg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=S//hzPtk
Subject: Re: [Intel-wired-lan] [PATCH net-next V2 0/5] Expose grace period
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

On Thu, 24 Jul 2025 23:48:49 +0300 Tariq Toukan wrote:
> This series by Shahar implements graceful period delay in devlink health
> reporter, and use it in mlx5e driver.

You waited a week to get back to me with the reply to my comments on v1:
https://lore.kernel.org/all/6892bb46-e2eb-4373-9ac0-6c43eca78b8e@gmail.com/
and 10h later, before I had a chance to reply - you submit a v2. 
Not very demure.
