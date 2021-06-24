Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1F13B302B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 15:36:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF2CF415CA;
	Thu, 24 Jun 2021 13:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q77-J1uKGsIw; Thu, 24 Jun 2021 13:36:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9CA1415C5;
	Thu, 24 Jun 2021 13:36:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9DD1BF365
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C97A83AB2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tz8nlniXfTZF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 13:36:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6585683A9C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:36:14 +0000 (UTC)
IronPort-SDR: n5gvEySeghQ7/qzB7cKJo5NldrLAoR4QMrLCy7tyuiYcmgUSi0ExodXiCz8gD1WOdSqwsp++yz
 PY0KGWKXL6Pw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="268601116"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="268601116"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 06:36:12 -0700
IronPort-SDR: R5Xc8qEEVilXjr3Pj7jfX1PCT+VlgdkBUKhaZCPK6q652CxWD7e/GQNYL9oHWHcUJV4Lv6WcEZ
 S/1bjbFP0OoQ==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="487756521"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.13.13.106])
 ([10.13.13.106])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 06:36:10 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 michael.edri@intel.com
References: <20210616041930.1827357-1-sasha.neftin@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <98d4f29d-c7ee-b8e4-dc2f-30d97ddbcb0f@linux.intel.com>
Date: Thu, 24 Jun 2021 16:36:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210616041930.1827357-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Add space to the debug
 print
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

On 6/16/2021 07:19, Sasha Neftin wrote:
> Minor fixes to allow debug prints more readable.
> 
> Fixes: 3cf31b1a9eff ("e1000e: bump up timeout to wait when ME un-configures ULP mode")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> v1 -> v2: addressed compilation warnings
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
