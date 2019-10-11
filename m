Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB06BD36AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 03:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58F92887B4;
	Fri, 11 Oct 2019 01:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrAHnqiDkkAN; Fri, 11 Oct 2019 01:03:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E068A887B5;
	Fri, 11 Oct 2019 01:03:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28EB61BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 01:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D20E7203BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 01:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qk6X3oQxniII for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 01:03:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 08F32203BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 01:03:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:03:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="345877409"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga004.jf.intel.com with ESMTP; 10 Oct 2019 18:03:05 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 18:03:05 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.55]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 18:03:05 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [net-next v3 1/7] ptp: correctly disable flags on old ioctls
Thread-Index: AQHVdJXVvRAbYvf0F0in/5Qw2yurA6dUtffQ
Date: Fri, 11 Oct 2019 01:03:04 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9714C84E@ORSMSX103.amr.corp.intel.com>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-2-jacob.e.keller@intel.com>
In-Reply-To: <20190926181109.4871-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWJlMjU1ZTMtNDc1MS00ODdjLTk3N2MtZjY0MmFiYTI5NjUzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoianlTM1NQVmlIVHgxOFdKNWRXZms5ZTlIOVwvVzhTdTFqTStTUjRDWUhDMlZWa05XeDNCd0dHelwvb3hiUEdVNis5In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v3 1/7] ptp: correctly disable
 flags on old ioctls
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
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: netdev-owner@vger.kernel.org [mailto:netdev-owner@vger.kernel.org]
> On Behalf Of Jacob Keller
> Sent: Thursday, September 26, 2019 11:11 AM
> To: netdev@vger.kernel.org
> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Richard Cochran <richardcochran@gmail.com>; Felipe Balbi
> <felipe.balbi@linux.intel.com>; David S . Miller <davem@davemloft.net>; Hall,
> Christopher S <christopher.s.hall@intel.com>
> Subject: [net-next v3 1/7] ptp: correctly disable flags on old ioctls
> 
> Commit 415606588c61 ("PTP: introduce new versions of IOCTLs",
> 2019-09-13) introduced new versions of the PTP ioctls which actually
> validate that the flags are acceptable values.
> 
> As part of this, it cleared the flags value using a bitwise
> and+negation, in an attempt to prevent the old ioctl from accidentally
> enabling new features.
> 
> This is incorrect for a couple of reasons. First, it results in
> accidentally preventing previously working flags on the request ioctl.
> By clearing the "valid" flags, we now no longer allow setting the
> enable, rising edge, or falling edge flags.
> 
> Second, if we add new additional flags in the future, they must not be
> set by the old ioctl. (Since the flag wasn't checked before, we could
> potentially break userspace programs which sent garbage flag data.
> 
> The correct way to resolve this is to check for and clear all but the
> originally valid flags.
> 
> Create defines indicating which flags are correctly checked and
> interpreted by the original ioctls. Use these to clear any bits which
> will not be correctly interpreted by the original ioctls.
> 
> In the future, new flags must be added to the VALID_FLAGS macros, but
> *not* to the V1_VALID_FLAGS macros. In this way, new features may be
> exposed over the v2 ioctls, but without breaking previous userspace
> which happened to not clear the flags value properly. The old ioctl will
> continue to behave the same way, while the new ioctl gains the benefit
> of using the flags fields.
> 
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Christopher Hall <christopher.s.hall@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/ptp/ptp_chardev.c      |  4 ++--
>  include/uapi/linux/ptp_clock.h | 22 ++++++++++++++++++++++
>  2 files changed, 24 insertions(+), 2 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
