Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1D34A98F3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 13:09:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F02FF404CC;
	Fri,  4 Feb 2022 12:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDkU1qr7Ufgt; Fri,  4 Feb 2022 12:09:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BF4F404BA;
	Fri,  4 Feb 2022 12:09:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3DB41BF327
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 12:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D17FB60B4B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 12:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRpiDuNUqQ4y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 12:09:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE67960681
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 12:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643976557; x=1675512557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lXT3qxK1WdHv8lnFsJTEbuTFtUhDtDvxgX7t0dOC0Vk=;
 b=DKl2leMRuP/h2n1XqHxaTCDZXRa2oLLYhr7Xsp/EUzFKLfciCLlT0jy/
 jxFkTX1E30Z09+UAaDBKnbr/FmO8DSFUl5pn2tOsKS5w5UkVvFGr0xH0p
 awKhO+bPZhjPoxjTfF4tuWESnEo3matpsSA8q0Vqr5ZQz6bRnRkQ6/STe
 tE7BrDN5HaorAZMLfGWhNRywYHYGPwJIjB1KiHtAbNyeIr5TUOpxxGcCp
 VcOLongIC06LCWvUNcfboSZVV1FLGJpOq3isrFArBqs5sXJYg/hzfxjfr
 FBMAcJPGqq1i5bim4O7KHWvU6B52G0nGtUUoET0BdddOUvLn+qWRlau7+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="229008537"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="229008537"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 04:09:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="584116622"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 04 Feb 2022 04:09:16 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 214C9FTI018076; Fri, 4 Feb 2022 12:09:15 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri,  4 Feb 2022 13:05:37 +0100
Message-Id: <20220204120537.80979-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128001009.721392-1-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/19] Add iecm and idpf
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

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 27 Jan 2022 16:09:50 -0800

> This series introduces both the Intel Ethernet Common Module and the
> Intel Data Plane Function.  This also adds extended features and
> functionality to virtchnl with virtchnl_2.h.
>  
> The format of the series generally follows the flow of driver init to
> interface open. We go from probe into a hard reset followed by an init
> task. From there the rest of the netdev_ops and data path are added.
> Then lastly advanced features and idpf are introduced.
> 
> Currently this common layer (iecm) is initially only being used by only
> the idpf driver (PF driver for SmartNIC).  However, the plan is to
> eventually switch our iavf driver along with future drivers to use this
> common module.  The hope is to better enable code sharing going forward
> as well as support other developers writing drivers for our hardware

                                                                      ^

There's a dot '.' missing.

> 
> Alan Brady (17):
>   virtchnl: Add new virtchnl2 ops
>   iecm: add basic module init and documentation
>   iecm: add probe and remove
>   iecm: add api_init and controlq init
>   iecm: add vport alloc and virtchnl messages
>   iecm: add virtchnl messages for queues
>   iecm: finish virtchnl messages
>   iecm: add interrupts and configure netdev
>   iecm: alloc vport TX resources
>   iecm: alloc vport RX resources
>   iecm: add start_xmit and set_rx_mode
>   iecm: finish netdev_ops
>   iecm: implement splitq napi_poll
>   iecm: implement singleq napi_poll
>   iecm: implement ethtool callbacks
>   iecm: implement cloud filters
>   idpf: introduce idpf driver
> 
> Haiyue Wang (2):
>   iecm: implement flow director
>   iecm: add advanced rss

I'd like to remind here that you can *not* proceed with publishing
a v2 to netdev ML before at least me *and* Shannon (we're the only
two for now who did reviews here) say "I'm okay with your vN
revision".
I'm doing this because this is what you did previously, transferring
from our internal ML to IWL. In fact, you changed a bunch of code
and the authorship of two patches, but didn't publish a v2 there
and went directly here instead, without even providing a changelog,
so I only realized there were other changes apart from the authors
only when started comparing those two submissions.
Incorporating only the changes marked by you as "will fix" and not
getting the others resolved (places you didn't explain or answer to,
questionable "won't fix" which the reviewers disagree with etc.)
doesn't make this series ready for netdev ML.
And please supply changelogs at the end of the cover letter for each
subsequent revision, so people could easily see what was addressed
and what was not.

> 
>  .../device_drivers/ethernet/intel/idpf.rst    |   47 +
>  .../device_drivers/ethernet/intel/iecm.rst    |   93 +
>  MAINTAINERS                                   |    1 +
>  drivers/net/ethernet/intel/Kconfig            |   31 +
>  drivers/net/ethernet/intel/Makefile           |    2 +
>  drivers/net/ethernet/intel/idpf/Makefile      |   15 +
>  drivers/net/ethernet/intel/idpf/idpf_dev.h    |   17 +
>  drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  140 +
>  drivers/net/ethernet/intel/idpf/idpf_reg.c    |  130 +
>  drivers/net/ethernet/intel/iecm/Makefile      |   21 +
>  .../net/ethernet/intel/iecm/iecm_controlq.c   |  649 ++
>  .../ethernet/intel/iecm/iecm_controlq_setup.c |  175 +
>  .../net/ethernet/intel/iecm/iecm_ethtool.c    | 1332 ++++
>  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 5717 +++++++++++++++++
>  drivers/net/ethernet/intel/iecm/iecm_main.c   |   40 +
>  .../ethernet/intel/iecm/iecm_singleq_txrx.c   | 1229 ++++
>  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 4577 +++++++++++++
>  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 4240 ++++++++++++
>  drivers/net/ethernet/intel/include/iecm.h     |  973 +++
>  .../ethernet/intel/include/iecm_controlq.h    |  117 +
>  .../intel/include/iecm_controlq_api.h         |  185 +
>  .../ethernet/intel/include/iecm_lan_pf_regs.h |  131 +
>  .../ethernet/intel/include/iecm_lan_txrx.h    |  394 ++
>  drivers/net/ethernet/intel/include/iecm_mem.h |   20 +
>  .../net/ethernet/intel/include/iecm_txrx.h    |  733 +++
>  include/linux/avf/virtchnl.h                  | 1507 ++++-
>  include/linux/avf/virtchnl_2.h                | 1243 ++++
>  include/linux/avf/virtchnl_lan_desc.h         |  603 ++

--- 8< ---

> -- 
> 2.33.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
