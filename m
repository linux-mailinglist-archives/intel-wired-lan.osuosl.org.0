Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F4319B9A3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 02:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A277186FC4;
	Thu,  2 Apr 2020 00:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XQkJk1KCSLYE; Thu,  2 Apr 2020 00:53:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FC7886FC6;
	Thu,  2 Apr 2020 00:53:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF8571BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 00:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DB3DD86FC1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 00:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3rfYNhqmYYLY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 00:53:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4697786FBE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 00:53:41 +0000 (UTC)
IronPort-SDR: 8P7iIAJkMtjKpVBMhTWz0b9ilnFzHH4B7mfzaT1BhI97LEeaXFMBnmi75AjSFnQJfqOLbd9Xnx
 VWj2+n6JX38w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 17:53:40 -0700
IronPort-SDR: yc3lBqHg1ZiUqhmAB2ZsTUVunvbd5uZEgAVyeiyhTa+Rdmezvs7ld61uL0g2ObnOtV/0IaDAqD
 TYra/QA/E6MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,333,1580803200"; d="scan'208";a="273367799"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga004.fm.intel.com with ESMTP; 01 Apr 2020 17:53:40 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.172]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 17:53:39 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add ECN support for TSO
Thread-Index: AQHWAB++spaTXZS30E+sifnwAU585ahlEd7g
Date: Thu, 2 Apr 2020 00:53:39 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722EB32@ORSMSX103.amr.corp.intel.com>
References: <20200322075846.5982-1-sasha.neftin@intel.com>
In-Reply-To: <20200322075846.5982-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add ECN support for TSO
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Sunday, March 22, 2020 12:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add ECN support for TSO
> 
> Align with other Intel drivers and add ECN
> support for TSO
> Add ECN flag
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
