Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 633C82CC84F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 21:49:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06D792036E;
	Wed,  2 Dec 2020 20:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RKAI91bP39F; Wed,  2 Dec 2020 20:49:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B729203BD;
	Wed,  2 Dec 2020 20:49:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E7171BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49D8487A50
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MzJbjpaMPr8C for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 20:49:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A6E9D879B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:49:42 +0000 (UTC)
IronPort-SDR: cwStzbgvnlZaXiKT8+e5vh/y3zoUEHNoZneNWhnSFXo2fhj7j5S5vdjGYn0eymrXjQbtO5EWgw
 pDARLeN24gdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="152338728"
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="152338728"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 12:49:42 -0800
IronPort-SDR: +laTcOwiOW2/GRPfE5YXVF/GQXc7gPwyriCgFf6WVhR5ZrchMuhEOjr9/YLhxgJNCM47asLnKm
 spcD5wPDLc8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="335706146"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga006.jf.intel.com with ESMTP; 02 Dec 2020 12:49:40 -0800
Date: Wed, 2 Dec 2020 21:40:41 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20201202204041.GA30907@ranger.igk.intel.com>
References: <20201202150724.31439-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202150724.31439-1-magnus.karlsson@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] i40e, ice,
 ixgbe: optimize for XDP_REDIRECT in xsk path
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
Cc: maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 02, 2020 at 04:07:21PM +0100, Magnus Karlsson wrote:
> Optimize run_xdp_zc() for the XDP program verdict being XDP_REDIRECT
> in the zsk zero-copy path. This path is only used when having AF_XDP
> zero-copy on and in that case most packets will be directed to user
> space. This provides around 100k extra packets in throughput on my
> server when running l2fwd in xdpsock.
> 
> Thanks: Magnus

For series:
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

You only ate 'e' from i40e subject line.

> 
> Magnus Karlsson (3):
>   i40: optimize for XDP_REDIRECT in xsk path
>   ixgbe: optimize for XDP_REDIRECT in xsk path
>   ice: optimize for XDP_REDIRECT in xsk path
> 
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 11 +++++++----
>  drivers/net/ethernet/intel/ice/ice_xsk.c     | 12 ++++++++----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 11 +++++++----
>  3 files changed, 22 insertions(+), 12 deletions(-)
> 
> 
> base-commit: 6b4f503186b73e3da24c6716c8c7ea903e6b74d4
> --
> 2.29.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
