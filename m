Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C8E33AD20
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:13:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A2D48309A;
	Mon, 15 Mar 2021 08:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UagRsLamopGy; Mon, 15 Mar 2021 08:13:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 854C78303C;
	Mon, 15 Mar 2021 08:13:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3ED41BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C21E16F4C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYXHNyjz9vtE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:13:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3C56606CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:13:31 +0000 (UTC)
IronPort-SDR: dzsYRSiLWBZ7NL38yOGD94vWiBDaK1KMKSk8QNV4+I9vokrGNjv2eTMPpK9nXknXb4+E/CfIe/
 /MdsXfhNh8gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176182468"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176182468"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:13:27 -0700
IronPort-SDR: XnzYbOyK1cQZqqltDAhXhZsgKmCnGPzs2foLri8BDDS+5h6dMU+XQH3tBodijfzu7BN+IrfaPF
 Aw1Wg5TkhZzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="410573277"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 15 Mar 2021 01:13:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:13:27 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:13:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:13:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:13:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JdRcpXX1szI7Q75V8kk6pbHEKz2ZemXdIJAZRMnbNoNDF45urTsglvJW6Y1waACiteP7pJsd2IijfF6QOtZx+y7B7WU7b/m6ugBlITdJbqlltrXz7rAKai40udOSH7JbpmqUkEVRy3E3CUFUzdGainQOUZiZSUHht992bdkpWrIb07N34SSX2HnL3+nsruotABPpJyDbJs7puEnJemSjOlmHKbvUMocOyg3LFv0PWSt9uqY0MZsdDtrThZArJnnFCWlZ76NlyOZEqbv8i5H9z2QQblCdh1FhJbKtYd23eYCwfcBCPOV4Y7wqOfBBiBIghD76RbwA6ugdVXL+Ze/KIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3e4aoRzes1YROl3qrWf9whK9dU2+txJZSobst1P5i9I=;
 b=T3cSUAVfZuqpDcIA7pflJhHpE2HorSG6tChVj1W8GTjf6eiJ8lldl3xRh3Zos3DqTv/6Ganq2nTA29+TDuTpMj8zTu3lSmJ4Memd1c5uzZzX7ZE+QfirEZmikgKTne9vwrviQjidX4lm6jhzoJaSLJLRUiiKN/r66nVUrYcF/a5QkZRqsXHQoVNMHhkWoVa3jLEu8Slv8CUTCkkWXnyB9ZAOOl1A91MaUc9OucxFMrMNNFzVVusVQb1Xuymtf66XV7b1nC6NTktaAxWA9GNpjpJzXLVFQAQyVvsJwoHz5gZhKF5iPqavPZihh7Xd10eR/kgxDoJ+T0eQ+bQ7f0IVTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3e4aoRzes1YROl3qrWf9whK9dU2+txJZSobst1P5i9I=;
 b=btG2tAAxG+48lt22YgWvZGu0Z7cw2BPlNMTKlx8qi/kCGziq+LhGCQ6iACxA64RpZ9oSITDnnUydA4DcTe+XEQ5dr28qJTPl4lLMz6/IkPt6qKQGBXMrgPweMizkSOfNfDospuzPW8+oP1Fq2N9gbS7pFh4HB9uxMGnJ4Sw/nFA=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM5PR11MB1884.namprd11.prod.outlook.com (2603:10b6:3:112::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:13:23 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:13:23 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 01/18] ice: Add more basic protocol
 support for flow filter
Thread-Index: AQHXFJQIWL7eR9OFcUihYcOkoSYe6KqEtP5wgAAHpzA=
Date: Mon, 15 Mar 2021 08:13:23 +0000
Message-ID: <DM6PR11MB309966558985FE9AD8D27128D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 802d3be2-d118-4717-7340-08d8e78a341a
x-ms-traffictypediagnostic: DM5PR11MB1884:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1884F91E4726AC4601D30089D96C9@DM5PR11MB1884.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: brFWolcsRo5qPHGNXjFGLJnNguPNrFDhEabuQQzeL7d5JTnt+2VwBkayYkWueYKdvAhtTRp0VNc0DnozF70cMe+RBB2U1fpYaU8/69JHTj7eBZEJoNjmw51h7v0seX70EVAG9WX17BuKd8N/pc/oSjfodbT6ebLQRN+czbnGWEDyE7AJ8vkC0XG0Qmtwn3DPM1DDjKl0OS8894oWZLTyKHG5gCt+u8X7Xi2YV22EUhiPYXmTCwaXKSJ6t+6ijV8snpWLafdC85ZGLjPbMR3gsRBeUDgKrH43W/3vAzJk1s/YwL3zye1Js7qzp0AgQF3aKYwFzd5CUogJvoIBaAVGcNCDccf7TREKKhLyiUOaJtMPF30pBpmQ2IkrpbGDFyi8ypCQw4UWkSF56f8cbHiMBRzbvye1dCLZAfChQM5DgGon9o9ZLciVJ2Coz66erBgZIl2wJ8gTuenVeCG4fuPBh4oTqtwJ73CIM82gB+QxcSJSn3TRdqrDcW49e+WnQMshLIBpAEDiOyjmyqDVs4Fv1VZ4F2MAEix3243jgMiHFRRDzY09vXqt2ISSXQs9GBdjvTcWiyT2G+IldToCl3rbEKvlUmvRCSTKphFVw41Tzu7MyAfylM8dpH3AjV6nPmD2D402pQegHr1674mMIik3iA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(396003)(376002)(39860400002)(136003)(6506007)(53546011)(30864003)(316002)(54906003)(26005)(76116006)(52536014)(64756008)(110136005)(66476007)(66556008)(7696005)(66946007)(66446008)(966005)(5660300002)(8676002)(83380400001)(8936002)(4326008)(186003)(86362001)(2906002)(55016002)(71200400001)(107886003)(478600001)(33656002)(9686003)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?AH48XgauZrIciiArHH76bsgMNCF1QJK4XEaMszebwxOYH4/zTSfs2f8bJ8KU?=
 =?us-ascii?Q?UoFQsrPTuTjkgjKFHpDIvO2M7oXtp//XxQVgx8ZlEgtdlK6+6Bdpoiv3SyMb?=
 =?us-ascii?Q?mp7zd1OdYnqLVLPOBz4WxSqljoMzNszTdtVkmaWkHOfW3PBvMe+9X9G8to1f?=
 =?us-ascii?Q?FjzPtUXxJFAUfKM9rGUB3CREUJyCXzPfUclyLif5j9fm1rdh03xppzubaExO?=
 =?us-ascii?Q?XVwDamB2RP5lIjoXNI2B0nVN6esoz5G955I/6pLYr2VZkE9y7/pLRLnjZt4s?=
 =?us-ascii?Q?EpOuGujtXe4CWDY1/AoSDzYsDkjkWYvI/kmZ1YwXyi/Ham3qIYne2g/yr1L0?=
 =?us-ascii?Q?Qk9i6qIlBVp7iEBRX8J7fYOMqpFdiyReTBVgrLevdc+yGpWzJUeMQBMgAOaa?=
 =?us-ascii?Q?3gVh6onD9sgTJYFNi68dvR3yohxOvnxZIqiA7oZMes7Ew7UWKmhPVF2AuwxV?=
 =?us-ascii?Q?xNz6z8OmOSxx5WXLo+Kv9XK/ll/BZFi6fkpevEpmFNdUbSR61c9c9/QxiQ0w?=
 =?us-ascii?Q?xyDn9qA5Og96JaVe9Yj20Iw56w/3W4mYzbx32iJoZ9TxaCJ11+Oj+I0Adq7S?=
 =?us-ascii?Q?Twq/qM4O2vweEnYYEEg4sUJHLDlE7LlkL2rFyDoJgKYz2WH1hVTXQE+a4/10?=
 =?us-ascii?Q?iHRg3NPpO/k8/cnOa1l2i8X8MpUmfwjGOcDxeBlD2O2oXCslwUSWmUrWpkRk?=
 =?us-ascii?Q?oz2RwwRqO41ojQY8AviP4TEGSgE5QbMnxHwdLR7YQVEB1KT/s1a5C3m3ZS3t?=
 =?us-ascii?Q?qIv5u98r4hkedzHoIXDXN1hYIF/1cOTc+V5ze5PSFb78NZRM77lI/kxVQTHi?=
 =?us-ascii?Q?MbKUG1/LAtYeYtMI1BOZXM0bcgGhG/NfcJkuFKN2zRtZGNPh6sEaZPTUKOgE?=
 =?us-ascii?Q?q+jlPsHVRwbmkbnwxRx9RkHU4VNKA6enqMBWijNig4M8gS9kJFo//o0gvn1l?=
 =?us-ascii?Q?KzqfRrBV6Rj4obCrWgaYVL9i0guPvBHtSFlRny9kfp6nrP8tTjts6epqKujt?=
 =?us-ascii?Q?sE3WS9N+gufqU+N1dcDsVQ9w3CKdBAzl26x8IVZB1gyUy1pU7r8EPkFo1idl?=
 =?us-ascii?Q?jE0rnCuJAy/aFfhwGdXcXIpj2oHo6+AKfkkFMvATX47VcrmLlnMzaEHEZKNV?=
 =?us-ascii?Q?jxjKWmva7MRdaMRYoyYHAqqhYNBy9yrDaieNWd1mt8NtDbXtFBqpSvn83P4i?=
 =?us-ascii?Q?eYfuFpLOriEoCFfHqMacn4wdiQMZu8vldcOslz2G4ik8bi6gVml77hMyGu24?=
 =?us-ascii?Q?H0to1xdOyBb//S92KLI8WD+XmzJrDa6Katm7PQgo+TObHa28ms94EadTuoDF?=
 =?us-ascii?Q?IgZdtQC5GY4OofChA3wndbKY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 802d3be2-d118-4717-7340-08d8e78a341a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:13:23.7317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3rN3PPePavgbWcRvp1lv2UDOF61n59f7SKAtFQ8f22zyMTmoOSlPwyLLhDkVjmHDShJ0aUvsbIFuSaKQv4iJ6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1884
X-OriginatorOrg: intel.com
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

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

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
