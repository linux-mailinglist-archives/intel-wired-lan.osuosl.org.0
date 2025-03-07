Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CCBA55CC3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 02:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 497A38115B;
	Fri,  7 Mar 2025 01:12:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zAM78z59Msmy; Fri,  7 Mar 2025 01:12:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEDAA81247
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741309933;
	bh=5as/oUsfQDFNY9drlpvLyiS9Fg8LsD2uUlqSDPJeheU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7q9+aw4cWpq4tTgrlJC4wZNqP4diZ9moUxcTlFnBHQ3MW2PkyNbBtaGHP9t0jFtzt
	 8I0lQcPA8eIyBpmPTILjmK9+yr61zok0is4lr1nJmPtJKNWqqjKMO3K/jBLUSU7PWq
	 Up9FPO4gix6pSMaxK2NY/NCj2MYTyaJeE9gFEJOhl44JGk5nxsnDY2lOOWxPaW9Dg4
	 yLiHwxHng5Y3LymuATeybBiAUIYPj5uED7pamNtA+jgNJ+a1WjxXxD1LSr8nobV3P9
	 Lh8twhjrJO3X6ExyXp48LFSI3mjhTGCsS6e4KsdA/73PuFZYZvXGomqHgOfKBJhJ5V
	 UGCdx3qpTpSPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEDAA81247;
	Fri,  7 Mar 2025 01:12:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5284071F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 01:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36BEE412C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 01:12:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pwMu0Yuq97M2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 01:12:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7651B412FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7651B412FF
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7651B412FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 01:12:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8A311A4538C;
 Fri,  7 Mar 2025 01:06:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 030B9C4CEE0;
 Fri,  7 Mar 2025 01:12:08 +0000 (UTC)
Date: Thu, 6 Mar 2025 17:12:08 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250306171208.3162eb97@kernel.org>
In-Reply-To: <20250305162132.1106080-12-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-12-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741309929;
 bh=iAkkgLRwGib7vQ+FD30A942Pd09V5NCtDsEeMhpAUqM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=M45pXKE9zkU9gssiyoTXRtcCF8zxbGnEPxAzZgZxm2OqPKSreW0X3H5MGGZLMMfHK
 OStf429IO4RVa+Qkqg54dpGCfKVeYYobcgRrckZsKfbuASUxX0OTzSOfL9jEDJ4djg
 ndQWb8LBx9QltWQZlFB6VM83sQmBC163rVLR7DIGuhcHqf2LE4F8IIU3C/DCIUWOhT
 KqMzL1REFctMOmR7oJ/4JyRqaH0bjzCgFsDFm4YrIhhTL2G9TYZtz9utBUorEfddfw
 O9D16dCJHua+bv9bvT0tWtvLVHJ/FqnHTwip6ANCaUK47B8nTiiqEI4OFUTddfWPYb
 tlIA+06s+XYMg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=M45pXKE9
Subject: Re: [Intel-wired-lan] [PATCH net-next 11/16] idpf: prepare
 structures to support XDP
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

On Wed,  5 Mar 2025 17:21:27 +0100 Alexander Lobakin wrote:
> +/**
> + * idpf_xdp_is_prog_ena - check if there is an XDP program on adapter
> + * @vport: vport to check
> + */
> +static inline bool idpf_xdp_is_prog_ena(const struct idpf_vport *vport)
> +{
> +	return vport->adapter && vport->xdp_prog;
> +}

drivers/net/ethernet/intel/idpf/idpf.h:624: warning: No description found for return value of 'idpf_xdp_is_prog_ena'

The documentation doesn't add much info, just remove it ?
-- 
pw-bot: cr
