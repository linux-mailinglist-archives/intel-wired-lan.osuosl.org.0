Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3139D33B6FA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 15:00:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C28474E51E;
	Mon, 15 Mar 2021 14:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5csN1BrdVlw0; Mon, 15 Mar 2021 14:00:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1AA74398C;
	Mon, 15 Mar 2021 14:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE0E21BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAAE44891C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aJ5YuoZT-yqD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 07:55:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 834EA4870F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 07:55:11 +0000 (UTC)
IronPort-SDR: Et3x/WvYgiaabPI0gwL2xvUYnu3+hROT2SAxkZuNTKjWz3mExVjP2jcvWRwQb9otkODt3qYyb/
 D8BMBrvWjvFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="274092332"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="274092332"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 00:55:09 -0700
IronPort-SDR: u9zTx4KXJtkoNKUcDN+rPNSFAgCApQGnO8lN9fWv9ggwcKgdEcfKFWijMWFHzjiuLLWYhZcX3P
 rWVJnAdinisg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="371548340"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 15 Mar 2021 00:55:08 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 00:55:08 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 00:55:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 00:55:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 00:55:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTJJiRzW0Wu6DBGfiZ9w7K6WE6zuaC7+EoCnkfS8HY01HIwtSoV5xWy4rkrLHQsW/qvTZBA6RDLGKZmIpJRlXFfzl9aYSe4aIdKdzsn1qfj1r1TW01U/lLcAam25wH8F73NHx3MYz5Pq0yIJKTcqZqlCoHK8XMnKrBKoUkTa82qrf+kTrT7XskY02dJc6dojRkYnpFS7q1fbsJiHFo5vTBx+aNy98+JequWKqs4WO1WGzS6ZXSt3QQzLIJU5hs5+/+jRejoMZkQtUDaKTXslyrWdT+cUTd09TbO2N+UTeC5PGyfJnFCEBBlnfrWC1nf/oMsKUUhT7CBc3UduEsUmDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yV3dRjlxFMCr8I9AeYUxwds4eDbhuYi1x6Cv7H+Zdb8=;
 b=XyaT2Wf3wkCV0SzcjQ9CHgaqeizffSF+UWhIRwNdOY/dBZ/pSIZsChVylcTX9CKAfRpncWz/octAC7L6B1Iwi8oBEk9ccpbnTqbn7FELG3snTJRO9lQcnOTfplsqGmV+BocRHZhsu0cSWvbavMlk4s1HpA3tLGz4VYfiXHgRJfKVJNn8FfLj0HmrhIUEw/23Ene0xWDeGh8ECeaaVt9UVAKJl/ng91ebsbPSU2jFLLtP1th2NcKNH4lLaW4IfGmk3ktHNrk6mpzPyyW2OCiiFAbJAiii6Lt/pvdPWBczz0n0WTV52y+SdG0tiIroPtAgrMbbJkHllhNEgI4jQcK9Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yV3dRjlxFMCr8I9AeYUxwds4eDbhuYi1x6Cv7H+Zdb8=;
 b=Q8JLcpNet7J6ZgTeFVYq0iH7mLsYuQRZdq7UKMbppqpcBHxL+AblTMsMRzpReKs0kkacDFYmSW4kDNWKjK1NozFE6LRC8q8vzUAWELPc3sVTYlbdXOq/Z5PKiD5uMYkwgnVDf3YsjuymPDzMdsiZjH6bNRipZJn6qXioSuz7aO8=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3164.namprd11.prod.outlook.com (2603:10b6:5:58::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 07:55:05 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 07:55:05 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
 support for flow filter
Thread-Index: AQHXFJQIWL7eR9OFcUihYcOkoSYe6KqEtP5wgAAA8jA=
Date: Mon, 15 Mar 2021 07:55:04 +0000
Message-ID: <DM6PR11MB30998C5FF7E93F7CFB3EB137D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-2-haiyue.wang@intel.com>
 <BN8PR11MB379501B38731F992A3B366A8F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB379501B38731F992A3B366A8F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0aa4bf5-05af-4fa4-9df2-08d8e787a524
x-ms-traffictypediagnostic: DM6PR11MB3164:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3164D9C55B8C9A1CD1B9C74AD96C9@DM6PR11MB3164.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l8QpOT7JgjM9U5v6d3vBNyVjq6z5Y/zKUhSYlD3uOsah5Ymb/naaBbVWPH3W/lztjyYdUSGDYIbhnk4+qms4JTVjkNpsF7TuAc2aAy+gF77opmFm42er6ghDFlgRcWo6Yse1qaia/EQTI6jeyI4gOBTqkRfMJg7SUD/w3dBxwmcRQM3TOIwoEoOb2rQ5WIqyTCgicJOEptmz078JmAT5igpnBif/VIRCKZmtTYeSUsu0ljot1rgJVMeTOWYkgMasSxeZvANlNCkS3bCF7uuTAO+qrw3+QPBdIwzscjPfiJCyXe3ko+j3oH6itv+IpwTVDv1aaIuHpQdbuFGaLxsWmhWO/vY/VN6OlFmfh+PZyn6xi/AUK8JcPBIilFLcZVbdcNaUrZqpmj95OYtUTD6hI2u9NsCZTkTjJqO3BLeDfZYmSln1MbFcAoQwvaaq9Xwu8zlWfrTVRLDr5xtMDty/yVvLEbaR6TfNjS67vnd8MNFmoM27SJiBUJ66imrymxV02rIKlXvDuy2uWVN1u+f7A+qE6ocSfQfFaCPCqztMxESQJrytW2jDkQ+z6BRr1ZAbtJdoJpzPzJom0crxUp4n+NiKi9CURimjaNS76w2fAnmllKSxxB1i0IVl4YBuv5BZ68XvnUwO7yx4VaKWtugpOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(136003)(366004)(39860400002)(4326008)(9686003)(107886003)(86362001)(186003)(26005)(316002)(54906003)(55016002)(478600001)(83380400001)(76116006)(71200400001)(8936002)(2906002)(966005)(7696005)(52536014)(53546011)(6506007)(5660300002)(30864003)(66556008)(66946007)(8676002)(66476007)(64756008)(33656002)(110136005)(66446008)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?a9CX58Hdhq9B9bSfCD2Ao6d2ZrAqRDhz7yvnnpB8UtUcVeZDLWR09dnc1Xsp?=
 =?us-ascii?Q?D6ydZMIo5DHeGm3Cmwe2RMV7dibBA1uEEHcG6HdYBczlKYSC2TAkPQeAkitC?=
 =?us-ascii?Q?L4wgAZ5nCuYbowH4lPZ5aOzDAWOpkEKaHi5LOYkRj5bFoiq50RATgpJ1y4hS?=
 =?us-ascii?Q?K8JkNtSogJZ0atKaIBwHi/ot1YmMHsm9YPZUo4OzxKXA0KcgWDycqKNLFH9q?=
 =?us-ascii?Q?Y6a9olSG6FwkF1W342+yi/KEW+npyMf4OX4C6pW7+JxWX1x6RomWgvbZj5uu?=
 =?us-ascii?Q?KHSBTDMNWbJIue08+4j2No81VFnWuz4rxbeB5Bij0/p1nt2snjbBLcwWX1OC?=
 =?us-ascii?Q?MonTPyvp28S5HI1rkfvHBO/bCOBB/+T3+aEP7ar4kdv98jaYgJA/2HqrGRmY?=
 =?us-ascii?Q?qefYztL2LgPo7Bqxt7qFrOtv5VGmwoUL66kWvFKTb1xwTKmNEHzIQQRDu1y4?=
 =?us-ascii?Q?nc0vrStEdiVa4Jf1EmQ2sOlksY9sObiwnyYj9Sc0qDjck14YOJpmS9lZYRNT?=
 =?us-ascii?Q?fG7tDgvugmk2A6e9FN5/F/qNbjDIofbh4NPcmwMJ6DaWle3REYNVCif6w6o+?=
 =?us-ascii?Q?ylH7s3gv0bVgbN6PkQ7S++gC6Wd7BY2wWv8IYH0p7HICbtWoU4yAQoXPna00?=
 =?us-ascii?Q?zOdqe3uD3Y1eyswC63AOyDl8zOVvtpjW22uBqF/cAQngDJDcxF7oIs3cpmMD?=
 =?us-ascii?Q?oOOxxvtbQPvnGHsRRWNal3fIEx+sCVkNeTZ3ZHMQNe+Okbzd0xp92MRWJSZj?=
 =?us-ascii?Q?hKYjnSv0nc2MMh5JCFY81qUGdE1XLjEmFnADykt+l5BB4EDTP0DK3jqbnTpg?=
 =?us-ascii?Q?LSoTFALHICA4lt7MZ2tnhjjGAf+5fQfOfCXwYnbBRjrobfFmVIcaMtiVJYIc?=
 =?us-ascii?Q?sW6QIxiSLVG/X/MDhbX82Me8WcAJic2CUhcRH5eYFXLI7+ZvSdykocyQwW06?=
 =?us-ascii?Q?BABMMdC5VGx0618pFk36xeXsasIzvImLzUwmrHrlFdI/X6s4yJkc0vwOZ3yA?=
 =?us-ascii?Q?Yg6qT379FHxpKQdaGrCt4bcMRsRJtiv3gN0bD8AWtvgC0K4JWbkZ3TxQKC3S?=
 =?us-ascii?Q?uUzqPRcDE+imHz3v8eoPhpVvnleL4/TXLBLM7qrPfw5v53YTThIv2JWqpuVH?=
 =?us-ascii?Q?HBhvukw5pOMsLeuiqs2GwExPaZEgTYtNdpNXk1uXqYiY/yPZUsFXVVPgItjh?=
 =?us-ascii?Q?vb6Ot5GH2RLG+mcj1W6CkfyqEE23i9u1LpidWmvMZxAy96/T4HATzmCLuR8c?=
 =?us-ascii?Q?wWkrXlf8TJRlzaPXtbzbLj72RVU6zACAFyEn9h/vx8tTJUMG7VDDDY+aNRfj?=
 =?us-ascii?Q?L4bcW8zabHuKzLKgTxJzaL3L?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0aa4bf5-05af-4fa4-9df2-08d8e787a524
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 07:55:04.8697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zGqMMgrQN4YZ2IfMhNqYsndtdFrtve8f52GPAk5BMkhQCFoJB1ZbXfMLfRRYT2SYA09eTWY+Rjk+juTjCKc/OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3164
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 15 Mar 2021 14:00:10 +0000
Subject: Re: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
 support for flow filter
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, "Scott, Kevin C" <kevin.c.scott@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tested-by: Chen, Bo <BoX.C.Chen@intel.com>

Regards,
Chen Bo

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 15:46
> To: Wang, Haiyue <haiyue.wang@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Scott, Kevin C
> <kevin.c.scott@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
> support for flow filter
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Scott, Kevin C
> > <kevin.c.scott@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic
> > protocol support for flow filter
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Add more protocol and field support for flow filter include:
> > ETH, VLAN, ICMP, ARP and TCP flag.
> >
> > Signed-off-by: Kevin Scott <kevin.c.scott@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c     |  20 ++
> >  drivers/net/ethernet/intel/ice/ice_fdir.h     |   1 +
> >  drivers/net/ethernet/intel/ice/ice_flow.c     | 180 +++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_flow.h     |  20 ++
> >  .../ethernet/intel/ice/ice_protocol_type.h    |   6 +
> >  5 files changed, 221 insertions(+), 6 deletions(-)
> >
> 
> Re-send to Bo, as a new member.
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c
> > b/drivers/net/ethernet/intel/ice/ice_fdir.c
> > index 59c0c6a0f8c5..1e77f43b3b3e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> > @@ -492,6 +492,16 @@ static void ice_pkt_insert_u32(u8 *pkt, int offset,
> __be32 data)
> >  	memcpy(pkt + offset, &data, sizeof(data));  }
> >
> > +/**
> > + * ice_pkt_insert_mac_addr - insert a MAC addr into a memory buffer.
> > + * @pkt: packet buffer
> > + * @addr: MAC address to convert and insert into pkt at offset  */
> > +static void ice_pkt_insert_mac_addr(u8 *pkt, u8 *addr) {
> > +	ether_addr_copy(pkt, addr);
> > +}
> > +
> >  /**
> >   * ice_fdir_get_gen_prgm_pkt - generate a training packet
> >   * @hw: pointer to the hardware structure @@ -580,6 +590,7 @@
> > ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_TCP_SRC_PORT_OFFSET,
> >  				   input->ip.v4.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		if (frag)
> >  			loc[20] = ICE_FDIR_IPV4_PKT_FLAG_DF;
> >  		break;
> > @@ -592,6 +603,9 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw,
> struct ice_fdir_fltr *input,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_UDP_SRC_PORT_OFFSET,
> >  				   input->ip.v4.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> > +		ice_pkt_insert_mac_addr(loc + ETH_ALEN,
> > +					input->ext_data.src_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> >  		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET, @@ -
> 602,6 +616,7
> > @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr
> *input,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_SCTP_SRC_PORT_OFFSET,
> >  				   input->ip.v4.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
> >  		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET, @@ -
> 609,6 +624,7
> > @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr
> *input,
> >  		ice_pkt_insert_u32(loc, ICE_IPV4_SRC_ADDR_OFFSET,
> >  				   input->ip.v4.dst_ip);
> >  		ice_pkt_insert_u16(loc, ICE_IPV4_PROTO_OFFSET, 0);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -619,6
> > +635,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct
> ice_fdir_fltr *input,
> >  				   input->ip.v6.src_port);
> >  		ice_pkt_insert_u16(loc, ICE_IPV6_TCP_SRC_PORT_OFFSET,
> >  				   input->ip.v6.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -629,6
> > +646,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct
> ice_fdir_fltr *input,
> >  				   input->ip.v6.src_port);
> >  		ice_pkt_insert_u16(loc, ICE_IPV6_UDP_SRC_PORT_OFFSET,
> >  				   input->ip.v6.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> @@ -639,12
> > +657,14 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct
> ice_fdir_fltr *input,
> >  				   input->ip.v6.src_port);
> >  		ice_pkt_insert_u16(loc, ICE_IPV6_SCTP_SRC_PORT_OFFSET,
> >  				   input->ip.v6.dst_port);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
> >  					 input->ip.v6.src_ip);
> >  		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_SRC_ADDR_OFFSET,
> >  					 input->ip.v6.dst_ip);
> > +		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
> >  		break;
> >  	default:
> >  		return ICE_ERR_PARAM;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h
> > b/drivers/net/ethernet/intel/ice/ice_fdir.h
> > index 1c587766daab..31623545ebae 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
> > @@ -103,6 +103,7 @@ struct ice_fdir_v6 {
> >
> >  struct ice_fdir_extra {
> >  	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
> > +	u8 src_mac[ETH_ALEN];	/* src MAC address */
> >  	u32 usr_def[2];		/* user data */
> >  	__be16 vlan_type;	/* VLAN ethertype */
> >  	__be16 vlan_tag;	/* VLAN tag info */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c
> > b/drivers/net/ethernet/intel/ice/ice_flow.c
> > index 89a0cef20506..89d0e20ee094 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> > @@ -20,6 +20,17 @@ struct ice_flow_field_info {
> >  /* Table containing properties of supported protocol header fields */
> > static const  struct ice_flow_field_info
> > ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> > +	/* Ether */
> > +	/* ICE_FLOW_FIELD_IDX_ETH_DA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_ETH_SA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, ETH_ALEN,
> ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_S_VLAN */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 12,
> sizeof(__be16)),
> > +	/* ICE_FLOW_FIELD_IDX_C_VLAN */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 14,
> sizeof(__be16)),
> > +	/* ICE_FLOW_FIELD_IDX_ETH_TYPE */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, sizeof(__be16)),
> >  	/* IPv4 / IPv6 */
> >  	/* ICE_FLOW_FIELD_IDX_IPV4_SA */
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_IPV4, 12, sizeof(struct
> > in_addr)), @@ -42,6 +53,24 @@ struct ice_flow_field_info
> ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 0, sizeof(__be16)),
> >  	/* ICE_FLOW_FIELD_IDX_SCTP_DST_PORT */
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 2, sizeof(__be16)),
> > +	/* ICE_FLOW_FIELD_IDX_TCP_FLAGS */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_TCP, 13, 1),
> > +	/* ARP */
> > +	/* ICE_FLOW_FIELD_IDX_ARP_SIP */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 14, sizeof(struct
> in_addr)),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_DIP */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 24, sizeof(struct
> in_addr)),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_SHA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 8, ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_DHA */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 18, ETH_ALEN),
> > +	/* ICE_FLOW_FIELD_IDX_ARP_OP */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 6, sizeof(__be16)),
> > +	/* ICMP */
> > +	/* ICE_FLOW_FIELD_IDX_ICMP_TYPE */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 0, 1),
> > +	/* ICE_FLOW_FIELD_IDX_ICMP_CODE */
> > +	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 1, 1),
> >  	/* GRE */
> >  	/* ICE_FLOW_FIELD_IDX_GRE_KEYID */
> >  	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GRE, 12, @@ -50,8
> +79,32 @@
> > struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
> >
> >  /* Bitmaps indicating relevant packet types for a particular protocol header
> >   *
> > - * Packet types for packets with an Outer/First/Single IPv4 header
> > + * Packet types for packets with an Outer/First/Single MAC header
> >   */
> > +static const u32 ice_ptypes_mac_ofos[] = {
> > +	0xFDC00846, 0xBFBF7F7E, 0xF70001DF, 0xFEFDFDFB,
> > +	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00400000, 0x03FFF000, 0x7FFFFFE0, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> > +/* Packet types for packets with an Innermost/Last MAC VLAN header */
> > +static const u32 ice_ptypes_macvlan_il[] = {
> > +	0x00000000, 0xBC000000, 0x000001DF, 0xF0000000,
> > +	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> > +/* Packet types for packets with an Outer/First/Single IPv4 header */
> >  static const u32 ice_ptypes_ipv4_ofos[] = {
> >  	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000, @@ -111,6
> +164,18 @@
> > static const u32 ice_ipv4_ofos_no_l4[] = {
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> >
> > +/* Packet types for packets with an Outermost/First ARP header */
> > +static const u32 ice_ptypes_arp_of[] = {
> > +	0x00000800, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> >  /* Packet types for packets with an Innermost/Last IPv4 header - no
> > L4 */  static const u32 ice_ipv4_il_no_l4[] = {
> >  	0x60000000, 0x18043008, 0x80000002, 0x6010c021, @@ -182,6
> +247,29 @@
> > static const u32 ice_ptypes_sctp_il[] = {
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +};
> > +
> > +/* Packet types for packets with an Outermost/First ICMP header */
> > +static const u32 ice_ptypes_icmp_of[] = {
> > +	0x10000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> > +/* Packet types for packets with an Innermost/Last ICMP header */
> > +static const u32 ice_ptypes_icmp_il[] = {
> > +	0x00000000, 0x02040408, 0x40000102, 0x08101020,
> > +	0x00000408, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x42108000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> >
> > @@ -197,6 +285,18 @@ static const u32 ice_ptypes_gre_of[] = {
> >  	0x00000000, 0x00000000, 0x00000000, 0x00000000,  };
> >
> > +/* Packet types for packets with an Innermost/Last MAC header */
> > +static const u32 ice_ptypes_mac_il[] = {
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000,
> > +	0x00000000, 0x00000000, 0x00000000, 0x00000000, };
> > +
> >  /* Manage parameters and info. used during the creation of a flow
> > profile */  struct ice_flow_prof_params {
> >  	enum ice_block blk;
> > @@ -212,9 +312,11 @@ struct ice_flow_prof_params {  };
> >
> >  #define ICE_FLOW_SEG_HDRS_L3_MASK	\
> > -	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
> > +	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6 | \
> > +	 ICE_FLOW_SEG_HDR_ARP)
> >  #define ICE_FLOW_SEG_HDRS_L4_MASK	\
> > -	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP |
> ICE_FLOW_SEG_HDR_SCTP)
> > +	(ICE_FLOW_SEG_HDR_ICMP | ICE_FLOW_SEG_HDR_TCP |
> ICE_FLOW_SEG_HDR_UDP | \
> > +	 ICE_FLOW_SEG_HDR_SCTP)
> >
> >  /**
> >   * ice_flow_val_hdrs - validates packet segments for valid protocol
> > headers @@ -243,8 +345,11 @@ ice_flow_val_hdrs(struct
> > ice_flow_seg_info *segs, u8 segs_cnt)
> >
> >  /* Sizes of fixed known protocol headers without header options */
> >  #define ICE_FLOW_PROT_HDR_SZ_MAC	14
> > +#define ICE_FLOW_PROT_HDR_SZ_MAC_VLAN
> 	(ICE_FLOW_PROT_HDR_SZ_MAC + 2)
> >  #define ICE_FLOW_PROT_HDR_SZ_IPV4	20
> >  #define ICE_FLOW_PROT_HDR_SZ_IPV6	40
> > +#define ICE_FLOW_PROT_HDR_SZ_ARP	28
> > +#define ICE_FLOW_PROT_HDR_SZ_ICMP	8
> >  #define ICE_FLOW_PROT_HDR_SZ_TCP	20
> >  #define ICE_FLOW_PROT_HDR_SZ_UDP	8
> >  #define ICE_FLOW_PROT_HDR_SZ_SCTP	12
> > @@ -256,16 +361,27 @@ ice_flow_val_hdrs(struct ice_flow_seg_info
> *segs, u8 segs_cnt)
> >   */
> >  static u16 ice_flow_calc_seg_sz(struct ice_flow_prof_params *params,
> > u8 seg)  {
> > -	u16 sz = ICE_FLOW_PROT_HDR_SZ_MAC;
> > +	u16 sz;
> > +
> > +	/* L2 headers */
> > +	sz = (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_VLAN) ?
> > +		ICE_FLOW_PROT_HDR_SZ_MAC_VLAN :
> ICE_FLOW_PROT_HDR_SZ_MAC;
> >
> >  	/* L3 headers */
> >  	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV4)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_IPV4;
> >  	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV6)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_IPV6;
> > +	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ARP)
> > +		sz += ICE_FLOW_PROT_HDR_SZ_ARP;
> > +	else if (params->prof->segs[seg].hdrs &
> ICE_FLOW_SEG_HDRS_L4_MASK)
> > +		/* A L3 header is required if L4 is specified */
> > +		return 0;
> >
> >  	/* L4 headers */
> > -	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
> > +	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ICMP)
> > +		sz += ICE_FLOW_PROT_HDR_SZ_ICMP;
> > +	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_TCP;
> >  	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_UDP)
> >  		sz += ICE_FLOW_PROT_HDR_SZ_UDP;
> > @@ -298,6 +414,24 @@ ice_flow_proc_seg_hdrs(struct
> > ice_flow_prof_params *params)
> >
> >  		hdrs = prof->segs[i].hdrs;
> >
> > +		if (hdrs & ICE_FLOW_SEG_HDR_ETH) {
> > +			src = !i ? (const unsigned long
> *)ice_ptypes_mac_ofos :
> > +				(const unsigned long *)ice_ptypes_mac_il;
> > +			bitmap_and(params->ptypes, params->ptypes, src,
> > +				   ICE_FLOW_PTYPE_MAX);
> > +		}
> > +
> > +		if (i && hdrs & ICE_FLOW_SEG_HDR_VLAN) {
> > +			src = (const unsigned long *)ice_ptypes_macvlan_il;
> > +			bitmap_and(params->ptypes, params->ptypes, src,
> > +				   ICE_FLOW_PTYPE_MAX);
> > +		}
> > +
> > +		if (!i && hdrs & ICE_FLOW_SEG_HDR_ARP) {
> > +			bitmap_and(params->ptypes, params->ptypes,
> > +				   (const unsigned long *)ice_ptypes_arp_of,
> > +				   ICE_FLOW_PTYPE_MAX);
> > +		}
> >  		if ((hdrs & ICE_FLOW_SEG_HDR_IPV4) &&
> >  		    !(hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)) {
> >  			src = !i ? (const unsigned long *)ice_ipv4_ofos_no_l4 :
> > @@ -334,6 +468,13 @@ ice_flow_proc_seg_hdrs(struct
> ice_flow_prof_params *params)
> >  			src = (const unsigned long *)ice_ptypes_sctp_il;
> >  			bitmap_and(params->ptypes, params->ptypes, src,
> >  				   ICE_FLOW_PTYPE_MAX);
> > +		}
> > +
> > +		if (hdrs & ICE_FLOW_SEG_HDR_ICMP) {
> > +			src = !i ? (const unsigned long *)ice_ptypes_icmp_of :
> > +				(const unsigned long *)ice_ptypes_icmp_il;
> > +			bitmap_and(params->ptypes, params->ptypes, src,
> > +				   ICE_FLOW_PTYPE_MAX);
> >  		} else if (hdrs & ICE_FLOW_SEG_HDR_GRE) {
> >  			if (!i) {
> >  				src = (const unsigned long
> *)ice_ptypes_gre_of; @@ -370,6 +511,15
> > @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params
> *params,
> >  	flds = params->prof->segs[seg].fields;
> >
> >  	switch (fld) {
> > +	case ICE_FLOW_FIELD_IDX_ETH_DA:
> > +	case ICE_FLOW_FIELD_IDX_ETH_SA:
> > +	case ICE_FLOW_FIELD_IDX_S_VLAN:
> > +	case ICE_FLOW_FIELD_IDX_C_VLAN:
> > +		prot_id = seg == 0 ? ICE_PROT_MAC_OF_OR_S :
> ICE_PROT_MAC_IL;
> > +		break;
> > +	case ICE_FLOW_FIELD_IDX_ETH_TYPE:
> > +		prot_id = seg == 0 ? ICE_PROT_ETYPE_OL :
> ICE_PROT_ETYPE_IL;
> > +		break;
> >  	case ICE_FLOW_FIELD_IDX_IPV4_SA:
> >  	case ICE_FLOW_FIELD_IDX_IPV4_DA:
> >  		prot_id = seg == 0 ? ICE_PROT_IPV4_OF_OR_S :
> ICE_PROT_IPV4_IL; @@
> > -380,6 +530,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct
> ice_flow_prof_params *params,
> >  		break;
> >  	case ICE_FLOW_FIELD_IDX_TCP_SRC_PORT:
> >  	case ICE_FLOW_FIELD_IDX_TCP_DST_PORT:
> > +	case ICE_FLOW_FIELD_IDX_TCP_FLAGS:
> >  		prot_id = ICE_PROT_TCP_IL;
> >  		break;
> >  	case ICE_FLOW_FIELD_IDX_UDP_SRC_PORT:
> > @@ -390,6 +541,19 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct
> ice_flow_prof_params *params,
> >  	case ICE_FLOW_FIELD_IDX_SCTP_DST_PORT:
> >  		prot_id = ICE_PROT_SCTP_IL;
> >  		break;
> > +	case ICE_FLOW_FIELD_IDX_ARP_SIP:
> > +	case ICE_FLOW_FIELD_IDX_ARP_DIP:
> > +	case ICE_FLOW_FIELD_IDX_ARP_SHA:
> > +	case ICE_FLOW_FIELD_IDX_ARP_DHA:
> > +	case ICE_FLOW_FIELD_IDX_ARP_OP:
> > +		prot_id = ICE_PROT_ARP_OF;
> > +		break;
> > +	case ICE_FLOW_FIELD_IDX_ICMP_TYPE:
> > +	case ICE_FLOW_FIELD_IDX_ICMP_CODE:
> > +		/* ICMP type and code share the same extraction seq. entry
> */
> > +		prot_id = (params->prof->segs[seg].hdrs &
> ICE_FLOW_SEG_HDR_IPV4) ?
> > +				ICE_PROT_ICMP_IL : ICE_PROT_ICMPV6_IL;
> > +		break;
> >  	case ICE_FLOW_FIELD_IDX_GRE_KEYID:
> >  		prot_id = ICE_PROT_GRE_OF;
> >  		break;
> > @@ -1158,6 +1322,9 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info
> *seg, u16 off, u8 len,
> >  	seg->raws_cnt++;
> >  }
> >
> > +#define ICE_FLOW_RSS_SEG_HDR_L2_MASKS \
> > +	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
> > +
> >  #define ICE_FLOW_RSS_SEG_HDR_L3_MASKS \
> >  	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
> >
> > @@ -1165,7 +1332,8 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info
> *seg, u16 off, u8 len,
> >  	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP |
> > ICE_FLOW_SEG_HDR_SCTP)
> >
> >  #define ICE_FLOW_RSS_SEG_HDR_VAL_MASKS \
> > -	(ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
> > +	(ICE_FLOW_RSS_SEG_HDR_L2_MASKS | \
> > +	 ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
> >  	 ICE_FLOW_RSS_SEG_HDR_L4_MASKS)
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h
> > b/drivers/net/ethernet/intel/ice/ice_flow.h
> > index 829f90b1e998..d92dcc791ef4 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.h
> > @@ -38,8 +38,12 @@
> >   */
> >  enum ice_flow_seg_hdr {
> >  	ICE_FLOW_SEG_HDR_NONE		= 0x00000000,
> > +	ICE_FLOW_SEG_HDR_ETH		= 0x00000001,
> > +	ICE_FLOW_SEG_HDR_VLAN		= 0x00000002,
> >  	ICE_FLOW_SEG_HDR_IPV4		= 0x00000004,
> >  	ICE_FLOW_SEG_HDR_IPV6		= 0x00000008,
> > +	ICE_FLOW_SEG_HDR_ARP		= 0x00000010,
> > +	ICE_FLOW_SEG_HDR_ICMP		= 0x00000020,
> >  	ICE_FLOW_SEG_HDR_TCP		= 0x00000040,
> >  	ICE_FLOW_SEG_HDR_UDP		= 0x00000080,
> >  	ICE_FLOW_SEG_HDR_SCTP		= 0x00000100,
> > @@ -47,6 +51,12 @@ enum ice_flow_seg_hdr {  };
> >
> >  enum ice_flow_field {
> > +	/* L2 */
> > +	ICE_FLOW_FIELD_IDX_ETH_DA,
> > +	ICE_FLOW_FIELD_IDX_ETH_SA,
> > +	ICE_FLOW_FIELD_IDX_S_VLAN,
> > +	ICE_FLOW_FIELD_IDX_C_VLAN,
> > +	ICE_FLOW_FIELD_IDX_ETH_TYPE,
> >  	/* L3 */
> >  	ICE_FLOW_FIELD_IDX_IPV4_SA,
> >  	ICE_FLOW_FIELD_IDX_IPV4_DA,
> > @@ -59,6 +69,16 @@ enum ice_flow_field {
> >  	ICE_FLOW_FIELD_IDX_UDP_DST_PORT,
> >  	ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT,
> >  	ICE_FLOW_FIELD_IDX_SCTP_DST_PORT,
> > +	ICE_FLOW_FIELD_IDX_TCP_FLAGS,
> > +	/* ARP */
> > +	ICE_FLOW_FIELD_IDX_ARP_SIP,
> > +	ICE_FLOW_FIELD_IDX_ARP_DIP,
> > +	ICE_FLOW_FIELD_IDX_ARP_SHA,
> > +	ICE_FLOW_FIELD_IDX_ARP_DHA,
> > +	ICE_FLOW_FIELD_IDX_ARP_OP,
> > +	/* ICMP */
> > +	ICE_FLOW_FIELD_IDX_ICMP_TYPE,
> > +	ICE_FLOW_FIELD_IDX_ICMP_CODE,
> >  	/* GRE */
> >  	ICE_FLOW_FIELD_IDX_GRE_KEYID,
> >  	/* The total number of enums must not exceed 64 */ diff --git
> > a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > index 7f4c1ec1eff2..fac5f15a692c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > @@ -13,6 +13,9 @@
> >  enum ice_prot_id {
> >  	ICE_PROT_ID_INVAL	= 0,
> >  	ICE_PROT_MAC_OF_OR_S	= 1,
> > +	ICE_PROT_MAC_IL		= 4,
> > +	ICE_PROT_ETYPE_OL	= 9,
> > +	ICE_PROT_ETYPE_IL	= 10,
> >  	ICE_PROT_IPV4_OF_OR_S	= 32,
> >  	ICE_PROT_IPV4_IL	= 33,
> >  	ICE_PROT_IPV6_OF_OR_S	= 40,
> > @@ -22,6 +25,9 @@ enum ice_prot_id {
> >  	ICE_PROT_UDP_IL_OR_S	= 53,
> >  	ICE_PROT_GRE_OF		= 64,
> >  	ICE_PROT_SCTP_IL	= 96,
> > +	ICE_PROT_ICMP_IL	= 98,
> > +	ICE_PROT_ICMPV6_IL	= 100,
> > +	ICE_PROT_ARP_OF		= 118,
> >  	ICE_PROT_META_ID	= 255, /* when offset == metadata */
> >  	ICE_PROT_INVALID	= 255  /* when offset ==
> ICE_FV_OFFSET_INVAL */
> >  };
> > --
> > 2.30.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
