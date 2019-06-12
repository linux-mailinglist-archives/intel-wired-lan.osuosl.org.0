Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AB341AC8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 05:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E60E85FA3;
	Wed, 12 Jun 2019 03:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xc0LuqqtV818; Wed, 12 Jun 2019 03:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BE0F85FAA;
	Wed, 12 Jun 2019 03:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDD681BF86C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 03:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA20885F8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 03:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ntd6CRQdU3Md for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 03:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 22C2985F5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 03:36:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 20:36:30 -0700
X-ExtLoop1: 1
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jun 2019 20:36:30 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 11 Jun 2019 20:36:29 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.232]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.104]) with mapi id 14.03.0415.000;
 Tue, 11 Jun 2019 20:36:29 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Bowers, AndrewX" <andrewx.bowers@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5] i40e: Add macvlan support on i40e
Thread-Index: AQHU31fIoJXHkO8eYEintKcppGSgaKYXIT6AgIC/8NA=
Date: Wed, 12 Jun 2019 03:36:29 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9709D1BF@ORSMSX103.amr.corp.intel.com>
References: <20190320200335.18121-1-jeffrey.t.kirsher@intel.com>
 <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D376A99@ORSMSX104.amr.corp.intel.com>
In-Reply-To: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D376A99@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWQzY2E3MmUtM2JjNC00MGQyLWE3YjAtYTE0YzU1MmIyOGE2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQzVldkVCQ3M0bmQ5Yjg3Zk1VMDZRdTNrUVRHalhuV00xSnR2bTR5Qk41ckg2c2h4UDB4dHQ0cFlsbUVpcmZDXC8ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v5] i40e: Add macvlan support on i40e
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

> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Bowers, AndrewX
> Sent: Thursday, March 21, 2019 3:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v5] i40e: Add macvlan support on i40e
> 
> > -----Original Message-----
> > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > Behalf Of Jeff Kirsher
> > Sent: Wednesday, March 20, 2019 1:04 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH v5] i40e: Add macvlan support on i40e
> >
> > From: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>
> >
> > This patch enables macvlan offloads for i40e. The idea is to use channels as
> > macvlan interfaces. The channels are VSIs of type VMDQ. When the first
> > macvlan is created, the maximum number of channels possible are created.
> > From then on, as a macvlan interface is created, a mac filter is added to
> these
> > already created channels (VSIs).
> >
> > This patch builds on top of the recent changes which move away from the
> > select_queue implementation of picking the tx queue.
> >
> > Steps to configure macvlan offloads:
> > 1. ethtool -K ens261f1 l2-fwd-offload on 2. ip link add link ens261f1 name
> > macvlan1 type macvlan 3. ip addr add <address> dev macvlan1 4. ip link set
> > macvlan1 up
> >
> > Signed-off-by: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>
> > ---
> > v5: updated the patch description based on community feedback
> >
> >  drivers/net/ethernet/intel/i40e/i40e.h      |  26 ++
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 484
> +++++++++++++++++++-
> >  2 files changed, 508 insertions(+), 2 deletions(-)
> 
> Tested-by: Andrew Bowers <andrewx.bowers@intel.com>

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
