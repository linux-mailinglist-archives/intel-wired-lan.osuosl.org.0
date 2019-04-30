Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 165091029A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 00:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B4CE229D4;
	Tue, 30 Apr 2019 22:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3WFGVeHAA-vd; Tue, 30 Apr 2019 22:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D75D422FF0;
	Tue, 30 Apr 2019 22:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E2F01BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99C4B86A1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DvHen5q20VFG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 22:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CBD2086905
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:49:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 15:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="342257915"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga005.fm.intel.com with ESMTP; 30 Apr 2019 15:49:28 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.212]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 15:49:28 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S21 02/14] ice: Add support for
 virtchnl_vector_map.[rxq|txq]_map
Thread-Index: AQHU9Hrcf7T+dB6F7kav8Hnhvl/4d6ZVZNmg
Date: Tue, 30 Apr 2019 22:49:28 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39AF5D@ORSMSX106.amr.corp.intel.com>
References: <20190416173503.29847-1-anirudh.venkataramanan@intel.com>
 <20190416173503.29847-3-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173503.29847-3-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDU4NjMwOWEtYjU0ZS00OGEwLWE4N2MtNWJlOGFjYjIwYmFiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic1d2dEdFdlowOFpPTDV3anYzZ2R5c0tIUGR4b2lwZXVneExRelwvYnZyNUh6amFhUHlHc0Y2R3VQclNyY2ZWRUoifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S21 02/14] ice: Add support for
 virtchnl_vector_map.[rxq|txq]_map
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
> Behalf Of Anirudh Venkataramanan
> Sent: Tuesday, April 16, 2019 10:35 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S21 02/14] ice: Add support for
> virtchnl_vector_map.[rxq|txq]_map
> 
> Add support for virtchnl_vector_map.[rxq|txq]_map to use bitmap to
> associate indicated queues with the specified vector. This support is needed
> since the Windows AVF driver calls VIRTCHNL_OP_CONFIG_IRQ_MAP for
> each vector and used the bitmap to indicate the associated queues.
> 
> Updated ice_vc_dis_qs_msg to not subtract one from
> virtchnl_irq_map_info.num_vectors, and changed the VSI vector index to
> the vector id. This change supports the Windows AVF driver which maps one
> vector at a time and sets num_vectors to one. Using vectors_id to index the
> vector array .
> 
> Add check for vector_id zero, and return VIRTCHNL_STATUS_ERR_PARAM if
> vector_id is zero and there are rings associated with that vector.
> Vector_id zero is for the OICR.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
> [Anirudh Venkataramanan <anirudh.venkataramanan@intel.com> squashed
> multiple commits]
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 108 ++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   8 ++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  43 +++++--
>  3 files changed, 115 insertions(+), 44 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
