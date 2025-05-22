Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F450AC0D2C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 15:48:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E7B2419C1;
	Thu, 22 May 2025 13:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7i4OflsGZaz5; Thu, 22 May 2025 13:48:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A515419D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747921700;
	bh=6uNPhl1jJ4l6Smlx0qObTdD5z5Dl/6bn0lUhHItCozE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=24zo9YYPwHWdNsLmESR/6Y1mjOFRdpggoph1WlW5o4ZQu60s1Bi25VI/xFV5XikXU
	 Pe7QogH1kMyXfpiY1UrD+uyC0JZY557Mp4WakxDYeSBQB8Q65ozDO2XhcMofgknz3X
	 UK6N11ChspGMSlDRVkuUR7dM+ycJfkHu0h72RLtHiqysXKmiAX0tgm9h3T2TfL3d11
	 6mMTRI1fLQpd75brmucwKZZHvFPO7iGZdAbu1BbLZj81v7snCm5Orme3M24FSXN/tC
	 JAeNeG2pveVJG+uaHlYfQKfh9NQmBk9SqB+o93CGkjgUo6bo3tsxp7OyzPcHCr2HW4
	 DrGUATF1A91PQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A515419D5;
	Thu, 22 May 2025 13:48:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D85A6BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:48:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8169419CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:48:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J1u0C9TYwvi5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 13:48:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4149E419C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4149E419C1
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4149E419C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:48:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5B28762A42;
 Thu, 22 May 2025 13:48:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70708C4CEE4;
 Thu, 22 May 2025 13:48:15 +0000 (UTC)
Date: Thu, 22 May 2025 14:48:13 +0100
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 kuba@kernel.org, dawid.osuchowski@linux.intel.com,
 pmenzel@molgen.mpg.de, Kory Maincent <kory.maincent@bootlin.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250522134813.GF365796@horms.kernel.org>
References: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
 <20250515105011.1310692-3-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515105011.1310692-3-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747921697;
 bh=oRQssJFq6WL3IUU0+bRbfoFe0owE+3DHbiglnFcMLXw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LuHvhda7S7G8xWj5eAbmWzIblusLsDhmfvLeVbmydW6w1kRhC086wX+kTMBUxe64P
 Qo2O7xj18z8qfOsB8Fzklf0sMDcuAcY/cvBU8TE3jL0asrKxvsco8WmiCqimEy9LxE
 JG/+LSaY2AXzWDw2RLXvt5yJkaWYRlhunwaHga6k+9mPDYdD+si0U8ZdTo1rd/r5I7
 +g/sXyxr+yPcKwop7Jv9i+i2IIBx2im+T+fUUH5ibhof9kZRTR7ztuKQDETBs20y05
 fATxF2gynNkOSywaVWpoB/Q1h9XEkTvv4h5Dwqf9cJi6CJT72sc7mCjAcsCVBxLfFh
 /CLIBjA39989Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=LuHvhda7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ixgbe: add
 link_down_events statistic
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

On Thu, May 15, 2025 at 12:50:10PM +0200, Martyna Szapar-Mudlaw wrote:
> Introduce a link_down_events counter to the ixgbe driver, incremented
> each time the link transitions from up to down.
> This counter can help diagnose issues related to link stability,
> such as port flapping or unexpected link drops.
> 
> The value is exposed via ethtool's get_link_ext_stats() interface.
> 
> Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

