Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BCF4DEC2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 03:45:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0404D85FE4;
	Fri, 21 Jun 2019 01:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9rJLO_bB8ak; Fri, 21 Jun 2019 01:45:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 085E285FE6;
	Fri, 21 Jun 2019 01:45:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D00C81BF404
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C7D7185FD4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y1DGUTh0kt0U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2019 01:45:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5FB3585FBA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 18:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="183269301"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 18:45:22 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Jun 2019 18:45:22 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.232]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 18:45:22 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Artem Bityutskiy <dedekind1@gmail.com>, "David S. Miller"
 <davem@davemloft.net>
Thread-Topic: [PATCH 1/2] net: intel: igb: minor ethool regdump amendment
Thread-Index: AQHVJ9L8tWjB5B1JmkOwuk4JULmEJA==
Date: Fri, 21 Jun 2019 01:45:21 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B125D@ORSMSX103.amr.corp.intel.com>
References: <20190618115513.99661-1-dedekind1@gmail.com>
In-Reply-To: <20190618115513.99661-1-dedekind1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/2] net: intel: igb: minor ethool
 regdump amendment
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2019-06-18 at 14:55 +0300, Artem Bityutskiy wrote:
> From: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
> 
> This patch has no functional impact and it is just a preparation
> for the following patch. It removes an early return from the
> 'igb_get_regs()' function by moving the 82576-only registers
> dump into an "if" block. With this preparation, we can dump more
> non-82576 registers at the end of this function.
> 
> Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 70 ++++++++++----------
>  1 file changed, 35 insertions(+), 35 deletions(-)
> 
Aside from teh missing "t" for ethtool in the subject that Andrew Lunn pointed out...

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
