Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A098486D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2019 11:10:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D9647203F9;
	Wed,  7 Aug 2019 09:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id akIvEvdKretO; Wed,  7 Aug 2019 09:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84AAA2266F;
	Wed,  7 Aug 2019 09:10:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC1861BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 09:09:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A7E0C2265B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 09:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xbt34DYv7spL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 09:09:56 +0000 (UTC)
X-Greylist: delayed 00:21:26 by SQLgrey-1.7.6
Received: from m9a0002g.houston.softwaregrp.com
 (m9a0002g.houston.softwaregrp.com [15.124.64.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D485F203F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 09:09:54 +0000 (UTC)
Received: FROM m9a0002g.houston.softwaregrp.com (15.121.0.191) BY
 m9a0002g.houston.softwaregrp.com WITH ESMTP; 
 Wed,  7 Aug 2019 09:09:43 +0000
Received: from M9W0067.microfocus.com (2002:f79:be::f79:be) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Wed, 7 Aug 2019 08:38:46 +0000
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (15.124.72.11) by
 M9W0067.microfocus.com (15.121.0.190) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Wed, 7 Aug 2019 08:38:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMxhm3bibX6KEfVwZIG2lmaDgQK31kJWJll74AiGg2Bgh/G0mQYFYxC+/VrhIDY0/8pvA4QDUH7ZBhJmROIO/byS2Y2JXja+zn7FUMZS+iAJUbN/VSZ5Cjvpxl4iKfMu5Xi58tEARCc5uAz9p9L8X7Gh0lFTA1PLcndKvDTqrM1asCIirtI3dSyQo/XgsEjcwUZaKxh/ofyW3sMQrMcjTPvdxSfWro4Xgb25uOi8l50ZU9LWVre08Ht2VFyNmbS9YlL6XyQ2B9O+DRRa49Uwow64lGv7gblH3FWbVFwSxJi73MpZGI74Rop7M+kWWWk9FFhTqoKjhLPBaWTFwyoJzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ng1DD3SFfeBrAtK6l5D6DPzBzE7BXJRk8H2HW4r835w=;
 b=CHfkXXVF15LzcaoWApau4GGcduz/poLK/rv1eFJnSPsbqLZgTvZq/7abZUAmHunsJPQ2NU6pCw32ispibWe1YKfO4pLKVtwUBSOEIP5G1SobAJ+2e6M5hlZRUr4izDTaguejjjCTkCfNoAOW1TcCH4JeHssLlHQBQP5CCaHg6MXpiLCgLcBkS3TA1Nodc7Takz+2yK7Gt+PQuMEcRlMFtwcWXbJ/7BYp7/+WzsnEGNtwZa70cxfJKOI6OvFTmeRGwPxRyUeNL38aQgl4zXrOjOGxCteF0HOPAvSaA62YmJCv7NzRIylvea+ytfn4dsyuWM9RYd5ImAEGNmWfQIoqvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from BY5PR18MB3187.namprd18.prod.outlook.com (10.255.139.221) by
 BY5PR18MB3121.namprd18.prod.outlook.com (10.255.136.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Wed, 7 Aug 2019 08:38:44 +0000
Received: from BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac]) by BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac%4]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:38:44 +0000
From: Firo Yang <firo.yang@suse.com>
To: Jacob Wen <jian.w.wen@oracle.com>
Thread-Topic: [PATCH v2 1/1] ixgbe: sync the first fragment unconditionally
Thread-Index: AQHVTMrFkDapNm+vukGfNKy6YOsjCqbvUa91gAALugA=
Date: Wed, 7 Aug 2019 08:38:43 +0000
Message-ID: <20190807083831.GA6811@linux-6qg8>
References: <20190807024917.27682-1-firo.yang@suse.com>
 <85aaefdf-d454-1823-5840-d9e2f71ffb19@oracle.com>
In-Reply-To: <85aaefdf-d454-1823-5840-d9e2f71ffb19@oracle.com>
Accept-Language: en-US, en-GB, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SG2PR01CA0098.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::24) To BY5PR18MB3187.namprd18.prod.outlook.com
 (2603:10b6:a03:196::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=firo.yang@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [45.122.156.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d3cf22d-a1ec-42ab-cad7-08d71b12a7f5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR18MB3121; 
x-ms-traffictypediagnostic: BY5PR18MB3121:
x-microsoft-antispam-prvs: <BY5PR18MB31211F7A2BEF1E2C260FC9AC88D40@BY5PR18MB3121.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(7916004)(376002)(396003)(366004)(39860400002)(136003)(346002)(199004)(189003)(102836004)(386003)(6506007)(53546011)(256004)(14444005)(25786009)(486006)(476003)(44832011)(99286004)(52116002)(76176011)(26005)(4326008)(229853002)(6436002)(6486002)(66066001)(2906002)(6916009)(71190400001)(71200400001)(33656002)(186003)(6246003)(9686003)(6512007)(53936002)(1076003)(54906003)(7736002)(33716001)(5660300002)(86362001)(478600001)(316002)(6116002)(3846002)(8676002)(446003)(8936002)(305945005)(66446008)(66946007)(66476007)(66556008)(64756008)(68736007)(81166006)(81156014)(14454004)(11346002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3121;
 H:BY5PR18MB3187.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RVOxiQzOZoigePJeViL6aUais+xvG2E2cPJMS1uyYVzuYlmpZFb60MFGIcWbjXU+42AUFrp27dTOkrKh7LQZJ7LWSE+A9FWjn9E8WmzBDcKsyj+7JYSeivbfs4+cXj8EAbBoEe2bF308LH/t+AJuq+vck9EqJI4tR3uYSf8iXxVcW4yEzQ0psmiIM0vfgUUnmrj8SK1OK51FzJ0IK/qdd1NPUaJiw8aOAcsV3wbWFe3In3ITq3lAAghs0hY2fjTziwN5GQM/RESkLZ/rhTll1eUk5loEf1uqWDzBdizquD9xVajRbYNCMI5/hWE80UYR+VcVZXVkNspTjV71WtmOs0qAjc3jtZbXsoqtzlO0AmVRfzRYtGGG6mZqn75cwn03JUXelmnt8yapOdCHewWW9pNP4f48bVXMFBWbYnanJmI=
x-ms-exchange-transport-forked: True
Content-ID: <24F50199789C5E4F9AEBC58ED3001D71@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d3cf22d-a1ec-42ab-cad7-08d71b12a7f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:38:43.8858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XOa5w/RqWrj4Zt7EwvRsshDN09oOVQPJTM6KoLY2+wlFmdl/sdbSoxE+uo36gRYW/3PYzJQBcdCkDvoHT4zhXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3121
X-OriginatorOrg: suse.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: sync the first fragment
 unconditionally
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "alexander.h.duyck@linux.intel.com" <alexander.h.duyck@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The 08/07/2019 15:56, Jacob Wen wrote:
> I think the description is not correct. Consider using something like below.
Thank you for comments. 

> 
> In Xen environment, due to memory fragmentation ixgbe may allocate a 'DMA'
> buffer with pages that are not physically contiguous.
Actually, I didn't look into the reason why ixgbe got a DMA buffer which
was mapped to Xen-swiotlb area.

But I don't think this issue relates to phsical memory contiguity because, in
our case, one ixgbe_rx_buffer only associates at most one page.

If you take a look at the related code, you will find there are several reasons
for mapping a DMA buffer to Xen-swiotlb area:
static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
         */
        if (dma_capable(dev, dev_addr, size) &&
            !range_straddles_page_boundary(phys, size) &&
                !xen_arch_need_swiotlb(dev, phys, dev_addr) &&
                swiotlb_force != SWIOTLB_FORCE)
                goto done;

// Firo
> 
> A NIC doesn't support directly write such buffer. So xen-swiotlb would use
> the pages, which are physically contiguous, from the swiotlb buffer for the
> NIC.
> 
> The unmap operation is used to copy the swiotlb buffer to the pages that are
> allocated by ixgbe.
> 
> On 8/7/19 10:49 AM, Firo Yang wrote:
> > In Xen environment, if Xen-swiotlb is enabled, ixgbe driver
> > could possibly allocate a page, DMA memory buffer, for the first
> > fragment which is not suitable for Xen-swiotlb to do DMA operations.
> > Xen-swiotlb have to internally allocate another page for doing DMA
> > operations. It requires syncing between those two pages. However,
> > since commit f3213d932173 ("ixgbe: Update driver to make use of DMA
> > attributes in Rx path"), the unmap operation is performed with
> > DMA_ATTR_SKIP_CPU_SYNC. As a result, the sync is not performed.
> > 
> > To fix this problem, always sync before possibly performing a page
> > unmap operation.
> > 
> > Fixes: f3213d932173 ("ixgbe: Update driver to make use of DMA
> > attributes in Rx path")
> > Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > Signed-off-by: Firo Yang <firo.yang@suse.com>
> > ---
> > 
> > Changes from v1:
> >   * Imporved the patch description.
> >   * Added Reviewed-by: and Fixes: as suggested by Alexander Duyck
> > 
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 +++++++++-------
> >   1 file changed, 9 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index cbaf712d6529..200de9838096 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -1825,13 +1825,7 @@ static void ixgbe_pull_tail(struct ixgbe_ring *rx_ring,
> >   static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
> >   				struct sk_buff *skb)
> >   {
> > -	/* if the page was released unmap it, else just sync our portion */
> > -	if (unlikely(IXGBE_CB(skb)->page_released)) {
> > -		dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
> > -				     ixgbe_rx_pg_size(rx_ring),
> > -				     DMA_FROM_DEVICE,
> > -				     IXGBE_RX_DMA_ATTR);
> > -	} else if (ring_uses_build_skb(rx_ring)) {
> > +	if (ring_uses_build_skb(rx_ring)) {
> >   		unsigned long offset = (unsigned long)(skb->data) & ~PAGE_MASK;
> >   		dma_sync_single_range_for_cpu(rx_ring->dev,
> > @@ -1848,6 +1842,14 @@ static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
> >   					      skb_frag_size(frag),
> >   					      DMA_FROM_DEVICE);
> >   	}
> > +
> > +	/* If the page was released, just unmap it. */
> > +	if (unlikely(IXGBE_CB(skb)->page_released)) {
> > +		dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
> > +				     ixgbe_rx_pg_size(rx_ring),
> > +				     DMA_FROM_DEVICE,
> > +				     IXGBE_RX_DMA_ATTR);
> > +	}
> >   }
> >   /**
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
