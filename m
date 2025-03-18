Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E65A675F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:09:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B12FA60BA4;
	Tue, 18 Mar 2025 14:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMq-6gd3pVwd; Tue, 18 Mar 2025 14:09:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AFE76062E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306953;
	bh=rrkwjoLqGdbwwt+8djr4KU9qEagrZoHdEhQDkwio7WU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eOhHt62vKG/lXzeY095ntByms3YunAeoHwWvBFMqqyEsg3mgcZDgLFtHYJ4vF5SZA
	 rMne1CRU/oMvm2qcjTFuAbiBITDyf7csIVRG+xwZrX56CHrSbH+vjUYOe6ctHZAS4D
	 OUEhIrY7eLwiugCl7anD6hDY6bvGeGJgV9d1tDCca0Fx8WuK5d2/WSENCVyHe6wKFU
	 hzFD+zocdwDLetT2zZILa+tWtzD/L5Cr015RpeVD79a16oThYUbPTq1RGPkxAITKtB
	 /KF6ial2XkXKvH8eQ45XOtE9PsDyj9hFHlWuzGoY7cH9Bkw6vXbcfCZzX1xODe999I
	 P3rLXTT8n8zHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AFE76062E;
	Tue, 18 Mar 2025 14:09:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2797DD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23A3E40481
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6mxtxmFttmeG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:09:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7014140358
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7014140358
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7014140358
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:09:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A743F5C0467;
 Tue, 18 Mar 2025 14:06:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6A9AC4CEEA;
 Tue, 18 Mar 2025 14:09:04 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:09:02 +0000
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
Message-ID: <20250318140902.GY688833@kernel.org>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
 <20250312-jk-net-fixes-supported-extts-flags-v2-4-ea930ba82459@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-4-ea930ba82459@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306949;
 bh=+z7zNQWAOae/MIWTmuM4q6CM+1zonQ4WMavGq/Xskbs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L4xsVuqKbLhzxz9yD90uRxM5oXiFx5I4tx2uW7hW5sHddJ+7GEqtPpIC+79zDgfQB
 AXGu56qWgxYQJAKMipBoFHJtFmdWt2JNzf6PSEZgTNygwCatO2k3DQaswt30z5R5+j
 QBE+S50Qcy1FpzxDzMAOJQGCUZzG5bkhd9JJ9U0s/nhhGo66FJCSeNYKjOPHswdGgB
 Xg8kptWze5sd80M6yF9//FjGM8wsEgjPZ363qgTArfCifYfuF+vRg//CCSsYUN/bom
 W1FvXo/gx7IywrD4aZoVaDIRb6vRcTIoZe/nAceur9lh/ncLC8PnD++xnz+vJ3qYJk
 sjR7q667MZyUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=L4xsVuqK
Subject: Re: [Intel-wired-lan] [PATCH net v2 4/5] broadcom: fix supported
 flag check in periodic output function
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

On Wed, Mar 12, 2025 at 03:15:53PM -0700, Jacob Keller wrote:
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

