Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E5AA9047C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 15:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB80D83F54;
	Wed, 16 Apr 2025 13:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lcxb0nYxKdcW; Wed, 16 Apr 2025 13:39:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B38781053
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744810741;
	bh=nrrD3/sSaPsl3a1EqfKuMRRLXEiXUHmBEshVkFhljRY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=39LpPsl61j4PJfpFrbCLe8UgsqNhtuhCpsy+xFpaAqqXoYwNvC5pX6euFGUE2S674
	 eRcMJjlSJxaSdxBuzJhmcIgy3T59R8lXeVUGockFu6jaI3jcTinrDIPx/FWlhJY8km
	 i9oQapIJrUfAppp34w9f6zrQWEsjXW817v3bXKDO/zY5yZW0+aEQMyKi9aPPPOM/CE
	 fIqsEAnzVqjzcMg4C2vaAtDHCLPMyXrPN22npHYXIeQ97Lp+V/Eqto90c7XhcqQigj
	 lqtOXlgO5DMLlGMsgJyyFUNr/hvsnsZm33yZp957HdlHoXwnhk6P+aKvhn4J5i/4u6
	 /C3Ht7ogJswkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B38781053;
	Wed, 16 Apr 2025 13:39:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 966AA435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 13:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BAB641E87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 13:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E_gM5L4OJocV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 13:38:58 +0000 (UTC)
X-Greylist: delayed 45897 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 16 Apr 2025 13:38:58 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA2AA40165
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA2AA40165
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA2AA40165
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 13:38:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D583C4A131;
 Wed, 16 Apr 2025 13:38:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02A17C4CEEA;
 Wed, 16 Apr 2025 13:38:56 +0000 (UTC)
Date: Wed, 16 Apr 2025 06:38:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Bryan
 Whitehead <bryan.whitehead@microchip.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Paul Barker
 <paul.barker.ct@bp.renesas.com>, Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?=
 <niklas.soderlund@ragnatech.se>, Richard Cochran
 <richardcochran@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>, Russell
 King <linux@armlinux.org.uk>, Andrei Botila <andrei.botila@oss.nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Message-ID: <20250416063856.3b653d81@kernel.org>
In-Reply-To: <20250414-jk-supported-perout-flags-v2-0-f6b17d15475c@intel.com>
References: <20250414-jk-supported-perout-flags-v2-0-f6b17d15475c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744810737;
 bh=nrrD3/sSaPsl3a1EqfKuMRRLXEiXUHmBEshVkFhljRY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EI7+v9/TV3vL8wNZFHf5NwXTl/I+OIoNCxeCgleOMSMSQ2et4YlX2E/CtICiF2aRX
 oW/4Id4sKByywPbfG/aMVtG/Yz6mzSPnvXl2qgsmgXLSFguGJM7kQXBF+k8BF1GIN4
 ThZ3NCRohH1sv1xyMoYbOtaw0ZOb6F3NrppLlR07Zo+WDcVKWUg5pMJEKTrkuBgExU
 gZz5KUkCuI4y1NsrxDznV0Gbp9y/3WlyHjn121kUA2n1+qTCsnrR97CYFi3SpyQJeO
 +/nIc8jEkEOxLOCWZx+MQxt08+oXFr7HQg9OEzZXHNTxnFCn+qtGuDHzV8KoVlsfLf
 +2x4BlPNPwstA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EI7+v9/T
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] net: ptp: driver
 opt-in for supported PTP ioctl flags
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

On Mon, 14 Apr 2025 14:26:29 -0700 Jacob Keller wrote:
> Both the PTP_EXTTS_REQUEST(2) and PTP_PEROUT_REQUEST(2) ioctls take flags
> from userspace to modify their behavior. Drivers are supposed to check
> these flags, rejecting requests for flags they do not support.

Applied, thanks!
