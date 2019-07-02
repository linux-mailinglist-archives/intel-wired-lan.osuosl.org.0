Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F1A5D82D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 00:51:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21B57873DE;
	Tue,  2 Jul 2019 22:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tbHI5C6Djc34; Tue,  2 Jul 2019 22:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A79DC873DA;
	Tue,  2 Jul 2019 22:51:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A9931BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 264B584FB9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id op6kys9J5owr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 22:51:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E686184FA5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:50:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 15:50:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="184604529"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2019 15:50:42 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.135]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 15:50:42 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S22 05/16] ice: separate out control
 queue lock creation
Thread-Index: AQHVLEdsa09cvgxuFke/+PVfI5L696a3+Ibw
Date: Tue, 2 Jul 2019 22:50:41 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FBDF2@ORSMSX104.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
 <20190626092027.52845-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWI1MTBkYzEtZGE2YS00MmQ0LThiMzQtYmM3YzRlY2Y5MmMyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid0Y4aTJINm5cL21Fc0lXYWVaaDRmTWM4eTdabERGTlNFWHBqWStZUmVwTlBOTFRVd3Nnd2VSa3pjem9ScEE2Yk8ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 05/16] ice: separate out control
 queue lock creation
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
> Sent: Wednesday, June 26, 2019 2:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S22 05/16] ice: separate out control queue
> lock creation
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_init_all_ctrlq and ice_shutdown_all_ctrlq functions create and
> destroy the locks used to protect the send and receive process of each
> control queue.
> 
> This is problematic, as the driver may use these functions to shutdown and
> re-initialize the control queues at run time. For example, it may do this in
> response to a device reset.
> 
> If the driver failed to recover from a reset, it might leave the control queues
> offline. In this case, the locks will no longer be initialized.
> A later call to ice_sq_send_cmd will then attempt to acquire a lock that has
> been destroyed.
> 
> It is incorrect behavior to access a lock that has been destroyed.
> 
> Indeed, ice_aq_send_cmd already tries to avoid accessing an offline control
> queue, but the check occurs inside the lock.
> 
> The root of the problem is that the locks are destroyed at run time.
> 
> Modify ice_init_all_ctrlq and ice_shutdown_all_ctrlq such that they no longer
> create or destroy the locks.
> 
> Introduce new functions, ice_create_all_ctrlq and ice_destroy_all_ctrlq.
> Call these functions in ice_init_hw and ice_deinit_hw.
> 
> Now, the control queue locks will remain valid for the life of the driver, and
> will not be destroyed until the driver unloads.
> 
> This also allows removing a duplicate check of the sq.count and rq.count
> values when shutting down the controlqs. The ice_shutdown_ctrlq function
> already checks this value under the lock. Previously commit dec64ff10ed9
> ("ice: use [sr]q.count when checking if queue is
> initialized") needed this check to happen outside the lock, because it
> prevented duplicate attempts at destroying the locks.
> 
> The driver may now safely use ice_init_all_ctrlq and ice_shutdown_all_ctrlq
> while handling reset events, without causing the locks to be invalid.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   |   6 +-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 112 ++++++++++++++----
>  3 files changed, 91 insertions(+), 29 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
