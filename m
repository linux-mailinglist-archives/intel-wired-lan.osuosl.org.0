Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FDC2133C3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jul 2020 07:55:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6635F26539;
	Fri,  3 Jul 2020 05:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulQKRZMVDTwn; Fri,  3 Jul 2020 05:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C484B264BE;
	Fri,  3 Jul 2020 05:55:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BF9F1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9706726450
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iSWYUoFLE83A for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2020 05:55:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id EAB9D26426
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2020 05:55:49 +0000 (UTC)
IronPort-SDR: oyqmxPukgPff/fbelCk4VZg+a2vfog2IveIFMiiWbSLDZhVJllneYAMbDo6Q3UgSjO12v9ccPc
 k982EV/ZRkIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="134558237"
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="134558237"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 22:55:49 -0700
IronPort-SDR: gksHWqFZAJ2yGMMF76OMVcPV+n+iEqpFcWoGLg1FmoT7RHdfpfdWnoPI+glbF4xn8LY5r0pDmT
 JgpUmoFdxAfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,307,1589266800"; d="scan'208";a="387538433"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2020 22:55:49 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jul 2020 22:55:48 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.199]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.150]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 22:55:48 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Zhang, Qi Z" <qi.z.zhang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v3 00/14] Support Advanced AVF
 features
Thread-Index: AQHWUMTsSCmxtaqfkkaXB+1DMS3U7qj1WY3A
Date: Fri, 3 Jul 2020 05:55:46 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044987498BC@ORSMSX112.amr.corp.intel.com>
References: <20200702225805.32167-1-qi.z.zhang@intel.com>
In-Reply-To: <20200702225805.32167-1-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S48 v3 00/14] Support Advanced AVF
 features
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I was able to do a preliminary review, there were definitely wrapping issues, which I commented on.  I also found some code was indented with spaces and tabs.  I also found that some defines names were grossly too long and had redundant info in the name.  Most of the patches were reasonable size and easy to review EXCEPT for patch 10, which needs to be broken up.

TODO:
 - A more in depth review of the actual code and what is being done
 - Review of all defines to ensure the actual name makes sense (reduce in size/length where possible)
 - Run checkpatch.pl on these patches
 - And of course, the typical upstream testing/review
 - Break up patch 10 into 2 or 3 patches to ease future review

I have done what I can, I am now "officially" on sabbatical... See you in September

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 2, 2020 15:58
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v3 00/14] Support Advanced AVF features
> 
> The patchset add the backend code for below new advanced AVF features:
> 1. Flexible Description selection to offload metadata 2. FDIR filter rule adding /
> deleting.
> 3. Per flow configurable inputset RSS
> besides support regular l3/l4 5 tuple inputset for FDIR and RSS, the patchset
> added more protocol support which include GTP-U, L2TPv3, PFCF, ESP, AH...
> 
> v3:
> - fix couple coding style issue and typo
> - use devm alloc/free for cross function memory
> - squash patch 11/16 , 12/16 into 10/16.
> 
> v2:
> - fix typo in commit log.
> 
> Qi Zhang (14):
>   ice: Enable flexible descriptor RXDID querying and configuration
>   ice: Add more basic protocol support for flow filter
>   ice: Support non word aligned input set field
>   ice: Add more advanced protocol support in flow filter
>   ice: Support to separate GTP-U uplink and downlink
>   ice: enhanced IPV4 and IPV6 flow filter
>   ice: Enable RSS Configure for AVF
>   ice: Support RSS configure removal for AVF
>   ice: Add support for per VF ctrl VSI enabling
>   ice: Support FDIR configure for AVF
>   ice: Add non-IP Layer2 protocol FDIR filter for AVF
>   ice: Add GTPU FDIR filter for AVF
>   ice: Add more FDIR filter type for AVF
>   ice: Check FDIR program status for AVF
> 
>  drivers/net/ethernet/intel/ice/Makefile            |    2 +-
>  drivers/net/ethernet/intel/ice/ice.h               |    6 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c  |    4 +
>  drivers/net/ethernet/intel/ice/ice_fdir.c          |   29 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |   39 +
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c     |  524 ++++-
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.h     |    3 +-
>  drivers/net/ethernet/intel/ice/ice_flex_type.h     |   78 +
>  drivers/net/ethernet/intel/ice/ice_flow.c          |  890 +++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h          |  168 +-
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h    |   22 +
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |   22 +
>  drivers/net/ethernet/intel/ice/ice_lib.c           |   64 +-
>  drivers/net/ethernet/intel/ice/ice_main.c          |   11 +-
>  drivers/net/ethernet/intel/ice/ice_protocol_type.h |   10 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c          |    5 +
>  drivers/net/ethernet/intel/ice/ice_type.h          |   18 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 2249
> ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |   49 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c   |  660 +++++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h   |   11 +
>  include/linux/avf/virtchnl.h                       |  324 ++-
>  22 files changed, 5104 insertions(+), 84 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
> 
> --
> 2.13.6
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
