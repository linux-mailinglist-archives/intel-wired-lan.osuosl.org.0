Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9E213644E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2020 01:21:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1020C87E90;
	Fri, 10 Jan 2020 00:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3fH7VO-ZXFtn; Fri, 10 Jan 2020 00:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A3FD87E8B;
	Fri, 10 Jan 2020 00:21:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 510D51BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 00:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 490D686362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 00:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOaHWjoTuECY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2020 00:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A96D986357
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 00:21:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 16:21:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="423419333"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jan 2020 16:21:42 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jan 2020 16:21:42 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.250]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.176]) with mapi id 14.03.0439.000;
 Thu, 9 Jan 2020 16:21:42 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net v2] e1000e: Revert "e1000e: Make
 watchdog use delayed work"
Thread-Index: AQHVw5nhZX/k6X3rK0mLUicVZyDmE6fjEIGw
Date: Fri, 10 Jan 2020 00:21:41 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971A9B76@ORSMSX103.amr.corp.intel.com>
References: <20200105072922.3810260-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200105072922.3810260-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWUwMDMxMjQtZDdmOC00ODNkLWJjOWYtYWZmOWI0ZDhhYmY0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNzNmK09MdkxuN0RtcEpRUkVXZFpiNVZEUmtwb0pnQjVQQWcrc216WkQ4R1U3QWp0WUdTVG1jSmtBb0hIXC84am0ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net v2] e1000e: Revert "e1000e: Make
 watchdog use delayed work"
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jeff
> Kirsher
> Sent: Saturday, January 4, 2020 11:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net v2] e1000e: Revert "e1000e: Make watchdog use
> delayed work"
> 
> This reverts commit 59653e6497d16f7ac1d9db088f3959f57ee8c3db.
> 
> This is due to this commit causing driver crashes and connections to
> reset unexpectedly.
> 
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> ---
> v2: fix the partial revert of Alex Duyck's patch to remove the use of
>     __E1000_DOWN bit
> 
>  drivers/net/ethernet/intel/e1000e/e1000.h  |  5 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c | 54 ++++++++++------------
>  2 files changed, 27 insertions(+), 32 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
