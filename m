Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06152CA3918
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 13:13:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECD3C407A6;
	Thu,  4 Dec 2025 12:13:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hM-il8IcpDo7; Thu,  4 Dec 2025 12:13:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64ECD407A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764850400;
	bh=8PhKmUb0KY2Az7phOGasKG2VAdTvG3/Edj7Im9P6Y6s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yPKr1J/wiImzVorGIRPH7cunP5eBPf3Me7/Gsq/riaIhRon2CG9+whXD471xwU4+F
	 Y6WOUm8Q7HC4mh/3wVE4UPDOrkWMYJZHD1VlBnWz03+FcQc2YqLKp9Yd6JBzPkk2e7
	 lEw0btvBo1Hf6ntF28VyqXENe0BRbwkKKu02gKjkoglinkWNSH8rP82XL+mZeOX0HL
	 Kw83WLas0rZtaHa4UPO16c6Q2xYoEXbaLNnGmXiKoKp6uRFfJewvIU0c0i0HMEnJtX
	 4wmpXYC8sfmq6M0Te7CEZVR8N+HkO20hty69VJgKN+ATUe2cGA+YVd8koRhs92dGhy
	 UF9W7DVm5ysHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64ECD407A3;
	Thu,  4 Dec 2025 12:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4296AE7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 12:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33D4784663
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 12:13:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PHornVsImDL1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 12:13:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9415284662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9415284662
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9415284662
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 12:13:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AB20C4346D;
 Thu,  4 Dec 2025 12:13:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DF39C4CEFB;
 Thu,  4 Dec 2025 12:13:15 +0000 (UTC)
Date: Thu, 4 Dec 2025 12:13:13 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aTF62QTI8CsfxF8g@horms.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-1-6e8b0cea75cc@intel.com>
 <aSWB3gsh4KpDZae9@horms.kernel.org>
 <16579efc-97b0-4a0a-b70c-7362904ddfee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16579efc-97b0-4a0a-b70c-7362904ddfee@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764850397;
 bh=8PhKmUb0KY2Az7phOGasKG2VAdTvG3/Edj7Im9P6Y6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fertJK3v8tyXoqlw8K8f0wFchzmzGwwzXG817NbPk4e/CKrvv35bPaPX/G4Rb7+zn
 Cpjam6tPIp+E417rAA9LkZ+K/AdJkKE5VCAXovOyo/GXz4LZgBXV8g7bc11tPzRjep
 12V2r4GKzVumJ79Ais4HSmvJhrdbbr3c1lmJuKviA6I/QQzBy3RRhz6T1wKzDAa920
 kENWcf8w2pK2Fw8wgSQHJ98/LZZ0TR8u1La/VvKDAp2xFkMqw3rypYbW4kD0et1FhN
 78AlcQeXCWafCnSUS24U4iFX/ehmtB8bRzXmXmucz0Xw/c6M73I1+9R1wJJMb7Uf25
 oFmegPEleSqHw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fertJK3v
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/6] ice: initialize
 ring_stats->syncp
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

On Wed, Dec 03, 2025 at 02:23:06PM -0800, Jacob Keller wrote:

...

> Tony is going to help work with me to separate this lone patch from the
> series and prepare it for submission through net separate from the rest
> of the series. Unless there's other review that requires it, I likely
> won't post a v5 to Intel Wired LAN, but wanted to confirm that we'll
> submit this fix through net.

Ack. No objections from my side.


