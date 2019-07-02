Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FF95D83E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 00:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E08C884AF9;
	Tue,  2 Jul 2019 22:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJFg3bHcxOHW; Tue,  2 Jul 2019 22:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29D51864F6;
	Tue,  2 Jul 2019 22:56:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9D071BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5F74840D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9AgEn0RN5bEo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 22:56:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 743F784034
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:56:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 15:56:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="154578105"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga007.jf.intel.com with ESMTP; 02 Jul 2019 15:56:41 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.153]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 15:56:41 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S22 11/16] ice: Add stats for Rx
 drops at the port level
Thread-Index: AQHVLEdaOrnHrXufxUaovTKXo7nUtqa3+jMA
Date: Tue, 2 Jul 2019 22:56:41 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FBE58@ORSMSX104.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
 <20190626092027.52845-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTQ3MTExNTEtNmMzMy00NDhiLWI0ZTAtMGI1NDNlMzViNTY1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVkRyUUpzdDlZcDVJam9td3gwTjk4N2wycTdwam5mWkJEa2NlblRXNnlKbDdZVEZlMEZRYk1uc0dhZzczTkZEOSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 11/16] ice: Add stats for Rx drops
 at the port level
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
> Cc: Creeley, Brett <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH S22 11/16] ice: Add stats for Rx drops at the
> port level
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently we are not reporting dropped counts at the port level to ethtool or
> netlink. This was found when debugging Rx dropped issues and the total
> packets sent did not equal the total packets received minus the rx_dropped,
> which was very confusing. To determine dropped counts at the port level we
> need to read the PRTRPB_RDPC register.
> To fix reporting we will store the dropped counts in the PF's rx_discards. This
> will be reported to netlink by storing it in the PF VSI's rx_missed_errors
> signaling that the receiver missed the packet. Also, we will report this to
> ethtool in the rx_dropped.nic field.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h | 1 +
>  drivers/net/ethernet/intel/ice/ice_main.c       | 6 ++++++
>  2 files changed, 7 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
