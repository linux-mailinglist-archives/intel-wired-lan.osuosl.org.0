Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B454DFCE96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 20:16:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5682B89192;
	Thu, 14 Nov 2019 19:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3mZLxdyn9h8; Thu, 14 Nov 2019 19:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C99798918A;
	Thu, 14 Nov 2019 19:16:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9920B1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 94056890B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z8CXQrcoqpzk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 19:16:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B657F8907A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:16:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 11:16:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="406428637"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga006.fm.intel.com with ESMTP; 14 Nov 2019 11:16:45 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 Nov 2019 11:16:45 -0800
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.169]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.121]) with mapi id 14.03.0439.000;
 Thu, 14 Nov 2019 11:16:45 -0800
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net 00/13] ptp: Validate the ancillary ioctl flags more
 carefully.
Thread-Index: AQHVmxupzwcs4maF+0CjqiKu9dXf7qeLCV2g
Date: Thu, 14 Nov 2019 19:16:44 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589698F714@ORSMSX121.amr.corp.intel.com>
References: <20191114184507.18937-1-richardcochran@gmail.com>
In-Reply-To: <20191114184507.18937-1-richardcochran@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDc2MGViMzYtODcxOC00YmY1LWI5ZWUtOWExZjRlMWJiYzQyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMnhhVXViaXJvckRDYVBEbVZxeFFycVwveTJiSTdzK2FPZjZ3SFdIZHhnYjRmdnJqK1wvTUVJZjR5VDU5bTBRb2RBIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 00/13] ptp: Validate the ancillary
 ioctl flags more carefully.
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
> Subject: [PATCH net 00/13] ptp: Validate the ancillary ioctl flags more carefully.
> 
> The flags passed to the ioctls for periodic output signals and
> time stamping of external signals were never checked, and thus formed
> a useless ABI inadvertently.  More recently, a version 2 of the ioctls
> was introduced in order make the flags meaningful.  This series
> tightens up the checks on the new ioctl flags.
> 
> - Patch 1 ensures at least one edge flag is set for the new ioctl.
> - Patches 2-7 are Jacob's recent checks, picking up the tags.
> - Patch 8 introduces a "strict" flag for passing to the drivers when the
>   new ioctl is used.
> - Patches 9-12 implement the "strict" checking in the drivers.
> - Patch 13 extends the test program to exercise combinations of flags.
> 
> Jacob Keller (6):
>   net: reject PTP periodic output requests with unsupported flags
>   mv88e6xxx: reject unsupported external timestamp flags
>   dp83640: reject unsupported external timestamp flags
>   igb: reject unsupported external timestamp flags
>   mlx5: reject unsupported external timestamp flags
>   renesas: reject unsupported external timestamp flags
> 

The patches from me accurately represent what I submitted and I'm happy to have them committed via this series.

> Richard Cochran (7):
>   ptp: Validate requests to enable time stamping of external signals.
>   ptp: Introduce strict checking of external time stamp options.
>   mv88e6xxx: Reject requests to enable time stamping on both edges.
>   dp83640: Reject requests to enable time stamping on both edges.
>   igb: Reject requests that fail to enable time stamping on both edges.
>   mlx5: Reject requests to enable time stamping on both edges.
>   ptp: Extend the test program to check the external time stamp flags.

My only suggestion here would be to implement the STRICT flag without modifying drivers, and have drivers allow STRICT and begin checking for it at the same time.

Given this series all lands together though, it's not really a big deal because the resulting tree after all patches apply is the same.

Overall:

Acked-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake
> 
>  drivers/net/dsa/mv88e6xxx/ptp.c               | 13 +++++
>  drivers/net/ethernet/broadcom/tg3.c           |  4 ++
>  drivers/net/ethernet/intel/igb/igb_ptp.c      | 17 ++++++
>  .../ethernet/mellanox/mlx5/core/lib/clock.c   | 17 ++++++
>  drivers/net/ethernet/microchip/lan743x_ptp.c  |  4 ++
>  drivers/net/ethernet/renesas/ravb_ptp.c       | 11 ++++
>  .../net/ethernet/stmicro/stmmac/stmmac_ptp.c  |  4 ++
>  drivers/net/phy/dp83640.c                     | 16 ++++++
>  drivers/ptp/ptp_chardev.c                     | 20 +++++--
>  include/uapi/linux/ptp_clock.h                |  5 +-
>  tools/testing/selftests/ptp/testptp.c         | 53 ++++++++++++++++++-
>  11 files changed, 156 insertions(+), 8 deletions(-)
> 
> --
> 2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
