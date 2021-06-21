Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 162533AE91E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 14:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B701C403A3;
	Mon, 21 Jun 2021 12:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vc5SmV8nMIps; Mon, 21 Jun 2021 12:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51EEC403AF;
	Mon, 21 Jun 2021 12:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2B9B1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEABF400E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmLUaZS0PM6A for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 12:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14398400CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:32:37 +0000 (UTC)
IronPort-SDR: BjqS99dZbaRQNHBj7IK16XRA3nUrBQk37xRYxU/kpaxtu4WyNDsXZm2ssACv6YxxfCpxxz7z12
 XuPwWyQcKGvg==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="205007212"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="205007212"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:32:37 -0700
IronPort-SDR: 5hG0KIY8tVfQu0PHF7t8EPDM3btyoOfB3QtFIBp8mltVSrUEOuTlmyJVRhcxH9jh7gmmXmIZwl
 Osu6Jyh8bWcw==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486472183"
Received: from unknown (HELO [10.185.172.254]) ([10.185.172.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:32:36 -0700
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-4-vinicius.gomes@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <cc6c5ca1-4180-fd71-f677-0c0b0a413086@linux.intel.com>
Date: Mon, 21 Jun 2021 15:32:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210611003924.492853-4-vinicius.gomes@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 3/5] igc: Allow for Flex
 Filters to be installed
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
Cc: kurt@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/11/2021 03:39, Vinicius Costa Gomes wrote:
> Allows Flex Filters to be installed.
> 
> The previous restriction to the types of filters that can be installed
> can now be lifted.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
