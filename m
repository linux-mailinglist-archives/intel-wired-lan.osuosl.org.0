Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D93C938E3B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 May 2021 12:08:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3285F40364;
	Mon, 24 May 2021 10:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id weDtHWrpVCKg; Mon, 24 May 2021 10:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3260740345;
	Mon, 24 May 2021 10:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8ADE71BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 10:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 859D1400FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 10:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6PdUjXOxKfQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 May 2021 10:08:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1C3B400F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 10:08:09 +0000 (UTC)
IronPort-SDR: 9pDY8W74ykYhoNdA6B8SmaV+PKRuAkWGnuoP+CUbkWh5G1M1XK0OuiSxkarGlHmV7ttbgCUE1E
 S4uCSgP9IhyA==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="198842525"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="198842525"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 03:08:09 -0700
IronPort-SDR: oUgJrVishDJYBoLnANl96t2nGkezf1JZXbqoz6PI+xW0sBuK0wIIbMS6GXLoWEBG9mdVbQqRoz
 CI0KAVaCA4gg==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="475791830"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 03:08:06 -0700
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com
References: <20210510093854.31652-1-magnus.karlsson@gmail.com>
 <20210510093854.31652-7-magnus.karlsson@gmail.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <5c85e89c-47f7-c6aa-1589-3f4991c3a4e1@linux.intel.com>
Date: Mon, 24 May 2021 13:08:05 +0300
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
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
