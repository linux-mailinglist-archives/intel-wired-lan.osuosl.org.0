Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD123E3A2A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Aug 2021 14:15:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04B9940317;
	Sun,  8 Aug 2021 12:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jAiz1XXlNebp; Sun,  8 Aug 2021 12:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FC6F402CE;
	Sun,  8 Aug 2021 12:15:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9581BF39F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Aug 2021 12:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8ADB9402AF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Aug 2021 12:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HHQF66Gi26G9 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Aug 2021 12:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4749240219
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Aug 2021 12:15:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10069"; a="194833457"
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="194833457"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2021 05:15:27 -0700
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="524736267"
Received: from dfuxbrum-mobl.ger.corp.intel.com (HELO [10.214.240.171])
 ([10.214.240.171])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2021 05:15:26 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 michael.edri@intel.com
References: <20210718041031.3619696-1-sasha.neftin@intel.com>
From: "Fuxbrumer, Dvora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <e5df4ab3-50f9-7a78-be51-40bed05fd71a@linux.intel.com>
Date: Sun, 8 Aug 2021 15:15:23 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210718041031.3619696-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Do not take care about
 recovery NVM checksum
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/18/2021 07:10, Sasha Neftin wrote:
> On new platforms, the NVM is read-only. Attempting to update the NVM
> is causing a lockup to occur. Do not attempt to write to the NVM
> on platforms where it's not supported.
> Emit an error message when the NVM checksum is invalid.
> 
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=213667
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Suggested-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 18 +++++++++++-------
>   1 file changed, 11 insertions(+), 7 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
