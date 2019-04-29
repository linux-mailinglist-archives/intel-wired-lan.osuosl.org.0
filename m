Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D4AE9FF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2019 20:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2DE26233B8;
	Mon, 29 Apr 2019 18:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pCQHSbnfUOIh; Mon, 29 Apr 2019 18:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9087230A1;
	Mon, 29 Apr 2019 18:18:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 799CE1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75DD28587D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dcmpXNdZ-Aum for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2019 18:18:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DD275853D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 18:18:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 11:18:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,410,1549958400"; d="scan'208";a="166000814"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2019 11:18:33 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 29 Apr 2019 11:18:33 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.34]) with mapi id 14.03.0415.000;
 Mon, 29 Apr 2019 11:18:33 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S20 15/15] ice: Use GLINT_DYN_CTL to
 disable VF's interrupts
Thread-Index: AQHU9HpCUxbhr2/KjkOuxHqH+IerI6ZThuOQ
Date: Mon, 29 Apr 2019 18:18:32 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39AD15@ORSMSX106.amr.corp.intel.com>
References: <20190416173052.28928-1-anirudh.venkataramanan@intel.com>
 <20190416173052.28928-16-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173052.28928-16-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzBiMjUxNjMtNTllZC00MDZjLTljZWItY2M1MDMwZjIxYjEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUmN4SDVhajE1ZWw1UHZROG1YN3RIdU5uVXR4U1BqQVM0VFBMaWhJOEh5Wno0N2Rxd1h5RzdpVis3TTJEZzFsWSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S20 15/15] ice: Use GLINT_DYN_CTL to
 disable VF's interrupts
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
> Subject: [Intel-wired-lan] [PATCH S20 15/15] ice: Use GLINT_DYN_CTL to
> disable VF's interrupts
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently in ice_free_vf_res() we are writing to the VFINT_DYN_CTLN
> register in the PF's function space to disable all VF's interrupts. This is
> incorrect because this register is only for use in the VF's function space. This
> becomes obvious when seeing that the valid indices used for the
> VFINT_DYN_CTLN register is from 0-63, which is the maximum number of
> interrupts for a VF (not including the OICR interrupt). Fix this by writing to the
> GLINT_DYN_CTL register for each VF. We can do this because we keep track
> of each VF's first_vector_idx inside of the PF's function space and the
> number of interrupts given to each VF.
> 
> Also in ice_free_vfs() we were disabling Rx/Tx queues after calling
> pci_disable_sriov(). One part of disabling the Tx queues causes the PF driver
> to trigger a software interrupt, which causes the VF's napi routine to run. This
> doesn't currently work because pci_disable_sriov() causes iavf_remove() to
> be called which disables interrupts. Fix this by disabling Rx/Tx queues prior to
> pci_disable_sriov().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 41 ++++++-------------
>  1 file changed, 13 insertions(+), 28 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
