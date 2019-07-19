Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCE6D888
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2019 03:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85F4D864AB;
	Fri, 19 Jul 2019 01:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id POTJpHkoxG0g; Fri, 19 Jul 2019 01:47:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D6158690E;
	Fri, 19 Jul 2019 01:47:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF1B51BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 01:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E569F877E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 01:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yeCW9KA8opEU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2019 01:47:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 32C90876DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 01:47:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 18:47:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,280,1559545200"; d="scan'208";a="158968965"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga007.jf.intel.com with ESMTP; 18 Jul 2019 18:47:12 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jul 2019 18:47:11 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.44]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.26]) with mapi id 14.03.0439.000;
 Thu, 18 Jul 2019 18:47:11 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] e1000e: add workaround for
 possible stalled packet
Thread-Index: AQHVPdPhmp9sws8O4UaUAixIR40qew==
Date: Fri, 19 Jul 2019 01:47:11 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970D36A9@ORSMSX103.amr.corp.intel.com>
References: <20190708045546.30160-1-kai.heng.feng@canonical.com>
In-Reply-To: <20190708045546.30160-1-kai.heng.feng@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/2] e1000e: add workaround for
 possible stalled packet
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2019-07-08 at 12:55 +0800, Kai-Heng Feng wrote:
> Forwardport from http://mails.dpdk.org/archives/dev/2016-November/050657.html
> 
> This works around a possible stalled packet issue, which may occur due to
> clock recovery from the PCH being too slow, when the LAN is transitioning
> from K1 at 1G link speed.
> 
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204057
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 10 ++++++++++
>  drivers/net/ethernet/intel/e1000e/ich8lan.h |  2 +-
>  2 files changed, 11 insertions(+), 1 deletion(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
