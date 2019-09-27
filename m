Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2651BC0DE2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Sep 2019 00:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6E3485593;
	Fri, 27 Sep 2019 22:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjKu8lWAw5Bq; Fri, 27 Sep 2019 22:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E377865C1;
	Fri, 27 Sep 2019 22:16:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 212331BF321
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 22:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 16D1D22888
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 22:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tesg04FkJJR6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2019 22:16:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C08022886
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 22:16:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 15:16:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="202179390"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga002.jf.intel.com with ESMTP; 27 Sep 2019 15:16:42 -0700
Received: from orsmsx125.amr.corp.intel.com (10.22.240.125) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 27 Sep 2019 15:16:42 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.190]) by
 ORSMSX125.amr.corp.intel.com ([169.254.3.216]) with mapi id 14.03.0439.000;
 Fri, 27 Sep 2019 15:16:42 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: David Miller <davem@davemloft.net>
Thread-Topic: [net-next v3 0/7] new PTP ioctl fixes
Thread-Index: AQHVdJXQZ4VVw33DpU6C3xL/BA8h0adAT0SA///JfrA=
Date: Fri, 27 Sep 2019 22:16:41 +0000
Message-ID: <02874ECE860811409154E81DA85FBB58968DBB73@ORSMSX121.amr.corp.intel.com>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190927.202949.1014916876082211694.davem@davemloft.net>
In-Reply-To: <20190927.202949.1014916876082211694.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzRhM2FkOWUtYzNhNy00YzlhLWFhYWQtZmYyYzcxZTI3MGYxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVnduODNLTmUxdVJKVkY1OWkrZEtyYlRjUjFpTVI1dElYZ3Fld3hIVUlqd0FubUxoMWlwSEc5Kzc5dzRQTnNyUCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next v3 0/7] new PTP ioctl fixes
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

> -----Original Message-----
> From: David Miller [mailto:davem@davemloft.net]
> Sent: Friday, September 27, 2019 11:30 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Subject: Re: [net-next v3 0/7] new PTP ioctl fixes
> 
> 
> Bug fixes should target 'net' not 'net-next'

Right, that was my mistake. I think I saw the ioctl change only on the net-next tree so I built the whole series on net-next. Come to think of it, I didn't check the net tree at all. I'll aim to do that better going forward.

Thanks Dave.

Regards,
Jake
 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
