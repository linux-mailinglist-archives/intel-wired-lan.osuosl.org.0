Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F0D1782C3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Mar 2020 20:05:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 669B986773;
	Tue,  3 Mar 2020 19:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2JlMeFsFMi4; Tue,  3 Mar 2020 19:05:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 61426867A1;
	Tue,  3 Mar 2020 19:05:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C03771BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 19:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBBA22036E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 19:05:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NWo7X1rCOjIs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2020 19:05:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id B13C71FFFF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 19:05:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 11:05:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233851467"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 03 Mar 2020 11:05:42 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Mar 2020 11:05:42 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Mar 2020 11:05:41 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 3 Mar 2020 11:05:41 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S40 05/15] ice: Fix removing driver
 while bare-metal VFs pass traffic
Thread-Index: AQHV7ZoAB7mfh3Vym0GT6qfKCWDuZ6g3QjBQ
Date: Tue, 3 Mar 2020 19:05:41 +0000
Message-ID: <61f3b1bb1e64437188e201536d753122@intel.com>
References: <20200227181505.61720-1-anthony.l.nguyen@intel.com>
 <20200227181505.61720-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200227181505.61720-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTMxYzgwZjgtNDFiYy00ODc3LWI2YWQtNzY2MGUxZjZmMzVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiemc0YUZ5eDY1STAxaGtnTnBsRUJENzA4UThCTFwvM2JGNCtkb3FOXC94bHhDMmFBNHdTZ2ZEQnR4Wjd0UmEzak9rIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S40 05/15] ice: Fix removing driver
 while bare-metal VFs pass traffic
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
> Sent: Thursday, February 27, 2020 10:15 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S40 05/15] ice: Fix removing driver while
> bare-metal VFs pass traffic
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently, if there are bare-metal VFs passing traffic and the ice driver is
> removed, there is a possibility of VFs triggering a Tx timeout right before
> iavf_remove(). This is causing iavf_close() to not be called because there is a
> check in the beginning of iavf_remove() that bails out early if (adapter->state
> < IAVF_DOWN_PENDING). This makes it so some resources do not get
> cleaned up. Specifically, free_irq() is never called for data interrupts, which
> results in the following line of code to trigger:
> 
> pci_disable_msix()
> 	free_msi_irqs()
> 		...
> 		BUG_ON(irq_has_action(entry->irq + i));
> 		...
> 
> To prevent the Tx timeout from occurring on the VF during driver unload for
> ice and the iavf there are a few changes that are needed.
> 
> [1] Don't disable all active VF Tx/Rx queues prior to calling pci_disable_sriov.
> 
> [2] Call ice_free_vfs() before disabling the service task.
> 
> [3] Disable VF resets when the ice driver is being unloaded by setting the pf-
> >state flag __ICE_VF_RESETS_DISABLED.
> 
> Changing [1] and [2] allow each VF driver's remove flow to successfully send
> VIRTCHNL requests, which includes queue disable. This prevents unexpected
> Tx timeouts because the PF driver is no longer forcefully disabling queues.
> 
> Due to [1] and [2] there is a possibility that the PF driver will get a VFLR or
> reset request over VIRTCHNL from a VF during PF driver unload.
> Prevent that by doing [3].
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 19 +++++++++++++++----
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 19 +++++++++++++------
>  3 files changed, 29 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
