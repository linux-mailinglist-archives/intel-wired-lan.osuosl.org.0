Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A8B9F9B3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 21:51:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75A6260673;
	Fri, 20 Dec 2024 20:51:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U-9t41Q3jPNJ; Fri, 20 Dec 2024 20:51:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF89660689
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734727875;
	bh=YmlbhCcXXOVQM+3JoE6sYiUX9CfkZ3f1ddPlaUue1NA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qc01HJT8225ufltN/F9T6ywaz0cEXv9Kp0L4tHZ6x2lquYk/0A7jICMxYlS/EBP3s
	 zjz8F+/BRhFiqxf89Q025jhxybP0G/RHx0T4QLG0QQ4WrA9dTY+BTcNR03ZfyBqY5m
	 k6xhy9wdhikLdsGwbuP04rgUKm+gtGlS7yS91crhxyhLgXD4UAUpmCwGJWb0IK0mIA
	 laG5lIflYf56V59D2ibEA+w+RFIvDcXurxoNBYGk5jVerXU1yyw0nfEkyzXSLSHo3X
	 1mTe8FunkBysnYyr8vDguXb40pvvyRSOaGiqh9otF0g42n2lQN6K3qdI2SE9VADq9X
	 R9ANf9DksyGPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF89660689;
	Fri, 20 Dec 2024 20:51:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D1513920
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 20:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB499410DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 20:51:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P02zjxpBq67l for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 20:51:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E7F8D412CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7F8D412CA
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7F8D412CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 20:51:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B69CD5C6A23;
 Fri, 20 Dec 2024 20:50:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3C29C4CECD;
 Fri, 20 Dec 2024 20:51:10 +0000 (UTC)
Date: Fri, 20 Dec 2024 12:51:10 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <shayd@nvidia.com>, <akpm@linux-foundation.org>
Message-ID: <20241220125110.4f8d8e6b@kernel.org>
In-Reply-To: <df42a234-f289-4be7-a698-54b645b0fd81@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-5-ahmed.zaki@intel.com>
 <20241219194237.31822cba@kernel.org>
 <cf836232-ef2b-40c8-b9e5-4f0dffdcc839@intel.com>
 <20241220092356.69c9aa1e@kernel.org>
 <35441a41-d543-4e7b-b0dc-537062d32c9c@intel.com>
 <20241220113711.5b09140b@kernel.org>
 <df42a234-f289-4be7-a698-54b645b0fd81@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734727871;
 bh=PsiINN6x+FJAs3KH/LvlP/yQ3ibuFQXygFtnAYzvISs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hOCSuIrnj/tN6MjeBHmXeTkQvlYWe1HfX3X20KOF/efdLnbQZk2utxHEpkJDosl68
 np1Kx0Yi0RrjgxE56JEDql1TsxvcLp26mTGVDGlsdaIN0wHdyC5zt3gCuZoYyKuYBi
 N8XRYS5XAHCzcJK/gGOr1sOQVfhb3faRFDB1g1fWWaTi4WUK13Eb9elpMjD7N9QGaE
 IZqAUEcpGwbR+5+4NKclEFljAktG09QNc63BiXi2HiVsF+SCpUgRfPdbPskAXkgmP3
 PvT84SM2+IefalLEYi3ZlQBDTew3u9yRcXX7QGFIV4emLPiVg6bV9JIHSnuuc46V3n
 BjRvNWDp81c0Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hOCSuIrn
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
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

On Fri, 20 Dec 2024 13:14:48 -0700 Ahmed Zaki wrote:
> > Then you can probably register a single unified handler, and inside
> > that handler check if the device wanted to have rmap or just affinity?  
> 
> This is what is in this patch already, all drivers following new 
> approach will have netif_irq_cpu_rmap_notify() as their IRQ notifier.
> 
> IIUC, your goal is to have the notifier inside napi, not irq_glue. For 
> this, we'll have to have our own version of irq_cpu_rmap_add() (for the 
> above reason).
> 
> sounds OK?

Yes.
