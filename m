Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F771B953FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Sep 2025 11:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D63CB60BF2;
	Tue, 23 Sep 2025 09:29:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lTWts2FrniQh; Tue, 23 Sep 2025 09:29:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58ECD60BF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758619742;
	bh=lii4w6ZMtmOBX7hl2yGH+b/Cw5q8587nffgt6G3EGQg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EqBDHTZLYIvgsZ9HK9Ni8hpL1Pz7ZHMzHEit7aU6BmB3ida6ESGo23Dq8i3KWoLXL
	 LfG25OgplhmmMUOJBa8T7Kru/a+Fc6PgbdT9Vl8cEbISImPHbCzkcuKw5HeFwsGrwt
	 LXBehmTf1ZRQfAPCFK28eE9vn7CEsMJRIdTmRnjNIi5sDFV43oXVhc/GPbUW4cI0vW
	 Zq/r1eOc/gNwEDfPi/2SIJEey3AItTAdjeNo9tef18FOEjiIJRwDcfwFahFli4oJHD
	 mYg4X82uO05r2t9zUO8oiTvH51Du8d3y4WJ9/ROdK/uyZNpeP9qzQ3rp6rCLPgSsfK
	 hTJ7Ri9LMXuTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58ECD60BF3;
	Tue, 23 Sep 2025 09:29:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D97D5200D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 09:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D61CA40BB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 09:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pqpG9N1W9hdm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Sep 2025 09:29:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 32FCB40BB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32FCB40BB3
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32FCB40BB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 09:29:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 85AC760203;
 Tue, 23 Sep 2025 09:28:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E50E7C4CEF5;
 Tue, 23 Sep 2025 09:28:55 +0000 (UTC)
Date: Tue, 23 Sep 2025 10:28:53 +0100
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 aleksandr.loktionov@intel.com, kohei.enju@gmail.com
Message-ID: <20250923092853.GG836419@horms.kernel.org>
References: <20250920102546.78338-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250920102546.78338-1-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758619738;
 bh=+clR6Ohj4shvtZ4Od5XAq00h67vP8sWoPMLPPDKC6fY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SXg80mPOuVxAJSLq5ZLV+yFZk9trSHtv49qD+yP//Y6Gza+AZWzV1UU1RE3IFgOl2
 gyfgVG6eYX83gGrkwBWEapIyykvWbXcpMMIySjxjrogpcFg08KQklfUHi9W5LoGiT4
 OHxgI3UwlruHdF7SJpYZ8/3OR21gqG/Inn0hZ3Cigc3Om0Fs17CxIljm+7stmIjh9D
 4sPlZsb83LHCn6sTaFDAKwtJTBlEtk6lZEOdDkRrXDjMxr939Au6uhilKIbn+7kWFb
 VDtCR19h1NwPYEp297ruTiA7st9S0YOIhOZTTRCKWWjN0lCwBiizVPCgE5nBcKKviv
 OB/T+Vkn0Eh8g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SXg80mPO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: preserve RSS
 indirection table across admin down/up
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

On Sat, Sep 20, 2025 at 07:25:45PM +0900, Kohei Enju wrote:
> Currently, the RSS indirection table configured by user via ethtool is
> reinitialized to default values during interface resets (e.g., admin
> down/up, MTU change). As for RSS hash key, commit 3dfbfc7ebb95 ("ixgbe:
> Check for RSS key before setting value") made it persistent across
> interface resets.
> 
> Adopt the same approach used in igc and igb drivers which reinitializes
> the RSS indirection table only when the queue count changes. Since the
> number of RETA entries can also change in ixgbe, let's make user
> configuration persistent as long as both queue count and the number of
> RETA entries remain unchanged.
> 
> Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network
> Connection.
> 
> Test:
> Set custom indirection table and check the value after interface down/up
> 
>   # ethtool --set-rxfh-indir ens5 equal 2
>   # ethtool --show-rxfh-indir ens5 | head -5
> 
>   RX flow hash indirection table for ens5 with 12 RX ring(s):
>       0:      0     1     0     1     0     1     0     1
>       8:      0     1     0     1     0     1     0     1
>      16:      0     1     0     1     0     1     0     1
>   # ip link set dev ens5 down && ip link set dev ens5 up
> 
> Without patch:
>   # ethtool --show-rxfh-indir ens5 | head -5
> 
>   RX flow hash indirection table for ens5 with 12 RX ring(s):
>       0:      0     1     2     3     4     5     6     7
>       8:      8     9    10    11     0     1     2     3
>      16:      4     5     6     7     8     9    10    11
> 
> With patch:
>   # ethtool --show-rxfh-indir ens5 | head -5
> 
>   RX flow hash indirection table for ens5 with 12 RX ring(s):
>       0:      0     1     0     1     0     1     0     1
>       8:      0     1     0     1     0     1     0     1
>      16:      0     1     0     1     0     1     0     1
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Changes:
> v3->v4:
>   - ensure rss_i is non-zero to avoid zero-division

Reviewed-by: Simon Horman <horms@kernel.org>

