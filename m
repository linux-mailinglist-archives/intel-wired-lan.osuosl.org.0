Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8E1623F23
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 10:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F8FF4011C;
	Thu, 10 Nov 2022 09:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F8FF4011C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668074138;
	bh=ly5Wb4lUvg2R3azrVaFBRd/AWj8lWKs0v9saKsyBcHM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eTiegtJf33UHr2smAwluCQ0Q2yumjEgwCEXx866xzRFUKPREkynfSxRtmsOGjCjNe
	 ShXWMlDma+8kWz72Inbbi5gtlMwTH6DiK4nKRQ0+8r3X4G4AWM0dBRSV2AuaUkGgKI
	 HGFP5vlHLstwdB44RqRDNe3mki9wHohvZ0Bz6JfptQEnmm1SBWA2QvcLD7Y1LNTMxX
	 VEEzJxg9dujLECzbViiT3FDKCnw9Nn2Lv+suJVfxJqCuyrd4T1C6lug9zmTCCPB+aE
	 ORR91K4PWT3AkbeDeS44UjGQ3gyL0PGcuDnoIeVAmCTwy7wmQrzNr9WMLry2WXG+N+
	 BEuqxZZEh9RFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFfg7tYWtfcn; Thu, 10 Nov 2022 09:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56A0540376;
	Thu, 10 Nov 2022 09:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56A0540376
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CA4B1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 09:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13C9B81000
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 09:55:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13C9B81000
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LGr9u1TnlHTj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 09:55:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90EC180FBA
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90EC180FBA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 09:55:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="298765831"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="298765831"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 01:55:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="631600624"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="631600624"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.251.183.157])
 ([10.251.183.157])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 01:55:27 -0800
Message-ID: <03053677-059f-1ee9-436b-20846caddaa7@linux.intel.com>
Date: Thu, 10 Nov 2022 11:55:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20221028130000.7318-1-akihiko.odaki@daynix.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221028130000.7318-1-akihiko.odaki@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668074131; x=1699610131;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=P8QMfD/hql6MIfKYEhb1Q4SRp9fdkDMS3q6vD+aOowE=;
 b=MUsO5puS7pWj2LS6c4ntIlVNVFulpqlF9oeIPBlBLarDpznFddXSPFRH
 4Lu49Dwxp4MhOoC5LCa2KCEGIbC3aPRx+XBYTnWaJ5UJrivCnmHG0oyvV
 RvyKAIy9LDSDzTamIYlAvMYLrgUBOQeEwZlCOkcqp6g3R4lLJLbyiw+jy
 6Mi7MdOdcQ1XpQ63s0FrkbWmQtd2AXHS3wne6JEqMLKoRB/vH8eeDbGbQ
 3aK2pjuupT8gyWVsJyyTITE24H9WKr6DFZMQ3SYh37EO9DHRxgiUk/yNd
 yQp9zPAS1uOdsTYof2TDrY1FVrN8nxnmJ3yv7ePeiPcsjKvaS+EVMZoyf
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MUsO5puS
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Fix TX dispatch condition
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Yan Vugenfirer <yan@daynix.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/28/2022 16:00, Akihiko Odaki wrote:
> e1000_xmit_frame is expected to stop the queue and dispatch frames to
> hardware if there is not sufficient space for the next frame in the
> buffer, but sometimes it failed to do so because the estimated maxmium
> size of frame was wrong. As the consequence, the later invocation of
> e1000_xmit_frame failed with NETDEV_TX_BUSY, and the frame in the buffer
> remained forever, resulting in a watchdog failure.
> 
> This change fixes the estimated size by making it match with the
> condition for NETDEV_TX_BUSY. Apparently, the old estimation failed to
> account for the following lines which determines the space requirement
> for not causing NETDEV_TX_BUSY:
>      ```
>      	/* reserve a descriptor for the offload context */
>      	if ((mss) || (skb->ip_summed == CHECKSUM_PARTIAL))
>      		count++;
>      	count++;
> 
>      	count += DIV_ROUND_UP(len, adapter->tx_fifo_limit);
>      ```
> 
> This issue was found when running http-stress02 test included in Linux
> Test Project 20220930 on QEMU with the following commandline:
> ```
> qemu-system-x86_64 -M q35,accel=kvm -m 8G -smp 8
> 	-drive if=virtio,format=raw,file=root.img,file.locking=on
> 	-device e1000e,netdev=netdev
> 	-netdev tap,script=ifup,downscript=no,id=netdev
> ```
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
