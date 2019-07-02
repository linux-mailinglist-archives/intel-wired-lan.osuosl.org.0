Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E35265D836
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 00:53:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B3D381B82;
	Tue,  2 Jul 2019 22:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NVZelD6oYKsk; Tue,  2 Jul 2019 22:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B024864F4;
	Tue,  2 Jul 2019 22:53:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22CF31BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F19E86FDE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tyfCshUl47Ib for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 22:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E462860A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:53:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 15:53:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="154577458"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga007.jf.intel.com with ESMTP; 02 Jul 2019 15:53:08 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jul 2019 15:53:07 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.128]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 15:53:07 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S22 07/16] ice: Disable VFs until
 reset is completed
Thread-Index: AQHVLEdkKVP/mg4b2EeFGe0OsecJyqa3+Tfw
Date: Tue, 2 Jul 2019 22:53:07 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FBE18@ORSMSX104.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
 <20190626092027.52845-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmJkMmY0ZGItZjQ5Ni00ODhlLTg5YzYtNzg5MGIwZGFlMDJmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia2JISlJTWEw1UlwvRFZvTVdRY2twVFlDaklGdFwvQVkrMzI0bHpnTEdyampkbVYrWWkxSkVrXC8xeHhYZTgxaVJ3byJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 07/16] ice: Disable VFs until
 reset is completed
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
> Cc: Abodunrin, Akeem G <akeem.g.abodunrin@intel.com>
> Subject: [Intel-wired-lan] [PATCH S22 07/16] ice: Disable VFs until reset is
> completed
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> This patch adds code to clear VFs enable status until reset is completed, and
> Tx/Rx rings are setup. Without this patch, the code flow request Tx queues
> to be disabled after reset, especially PFR - where VF VSI Tx rings have already
> been wiped off in the NVM and result to adminq error based on the call to
> disable Tx lan queue in ice_reset_all_vfs function call.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++++
>  1 file changed, 5 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
