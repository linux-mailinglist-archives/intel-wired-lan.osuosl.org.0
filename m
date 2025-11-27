Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C89CC8E15E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 12:45:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE29940F36;
	Thu, 27 Nov 2025 11:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uUOHjDWuuv0a; Thu, 27 Nov 2025 11:45:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37F6040FCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764243924;
	bh=Ljq+9KxCMvW56uHHOvKZNm8CvtHZyhMEFaXb+ARbVEw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tev+L5J6cK65iJbc5CjaCbNFaI/RBc7BCikJLObYT4Tuw+tqU5UKUPmot0nz3UJUe
	 tMUGoeuozBu1lgtztSMChCMlhjhNzAw9BDR2HOsTfJB9lhDEVdz9whuh2qh8bjvsUl
	 KanDrQBw+Um9C7QSyEoijcnUZNqPcZXyLujWbnLBCgxXDQOIn86hS3iYtlcEgJo2uR
	 08JhlsofFokUz/Esb2eOujuVhvH6c5kpj2wddaSvsMvJNE8zN6gkKXVrFtH+usBNro
	 OUuh/qAC1/D1qlvhEhbglVLzmdBmUk6CDWSyFQud3a0nh6EmOu1d3cZ5bxk2EGRtnS
	 /eVr0uLLNLFhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37F6040FCF;
	Thu, 27 Nov 2025 11:45:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A0BFEDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92EF760AE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:45:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 046YUTK5Fky4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 11:45:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A5D9460AD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5D9460AD3
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5D9460AD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:45:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6C498401AE;
 Thu, 27 Nov 2025 11:45:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03090C4CEF8;
 Thu, 27 Nov 2025 11:45:19 +0000 (UTC)
Date: Thu, 27 Nov 2025 11:45:17 +0000
From: Simon Horman <horms@kernel.org>
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <aSg5zR-6ZYXBuIVd@horms.kernel.org>
References: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
 <20251124184750.3625097-4-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124184750.3625097-4-sreedevi.joshi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764243921;
 bh=4N8aVeG3r57xJFID0/PYHsDmVbIx5RzBSTf7W1TTCIg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bOPbEcREP3YuG7SxiKodW5WZlTPecxukASxDGGJ0NiJyIn8zD943JUJ3g23XPF+WA
 EOzRZIlz2/MXGZytK3x9a3T/Zc4t5M2lEsiy7U5+gzJ/Fp+emW3Gq/Fu58h6pYeKgH
 PKiNDw9xtZArenxemSOniO4HFFrDNeOr6CBOcvEXjfyeXsEmgblsxXBPfieOcUXWJ4
 IedvA9QpqRRpq3gYDYh5iV8NPDywHsdtgWclupnxN+FekY6/4UD8RMjJQu1Kf6VW++
 TcR4reF7yjQi2BAXeSk6JtK4zlLwpL2FQQ+PTG5G6Pl5WHM178uDXGEHe8hyHZLFvS
 z3yhXYt19VHMA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bOPbEcRE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] idpf: Fix RSS LUT NULL
 ptr issue after soft reset
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

On Mon, Nov 24, 2025 at 12:47:50PM -0600, Sreedevi Joshi wrote:
> During soft reset, the RSS LUT is freed and not restored unless the
> interface is up. If an ethtool command that accesses the rss lut is
> attempted immediately after reset, it will result in NULL ptr
> dereference. Also, there is no need to reset the rss lut if the soft reset
> does not involve queue count change.
> 
> After soft reset, set the RSS LUT to default values based on the updated
> queue count only if the reset was a result of a queue count change and
> the LUT was not configured by the user. In all other cases, don't touch
> the LUT.
> 
> Steps to reproduce:
> 
> ** Bring the interface down (if up)
> ifconfig eth1 down
> 
> ** update the queue count (eg., 27->20)
> ethtool -L eth1 combined 20
> 
> ** display the RSS LUT
> ethtool -x eth1
> 
> [82375.558338] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [82375.558373] #PF: supervisor read access in kernel mode
> [82375.558391] #PF: error_code(0x0000) - not-present page
> [82375.558408] PGD 0 P4D 0
> [82375.558421] Oops: Oops: 0000 [#1] SMP NOPTI
> <snip>
> [82375.558516] RIP: 0010:idpf_get_rxfh+0x108/0x150 [idpf]
> [82375.558786] Call Trace:
> [82375.558793]  <TASK>
> [82375.558804]  rss_prepare.isra.0+0x187/0x2a0
> [82375.558827]  rss_prepare_data+0x3a/0x50
> [82375.558845]  ethnl_default_doit+0x13d/0x3e0
> [82375.558863]  genl_family_rcv_msg_doit+0x11f/0x180
> [82375.558886]  genl_rcv_msg+0x1ad/0x2b0
> [82375.558902]  ? __pfx_ethnl_default_doit+0x10/0x10
> [82375.558920]  ? __pfx_genl_rcv_msg+0x10/0x10
> [82375.558937]  netlink_rcv_skb+0x58/0x100
> [82375.558957]  genl_rcv+0x2c/0x50
> [82375.558971]  netlink_unicast+0x289/0x3e0
> [82375.558988]  netlink_sendmsg+0x215/0x440
> [82375.559005]  __sys_sendto+0x234/0x240
> [82375.559555]  __x64_sys_sendto+0x28/0x30
> [82375.560068]  x64_sys_call+0x1909/0x1da0
> [82375.560576]  do_syscall_64+0x7a/0xfa0
> [82375.561076]  ? clear_bhb_loop+0x60/0xb0
> [82375.561567]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> <snip>
> 
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

