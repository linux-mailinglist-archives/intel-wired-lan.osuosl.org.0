Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A758E12565C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2019 23:15:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 57E1722C31;
	Wed, 18 Dec 2019 22:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIZtRHWRZNow; Wed, 18 Dec 2019 22:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5079122F4C;
	Wed, 18 Dec 2019 22:15:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 290991BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D98287CAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x9wn0Xsvu6PQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 22:15:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CB67B87C8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:15:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 14:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="210240200"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 18 Dec 2019 14:15:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Dec 2019 14:15:30 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 14:15:30 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 18 Dec 2019 14:15:30 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S35 02/15] ice: Fix VF spoofchk
Thread-Index: AQHVsSSwZlY502Y4OEayhehgOWBlB6fAfvOQ
Date: Wed, 18 Dec 2019 22:15:29 +0000
Message-ID: <21882071588b4cbbb08aa1b259c9eeba@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
 <20191212111307.33566-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20191212111307.33566-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjRhZjc0NTgtYzk2ZC00MDdiLWFmNmUtYWQxOGMwYjU4OTNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRzJ5bmtzazVseEp6OUNISEdNeFdrQWNsOThPSGJhQ2dCVjYybysyZSs3Vk1Dd29qendDeFQwWFlieFBXMWw1YiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S35 02/15] ice: Fix VF spoofchk
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
> Sent: Thursday, December 12, 2019 3:13 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S35 02/15] ice: Fix VF spoofchk
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> There are many things wrong with the function ice_set_vf_spoofchk().
> 
> 1. The VSI being modified is the PF VSI, not the VF VSI.
> 2. We are enabling Rx VLAN pruning instead of Tx VLAN anti-spoof.
> 3. The spoofchk setting for each VF is not initialized correctly
>    or re-initialized correctly on reset.
> 
> To fix [1] we need to make sure we are modifying the VF VSI.
> This is done by using the vf->lan_vsi_idx to index into the PF's VSI array.
> 
> To fix [2] replace setting Rx VLAN pruning in ice_set_vf_spoofchk() with
> setting Tx VLAN anti-spoof.
> 
> To Fix [3] we need to make sure the initial VSI settings match what is done in
> ice_set_vf_spoofchk() for spoofchk=on. Also make sure this also works for
> VF reset. This was done by modifying ice_vsi_init() to account for the current
> spoofchk state of the VF VSI.
> 
> Because of these changes, Tx VLAN anti-spoof needs to be removed from
> ice_cfg_vlan_pruning(). This is okay for the VF because this is now controlled
> from the admin enabling/disabling spoofchk. For the PF, Tx VLAN anti-spoof
> should not be set. This change requires us to call ice_set_vf_spoofchk()
> when configuring promiscuous mode for the VF which requires
> ice_set_vf_spoofchk() to move in order to prevent a forward declaration
> prototype.
> 
> Also, add VLAN 0 by default when allocating a VF since the PF is unaware if
> the guest OS is running the 8021q module. Without this, MDD events will
> trigger on untagged traffic because spoofcheck is enabled by default. Due to
> this change, ignore add/delete messages for VLAN 0 from VIRTCHNL since
> this is added/deleted during VF initialization/teardown respectively and
> should not be modified.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  34 +--
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 207 +++++++++++-------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 -
>  4 files changed, 146 insertions(+), 97 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
