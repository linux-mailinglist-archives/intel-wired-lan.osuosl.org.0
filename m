Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3885119A037
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E256587EC5;
	Tue, 31 Mar 2020 20:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o4Yhsdr+fI0W; Tue, 31 Mar 2020 20:55:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DDA087EAF;
	Tue, 31 Mar 2020 20:55:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A4871BF41E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23BD987EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mx00IlJ1XKsr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 20:55:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 670F487E3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:55:20 +0000 (UTC)
IronPort-SDR: lMRV7xH/+j0Mv8lW75rS7pFpXtXMxpo91fVHx2vRqaTTVXFj4oCyN+m+5KxHyf6ExTYBeHu1wm
 Q4X+6EVgshmQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:55:19 -0700
IronPort-SDR: HhexLwwoS0Bfy1PJ5druzTfugieQiwtK2gGXHkv+a3PFcC+F0srl6+2rkhU+odjhSEJhbY6oyH
 1OwdDvgE2JKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="422431220"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga005.jf.intel.com with ESMTP; 31 Mar 2020 13:55:19 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 13:55:19 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.226]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:55:18 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 08/12] igc: Remove
 IGC_MAC_STATE_QUEUE_STEERING
Thread-Index: AQHV/XlKCGhv4mDQDkSC2wOdonDZOahjQRTw
Date: Tue, 31 Mar 2020 20:55:18 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DEC0@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-9-andre.guedes@intel.com>
In-Reply-To: <20200318230102.36952-9-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 08/12] igc: Remove
 IGC_MAC_STATE_QUEUE_STEERING
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
> Sent: Wednesday, March 18, 2020 4:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 08/12] igc: Remove
> IGC_MAC_STATE_QUEUE_STEERING
> 
> The IGC_MAC_STATE_QUEUE_STEERING bit in mac_table[i].state is
> utilized to indicate that frames matching the filter are assigned to
> mac_table[i].queue. This bit is not strictly necessary since we can
> convey the same information as follows: queue == -1 means queue
> assignment is disabled, otherwise it is enabled.
> 
> In addition to make the code simpler, this change fixes some awkward
> situations where we pass a complete misleading 'queue' value such as in
> igc_uc_sync().
> 
> So this patch removes IGC_MAC_STATE_QUEUE_STEERING and also takes the
> opportunity to improve the igc_add_mac_filter documentation.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  3 +-
>  drivers/net/ethernet/intel/igc/igc_main.c | 34 +++++++++++++----------
>  2 files changed, 21 insertions(+), 16 deletions(-)

This one also throws the same basic checkpatch warning as the last:
------------------------------------
u1322:[1]/usr/src/kernels/next-queue> git format-patch $commit -1 --stdout|./scripts/checkpatch.pl -
WARNING: Block comments should align the * on each line
#42: FILE: drivers/net/ethernet/intel/igc/igc_main.c:2245:
+ * In case of success, returns 0. Otherwise, it returns a negative errno code.
+  */

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
-----------------------------------
But otherwise:
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

Jeff if you fix up the last patch go ahead and fix this one up to.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
