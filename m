Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D41C8E0FEF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 04:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05C638452F;
	Wed, 23 Oct 2019 02:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7VZIjW9Btn9; Wed, 23 Oct 2019 02:10:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03C9C806F4;
	Wed, 23 Oct 2019 02:10:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E8651BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2752C880F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DoWnrSvUJOjD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2019 02:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F419880F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 02:09:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 19:09:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,218,1569308400"; d="scan'208";a="191684403"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga008.jf.intel.com with ESMTP; 22 Oct 2019 19:09:42 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 22 Oct 2019 19:09:42 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.28]) with mapi id 14.03.0439.000;
 Tue, 22 Oct 2019 19:09:41 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>,
 "alexander.h.duyck@linux.intel.com" <alexander.h.duyck@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Thread-Topic: [next-queue PATCH v2 1/2] e1000e: Use rtnl_lock to prevent
 race conditions between net and pci/pm
Thread-Index: AQHVgEl0vjnrdVB+gU+og//4Vqxtw6dnjRqg
Date: Wed, 23 Oct 2019 02:09:41 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B97154DF9@ORSMSX103.amr.corp.intel.com>
References: <20191011153219.22313.60179.stgit@localhost.localdomain>
 <20191011153452.22313.70522.stgit@localhost.localdomain>
In-Reply-To: <20191011153452.22313.70522.stgit@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTUxYmQxYTMtODcxOC00MGZjLTljYmMtOWY3YWQ5ZDIxNzc1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTHIyRWRXeGNqNVFVVndSYlB5SG9vVUk1Rm16ZFwvaVFwMjhZMGhHdlBMbnNIT1B6bGxFZDV0STQ4NnhuNzZhOWgifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v2 1/2] e1000e: Use
 rtnl_lock to prevent race conditions between net and pci/pm
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "zdai@us.ibm.com" <zdai@us.ibm.com>,
 "zdai@linux.vnet.ibm.com" <zdai@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org>
> On Behalf Of Alexander Duyck
> Sent: Friday, October 11, 2019 8:35 AM
> To: alexander.h.duyck@linux.intel.com; intel-wired-lan@lists.osuosl.org;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: netdev@vger.kernel.org; zdai@us.ibm.com; zdai@linux.vnet.ibm.com
> Subject: [next-queue PATCH v2 1/2] e1000e: Use rtnl_lock to prevent race
> conditions between net and pci/pm
> 
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> This patch is meant to address possible race conditions that can exist
> between network configuration and power management. A similar issue was
> fixed for igb in commit 9474933caf21 ("igb: close/suspend race in
> netif_device_detach").
> 
> In addition it consolidates the code so that the PCI error handling code
> will essentially perform the power management freeze on the device prior to
> attempting a reset, and will thaw the device afterwards if that is what it
> is planning to do. Otherwise when we call close on the interface it should
> see it is detached and not attempt to call the logic to down the interface
> and free the IRQs again.
> 
> >From what I can tell the check that was adding the check for
> __E1000_DOWN
> in e1000e_close was added when runtime power management was added.
> However
> it should not be relevant for us as we perform a call to
> pm_runtime_get_sync before we call e1000_down/free_irq so it should
> always
> be back up before we call into this anyway.
> 
> Reported-by: Morumuri Srivalli <smorumu1@in.ibm.com>
> Tested-by: David Dai <zdai@linux.vnet.ibm.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c |   68 ++++++++++++++---------
> -----
>  1 file changed, 35 insertions(+), 33 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
