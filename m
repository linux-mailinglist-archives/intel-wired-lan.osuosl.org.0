Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCEC3B2FFC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 15:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE88560BD3;
	Thu, 24 Jun 2021 13:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7LcHoLrgCKbM; Thu, 24 Jun 2021 13:31:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0804D606A5;
	Thu, 24 Jun 2021 13:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 574541BF365
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FD7C415C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPJUWsZ9D5vg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 13:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AF25415B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 13:31:33 +0000 (UTC)
IronPort-SDR: VA7gL/U8pvTA+rw22gDrmzQEXq20IMYxM6+iEYgcjC6WQpKVxlFAIGXpKm8GpkxRHOPww3DhHj
 SWAh6dqQPLaw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194765620"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="194765620"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 06:31:31 -0700
IronPort-SDR: d9LN7b/zL9Ng4eOm4N0bzafp1T1ChF5ik8spLMWnKowP6Xr5nv0Obod9Lg+6Gg/AFuA+PNoQl/
 kvN2sOki9+kQ==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="487755035"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.13.13.106])
 ([10.13.13.106])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 06:31:30 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 michael.edri@intel.com
References: <20210607061912.2356057-1-sasha.neftin@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <62bee0c4-6349-9cdd-c95e-6d8ded864f1c@linux.intel.com>
Date: Thu, 24 Jun 2021 16:31:21 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210607061912.2356057-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Check the PCIm state
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

On 6/7/2021 09:19, Sasha Neftin wrote:
> Complete to commit def4ec6dce393e ("e1000e: PCIm function state support")
> Check the PCIm state only on CSME systems. There is no point to do this
> check on none CSME systems.
> This patch fixes a generation a false-positive warning:
> "Error in exiting dmoff"
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 24 ++++++++++++----------
>   1 file changed, 13 insertions(+), 11 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
