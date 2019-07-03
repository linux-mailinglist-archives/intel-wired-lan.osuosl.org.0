Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EFA5EB71
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 20:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0BEA86E5C;
	Wed,  3 Jul 2019 18:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rtgfGJWcz0Pa; Wed,  3 Jul 2019 18:19:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A78087C20;
	Wed,  3 Jul 2019 18:19:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 673141BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6377C84331
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1kH3GVlh4KOk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 18:19:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EFDAA836D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:19:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 11:19:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="166057138"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2019 11:19:09 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.95]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 11:19:09 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v2 12/15] ice: Increase size of
 Mailbox receive queue for many VFs
Thread-Index: AQHVLgmSo7+/cfj/SkejZxrgJS+my6a5O3qA
Date: Wed, 3 Jul 2019 18:19:08 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD193@ORSMSX104.amr.corp.intel.com>
References: <20190628150332.59155-1-anthony.l.nguyen@intel.com>
 <20190628150332.59155-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20190628150332.59155-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWEzZTcxOWEtYTEwOS00NGZmLWExOTYtODZkMGI2NjBiOGRhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOXBBVlczQWxObzRpXC9DaklTWnphYmdyeXdvYW5TOERGY1RpVGFvUWZWb1dPcWNmYlVNWmxpV0JDaXNpeEpJT2cifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v2 12/15] ice: Increase size of
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
> Sent: Friday, June 28, 2019 8:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S23 v2 12/15] ice: Increase size of Mailbox
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
