Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 464482A3323
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Nov 2020 19:41:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C444A84EB0;
	Mon,  2 Nov 2020 18:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdkZSS30JwSY; Mon,  2 Nov 2020 18:41:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F0B886700;
	Mon,  2 Nov 2020 18:41:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FDDA1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 530C0203DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCb-OpUi7QoZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Nov 2020 18:41:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 45966203E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:41:07 +0000 (UTC)
IronPort-SDR: 9/RqY+IY35h45j4d324P2Ui3UVojMxfnbj88Z83BLHMP3B+GErkXLc8qckj8W1ffBW3LiKdH78
 Ia350LYAOwVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="148787593"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="148787593"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 10:41:06 -0800
IronPort-SDR: SL+4/Ze7La6/t6XEylnkBDnvBhKsQ8W9ozYPNBHyscRjhcOAHhN7Pq0sYIKlRWFpdlUX7LKO+6
 o1q/RrLTbDKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="526769100"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga006.fm.intel.com with ESMTP; 02 Nov 2020 10:41:05 -0800
Date: Mon, 2 Nov 2020 19:30:07 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201102183007.GL6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-10-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030210351.46482-10-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v3 9/9] igc: Add support for
 XDP_REDIRECT action
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 30, 2020 at 02:03:51PM -0700, Andre Guedes wrote:
> This patch adds support for the XDP_REDIRECT action which enables XDP
> programs to redirect packets arriving at I225 NIC. It also implements
> the ndo_xdp_xmit ops, enabling the igc driver to transmit packets
> forwarded to it by xdp programs running on other interfaces.
> 
> The patch tweaks the driver's page counting scheme (as described in
> '8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT' and
> implemented by other Intel drivers) in order to properly support
> XDP_REDIRECT action.
> 
> This patch has been tested with the sample apps "xdp_redirect_cpu" and
> "xdp_redirect_map" located in samples/bpf/.

Did you test in a way that the igc interface was the second interface for
redirect samples and you checked that tx happened?

> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
