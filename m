Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3133A903
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 01:09:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA20A835C6;
	Mon, 15 Mar 2021 00:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwvsia5eXNSa; Mon, 15 Mar 2021 00:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91B49828FB;
	Mon, 15 Mar 2021 00:09:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9B91BF46A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 08:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6945A4011F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 08:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=amazon.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipO51qCU5VL4 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Mar 2021 08:31:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from smtp-fw-6002.amazon.com (smtp-fw-6002.amazon.com [52.95.49.90])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5251A400F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 08:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1615710679; x=1647246679;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=GQ+i1xludG2Xb4XWbrdhglcrsUjEy7bLMCuqG41502s=;
 b=Nwr1zyLrPJR94JsB7nDvi944q/qGv+XtlWdJoHpTsv+kgUgYQaFvsgPg
 oF9gFGZm7jUk/IrbPH7y7cSWkt5NPj6EkEoFF9IU4KgjGha5act54zghQ
 mlr7G14ySJv40b/X5qcXuyO0hDo+VrB0RWULxe8Fr2Dt817cuK8kCm4X7 E=;
IronPort-HdrOrdr: A9a23:LGdqiqEdB6nymfvHpLqFupHXdLJzesId70hD6mlbTwBTeMCD09
 2p9c5rtyPcojAXRX0mhJS8KLCNKEm9ybdZw6k0eY2jUg7vpXeyIOhZhuHf6hDpBiGWzJ876Y
 5Of6RyA9X7DxxboK/BkXCFOvk6xt3vys2VrMP/61socg1wcaFn6G5CazqzNkFtXgFJCd4YOf
 OnifZvnDardXQJYsnTPBBsY8H4u9bJmJj6CCRpOzcb7mC14Q+A2frTNzCq+DBbdxtu5PMY3U
 3so0jF1pyO2svLqSP05iv6y7xkvvyk7vd/LOGlt+B9EESIti+YIKJ7W7ODuzgx5MWi8kwjnt
 Xtjn4bTqBOwkKURE2O5T3wxgfn0DEhgkWSr2OlvQ==
X-IronPort-AV: E=Sophos;i="5.81,245,1610409600"; d="scan'208";a="97106650"
Thread-Topic: [net-next PATCH 05/10] ena: Update driver to use ethtool_sprintf
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2b-baacba05.us-west-2.amazon.com) ([10.43.8.2])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 14 Mar 2021 08:31:10 +0000
Received: from EX13D06EUA002.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
 by email-inbound-relay-2b-baacba05.us-west-2.amazon.com (Postfix) with ESMTPS
 id C8D75A2400; Sun, 14 Mar 2021 08:31:07 +0000 (UTC)
Received: from EX13D22EUA004.ant.amazon.com (10.43.165.129) by
 EX13D06EUA002.ant.amazon.com (10.43.165.241) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Sun, 14 Mar 2021 08:31:06 +0000
Received: from EX13D22EUA004.ant.amazon.com ([10.43.165.129]) by
 EX13D22EUA004.ant.amazon.com ([10.43.165.129]) with mapi id 15.00.1497.012;
 Sun, 14 Mar 2021 08:31:06 +0000
From: "Kiyanovski, Arthur" <akiyano@amazon.com>
To: Alexander Duyck <alexander.duyck@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>
Thread-Index: AQHXF2gH1xVQ4F+JPk6+np3l7a1YHaqDKUfQ
Date: Sun, 14 Mar 2021 08:30:46 +0000
Deferred-Delivery: Sun, 14 Mar 2021 08:30:19 +0000
Message-ID: <c0aefd974f084847b213e3e841644830@EX13D22EUA004.ant.amazon.com>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
 <161557131360.10304.1549281998235246752.stgit@localhost.localdomain>
In-Reply-To: <161557131360.10304.1549281998235246752.stgit@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.164.135]
MIME-Version: 1.0
Precedence: Bulk
X-Mailman-Approved-At: Mon, 15 Mar 2021 00:08:59 +0000
Subject: Re: [Intel-wired-lan] [net-next PATCH 05/10] ena: Update driver to
 use ethtool_sprintf
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "doshir@vmware.com" <doshir@vmware.com>, "mst@redhat.com" <mst@redhat.com>,
 "oss-drivers@netronome.com" <oss-drivers@netronome.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "wei.liu@kernel.org" <wei.liu@kernel.org>,
 "sthemmin@microsoft.com" <sthemmin@microsoft.com>,
 "pv-drivers@vmware.com" <pv-drivers@vmware.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kernel-team@fb.com" <Kernel-team@fb.com>,
 "yisen.zhuang@huawei.com" <yisen.zhuang@huawei.com>, "Tzalik,
 Guy" <gtzalik@amazon.com>,
 "simon.horman@netronome.com" <simon.horman@netronome.com>,
 "haiyangz@microsoft.com" <haiyangz@microsoft.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 "salil.mehta@huawei.com" <salil.mehta@huawei.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 "rmody@marvell.com" <rmody@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Belgazal,
 Netanel" <netanel@amazon.com>, "Bshara, Saeed" <saeedb@amazon.com>,
 "snelson@pensando.io" <snelson@pensando.io>,
 "skalluru@marvell.com" <skalluru@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alexander Duyck <alexander.duyck@gmail.com>
> Sent: Friday, March 12, 2021 7:49 PM
> To: davem@davemloft.net; kuba@kernel.org
> Cc: netdev@vger.kernel.org; oss-drivers@netronome.com;
> simon.horman@netronome.com; yisen.zhuang@huawei.com;
> salil.mehta@huawei.com; intel-wired-lan@lists.osuosl.org;
> jesse.brandeburg@intel.com; anthony.l.nguyen@intel.com;
> drivers@pensando.io; snelson@pensando.io; Belgazal, Netanel
> <netanel@amazon.com>; Kiyanovski, Arthur <akiyano@amazon.com>;
> Tzalik, Guy <gtzalik@amazon.com>; Bshara, Saeed <saeedb@amazon.com>;
> GR-Linux-NIC-Dev@marvell.com; skalluru@marvell.com;
> rmody@marvell.com; kys@microsoft.com; haiyangz@microsoft.com;
> sthemmin@microsoft.com; wei.liu@kernel.org; mst@redhat.com;
> jasowang@redhat.com; pv-drivers@vmware.com; doshir@vmware.com;
> alexanderduyck@fb.com; Kernel-team@fb.com
> Subject: [EXTERNAL] [net-next PATCH 05/10] ena: Update driver to use
> ethtool_sprintf
> 
> From: Alexander Duyck <alexanderduyck@fb.com>
> 
> Replace instances of snprintf or memcpy with a pointer update with
> ethtool_sprintf.
> 
> Acked-by: Arthur Kiyanovski <akiyano@amazon.com>
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
> ---
>  drivers/net/ethernet/amazon/ena/ena_ethtool.c |   25 +++++++++++-------
> -------
>  1 file changed, 11 insertions(+), 14 deletions(-)
> 
Acked-by: Arthur Kiyanovski <akiyano@amazon.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
