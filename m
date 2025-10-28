Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D242C14741
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 12:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFF4783EDC;
	Tue, 28 Oct 2025 11:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JqImEYudBCma; Tue, 28 Oct 2025 11:49:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0645083EEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761652172;
	bh=QiK7RPkkoci4AX1FTPiBC0ExbLNiHoqD2BqoMIPPJds=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S2VlBRk9s4LsW4iL4lsCutkhCI9DYSxzyF2bS84zFbxMsaJ6Lw9b2gkltltuLColy
	 Mhr31DIk8+7+3I2VT/HODn2htxgIff2GSE4sFqp8KX50LT28ivl0xqUzd1fEYvXCg7
	 Q7kPKV6/o23GMbj00nKvTLkUK7biZ/8RqfYTa9JNJTJNPEQEaAEK9UVmwyC/GJW99H
	 LZd2fM/yh1qjZTKbxfUziiRWE509kbzgO99wRRMM9gsvmVRiitkGVYoUZCzogCCawX
	 SjzWvBxVImsBrbYJrBRlVBViSfYwUxMyvlMlwE5OXKHy50jRCyTIX1WLn6xY87KYFW
	 pRhd850ZEqvhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0645083EEB;
	Tue, 28 Oct 2025 11:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 23A8543F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 11:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15E8B83EBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 11:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vDwSeq0s8w3k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 11:49:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 673FD83E77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 673FD83E77
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 673FD83E77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 11:49:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id BBA6948DE5;
 Tue, 28 Oct 2025 11:49:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04417C4CEE7;
 Tue, 28 Oct 2025 11:49:26 +0000 (UTC)
Date: Tue, 28 Oct 2025 11:49:24 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>, Qi Zhang <qi.z.zhang@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <aQCtxIJiuVADyc1R@horms.kernel.org>
References: <20251027093736.3582567-1-aleksandr.loktionov@intel.com>
 <20251027093736.3582567-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027093736.3582567-6-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761652168;
 bh=JmqcCi+GOwJI9weQpXLYFTgQXGBYVITGNtQadOF6pPU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oOK34LRGnCMqUglM2hkkkCqZABMvjePIM8cH4mbKXDY20x2UVK1qn8K1SalmSSLkw
 FkRrFsPaXjo3JWWk0bjaR8WFvp3cDZpCbaH30Y+6idGPHxkzqepAkI4E4Lz9SPQ1Uy
 dChwmYlLrzc3NOg5tUsLTh47pbU2OK6GsEGqCwiZcCIy68NoIdPQ/ZEUOj2mdgCfjm
 tOH3oOHYHxhZuw2PuWrEb3F24tKzJppfK7N8KTIS6AmtDLihp9iITCY678+4EJaVT/
 xdmtUyPmlwDkPCzAGWg0JFSAItT5B1KKGQMUad+ppQFMyKp6G6OqzORINA1r7pf2Xq
 1FZskvf0cgdvg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oOK34LRG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 5/6] ice: Extend PTYPE
 bitmap coverage for GTP encapsulated flows
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

On Mon, Oct 27, 2025 at 10:37:35AM +0100, Aleksandr Loktionov wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Consolidate updates to the Protocol Type (PTYPE) bitmap definitions
> across multiple flow types in the Intel ICE driver to support GTP
> (GPRS Tunneling Protocol) encapsulated traffic.
> 
> Enable improved Receive Side Scaling (RSS) configuration for both user
> and control plane GTP flows.
> 
> Cover a wide range of protocol and encapsulation scenarios, including:
>  - MAC OFOS and IL
>  - IPv4 and IPv6 (OFOS, IL, ALL, no-L4)
>  - TCP, SCTP, ICMP
>  - GRE OF
>  - GTPC (control plane)
> 
> Expand the PTYPE bitmap entries to improve classification and
> distribution of GTP traffic across multiple queues, enhancing
> performance and scalability in mobile network environments.
> 
> --
>  ice_flow.c |   54 +++++++++++++++++++++++++++---------------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)

The four lines above seem out of place.
And as git truncates the commit message at the ('--')
the tags below are missing in it's view of the world.

> 
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Co-developed-by: Jie Wang <jie1x.wang@intel.com>
> Signed-off-by: Jie Wang <jie1x.wang@intel.com>
> Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

...
