Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C73FD24E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 02:15:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55E7D88EF0;
	Fri, 15 Nov 2019 01:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FcLO9unsYunc; Fri, 15 Nov 2019 01:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA2E488E24;
	Fri, 15 Nov 2019 01:15:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8611BF406
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5CA6087D38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AfNrUnOVXTyC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 01:15:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F1E287CAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 01:15:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 17:15:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,306,1569308400"; d="scan'208";a="214666950"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2019 17:15:29 -0800
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 Nov 2019 17:15:29 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.139]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 17:15:29 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Saeed Mahameed <saeedm@mellanox.com>, Ariel Levkovich
 <lariel@mellanox.com>, "richardcochran@gmail.com" <richardcochran@gmail.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 06/13] mlx5: reject unsupported external timestamp
 flags
Thread-Index: AQHVmxuu8tFLlm8e7EeBgcX3fQ5mDaeL4AsA//+Nx0A=
Date: Fri, 15 Nov 2019 01:15:27 +0000
Message-ID: <02874ECE860811409154E81DA85FBB5896990AC2@ORSMSX121.amr.corp.intel.com>
References: <20191114184507.18937-7-richardcochran@gmail.com>
 <c90050bd6a63ef3a6f0c7ea999f44ec51c07e917.camel@mellanox.com>
In-Reply-To: <c90050bd6a63ef3a6f0c7ea999f44ec51c07e917.camel@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDViNmVlYzgtMDI3Ny00NTkxLWJjMTEtMTU5ODQ0ZDY4ZjEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTHNnaTVlV1NOakN6ZCtudm1mT1NMa0k4NFVcL2hyUnBTZW9IdHppR0Y1c2MzdEdnMnFpYlBZN2VwcFRlblZwQVMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 06/13] mlx5: reject unsupported
 external timestamp flags
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>,
 "brandon.streiff@ni.com" <brandon.streiff@ni.com>,
 "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>,
 "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "stefan.sorensen@spectralink.com" <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Saeed Mahameed <saeedm@mellanox.com>
> Sent: Thursday, November 14, 2019 4:03 PM
> To: Ariel Levkovich <lariel@mellanox.com>; richardcochran@gmail.com;
> netdev@vger.kernel.org
> Cc: Hall, Christopher S <christopher.s.hall@intel.com>; Eugenia Emantayev
> <eugenia@mellanox.com>; davem@davemloft.net;
> sergei.shtylyov@cogentembedded.com; Feras Daoud <ferasda@mellanox.com>;
> stefan.sorensen@spectralink.com; brandon.streiff@ni.com; Keller, Jacob E
> <jacob.e.keller@intel.com>; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>;
> intel-wired-lan@lists.osuosl.org; felipe.balbi@linux.intel.com
> Subject: Re: [PATCH net 06/13] mlx5: reject unsupported external timestamp
> flags
> 
> On Thu, 2019-11-14 at 10:45 -0800, Richard Cochran wrote:
> > From: Jacob Keller <jacob.e.keller@intel.com>
> >
> > Fix the mlx5 core PTP support to explicitly reject any future flags
> > that
> > get added to the external timestamp request ioctl.
> >
> > In order to maintain currently functioning code, this patch accepts
> > all
> > three current flags. This is because the PTP_RISING_EDGE and
> > PTP_FALLING_EDGE flags have unclear semantics and each driver seems
> > to
> > have interpreted them slightly differently.
> >
> > [ RC: I'm not 100% sure what this driver does, but if I'm not wrong
> > it
> >       follows the dp83640:
> >
> 
> The driver will check if the PTP_FALLING_EDGE flag was set then it will
> set it in HW, if not then it is going to default to PTP_RISING_EDGE, so
> LGTM.
> 
> Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>
> 
> But same story here, old tools that lazily set 0xffff or 0x0000 and
> expected every thing to work.. again not sure if they do exist.
> 
> Ariel please have a look at this patch.
> 

As long as they stick to the original ioctls this won't be a problem, because the v1 ioctl now explicitly clears unsupported bits before calling driver, so this check will pass. Obviously, this change should not be backported to earlier than 5.4 without also backporting that masking in the original ioctl functions.

Thanks,
Jake

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
