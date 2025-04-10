Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A41EEA84008
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 12:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66C6161B11;
	Thu, 10 Apr 2025 10:07:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6c15Grg-iimj; Thu, 10 Apr 2025 10:07:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9A2061AEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744279652;
	bh=Kq87Xuc97EJxv+6e/++Vx+LXIntDeg9NNkpI4Ptxm3I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wGRuAjFZ3xP7GnoI7O7dw2Hn78jnB0zfDk0Jf5sqy4JfVyqa1HUAxIYovP2smfJA9
	 XAQIS313aiYAYzxhMMDfZUq2hhlqDce8Qs2e0KnGPbpQg+k4Un1elR221q7zbb1XC4
	 KNoaJYbcQ7x4Vj9J0UsywBo0w4e9XIJOdlWeOPWKENPP9P/Kg0XaZO6Zv0OmiFzESF
	 H6nXh6GSQzwbbisQA4THkpwIodqtTYMsL3shkk3ohV/61QA/zKa8zPosqt1wvYDMsi
	 3WRXv7bOTbf91CAcHQ/9Z5sEAjiq8SoeKfw/399a0ZOZxiZ2M0m0Xmljd3ewhzognE
	 PVDSRvMGHrDrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9A2061AEE;
	Thu, 10 Apr 2025 10:07:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 993E3108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95A866128E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:07:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SvEDWFXTLlEP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:07:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::ba; helo=out-186.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5D1B7617BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D1B7617BD
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::ba])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D1B7617BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:07:30 +0000 (UTC)
Message-ID: <454072e0-9fd8-4deb-a97e-b454d5e3fd5f@linux.dev>
Date: Thu, 10 Apr 2025 11:07:16 +0100
MIME-Version: 1.0
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jacob Keller <jacob.e.keller@intel.com>, Andrew Lunn <andrew@lunn.ch>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com, Horatiu Vultur <horatiu.vultur@microchip.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Richard Cochran <richardcochran@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Andrei Botila <andrei.botila@oss.nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20250408-jk-supported-perout-flags-v1-0-d2f8e3df64f3@intel.com>
Content-Language: en-US
In-Reply-To: <20250408-jk-supported-perout-flags-v1-0-d2f8e3df64f3@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1744279641;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Kq87Xuc97EJxv+6e/++Vx+LXIntDeg9NNkpI4Ptxm3I=;
 b=IoRHfRzweTtYP3S55dHcfGkJ1Ca23meplZC7fbQQJI2FZDOtE5CRJDTBj7nPx8URg38nLE
 RiqBB3YGRw5J9gKBzHxRjqSlVdUbRstAFHpy27g3ejSijmOO35flXDgaos5ODl0/aWTaeX
 UBX+b6BZq2EwY6h1vXAJ8ryXo5070dY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=IoRHfRzw
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] net: ptp: driver opt-in
 for supported PTP ioctl flags
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

On 08/04/2025 21:55, Jacob Keller wrote:
> Both the PTP_EXTTS_REQUEST(2) and PTP_PEROUT_REQUEST(2) ioctls take flags
> from userspace to modify their behavior. Drivers are supposed to check
> these flags, rejecting requests for flags they do not support.
> 
> Many drivers today do not check these flags, despite many attempts to
> squash individual drivers as these mistakes are discovered. Additionally,
> any new flags added can require updating every driver if their validation
> checks are poorly implemented.
> 
> It is clear that driver authors will not reliably check for unsupported
> flags. The root of the issue is that drivers must essentially opt out of
> every flag, rather than opt in to the ones they support.
> 
> Instead, lets introduce .supported_perout_flags and .supported_extts_flags
> to the ptp_clock_info structure. This is a pattern taken from several
> ethtool ioctls which enabled validation to move out of the drivers and into
> the shared ioctl handlers. This pattern has worked quite well and makes it
> much more difficult for drivers to accidentally accept flags they do not
> support.
> 
> With this approach, drivers which do not set the supported fields will have
> the core automatically reject any request which has flags. Drivers must opt
> in to each flag they support by adding it to the list, with the sole
> exception being the PTP_ENABLE_FEATURE flag of the PTP_EXTTS_REQUEST ioctl
> since it is entirely handled by the ptp_chardev.c file.
> 
> This change will ensure that all current and future drivers are safe for
> extension when we need to extend these ioctls.
> 
> I opted to keep all the driver changes into one patch per ioctl type. The
> changes are relatively small and straight forward. Splitting it per-driver
> would make the series large, and also break flags between the introduction
> of the supported field and setting it in each driver.
> 
> The non-Intel drivers are compile-tested only, and I would appreciate
> confirmation and testing from their respective maintainers. (It is also
> likely that I missed some of the driver authors especially for drivers
> which didn't make any checks at all and do not set either of the supported
> flags yet)
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

For the series:
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

