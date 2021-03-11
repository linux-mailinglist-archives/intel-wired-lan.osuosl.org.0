Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A45C337671
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 16:04:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BA5642FB1;
	Thu, 11 Mar 2021 15:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lUZBMENL2u04; Thu, 11 Mar 2021 15:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87422431E3;
	Thu, 11 Mar 2021 15:04:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E91D1BF82B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 13:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68BF44EC5B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 13:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=amazon.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxRud5aiJnzl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 13:42:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from smtp-fw-6002.amazon.com (smtp-fw-6002.amazon.com [52.95.49.90])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 266D54EC4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 13:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1615470176; x=1647006176;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=0Dm43OTjlPuwXIrW3yljmNFuhk3JiZgiZDXuXeFWhIc=;
 b=esUjMXVLCWRrHFH6bpW9PFKxX+sKBuG5pInCUZp4C0t07F27MeHmJSgG
 9CalYBh6/Trg5ahIRs0sHWjqcPrj+b+EFXLjvPOJUGVnTlzXlsupAweAr
 /Q4Glop3Ay5kLD3fuGLWacKE2p2iDpSAKt27XBBhCTLsqMbAFjZhxmZbS s=;
IronPort-HdrOrdr: A9a23:Z100d6nm6E6fuJXaQBq4+PjsH0fpDfNyimdD5ilNYBxZY6Wkvu
 qpm+kW0gKxtSYJVBgb6Km9EYSjYVeZz5565oENIayvNTONhEKEJJxvhLGSpgHINDb58odmpM
 VdWoh4TOb9FF1ryfv9iTPIcOoI5Pmi3OSWifzFz3FrJDsKV4hF4x1iAgiWVm1aLTM2YaYRL5
 aX6spZqzfIQx1+BfiTPXULU/POoNfGjvvdASIuPQIt6wWFkFqTmdnHOiWfty1uNQ9n8PMN9S
 zgnxbi7quu98unwgLRvlW+071m3PXmzNVHCIigqOgwbg/thAGheZh7V9S50QwdkaWA7lAlld
 WJmRM8JoBI7W/LdG3dm3TQ8jil6zol53/8xVLwuxXenfA=
X-IronPort-AV: E=Sophos;i="5.81,240,1610409600"; d="scan'208";a="96445353"
Thread-Topic: [RFC PATCH 05/10] ena: Update driver to use ethtool_gsprintf
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2b-81e76b79.us-west-2.amazon.com) ([10.43.8.2])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 11 Mar 2021 13:42:46 +0000
Received: from EX13D06EUA002.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan3.pdx.amazon.com [10.236.137.198])
 by email-inbound-relay-2b-81e76b79.us-west-2.amazon.com (Postfix) with ESMTPS
 id D9355A1D77; Thu, 11 Mar 2021 13:42:43 +0000 (UTC)
Received: from EX13D22EUA004.ant.amazon.com (10.43.165.129) by
 EX13D06EUA002.ant.amazon.com (10.43.165.241) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 11 Mar 2021 13:42:41 +0000
Received: from EX13D22EUA004.ant.amazon.com ([10.43.165.129]) by
 EX13D22EUA004.ant.amazon.com ([10.43.165.129]) with mapi id 15.00.1497.012;
 Thu, 11 Mar 2021 13:42:41 +0000
From: "Kiyanovski, Arthur" <akiyano@amazon.com>
To: Alexander Duyck <alexander.duyck@gmail.com>, "kuba@kernel.org"
 <kuba@kernel.org>
Thread-Index: AQHXFhboRwyXcTUcVkS467rmptG2KKp+yylA
Date: Thu, 11 Mar 2021 13:42:21 +0000
Deferred-Delivery: Thu, 11 Mar 2021 13:41:28 +0000
Message-ID: <a8d66ff7d2034b75ada799de8b9de448@EX13D22EUA004.ant.amazon.com>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
 <161542654541.13546.817443057977441498.stgit@localhost.localdomain>
In-Reply-To: <161542654541.13546.817443057977441498.stgit@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.166.52]
MIME-Version: 1.0
Precedence: Bulk
X-Mailman-Approved-At: Thu, 11 Mar 2021 15:04:20 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH 05/10] ena: Update driver to use
 ethtool_gsprintf
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
> Sent: Thursday, March 11, 2021 3:36 AM
> To: kuba@kernel.org
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
> alexanderduyck@fb.com
> Subject: [EXTERNAL] [RFC PATCH 05/10] ena: Update driver to use
> ethtool_gsprintf
> 
> CAUTION: This email originated from outside of the organization. Do not click
> links or open attachments unless you can confirm the sender and know the
> content is safe.
> 
> 
> 
> From: Alexander Duyck <alexanderduyck@fb.com>
> 
> Replace instances of snprintf or memcpy with a pointer update with
> ethtool_gsprintf.
> 
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>

Acked-by: Arthur Kiyanovski <akiyano@amazon.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
