Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9891EDC19
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 06:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53DF423307;
	Thu,  4 Jun 2020 04:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id of8o26uxvlHZ; Thu,  4 Jun 2020 04:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 823C52268D;
	Thu,  4 Jun 2020 04:10:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 519BC1BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 04:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BEF922246
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 04:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dTjZcyimbPAF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 04:10:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 28D8A20445
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 04:10:50 +0000 (UTC)
IronPort-SDR: 0Htt9P8CRsPVKUvp60LlZiTHwSLFt01GdML3qYnF/HEtkuEDLiRazUYhr30Fp06xlZ71rZ/zLK
 6tHGaQVHK7QA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 21:10:48 -0700
IronPort-SDR: 5u0YGIEkZ3jpz7gYTZjPBKv1cCkJ8H1KvzJuDsuydFSfM155vkRfbgcPTXsnqFbzksn8yfn7hu
 1xZp9gSJISnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,471,1583222400"; d="scan'208";a="294199496"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2020 21:10:48 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jun 2020 21:10:48 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.61]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.222]) with mapi id 14.03.0439.000;
 Wed, 3 Jun 2020 21:10:48 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Joe Perches <joe@perches.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next-queue v2] ethernet/intel: Convert fallthrough code comments
Thread-Index: AQHWOh1KzdbqCEvLvU2cRiqQs3r2t6jIPgUA//+ZVnA=
Date: Thu, 4 Jun 2020 04:10:47 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044986E9384@ORSMSX112.amr.corp.intel.com>
References: <20200604030726.1573257-1-jeffrey.t.kirsher@intel.com>
 <d74c63e48bbc2f437f7d7aad1c0064dac2a47203.camel@perches.com>
In-Reply-To: <d74c63e48bbc2f437f7d7aad1c0064dac2a47203.camel@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue v2] ethernet/intel: Convert
 fallthrough code comments
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

> -----Original Message-----
> From: Joe Perches <joe@perches.com>
> Sent: Wednesday, June 3, 2020 20:16
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [next-queue v2] ethernet/intel: Convert fallthrough code comments
> 
> On Wed, 2020-06-03 at 20:07 -0700, Jeff Kirsher wrote:
> > Convert all the remaining 'fall through" code comments to the newer
> > 'fallthough;' keyword.
> 
> Maybe write it was scripted and
[Kirsher, Jeffrey T] 

Partially scripted, I used your script, but when I did a manual search for ' fall' or ' Fall', I found a few more hits.
But I have no issues with updating the patch description to add your suggestions.  Thanks again for the initial script and patch.

> 
> v2: removed unnecessary fallthrough; after break;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
