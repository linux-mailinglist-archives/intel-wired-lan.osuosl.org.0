Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C60C8FCE73
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 20:08:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 544598919C;
	Thu, 14 Nov 2019 19:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mg++DFOL1Swc; Thu, 14 Nov 2019 19:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FE728915E;
	Thu, 14 Nov 2019 19:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0B211BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 97ED889A13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kV5-6BjEUScr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 19:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C59A4899D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:08:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 11:08:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="288315203"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga001.jf.intel.com with ESMTP; 14 Nov 2019 11:08:17 -0800
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 Nov 2019 11:08:17 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.139]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 11:08:17 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 03/13] mv88e6xxx: reject unsupported external
 timestamp flags
Thread-Index: AQHVmxuqoyuZAt2Q/kiNsy7f91B6uaeLB11Q
Date: Thu, 14 Nov 2019 19:08:16 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589698F6A6@ORSMSX121.amr.corp.intel.com>
References: <20191114184507.18937-4-richardcochran@gmail.com>
In-Reply-To: <20191114184507.18937-4-richardcochran@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODYyNDY2NDItN2FlMy00YjhhLTg4NTYtOThmZjJjYTlkNzVkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaU1FYm1sQ1Jvb2QwN2srZWJkR0FhT3JqZnhGWElyZVI4Rk5BTHdoRk5ObkZpN3pSbGtMYklJVGYwTEllK292MCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 03/13] mv88e6xxx: reject
 unsupported external timestamp flags
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
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras
 Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Thursday, November 14, 2019 10:45 AM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; David Miller <davem@davemloft.net>;
> Brandon Streiff <brandon.streiff@ni.com>; Hall, Christopher S
> <christopher.s.hall@intel.com>; Eugenia Emantayev <eugenia@mellanox.com>;
> Felipe Balbi <felipe.balbi@linux.intel.com>; Feras Daoud
> <ferasda@mellanox.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Kirsher,
> Jeffrey T <jeffrey.t.kirsher@intel.com>; Sergei Shtylyov
> <sergei.shtylyov@cogentembedded.com>; Stefan Sorensen
> <stefan.sorensen@spectralink.com>
> Subject: [PATCH net 03/13] mv88e6xxx: reject unsupported external timestamp
> flags
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Fix the mv88e6xxx PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
> have interpreted them slightly differently.
> 
> For the record, the semantics of this driver are:
> 
>   flags                                                 Meaning
>   ----------------------------------------------------  --------------------------
>   PTP_ENABLE_FEATURE                                    Time stamp falling edge

For the new version of the ioctl this isn't possible, but we still support the v1 ioctl which would still have this mode. Ok.

>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
>   PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp
> rising edge
> 

Thanks,
Jake

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
