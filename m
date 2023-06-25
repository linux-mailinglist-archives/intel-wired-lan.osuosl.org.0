Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D64073CEB0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jun 2023 08:28:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4656C40169;
	Sun, 25 Jun 2023 06:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4656C40169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687674522;
	bh=PZCw12wxJ6Mtt1UmpInmf9nIL/b6ZTJVCHrbBDMRv4s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aquu5ZIimu2ms+dVGLCD+WBu7KHWl1oBBB4zVmnoTRjWACwfIzQZ6pdeX5pk0GAdJ
	 MwxW5Mplz6g+Ynaz8N48AHx3gOLYkurgPmT4GsHmASiLgxSU4MrMg/YkyWnzsblvTC
	 f9TDbyFs0WW4tsU6opeLc+4sPIEBqOb1u6swxHoOfi/HFiGrm3PJl5l+N9uEH5isfr
	 i5k8AELjyXukWyzreBNqp4T0BoabrXbdwtJWaxyBdr5srrru8u5VE3PzmkW/qQ/Bmu
	 KwFlOZzERakfQi0fyhXWRhnP3DrgakOhBEi32DNjxNxZMIriL7wTrME3Xp1FwNnqPp
	 l3w1aH2KiqDlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L4_BV_bq4qqI; Sun, 25 Jun 2023 06:28:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49A4540131;
	Sun, 25 Jun 2023 06:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49A4540131
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79AE41BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 06:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EFC4410C0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 06:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EFC4410C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NvOPYqgkhRvU for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Jun 2023 06:28:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EA3B4010E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EA3B4010E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jun 2023 06:28:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10751"; a="350801507"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="350801507"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2023 23:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10751"; a="1046087683"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="1046087683"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.223.122])
 ([10.214.223.122])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2023 23:28:31 -0700
Message-ID: <546387b5-9e18-a0df-2aa9-159b19435a51@linux.intel.com>
Date: Sun, 25 Jun 2023 09:28:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com
References: <20230601162537.1163270-1-kai.heng.feng@canonical.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230601162537.1163270-1-kai.heng.feng@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687674515; x=1719210515;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=C4MG8G7LRWqQ3aeXbDL7mcsgQWK2qLblMjk7Tb7DukY=;
 b=L6gragcR2Fs8Fwby1kBPHa12HpbF7dgdPhWTSLlMmJSBlavMMikHjSiU
 3vQtOhqVTVDdYizofnj0PmSTSXKx8tvmQsHolQBTCJEruR3405Br6/+V+
 mWt5ZtYIZJoHpnZHQwWEXW6FYYFp8+Z0sLODxgt9MA/SG7pm3Y3QYx414
 EAXV/4u7L0PwskDKIlEgFIoVXL40EeSzFndRLLaltCiY4nbozlVOXQ6fn
 GiXp4QH9fzEcaxrwPn9du3pR/nPS+6oaOoVFNgfYyqKaRlplVpCrd9hPA
 E2tDTY3n1hjSAAT0OE5RO08w5Zlmq8jxk6vbaFDcCrCtuhfVDg3rMqtT1
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L6gragcR
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Use PME poll to circumvent
 unreliable ACPI wake
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/1/2023 19:25, Kai-Heng Feng wrote:
> On some I219 devices, ethernet cable plugging detection only works once
> from PCI D3 state. Subsequent cable plugging does set PME bit correctly,
> but device still doesn't get woken up.
> 
> Since I219 connects to the root complex directly, it relies on platform
> firmware (ACPI) to wake it up. In this case, the GPE from _PRW only
> works for first cable plugging but fails to notify the driver for
> subsequent plugging events.
> 
> The issue was originally found on CNP, but the same issue can be found
> on ADL too. So workaround the issue by continuing use PME poll after
> first ACPI wake. As PME poll is always used, the runtime suspend
> restriction for CNP can also be removed.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
