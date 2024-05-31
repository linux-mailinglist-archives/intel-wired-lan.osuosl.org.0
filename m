Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2C08D6908
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C3A18469A;
	Fri, 31 May 2024 18:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GlNSvHUDAvu3; Fri, 31 May 2024 18:36:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657D084694
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717180576;
	bh=hLmri5PO9NRcCG4bbzbx8bZGjh4dKPw1IBIZTYG5FmU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rLwBrSbpRDZCbJ3nYGuIw84mIKt34s6wbUtc/PjXkoGxw7BNyTpaKo2LT+i2QRyC6
	 lr8GxT1Z4YT2YuecnKZpzSRS4AOUISWtamqR/ozj0e8j2NoGL8KBSoIPaVOoxVVrhh
	 vexvrEfNG8Jyydvn6dhit+42uTWx2c2jN8t5lpS22oZs9XvY6RAaXXJUCcGgbm0r7Y
	 Oh9Ra4Xw8cau7GmMpXpleg3Dq0pgzvaffHAMpbEjRURt+krD/jGlMgx53jRjfOOQEj
	 OIgPedSGHKt+5yD9bgLWlY13pHfIsumQ7YC9gOWb42LcsvQ3bTq4wBWrz0ZY4U91l3
	 tq68fynu9hAZw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 657D084694;
	Fri, 31 May 2024 18:36:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D68021D560A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE8F584694
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:36:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjkQEZ9yLwiR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:36:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0053384673
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0053384673
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0053384673
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:36:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4020CCE1C0A;
 Fri, 31 May 2024 18:36:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B666AC116B1;
 Fri, 31 May 2024 18:36:07 +0000 (UTC)
Date: Fri, 31 May 2024 19:36:05 +0100
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240531183605.GS491852@kernel.org>
References: <20240520103700.81122-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240520103700.81122-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717180569;
 bh=APZp/Sg/IvUU6X9RIdHMs+5h8MyNDaJVSunTiD6hDCQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JOn+msaSKfqWtW6MxJljDTwYafz6gzYTntS9ycyGiGy3ViaJ4/xdM74g5+F8Gk8v8
 yU++uHmBmKdWxpYYH3pR2Cieu1Z8T7tSYlUag9ixkuAUVYeqZnLeYNeNOhDJMnVKl/
 F9HYTcCp5cqTnkCcrZ/uPGXZIn5OsQGubLIhNagrFT42qYhDY6U6bQzsaOh4HXqaWm
 r/bg91pkRb03Wv4tLXvjYdfU02SlNtfXpP48tR+X1b48EsbP6pbd5rGaGbMVwbIyhR
 At4nxX/0Q0deWhbtgy494Hr2f/ureJ9DMJCcfk51e1RXD7MBY/MjnksiZjstAhw038
 hS4wxLSUYMmIQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JOn+msaS
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: implement AQ download
 pkg retry
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
Cc: netdev@vger.kernel.org, naveenm@marvell.com,
 intel-wired-lan@lists.osuosl.org, bcreeley@amd.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 20, 2024 at 12:37:00PM +0200, Wojciech Drewek wrote:
> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
> to FW issue. Fix this by retrying five times before moving to
> Safe Mode.
> 
> Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

