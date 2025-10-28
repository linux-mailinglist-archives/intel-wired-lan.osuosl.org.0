Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED6EC16670
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 19:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D833560784;
	Tue, 28 Oct 2025 18:12:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I9HSIj981Jgw; Tue, 28 Oct 2025 18:12:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D9CE6076B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761675156;
	bh=xAQbiDl8M+olikuZJEWXJVy0dCQj0SAGkJb8MD5kQtY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CuqVa6WZGwocV2WzMmnmVdRbpSkFnRvf16RdifCw9mX3i1ldwF8VFrxOVsKlIZHAP
	 NnvXtu4AAluUZVrSdDnLTBT+TfSwDK13VnjquU69wVU4sTjJ8JrU92ZPyrbUZSZi85
	 Tb2iIvthHQ90byLmsVjuIVrcGGuhiE/3NvWW0o3fNC7H5q+aOHI1HSPkKfJByRilsi
	 naXLE12R9jKzMUFVFzYU1rfjVvtbWm7wJ5Uh9JMigLFC0yTkp/LK9mrxMhr923Kovy
	 S6Ft+hmY2JBxVB5qCtCAP73npMOTtWBJPTCUWJECkajE80CXKpZWeJVIbpvjZo0+uw
	 JDH3rp8LZZV+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D9CE6076B;
	Tue, 28 Oct 2025 18:12:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2ED7322F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B87440416
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id boEDRT5Gok3h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 18:12:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2C01540333
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C01540333
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C01540333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:12:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AE85D450D3;
 Tue, 28 Oct 2025 18:12:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B77DC4CEFF;
 Tue, 28 Oct 2025 18:12:30 +0000 (UTC)
Date: Tue, 28 Oct 2025 18:12:28 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com
Message-ID: <aQEHjPudkOSpk248@horms.kernel.org>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-3-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251025150136.47618-3-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761675153;
 bh=FdgKUel8Rdr8U3hgYEJeelUVjbNqlBCIt46+j3nPvzY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RtAT6LVfZItjKcfIY/5taKbAHk080g5kjCLFKYxv2hW/Jt3afLpLS0iwRvUC4V1QO
 WM/yAZSa7nbD8Er0jKGskLm/hsMtqei/zgoRwQ5kyJpQu49/vWzPoL0VuwiG2b8NQD
 7aYjYKfhGX8vbhv60JCNcPc0xUCjyr6KfzYjP25vHslFdjRz7I/1e0K6ElkgfJAbz4
 l64g/5aevgb6CBtZ05w+w3OjMPN/MId3bW7rdh6fCdp6HR/kiV8NlrPYgaRr1bfsWh
 Czn+b7R/tml6nUurqmYx8/fhTqqKO09fzOGd/aSTIXIlXUv0/HsbsRBmEPqyVessLJ
 0aw+gs4Uebibg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RtAT6LVf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igc: expose RSS key
 via ethtool get_rxfh
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

On Sun, Oct 26, 2025 at 12:01:31AM +0900, Kohei Enju wrote:
> Implement igc_ethtool_get_rxfh_key_size() and extend
> igc_ethtool_get_rxfh() to return the RSS key to userspace.
> 
> This can be tested using `ethtool -x <dev>`.
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Reviewed-by: Simon Horman <horms@kernel.org>

