Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2838D64FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 16:56:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D749423A2;
	Fri, 31 May 2024 14:56:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cEMOrMJ0qUZt; Fri, 31 May 2024 14:56:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C94CB41A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717167388;
	bh=xrwr725OT0VkDOtNE505P1Y0qCdswbydgeiWs4KzzwY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aqSjhJdjsELJBOWBFuBdTqUjnDIt6o+7+G9Z7mnJ16V2W4NHLy9j7dJs4Se6OVAU/
	 2TEBrp8lW66U6ZpWGcSGfhR7wXt0SqnqyTgDwE+1zMGAJO2tAg97RsV2pNlAAvWVcg
	 rqAKhnoHlHQwNHCzPLYaZUFO7BEbg+RoIosx/Wcb0UIDY2TXgJI6X5CH+J8d521q9z
	 ZGKCfM6UMJ7RnWewlcvEPBRQYRmX/6DcTnsfYjlUXXWNZN8PaMEii1wMR/eMPQnzjf
	 ojP5LUEVZSaOS4iUFgv8DSSGx3M1aDr6jAnnlxDcqXYFNgORivDO9nRHRJMGhTFTlr
	 ZpGl0g4zJW69g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C94CB41A00;
	Fri, 31 May 2024 14:56:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9B251D53A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B580461147
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:56:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLnWVCPL28je for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 14:56:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2156C6111D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2156C6111D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2156C6111D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:56:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 566F662C83;
 Fri, 31 May 2024 14:56:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DC9EC116B1;
 Fri, 31 May 2024 14:56:23 +0000 (UTC)
Date: Fri, 31 May 2024 15:56:21 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240531145621.GN123401@kernel.org>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
 <20240527151023.3634-8-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527151023.3634-8-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717167385;
 bh=W5p25Dr9o9bWDw6/lWapXT9NOVQHwp1leOzXG6dfaMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qz//jns6zlw2cqcaSvaRC0mkRvhThTGRgaecJWvKg4H8knaZEX6CFf61nXoZlrm1U
 5kk+BxMeaNW7zPR5S5mvqGGfdlUWuJ7TLf/iovpghPWnqcE5GBYyQ2QoQOhvpTUNCz
 NEFEjFYFaB3Zg8kbwRQH59qDA5rKNIKtfS+pRtknA5GQe/Molvdn9FPZ4uJWXHluyx
 GYHZu2RtSAgkbkAFrcQ813lrl8AhuNTfWmxcyAiu1BhzaJY6MNp8a6tetlA/h+Uxsg
 liv0SzRg42d6GXYYZz3Yky14eSCR9VBectIzR9JjlSiX/1zJfj+HotYp85YkD9YjPs
 2kB6LBReqZq+w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qz//jns6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 7/7] ixgbe: Enable link
 management in E610 device
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
Cc: netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Carolyn Wyborny <carolyn.wyborny@intel.com>, Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 05:10:23PM +0200, Piotr Kwapulinski wrote:
> Add high level link management support for E610 device. Enable the
> following features:
> - driver load
> - bring up network interface
> - IP address assignment
> - pass traffic
> - show statistics (e.g. via ethtool)
> - disable network interface
> - driver unload
> 
> Co-developed-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Signed-off-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

