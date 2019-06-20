Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 587704C469
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 02:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09EBC85F52;
	Thu, 20 Jun 2019 00:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TBjVtHQocbg6; Thu, 20 Jun 2019 00:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9B0C85F3A;
	Thu, 20 Jun 2019 00:21:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 41B211BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 00:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 32F3F203BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 00:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21f4f+HTW-9e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 00:20:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 575572010A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 00:20:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 17:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="170715851"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga002.jf.intel.com with ESMTP; 19 Jun 2019 17:20:58 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 17:20:57 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.84]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 17:20:57 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next v2] e1000e: Reduce boot time by
 tightening sleep ranges
Thread-Index: AQHVJv4HvexorVUIQ0qjlK9lRrQJLQ==
Date: Thu, 20 Jun 2019 00:20:57 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B077D@ORSMSX103.amr.corp.intel.com>
References: <20190615002935.16397-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190615002935.16397-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next v2] e1000e: Reduce boot time by
 tightening sleep ranges
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Arjan van de Ven <arjan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2019-06-14 at 17:29 -0700, Jeff Kirsher wrote:
> From: Arjan van de Ven <arjan@linux.intel.com>
> 
> The e1000e driver is a great user of the usleep_range() API,
> and has nice ranges that in principle help power management.
> 
> However the ranges that are used only during system startup are
> very long (and can add easily 100 msec to the boot time) while
> the power savings of such long ranges is irrelevant due to the
> one-off, boot only, nature of these functions.
> 
> This patch shrinks some of the longest ranges to be shorter
> (while still using a power friendly 1 msec range); this saves
> 100msec+ of boot time on my BDW NUCs
> 
> Signed-off-by: Arjan van de Ven <arjan@linux.intel.com>
> Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
> v2: fixed up patch to apply cleanly to the upstream e1000e driver
> 
>  .../net/ethernet/intel/e1000e/80003es2lan.c   |  2 +-
>  drivers/net/ethernet/intel/e1000e/82571.c     |  2 +-
>  drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 ++++++-------
>  drivers/net/ethernet/intel/e1000e/ich8lan.c   | 20 +++++++++----------
>  drivers/net/ethernet/intel/e1000e/mac.c       |  2 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 14 ++++++-------
>  drivers/net/ethernet/intel/e1000e/nvm.c       |  2 +-
>  7 files changed, 28 insertions(+), 28 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
- While I don't have access to every e1000e SKU I do have at lease a dozen different ones dating back quite a few generations and this does not seem to introduce any issues. 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
