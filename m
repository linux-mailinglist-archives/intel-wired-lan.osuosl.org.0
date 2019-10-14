Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18660D6851
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2019 19:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C26078651C;
	Mon, 14 Oct 2019 17:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sgw3DFCGBTGH; Mon, 14 Oct 2019 17:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14806865B0;
	Mon, 14 Oct 2019 17:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB5271BF280
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2019 17:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D3E4120338
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2019 17:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5+G3MCOvUguO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2019 17:20:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id CB9F520026
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2019 17:20:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 10:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="201518717"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2019 10:20:32 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 14 Oct 2019 10:20:31 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.88]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.228]) with mapi id 14.03.0439.000;
 Mon, 14 Oct 2019 10:20:31 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [net-next v3 3/7] mv88e6xxx: reject unsupported external
 timestamp flags
Thread-Index: AQHVdJXUEA6x0/E6e0uxXimj9y2LQqdX4KeA//+eqiCAALYKgIACRvTw
Date: Mon, 14 Oct 2019 17:20:31 +0000
Message-ID: <02874ECE860811409154E81DA85FBB589692862E@ORSMSX121.amr.corp.intel.com>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-4-jacob.e.keller@intel.com>
 <20191012182409.GD3165@localhost>
 <02874ECE860811409154E81DA85FBB5896926B0B@ORSMSX121.amr.corp.intel.com>
 <20191012232719.GA7148@localhost>
In-Reply-To: <20191012232719.GA7148@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODEzNjg2ZWMtODZkZi00YmRmLWI5NmQtNjhiMDQxZDg1MDRhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZE5LbUM4MWJ1UkNiMnMyamFtY1VSaTZVTGFlcnR3bWIrTXZ5SG5UaHR2WE9seXo3alwvXC8zb2dmTnducmxsUnRMIn0=
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
> Sent: Saturday, October 12, 2019 4:27 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; Brandon Streiff
> <brandon.streiff@ni.com>
> Subject: Re: [net-next v3 3/7] mv88e6xxx: reject unsupported external
> timestamp flags
> 
> On Sat, Oct 12, 2019 at 07:36:31PM +0000, Keller, Jacob E wrote:
> > Right, so in practice, unless it supports both edges, it should reject setting both
> RISING and FALLING together.
> 
> Enforcing that now *could* break existing user space, but I wonder
> whether any programs would actually be affected.
> 
> Maybe we can add a STRICT flag than requests strict checking.  If user
> space uses the "2" ioctl, then we would add this flag before invoking
> the driver callback.
> 
> Thanks,
> Richard

That could work. I don't know how much it's worth fixing it, but that would be the right way to fix it, I think.

I think the strict flag should do the following:

a) enforce that you must set at least one of the two edge flags (ensuring that a request to timestamp without one of the edges is rejected)
b) drivers *must* honor the edge flags or exit with a rejection if they can't support it. (unlike without 'strict', which would be like today and driver defined).
c) possibly: reject both flags at once since it doesn't really make sense to create a timestamp for each edge. At least, I think that makes it harder to actually use the timestamps since you need to be more careful to separate the two timestamps.

I'm not 100% sure on (c) but (b) can only be implemented in drivers, since the stack wouldn't know which modes the driver supports.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
