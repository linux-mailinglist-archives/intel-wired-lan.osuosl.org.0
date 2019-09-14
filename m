Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E58B2920
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2019 02:38:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1AE83204BA;
	Sat, 14 Sep 2019 00:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xcEswas-Cu8P; Sat, 14 Sep 2019 00:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB38C20505;
	Sat, 14 Sep 2019 00:38:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 882011BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 00:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 847C8204EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 00:38:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rHo2pX71-1Sc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2019 00:38:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 87327204BA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 00:38:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 17:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; d="scan'208";a="186613925"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga007.fm.intel.com with ESMTP; 13 Sep 2019 17:38:27 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Sep 2019 17:38:26 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.221]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.47]) with mapi id 14.03.0439.000;
 Fri, 13 Sep 2019 17:38:26 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Robert Beckett <bob.beckett@collabora.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v2] igb: add rx drop enable attribute
Thread-Index: AQHVapS4oMvB58LTRE65obxp5h0E+Q==
Date: Sat, 14 Sep 2019 00:38:26 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971184AF@ORSMSX103.amr.corp.intel.com>
References: <20190909142117.20186-1-bob.beckett@collabora.com>
In-Reply-To: <20190909142117.20186-1-bob.beckett@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: add rx drop enable attribute
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
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2019-09-09 at 15:21 +0100, Robert Beckett wrote:
> To allow userland to enable or disable dropping packets when descriptor
> ring is exhausted, add RX_DROP_EN private flag.
> 
> This can be used in conjunction with flow control to mitigate packet storms
> (e.g. due to network loop or DoS) by forcing the network adapter to send
> pause frames whenever the ring is close to exhaustion.
> 
> By default this will maintain previous behaviour of enabling dropping of
> packets during ring buffer exhaustion.
> Some use cases prefer to not drop packets upon exhaustion, but instead
> use flow control to limit ingress rates and ensure no dropped packets.
> This is useful when the host CPU cannot keep up with packet delivery,
> but data delivery is more important than throughput via multiple queues.
> 
> Userland can set this flag to 0 via ethtool to disable packet dropping.
> 
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> ---
> 
> Notes:
>     Changes since v1: re-written to use ethtool priv flags instead of sysfs attribute
> 
>  drivers/net/ethernet/intel/igb/igb.h         |  1 +
>  drivers/net/ethernet/intel/igb/igb_ethtool.c |  8 ++++++++
>  drivers/net/ethernet/intel/igb/igb_main.c    | 11 +++++++++--
>  3 files changed, 18 insertions(+), 2 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
