Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26570F3750
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 19:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCFAA854B4;
	Thu,  7 Nov 2019 18:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-rb9O3HpUSg; Thu,  7 Nov 2019 18:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8A0B85507;
	Thu,  7 Nov 2019 18:34:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6C811BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB11E826E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0swus6UmTfY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 18:34:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E77D8328C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:34:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 10:34:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="286068917"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 07 Nov 2019 10:34:55 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 Nov 2019 10:34:55 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 10:34:54 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 7 Nov 2019 10:34:54 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S32 v3 02/15] ice: Add NDO callback to
 set the maximum per-queue bitrate
Thread-Index: AQHVlNE7BEtn0zm4OE+UEOKYbUwpeKeACmPg
Date: Thu, 7 Nov 2019 18:34:54 +0000
Message-ID: <c80c6df822474a16a388e15e0193d684@intel.com>
References: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
 <20191106100541.48639-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20191106100541.48639-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTAwNjg1ZjgtNjI1NC00ZTEyLTk5ZmUtMjQ0NzdlODJiOTk2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUVwvdmRMOEQxbE01R2lOaFJucFBoa3RGcGhhQTllQmttRzBmc0owVHVDWXhMZHdFOUcwb090RExGS1wvaER5TWRmIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S32 v3 02/15] ice: Add NDO callback to
 set the maximum per-queue bitrate
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
> Sent: Wednesday, November 6, 2019 2:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S32 v3 02/15] ice: Add NDO callback to set
> the maximum per-queue bitrate
> 
> From: Usha Ketineni <usha.k.ketineni@intel.com>
> 
> Allow for rate limiting Tx queues. Bitrate is set in
> Mbps(megabits per second).
> 
> Mbps max-rate is set for the queue via sysfs:
> /sys/class/net/<iface>/queues/tx-<queue>/tx_maxrate
> ex: echo 100 >/sys/class/net/ens7/queues/tx-0/tx_maxrate
>     echo 200 >/sys/class/net/ens7/queues/tx-1/tx_maxrate
> Note: A value of zero for tx_maxrate means disabled,
> default is disabled.
> 
> Signed-off-by: Usha Ketineni <usha.k.ketineni@intel.com>
> Co-developed-by: Tarun Singh <tarun.k.singh@intel.com>
> Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   46 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   10 +-
>  drivers/net/ethernet/intel/ice/ice_common.h   |    2 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   10 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |    8 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   43 +
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 1264 ++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   39 +
>  drivers/net/ethernet/intel/ice/ice_switch.h   |    5 -
>  drivers/net/ethernet/intel/ice/ice_type.h     |   63 +-
>  10 files changed, 1480 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
