Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FA993D799
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 19:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4B9D60B78;
	Fri, 26 Jul 2024 17:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qOG0oxvNQPa6; Fri, 26 Jul 2024 17:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 252F860B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722014912;
	bh=idkwd2xGDVfwe8gE2CdY7SyWZVgWG/zo1GilwY2J9FE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LJuG1y9+9xg83ttKr+Yqwef42RrboJJe2uzpQ6Ir2CdHgOU5/7CX96LMigL5Ra9mT
	 PqAUPQZqnaMXl6jglbTJdGWB7YxaK1wAYNH6x9Q4EbjsneOTRsZ4mE/7tuRwOGr0uo
	 VLv2CbH01N7eHA0NUHDbrpr1YbVSSD6hCevo2SW6ypNfqD+WJYefVgRSiQYzrltgws
	 yzSs7VvVF4RR5uuJG4lvb+yOHBoPJc9mwsInKJDY9hnMZ6Qdc0/pWoqi6ZEQiGCTfT
	 Ky4Y0QAhI0qjLQ3Vs0Qogoux3ZXgP/o7Yak1CtfBdAaKQsYNDLtceghAtzz9zgOdEf
	 UL6xDYUsAEv3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 252F860B69;
	Fri, 26 Jul 2024 17:28:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F30011BF298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 17:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC6A5405F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 17:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XsPBU8_PGvAB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 17:28:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EDECC40118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDECC40118
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDECC40118
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 17:28:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BAE9161671;
 Fri, 26 Jul 2024 17:28:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A435C32782;
 Fri, 26 Jul 2024 17:28:26 +0000 (UTC)
Date: Fri, 26 Jul 2024 18:28:23 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240726172823.GA1699125@kernel.org>
References: <20240726113631.200083-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240726113631.200083-6-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722014907;
 bh=LWnLwuV8oe2vBX2TVbJ2qUu/Jv8nP26LMaZlcXzTRf0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IwgILJXCbWuFD9NP18tPLnp5RjlTvAtCiR7IiyCPYvI5hdGqSyAPUMHM8o2wfy4ym
 4auXvHsIgdcBeJXR8yDzlgsN4eRsLc49uwDV0IO7ZTlcpBEKQtxpN/ZHQWZa9cbhH0
 sk89UpUp0M6GRKGUjHOBMWdgNoHYRHU/mLYnB2AnFV1NDxlRa9xAGcqg0L/OzfJQX+
 /shWJFeDi5Htq3qeTlzmqZXd7Fgow3Mvd5Ys0Yy+zYA5GevEtNbF8mup0l6G5ci3gr
 LkGRfb5txbLmwdVk9xL/mtTdC5U/uu1bU4CEPmcyv6EnTLxyU0SvQRSY05pDNZ+MZb
 vbnB9IJ2XogIw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IwgILJXC
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 0/4] ice: Implement PTP
 support for E830 devices
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 26, 2024 at 01:34:42PM +0200, Karol Kolacinski wrote:
> Add specific functions and definitions for E830 devices to enable
> PTP support.
> Refactor processing of timestamping interrupt and cross timestamp
> to avoid code redundancy.
> 
> Jacob Keller (1):
>   ice: combine cross timestamp functions for E82x and E830
> 
> Karol Kolacinski (2):
>   ice: Process TSYN IRQ in a separate function
>   ice: Add timestamp ready bitmap for E830 products
> 
> Michal Michalik (1):
>   ice: Implement PTP support for E830 devices
> 
>  drivers/net/ethernet/intel/Kconfig            |  10 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   |  17 +-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  12 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |  25 +-
>  drivers/net/ethernet/intel/ice/ice_osdep.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 356 ++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 208 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  25 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  11 files changed, 508 insertions(+), 159 deletions(-)
> 
> V3 -> V4: Further kdoc fixes in "ice: Implement PTP support for
>           E830 devices"
> V2 -> V3: Rebased and fixed kdoc in "ice: Implement PTP support for
>           E830 devices"
> V1 -> V2: Fixed compilation issue in "ice: Implement PTP support for
>           E830 devices"

As the recent changes are about kdoc, please consider running
kernel-doc -none -Wall and ensuring no new warnings are introduced:
ice_is_e830 needs a short description.

And, perhaps things crossed in flight.
But please address the review by Jacob and Alexander of v3.

Thanks!
