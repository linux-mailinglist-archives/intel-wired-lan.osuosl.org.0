Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4F0612A53
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Oct 2022 12:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 905EC403BF;
	Sun, 30 Oct 2022 11:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 905EC403BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667129075;
	bh=0jeZxo69v4iYKceVY1wfF3mWV3gWOpTLpajgV+5bcQk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vzdElPf6pZRjOwRQwUApmXWL+tfRQQq1wu3DT79L6Q2VdSC5b0qKRXQqlMqB8MvnL
	 LYZilZEIxUXwtJOIydlY/italevBoDmSgqLePGxDT04834FfvbS8FB+5Oyg/ip5X+D
	 dJISTqMiVghLIhHiedHuOXJxhiCTodnvHgTipufZpr7eBLV/tU9mCxfTB8vJetSEmM
	 JW+6b8oqVxhkxpkBmtDNd9GN0nlcqBUHjNZGivAYKJdzH2AO4sPLOvxYFkCNqTE/Fm
	 kns7n7ILxc3PKmz5GZaewat8P4neMLqoXPrevfEYgNTXuCCVePfPrq5UhkGrmc0Hpu
	 03q9T8RyFV3eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4x2Zfte3Myfs; Sun, 30 Oct 2022 11:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABE5A40399;
	Sun, 30 Oct 2022 11:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABE5A40399
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4226D1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Oct 2022 11:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1802640355
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Oct 2022 11:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1802640355
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bHBnkqbLO4nW for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Oct 2022 11:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F5B5402FD
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F5B5402FD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Oct 2022 11:24:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10515"; a="307464263"
X-IronPort-AV: E=Sophos;i="5.95,225,1661842800"; d="scan'208";a="307464263"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 04:24:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10515"; a="758550970"
X-IronPort-AV: E=Sophos;i="5.95,225,1661842800"; d="scan'208";a="758550970"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.234.205])
 ([10.214.234.205])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2022 04:24:24 -0700
Message-ID: <fe7ce0bb-35b6-e16f-d86c-766a040b76df@linux.intel.com>
Date: Sun, 30 Oct 2022 13:24:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Akihiko Odaki <akihiko.odaki@daynix.com>
References: <20221013050044.11862-1-akihiko.odaki@daynix.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221013050044.11862-1-akihiko.odaki@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667129068; x=1698665068;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZDwLt1JxlL7tE7yCgnQ84ANfngwDWA+sGuiJcNf49J0=;
 b=V/WX6BUm8C60H1EeydmCKrrxRXBWhoaQTtJSIq+0CQs5/BStxcZuc70z
 +sdhX1JdTiX6iCgtQ7GblbWVYGlh6IWpe1lxtrMffwRy/v0e/+2b7Sdgj
 HYRa9b/lSqtQzKuQe/Ku3jhIqFzNt+OGGEI+FX/KDrTzH2bEINLN4DGT3
 +cLNJ7I3giiPv+mFwXqxJ4qJK2k+NI1usRaZlYz95xE89UYu0KmESNyf1
 l9aBmp8tDfGQUSKhJQsYzzAPElPPrS9DZeX+ZujEGSctS0yjZqsCyWUMg
 LGepxhHrunQQ7sQuF64Bgd0JLVyuglT4LU15vnmi9TU6Hgj7rhSajEh/E
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V/WX6BUm
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Fix TX dispatch condition
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Yan Vugenfirer <yan@daynix.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/13/2022 08:00, Akihiko Odaki wrote:
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
>> 	/* reserve a descriptor for the offload context */
>> 	if ((mss) || (skb->ip_summed == CHECKSUM_PARTIAL))
>> 		count++;
>> 	count++;
>>
>> 	count += DIV_ROUND_UP(len, adapter->tx_fifo_limit);
> 
> This issue was found with http-stress02 test included in Linux Test
> Project 20220930.
> 
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
