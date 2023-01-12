Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FAE666EB6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 10:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5ECFB4032B;
	Thu, 12 Jan 2023 09:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ECFB4032B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673517244;
	bh=5kufTGTtHBHWz5BpHvWCkelCdmdmfyF1GpZEcavT2WM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yDn+s21por5HWs99AMSFvjx96tCYHZoW/1KjyY0Sa2MobKvTWydvca43Hn9n88Uw3
	 obQvJKWZ4o9e5BqtkDlFk/HJTFu8BzEEWkCqcrdt9PKxWbYn3sdfdc/J01HDJ3jLUU
	 rNC5O4QlrFDZT3+7u4X9r2jhC1iyNFk8b8HWr9/4vdiwsvKOQtvFdA5arYYGWm5uAF
	 aE2hLaXznhfI7OEIkZ6FSpK/u9yDxvcoTYSjJyH3qDPM2uK6nKXtkfPOJVUTn8Uztu
	 fjzylcbVcGS7HRJ208T/jbVOy/C+hx8p8tyhTEcPpeXJVzZvEMEEOIJW+oXW3Dp/rS
	 8ivux/6koz6yA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8ek5yY6Pu2E; Thu, 12 Jan 2023 09:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 63D2E401E1;
	Thu, 12 Jan 2023 09:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63D2E401E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD541BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 09:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60CAB401E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 09:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60CAB401E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swLNoKVlPJQZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 09:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FC5B400D6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FC5B400D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 09:53:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="322362342"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="322362342"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:53:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="688282285"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="688282285"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.13.104])
 ([10.13.13.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:53:55 -0800
Message-ID: <9ce9b3fe-61a6-05fa-c842-f7b2e37008cb@linux.intel.com>
Date: Thu, 12 Jan 2023 11:53:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230110054841.1857688-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230110054841.1857688-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673517237; x=1705053237;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=up/zv5xEUZ/xsXuAErr8bT49EY3EunHSrrCg8QSD8ik=;
 b=fbq42jM4yQMBMtqiAdYLSCD1A0jPgg5W7k2iTZXaCwL/LTQhd9qzPp5t
 FA6zdOHR9x6tpWRjXwO9Iep52NaJPrUFhoerU2vNOXmwq8O4pIpMJKC29
 0sCKZfU/DEec1Urkpukm3Qfq6A5UZK8F+muenOIgTZKvBY6JKoK0+WvRW
 PWG7zHEQz5KJorVtk9iSIJncngYraW2Qk4qOlBtIGWacDfns6YCgGdHSZ
 RrsK68o/A6gkqZPiltnWbEGtaiKsLVvNiKESjU9mQy0SxGIE6Peqh37w6
 X1C0f3glu/5jVd1yzVxXJxdNt+alH2BVJaxxPreougvL0kLbyBDXxs890
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fbq42jM4
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] igc: Add ndo_tx_timeout
 support
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/10/2023 07:48, Sasha Neftin wrote:
> On some platforms, 100/1000/2500 speeds seem to have sometimes problems
> reporting false positive tx unit hang during stressful UDP traffic. Likely
> other Intel drivers introduce responses to a tx hang. Update the 'tx hang'
> comparator with the comparison of the head and tail of ring pointers and
> restore the tx_timeout_factor to the previous value (one).
> 
> This can be test by using netperf or iperf3 applications.
> Example:
> iperf3 -s -p 5001
> iperf3 -c 192.168.0.2 --udp -p 5001 --time 600 -b 0
> 
> netserver -p 16604
> netperf -H 192.168.0.2 -l 600 -p 16604 -t UDP_STREAM -- -m 64000
> 
> Fixes: b27b8dc77b5e ("igc: Increase timeout value for Speed 100/1000/2500")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 25 +++++++++++++++++++++--
>   1 file changed, 23 insertions(+), 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
