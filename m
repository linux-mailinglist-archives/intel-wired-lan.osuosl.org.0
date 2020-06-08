Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E03611F2418
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8914A87C9C;
	Mon,  8 Jun 2020 23:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fQ1GzaHg9RP; Mon,  8 Jun 2020 23:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E0B588390;
	Mon,  8 Jun 2020 23:20:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D28F61BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CEC5287FE3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ToYHKOmfJeoU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:19:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 33C1787C9C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:55 +0000 (UTC)
IronPort-SDR: /L20pDQenRkV1kxqvzpGp73XawqlLcDd+VL8VZ2573oOUy9b5kfG2Ddz3d3W1ZLHblxHy45Yjh
 CRP9VL2lqnXQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 16:19:54 -0700
IronPort-SDR: ENcRDvxUx7SzWNEGKKuiD3pr/Woir79+F7RleZPBqtMTkMpEdslW/os06eoMu3V3xFXJZd3mY1
 Ey5a/Gi+Y+aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="314035243"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2020 16:19:54 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jun 2020 16:19:53 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.61]) by
 ORSMSX123.amr.corp.intel.com ([169.254.1.123]) with mapi id 14.03.0439.000;
 Mon, 8 Jun 2020 16:19:53 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Jarod Wilson <jarod@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH net-next 2/4] ixgbe_ipsec: become aware of when running
 as a bonding slave
Thread-Index: AQHWPdf3oUXiI5zht0y9X20eYPVjDajPWp2w
Date: Mon, 8 Jun 2020 23:19:52 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044986EFB8B@ORSMSX112.amr.corp.intel.com>
References: <20200608210058.37352-1-jarod@redhat.com>
 <20200608210058.37352-3-jarod@redhat.com>
In-Reply-To: <20200608210058.37352-3-jarod@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/4] ixgbe_ipsec: become
 aware of when running as a bonding slave
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Veaceslav Falico <vfalico@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Jarod Wilson <jarod@redhat.com>
> Sent: Monday, June 8, 2020 14:01
> To: linux-kernel@vger.kernel.org
> Cc: Jarod Wilson <jarod@redhat.com>; Jay Vosburgh
> <j.vosburgh@gmail.com>; Veaceslav Falico <vfalico@gmail.com>; Andy
> Gospodarek <andy@greyhouse.net>; David S. Miller <davem@davemloft.net>;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; Jakub Kicinski
> <kuba@kernel.org>; Steffen Klassert <steffen.klassert@secunet.com>;
> Herbert Xu <herbert@gondor.apana.org.au>; netdev@vger.kernel.org; intel-
> wired-lan@lists.osuosl.org
> Subject: [PATCH net-next 2/4] ixgbe_ipsec: become aware of when running as
> a bonding slave
> 
> Slave devices in a bond doing hardware encryption also need to be aware that
> they're slaves, so we operate on the slave instead of the bonding master to do
> the actual hardware encryption offload bits.
> 
> CC: Jay Vosburgh <j.vosburgh@gmail.com>
> CC: Veaceslav Falico <vfalico@gmail.com>
> CC: Andy Gospodarek <andy@greyhouse.net>
> CC: "David S. Miller" <davem@davemloft.net>
> CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> CC: Jakub Kicinski <kuba@kernel.org>
> CC: Steffen Klassert <steffen.klassert@secunet.com>
> CC: Herbert Xu <herbert@gondor.apana.org.au>
> CC: netdev@vger.kernel.org
> CC: intel-wired-lan@lists.osuosl.org
> Signed-off-by: Jarod Wilson <jarod@redhat.com> 

Acked-by: Jeff Kirsher <Jeffrey.t.kirsher@intel.com>

> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 39 +++++++++++++++----
>  1 file changed, 31 insertions(+), 8 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
