Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76281FC0E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 23:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8623D89589;
	Tue, 16 Jun 2020 21:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VhrkZsJ0t-d8; Tue, 16 Jun 2020 21:20:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3BFC895EF;
	Tue, 16 Jun 2020 21:20:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1DD1BF352
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 21:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6663C2045A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 21:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JcI3bLNsv-FP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 21:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 2BE412044A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 21:20:09 +0000 (UTC)
IronPort-SDR: Pzm1obVLd+/a3V160jVZOrsuTcwSKSXpOq+6+aCp7ri9HGBqSjMH/VRJAMFXM+lHV5m4ljHljD
 rzIpxBjvkTFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 14:20:08 -0700
IronPort-SDR: pd8IGOukXezEe3OY+umSJxFmYOhb3VRSZ/EyUl9sEMKboWL0vnbtrFgjG6ZL96JVxSERcHCp2P
 AKWJL2AN9TDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="291203371"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga002.jf.intel.com with ESMTP; 16 Jun 2020 14:20:08 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jun 2020 14:20:08 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.199]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.32]) with mapi id 14.03.0439.000;
 Tue, 16 Jun 2020 14:20:08 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Eric Dumazet <eric.dumazet@gmail.com>, Greg Thelen <gthelen@google.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [PATCH] e1000e: add ifdef to avoid dead code
Thread-Index: AQHWQhKmTMhQGPWEEkalMgzeJC4tg6jbzRAA///16rA=
Date: Tue, 16 Jun 2020 21:20:07 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D940449871E142@ORSMSX112.amr.corp.intel.com>
References: <20200614061122.35928-1-gthelen@google.com>
 <b88dc544-9f1b-75af-244e-9967ffeacf0e@gmail.com>
In-Reply-To: <b88dc544-9f1b-75af-244e-9967ffeacf0e@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add ifdef to avoid dead code
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

> -----Original Message-----
> From: Eric Dumazet <eric.dumazet@gmail.com>
> On 6/13/20 11:11 PM, Greg Thelen wrote:
> > Commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> > systems") added e1000e_check_me() but it's only called from
> > CONFIG_PM_SLEEP protected code.  Thus builds without CONFIG_PM_SLEEP
> > see:
> >   drivers/net/ethernet/intel/e1000e/netdev.c:137:13: warning:
> > 'e1000e_check_me' defined but not used [-Wunused-function]
> >
> > Add CONFIG_PM_SLEEP ifdef guard to avoid dead code.
> >
> > Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> > systems")
> > Signed-off-by: Greg Thelen <gthelen@google.com>
> > ---
> >  drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
> >  1 file changed, 2 insertions(+)
> 
> Reviewed-by: Eric Dumazet <edumazet@google.com>
[Kirsher, Jeffrey T] 

This patch is not necessary, after Arnd's patch.  Here is his patch:
http://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200527134716.948148-1-arnd@arndb.de/
 and I will be pushing it to Dave's net tree later tonight.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
