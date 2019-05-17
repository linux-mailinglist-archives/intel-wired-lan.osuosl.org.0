Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A5022048
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2019 00:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 243EE883CF;
	Fri, 17 May 2019 22:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PRHK2Y22Ptp3; Fri, 17 May 2019 22:28:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F9E0883E6;
	Fri, 17 May 2019 22:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B1A61BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86997883CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KmhW3MdJLDAH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 22:28:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F439883CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:28:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 15:28:44 -0700
X-ExtLoop1: 1
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by FMSMGA003.fm.intel.com with ESMTP; 17 May 2019 15:28:44 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.171]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 15:28:43 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S5 iavf 10/11] iavf: add call to
 iavf_[add|del]_cloud_filter
Thread-Index: AQHVCnvE00P4BbAKL0CrgV00SSiguaZv6rhw
Date: Fri, 17 May 2019 22:28:42 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DB787@ORSMSX104.amr.corp.intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
 <20190514173709.62431-10-alice.michael@intel.com>
In-Reply-To: <20190514173709.62431-10-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGZhMWIyMDQtZmFiOS00Y2RiLWJmODgtNmYzOTJiODdiNTJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZkdBdmpxczlMMzE1MEFKK1o1c3daWitZSkQzM3l0UjF0eWRMOWF0WFlpdlhhQmtYSlpBOXlhS0Q0Yk9PcDZHOCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 iavf 10/11] iavf: add call to
 iavf_[add|del]_cloud_filter
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
> Behalf Of Alice Michael
> Sent: Tuesday, May 14, 2019 10:37 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S5 iavf 10/11] iavf: add call to
> iavf_[add|del]_cloud_filter
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Add call to iavf_add_cloud_filter and iavf_del_cloud_filter from
> iavf_process_aq_command to clear aq_required
> IAVF_FLAG_AQ_ADD_CLOUD_FILTER and
> IAVF_FLAG_AQ_DEL_CLOUD_FILTER bits.
> 
> aq_required IAVF_FLAG_AQ_DEL_CLOUD_FILTER bit is being set in
> iavf_down and iavf_delete_clsflower, and are never cleared.
> 
> aq_required IAVF_FLAG_AQ_ADD_CLOUD_FILTER bit is being set in
> iavf_handle_reset and iavf_configure_clsflower, and are never cleared.
> 
> Since the aq_required is not zero, iavf_watchdog_task is setting the
> queue_delayed_work to 20 msec instead of the longer delay.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
