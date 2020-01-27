Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6DD14AC4D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2020 23:55:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 464B58555A;
	Mon, 27 Jan 2020 22:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtwKQGXQHqu8; Mon, 27 Jan 2020 22:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BD0A85329;
	Mon, 27 Jan 2020 22:55:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 809A81BF282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 22:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C13E87133
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 22:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGkd0bC2D1Cb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 22:55:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 338F386FB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 22:55:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 14:55:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="222615295"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jan 2020 14:55:14 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jan 2020 14:55:14 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 14:55:13 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 27 Jan 2020 14:55:13 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S38 02/15] ice: Refactor port vlan
 configuration for the VF
Thread-Index: AQHV0X9doLBmLjM9Y0KkSqBDDwY4FKf/Jpgw
Date: Mon, 27 Jan 2020 22:55:13 +0000
Message-ID: <536509ab50604d9ea09df3afa575ba5c@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
 <20200122152138.41585-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200122152138.41585-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWRhZjk1YmYtODFjYy00OTVmLWJkMWUtOTgzNmJhYjE4N2YyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOVNRWDNNNjNIdElhb05XY01nV0hJZGpCRWYwSXV1K2NrTUx3RnBFcnlwSm1UN3UrRENyaHg4d1wvZDRNTkpFSHAifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S38 02/15] ice: Refactor port vlan
 configuration for the VF
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
> Sent: Wednesday, January 22, 2020 7:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S38 02/15] ice: Refactor port vlan
> configuration for the VF
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently ice_vsi_manage_pvid() calls
> ice_vsi_[set|kill]_pvid_fill_ctxt() when enabling/disabling a port VLAN on a
> VSI respectively. These two functions have some duplication so just move
> their unique pieces inline in ice_vsi_manage_pvid() and then the duplicate
> code can be reused for both the enabling/disabling paths.
> 
> Before this patch the info.pvid field was not being written correctly via
> ice_vsi_kill_pvid_fill_ctxt() so it was being hardcoded to 0 in
> ice_set_vf_port_vlan(). Fix this by setting the info.pvid field to 0 before
> calling ice_vsi_update() in ice_vsi_manage_pvid().
> 
> We currently use vf->port_vlan_id to keep track of the port VLAN ID and
> QoS, which is a bit misleading. Fix this by renaming it to
> vf->port_vlan_info. Also change the name of the argument for
> ice_vsi_manage_pvid() from vid to pvid_info.
> 
> In ice_vsi_manage_pvid() only save the fields that were modified in the VSI
> properties structure on success instead of the entire thing.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 86 ++++++++-----------
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 +-
>  2 files changed, 37 insertions(+), 51 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
