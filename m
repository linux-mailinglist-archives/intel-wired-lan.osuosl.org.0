Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD5F5EEAC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 23:40:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA0A785D00;
	Wed,  3 Jul 2019 21:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SgeO0joT8LjS; Wed,  3 Jul 2019 21:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98CBE86003;
	Wed,  3 Jul 2019 21:40:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E95D31BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E010984481
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j67ovO2FLI3i for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 21:40:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 358BD84477
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 21:40:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 14:40:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,448,1557212400"; d="scan'208";a="191179292"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2019 14:40:30 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jul 2019 14:40:29 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.236]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 14:40:29 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S7 4/9] i40e: don't report link
 up for a VF who hasn't enabled queues
Thread-Index: AQHVMRedCbrm7z44ZEyTNc01TF+cDaa5bZsA
Date: Wed, 3 Jul 2019 21:40:29 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD251@ORSMSX104.amr.corp.intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
 <20190702122259.79070-4-alice.michael@intel.com>
In-Reply-To: <20190702122259.79070-4-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTI3ZmU4MjUtZjY5Yi00Mjk2LTlhZTItM2EwYjNlNzVjODUxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSlJRM0RWYlo3ZGt5TVVmaENBWGJ5WW5EaytuSFZROURkMW5pUXJHT2F3bGxWQmpPaTJSTEs5bktLOGk0Q2F1ZyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S7 4/9] i40e: don't report link
 up for a VF who hasn't enabled queues
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
> Behalf Of Alice Michael
> Sent: Tuesday, July 2, 2019 5:23 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S7 4/9] i40e: don't report link up for a
> VF who hasn't enabled queues
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Commit d3d657a90850 ("i40e: update VFs of link state after
> GET_VF_RESOURCES") modified the PF driver to notify a VF of its link status
> immediately after it requests resources.
> 
> This was intended to fix reporting on VF drivers, so that they would properly
> report link status.
> 
> However, some older VF drivers do not respond well to receiving a link up
> notification before queues are enabled. This can cause their state machine to
> think that it is safe to send traffic. This results in a Tx hang on the VF.
> 
> More recent versions of the old i40evf and all versions of iavf are resilient to
> these early link status messages. However, if a VM happens to run an older
> version of the VF driver, this can be problematic.
> 
> Record whether the PF has actually enabled queues for the VF. When
> reporting link status, always report link down if the queues aren't enabled. In
> this way, the VF driver will never receive a link up notification until after its
> queues are enabled.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 13 ++++++++++++-
> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h |  1 +
>  2 files changed, 13 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
