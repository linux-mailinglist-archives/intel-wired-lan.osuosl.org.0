Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFCE5D842
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 00:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61F3D20016;
	Tue,  2 Jul 2019 22:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vASlwZpifmEL; Tue,  2 Jul 2019 22:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E1AD20781;
	Tue,  2 Jul 2019 22:58:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 708501BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F534873DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L1Qg9kGD2U+A for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 22:58:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6BE5B86FCD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:58:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 15:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="164165890"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2019 15:58:55 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jul 2019 15:58:54 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.198]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 15:58:54 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S22 13/16] ice: Don't return error
 for disabling LAN Tx queue that does exist
Thread-Index: AQHVLEdbURVlJOuIvEWePKPt8kKVKqa3+tJw
Date: Tue, 2 Jul 2019 22:58:53 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FBE74@ORSMSX104.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
 <20190626092027.52845-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTZlNDNiNmEtN2EyYS00ZTNlLWI0OTktMTI3YjAxZDM3NjYxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTThJekI0bzZCZUpvTndcL0pWMmg4bUJNTnpKNXgwWWhvcWU4THZpMEpucVRNZDNcL3pjY1ZHYjhOQ1dVRzhIZWtkIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 13/16] ice: Don't return error for
 disabling LAN Tx queue that does exist
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
> Sent: Wednesday, June 26, 2019 2:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Abodunrin, Akeem G <akeem.g.abodunrin@intel.com>
> Subject: [Intel-wired-lan] [PATCH S22 13/16] ice: Don't return error for
> disabling LAN Tx queue that does exist
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> Since Tx rings are being managed by FW/NVM, Tx rings might have not been
> set up or driver had already wiped them off - In that case, call to disable LAN
> Tx queue is being returned as not in existence. This patch makes sure we
> don't return unnecessary error for such scenario.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
>  1 file changed, 3 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
