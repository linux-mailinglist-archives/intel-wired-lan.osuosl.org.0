Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC40FE9E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2019 20:14:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F15984B96;
	Mon, 29 Apr 2019 18:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QImcN5zitcsF; Mon, 29 Apr 2019 18:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8871287476;
	Mon, 29 Apr 2019 18:14:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0449E1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 00E2222C44
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bcMvmchnchYd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2019 18:14:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B5A822920
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:14:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 11:14:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,410,1549958400"; d="scan'208";a="165999650"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2019 11:14:50 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 29 Apr 2019 11:14:50 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.163]) with mapi id 14.03.0415.000;
 Mon, 29 Apr 2019 11:14:50 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S20 07/15] ice: Refactor interrupt
 tracking
Thread-Index: AQHU9HpNVF5lhg176Uu0al8p/UEp/KZThdGg
Date: Mon, 29 Apr 2019 18:14:49 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39AC98@ORSMSX106.amr.corp.intel.com>
References: <20190416173052.28928-1-anirudh.venkataramanan@intel.com>
 <20190416173052.28928-8-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173052.28928-8-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTcwNTgxNmUtYzQ3MS00Y2I2LTlkOWMtZmEwMDRjNDRjZWM1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaENQMmpqUTJKcWRDXC9qK3VxRkRUQkhiY2Z2Sms4aHZwWlZcL3RyK05ValwvXC9raGpiRXpiUlFhb2llcXRYMHRBa0oifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S20 07/15] ice: Refactor interrupt
 tracking
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
> Sent: Tuesday, April 16, 2019 10:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S20 07/15] ice: Refactor interrupt tracking
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently we have two MSI-x (IRQ) trackers, one for OS requested MSI-x
> entries (sw_irq_tracker) and one for hardware MSI-x vectors
> (hw_irq_tracker). Generally the sw_irq_tracker has less entries than the
> hw_irq_tracker because the hw_irq_tracker has entries equal to the max
> allowed MSI-x per PF and the sw_irq_tracker is mainly the minimum (non SR-
> IOV portion of the vectors, kernel granted IRQs). All of the non SR-IOV
> portions of the driver (i.e. LAN queues, RDMA queues, OICR, etc.) take at
> least one of each type of tracker resource. SR-IOV only grabs entries from
> the hw_irq_tracker. There are a few issues with this approach that can be
> seen when doing any kind of device reconfiguration (i.e.
> ethtool -L, SR-IOV, etc.). One of them being, any time the driver creates an
> ice_q_vector and associates it to a LAN queue pair it will grab and use one
> entry from the hw_irq_tracker and one from the sw_irq_tracker.
> If the indices on these does not match it will cause a Tx timeout, which will
> cause a reset and then the indices will match up again and traffic will resume.
> The mismatched indices come from the trackers not being the same size
> and/or the search_hint in the two trackers not being equal.
> Another reason for the refactor is the co-existence of features with SR-IOV.
> If SR-IOV is enabled and the interrupts are taken from the end of the
> sw_irq_tracker then other features can no longer use this space because the
> hardware has now given the remaining interrupts to SR-IOV.
> 
> This patch reworks how we track MSI-x vectors by removing the
> hw_irq_tracker completely and instead MSI-x resources needed for SR-IOV
> are determined all at once instead of per VF. This can be done because when
> creating VFs we know how many are wanted and how many MSI-x vectors
> each VF needs. This also allows us to start using MSI-x resources from the
> end of the PF's allowed MSI-x vectors so we are less likely to use entries
> needed for other features (i.e. RDMA, L2 Offload, etc).
> 
> This patch also reworks the ice_res_tracker structure by removing the
> search_hint and adding a new member - "end". Instead of having a
> search_hint we will always search from 0. The new member, "end", will be
> used to manipulate the end of the ice_res_tracker (specifically
> sw_irq_tracker) during runtime based on MSI-x vectors needed by SR-IOV.
> In the normal case, the end of ice_res_tracker will be equal to the
> ice_res_tracker's num_entries.
> 
> The sriov_base_vector member was added to the PF structure. It is used to
> represent the starting MSI-x index of all the needed MSI-x vectors for all SR-
> IOV VFs. Depending on how many MSI-x are needed, SR-IOV may have to
> take resources from the sw_irq_tracker. This is done by setting the
> sw_irq_tracker->end equal to the pf->sriov_base_vector. When all SR-IOV
> VFs are removed then the sw_irq_tracker->end is reset back to
> sw_irq_tracker->num_entries. The sriov_base_vector, along with the VF's
> number of MSI-x (pf->num_vf_msix), vf_id, and the base MSI-x index on the
> PF (pf->hw.func_caps.common_cap.msix_vector_first_id), is used to
> calculate the first HW absolute MSI-x index for each VF, which is used to
> write to the VPINT_ALLOC[_PCI] and GLINT_VECT2FUNC registers to
> program the VFs MSI-x PCI configuration bits. Also, the sriov_base_vector is
> used along with VF's num_vf_msix, vf_id, and q_vector->v_idx to determine
> the MSI-x register index (used for writing to GLINT_DYN_CTL) within the PF's
> space.
> 
> Interrupt changes removed any references to hw_base_vector,
> hw_oicr_idx, and hw_irq_tracker. Only sw_base_vector, sw_oicr_idx, and
> sw_irq_tracker variables remain. Change all of these by removing the "sw_"
> prefix to help avoid confusion with these variables and their use.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  21 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   5 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 179 +++++------------
>  drivers/net/ethernet/intel/ice/ice_main.c     |  82 +++-----
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 186 ++++++++++++++++--
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   8 +
>  6 files changed, 263 insertions(+), 218 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
