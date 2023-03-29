Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F77E6CD34C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 09:34:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DF1261053;
	Wed, 29 Mar 2023 07:34:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DF1261053
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680075276;
	bh=SEyzihHP+V2CpIBdqxk0A1ya/TKVRxPgWEClWOOh+PY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=urbmLlJ/5N7CPcp6FREJ7XNbD+70bN/X88teV5ghNApmvgiDn9zea6gEtMtxILcoT
	 4qDa5qsSXeK3oz/tKzZ13T8R3F5GIvywhqOQdi0yYJGJYyLZ3CZ8Ips3sccN3GOqfs
	 9memkv9I0wK/ccmEMoWtICBHXuEtYPYWorUXZ4RKZiFwZUU1uv1iERyUv0RbrIzA+C
	 CG+nOvnF+iFmmDek95+61LnmAdcc83ogwvMwH35njzuQ3Vl2MjDI+HXR4f4Bns4WeU
	 7Z4KPuC9uI7wUMwxGW4fX2IPZUj77m2xYBp3lZETiItHrx+A4DNZFzDb8znyogvOug
	 A3KfJrc7pDqUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNvtX_uVZgTx; Wed, 29 Mar 2023 07:34:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58C0760F9B;
	Wed, 29 Mar 2023 07:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58C0760F9B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CC771BF475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 07:34:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38D4C8406D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 07:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38D4C8406D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mBUo0O7YBstz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 07:34:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9DBC84065
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9DBC84065
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 07:34:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="340825046"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="340825046"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 00:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="930199201"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="930199201"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 29 Mar 2023 00:34:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 00:34:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 00:34:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 00:34:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 00:34:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFpGaq3b74eIFb9Cc4nFdYnZd/+i+V/Oc5VDSmrO6UHQP1kHY0il7TAWY5BUnFrofSR8J1zxC99JuF0GH/wXAqy8tH3IXMuP6VTDjqx5Hn5gFRsRPFJTXR9UWTI89znzo5dyraWWeLdy2cwV/pIf85NfIy9fDJyN2tRjFpsKQSeWCp0ocZAReAe3w1JFnXE9Gv1EHPPjdp6ddCalKgfmuXxRhtzq7A0CGDCdI9tY7NRy3v1XTEhQDC2Bt7jvZOr6UkOVExvOwJt+m3UGRf3GX2D7TqThP2w8MMDOq068QPYhjjh9hE0mX2e245AEy48xy7L0d0KyvT9uQL4TDQ+CZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l9iBib7JIJRegON7Wezn06h/BnuVyP2R/aRC5TQid4k=;
 b=Rhc77+QCWK+tjgd+ZaYVOC2Qki1bXqWi7TLRsMyCQiFhI71odjmS3CHxm4bT0peXsx/dUJLaa+RnLIq3WVCJ89CM75JhOcCIdi8aVNxdTVaHvNY5PxNhFv2miYXadcMnY8lE2ME8o2orlvtpmyIHZ3kIMTgnggtJlgdtSuOX4acJQlgtu+3IirFIC/+J5nqdOWcPwmfm1koLP71EmTc0gCfATGX/lwMkCNm2f+IxyHzDR5PlSBYghunF5lMH6r7bOuxC10E0tiZs/bU3mxJWLrdsLCq/IuZ8d/zkwrSEr7Pnuz4ZniqKmcizEn6yTxBZO0UPzT1PV+DUz0eRS2l6wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA1PR11MB5924.namprd11.prod.outlook.com (2603:10b6:806:23b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.35; Wed, 29 Mar
 2023 07:34:11 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6222.033; Wed, 29 Mar 2023
 07:34:10 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net, v2] ice: fix wrong fallback logic
 for FDIR
Thread-Index: AQHZXNHAt3UBtzbom0eti7PSJXUi468RZ+dg
Date: Wed, 29 Mar 2023 07:34:10 +0000
Message-ID: <BL0PR11MB3521440A9728C6C6EDE40D258F899@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230321065658.699675-1-simei.su@intel.com>
 <20230322022415.724689-1-simei.su@intel.com>
In-Reply-To: <20230322022415.724689-1-simei.su@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA1PR11MB5924:EE_
x-ms-office365-filtering-correlation-id: 8c3815b0-c239-4811-9a60-08db3027fca5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9+xNi7XEBTTHPz/9YUAj5KO1402DR8btXxG7BANSQheIRN960x9HFB0HmEwG9W3Dupo3vqcqUzYpMjqP1kx8Quq9Lw61nCayrbPViB2SuDikDEmIxoJ/1Ch6DaU9Kif2s1k8H0Q+KNAA7sx1S9pTnY99PtPrnHs91yR/XS/2tH/FTHv7i5aIq4L6ifIxkF3ux7BzVYqe9xOPPJN4i0zcS8bFzRZHBFD7RgwNsgEZSqI3TRVyL7Zkb5RRNYH1xxDnQmG8JUaGe3AXm6fCzItJ2TR7YhFbtXRq/JXKbVPLF+ETodyzPDSuA0J1E8e4z7e1FFnk07lOfes6XYo8+2Tvp1hAuXWr5EzKvJkZ3o1FEfExXlVNYNX8SVLcQ8RhY9npv3m2dbbNP5WIK9TxuZQRLKYSHzN1s3xBTp5uTfq++yQn7lKsLIbvWLegPsIgdLOANeJpoE32Uq0Z2dllQyN4i4Hk7wNsAW6GjpWEkSxpQZdmsAcAg12KBwAFsl7zttjAeU0OjnV+eHGPpOjzKYR+2zYgHo73PmNZ3I6//mC7gd6VpLPL1JC1fB2BXfAvPPnyku4EnpmA0S3KBU9ex3F3AhR4Uvy/iLeVjUOJztSGTqPrF020H4T5mk0GBR/CDLMM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(136003)(366004)(346002)(451199021)(83380400001)(6506007)(9686003)(26005)(53546011)(86362001)(186003)(82960400001)(122000001)(38100700002)(38070700005)(41300700001)(8936002)(52536014)(5660300002)(71200400001)(478600001)(55016003)(33656002)(66946007)(76116006)(7696005)(6916009)(8676002)(66476007)(64756008)(66446008)(66556008)(316002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Ux9sRVHtmdDfgNfz7uM+mGZj2kU9mqpesKcAWZvvBcwJxPjQCRR0mPsRrw?=
 =?iso-8859-2?Q?lZFdTZD5HcSxE44kdn5n6za9wtLh5m1H8ONwGSsmcpJekDsMfYh1UkJ1WC?=
 =?iso-8859-2?Q?hqOQ+vVyX6jtpvcRy36E4qFds0wR632FvZi4E0BrRbvvqBNDRNVBLWat2q?=
 =?iso-8859-2?Q?axgrqfhFY+S7gFMzWB0QYzrBGBdmM0K45hsuIGIHK2wp0AuJ1nLzolQnzW?=
 =?iso-8859-2?Q?ER7t/89NUyASg0gy4dSNqB/xO7SqfkG6YMNdJtrv8sLXFfjFYDaIrhbFHk?=
 =?iso-8859-2?Q?42+jmmVJTMUQjJjd1NcXx5F0US4dfVfHEyOJPX8V7thdbePQEor3j5wseG?=
 =?iso-8859-2?Q?fquCH4jQXc9bk/Ea7X6acPepCbC/CG8YFagi4vRCNJmQr8UIQQmvosOQ03?=
 =?iso-8859-2?Q?mX064/whcxXvQAzZLdY2mokfkWHGFk8Wc36aC80eFHWrTN00wXRUC8L2s5?=
 =?iso-8859-2?Q?MiJrJOp8+nXEVqEZ1W8Klja/OEDshjhn7HEqmvJM7kySV8j3k7+2ESOu6o?=
 =?iso-8859-2?Q?QkrGeIx7aB1YvQZzpW9xu636+LGv6D46gzKQ8xtiQ8gB/ZvGlU4wKSEvB8?=
 =?iso-8859-2?Q?HjlvV0xWyCS5VT96hkMTKO4T+2fXXgbl0ul7QiNJINoxygQ8Zrz10XpJzs?=
 =?iso-8859-2?Q?ccrubuxM6O/XDIKqhfRgsfkUbHhgQJhbiprgMfdbjlEpVcHWDX6TL4lcbL?=
 =?iso-8859-2?Q?bWXP8r237RQM0LESqqAubHP/tri5un56wM9pJaeOCxGHYilNcJVtnoZK+3?=
 =?iso-8859-2?Q?LH1BAvACAF+pe9yDQU9OoTlno48Qt87uh7XC3nm03qFZBseInrvtuuun2Z?=
 =?iso-8859-2?Q?6AefqDLJcYkA4R4WBwZJxXd8cY8HPaWjJDg0OU5TrA2GPEi5Sc6H09FCno?=
 =?iso-8859-2?Q?1ve0qPD6aey342vT7Qw4nhgjQnA9SstfguZmM1i5ok6hhieuxvy4V+2h6x?=
 =?iso-8859-2?Q?4j8JlBGDULYxactvtgUkTdHqUotXGgnpSmzai6jN0Bc52BlEfXzt12xoJP?=
 =?iso-8859-2?Q?aM5aNFdwjPs5IV6YYjK2rMfdSZAHAXDXdFfDPjtWsNj0m0SH17cj3I9I0R?=
 =?iso-8859-2?Q?anIY4YAVByDcR93Ry5kCOlNrAECukA3SVbk77WgUWjFT5SOZtc15+ThS5+?=
 =?iso-8859-2?Q?VO7ugfyoW7j/SRd16ZMESaNt4yMrrcn247N060xRHKxua/LxOrpt8ZExZ7?=
 =?iso-8859-2?Q?6HjANn1JHW3jdoJjt+ytnkS7yaABR1sITEDha/axJhREn+Us1S2nbX0J+3?=
 =?iso-8859-2?Q?bDjWWHEB+55soSQ5MgrbA4LeR7W68HLnWforMlxcGfTWKk9jfu0uFx8Mo6?=
 =?iso-8859-2?Q?bkDzTspwX0XVzTZXPs0dVDVoBA1LtjMwSth0utDTwRVH5taXQyjriQ3yH+?=
 =?iso-8859-2?Q?s06cwbnTLXhzUqbgaJew7/+gf4tnyiRXdVo/VRVW0pnABCD4/18rXQfNqe?=
 =?iso-8859-2?Q?gdtqX/Qwj8wnPQTlWCZZC3qjpQ8JREUSZmMHAa8HJ6QW7ArNXaBg5QaXSa?=
 =?iso-8859-2?Q?u8N/tQVtx1zBBcIXmGmWqPkpqnrYpD2KdpHaQY94S7MqCnS9qtzGqB4yEx?=
 =?iso-8859-2?Q?4ZnFwRwCV4ZGepvvEb6JhceHwsjBADZoGlYl6/66eTwgpxw6K5UIpUu8a9?=
 =?iso-8859-2?Q?qyhsRjWZa8YMq+j8q/Smp4CVbE0LKhppMap+eXZfOWtb/JUKKJ6l3POg?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c3815b0-c239-4811-9a60-08db3027fca5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2023 07:34:10.3601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1xQ9ZOPmkPZh5S/v84sXhDhJ9bZeOrsN+14liCwgNoRg9Dukolzuidwz3lJVHIfkv/vuQbe4ifHvyv+OEDmEcasYUyGF3MfZNiIHpkxrfMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5924
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680075269; x=1711611269;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=grgTP8m0w2VCmsUDIj+hYIrQdZ4sGJXh8f2B4EL4+tg=;
 b=RRUltvFVgIuLCsZp1fm6hXWBBZvXJrMAmkK2yFgy/3f9zYkzZnoar0q/
 SaQaa2AHY+DGHfkM3eyCpym25fTm3xpclSgkGSm3G0tSdBeBsd9LadwNQ
 7oZ3rohQDZA4q2TLvMfI0Ve1bHWpOf4Tu0l+S2sIIuPDoFANienchHEuE
 wkZ3XQZaIjl+5X+mvr+rLLJ45AEaDp6l7qWNCKyCj7tJrFzQhjzXolAow
 dStVNsTevuDjcucY+dBNQgZCWxNvolv7CSoxw+JWqlrw6OffBkwL9crv7
 kk/Ky+rdjq1hFg+kXWIXaDPuH0rJf89tBJ9G6JHehcbxUvPfaAZ7N74LZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RRUltvFV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net,
 v2] ice: fix wrong fallback logic for FDIR
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simei Su
> Sent: =B6roda, 22 marca 2023 03:24
> To: intel-wired-lan@lists.osuosl.org
> Cc: Su, Simei <simei.su@intel.com>
> Subject: [Intel-wired-lan] [PATCH net, v2] ice: fix wrong fallback logic =
for FDIR
> =

> When adding a FDIR filter, if ice_vc_fdir_set_irq_ctx returns failure, the
> inserted fdir entry will not be removed and if ice_vc_fdir_write_fltr ret=
urns
> failure, the fdir context info for irq handler will not be cleared which =
may lead
> to inconsistent or memory leak issue. This patch refines failure cases to
> resolve this issue.
> =

> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Simei Su <simei.su@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 60c9da4aac1d..c03e4a7ae80b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -1812,7 +1812,7 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
