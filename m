Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BAAC2E3A3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 23:14:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60A2340743;
	Mon,  3 Nov 2025 22:14:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wsByKS2dNma4; Mon,  3 Nov 2025 22:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE12240741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762208042;
	bh=m+sksiK1QByNDu7+QUZIfKikNylv3R9Uz8gkQHxwMVY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ly/bEb9YCsWPq39yz9I1GgYmK6ZMleBw1OxPb6CchJvmETjv0XVYJOMWwrvEggNeI
	 v8GDbt0J9RaochaUCoNF5kI4CIk4zbGmOKmJrl0JurxFV5n10NhBxn61Tus9p/dehh
	 erBjLkWpSj0Fdl/2gRdMQq6hYXp6vqyV8eKAsnkCRbQXQx/zZpis4EEUh6xnKPfuvi
	 PqxHI6zPfB/Jc/PfSQTo/L3Wpi8U6Y4RW+6snyZ9s5laqBT5vXeptHlEMM3zrc/Y8V
	 LpE/uV44L1uan06NXNGhvlIk47Myez7k4wKAXV0NDILK5yjVEnIWq5xrZJkm6BM8bU
	 phc4M/ryHEBGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE12240741;
	Mon,  3 Nov 2025 22:14:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CDAD222
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 22:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E673340731
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 22:14:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XJEZpTCkVmTm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 22:14:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 449B74071D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 449B74071D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 449B74071D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 22:14:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6AC38402C3;
 Mon,  3 Nov 2025 22:13:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24CA6C4CEE7;
 Mon,  3 Nov 2025 22:13:57 +0000 (UTC)
Date: Mon, 3 Nov 2025 14:13:56 -0800
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
Message-ID: <20251103141356.3470701b@kernel.org>
In-Reply-To: <20251103194554.3203178-2-daniel.zahka@gmail.com>
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-2-daniel.zahka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762208039;
 bh=G5G/nJ6BwUDbjhos8smIO/3KjLQpgzD5ntWtzL13rts=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VTLqZ0hL1/6PHxQ6NOhzlLM6gCmDmZLOEBjsopkNlCfT1UDEUzEpPJ9dRNKIC0lpk
 5IP+NEjFrjtzZVi9MxoejBWIBOkHCXcmGUgODEYUdCpVLHPVh0cAJSOTWB1fhrl1iF
 z5hTda/0Y1Q5VJjkd598Vr+sNABtNOoGLJsImaT4TxCqGru5AW2vpM+yUdVgTQvw9e
 /xQrqh0iCogqr918cBXp+vPSsanb+KqgUvy7E+gfIndbbpFuHJomc+J7CSVORGK8ey
 IER03KXPAHJ9fglF87N61IoFLE7kR2HkjQvV097joGTXbveYEVNBBe/8GgHu9hoePF
 1hperBfe4REqA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VTLqZ0hL
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] devlink: pass extack
 through to devlink_param::get()
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

On Mon,  3 Nov 2025 11:45:52 -0800 Daniel Zahka wrote:
> Allow devlink_param::get() handlers to report error messages via
> extack. This function is called in a few different contexts, but not
> all of them will have an valid extack to use.
> 
> When devlink_param::get() is called from param_get_doit or
> param_get_dumpit contexts, pass the extack through so that drivers can
> report errors when retrieving param values. devlink_param::get() is
> called from the context of devlink_param_notify(), pass NULL in for
> the extack.

Warning: drivers/net/ethernet/intel/ice/devlink/devlink.c:618 function parameter 'extack' not described in 'ice_devlink_tx_sched_layers_get'
Warning: drivers/net/ethernet/intel/ice/devlink/devlink.c:1533 function parameter 'extack' not described in 'ice_devlink_local_fwd_get'
-- 
pw-bot: cr
