Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E87F6D890
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2019 03:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8BFA0227E1;
	Fri, 19 Jul 2019 01:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3OE2rU4RwB78; Fri, 19 Jul 2019 01:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0F01F228E3;
	Fri, 19 Jul 2019 01:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30EB71BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 01:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A466880CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 01:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id inZ84IhSgFEt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2019 01:47:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A5FB880CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 01:47:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 18:47:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,280,1559545200"; d="scan'208";a="158969092"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga007.jf.intel.com with ESMTP; 18 Jul 2019 18:47:55 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jul 2019 18:47:55 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.44]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.148]) with mapi id 14.03.0439.000;
 Thu, 18 Jul 2019 18:47:55 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] e1000e: disable force K1-off
 feature
Thread-Index: AQHVPdP7vBl3T42EgE6ElZb5gwVOlw==
Date: Fri, 19 Jul 2019 01:47:54 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970D36B7@ORSMSX103.amr.corp.intel.com>
References: <20190708045546.30160-1-kai.heng.feng@canonical.com>
 <20190708045546.30160-2-kai.heng.feng@canonical.com>
In-Reply-To: <20190708045546.30160-2-kai.heng.feng@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] e1000e: disable force K1-off
 feature
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
> Forwardport from http://mails.dpdk.org/archives/dev/2016-November/050658.html
> 
> MAC-PHY desync may occur causing misdetection of link up event.
> Disabling K1-off feature can work around the problem.
> 
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204057
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/e1000e/hw.h      | 1 +
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 +++
>  2 files changed, 4 insertions(+)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
