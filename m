Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A55A47BFF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 12:23:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E7AB40C9B;
	Thu, 27 Feb 2025 11:23:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xEKCLkIMzi-I; Thu, 27 Feb 2025 11:23:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86714412E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740655428;
	bh=Q4zc93KPjRpKHMlGIPIkdilH/09HURmBk3szVnXY1/M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kVpKU13QsfiyqOB5Ky+hSlSA9iWK596rNMu/sfY/aHn3Zd8ft9qy14dr70vOT4Etd
	 z8zC9a9t2/KWZB49WdmY/GTt9pb7ayzxwv5yRYshHEtPRlPPTJYL74JtqFrj3iadS3
	 TamtnLPYFKfbl06UDVpCzb0v871ID5hlKoYjShhqO8TBSlPwZk4pRRbnaoS3kjH+yB
	 Ya4cYZBVvyKD9zXotpIUlU7k12paUpjuKZoc8goEW+xkoAL+oR4PFjWm5gq8aqOKC/
	 0ZTXQ92N5nzaCLAIxZK3vIcrYtJ8240DgfTzKm1gdSzlVUYRsDnwj68svxSbNswAaH
	 cOoJ/3kB6luww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86714412E9;
	Thu, 27 Feb 2025 11:23:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7750B69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 11:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B3A8408D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 11:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wd5kQpZ51UNj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 11:23:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04::f03c:95ff:fe5e:7468; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 94FA040795
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94FA040795
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04::f03c:95ff:fe5e:7468])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94FA040795
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 11:23:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id ACC416112B;
 Thu, 27 Feb 2025 11:23:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E1D4C4CEDD;
 Thu, 27 Feb 2025 11:23:42 +0000 (UTC)
Date: Thu, 27 Feb 2025 11:23:40 +0000
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 pmenzel@molgen.mpg.de, andrew@lunn.ch,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250227112340.GE1615191@kernel.org>
References: <20250221154917.3710-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221154917.3710-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740655423;
 bh=e9Nho5OF8tCuj0g5OKDSBx3+nvAcIOynZbsbwusFglA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i2ndC/MXz7RLeVo2zDgbiBT6xvY5pXev1D9Y7uKgrFw4ZSRKfdyn5zHJ836exU7CU
 csb4/P0Wd/ZXv8XbVlfWB0a1NnwUd2y9RHGT4D311YkWo6cUixNYYbux55VSqI4zjm
 N+Nh9e7N5xAmH/3NGMnZtmxmIBNGiKdb7Ly+BlYDq7FMZLBE8yeypTbw4AjpQxqjiJ
 h0lPXNK4iNLzTCIrBzw25ON5EkXJLNOD5SdzZYxGk1Xypw7vaxZPXa2ZxBrsjOv+o7
 STego9Kn3EQjK98kiW8RcgzX7VfY1pAiRBVBHCd55fWgxhiCEQeOhIx6cJ15TlHC5/
 Ws+EvSlk1AmNg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=i2ndC/MX
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ixgbe: fix media type
 detection for E610 device
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

On Fri, Feb 21, 2025 at 04:49:17PM +0100, Piotr Kwapulinski wrote:
> The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
> device") introduced incorrect media type detection for E610 device. It
> reproduces when advertised speed is modified after driver reload. Clear
> the previous outdated PHY type high value.
> 
> Reproduction steps:
> modprobe ixgbe
> ethtool -s eth0 advertise 0x1000000000000
> modprobe -r ixgbe
> modprobe ixgbe
> ethtool -s eth0 advertise 0x1000000000000
> Result before the fix:
> netlink error: link settings update failed
> netlink error: Invalid argument
> Result after the fix:
> No output error
> 
> Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

