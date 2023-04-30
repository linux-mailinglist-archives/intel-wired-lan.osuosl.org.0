Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B03556F27AF
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Apr 2023 07:06:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3195F84152;
	Sun, 30 Apr 2023 05:06:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3195F84152
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682831173;
	bh=CEIZrlIfletnS2kNFUCHJfzDT87HgH62OsQXvBbb4sM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o2x0gEpSiONZ3mNH7Q2/8dEg151QsO5JifqT6/jD1mUsuu821znSctZHtZ1feYM1o
	 doDjxhIVQx37Lb8bG7GXhBnJToQHmMGN8tcDD5PgTqAMJZx58f3ZCbApJ3tUqDzqUG
	 okja0r2ITaFHnQhUeXPHpW/SXao5nTYLiDVe79/R7ivjpZbLQIXc380ipt4dwEmYFg
	 Gcp2/rLRuNmGT4mqm2yQocKZlYCtIWmGZmUEyxrhjHeslTJsR5nHWbelOCvK/V3RfS
	 qYulprECjmpC2m339eQwjiMqqZtEJpAzPvs0fpUV1kq9zV0LmXBPM0rqLs2APPICq6
	 kY6UjvzoVsH0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EpUcL6To5ZAC; Sun, 30 Apr 2023 05:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29E1184108;
	Sun, 30 Apr 2023 05:06:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29E1184108
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44CA21BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 05:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CD524074E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 05:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CD524074E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOqErbVp7xNO for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Apr 2023 05:06:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F6384011C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F6384011C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Apr 2023 05:06:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10695"; a="348029657"
X-IronPort-AV: E=Sophos;i="5.99,238,1677571200"; d="scan'208";a="348029657"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2023 22:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10695"; a="728115425"
X-IronPort-AV: E=Sophos;i="5.99,238,1677571200"; d="scan'208";a="728115425"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.36])
 ([10.13.12.36])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2023 22:05:58 -0700
Message-ID: <499598fd-05fc-e3bc-be85-d74b47a0b46c@linux.intel.com>
Date: Sun, 30 Apr 2023 08:05:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vedang Patel <vedang.patel@intel.com>, Jithu Joseph
 <jithu.joseph@intel.com>, Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Stanislav Fomichev <sdf@google.com>, Jacob Keller
 <jacob.e.keller@intel.com>, David Laight <David.Laight@ACULAB.COM>
References: <20230414154902.2950535-1-yoong.siang.song@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230414154902.2950535-1-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682831166; x=1714367166;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wUIy27kaA7x1m/LYtCGQz0bQD3AE4rfsj1cxLUC2Tzk=;
 b=MV/bw3PpAmXweL4gp3ujplDciWYiOscjXD+Z93RytSZUTYujoAssLg7R
 mrMCUUmOg/s52DkRNpN2+ut0k+4DbBuJmpjo5/iRbw5e6p8mC4AlSYej4
 JMAXdPpE3sv5DUCiaQqkUwvAH7fjB5N4uvc5x8E/b2vjsQ2XJJEM5B/yD
 uPRZi/9XKVs5tP98fkIeM7UTI/ErLQwQf0yOd6wLnOF+xEJjDS0uJnCiV
 JXUNr2n8IGKH3nFdXkY/UXV8k2W97P38PxRkbFt69qhDPgOhy089ZVN0p
 hGsC4R1oL5DTNQojPkTVGxR8PJn+l5ZcNvcxqDvI9vj0mgTDDLAqAhpXs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MV/bw3Pp
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] igc: read before write to
 SRRCTL register
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/14/2023 18:49, Song Yoong Siang wrote:
> igc_configure_rx_ring() function will be called as part of XDP program
> setup. If Rx hardware timestamp is enabled prio to XDP program setup,
> this timestamp enablement will be overwritten when buffer size is
> written into SRRCTL register.
> 
> Thus, this commit read the register value before write to SRRCTL
> register. This commit is tested by using xdp_hw_metadata bpf selftest
> tool. The tool enables Rx hardware timestamp and then attach XDP program
> to igc driver. It will display hardware timestamp of UDP packet with
> port number 9092. Below are detail of test steps and results.
> 
> Command on DUT:
>    sudo ./xdp_hw_metadata <interface name>
> 
> Command on Link Partner:
>    echo -n skb | nc -u -q1 <destination IPv4 addr> 9092
> 
> Result before this patch:
>    skb hwtstamp is not found!
> 
> Result after this patch:
>    found skb hwtstamp = 1677800973.642836757
> 
> Optionally, read PHC to confirm the values obtained are almost the same:
> Command:
>    sudo ./testptp -d /dev/ptp0 -g
> Result:
>    clock time: 1677800973.913598978 or Fri Mar  3 07:49:33 2023
> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Cc: <stable@vger.kernel.org> # 5.14+
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
> v2 -> v3: Refactor SRRCTL definitions to more human readable definitions
> v1 -> v2: Fix indention
> ---
>   drivers/net/ethernet/intel/igc/igc_base.h | 11 ++++++++---
>   drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++--
>   2 files changed, 13 insertions(+), 5 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
