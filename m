Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9E14C45A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 02:13:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8454C86995;
	Thu, 20 Jun 2019 00:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tx8dt8KHwTEE; Thu, 20 Jun 2019 00:13:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 731118696A;
	Thu, 20 Jun 2019 00:13:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 588561BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 00:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 546442107F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 00:13:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LrUpIPmuOoSG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 00:13:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E3BF2039A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 00:13:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 17:13:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="168368042"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2019 17:13:08 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 17:13:08 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.180]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 17:13:08 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] e1000e: PCIm function state support
Thread-Index: AQHVJvzvRfsa9THuD06An1bqjE4c1A==
Date: Thu, 20 Jun 2019 00:13:07 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B075F@ORSMSX103.amr.corp.intel.com>
References: <20190613050649.41402-1-vitaly.lifshits@intel.com>
In-Reply-To: <20190613050649.41402-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: PCIm function state support
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

On Thu, 2019-06-13 at 08:06 +0300, Vitaly Lifshits wrote:
> Due to commit: 5d8682588605 ("[misc] mei: me: allow runtime
> 			pm for platform with D0i3")
> When disconnecting the cable and reconnecting it the NIC
> enters DMoff state. This caused wrong link indication
> and duplex mismatch. This bug is described in:
> https://bugzilla.redhat.com/show_bug.cgi?id=1689436
> 
> Checking PCIm function state and performing PHY reset after a
> timeout in watchdog task solves this issue.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> 
> V2: Fixed typos in commit massage
> ---
>  drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++++++++++++-
>  2 files changed, 20 insertions(+), 1 deletion(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
