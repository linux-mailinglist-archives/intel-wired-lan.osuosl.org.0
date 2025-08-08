Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6A7B1E99A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 15:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 234D060D77;
	Fri,  8 Aug 2025 13:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e0qLODcrCb-c; Fri,  8 Aug 2025 13:53:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF57160C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754661209;
	bh=hBjqDvTloHoWI0gCmLxoIt2JmWZdwrxwDMxe7yhLqok=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jdgfc7Qt+7GSR5dEYeIcNl84v9Ih/RDDWLDMCjqYm3a3ja+EBQPIFpc4shJ8+H9rS
	 j0jQkZde465IuO9uMEcJ9AC8DfR1nwz4Glj/u7GsmljeD7gX9Xg+eN/kbtCBRC8LuZ
	 IceeS2eRKNNQ1WyqMtsnsMJLAP45o3k0i/w4f88Fzxrj7Q018xbip5JoEt+cFF+OmN
	 HkuL3z2HZUnZBdNLD8bM9pU1HJT4sU9jrNfJPMrZQ3DOV5LILF0/MqkYecYiEP0fqu
	 M0DVYFjESlsw9LLAKzkrMON/6icHAPMZHuvF0/28V3eoyqBhpivr1MODtn+VuaKYL4
	 y9+Ak/WVDYrHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF57160C20;
	Fri,  8 Aug 2025 13:53:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D1EC631
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3DAA60BA8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 24HbCRO3k8ze for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E4AD60B3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E4AD60B3A
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E4AD60B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id CCB2F61415;
 Fri,  8 Aug 2025 13:44:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9442AC4CEED;
 Fri,  8 Aug 2025 13:44:32 +0000 (UTC)
Date: Fri, 8 Aug 2025 14:44:30 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250808134430.GC4654@horms.kernel.org>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <e16d5318-3e5c-4a4a-a629-ba221a5f04c5@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e16d5318-3e5c-4a4a-a629-ba221a5f04c5@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754660674;
 bh=L+KQYCSs9EfjIlqJ6ZcI+ycl9sHpBOuiNmn0PhnTgRc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jJqODS9h4AtBE8Cg+jvdW0f5GK9qLNnCgm5CzF8wrLPr/9X1Qk1YvrzVuOPU/YSRQ
 LnejtFyIPxGWuGjg+0XpWRXaDkxVXeWw06AWwsiPZDCJV8bNxXprnP2M7qUpJwWKS+
 iSpjClqfwT0eG3uK5sPdgqrHFexMd/aKBAuwrCgpphvqPE+B0MCWzu/F7C7bPJsl6j
 l+7CE0avhSAFtkDojqzXFXBskKC0Wpjgl1Ki3hpdgIzoJSww85qMB703qogY4SXmYG
 SPkeWuYjQ1OqKcGx4As4YxGPGg6al50dMkSRo2eQQacrTdgU1IX5e7sMqtCPTiyMbP
 K7uOXk+2xps7A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jJqODS9h
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] igb: drop unnecessary
 constant casts to u16
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

On Wed, Jul 23, 2025 at 10:55:03AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> C's integer promotion rules make them ints no matter what.
> 
> Additionally replace IGB_MNG_VLAN_NONE with resulting value
> rather than casting -1 to u16.
> 
> Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

