Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE7C859F92
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 10:22:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4DA54074D;
	Mon, 19 Feb 2024 09:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W9oebdCI7aTc; Mon, 19 Feb 2024 09:22:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 109A740720
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708334545;
	bh=7nlB9kTiW551c1uhV269PifLlRanP+p/PkrngkuvCLM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7mo17VSN2+VlYiUTbSIa9vmimgWwedMn3WN5JMlRV6eV/5TDBMA05P6Ea+0TNhnVX
	 S4IMM9doicYW09zO53aFjGh777nzO0j2p9GI6HmTwdCKTAYtjiFub9l6HfwB/hiypy
	 2yJRVQPPiT/55ZekMv+bgysduP2EOhqv9lXQPjFmvZvzTHvXlPISl4WB15pk22reI5
	 +16QV+JmGEuRi6NFUBL95XIeIAK82SN2whA1mJPHmLJ7W/WpR4GwV1IcMax7zrN6aB
	 zAX4eFWAlfTqnIj/RV1OApDAZ2LNkObLczRDYqpbRvK8ax4Ank2ecqbMoC6Oi3AWkU
	 4KxYqS7ZIFmNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 109A740720;
	Mon, 19 Feb 2024 09:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10AC31BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EFC5540736
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94jHQZbrG060 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 09:22:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4C5EC40720
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C5EC40720
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C5EC40720
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:22:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CD26960204;
 Mon, 19 Feb 2024 09:22:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B5CAC433C7;
 Mon, 19 Feb 2024 09:22:18 +0000 (UTC)
Date: Mon, 19 Feb 2024 09:22:16 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240219092216.GT40273@kernel.org>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
 <20240210220109.3179408-3-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240210220109.3179408-3-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708334540;
 bh=cqhT+74jMS/y3CvA29elHMcdXkWm7rk1p2NPRXtt7Jg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YVjO1g5qgZhdv5kKrgNWOVv9jQadckfvjZbQKGe8FI4Y7QUlkLA0W+jM1P56nCHu0
 XPNF7PNzlnaykbCFmUSMdmFVQMgWkgmDhcBzzAcvtwGbdMljPkUrXYCIT0iZb8EcGx
 u+du8QtWtY2hfuiutoHbY+977duM8+37Hv7dsezPQP3vwvDf5txqLRpCv8gRjsCH5R
 ZWtJ536c7lD/wllWWkpgPMGPoqnGPp716fsDGqM38NlLO6iMsQjq/4clZDmh4wLcgz
 Wdn0UL/QTFgqsS6W1qUAQS3NAwup9z6ErQx+jegpiTfadwHSzFcJmHIYJbO1SGYykl
 jZsJh7VhgzOxQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YVjO1g5q
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implement
 modern PM ops declarations
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 10, 2024 at 02:01:09PM -0800, Jesse Brandeburg wrote:
> Switch the Intel networking drivers to use the new power management ops
> declaration formats and macros, which allows us to drop __maybe_unused,
> as well as a bunch of ifdef checking CONFIG_PM.
> 
> This is safe to do because the compiler drops the unused functions,
> verified by checking for any of the power management function symbols
> being present in System.map for a build without CONFIG_PM.
> 
> If a driver has runtime PM, define the ops with pm_ptr(), and if the
> driver has Simple PM, use pm_sleep_ptr(), as well as the new versions of
> the macros for declaring the members of the pm_ops structs.
> 
> Checked with network-enabled allnoconfig, allyesconfig, allmodconfig on
> x64_64.
> 
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

