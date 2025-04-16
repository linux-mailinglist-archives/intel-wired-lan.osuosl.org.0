Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 752C0A904BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 15:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EE8384852;
	Wed, 16 Apr 2025 13:48:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AU9eRruv3Q81; Wed, 16 Apr 2025 13:48:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2CE581E99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744811337;
	bh=G+fPDxzNd9VxC6nzh7mH9IVn094AHlAt+wdqSRQ6qFk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ztjS1IyLbVWNneSGXrxjos44GgzepgUu+TyetgTMY90xn1OUuEDX+9EE86+Pfg65D
	 B3BJgb2KyrCRjS6R2787+B7GxDOesKlXK5g5NAPokhVWafJZmHn7m6gVklLMRprF+p
	 HkedSvIOb9F+nR88chR9K1y8Jd0VF+sbdeRzk9tmZ3+CCEhfNA6xbKMyy8hRn6DAXE
	 7sxTdfnn2iHo+rsOLObIQtqb5V/IBUC92uoZgWcT2CP83fvdP506vDrX6zAYUqP2Q7
	 LP7s1+MMfLhbizpxrFd7EoHwQVTNJy5v8l0zc6stBi4hCk4RAdnoSguSFgQY4UN7Ij
	 gt0Gea91EA0sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2CE581E99;
	Wed, 16 Apr 2025 13:48:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 36F68DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 13:48:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CB88813A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 13:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TltinDyu_eS8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 13:48:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5EE0281DFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EE0281DFE
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EE0281DFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 13:48:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 02BACA49FA7;
 Wed, 16 Apr 2025 13:43:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99163C4CEE2;
 Wed, 16 Apr 2025 13:48:53 +0000 (UTC)
Date: Wed, 16 Apr 2025 06:48:52 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jdamato@fastly.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Igor Raits <igor@gooddata.com>, Daniel Secik
 <daniel.secik@gooddata.com>, Zdenek Pesek <zdenek.pesek@gooddata.com>, Eric
 Dumazet <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>,
 Ahmed Zaki <ahmed.zaki@intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Message-ID: <20250416064852.39fd4b8f@kernel.org>
In-Reply-To: <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744811334;
 bh=fSgnS50n0wAp/FpMmJ8OfCsZHIEtqenXia+MkV04Ttk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WCT0p4IAWVA73/cdlDpYRp/1K7sljtWEcYQghVQx6eIaMgugfHYFzXAIIuV2yXINx
 NTuFIyoHx1BsXrGZ1oDjz2YDerUiyj1uhv1dYf/12w5P5rjoUZ9hJS3VaQ2mT7KX8e
 uU2A9aooBg9of/3dbiveMKODEaCn0OL7DenHZuGkl/QoRbBChuyBcjt6wPG7rUCfX8
 +GZhDdZagJLc5+sjKms7IbfoOMr6JyQ3uDD0uqcAGyyNROWrXnx+oDZXB6eZRQ8uqj
 uD29rhwITXInKYyglxPRBwaTKdRIMnx+3amQJSSOIBw2aiurfLTkrrtAzw2aQTxmLK
 ryIGf9MiDUTew==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WCT0p4IA
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On Wed, 16 Apr 2025 09:13:23 +0200 Jaroslav Pulchart wrote:
> By "traced" I mean using the kernel and checking memory situation on
> numa nodes with and without production load.  Numa nodes, with X810
> NIC, showing a quite less available memory with default queue length
> (num of all cpus) and it needs to be lowered to 1-2 (for unused
> interfaces) and up-to-count of numa node cores on used interfaces to
> make the memory allocation reasonable and server avoiding "kswapd"...
> 
> See "MemFree" on numa 0 + 1 on different/smaller but utilized (running
> VMs + using network) host server with 8 numa nodes (32GB RAM each, 28G
> in Hugepase for VMs and 4GB for host os):

FWIW you can also try the tools/net/ynl/samples/page-pool
application, not sure if Intel NICs init page pools appropriately
but this will show you exactly how much memory is sitting on Rx rings
of the driver (and in net socket buffers).

> 6.13.y vanilla (lot of kswapd0 in background):
>     NUMA nodes:     0       1       2       3       4       5       6       7
>     HPTotalGiB:     28      28      28      28      28      28      28      28
>     HPFreeGiB:      0       0       0       0       0       0       0       0
>     MemTotal:       32220   32701   32701   32686   32701   32701
> 32701   32696
>     MemFree:        274     254     1327    1928    1949    2683    2624    2769
> 6.13.y + Revert (no memory issues at all):
>     NUMA nodes: 0 1 2 3 4 5 6 7
>     HPTotalGiB: 28 28 28 28 28 28 28 28
>     HPFreeGiB: 0 0 0 0 0 0 0 0
>     MemTotal: 32220 32701 32701 32686 32701 32701 32701 32696
>     MemFree: 2213 2438 3402 3108 2846 2672 2592 3063
> 
> We need to lower the queue on all X810 interfaces from default (64 in
> this case), to ensure we have memory available for host OS services.
>     ethtool -L em2 combined 1
>     ethtool -L p3p2 combined 1
>     ethtool -L em1 combined 6
>     ethtool -L p3p1 combined 6
> This trick "does not work" without the revert.

And you're reverting just and exactly 492a044508ad13 ?
The memory for persistent config is allocated in alloc_netdev_mqs()
unconditionally. I'm lost as to how this commit could make any
difference :(
