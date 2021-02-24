Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCE7323F23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 15:24:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B53D6F635;
	Wed, 24 Feb 2021 14:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5qxpGoFK_Ipq; Wed, 24 Feb 2021 14:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6095D60713;
	Wed, 24 Feb 2021 14:24:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AC541BF33C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 14:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58CF683D8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 14:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-_pE3aA_fwl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Feb 2021 14:24:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE3CE83D89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 14:24:48 +0000 (UTC)
IronPort-SDR: fRR34pOIih+Qth00S56J+XpRc64mkcGVts02O0WdSbVrbCbU0Vryo09P+tlYxf6GpTh+Selmnz
 v3AHiWw0qsgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="249236552"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="249236552"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 06:24:47 -0800
IronPort-SDR: DG0vRlzX7NRLjWwesjIwEXp2YVKkLmDxHU38zuevmufsp8bMiOsD0wBYy1aZXT2BgNX8WEJecv
 T2RhDe+szjaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="380926331"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2021 06:24:46 -0800
Date: Wed, 24 Feb 2021 15:13:52 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210224141352.GA20163@ranger.igk.intel.com>
References: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/3] intel: packet type
 table simplification
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

On Tue, Feb 23, 2021 at 03:47:04PM -0800, Jesse Brandeburg wrote:
> Update three of the Intel Ethernet drivers with similar (but not the
> same) improvements to simplify the packet type table init, while removing
> an unused structure entry. For the ice driver, the table is extended
> to 10 bits, which is the hardware limit, and for now is initialized
> to zero.
> 
> The end result is slightly reduced memory usage, removal of a bunch
> of code, and more specific initialization.

Thanks, that is much better!

For the series:
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

FWIW, I see that in the subject of patches only the ice one has a v2, but
that's no big deal.

> 
> Jesse Brandeburg (3):
>   ice: report hash type such as L2/L3/L4
>   i40e: clean up packet type lookup table
>   iavf: clean up packet type lookup table
> 
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 124 +--------------
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 -
>  drivers/net/ethernet/intel/iavf/iavf_common.c | 124 +--------------
>  drivers/net/ethernet/intel/iavf/iavf_type.h   |   1 -
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 147 ++++--------------
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  23 ++-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
>  9 files changed, 62 insertions(+), 364 deletions(-)
> 
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
