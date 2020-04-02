Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBA319BAC5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Apr 2020 05:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B763387E97;
	Thu,  2 Apr 2020 03:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1EQPoc0LCjvD; Thu,  2 Apr 2020 03:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77BE287E9D;
	Thu,  2 Apr 2020 03:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9B221BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D56A186BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QUhq2L60rprF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2020 03:52:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 094618697E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2020 03:52:27 +0000 (UTC)
IronPort-SDR: 1YA0N22lnqo+dkFiJCB9lArl3Jc8IUZRz/kXqstgeWQpMWhqrgA3Y7JpBvpuFzQfHBJd2pR7oA
 K9mZKIOlukBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 20:52:27 -0700
IronPort-SDR: vsmztPeqdaF/yPoPUDotfpB2sYG2jPcA40nzaCJ9ms8aUSx+ShS45+hlD4Kq8mpxq8Am7Nbd81
 SinpDbQu3GGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,334,1580803200"; d="scan'208";a="238395735"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 01 Apr 2020 20:52:27 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 20:52:27 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.188]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 20:52:27 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unneeded register
Thread-Index: AQHWBb461E8KTdtiyk2KOscOzoKu5KhlOLNA
Date: Thu, 2 Apr 2020 03:52:26 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722ECC2@ORSMSX103.amr.corp.intel.com>
References: <20200329113554.34873-1-sasha.neftin@intel.com>
In-Reply-To: <20200329113554.34873-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unneeded register
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
> Sent: Sunday, March 29, 2020 4:36 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unneeded register
> 
> Flow control status register not applicable for i225 parts
> This patch come to  clean up it
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
>  1 file changed, 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
