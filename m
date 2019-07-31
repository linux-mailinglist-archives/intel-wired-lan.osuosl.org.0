Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F78B7CBA5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:14:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B368681B78;
	Wed, 31 Jul 2019 18:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AxzIxGceGraB; Wed, 31 Jul 2019 18:14:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 919A5828FA;
	Wed, 31 Jul 2019 18:14:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BFC51BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 634408710D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7UFPPjDofyUQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 18:14:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CF78B85A32
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:14:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 11:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="163207397"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2019 11:14:08 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 11:14:08 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.34]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 11:14:08 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S25 10/12] ice: add validation in
 OP_CONFIG_VSI_QUEUES VF message
Thread-Index: AQHVQxX5bn/fmZT9aEmAaJE0lK29xqblEUEw
Date: Wed, 31 Jul 2019 18:14:07 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40EAEC@ORSMSX104.amr.corp.intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
 <20190725095401.24590-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725095401.24590-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTU1YTgxZWItY2QwZS00YzZmLWFjMzItMjJkNGY2ODQ5OTAxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZlpHeEdSK3VWa3RxcVJUbDRnaWlRbHdnY0V0ZktScVRCbXF2NXcrazVYOXh5UFp6NlhcL1ExNEtaZGpVOXZuNFwvIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S25 10/12] ice: add validation in
 OP_CONFIG_VSI_QUEUES VF message
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
> Sent: Thursday, July 25, 2019 2:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S25 10/12] ice: add validation in
> OP_CONFIG_VSI_QUEUES VF message
> 
> From: Michal Swiatkowski <michal.swiatkowski@intel.com>
> 
> Check num_queue_pairs to avoid access to unallocated field of
> vsi->tx_rings/vsi->rx_rings. Without this validation we can set
> vsi->alloc_txq/vsi->alloc_rxq to value smaller than
> vsi->ICE_MAX_BASE_QS_PER_VF
> and send this command with num_queue_pairs greater than
> vsi->alloc_txq/vsi->alloc_rxq. This lead to access to unallocated memory.
> 
> In VF vsi alloc_txq and alloc_rxq should be the same. Get minimum because
> looks more readable.
> 
> Also add validation for ring_len param. It should be greater than 32 and be
> multiple of 32. Incorrect value leads to hang traffic on PF.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 31 ++++++++++++++-----
>  1 file changed, 24 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
