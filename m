Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C232BB293E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2019 03:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D4A6882F0;
	Sat, 14 Sep 2019 01:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xunug0f5YY1i; Sat, 14 Sep 2019 01:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 414368838F;
	Sat, 14 Sep 2019 01:15:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37D811BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 01:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EAB588334
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 01:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WC3Ttecs6ze6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2019 01:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 906AE882F0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2019 01:15:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 18:15:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,503,1559545200"; d="scan'208";a="185279529"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2019 18:15:40 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Sep 2019 18:15:39 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.221]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.201]) with mapi id 14.03.0439.000;
 Fri, 13 Sep 2019 18:15:39 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Wenwen Wang <wenwen@cs.uga.edu>
Thread-Topic: [PATCH] e1000: fix memory leaks
Thread-Index: AQHVapnrDYrnlrBttEqplt4FS5pEXg==
Date: Sat, 14 Sep 2019 01:15:38 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971184F9@ORSMSX103.amr.corp.intel.com>
References: <1565589561-5910-1-git-send-email-wenwen@cs.uga.edu>
In-Reply-To: <1565589561-5910-1-git-send-email-wenwen@cs.uga.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000: fix memory leaks
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2019-08-12 at 00:59 -0500, Wenwen Wang wrote:
> In e1000_set_ringparam(), 'tx_old' and 'rx_old' are not deallocated if
> e1000_up() fails, leading to memory leaks. Refactor the code to fix this
> issue.
> 
> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
