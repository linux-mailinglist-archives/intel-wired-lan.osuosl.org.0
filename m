Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E9233E609
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 02:28:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F0D683C17;
	Wed, 17 Mar 2021 01:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PTfPWOr2BCQR; Wed, 17 Mar 2021 01:28:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 492AB834E1;
	Wed, 17 Mar 2021 01:28:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67E7B1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63B804307D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hjoXdw3COMqF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 01:28:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0A9241468
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:35 +0000 (UTC)
IronPort-SDR: 9wvANogo/RwKdDup0dgrQpAPxXK1MtZ4iWGD0rnfLEP5TltEoib27VD7CT1ZwzsUaZE98PmzOi
 O13FfCIyI0cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="176962999"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="176962999"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 18:28:35 -0700
IronPort-SDR: VwrKPnAeLBeOYC4mhzrqBLlqjv3SFrpqvKGkkZzCNEzFgZ8nUTdxaZ9oAGWUq2aHumzlNC3gUx
 sZAFn24Giu3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="433210558"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 16 Mar 2021 18:28:34 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 18:28:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYhGhW9DcBu1VUVTJeXOXNSKmD2zjF+NtM2wXUw++i3bY0CyYcQZA8aKuJPEnqDCCDLgQ9AuVeB2UjvnP2UFIbkYoS5tNditYgFTePZIRhN5MH4UT7yxvnzz6+1AKg+fU1uAeaP/UWll4GYjXbYJv8z6ItSeNDdwW/KTNLbdQe81kou7gf0Uj1rMK6JjccekeoBCivKQ62l4S0d1nk0pB+yMaNE3MOYEHi9KzVsXey5hdwacgvX2ZvlcwlhZpfr9drr/mX9eNiH1kKUVh7718mPaA+flZCo5vlPVxhsM4ZkST+ic/6a6AOHkoXFYABpMRlDIVQS1bMjioDy7Ypvpbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yjiqu5SO81hpIp04iloENS6DmnLiPrFEq35KyHsSjf4=;
 b=mSqINfNx7AC1vLBVGRKajYqBioT3SmvosAeu34omrlm29mn1XdEXzBX0/qfrIZ0HZp1OuuhASTEadhtRr1NiF0hdoyuUdbvaLqeDPkuIhUJBxJ/VirXE7y6Y1Yg4iPkUfsk8td2+SGapY4VxWOAZgj4oe0dpe2Gj4vrlcdIBk7690nltMfJmf2KBYwFlUfJBRJ5kOCc0aLAVRdl/A3G7QvgTkrxTyQZesP22pRWnSGaHKuBrdFyWM/apMvbz7ZiPwnJPnUleReGb4l9/E6JkMxlvlSaDm6yKcJ7XjOvwwoRuD+X/SYXpBJ+XS4s+2lmRe7qHNaASSmaBT/B+If4VBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yjiqu5SO81hpIp04iloENS6DmnLiPrFEq35KyHsSjf4=;
 b=gn3CEu69KvsdYjj+l/8c6eWVpGO/BHR2At8LvVOedta3dxJ7SBoFJLjppzfhVmdaFcdUjzQWgOilC3PQF9+/BEuzMk1rescM8CGIXhHkd69SWlOjsjjGZqpngDW44bnMP1a5m89w0GwwZnIxcgimewG8Q7nxbozRovBkH1nHIrk=
Received: from SN6PR11MB3101.namprd11.prod.outlook.com (2603:10b6:805:d8::23)
 by SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.30; Wed, 17 Mar
 2021 01:28:32 +0000
Received: from SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656]) by SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656%4]) with mapi id 15.20.3933.032; Wed, 17 Mar 2021
 01:28:32 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 18/18] iavf: Enable flex-bytes support
Thread-Index: AQHXFJQD8FiGwqZ41kiJb7Xsv8J3KqqG2puwgACV3cA=
Date: Wed, 17 Mar 2021 01:28:32 +0000
Message-ID: <SN6PR11MB3101CE811DBD49B748300E23D96A9@SN6PR11MB3101.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-19-haiyue.wang@intel.com>
 <BN8PR11MB3795A5F55D3DA1581C7D46F1F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795A5F55D3DA1581C7D46F1F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae0f5bf8-c5b1-4bc4-e827-08d8e8e3fa06
x-ms-traffictypediagnostic: SN6PR11MB2640:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB264077B6DB29359D5964DC3BD96A9@SN6PR11MB2640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r8TjJMcAPvEo/Z33NcbH8tjypWCU5AfTxXgNmwUpf+j6LWxwW2BvF6N6aEnkc568AZLAijSEwQmo1BqZgdfXrOXyoQYWxFatGQy5x5N1uztf4bv9FRTidXRmMsttt7uxtPjD+xP1Dn9QnvXdoIkAOq+IvzrCCkwywLneYany2jwFdSGIRVCjd57Y+Tlsl9U0L+Z6gz/OEhbwcIAvGxM92YsLDlJlJNW/hSSxTDZ3NDefQSGRLAgdNFFa7t91c35sZ+Ibpi6yrIqCz/f6mbc8uc1KK0nAc4UeDdyMOvyEJQG1LUSNPmpM6pqKKDJjCxGwe7aAe9gYYY4Pr8XZjl68WqmgBeMinMHBbSmpgi6m4BrFQ5EK/VM1poqfo2SduaHVS+/PuGmOMguVFHI7DqpI3bStniCzVR0yUNGPjLwQPq8ZTgRuUCsYdbmAj8og2XB/NB9NmoRFICB130Yj/SUJxmFqBJMfLTRNiHhky9/DiITYJ1MaodxREGaqQ0vdPtsq7Jlnv+jOK54y/hqN3I0PVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3101.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(39860400002)(376002)(346002)(5660300002)(6506007)(66556008)(83380400001)(76116006)(316002)(26005)(86362001)(9686003)(4326008)(107886003)(53546011)(55016002)(71200400001)(64756008)(66446008)(8936002)(33656002)(66946007)(54906003)(478600001)(7696005)(110136005)(186003)(2906002)(8676002)(66476007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?D6Qw9d7jsZVrce4mpJ1Dn77hAFHAsQPfAeN8MRf5UzLPDP4EfSvzAN7N5k8q?=
 =?us-ascii?Q?QoRzXjXuM+WvygdDZZ28jvl9nXQuVBan1vmGgl9geknzD6wC+9NZmPbERLfk?=
 =?us-ascii?Q?AfzYdhuW4ltb7oppVc67dvg9lq87bhGkdCqG7p8Ew+xtaxK0GYJGRYKHSURD?=
 =?us-ascii?Q?I+UsxtTShBq+Y99nXI6Vl6N2KBRu/FXOHn60hVUeOGNqxGWMNl4OKBRB1kVn?=
 =?us-ascii?Q?slQaRU+vKIEz5936jbtO9v2w7RN/Inxy7uqOLOW340r0jfm/dOv4ODYu2Jfv?=
 =?us-ascii?Q?77jnnysem0UZehSNS5eIrs/HnyY+TZPn88RHaaHbJGSTHnzC39cr690JfqTR?=
 =?us-ascii?Q?SSdbzCTzNcEc5NM97nhRV6/Y5O8zZZBSrhFI8kz7stIl78dOWKcYiQi2w7Qb?=
 =?us-ascii?Q?CsG3m8sc5oIWkivp4pqq1ApDZqvmwnBEiXkY3DqkxbidwkhUFMP8kX2Svik1?=
 =?us-ascii?Q?xbnYKquPicPjxA4tFvzH0XewUrcql5siTrZuf/ykQifsyUsEFR0q7W/6re0j?=
 =?us-ascii?Q?pVPkJIo8Bs/EtS1U/RksKfI7soC2mMrZy1h1rjpIv/MxH3YjEmBsHPDhu4BO?=
 =?us-ascii?Q?1lISrBN9tUvcJIMQXvx+LvZwoQEIjfIioaBiQ9GHPwx9mHL6WzfXtMVtIAcY?=
 =?us-ascii?Q?4ppQixfJKXoAl2Gk4LKcZZegV13BRcB5fsIcIRWPk7dk6S/FTbYX/FEycj9g?=
 =?us-ascii?Q?4b5EIVDXe2u81BoCb08vr+XQKfzbRjSpmJtPm29mHZRsvMTOM+1qspdShAfc?=
 =?us-ascii?Q?IqsZYhq5NTlFQA4C5K3JnTk0+BjrKr+TufzLmnVtHzcYTH2i0bbwZJvZ4gVH?=
 =?us-ascii?Q?NlfMUUFjKTCbAXHHE9WqQzzdzRAPZvOMMIYEW5pbbPXeKkQ63bOvm7VgpsGm?=
 =?us-ascii?Q?iLOPxc+SMKAN6rwDdJPlyJOUFzHxKSvvIcydIm39Of4AhOyFrVup1PBBjsjQ?=
 =?us-ascii?Q?5T+uNXmNmX/vawRqShfe5leeRuzMwpn7lm8c86EdXVbXFtlUG4SL2OQ+o25o?=
 =?us-ascii?Q?1DMQ4CN6NH2P9UEIPsvCZY5+CMudAZi+FAdbI5zol2ea+99/VSxJLFJAAdB5?=
 =?us-ascii?Q?RsqgX+fnKRMlwXGj+pf3hBorgYLlwgp0aGg1g3oqG+nsZcSxtJ9yCF976E/k?=
 =?us-ascii?Q?Je/XuWIVafsFsWLGR2IXjkiF2NToqyGPJ4N7cptCSAlC75emXD6Wpky8py58?=
 =?us-ascii?Q?EAjQp08IDOq71bWbF0leQKoggBlNJEEuOzXwIijHvMae/0yXsQ1d01ziWABb?=
 =?us-ascii?Q?zj2wiUvHKB4VdxhL4KxeTxfNaN9t4anxY6lkeMQrqcnaH5jiX1fZ4LDnMMmI?=
 =?us-ascii?Q?3oahmvAjfr29PWj4e5B29qPf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3101.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae0f5bf8-c5b1-4bc4-e827-08d8e8e3fa06
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 01:28:32.1293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctbjglhZ4d2+q2WfFAVcvbgDcU8nlZkhFRIKndzSzdhlN/VkhmlDpk/fSOeCtmbbHlPyjoelInmhjOtx85NTCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 18/18] iavf: Enable flex-bytes
 support
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
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 17, 2021 0:32
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Chen, BoX C <box.c.chen@intel.com>
> Subject: RE: [Patch v5 18/18] iavf: Enable flex-bytes support
> 
> > -----Original Message-----
> > From: Wang, Haiyue <haiyue.wang@intel.com>
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> > Subject: [Patch v5 18/18] iavf: Enable flex-bytes support
> >
> > Flex-bytes allows for packet matching based on an offset and value.
> > This is supported via the ethtool user-def option.
> >
> > The user-def 0xAAAABBBBCCCCDDDD: BBBB is the 2 byte pattern while
> AAAA
> > corresponds to its offset in the packet. Similarly DDDD is the 2 byte
> > pattern with CCCC being the corresponding offset. The offset ranges
> > from
> > 0x0 to 0x1F7 (up to 504 bytes into the packet). The offset starts from
> > the beginning of the packet.
> >
> > This feature can be used to allow customers to set flow director rules
> > for protocols headers that are beyond standard ones supported by
> > ethtool (e.g. PFCP or GTP-U).
> >
> > Like for matching GTP-U's TEID value 0x10203040:
> > ethtool -N ens787f0v0 flow-type udp4 dst-port 2152 \ user-def
> > 0x002e102000303040 action 13
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  93 ++++++++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 217 +++++++++++++++++-
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  19 ++
> >  3 files changed, 327 insertions(+), 2 deletions(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
