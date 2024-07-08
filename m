Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AD692A417
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 15:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2700681184;
	Mon,  8 Jul 2024 13:52:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pwe8k99Ty_-o; Mon,  8 Jul 2024 13:52:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E7A28117A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720446758;
	bh=jIlQvJ7C/0kiaOsxJ7jgk11kvoEeOWZzHeZS8edDR/Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wkn/8+hhF/6+aGxLZUsIEfnYCe6LDh1JS8u7EMkueTz1vfKb6Zl/xup9zIsxf8MKT
	 5NhsoUwZbXM1pchkgkcehGLtPoqGk2RYh86oAtBdOeyTP2egkx0Z6BKYVqRTi+cXHQ
	 OzqAi288YOo2PiOgykPI43VcSh7N7sJGZt+eDroohr9glhKnFwdW8Zc5sBtXBpikD7
	 EpAOt6fduIeS1QMwMyVARSU6EtlrEOGCgTJaUJvKd5LopSBPa6KytPz2c+KvVC4XP8
	 vJdjMxat17auWcWUrhv9mcnbdpM/ujFdzUD4FDAdUF2EYkdKKN+mVIiAHbgWOZwsnK
	 UeOT1OHMQ8JyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E7A28117A;
	Mon,  8 Jul 2024 13:52:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84B921BF484
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 13:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 700AE81182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 13:52:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ShhVQQyVMtC1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 13:52:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B3CF18117A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3CF18117A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3CF18117A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 13:52:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3E39A60D3A;
 Mon,  8 Jul 2024 13:52:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99AAFC116B1;
 Mon,  8 Jul 2024 13:52:32 +0000 (UTC)
Date: Mon, 8 Jul 2024 14:52:30 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240708135230.GU1481495@kernel.org>
References: <20240704122655.39671-1-piotr.kwapulinski@intel.com>
 <20240704122655.39671-3-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240704122655.39671-3-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720446753;
 bh=LCYVdr6UQo9gzA4OPYFJ4T1bPUoeJNQC5T6gf/CYb/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NmpSpmsolN31ReQoVzmW2WupuBtyn/aIM77MaXeCFjqmaDTzvmrOK/6UT6R+FEcai
 VENesspDvt6veTSea2qmlwp7C7UafOSgJ+XO6kXLtN3gfWkNvu8pz6wTOx3bf2pQqX
 oBVDDhK/sq5P8YamRGSw/ZVUCCmKIb8aPZl3VckIkePsVZeAy4LxkCuIGg8+SHnLrP
 AAXCb8g0/7VAuVtbDwWpkYAUfQnfiVDom2+4Db1MsU8TUihi5PPdrmnY5CHmS4qWGl
 cC2l9zXcgBfAWuRoTqcpMqnrlj6QI8bdynjXCCPXQGhhbb7tSw4itDzjAMfwyQ8cKf
 deOdOdpXa9A8Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NmpSpmso
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 2/7] ixgbe: Add support
 for E610 device capabilities detection
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
Cc: Stefan Wegrzyn <stefan.wegrzyn@intel.com>, netdev@vger.kernel.org,
 Jan Sokolowski <jan.sokolowski@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 04, 2024 at 02:26:50PM +0200, Piotr Kwapulinski wrote:
> Add low level support for E610 device capabilities detection. The
> capabilities are discovered via the Admin Command Interface. Discover the
> following capabilities:
> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
> - device caps: vsi, fdir, 1588
> - phy caps
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Thanks for addressing my review of v7.

Reviewed-by: Simon Horman <horms@kernel.org>

