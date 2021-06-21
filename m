Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1969D3AE933
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 14:37:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B444960733;
	Mon, 21 Jun 2021 12:36:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFJE1Ji5pdIn; Mon, 21 Jun 2021 12:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1F8F60648;
	Mon, 21 Jun 2021 12:36:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 332EE1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F97C4032A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vkD1fKxnujFQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 12:36:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA6D040293
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 12:36:51 +0000 (UTC)
IronPort-SDR: B2/tI27+61noE8m2Fk5dphTkiFetwiOGW5hNfIs8e/+Ht9zUsbKWdDKvW1S0wuZis9U3jNmunY
 lpyeOeA3H73g==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="203812342"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="203812342"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:36:51 -0700
IronPort-SDR: iBkIhZuOcr/2W03L8LO40dO7OBD1xCTE4NfLqvr6JahkO6854/XLGX7w/rGa61tLRw2OsIUt8V
 OOZILm4zL7QQ==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486472969"
Received: from unknown (HELO [10.185.172.254]) ([10.185.172.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:36:48 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 michael.edri@intel.com
References: <20210614121939.1246251-1-sasha.neftin@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <fd991e55-56fe-8eda-753b-52515302ff70@linux.intel.com>
Date: Mon, 21 Jun 2021 15:36:46 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210614121939.1246251-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Check if num of q_vectors
 is smaller than max before array access
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/14/2021 15:19, Sasha Neftin wrote:
> Ensure that the adapter->q_vector[MAX_Q_VECTORS] array isn't accessed
> beyond its size. It was fixed by using a local variable num_q_vectors
> as a limit for loop index, and ensure that num_q_vectors is not bigger
> than MAX_Q_VECTORS.
> 
> Suggested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
