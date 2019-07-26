Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D3A77117
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 20:18:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED10987D05;
	Fri, 26 Jul 2019 18:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NI9cZ8saNoeu; Fri, 26 Jul 2019 18:18:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A89C87D0A;
	Fri, 26 Jul 2019 18:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34F041BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DED8899A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iQ3a-iFK3AZG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 18:18:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9CBFD886C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 18:18:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 11:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="173116459"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga003.jf.intel.com with ESMTP; 26 Jul 2019 11:18:18 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 11:18:18 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.102]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 11:18:17 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S24 07/12] ice: reject VF attempts to
 enable head writeback
Thread-Index: AQHVQX/4VJgQHYKo8ECRf+4I7nmqbabdOe5A
Date: Fri, 26 Jul 2019 18:18:17 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CDD3@ORSMSX104.amr.corp.intel.com>
References: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
 <20190723092759.3614-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20190723092759.3614-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2IyNzE2NzAtZGI2NC00OTk4LTg5NWMtMGQxNzdhNTkxYWY2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRzFCK2NlYmtBM1BvVytVY3RMSFJqVmQxRitxaUVoNEhlTnYrTko3ZUdpKzVsTFwvVzRsNlhua0xUVGljbXR2bmoifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S24 07/12] ice: reject VF attempts to
 enable head writeback
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
> Subject: [Intel-wired-lan] [PATCH S24 07/12] ice: reject VF attempts to
> enable head writeback
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The virtchnl interface provides a mechanism for a VF driver to request head
> writeback support. This feature is deprecated as of AVF 1.0, but older
> versions of a VF driver may still attempt to request the mode.
> 
> Since the ice hardware does not support head writeback, we should not
> accept Tx queue configuration which attempts to enable it.
> 
> Currently, the driver simply assumes that the headwb_enabled bit will never
> be set.
> 
> If a VF driver does request head writeback, the configuration will return
> successfully, even though head writeback is not enabled. This leaves the VF
> driver in a non functional state since it is assuming to be operating in head
> writeback mode.
> 
> Fix the PF driver to reject any attempt to setup headwb_enabled.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 1 +
>  1 file changed, 1 insertion(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
