Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC53298BA15
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 12:50:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40E10812C4;
	Tue,  1 Oct 2024 10:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RJzWnUsb7Y2l; Tue,  1 Oct 2024 10:50:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9731C81222
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727779849;
	bh=CqQ4/6CqN54g09RWou2QfDwBBfeofc0TMXYTtqSv6PA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kPhE6h3tCLyMwjunt35ZBuirYyYmeiwF0g9qWL3lNN/h4jsBfYgoeGgMQKk1BrBXX
	 RkygAOjyrH0u+2+rtCdwMbcdaBS0p49o9k96bWYbzwf4fOdn7F5ZJdB/oA8U6cZa8F
	 EvpMTKDEzh4+NvVbO1IFYdn+pb6gU4iei9OM4dHe+4YuTE253nGmkCcqPcPSzEky1G
	 Bw9lwRIpbnGwVoOa4wRT53U35GaFtGtZziTbq6At99Ly9Ubz/yxUzN8EYrM747j2eh
	 cMlYw8CGHZV4axbEHeenklFLP1Ii0/5vKqAF2Hhor8s68WrQXhr2w+B4W587kWPcLj
	 hZho2PDM3LNbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9731C81222;
	Tue,  1 Oct 2024 10:50:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8631BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 897D4812A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:50:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZPDGowwzKg8Y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 10:50:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D5DFC81222
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5DFC81222
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5DFC81222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:50:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E7E25A434C1;
 Tue,  1 Oct 2024 10:50:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16CF5C4CEC6;
 Tue,  1 Oct 2024 10:50:42 +0000 (UTC)
Date: Tue, 1 Oct 2024 11:50:41 +0100
From: Simon Horman <horms@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20241001105041.GM1310185@kernel.org>
References: <20240930171232.1668-1-jdamato@fastly.com>
 <20240930171232.1668-3-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930171232.1668-3-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727779844;
 bh=7cExMTorNUc1Uux7+jnxV9kavMLQzVbcPKBnRWiPrBk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wo90k86+jsYQ1lZc1+qSLOG5yLZzed4XviptbpfkZvL2/8xI/2h7rTQRZE3SaKTk4
 o925c46IkVP/8c7on1RNbohQgvcQDm+eFJB6R7BklNFtSs+Bt/scqR325qyGbfnnel
 3QkNy0mY3oVTMkPhCu4PiXDqgIhRMBQUXEoYmP+JvbwEF/ThGXRHMkGltsuf1ojH+P
 XHhsZwvv7FexGHfm/r23uxh/Jk4T3yVMTgPPZ1ctIc9Xv+t4xyflSECv8kCBsGm3lU
 /sQX/M+WgLEY1ladLfCpNplYGWB3QNbROESlGnip4MQIt/JyFApXsppF/Jbbc8ud5+
 Ji1f63xfeMMPw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Wo90k86+
Subject: Re: [Intel-wired-lan] [net-next v3 2/2] e1000: Link NAPI instances
 to queues and IRQs
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 30, 2024 at 05:12:32PM +0000, Joe Damato wrote:
> Add support for netdev-genl, allowing users to query IRQ, NAPI, and queue
> information.
> 
> After this patch is applied, note the IRQ assigned to my NIC:
> 
> $ cat /proc/interrupts | grep enp0s8 | cut -f1 --delimiter=':'
>  18
> 
> Note the output from the cli:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json='{"ifindex": 2}'
> [{'id': 513, 'ifindex': 2, 'irq': 18}]
> 
> This device supports only 1 rx and 1 tx queue, so querying that:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json='{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 513, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 513, 'type': 'tx'}]
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Reviewed-by: Simon Horman <horms@kernel.org>

