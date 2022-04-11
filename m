Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A00854FBA9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Apr 2022 13:12:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 343B383E6B;
	Mon, 11 Apr 2022 11:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SkJWlflOywpH; Mon, 11 Apr 2022 11:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3501B83E4E;
	Mon, 11 Apr 2022 11:12:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A50A1BF424
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 11:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94D0E416C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 11:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nryxlSmUgEAA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 11:12:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82E02416C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 11:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649675521; x=1681211521;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cwTzOAnmG07LmH0LcS2rBUbZ7G4jGkzClHjwgNAjXrU=;
 b=idpldnPVAVqIjQiUKuw0VbzlBRP87QElaEctGjmGwQ1TFP4c/y000602
 bfbohjFjMXMwPjV6yz4woIoz2b+ARSF+VjFyHFJyd9RGYSM437FmigSaj
 Tq+SiDkEs6mytP0gOJ9K53dcsfgFflJA4EaQdcQE9U1mzCCcC+Ef3xXrV
 YbKYuQC/gDrzJoMc5jbYQ4deOSDwU22VxTqR/1zO4OV7aiLDtIll0Qz2z
 Hx43JTaPXpjc2ETIryb3dYkxsPtBhcGcLPHb+cwxqWopMIZzN0QjshZhu
 CfXZljtQCAWENFj+I62dUM8N2vb6iUhwYuErE1eI22ZeRhDCQAgIYxmJ5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="325002238"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="325002238"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 04:12:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="723927028"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 04:11:54 -0700
Message-ID: <116e8d8a-a63f-c894-eb3b-84d57bcace6b@linux.intel.com>
Date: Mon, 11 Apr 2022 14:11:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20220405205437.29829-1-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220405205437.29829-1-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix suspending when
 PTM is active
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
Cc: roots@gmx.de, andre.roeder@hetzner.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/5/2022 23:54, Vinicius Costa Gomes wrote:
> Some mainboard/CPU combinations have shown problems with
> suspend/resume when PCIe PTM is enabled and active.
> 
> The best we can do is to stop PTM dialogs from the downstream/device
> side before the interface is brought down. PCIe PTM will be
> re-enabled when the interface is being brought up.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> Stefan,
> 
> I believe that this should be a more general solution to the problem you reported in
> https://lore.kernel.org/all/924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de/
> 
> Would it be possible for you revert commit 1e81dcc1ab7d ("igc: Do not
> enable crosstimestamping for i225-V models") and apply this one, and
> see if it works for you? I don't have your exact setup.
> 
> Cheers,
> 
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 15 ++++++++++++++-
>   1 file changed, 14 insertions(+), 1 deletion(-)Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
