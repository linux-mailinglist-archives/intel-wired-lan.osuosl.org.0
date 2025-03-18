Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2BAA675FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:10:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8B6E81F1D;
	Tue, 18 Mar 2025 14:10:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8jH86NHUTuvT; Tue, 18 Mar 2025 14:10:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFC8682107
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742307017;
	bh=WO2E6cjNY1CTMGVsm5YZZ4qwmSM43bLrknvEgMpIsR8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MwYMRETElTQJyHzj/ZbAeuI8zfTdKkp39QH0yiS1aMj++Sexx7aWZW6EB5BEvWtZ6
	 oaWy/64GyOXeUyXgS7wfmsUZM4wuaqDSKjpqCxRCnCyOfEtNo9V2VoNnZLIGYVsE7p
	 QfJBX/8998Pe8ioUJ22A8dHmcvigPS/Z1OXYepXD6uwoNTxigBm+xq5aFc4Hkq37C5
	 04mWmxXG/VixPI5vuyRnhVrkVSmTRdQYVESBEzh0FsgQIBD2VAaIqSiMs4Rz2DDKkn
	 LLQwZA7TXltTZ2dDBknxcxD8GvTdNMYiykZwa8E2QBC7oV3xnjLYUoFoDdeHlZfc6G
	 SaotjSQ0V+QmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFC8682107;
	Tue, 18 Mar 2025 14:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F3FFD950
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E241F60669
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:10:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KmD5wWEG6Z2m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:10:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 57F5360585
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57F5360585
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57F5360585
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:10:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AA98D5C572E;
 Tue, 18 Mar 2025 14:07:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6D42C4CEDD;
 Tue, 18 Mar 2025 14:10:09 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:10:07 +0000
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
Message-ID: <20250318141007.GZ688833@kernel.org>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
 <20250312-jk-net-fixes-supported-extts-flags-v2-5-ea930ba82459@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-5-ea930ba82459@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742307014;
 bh=q5doRqVam6s64ULpfBirzLVtZzdBmnrPWU3KtXCaEFE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VO5wTwW4FKWFMGm8TLIOOBFOUXU+nrVANM2qDIIedoNkR2NsWznIgxsmYloV3vnGG
 LSqXchU0sWFIQwjsr38lz9eLc7r+uRPKdl/iPwv5D0KzDKhR5fF+PhxqfxlJuOKZQ6
 4yWeS4r/HCX3EHsCkAAGRZO0rPNVOsnIqPTFi+xRYEpVbDCA4+DiH7fgTTqDb5Fzf7
 t6JkBU7Homnc+IILhZfi+PLblKw7B6quuHdfiKV8jXGrccazOTaFm7ryxD5jiIiKKN
 NG+go5DJtea+vmHdzrgxOxmlHEUBZ6uO085ZucYpTVTggQS1OTgyKfvmz3EuzJP4+S
 xILUsGc3WX40A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VO5wTwW4
Subject: Re: [Intel-wired-lan] [PATCH net v2 5/5] ptp: ocp: reject
 unsupported periodic output flags
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

On Wed, Mar 12, 2025 at 03:15:54PM -0700, Jacob Keller wrote:
> The ptp_ocp_signal_from_perout() function supports PTP_PEROUT_DUTY_CYCLE
> and PTP_PEROUT_PHASE. It does not support PTP_PEROUT_ONE_SHOT, but does not
> reject a request with such an unsupported flag.
> 
> Add the appropriate check to ensure that unsupported requests are rejected
> both for PTP_PEROUT_ONE_SHOT as well as any future flags.
> 
> Fixes: 1aa66a3a135a ("ptp: ocp: Program the signal generators via PTP_CLK_REQ_PEROUT")
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

