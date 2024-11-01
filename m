Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 717F29B8E26
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2024 10:49:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A7B360B96;
	Fri,  1 Nov 2024 09:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R830yvTyF9Ut; Fri,  1 Nov 2024 09:49:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C586960F24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730454569;
	bh=sjpv7+drlFf6Hl2tlHaZ3w3xbDL3jI8hb6yKab6Z44U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=otacqMCWaU+wADx64zr95pmwv8dKdkOTEIfgb1YPuj3wbKNUyv+HxNC7LNA4ItOTv
	 DGFRWD+MZ5IwvdJj0wEkh5lHLYqhal3zorsKEMaXPzKtz4XXsODOTE1ganttolJ1CF
	 3L6EdthXrgOmfudXtVs7PFycvgT48xUHvzXgVy9AHVllwsLM7opJlTV29vSJ7Ioggc
	 CYpHN5B/f4+GB4ygoyau878wmkrMsEu7iaAf7/1lWtDeK6xV8P7ibeCqChiBH+BDRy
	 lZgl6cGR0GdzmedtYebfPXIgI54h682LohKc6dS9pChmZCPzCZ5dv/O6rPS7nyaMRh
	 c6ZoHF2HoXfvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C586960F24;
	Fri,  1 Nov 2024 09:49:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DF65979
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 09:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E4F6840D9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 09:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YUez3ovLZOuO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 09:49:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B592E840E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B592E840E0
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B592E840E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 09:49:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 09BE3A40D5A;
 Fri,  1 Nov 2024 09:47:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DE89C4CECF;
 Fri,  1 Nov 2024 09:49:22 +0000 (UTC)
Date: Fri, 1 Nov 2024 09:49:20 +0000
From: Simon Horman <horms@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <20241101094920.GA1838431@kernel.org>
References: <20241021223551.508030-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241021223551.508030-1-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730454566;
 bh=UaT2w3WUjeQmmtc7DUzt+bO37zf6ZvCHNpF26QbAeOc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fn+KO3ANmKWxM4eW/WzmbhWh1k41gYf0bsyhD+DC997Xhco1jF2xB6JJghapHU48T
 2W16XoUsMRHPbyCsNdpHDlIrc1PA1MoNsF7YiHDPe0GNRBVMJes9T7wnTSx7McZ40g
 uVCsVj/td21xZVNbIxYhTi8qIONuJMrXYDKr/JohrJsrb9+Zw9q34Li/lNt9QLJYw3
 jlwaoegZQMyTioqltvJ2hu3OlKW1SqdUb5Rui9FUz+E6lzXq6wmt2XqX5ud4PVXOSK
 lX7G9NIiAz4CjU8L5hUmncaIUCWSEDmN3vLZv3q2TyzDl+LqlU3fe/uadPnYt49yOa
 8ZieAeQyf0XGw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Fn+KO3AN
Subject: Re: [Intel-wired-lan] [PATCH intel-next] ice: Add support for
 persistent NAPI config
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

On Mon, Oct 21, 2024 at 10:35:51PM +0000, Joe Damato wrote:
> Use netif_napi_add_config to assign persistent per-NAPI config when
> initializing NAPIs. This preserves NAPI config settings when queue
> counts are adjusted.
> 
> Tested with an E810-2CQDA2 NIC.

...

> Signed-off-by: Joe Damato <jdamato@fastly.com>

Reviewed-by: Simon Horman <horms@kernel.org>

