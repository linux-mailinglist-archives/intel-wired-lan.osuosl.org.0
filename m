Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C1E251E9B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 19:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27D9086B19;
	Tue, 25 Aug 2020 17:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5CtsmGQcu9fC; Tue, 25 Aug 2020 17:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3953C86E5C;
	Tue, 25 Aug 2020 17:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6073C1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5BE5488348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R30HsZ+BvOo7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 17:46:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 89B9288344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:46:37 +0000 (UTC)
IronPort-SDR: e4NWi/IDIGgGeIfE8k5OnqtccbREEHHWquWFVawyza+FyMxVIGvPaecWDGM3Ssgh0ameQnZOCo
 0d/IvUXZm6kQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="143827338"
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="143827338"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 10:46:27 -0700
IronPort-SDR: FkQ4Y2OERWw+At5i7+dWYQzpDTgYV+0TKYcHslKswKogDt4//VRTDMCIe1/R2fngyBfeezCqVe
 xeswMREuGYFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="443714708"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 25 Aug 2020 10:46:25 -0700
Date: Tue, 25 Aug 2020 19:40:18 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20200825174018.GA41513@ranger.igk.intel.com>
References: <20200825172736.27318-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825172736.27318-1-bjorn.topel@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v3 0/3] Avoid premature Rx buffer
 reuse for XDP_REDIRECT
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
Cc: maciej.machnikowski@intel.com, lirongqing@baidu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 25, 2020 at 07:27:33PM +0200, Bj=F6rn T=F6pel wrote:

[...]

> =

> v2->v3: Fixed kdoc for i40e/ice. (Jakub)
> v1->v2: Removed page count function into get Rx buffer function, and
>         changed scope of automatic variable. (Maciej)
> =


For the series:
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> =

> Bj=F6rn T=F6pel (3):
>   i40e: avoid premature Rx buffer reuse
>   ixgbe: avoid premature Rx buffer reuse
>   ice: avoid premature Rx buffer reuse
> =

>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 27 ++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 30 +++++++++++++------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 24 ++++++++++-----
>  3 files changed, 58 insertions(+), 23 deletions(-)
> =

> =

> base-commit: 99408c422d336db32bfab5cbebc10038a70cf7d2
> -- =

> 2.25.1
> =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
