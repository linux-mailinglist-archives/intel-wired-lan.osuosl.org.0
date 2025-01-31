Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DC4A23C06
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 11:13:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8BBC40590;
	Fri, 31 Jan 2025 10:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fn-ch5URnIdQ; Fri, 31 Jan 2025 10:13:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA64C4053C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738318387;
	bh=AB9GHPWvEAMVJPUkkEUEuEUM8DAVtfMgzRuHgkwe/ZU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bax4jFBklc4uCuU1G8pgRvFRlwte4K/T6CQLWD9RgTSuCyWpBpEAtQAwd08ICa+h0
	 umdcrv0GgOEh4xGuYL1C73Lquced5rqik1oQ30zCtMW5SNyB1rjNFTl8rhiD6R3pmB
	 9+F5tz9WfH6c6Qr0fIYmgFTEyCuWgqzNkNdmld+RRVuJoONEx418c1ncXltgFeNl4m
	 tpusUf8tcQw7G8tsZAeJ8QW0pJzb4evsK8Nj/yyehH6/Av9T2AV0SdeIVDLO3tZ7EJ
	 9p/PUyZfR8aNXkkGxFJFMwQqXhL+Zx42A8iSGsUNDyq1TMuAPhpzX/kRlSU3ddoEz+
	 4PG6cooeWIWfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA64C4053C;
	Fri, 31 Jan 2025 10:13:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EDED12C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 10:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DB414022B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 10:13:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DIREnMvHp2iY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 10:13:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 536E4409BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 536E4409BD
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 536E4409BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 10:13:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A2A7EA41D69;
 Fri, 31 Jan 2025 10:11:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF540C4CED1;
 Fri, 31 Jan 2025 10:13:01 +0000 (UTC)
Date: Fri, 31 Jan 2025 10:12:59 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250131101259.GG24105@kernel.org>
References: <20250123081539.1814685-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123081539.1814685-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738318382;
 bh=0u1rzgXw3P/ydx0WeR0XXW0LRcwGvHxJ7+/T518MBMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p9rqr1k42iz0ok2s4TGNi8gKOGB8Evewn9G6hOTqtixsiUEDQhN1d0heN5oFnJoOT
 kBClfSa0BEkg+5Z2tP3P4bInzDfugbNNbYDM5n1E51/RBEP/dqKJIAkrMvTb1ehmi4
 jCZc0Do/j7vuUJ1g0nPxUsYWJywIxuhnt4/T+nRSxZUWU19tS+8MhG/3iK5/wc+ThW
 E8ZoTLKrpyZsf0JQt3fKSaK+KjsrA5dZB6Jrq/M3l/XCbTf38b0Av3NFYwiOEOuJJD
 RRFHSHaW4BapDgEamdyz8y4xG4j4SasxTiJUUw5ZwCQ2x3nkUoG0RjHyNTDMxZoUEo
 N5ZIMHWmi13PA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=p9rqr1k4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix memory leak in
 aRFS after reset
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

On Thu, Jan 23, 2025 at 09:15:39AM +0100, Grzegorz Nitka wrote:
> Fix aRFS (accelerated Receive Flow Steering) structures memory leak by
> adding a checker to verify if aRFS memory is already allocated while
> configuring VSI. aRFS objects are allocated in two cases:
> - as part of VSI initialization (at probe), and
> - as part of reset handling
> 
> However, VSI reconfiguration executed during reset involves memory
> allocation one more time, without prior releasing already allocated
> resources. This led to the memory leak with the following signature:
> 
> [root@os-delivery ~]# cat /sys/kernel/debug/kmemleak
> unreferenced object 0xff3c1ca7252e6000 (size 8192):
>   comm "kworker/0:0", pid 8, jiffies 4296833052
>   hex dump (first 32 bytes):
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>   backtrace (crc 0):
>     [<ffffffff991ec485>] __kmalloc_cache_noprof+0x275/0x340
>     [<ffffffffc0a6e06a>] ice_init_arfs+0x3a/0xe0 [ice]
>     [<ffffffffc09f1027>] ice_vsi_cfg_def+0x607/0x850 [ice]
>     [<ffffffffc09f244b>] ice_vsi_setup+0x5b/0x130 [ice]
>     [<ffffffffc09c2131>] ice_init+0x1c1/0x460 [ice]
>     [<ffffffffc09c64af>] ice_probe+0x2af/0x520 [ice]
>     [<ffffffff994fbcd3>] local_pci_probe+0x43/0xa0
>     [<ffffffff98f07103>] work_for_cpu_fn+0x13/0x20
>     [<ffffffff98f0b6d9>] process_one_work+0x179/0x390
>     [<ffffffff98f0c1e9>] worker_thread+0x239/0x340
>     [<ffffffff98f14abc>] kthread+0xcc/0x100
>     [<ffffffff98e45a6d>] ret_from_fork+0x2d/0x50
>     [<ffffffff98e083ba>] ret_from_fork_asm+0x1a/0x30
>     ...
> 
> Fixes: 28bf26724fdb ("ice: Implement aRFS")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

