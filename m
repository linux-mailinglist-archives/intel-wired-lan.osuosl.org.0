Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24113839549
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 17:50:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A49B440217;
	Tue, 23 Jan 2024 16:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A49B440217
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706028651;
	bh=rawTfJbt1i7y4U1TvFMFJLQHgxq2487kFNMjyI9Q2js=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gzeFXjk1HpEeV4Ri1oHtji6jaXqwWxxdE57GqTcRf2sNrDGQHwmKLXDsBdXV8Jkc+
	 sY30VAjqpOmOMrS7tHLLN8uPMKxC8qSljL6I2CQqzH5aSioLgj9ZwkkR2hRk7mkj6Y
	 /Zwhu5e7lzCu76r9OtjbHfiK8woCbf6tuR8pGdKHvb8mKJrzCkokbVnv7NPu6zOPv2
	 4sEmuoTTL8+upnVFaCkMl9O29UXxs02Tk3Kvl3l/pjqZ5YK7ueuD02mE/UaPVqhhNO
	 2YGbnwQ7NwVnH93Ky2Yu4ftB5jNOxHQPTPmO4Mxr5iWHvMCGWs+GPagMyOh6VqFbgQ
	 WpJN+qHn9bTXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lISCP-trhkLT; Tue, 23 Jan 2024 16:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 916EF402C3;
	Tue, 23 Jan 2024 16:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 916EF402C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8906B1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D4DC607E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:50:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D4DC607E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g3TW8vlsUcIw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 16:50:45 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D714B607A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D714B607A1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3694D61C0A;
 Tue, 23 Jan 2024 16:50:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DCEAC433F1;
 Tue, 23 Jan 2024 16:50:42 +0000 (UTC)
Date: Tue, 23 Jan 2024 16:50:40 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240123165040.GI254773@kernel.org>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-4-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123105131.2842935-4-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706028643;
 bh=RmiQ2He2OXArxwfJ0IsV+iMk2H0vHq/KqVh3R9A8DcQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z2qvZs97gpIPE2sfx3xuD46C6DvzDuy/5V3YX5jHNRwlzuNf17FL4e03j4mqN39uD
 9nTtiFhqiPL1V2dSckdVkazFpufmjUAo27yoEuSZ6pwE0eF1We8f5AEuluh0u7U37d
 ZwJ4XriTWf3jD9Av4GNI+GoZ3oHO+Mp4/cOsFG7/2dMaHmJ7D/i1cJhQvHPWD2kZuO
 UPmYhMgQv4U8SecvmXsfD+ZBy/txFFwAYAI7kuoMUWINtlxwGuOaJxSPYpR9MboDZN
 TirOM2qvef3LCgxWnPPNlecxNnJ3nVdalDCYDfs4gnwYp1iPZITVGHtiMUZrWd1qNm
 Nun6oNc5p4zWg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Z2qvZs97
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 3/7] ice: rename
 verify_cached to has_ready_bitmap
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 11:51:27AM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The tx->verify_cached flag is used to inform the Tx timestamp tracking
> code whether it needs to verify the cached Tx timestamp value against
> a previous captured value. This is necessary on E810 hardware which does
> not have a Tx timestamp ready bitmap.
> 
> In addition, we currently rely on the fact that the
> ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
> Instead of introducing a brand new flag, rename and verify_cached to
> has_ready_bitmap, inverting the relevant checks.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

