Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AD3781E5B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Aug 2023 16:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BCC081F76;
	Sun, 20 Aug 2023 14:45:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BCC081F76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692542717;
	bh=9uKp7B1VYcK/NDrWtN736Mv1JDhQx2iusY4Bo2pcclI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gF+E23QqYSyt2YPA4+i6BX8CQJtknBPXgiqaSxhiBs4Na/7Hj6VpKISxkPIpd873l
	 vvWUJb2UeL+zqZ6xcT9ueGMi45HtTsg4iOoMbz+sW4+BelXx6yWHW36xJ8zZFZkjAr
	 6xgxy/yJKVUPoYmXqDIOVmKtbeyvSZJrSn5IJ1KD0O9gd6BNe3cPS2gpN6Ujf8xDqs
	 wncGnq+PF8xTu664eH0ImQjBoWHd33w0tkJ7tK7pfmIGQKC2FNV9OzW5h1JADZATDa
	 Di6Y9+WGA/6cEwpamp3cEN7itl+pvVA8UoctiN41Dg8s6ajbIT+N3i/La9l1Akwkx8
	 X9T2MZHJEpubQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id swupNtvxjJFa; Sun, 20 Aug 2023 14:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FD5581E23;
	Sun, 20 Aug 2023 14:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FD5581E23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F69E1BF363
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 14:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E42AE60BF0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 14:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E42AE60BF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAORrOrMvYgh for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Aug 2023 14:45:11 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 187A360B3B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 14:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 187A360B3B
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A3DAF615D3;
 Sun, 20 Aug 2023 14:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93C3BC433C7;
 Sun, 20 Aug 2023 14:45:07 +0000 (UTC)
Date: Sun, 20 Aug 2023 16:45:05 +0200
From: Simon Horman <horms@kernel.org>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <ZOIm8TJz/ykcI+PR@vergenet.net>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230819093941.15163-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692542709;
 bh=2axdRh5qNFWVk1PGIYs/8FdjmE93UURhhLvGBII6n04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZehVKQCGSTVV0QT5my+3O+2oaYpeZVhuTkm7giu/cM2nPp1BYNMVfQCNF9D85Vkpa
 iDpfcZN8mjcUmmqmiqIz7H8PdRxrtjkLjxAWKtnsXfSUO0fGO/vnyOURb+uQkOCQ1U
 ARvjoLQm1o0MwltmcFtkuve2VP5lpttfz1pnR49KJTzmM/xnYL90My9SkPBjistH7Y
 yCrxKAigsOseD6Qc+wEVtnP74RlEqLqzXvgVRpNTpQ6Ga0DhiG2rp9p2GP5K3Y/UK3
 CI3cH2eCVxIyUjLWturIrIsGMyUiJkh4sPg0FgRF1XEmz5OREPErfhi3MR1QgStCYT
 w+c6JPCMXLXNA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZehVKQCG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Aug 19, 2023 at 02:39:41AM -0700, Paul Greenwalt wrote:
> The need to map Ethtool forced speeds to  Ethtool supported link modes is
> common among drivers. To support this move the supported link modes maps
> implementation from the qede driver. This is an efficient solution
> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
> maps on module init") for qede driver.
> 
> ethtool_forced_speed_maps_init() should be called during driver init
> with an array of struct ethtool_forced_speed_map to populate the
> mapping. The macro ETHTOOL_FORCED_SPEED_MAP is a helper to initialized
> the struct ethtool_forced_speed_map.
> 
> The qede driver was compile tested only.
> 
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> v2: move qede Ethtool speed to link modes mapping to be shared by other
> drivers (Andrew)

Hi Paul,

thanks for your efforts in adding a mechanism to share code.
It's a great step in the right direction.

Perhaps I am on the wrong track here, but it seems to me that the approach
you have taken, which is to move the definitions of the symbols into a
header file, is, perhaps, not the best. For one thing it will end up with
duplicate definitions of the symbols - one for each object in which they
are included.

For another, and this more a symtom than an actual problem,
a (W=1) build now complains about symbols that are defined but not used.

./include/linux/ethtool.h:1190:18: warning: 'ethtool_forced_speed_800000' defined but not used [-Wunused-const-variable=]  1190 | static const u32 ethtool_forced_speed_800000[] __initconst = {
...

I suspect a better approach is to leave the symbol definitions in
a .c file, one that is linked in such a way that it is available
to code that uses it - be it modules or built-in. And to make
declarations of those symbols available via a header file.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
