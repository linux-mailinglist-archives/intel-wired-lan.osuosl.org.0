Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 395A0898854
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 14:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6A1B419D6;
	Thu,  4 Apr 2024 12:55:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zcYZx_86kOpR; Thu,  4 Apr 2024 12:55:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E856B4189B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712235339;
	bh=ViUegWaXlivcRT6tyb5DdL8TZIko2HJfQNQ8reLljuU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uE4UDbOv1WAmKM7WM3FWYstU+xe6HrsG1m76/uFHpO/TvwiLgfliIEGudX0FHtcVx
	 h2079E8y0uF9cNAE9VXxRDabW9+vMS7uNRxUzHaO7S/NsehISjePyRkVWmMYtxwsfq
	 ugFvCNjWyqkat8givZL/pKqo6W4hZ1LeBHlQ78m5hFPKpoSRqVjOhNzMHuLjclIAGa
	 6zSxdNKHncrkHPLSxTtA7POWfYkEQlbMxYun4TXjkePxb1QFGqK1SOAlyPmJw6sS84
	 9ryGuBZM1UnawxQKpmTNWtcFhj7lveoAKabBiT3Bd8Hh3PglU4a4FKOz2PsRn3/DG6
	 W/pCDEvs97KUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E856B4189B;
	Thu,  4 Apr 2024 12:55:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0376A1BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E035482D40
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kOlyf8Z2vWiT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 12:55:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 031ED82BFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 031ED82BFD
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 031ED82BFD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:55:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4F6F1CE2FCB;
 Thu,  4 Apr 2024 12:55:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81528C433F1;
 Thu,  4 Apr 2024 12:55:27 +0000 (UTC)
Date: Thu, 4 Apr 2024 13:55:25 +0100
From: Simon Horman <horms@kernel.org>
To: Lukasz Plachno <lukasz.plachno@intel.com>
Message-ID: <20240404125525.GQ26556@kernel.org>
References: <20240403102402.20144-1-lukasz.plachno@intel.com>
 <20240403102402.20144-3-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240403102402.20144-3-lukasz.plachno@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712235329;
 bh=piYo9QgAQMJLzSMJ3LRhK+TE3bBd7tdG5/UH/HfIJc0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IUDEOBspoRxl/DL7MB77NtCe+CapCd0Y8/dwk83ZnBkwXRHtpBTFfC/92Un7GZPEY
 ekVMARg5hIsRmYeHMeVdJTmOBRPxFFdlqlQhucDAMGC3PeOzPg+xa/Nj/essVyvZii
 UerZRHaEBQ0CiToYRVBb5pKM1VTBE8Q8iR1SC55GpAPxRkwuwZjkm508K0L58H6r0l
 e3el3gIXOrs8tPyF+mjsiKFlExp83Lan56AB4FPDWFjhV99SGayMjMdZSF1MB8Ch5s
 s3oo+tgel35LpVM2MrkAZ6ks6Z+XqEvpWQdYYQ7FMahk1XevXE0vgfvDCvWe+f3g2F
 1/KROFhLVjJmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IUDEOBsp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 03, 2024 at 12:24:02PM +0200, Lukasz Plachno wrote:
> From: Jakub Buchocki <jakubx.buchocki@intel.com>
> 
> Add support for 'flow-type ether' Flow Director rules via ethtool.
> 
> Create packet segment info for filter configuration based on ethtool
> command parameters. Reuse infrastructure already created for
> ipv4 and ipv6 flows to convert packet segment into
> extraction sequence, which is later used to program the filter
> inside Flow Director block of the Rx pipeline.
> 
> Rules not containing masks are processed by the Flow Director,
> and support the following set of input parameters in all combinations:
> src, dst, proto, vlan-etype, vlan, action.
> 
> It is possible to specify address mask in ethtool parameters but only
> 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
> The same applies to proto, vlan-etype and vlan masks:
> only 0x0000 and 0xffff masks are valid.
> 
> Testing:
>   (DUT) iperf3 -s
>   (DUT) ethtool -U ens785f0np0 flow-type ether dst <ens785f0np0 mac> \
>         action 10
>   (DUT) watch 'ethtool -S ens785f0np0 | grep rx_queue'
>   (LP)  iperf3 -c ${DUT_IP}
> 
>   Counters increase only for:
>     'rx_queue_10_packets'
>     'rx_queue_10_bytes'
> 
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

