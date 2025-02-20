Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FFAA3DD7A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 15:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F98C40B50;
	Thu, 20 Feb 2025 14:58:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 62JfYwXZxELI; Thu, 20 Feb 2025 14:58:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F08D2409D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740063493;
	bh=AkzniV2/enWOTD8nXtPujO3b++uJkzhfQwPNQeDbsdU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tEB71PKk2xxjoEfHN7teMpoqsGLgoFwaf4fWeGK2blL8JaMsJwjT3SdExDIrss32l
	 v3tNo0tvu8738Nwq0KsF5Utouheh8mPQT+SshsoOatwA1yoe5EexKo3ht2KVnfiYVv
	 j8ArRMB/lYW5XTer5BJ4HMSDaL5Se09tGrmre0A12o3jdssdweKG1R8ELfWC0giQXJ
	 enXlq9aFVpWPje4H5ojAoxon9++ltEU7o+VEXa4KISLXa/j0tjupCTbSE6IRMCgBe/
	 gAqnIMnMG9oZk9MdEDyG/lZWnE48QWJkXDB3vQm1vBhnsAlUHdhsMpptnaZhaAs3UM
	 PyaIKQFCNzjeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F08D2409D4;
	Thu, 20 Feb 2025 14:58:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1AD0D92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 962D0822FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:58:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GLfniR2V_b62 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 14:58:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0C2C782075
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C2C782075
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C2C782075
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:58:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6D95F5C5DC5;
 Thu, 20 Feb 2025 14:57:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4B7EC4CED1;
 Thu, 20 Feb 2025 14:58:05 +0000 (UTC)
Date: Thu, 20 Feb 2025 14:58:03 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Message-ID: <20250220145803.GA1615191@kernel.org>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-4-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214085215.2846063-4-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740063488;
 bh=HosbIZJG11434mFm61nco4av3Gmcb9YQ2Or4wPIczj4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RpZTZErMOwiWAt1X/W/AtusEfmQuTQCI6k4VstmWSOHGHJNu8D8yFtKhs6bIMGBiC
 JGnlkrBrRVADvXWOQZheOrMDTgL6CINCKaU3WHWj6nERCQdXzCvYDxtdnVrttuZnkF
 Kt1YvwQqBzLvIWeP2kAquxURR4oMq2Ubryq3FgzMJCuNNoO5NoDhT25ecbgYH9w2MF
 irbwQPft0muThuKsfzhJxFLPG02l8P494DXWGzaoEVfdqJV3IXt9vhJ+/EQ+KYPUVi
 e+TlRyEd9Po4QogWPp+TqIhRkl6MyLDflxweDp0WDAyvJwqGdLmNvjgLT2mHjx2Owa
 pKd48hd60Ivsg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RpZTZErM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/6] ice: receive LLDP on
 trusted VFs
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

On Fri, Feb 14, 2025 at 09:50:37AM +0100, Larysa Zaremba wrote:
> From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> 
> When a trusted VF tries to configure an LLDP multicast address, configure a
> rule that would mirror the traffic to this VF, untrusted VFs are not
> allowed to receive LLDP at all, so the request to add LLDP MAC address will
> always fail for them.
> 
> Add a forwarding LLDP filter to a trusted VF when it tries to add an LLDP
> multicast MAC address. The MAC address has to be added after enabling
> trust (through restarting the LLDP service).
> 
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

