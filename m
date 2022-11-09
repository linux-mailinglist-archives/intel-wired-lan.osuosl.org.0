Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DAD622A35
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 12:20:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6917840245;
	Wed,  9 Nov 2022 11:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6917840245
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667992806;
	bh=0jeZxo69v4iYKceVY1wfF3mWV3gWOpTLpajgV+5bcQk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ktBM028sRdq/PtkfAuXKp7WGtPlm1tZI/0yg59cvfMnsj31FL0h3Hxj3Ns3gagt2v
	 dkhz3jKSDm3jiYTGCf5OD7E/k0tmYOxmZ5VtKm27r4gYJu3RU4v0VVq2ZMb/NBTl6O
	 4WSRRXzbd652Iu9ntJRlFDAUfTXbuBY8R0KySTq/WAYB+D8WXFdS1M+14eQMIdmDte
	 laJkmN31k6TVgQ9eCKvJVaeNpQNG1pbP/zyrPfudN7FMAheR4nFQhR7fs3sf/GP5Az
	 xKXfnEQMH793s5K1WrCPsmgobkLF2pYN2NTTomkRuhLJYwnfns4ziQJip0NMIQNhm0
	 ZNdg2zCJYrj5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o9LxFuX5Uh3f; Wed,  9 Nov 2022 11:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34FCC4015F;
	Wed,  9 Nov 2022 11:20:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34FCC4015F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89C7C1BF356
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 11:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7130780BE5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 11:20:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7130780BE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rl359QjLrdHS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 11:19:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 553E380BDC
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 553E380BDC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 11:19:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="309663674"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="309663674"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:19:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="811601696"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="811601696"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.219.86])
 ([10.214.219.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:19:45 -0800
Message-ID: <e49eb50d-b8dd-59de-e4b7-9001b6beedef@linux.intel.com>
Date: Wed, 9 Nov 2022 13:19:42 +0200
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
 t=1667992799; x=1699528799;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZDwLt1JxlL7tE7yCgnQ84ANfngwDWA+sGuiJcNf49J0=;
 b=CNnaTOUFXw1xWUtxTpBgCXbIFl7+IZlpOhXf+xIi8M5DrN/qTmwPwavn
 Tb5k0+q4OGtW6Vff9t8XAR0My3rJ71gjQKk7xmI19l4deI7CJ2NE8bTMn
 ETWeLqiW74OT6yFzuNJfTJC0vMgIoNULi1/HohTIB9jDX8S5f9akvc9rQ
 bqjWv1Z+PVW2pDbEPl8mENI83T1X6ept/FGFIbKh3FrCX4j90t0ap5fjq
 3FLyYRULaAi7lE9g8MYVFOkDkDxoxbX4kuU6lbWZm2PWUnvv0Pdk0QtEr
 kXgoNDio9ejz5+TEdqloCGnJiNzttVp4echCiE5Zj8PsEKSOkP36jgNEr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CNnaTOUF
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
