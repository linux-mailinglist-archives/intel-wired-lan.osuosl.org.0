Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854F513192B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2020 21:18:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA1EB87534;
	Mon,  6 Jan 2020 20:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXlreQXUZo5O; Mon,  6 Jan 2020 20:18:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08D0A881A0;
	Mon,  6 Jan 2020 20:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8EB1BF378
 for <intel-wired-lan@osuosl.org>; Mon,  6 Jan 2020 20:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 37F8A20457
 for <intel-wired-lan@osuosl.org>; Mon,  6 Jan 2020 20:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fa7jQGphxsCQ for <intel-wired-lan@osuosl.org>;
 Mon,  6 Jan 2020 20:18:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 30A6E20014
 for <intel-wired-lan@osuosl.org>; Mon,  6 Jan 2020 20:18:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 12:18:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="245696056"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jan 2020 12:18:12 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 6 Jan 2020 12:18:12 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 12:18:11 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 6 Jan 2020 12:18:11 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e/iavf: use better trace path
Thread-Index: AQHVwdzZWCRkNSfFbEKYHQATmqWN7afeGQag
Date: Mon, 6 Jan 2020 20:18:11 +0000
Message-ID: <94caf87af5d749bc8748a90f4f46cb50@intel.com>
References: <20200103022342.820175-1-jesse.brandeburg@intel.com>
In-Reply-To: <20200103022342.820175-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTVlYWYwMzQtNDJhMy00YTNiLTgxYzQtY2Y1NWIyOWJmYzBiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUURkaWcxSmFNdENrVHFYT2Q2QUh1NkZUYWRhVk5WUG9tRElGeHB4c1RaTzJwbVA5aWxFek5oMk9DUnJYZEZObyJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e/iavf: use better trace
 path
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
> Behalf Of Jesse Brandeburg
> Sent: Thursday, January 2, 2020 6:24 PM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] i40e/iavf: use better trace path
> 
> I'm seeing compilation fail of the i40e/iavf driver for some reason.
> I just checked 5.5-rc4 and the tip of net/net-next and all fail.
> Fails all the way back to v5.1 at least, I didn't check further back.
> 
> repro steps:
> $ gcc -v
> gcc version 9.2.1 20190827 (Red Hat 9.2.1-1) (GCC)
> 
> $ git checkout -b my-net davem-net/master $ make mrproper $ make
> O=../my-net.obj defconfig allmodconfig modules_prepare $ make O=../my-
> net.obj M=drivers/net/ethernet/intel/i40e
> 
> make[1]: Entering directory '/home/jbrandeb/git/my-net.obj'
>   CC [M]  drivers/net/ethernet/intel/i40e/i40e_main.o
> In file included from
> /home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_trace.h:20
> 9,
>                  from
> /home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_main.c:20:
> /home/jbrandeb/git/linux2/include/trace/define_trace.h:95:42: fatal error:
> ./i40e_trace.h: No such file or directory
>    95 | #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
>       |                                          ^
> compilation terminated.
> make[2]: *** [/home/jbrandeb/git/linux2/scripts/Makefile.build:266:
> drivers/net/ethernet/intel/i40e/i40e_main.o] Error 1
> make[1]: *** [/home/jbrandeb/git/linux2/Makefile:1693:
> drivers/net/ethernet/intel/i40e] Error 2
> make[1]: Leaving directory '/home/jbrandeb/git/my-net.obj'
> make: *** [Makefile:179: sub-make] Error 2
> 
> Just for sanity, I tried building the ice driver the same as above and it
> succeeds, so the build does work for some drivers.
> 
> So fix the include path for the i40e driver trace file to be relative to the kernel
> root like (some) other drivers do.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> ---
> v2: added iavf for the same fix
> ---
>  drivers/net/ethernet/intel/i40e/i40e_trace.h | 2 +-
> drivers/net/ethernet/intel/iavf/iavf_trace.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
