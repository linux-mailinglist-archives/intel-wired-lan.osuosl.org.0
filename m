Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB030D1667F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 04:09:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E39B0412C2;
	Tue, 13 Jan 2026 03:09:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CqzP2dNgsGiN; Tue, 13 Jan 2026 03:09:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24AFF412CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768273742;
	bh=FIFEbodwzQLUxMX4W0oFQA80yOHFLrvq8u3ausPe5bU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xngexq98+jDO9v8GAsdyqAAHWFqtauE0YvgnxcMair9SpiSDzWIjBWoRIJAG0TO9J
	 U3c/km6OfoQkdA0CmuW/6JuzQoHY61u8vZrEzvMr9dHec/PnsltLAlZJyl4JBOALvD
	 t0TICCIBuWzDxmV5bpOD71Dk8ID7QprSk4y5ACRiPt66FAi3y5UFSOpshjGr5ReSaX
	 l0l/EkFejNZL3vsGy6f9oUajycIinrRmSLznu9hkr2md1EJcw6Klr2LMgH/hEFGMCn
	 vRQtxRcofPmQW2EGNAipbRr8YGfnvg9ebXZdOHW+1y0geSEQaOFhBGyH3L/w6kgLJP
	 NOAkCcBWd+cRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24AFF412CA;
	Tue, 13 Jan 2026 03:09:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C50218D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 03:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D49184243
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 03:09:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MIYNne9qLZLU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 03:08:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 43F168422B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43F168422B
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43F168422B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 03:08:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 718A64328A;
 Tue, 13 Jan 2026 03:08:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40EF2C116D0;
 Tue, 13 Jan 2026 03:08:57 +0000 (UTC)
Date: Mon, 12 Jan 2026 19:08:56 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jakub Sitnicki <jakub@cloudflare.com>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, Michael Chan <michael.chan@broadcom.com>, Pavan
 Chebbi <pavan.chebbi@broadcom.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Mark Bloch
 <mbloch@nvidia.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 kernel-team@cloudflare.com
Message-ID: <20260112190856.3ff91f8d@kernel.org>
In-Reply-To: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1768273738;
 bh=5xE/UzPxx8Afb98pxY1v4ktqur7bu8ogwAB86SInQLY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TxCxXi1YYxnJS0sw3EBgIsVaZR29gHP1MwekE7jvJ7HN9K66f3ba7l45ZqRcdA4uf
 nuDNomQ8sQtAOoCE2XaXl2oNobHXeldazE0BSB7OPo16sSaF6+gh+d+3na5Oaq6oLO
 +lNZWxelFszTDqaj2FTYJ9qL8I4dN/0VSFpCXMgDETBmJequQVEQA0lO2kXvpvp2fH
 neG7Lf84hS1pPM0GbkHOpvFjmkCeniqNDr94VipaKGmg5nEwR7Ec1Wp3mH+RsqzP0E
 0tUFv8j3TPBbUaoqIZDcO4V0p3YIPFLWreWrRrHIwGWWgfRVN2RrsoBdaRQQUvsz1m
 azzkhf9CVTgkA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TxCxXi1Y
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Call skb_metadata_set
 when skb->data points past metadata
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

On Sat, 10 Jan 2026 22:05:14 +0100 Jakub Sitnicki wrote:
> This series is split out of [1] following discussion with Jakub.
> 
> To copy XDP metadata into an skb extension when skb_metadata_set() is
> called, we need to locate the metadata contents.

"When skb_metadata_set() is called"? I think that may cause perf
regressions unless we merge major optimizations at the same time?
Should we defer touching the drivers until we have a PoC and some
idea whether allocating the extension right away is manageable or 
we are better off doing it via a kfunc in TC (after GRO)?
To be clear putting the metadata in an extension right away would
indeed be much cleaner, just not sure how much of the perf hit we 
can optimize away..
