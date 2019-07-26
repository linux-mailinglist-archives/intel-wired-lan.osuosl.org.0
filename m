Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8218D77111
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 20:17:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D22788E97;
	Fri, 26 Jul 2019 18:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Ra0rPxHM8zU; Fri, 26 Jul 2019 18:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 62FAF88E81;
	Fri, 26 Jul 2019 18:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D08881BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CD748899A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4tkCYv5rKZfz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 18:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8ECB6886C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:17:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 11:17:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="369626457"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2019 11:17:14 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 11:17:14 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.99]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 11:17:13 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S24 05/12] ice: Fix RSS LUT table
 when setting Rx channels
Thread-Index: AQHVQYABIunekG1BfUSBdFwNo26b+KbdOaPw
Date: Fri, 26 Jul 2019 18:17:13 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CDB3@ORSMSX104.amr.corp.intel.com>
References: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
 <20190723092759.3614-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20190723092759.3614-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzg3YTc4OGUtNWUwZS00Njg4LWIwMjUtNjY3ZDk1ZjhkNWJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicmN6bTkyXC9wOFFtenhsS1NmXC9ERXVzY2NEUU82N0VjR0F0Sm9XSjY5UXRCUm1GRnQ5YWdEUHcyeDR5bEo0ejc1In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S24 05/12] ice: Fix RSS LUT table when
 setting Rx channels
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
> Sent: Tuesday, July 23, 2019 2:28 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S24 05/12] ice: Fix RSS LUT table when
> setting Rx channels
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently there are multiple problems involved with setting Rx channels in
> regards to the RSS LUT. First, if the user set the indirection table manually
> through ethtool, changing the Rx channels will blindly use the user set value.
> Second when increasing the number of Rx channels the RSS table size is
> doing of minimum of the last RSS table width and the newly requested one,
> this is causing the previously set RSS table width to be used.
> 
> Fix these issues by adding the function ice_pf_set_dflt_rss_lut() that is called
> when changing the number of Rx channels. This function updates the RSS
> LUT to the default configuration for the PF any time the user has changed the
> number of Rx channels.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 64 ++++++++++++++++++++
>  1 file changed, 64 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
