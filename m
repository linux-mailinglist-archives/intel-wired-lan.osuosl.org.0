Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8917A675C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18C4260B7C;
	Tue, 18 Mar 2025 14:01:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6tNoikG4o5io; Tue, 18 Mar 2025 14:01:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77F7B60AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306480;
	bh=1jDL+7c4ztAx/g6S3i+Y52ajKbBqZxFdY6WR/0h66ws=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y4UctUXFTYACQCZMb9HeVzw385cXH1OlvqX70b79TApuo4MzK9PBXjwiXEvjeLN7n
	 Zd1+HfLQAjufPnxldULnWVZVWNzzCGmcHRZKQX1rnA/nK8N6LRY/aUZCYs8jLLX02R
	 Rk+FOxt80tft1b3Qfc4FAegbvXsquJ8mHMUz4MCRb1ULkE4RNtw4yF/+T+MD8IILTg
	 Rddqs8hwORJAZWGZ9ZBiS/KtZ/RDjaV10gzy4zn/QPPuOCOZrIArEm06jTc6AY+41S
	 3fuYnf5+tfZhXr7SW5qreZUfQRDjHKzgLAkwgALRz7T7A04y4/2nV4ffxf+q22hN/K
	 +/Zr1pQIN83mg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77F7B60AE8;
	Tue, 18 Mar 2025 14:01:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 60B86D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:01:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43E9B406F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:01:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c_76mBURU0ba for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:01:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 71234403AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71234403AF
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71234403AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:01:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D2285A4536B;
 Tue, 18 Mar 2025 13:55:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79D5EC4CEEE;
 Tue, 18 Mar 2025 14:01:12 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:01:10 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Ruud Bos <kernel.hbk@gmail.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com,
 Raju Lakkaraju <Raju.Lakkaraju@microchip.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Message-ID: <20250318140110.GT688833@kernel.org>
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
 <20250310-jk-net-fixes-supported-extts-flags-v1-4-854ffb5f3a96@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310-jk-net-fixes-supported-extts-flags-v1-4-854ffb5f3a96@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306477;
 bh=qN5FZGZkV8hY7P/iLN+6qzh/l08Z8WtzT3kITbpr4z8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YKFTE1pAeiLLSYZqt9CPYNr83U0Y4/SFw3mBdgF3bXkql4dvOnh/Xgg/TT7hBGZgv
 qmuWtwBNzzj/1t1TzLwToFr7Yl0P+QyU7Df9m5WnaYCmPfpcmR7fk6EcrqdbCGodj5
 B+WJ11UMOaQRNnBMK1pmTf0stPUYqdMOihVc7azHsmtBoaWkyUokwWhLt/t6e1XCno
 XHKHpq5qFBStufAOpnVx0CocgcdFpGxHGbWKBWJHbP9aG/8KvFy1laMGqnzUM5ZHNQ
 CgzT8xzJSVlgTIoYHgrBDPV3hO+FkotlpguVkI9Hoq2czJJUl/1PzQh3auXoo+6/cG
 GnOOwLLY1JFEw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YKFTE1pA
Subject: Re: [Intel-wired-lan] [PATCH net 4/5] broadcom: fix supported flag
 check in periodic output function
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

On Mon, Mar 10, 2025 at 03:16:39PM -0700, Jacob Keller wrote:
> In bcm_ptp_perout_locked, the driver rejects requests which have
> PTP_PEROUT_PHASE set. This appears to be an attempt to reject any
> unsupported flags. Unfortunately, this only checks one flag, but does not
> protect against PTP_PEROUT_ONE_SHOT, or any future flags which may be
> added.
> 
> Fix the check to ensure that no flag other than the supported
> PTP_PEROUT_DUTY_CYCLE is set.
> 
> Fixes: 7bfe91efd525 ("net: phy: Add support for 1PPS out and external timestamps")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

