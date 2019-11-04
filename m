Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98612EE94B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2019 21:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55CA888C67;
	Mon,  4 Nov 2019 20:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mAFQHtZgwBaq; Mon,  4 Nov 2019 20:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F54788CA1;
	Mon,  4 Nov 2019 20:16:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0E791BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 20:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC1B386130
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 20:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FUQKEhOkidHo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2019 20:16:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B29C785BCC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 20:16:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 12:16:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,268,1569308400"; d="scan'208";a="200587753"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2019 12:16:37 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 4 Nov 2019 12:16:37 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Nov 2019 12:16:37 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 4 Nov 2019 12:16:37 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S30 v4 3/9] ice: Add support for XDP
Thread-Index: AQHVkD8LLcNim/GuK0mdZSKgxiEQn6d7eOcg
Date: Mon, 4 Nov 2019 20:16:36 +0000
Message-ID: <e37a7bf65352463eae381d766b6d6f84@intel.com>
References: <20191031143005.5002-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20191031143005.5002-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmMwMDZkMzAtYzJhNy00MzE1LThlN2ItMzNiODM0YjlkZWRlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaHF5SHVIUDBRZWZCOGpTZ1V4RjdsZldlR21tY2JVOXVqQjZVdFBnOTJuQjFcL1RiM29ZUlFRZVJBME1BdUY4NjkifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S30 v4 3/9] ice: Add support for XDP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Tony Nguyen
> Sent: Thursday, October 31, 2019 7:30 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S30 v4 3/9] ice: Add support for XDP
> 
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
> Add support for XDP. Implement ndo_bpf and ndo_xdp_xmit.  Upon load of
> an XDP program, allocate additional Tx rings for dedicated XDP use.
> The following actions are supported: XDP_TX, XDP_DROP, XDP_REDIRECT,
> XDP_PASS, and XDP_ABORTED.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v4:
> - return -EOPNOTSUPP instead of ENOTSUPP for too large MTU which makes
>   it impossible to attach XDP prog
> - don't check for case when there's no XDP prog currently on interface
>   and ice_xdp() is called with NULL bpf_prog; this happens when user
>   does "ip link set eth0 xdp off" and no prog is present on VSI; no need
>   for that as it is handled by higher layer
> - drop the extack message for unknown xdp->command
> - use the smp_processor_id() for accessing the XDP Tx ring for XDP_TX
>   action
> - don't leave the interface in downed state in case of any failure
>   during the XDP Tx resources handling
> - undo rename of ice_build_ctob
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  24 +-
>  drivers/net/ethernet/intel/ice/ice_base.c    |  28 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  50 ++-
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  68 +++-
>  drivers/net/ethernet/intel/ice/ice_lib.h     |   6 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 326 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c    | 346 ++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |  34 +-
>  8 files changed, 825 insertions(+), 57 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
