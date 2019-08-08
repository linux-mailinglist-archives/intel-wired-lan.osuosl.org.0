Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE93857DD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 03:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B60EC8838E;
	Thu,  8 Aug 2019 01:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYTU6jEwGON9; Thu,  8 Aug 2019 01:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2475288402;
	Thu,  8 Aug 2019 01:57:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E87971BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 01:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E4B5420501
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 01:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UR4OYHHcORRX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 01:57:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m4a0040g.houston.softwaregrp.com
 (m4a0040g.houston.softwaregrp.com [15.124.2.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E8042014A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 01:56:55 +0000 (UTC)
Received: FROM m4a0040g.houston.softwaregrp.com (15.120.17.146) BY
 m4a0040g.houston.softwaregrp.com WITH ESMTP; 
 Thu,  8 Aug 2019 01:56:41 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M4W0334.microfocus.com (2002:f78:1192::f78:1192) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 8 Aug 2019 01:55:33 +0000
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (15.124.8.11) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Thu, 8 Aug 2019 01:55:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b86St9Fx1q2tAVk8AHeKyIVgIoCI6jJrKfxhQfBPVUp1OeAksnAXCDp13wZPQt70hYUnr9Ynem0l9jOGjlqVhOusAfzmPsNCEVzVFq5Xipsvq1IUjTAckSY+VCBsLEwC+iJ8gSWyYB9kQMEPFrO8pDbF8/CFFoFVehH63B8ZvrAn33HoK8UUMNoT0R1FdtdLQukkk5n+zccdWjBXBzhnPdcujVf4c6B/+3d8btfaunKrQ6kVYZ36Wri9SCkxek5AnqDUNwSBu8wBKXzByUo9Kj3KVU6zTsu82sJ7k09TFA1jedxciUoEZci9vPPHjOdbBHVo6rmtgvlykwo9+uJPbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uoUPwFQSrGx0HyJLUcyEJA99ffvh+O/nfriQlQ/VMsg=;
 b=a7Yo2AZjieMX2EmdBDS6Hw1bXEAureJH2TvRcPRHF2JdKQedYfA0euIGytByWvtw8ZZopw96rbQtB44SUQvdLQVfNn3FYOxBoHY7qRfsFYXGa4i7n9yKktBYerhlPzMnNmVg5qSL9lbfF58yQaC5HU3qnBdD+2rOydoaBGS4Ycx9hfpkwrk7Wf61jabz0Mt5QFNj3upU06pgREEueMAXihxjo8zSBYtTgkns1F2oXmJ5OiZ7jnS4ZMX71AE4x6u81WLD6FpV71krsXTuOEg4FOF3YXaAyKPCGpXawQ1fhYy7pc1NVXIm25cVLwmtMgDAjgmn6BuMnI8bmOtYMbfJBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from BY5PR18MB3187.namprd18.prod.outlook.com (10.255.139.221) by
 BY5PR18MB3347.namprd18.prod.outlook.com (10.255.138.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Thu, 8 Aug 2019 01:55:31 +0000
Received: from BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac]) by BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac%4]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 01:55:31 +0000
From: Firo Yang <firo.yang@suse.com>
To: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: sync the first fragment
 unconditionally
Thread-Index: AQHVTMrFkDapNm+vukGfNKy6YOsjCqbvUa91gACR04D///c5WIAApFwA
Date: Thu, 8 Aug 2019 01:55:31 +0000
Message-ID: <20190808015521.GA18282@linux-6qg8>
References: <20190807024917.27682-1-firo.yang@suse.com>
 <85aaefdf-d454-1823-5840-d9e2f71ffb19@oracle.com>
 <20190807083831.GA6811@linux-6qg8> <20190807160853.00001d71@gmail.com>
 <CAKgT0UfEh8cvTht3yceyXqwReJOQkcpJV8j0vHSJwookTWhn_Q@mail.gmail.com>
In-Reply-To: <CAKgT0UfEh8cvTht3yceyXqwReJOQkcpJV8j0vHSJwookTWhn_Q@mail.gmail.com>
Accept-Language: en-US, en-GB, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SG2PR06CA0241.apcprd06.prod.outlook.com
 (2603:1096:4:ac::25) To BY5PR18MB3187.namprd18.prod.outlook.com
 (2603:10b6:a03:196::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=firo.yang@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [45.122.156.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a19b384-710a-49c2-a2a0-08d71ba37e88
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR18MB3347; 
x-ms-traffictypediagnostic: BY5PR18MB3347:
x-microsoft-antispam-prvs: <BY5PR18MB33472ED454F796EDAA2F392A88D70@BY5PR18MB3347.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(7916004)(39860400002)(346002)(396003)(376002)(366004)(136003)(199004)(51444003)(189003)(316002)(81166006)(6116002)(3846002)(5660300002)(186003)(54906003)(76176011)(478600001)(52116002)(86362001)(14454004)(256004)(446003)(386003)(11346002)(26005)(476003)(14444005)(33716001)(44832011)(102836004)(66066001)(53936002)(6506007)(53546011)(486006)(6512007)(9686003)(6436002)(6916009)(66446008)(66556008)(66476007)(64756008)(8936002)(66946007)(1411001)(6486002)(8676002)(229853002)(4326008)(2906002)(81156014)(6246003)(33656002)(71190400001)(71200400001)(25786009)(305945005)(99286004)(7736002)(1076003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3347;
 H:BY5PR18MB3187.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vN5lTuVAtHcVIQXk9sVG4pZ/z56AU18P/DaCckp5mHWJInq6fonsLkbHHvatCpRhqOlQUrpKKXUn5+8GhyYPxuoW+af1zD6V5vheTwvDT/WPaB4aI63eujK2csZj0alOqXVlbyAKWBqQHRRGLrm9btMiOu4tYr//l1bS0vDEByfYyTfLgp8tNBGKDczeMA6kBBx00obaHY2e0WUKkEO2/vt7gBZt6JiPw3OhgRMEg9LbhnHc4YIdLOI61ynSpgj905ibPKsaawfYBGjI0FD0mHOZt1cOCR8UxrUS714boXEXLUtatutEgrrHHiRT96r/mzVGRtudnBDvghrKTOO6/1pnQBJsT50cgF1fBW//9xhvqtZtaabJ6DoyOBzmIUJyTYuOQMjT9d2K0Ml+OGowtDTJhYBf/sxfzAOlCgLlZuo=
Content-ID: <97E5D852608B934B8A97E83AD666C5BB@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a19b384-710a-49c2-a2a0-08d71ba37e88
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 01:55:31.4436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OnN2KTi8aOWibYKdoF6Uc2gEWm1TtrgK5oqpHlat6n3ZS656KfS76/4HidfhIuTqfpWdD2MtwFxAfied6dYxPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3347
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jacob Wen <jian.w.wen@oracle.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The 08/07/2019 09:06, Alexander Duyck wrote:
> On Wed, Aug 7, 2019 at 7:09 AM Maciej Fijalkowski
> <maciejromanfijalkowski@gmail.com> wrote:
> >
> > On Wed, 7 Aug 2019 08:38:43 +0000
> > Firo Yang <firo.yang@suse.com> wrote:
> >
> > > The 08/07/2019 15:56, Jacob Wen wrote:
> > > > I think the description is not correct. Consider using something like below.
> > > Thank you for comments.
> > >
> > > >
> > > > In Xen environment, due to memory fragmentation ixgbe may allocate a 'DMA'
> > > > buffer with pages that are not physically contiguous.
> > > Actually, I didn't look into the reason why ixgbe got a DMA buffer which
> > > was mapped to Xen-swiotlb area.
> >
> > I think that neither of these descriptions are telling us what was truly
> > broken. They lack what Alexander wrote on v1 thread of this patch.
> >
> > ixgbe_dma_sync_frag is called only on case when the current descriptor has EOP
> > bit set, skb was already allocated and you'll be adding a current buffer as a
> > frag. DMA unmapping for the first frag was intentionally skipped and we will be
> > unmapping it here, in ixgbe_dma_sync_frag. As Alex said, we're using the
> > DMA_ATTR_SKIP_CPU_SYNC attribute which obliges us to perform a sync manually
> > and it was missing.
> >
> > So IMHO the commit description should include descriptions from both xen and
> > ixgbe worlds, the v2 lacks info about ixgbe case.
Thank you. Will submit v3 with what Alexander worte on v1.

Thanks,
Firo
> >
> > BTW Alex, what was the initial reason for holding off with unmapping the first
> > buffer? Asking because IIRC the i40e and ice behave a bit different here. We
> > don't look there for EOP at all when building/constructing skb and not delaying
> > the unmap of non-eop buffers.
> >
> > Thanks,
> > Maciej
> 
> The reason why we have to hold off on unmapping the first buffer is
> because in the case of Receive Side Coalescing (RSC), also known as Large
> Receive Offload (LRO), the header of the packet is updated for each
> additional frame that is added. As such you can end up with the device
> writing data, header, data, header, data, header where each data write
> would update a new descriptor, but the header will only ever update the
> first descriptor in the chain. As such if we unmapped it earlier it would
> result in an IOMMU fault because the device would be rewriting the header
> after it had been unmapped.
> 
> The devices supported by the ixgbe driver are the only ones that have
> RSC/LRO support. As such this behavior is present for ixgbe, but not for
> other Intel NIC drivers including igb, igbvf, ixgbevf, i40e, etc.
> 
> - Alex
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
