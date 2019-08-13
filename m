Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C078BF74
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2019 19:12:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 224E821F76;
	Tue, 13 Aug 2019 17:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CadiOSTz4jLW; Tue, 13 Aug 2019 17:12:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33765228B3;
	Tue, 13 Aug 2019 17:12:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 754F31BF41A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D40B85F51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qpc05hyydbIM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2019 17:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E9AE085D95
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2019 17:12:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 10:12:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="375667582"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga005.fm.intel.com with ESMTP; 13 Aug 2019 10:12:22 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 13 Aug 2019 10:12:22 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.73]) with mapi id 14.03.0439.000;
 Tue, 13 Aug 2019 10:12:22 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S27 09/15] ice: Minor refactor in
 queue management
Thread-Index: AQHVTj5A9sVfeuhofkC8wXjZ+sAXGqb5V/4g
Date: Tue, 13 Aug 2019 17:12:22 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D411666@ORSMSX104.amr.corp.intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
 <20190808143938.4968-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20190808143938.4968-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDI3ODc0NTQtZGFkNS00ZmM3LWIzNDEtZjNhOTI1NGZkN2Q3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWW1TWFRIMlwvOW8rZjdzT3Nqc08rK1dESGdURlJIUmY0TVc0azBYdDc5Uk1JSmtGbG9qeXZxYVhNSUlcL3JRMEUwIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S27 09/15] ice: Minor refactor in
 queue management
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
> Sent: Thursday, August 8, 2019 7:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S27 09/15] ice: Minor refactor in queue
> management
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Remove q_left_tx and q_left_rx from the PF struct as these can be obtained
> by calling ice_get_avail_txq_count and ice_get_avail_rxq_count respectively.
> 
> The function ice_determine_q_usage is only setting num_lan_tx and
> num_lan_rx in the PF structure, and these are later assigned to
> vsi->alloc_txq and vsi->alloc_rxq respectively. This is an unnecessary
> indirection, so remove ice_determine_q_usage and just assign values for vsi-
> >alloc_txq and vsi->alloc_rxq in ice_vsi_set_num_qs and use these to set
> num_lan_tx and num_lan_rx respectively.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  2 -
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 82 +++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  6 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 29 -------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 14 ++--
>  5 files changed, 82 insertions(+), 51 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
