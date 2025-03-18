Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2122A675C3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:00:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 898394077C;
	Tue, 18 Mar 2025 14:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Br9z1HCYpZmf; Tue, 18 Mar 2025 14:00:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 986D440786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306444;
	bh=tvSkqThQTEmedMSzz+uz9kljH4t46ktYCvHfg+Y/4oo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=osadCzdP455YvtNSswBnGW1spZ4v9wtWoHld8iEHXq2ySEvaUYzyaMb85ImJmJA1m
	 2NNbAzDhfayyMkKy+CV0BaeN8QS0PbcMyaC/F1+DiaGMDFtqBgpfur+K8r0Lpwq6YA
	 hN7V+0MhavSPKSLFw3FZtV4+nLhz0MdmWixcVgdRI63FQSNOamJQ7XcWEzLaqXQwKR
	 LM59wHgPkp591UTBc9xwcDWliOW9k3AYDQqlZWRbYexBv/XY89L1kvaPy7L+fERHL5
	 Wv5Y/ri7z2DfwmDNW19amgp3fv8yRsSwwYx99aQ3db+TuhHaH9zhqqfTLk+dZdH5bj
	 x4MC4j6f61AcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 986D440786;
	Tue, 18 Mar 2025 14:00:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D95CAD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCAD480DA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:00:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ei5C0SRC_6G4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:00:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2BD080D28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2BD080D28
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2BD080D28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:00:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 702C4A4536B;
 Tue, 18 Mar 2025 13:55:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 167BEC4CEDD;
 Tue, 18 Mar 2025 14:00:35 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:00:34 +0000
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
Message-ID: <20250318140034.GS688833@kernel.org>
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
 <20250310-jk-net-fixes-supported-extts-flags-v1-3-854ffb5f3a96@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310-jk-net-fixes-supported-extts-flags-v1-3-854ffb5f3a96@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306440;
 bh=OO/lUWidVZuz8C5f+/NJii1Inwb2AJcL27aTF4CLl5w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o7js6Jz5SqsHRgteyoClH62YzprnIlaSUU3COpnsn8kvFT72hrwDIQE756CIPik3x
 OD2jn0r01mlDyYJcAU9KU1IiLNxsbnBhbAM2po61pkK/PzWW+YhVUdSCz8GZWAYTcm
 FwlLvDST6HdKfs36NEaKninKvIGff7JK7xvHb0CSFYkQnA6WAbmdD5IfcwslLVNB+j
 X1Lpa4DD8fDJ3JzO3oSJyFmGiSgz1vjUXUZQrgZXPKr0dVy8uYE3oY+Xyqe8SfVYUE
 OghAx3ycl1NKQErC8Qm5oMAmrxHmk0xSPzFrodEVmz0935MBDtDmjcpvFHWHfin0jg
 +sQhNj54HDhWw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=o7js6Jz5
Subject: Re: [Intel-wired-lan] [PATCH net 3/5] net: lan743x: reject
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

On Mon, Mar 10, 2025 at 03:16:38PM -0700, Jacob Keller wrote:
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

