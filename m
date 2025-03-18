Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCBCA675F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:08:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3281860BB3;
	Tue, 18 Mar 2025 14:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OtWEIvq7ciz1; Tue, 18 Mar 2025 14:08:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FD29606F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306935;
	bh=jcStHYE0d05GPaozUGu7SMnLuPqngMwkeZQH81Gl3p4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8R6Rnarl1r1FMrJhdmf/fHRQIfjgo9OV8KlrCfaz6ZHbi7l8RWDYw30dEhNqPvSD/
	 8zQ7XzqVwR1W62MXh1YHJM+jMT5t9PXlznuf5vHkfbYIKm/KdOcO5p+SgBe7asA9Hq
	 d2gGS6VED15yrSpNG+ogK9AJHPuXmMdpt3K05Ijaxfh7ttpCitu0lSppN+CTLAEVyQ
	 D/KrNetwFTJq61C2mVPU+RRtU3XJ1nG1B+Ol3H/zOmcGkQwifi4uYNu4QywdOLhMeH
	 bdDU5xQCCFVWyUF3sQPsESw7Bqta+DvnoX3J1HYmznlRzhePAM+dh0tb1lqRbxBOou
	 3R24JZR6exr7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FD29606F4;
	Tue, 18 Mar 2025 14:08:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DC60F950
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C555480EF7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TZIU5DNZZ-5F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:08:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1326080E49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1326080E49
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1326080E49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:08:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 824AEA45F0B;
 Tue, 18 Mar 2025 14:03:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FDADC4CEDD;
 Tue, 18 Mar 2025 14:08:46 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:08:45 +0000
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
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Message-ID: <20250318140845.GX688833@kernel.org>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
 <20250312-jk-net-fixes-supported-extts-flags-v2-3-ea930ba82459@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-3-ea930ba82459@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306931;
 bh=zwEgifMobld4uUocUPMZBeRolUHzD/YMncdDMRuLpC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=osX268sMbEfFNm+edoVczlAYnHxXzFwrBFGHGiH++bobaKSWhEM5NxDKNNOlLTDbd
 1geugkMov15jvkOhrRO5ScFFmBwwkk7eGfhvsU+dedlI8VWDHw0Fu8PioDyIgOXqzz
 +uAm5u4gx+oMEKkdRpMLb3KX7JW+ikb6aoVUb7P/lzNQ5vVfq+GD3/CDjWzHHdNz15
 9gaWRszIaSajQSkl4jNRALSaWG2EVADV8W3wIfmFSYsjtH4vGASNi/0wa4IfbBDlCD
 ZbtDFJndS6CUwNWyFq2VeLVwFFoxQngFFuCi8/aG6TtapzZkSBtN0A22zL240moNOP
 FbPOQURQFHUeA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=osX268sM
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/5] net: lan743x: reject
 unsupported external timestamp requests
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

On Wed, Mar 12, 2025 at 03:15:52PM -0700, Jacob Keller wrote:
> The lan743x_ptp_io_event_cap_en() function checks that the given request
> sets only one of PTP_RISING_EDGE or PTP_FALLING_EDGE, but not both.
> 
> However, this driver does not check whether other flags (such as
> PTP_EXT_OFF) are set, nor whether any future unrecognized flags are set.
> 
> Fix this by adding the appropriate check to the lan743x_ptp_io_extts()
> function.
> 
> Fixes: 60942c397af6 ("net: lan743x: Add support for PTP-IO Event Input External Timestamp (extts)")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

