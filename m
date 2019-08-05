Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4DF826FA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2019 23:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE7FC81DD2;
	Mon,  5 Aug 2019 21:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZUwhXbzrbLZ; Mon,  5 Aug 2019 21:33:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4855181E90;
	Mon,  5 Aug 2019 21:33:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2DB1BF392
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5084285F29
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H6M4z5u5jpws for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2019 21:33:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5169F85B97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 21:33:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 14:33:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="257836728"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga001.jf.intel.com with ESMTP; 05 Aug 2019 14:33:28 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 5 Aug 2019 14:33:28 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.26]) with mapi id 14.03.0439.000;
 Mon, 5 Aug 2019 14:33:28 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S26 02/15] ice: add support for
 virtchnl_queue_select.[tx|rx]_queues bitmap
Thread-Index: AQHVSVLylV9xnF9EN0KVf/me6/onH6btGCIg
Date: Mon, 5 Aug 2019 21:33:28 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40F077@ORSMSX104.amr.corp.intel.com>
References: <20190802082533.23083-1-anthony.l.nguyen@intel.com>
 <20190802082533.23083-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20190802082533.23083-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTg2ODA5NDctN2FhMS00MjIyLThkNTQtYzY3MWE5OGU0MDk0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiekVYRytzWXBMK3FSVVloTFBpWDBZVGU1eG04c2tlSkZcL3dyd1hhd0VcL0ZaTERDUGlOOVUzXC9rS1Jid2RoQjNLUyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S26 02/15] ice: add support for
 virtchnl_queue_select.[tx|rx]_queues bitmap
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
> Sent: Friday, August 2, 2019 1:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S26 02/15] ice: add support for
> virtchnl_queue_select.[tx|rx]_queues bitmap
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> The VF driver can call VIRTCHNL_OP_[ENABLE|DISABLE]_QUEUES separately
> for each queue. Add support for virtchnl_queue_select.[tx|rx]_queues
> bitmap which is used to indicate which queues to enable and disable.
> 
> Add tracing of VF Tx/Rx per queue enable state to avoid enabling enabled
> queues and disabling disabled queues. Add total queues enabled count and
> clear ICE_VF_STATE_QS_ENA when count is zero.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Peng Huang <peng.huang@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  15 +-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  10 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   2 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 243 +++++++++++++-----
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  12 +-
>  5 files changed, 207 insertions(+), 75 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
