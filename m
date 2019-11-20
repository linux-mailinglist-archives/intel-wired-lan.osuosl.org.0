Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7C11031CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Nov 2019 03:55:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9EA28845E;
	Wed, 20 Nov 2019 02:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2avuKRSLBmX; Wed, 20 Nov 2019 02:55:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04A2688466;
	Wed, 20 Nov 2019 02:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02C131BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 02:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA5F6877A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 02:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a9zE5gUeAwyP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Nov 2019 02:55:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB281876C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 02:55:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 18:55:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,220,1571727600"; d="scan'208";a="215674664"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2019 18:55:22 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 Nov 2019 18:55:21 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.179]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.26]) with mapi id 14.03.0439.000;
 Tue, 19 Nov 2019 18:55:21 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>, "joe@perches.com"
 <joe@perches.com>, "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [next-queue/net-next PATCH] e1000e: Use netdev_info instead of
 pr_info for link messages
Thread-Index: AQHVkAyCtXdab5ln90CZFebY7a8qMKeTesIw
Date: Wed, 20 Nov 2019 02:55:20 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B97179772@ORSMSX103.amr.corp.intel.com>
References: <cf197ef61703cbaa64ac522cf5d191b4b74f64d6.camel@linux.intel.com>
 <20191031165537.24154.48242.stgit@localhost.localdomain>
In-Reply-To: <20191031165537.24154.48242.stgit@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTVlNWE2OWEtMmRhMC00OWIwLTljN2EtZTMwOTIwNzJiNzZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS0dUY1hPNFJuaGordjY2VUtDSEt5a3JIQmhEWmNGXC9TQk9TMURwQ1NtRVcwQVZFT0FjYzVJUjNLeWJSaGw0ZkIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue/net-next PATCH] e1000e: Use
 netdev_info instead of pr_info for link messages
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
Cc: "zdai@linux.vnet.ibm.com" <zdai@linux.vnet.ibm.com>,
 "nhorman@redhat.com" <nhorman@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "smorumu1@in.ibm.com" <smorumu1@in.ibm.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Alexander Duyck <alexander.duyck@gmail.com>
> Sent: Thursday, October 31, 2019 9:59 AM
> To: joe@perches.com; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>;
> davem@davemloft.net
> Cc: zdai@linux.vnet.ibm.com; nhorman@redhat.com;
> netdev@vger.kernel.org; smorumu1@in.ibm.com; intel-wired-
> lan@lists.osuosl.org; Brown, Aaron F <aaron.f.brown@intel.com>;
> sassmann@redhat.com
> Subject: [next-queue/net-next PATCH] e1000e: Use netdev_info instead of
> pr_info for link messages
> 
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Replace the pr_info calls with netdev_info in all cases related to the
> netdevice link state.
> 
> As a result of this patch the link messages will change as shown below.
> Before:
> e1000e: ens3 NIC Link is Down
> e1000e: ens3 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> After:
> e1000e 0000:00:03.0 ens3: NIC Link is Down
> e1000e 0000:00:03.0 ens3: NIC Link is Up 1000 Mbps Full Duplex, Flow Control:
> Rx/Tx
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
> 
> Since Joe hasn't gotten back to me on if he wanted to do the patch or if
> he wanted me to do it I just went ahead and did it. This should address the
> concerns he had about the message formatting in "e1000e: Use rtnl_lock to
> prevent race".
> 
>  drivers/net/ethernet/intel/e1000e/netdev.c |    9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
