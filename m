Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B95697CAB0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 19:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55EFA816E6;
	Wed, 31 Jul 2019 17:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5uzt2vJGa7g; Wed, 31 Jul 2019 17:39:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7583D81AE2;
	Wed, 31 Jul 2019 17:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BB5A1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04E598762E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyVH3m2yuycD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 17:38:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59EE487534
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:38:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:38:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="256223003"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga001.jf.intel.com with ESMTP; 31 Jul 2019 10:38:57 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 10:38:57 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.199]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:38:57 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v4 12/15] ice: Increase size of
 Mailbox receive queue for many VFs
Thread-Index: AQHVQw3Y+FpsJU/xlkG/KoE+0u8oUKblB3mw
Date: Wed, 31 Jul 2019 17:38:57 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40E9BE@ORSMSX104.amr.corp.intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
 <20190725085541.55104-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725085541.55104-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmQ2OWNjNWUtYmI5ZC00MzA3LTgzZmEtY2Y4ZDYxOGJhYjE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiV0FqVUhhamlBYndFSHdpN1lLSXliaXVWTTFheXd5K0VcL21FTklQemxlUnJ4b2dkR0hRdU84WHJYS0lRS3ZrZXYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v4 12/15] ice: Increase size of
 Mailbox receive queue for many VFs
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
> Sent: Thursday, July 25, 2019 1:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S23 v4 12/15] ice: Increase size of Mailbox
> receive queue for many VFs
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently we use the ICE_MBXQ_LEN for both the Mailbox send and receive
> queues that are used to communicate with VFs. This is fine for the send
> queue because the PF driver will lock the queue for every single send, but
> for the Mailbox receive queue every VF is posting to its Mailbox send queue
> and the hardware is then handing the message to the PF on its Mailbox
> receive queue. This becomes a problem with many VFs because it seems to
> overburden the Mailbox receive queue on the PF. Fix this by increasing the
> Mailbox receive queue for the PF to 512 entries.
> 
> The number 512 was determined based on the number of VFs supported by
> the device. We can have a total of 256 VFs so in the worst case this allows the
> VFs to put 2 messages in the PFs Mailbox receive queue at the same time.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      | 3 ++-
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>  2 files changed, 4 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
