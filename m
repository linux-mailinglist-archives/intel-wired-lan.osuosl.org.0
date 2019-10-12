Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 337DFD5239
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2019 21:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D32F87842;
	Sat, 12 Oct 2019 19:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HJMRKa8guvfm; Sat, 12 Oct 2019 19:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5AF487776;
	Sat, 12 Oct 2019 19:36:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 959721BF578
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 19:36:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C91985E9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 19:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lcrNAP8Wfv_Q for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 19:36:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D4D9E85E71
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 19:36:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Oct 2019 12:36:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,289,1566889200"; d="scan'208";a="369736362"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga005.jf.intel.com with ESMTP; 12 Oct 2019 12:36:32 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.88]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.212]) with mapi id 14.03.0439.000;
 Sat, 12 Oct 2019 12:36:32 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [net-next v3 3/7] mv88e6xxx: reject unsupported external
 timestamp flags
Thread-Index: AQHVdJXUEA6x0/E6e0uxXimj9y2LQqdX4KeA//+eqiA=
Date: Sat, 12 Oct 2019 19:36:31 +0000
Message-ID: <02874ECE860811409154E81DA85FBB5896926B0B@ORSMSX121.amr.corp.intel.com>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-4-jacob.e.keller@intel.com>
 <20191012182409.GD3165@localhost>
In-Reply-To: <20191012182409.GD3165@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDI3Y2JmNmMtOWQyZi00YzEyLWE1M2UtMTA0NWEzMTlmMDNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ3VQcUIxY2xnN05lNDRtUDJaZU1od0JcL1hrVm83dGhcL2lEdVZNa2QrY0MrOHgxNENJS0JCWTcrQ0dvbVgwMjdNIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v3 3/7] mv88e6xxx: reject
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Saturday, October 12, 2019 11:24 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; Brandon Streiff
> <brandon.streiff@ni.com>
> Subject: Re: [net-next v3 3/7] mv88e6xxx: reject unsupported external
> timestamp flags
> 
> On Thu, Sep 26, 2019 at 11:11:05AM -0700, Jacob Keller wrote:
> > Fix the mv88e6xxx PTP support to explicitly reject any future flags that
> > get added to the external timestamp request ioctl.
> >
> > In order to maintain currently functioning code, this patch accepts all
> > three current flags. This is because the PTP_RISING_EDGE and
> > PTP_FALLING_EDGE flags have unclear semantics
> 
> For the record, the semantics are (or should be):
> 
>   flags                                                 Meaning
>   ----------------------------------------------------  --------------------------
>   PTP_ENABLE_FEATURE                                    invalid
>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
>   PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp
> both edges
> 
> > and each driver seems to
> > have interpreted them slightly differently.
> 
> This driver has:
> 
>   flags                                                 Meaning
>   ----------------------------------------------------  --------------------------
>   PTP_ENABLE_FEATURE                                    Time stamp falling edge
>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
>   PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
>   PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp
> rising edge
> 
> > Cc: Brandon Streiff <brandon.streiff@ni.com>
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Reviewed-by: Richard Cochran <richardcochran@gmail.com>

Right, so in practice, unless it supports both edges, it should reject setting both RISING and FALLING together.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
