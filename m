Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE6C18A83B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 23:32:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7A0A86896;
	Wed, 18 Mar 2020 22:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Xq1nD48Bx_2; Wed, 18 Mar 2020 22:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF6F68689B;
	Wed, 18 Mar 2020 22:32:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EA5D1BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 22:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A04F2036B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 22:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5LKgJdmw5O0j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 22:32:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 667662035D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 22:32:14 +0000 (UTC)
IronPort-SDR: qeHHAVRM0ilSQUdZ3UcBXCoeatb/W0uO1U83GyjwxtLcXc9iYW63W2WnyxBpITViNo+YfFfZYF
 ZIEaJSN9n77A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 15:32:13 -0700
IronPort-SDR: uoc4tl1WTD2sCutAzbZzzeKnI2Xs34OSxv23kv+GicfqzWfnYlrVWygU3i5vTp6fhLQjj8JGcs
 +Tkixabm+seQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="244967454"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 15:32:13 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 15:32:13 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.246]) with mapi id 14.03.0439.000;
 Wed, 18 Mar 2020 15:32:13 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Fix NFC queue redirection support
Thread-Index: AQHV9BKWRjJralVt3kG2A5V1dl0uU6hPAcuA
Date: Wed, 18 Mar 2020 22:32:11 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B972234BF@ORSMSX103.amr.corp.intel.com>
References: <20200306235403.18751-1-andre.guedes@intel.com>
In-Reply-To: <20200306235403.18751-1-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix NFC queue redirection support
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Friday, March 6, 2020 3:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] igc: Fix NFC queue redirection support
> 
> The support for ethtool Network Flow Classification (NFC) queue
> redirection based on destination MAC address is currently broken in IGC.
> For instance, if we add the following rule, matching frames aren't
> enqueued on the expected rx queue.
> 
> $ ethtool -N IFNAME flow-type ether dst 3c:fd:fe:9e:7f:71 queue 2
> 
> The issue here is due to the fact that igc_rar_set_index() is missing
> code to enable the queue selection feature from Receive Address High
> (RAH) register. This patch adds the missing code and fixes the issue.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |  5 ++++-
>  drivers/net/ethernet/intel/igc/igc_main.c    | 11 ++++++++---
>  2 files changed, 12 insertions(+), 4 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
