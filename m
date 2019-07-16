Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B11269FE4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 02:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3838787C11;
	Tue, 16 Jul 2019 00:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TAiQWfI0p3lX; Tue, 16 Jul 2019 00:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 016B986EC8;
	Tue, 16 Jul 2019 00:33:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B1601BF97A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 00:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 246DB86B30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 00:33:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hz7NCbxpQIiw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 00:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73A3C86ACD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 00:33:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 17:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,494,1557212400"; d="scan'208";a="157975473"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga007.jf.intel.com with ESMTP; 15 Jul 2019 17:33:01 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jul 2019 17:33:00 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.44]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.114]) with mapi id 14.03.0439.000;
 Mon, 15 Jul 2019 17:33:00 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 2/2] igc: Remove the unused field
 from a device specification structure
Thread-Index: AQHVO24FfQ8k8QaxPEOoC8Mgcg1X2w==
Date: Tue, 16 Jul 2019 00:33:00 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970D1A5E@ORSMSX103.amr.corp.intel.com>
References: <20190623104232.36661-1-sasha.neftin@intel.com>
 <20190623104232.36661-2-sasha.neftin@intel.com>
In-Reply-To: <20190623104232.36661-2-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 2/2] igc: Remove the unused field
 from a device specification structure
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

On Sun, 2019-06-23 at 13:42 +0300, Sasha Neftin wrote:
> This patch comes to clean up the device specification structure.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_hw.h | 5 -----
>  1 file changed, 5 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
