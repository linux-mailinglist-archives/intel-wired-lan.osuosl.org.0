Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3212C296D10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Oct 2020 12:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0E2086FB6;
	Fri, 23 Oct 2020 10:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ibNjglArJQ3V; Fri, 23 Oct 2020 10:52:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E1D086FCC;
	Fri, 23 Oct 2020 10:52:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A49E1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 10:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7325A86FAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 10:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tv2tzHkyNBUF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Oct 2020 10:52:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6C2F868DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 10:52:31 +0000 (UTC)
IronPort-SDR: PZ2X7uzGaV2d4SbHWaIZrkcu9LmqiVV8QUl3NFMe5d0i1jizc88oKXZvSum2jYlVbei9ZfX6we
 pT8UYWsq1VHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155441570"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="155441570"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 03:52:27 -0700
IronPort-SDR: cD/CPEBT4bqz2XqTPZqsGG1s1oFZnVu65r6OsSXphG4OEeXA3B4WA2JFUkQK8FqukuYc/PQeNM
 zrQiJ5K8Alpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="359569416"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Oct 2020 03:52:26 -0700
Date: Fri, 23 Oct 2020 12:42:50 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20201023104250.GA5254@ranger.igk.intel.com>
References: <20200728134748.26703-1-piotr.kwapulinski@intel.com>
 <20201023103836.25826-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023103836.25826-1-piotr.kwapulinski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v5] i40e: add support for PTP external
 synchronization clock
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

On Fri, Oct 23, 2020 at 10:38:36AM +0000, Piotr Kwapulinski wrote:
> Add support for external synchronization clock via GPIOs.
> 1PPS signals are handled via the dedicated 3 GPIOs: SDP3_2,
> SDP3_3 and GPIO_4.
> Previously it was not possible to use the external PTP
> synchronization clock.
> 

Where is the changelog?

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  76 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  18 +-
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 748 +++++++++++++++++-
>  .../net/ethernet/intel/i40e/i40e_register.h   |  31 +-
>  4 files changed, 846 insertions(+), 27 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
