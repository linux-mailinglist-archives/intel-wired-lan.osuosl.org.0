Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5EA902968
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 21:36:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D638560A74;
	Mon, 10 Jun 2024 19:36:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nu2Zn_vpgqe5; Mon, 10 Jun 2024 19:36:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5C0860A77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718048180;
	bh=jYzuoLcn+paF8D6hwBRNWpyNSs/pBEMZxZI5thdD4JQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AuBRINjzqVkN7k8hTQ69ZQhFC9UmufLGxtEvGKHRN9JFC6T1KeEyemJlmCY2oBNTv
	 xjDlombsNCSELuMk7SB5RUaCCS8fUBnLYkj6yUXeuk6IE8qjhy+WClStgQEsNT6KRB
	 ARBMQXg+BC9z7AiPVMcKb9A/fPP9HatLs2BDkQpQeb8LAkZSNH7FbEUjqnQob+NzK8
	 G0yeicRebx2R6z24CoSP3o9qjtRBn1ZfvswVBHENr2PPu27oEB4N9yaEPKdghav2fl
	 07eK3v4b9xJkWGJ/OlHaBUi9nXRafQBQKZKtZDvcQl1BHb9qPSYQdx/JdTryq2vBgj
	 xwgS1bqwwMKhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5C0860A77;
	Mon, 10 Jun 2024 19:36:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54F3F1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 19:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E4A44032B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 19:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wcJwB-01JwgR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 19:36:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E026D40317
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E026D40317
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E026D40317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 19:36:17 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1sGkoK-00HK7b-71; Mon, 10 Jun 2024 21:36:08 +0200
Date: Mon, 10 Jun 2024 21:36:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Richard chien <m8809301@gmail.com>
Message-ID: <e9b5eef7-8325-4d71-bbb6-ba063733484c@lunn.ch>
References: <20240609085735.6253-1-richard.chien@hpe.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240609085735.6253-1-richard.chien@hpe.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=jYzuoLcn+paF8D6hwBRNWpyNSs/pBEMZxZI5thdD4JQ=; b=CeU/QKAfY8l0/tShQA7/RW8iAi
 P8z6WQPAnlL5zdyFAvbme/u2okBddIQLYPCZxGpylS38HYN3FgcpYYE8elpC88906sa5drmszmDvJ
 1K5xkKm7pfk8O6Ih3yMTBhRnGHQCL4YbFnSsU43lLy2sx06AejdsDEbKD75HCapgR0dc=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=CeU/QKAf
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add support for firmware update
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 Richard chien <richard.chien@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jun 09, 2024 at 04:57:35PM +0800, Richard chien wrote:
> This patch adds support for firmware update to the in-tree ixgbe driver and it is actually a port
> from the out-of-tree ixgbe driver. In-band firmware update is one of the essential system maintenance
> tasks. To simplify this task, the Intel online firmware update utility provides a common interface
> that works across different Intel NICs running the igb/ixgbe/i40e drivers. Unfortunately, the in-tree
> igb and ixgbe drivers are unable to support this firmware update utility, causing problems for
> enterprise users who do not or cannot use out-of-distro drivers due to security and various other
> reasons (e.g. commercial Linux distros do not provide technical support for out-of-distro drivers).
> As a result, getting this feature into the in-tree ixgbe driver is highly desirable.
> 
> Signed-off-by: Richard chien <richard.chien@hpe.com>

How about you work on one driver at a time, to learn about the
processes for submitting to the Linux kernel.

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#netdev-faq

https://docs.kernel.org/process/submitting-patches.html

https://www.kernel.org/doc/html/latest/process/coding-style.html

I would also think about why Intel has not submitted this code before?
Maybe because it does things the wrong way? Please look at how other
Ethernet drivers support firmware. Is it the same? It might be you
need to throw away this code and reimplement it to mainline standards,
maybe using devlink flash, or ethtool -f.

One additional question. Is the firmware part of linux-firmware? Given
this is Intel, i expect the firmware is distributeable, but have they
distributed it?

	Andrew
