Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EB038E3AA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 May 2021 12:05:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E387F60597;
	Mon, 24 May 2021 10:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TdOqmETa9DWg; Mon, 24 May 2021 10:05:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F18CF6064E;
	Mon, 24 May 2021 10:05:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64FD31BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 10:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6095683032
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 10:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QbE9wNRzYxeb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 May 2021 10:05:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB8F483022
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 10:05:36 +0000 (UTC)
IronPort-SDR: sXQb2LJLk7M7F1zulcLoqGG3CSEInSG5afeYtEFZYj5KlmbkExP+iuHbNaibjp+J71+lDwUKL8
 /Ap2pxGiQh5w==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="223053011"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="223053011"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 03:05:36 -0700
IronPort-SDR: 35wEytosB0lthWneSatwK8hRCOxP32WnWaTA9s5Bl3WTO87ivIfVYsWcbEyaKoD3E+OfmcjTNT
 kQL/S1lVepwg==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="475790095"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 03:05:34 -0700
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
 <20210510093854.31652-7-magnus.karlsson@gmail.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <4761eca6-5007-9898-3cab-f974af68d956@linux.intel.com>
Date: Mon, 24 May 2021 13:05:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210510093854.31652-7-magnus.karlsson@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH intel-net v2 6/6] igc: add correct
 exception tracing for XDP
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
Cc: netdev@vger.kernel.org, brouer@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/05/2021 12:38, Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Add missing exception tracing to XDP when a number of different
> errors can occur. The support was only partial. Several errors
> where not logged which would confuse the user quite a lot not
> knowing where and why the packets disappeared.
> 
> Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
> Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
> Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 11 +++++------
>   1 file changed, 5 insertions(+), 6 deletions(-)
> Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
