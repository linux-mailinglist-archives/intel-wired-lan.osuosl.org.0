Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5452AA675EA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:08:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16822820CB;
	Tue, 18 Mar 2025 14:08:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dstm3YJIfGTO; Tue, 18 Mar 2025 14:08:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CB3281FFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306890;
	bh=YE1wL0B+VHkqsLY5IHW5ZJ3BBxuFe5T4t1NDGC9fYTI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KWhKaCbUb1OI9dl/Q9FXgFy+Pv59qbs74E6mNq+EW2gMYLUzmIrjhauO4JvXoo4tQ
	 FVpY8iaGi1gtvLoLBc7I4ileU9s7OCA2BADEVYS66Co0N2sF8jjnqZJeOqeRa/+AYp
	 GJb16BsrECleV62Dn7z2QfeEPE5u9Mz/gsapcAAQ/3aSUll3N7UOyt6eiQCmc3VTZY
	 ePZL0cfxlshi5qQeWaIwemlsCEk3ab48Y8B7OAU7zruPSSGvpl71KVOkLP3NbolGWq
	 gQLuEe7U6yvU4/G2h1lDCvzskIDgrxAk58mMJAXhVztuE/2Ijhm2RgpFRh5goUkIi0
	 ZbuT4+MSZ+JHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CB3281FFE;
	Tue, 18 Mar 2025 14:08:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A8E4D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE420820A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:08:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i6IDj7DOjM85 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:08:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54AC781EEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54AC781EEF
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54AC781EEF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:08:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C00C7A47735;
 Tue, 18 Mar 2025 14:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61E7AC4CEDD;
 Tue, 18 Mar 2025 14:08:01 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:07:59 +0000
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
Message-ID: <20250318140759.GW688833@kernel.org>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
 <20250312-jk-net-fixes-supported-extts-flags-v2-2-ea930ba82459@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-2-ea930ba82459@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306886;
 bh=ILLjAudTsqFUCQ45J2jmmZXxe4u//4VFOtoI3v3By4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bFIpv2MqNsFaaPZkSzKsra7MAnaPKCKXTMM5M44edCTmoIilqhWFK/qbom919phg3
 kDqTAqC7PZuF2pHVMxCFVO4ha1TMvsEjY3RDXbLVBav2gaJyygi9fNEtxA7+mrJbm0
 Vt/OU+fwpxjO56K1jain15iVgkkR633aie3j9olGnl83ByWHZccQYuRMem3lsB8pNI
 5tdNO9LLr4V8YJ2kl7PgTub8WdA2Ny3zM2X5CXSUOqE7Dvo3iwMbNcRbU1pbYSxwYR
 ehOP2GEdwIUBKfEnhfnRgjccpl7/9s2LzLGy7dCwB/xAMiUc27cV5UJTPCslLQmVS0
 2jp2yGrW3kj5Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bFIpv2Mq
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/5] renesas: reject
 PTP_STRICT_FLAGS as unsupported
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

On Wed, Mar 12, 2025 at 03:15:51PM -0700, Jacob Keller wrote:
> The ravb_ptp_extts() function checks the flags coming from the
> PTP_EXTTS_REQUEST ioctl, to ensure that future flags are not accepted on
> accident.
> 
> This was updated to 'honor' the PTP_STRICT_FLAGS in commit 6138e687c7b6
> ("ptp: Introduce strict checking of external time stamp options.").
> However, the driver does not *actually* validate the flags.
> 
> I originally fixed this driver to reject future flags in commit
> 592025a03b34 ("renesas: reject unsupported external timestamp flags"). It
> is still unclear whether this hardware timestamps the rising, falling, or
> both edges of the input signal.
> 
> Accepting requests with PTP_STRICT_FLAGS is a bug, as this could lead to
> users mistakenly assuming a request with PTP_RISING_EDGE actually
> timestamps the rising edge only.
> 
> Reject requests with PTP_STRICT_FLAGS (and hence all PTP_EXTTS_REQUEST2
> requests) until someone with access to the datasheet or hardware knowledge
> can confirm the timestamping behavior and update this driver.
> 
> Fixes: 6138e687c7b6 ("ptp: Introduce strict checking of external time stamp options.")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

