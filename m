Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8ED6E0EE1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 15:36:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36DA34058B;
	Thu, 13 Apr 2023 13:36:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36DA34058B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681393005;
	bh=T/rndcfOGURs4N5Sp26dSZUlKuMorBcrtcRhmAJPu48=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iEAYsUt4l6+gbRrS1ckQpcPiTt7j8td7XtwXug+p8WIJfCxLmMTPhaJgO5TqGFhFD
	 hKL7GHmEQ9iiac7VckZigvfMN2XDl4OWtCyoHcda+WUHH0vyofG9kbYBFVUQx3YccV
	 BlHcdMr1JERpT5fIuqpX9vDxfNYO/zz5qkjgSz95aB/+MWq2AlKG3hx2yqlTRi6F97
	 NwxgBmfQsrRQMxSxW3qbKSBnN5ASzhC46wNb3Lucg3/MAID19A9U5BVHhS/sb6qdQR
	 AayXSmQBtWgNNNy0SXZnPM1hrYCB1yLEVG/VqDObFeaSaapeU6Q3OiJ4U12weZ8uEe
	 3odGPk+5cxUVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NcKZ2y5PTDoQ; Thu, 13 Apr 2023 13:36:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38CD940545;
	Thu, 13 Apr 2023 13:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38CD940545
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE4241C3DAC
 for <intel-wired-lan@osuosl.org>; Thu, 13 Apr 2023 13:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90F2160BE3
 for <intel-wired-lan@osuosl.org>; Thu, 13 Apr 2023 13:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90F2160BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UYLGh-cnzbk1 for <intel-wired-lan@osuosl.org>;
 Thu, 13 Apr 2023 13:36:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C09360B55
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C09360B55
 for <intel-wired-lan@osuosl.org>; Thu, 13 Apr 2023 13:36:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="430468836"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; 
 d="scan'208,217";a="430468836"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 06:36:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="800812261"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; 
 d="scan'208,217";a="800812261"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2023 06:36:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 06:36:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 06:36:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 06:36:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 06:36:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dr+hUbOd721QFbC7AFSgrzBZ8lrLTWPYtqhkchROtbpc17Bw5cXYC1iwEK+ZPqrz8ku2tMzJnc9Mj/32d8GSE+Ow9Eg9lpLgxlXWhOjq9FWqydylwgyMfYlo2ilOD7Pxi7uG7/HlXAvwFaeYkXrzCkJimnx+Rt6QQsGEd1ajQDwq7/HkZox0fwkwJsBYIbz8mT/EawLkYT3acDDJjd2X/a+SFYRudrTsdZSof9YbqqdbmaINqE3tLm1XDf5GfLwUDWWDpxWhxPhWtOdwesVYyvFbrvcnOqbdw5zrUA4NDaMw2kgjKFPgvQbwNCZgFCDFGC2PMLD8Fo91eNcNWhHzNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=le4e5n7k1/jI05jlWLb+Y+bU/KjpnUlxLMXcgLCoV4c=;
 b=F21p66TSZagu/LraE2c4MIcTtEhRGU3uIG0jAEiyoJF3izVFiBhUEpaOxTuX90RodIe2ca5sJ7XlyRtPnpMPi/Yc0/HtwByPZgA+f5EJ8+vZzsYTqmS2ygPRq6AQ8uKXGitvfgr1AHV6MtdMVlRTvtViPGI9ULB/GNcSe8xZUTHl8ucoqIQ32BE13pOGVAAHz1Pxn8BnZo1rktE0j8MC5X2llB7GLXlUtmJBVlg7sgtIbZrkRzhFLvPYBDrVjtodrPqDl745ePYgdvIV0LG2uzSphDkeJ44VrGsatDk2IAPJLsUheG4XrIyE4V/4wrvDTtNCmQ6/LDZ9yrEpFsvOtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 BL3PR11MB6340.namprd11.prod.outlook.com (2603:10b6:208:3b4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 13:36:30 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8%4]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 13:36:29 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
Thread-Index: AQHZbURL//7N1kf7H06LoNzMTKXBn68oMj6AgAEG/WA=
Date: Thu, 13 Apr 2023 13:36:29 +0000
Message-ID: <DM6PR11MB46578A43EF737F2316D7DD259B989@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
 <22a6ab36-2efb-eccf-b4b0-333c50515183@intel.com>
In-Reply-To: <22a6ab36-2efb-eccf-b4b0-333c50515183@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|BL3PR11MB6340:EE_
x-ms-office365-filtering-correlation-id: a49d3e5d-f40e-4fa2-7ee0-08db3c241644
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NDDtIpg/PlCVYxGFZOvr2pkfK35eHTfUO3qYnFtaePsqIsWLZCy8lq2Q76YZGyEuRLNva6SpkSGapVbyuXpSscj4h6tQZJNXccY1CfdCsc/ZR6FTMBn9GVyvAXfmwRi5wns+ZDxjPJfoLfSkHZhj4gqgmjhrau9haC4WnULyjsXgBrCCtMBkqv5Le3Gh/JM7sh17KyN4IiuvdRyy4cM/4DviLEzPvx4MwE2dT13rme6i15yBtRNkptZpxkX2YbWT75e2SsI3DByH5jEy1caoU0knucAsxU+J4rdtbRSd1IJf8wC59RHJuI/TJn4Ec7hdM2rmrXJGg2ID+g6CoIgb/coLB2vrq47SSrpTQTi/Snmx4RnO0Fnq6rdDORPcm0S/w6PpxZ5BR5v2ik3LEHa0MmdPthD0EbmLXGa48vOQ8uEJiUjmzyyBb5q3Vb1eNxbM+XCNjSkcib2BK+EN4vpPrTCfF2KzMtTxAOgpsswHNzS7ZU8GaYF5AWegD3yShaMvI1+LSYoB+i7jupEGaf1P2hKli1fqccmqwIoNLbKRExm9xLLjsi4xvMQMQDTnADM/JEABBG7J/UFQ/vftNOnE9mxebAOucqdaZGT1NoiPGYM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199021)(316002)(478600001)(110136005)(82960400001)(122000001)(7696005)(71200400001)(86362001)(9686003)(6506007)(26005)(64756008)(76116006)(66476007)(66446008)(66946007)(66556008)(186003)(8936002)(41300700001)(8676002)(52536014)(5660300002)(55016003)(2906002)(83380400001)(38070700005)(33656002)(38100700002)(166002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vQI8wuvoEe9rX6bpz97WVC7mwuuUcZ1E6feTiDJE+r2csZHEXjFA5aqj8s+t?=
 =?us-ascii?Q?vWuSdFvzb6IeN8zmYQIBl17U1gIkhtl61uIaMtIMzb0eNVzgdLMV6cBgxaMr?=
 =?us-ascii?Q?cEvFmZmlvy7SDAooqRVoCTXd2TcihriMRkiCj1uzgkyBVdCjsfVDpni49DBE?=
 =?us-ascii?Q?BGz9blgnNpLVIjued6NUTlxeL/9jemAK7hO6sN7+WYBHey4jId1wYCaJXM3a?=
 =?us-ascii?Q?QPJ2UxWaBk9ClEmqxLNsrNa7JC6MRZ/DIpH0/hfpqa+ki+KAOqgKchn8iSh5?=
 =?us-ascii?Q?aYsO5rejSTYp6nM60KQF1rGCd5QYi3N9r3osoxMwIRHJRCZArixvmOmF4QA/?=
 =?us-ascii?Q?nB0oZ7zC59hZoIT22masETKtGrwuwchvcgSq/VC1aQnMJ6/eH3Q9+4B3u6x5?=
 =?us-ascii?Q?RukgJeYsRhbcjpgbsFuyRuQk9EOFSbiI6xvNUbzcWs5XEY1iQU/UE4Iqeich?=
 =?us-ascii?Q?Utti9oHr4os0Aagcq+5ahhcu5GcFoMj2O7VACOETh7hYPaw8wMh5ZKvSmUYC?=
 =?us-ascii?Q?xjjXEj0PAuyxpXiPC23Et6WDNgupq41a8Lw8Piu89JW5XPrGi53luaN4gAY5?=
 =?us-ascii?Q?Dun6yG2xFmglm7Iy7f/2dPkbbRxjtSuZ/TUAWqJCd8MfhF7r3yRf6iBg2wJS?=
 =?us-ascii?Q?WukwdO5RawHVSngiLqZh//WvVxa1/3afoxkREoM7nh6BgQjfjL9yPJsQ+lIA?=
 =?us-ascii?Q?RVRH77Wgp0G9qZhW99eEDkfExWXfCm1PnBzjHB4p5cW6kZZVKUldCwZIYh7/?=
 =?us-ascii?Q?mAltGFMFGm3f/lyxQuJ/TLVVn9NV6g6lbedQLhq1x2UOvhzAA0qanHc5GcHE?=
 =?us-ascii?Q?9l/vDg+6V3SF8ANOOPDkq4l3kCByCDfy0cq11jkyCCJQHa0YRF1h+c33/lJp?=
 =?us-ascii?Q?6TSCbbWtUdJANaR38bK+xd1hxKfYjskUD+AdZBaLr89cN2xF+qvJM2fguO9y?=
 =?us-ascii?Q?IakybqRwcXxG8Vhm757H2VG8yiiB32bnOzXi3Msu84NEbsfbq+bjtDCfZHh8?=
 =?us-ascii?Q?IVObnh639ck22BSQFYxnV5KWhbQ/R46McBJgYrxXm9i2Zi8qb7VHRcrORNEp?=
 =?us-ascii?Q?ujryWYkdKoynghjCr8Q/t4uqzcx6YxjMknd7vXY5kWYoDSveUsCVXJPeE90S?=
 =?us-ascii?Q?jIdfmWTdYxUGspM535WXGUJg/aOju/avgIQ436r5XucS+5RN+X3FM/hR0X4w?=
 =?us-ascii?Q?4A2Y0iYw7bv78HFIF4zVEvW+qKs48z+6b6Mw2N4Eg1+72FEdKnsyeJ8rAD2f?=
 =?us-ascii?Q?ExOTUofddCyoSkhnm5l7vt7CmYMMaMiFL7QWWK6AthoQk2xHhfLo2r/KgF+s?=
 =?us-ascii?Q?qPhie6Xcmig6QSv24qj567p1FFTGHpkHPCK6/iy7RzgwHxoBOQEZ4MnyANwN?=
 =?us-ascii?Q?9V84T5wNCI9INUQhzUnnZCEeND0/t+CnO+umAOyK9M5jkvMBApUG0Uzf9PSd?=
 =?us-ascii?Q?/eOO1oxiivAmYEQfaZMM8Ru++2WP6xKRKCwLEK4cC0wjR39g8iZ2xhSmi7LE?=
 =?us-ascii?Q?Q9UYRWYFsViP3nz32G1dlPUjlMjnb4Iti5nmaIkzCTZDsFIRuAg5uMbAVxcI?=
 =?us-ascii?Q?KOLhHZsIk7uTienSpIpT2N1t5sHs6CaN6tQTOfh7GYw5tBDOBv6K25HUeocD?=
 =?us-ascii?Q?hg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a49d3e5d-f40e-4fa2-7ee0-08db3c241644
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2023 13:36:29.2706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MpryAPCOMHJQe10XPa4siqUcHyeSFyKvxKWg1habxVhb1Qe3tMINplJFeKuakenpZiCTY9fcUd/wGujdqMyP+jOuD+9Bam6k3udiL1bGXzE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6340
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681392995; x=1712928995;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version;
 bh=jjo/xCBIQiVKHgOO8tr0HUpoiR0KlOMtwSGT/wbOUyU=;
 b=JOSooPV0ArxRukWyiYQeWMkqiaWdmARZOGwCMkaWj4m/jTy2ESeciodd
 b1j6ZClAkH3zTEQRqfQ0TRII0vZLi465ywRYFYnT+P58z2QeUecmNqUWw
 mpa1Ql2qCSnNgc1gnzAiV8dHyWTgxEpSpcSQUGuF07C+5uFCvz43Py/Dp
 A36a8HZGXeMjnHb6xIFvCMQ2nxL6nnJ5lW6dftMG6hPehpx1IKMJR6L5R
 L6lkGfc4wUZRJyQ3JpPFiuwD5aVFakm1A73XtzbkfO9J5Vzuvzdk7BM08
 sjxi4xUd82Id+x8cAXtLgTyxKC/Yo8lQFIGJ0b5n64m/sFBUjRY7tSCmf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JOSooPV0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Content-Type: multipart/mixed; boundary="===============1415771241114432978=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1415771241114432978==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB46578A43EF737F2316D7DD259B989DM6PR11MB4657namp_"

--_000_DM6PR11MB46578A43EF737F2316D7DD259B989DM6PR11MB4657namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Intel-wired-lan intel-wired-lan-bounces@osuosl.org<mailto:intel-wire=
d-lan-bounces@osuosl.org> On Behalf Of
>Jacob Keller
>Sent: Wednesday, April 12, 2023 11:33 PM
>
>
>On 4/12/2023 6:38 AM, Arkadiusz Kubalewski wrote:
>> If Clock Generation Unit and dplls are present on NIC board user shall
>> know its details.
>> Provide the devlink info callback with a new:
>> - fixed type object `cgu.id` - hardware variant of onboard CGU
>> - running type object `fw.cgu` - CGU firmware version
>> - running type object `fw.cgu.build` - CGU configuration build version
>>
>> These information shall be known for debugging purposes.
>>
>> Test (on NIC board with CGU)
>> $ devlink dev info <bus_name>/<dev_name> | grep cgu
>>         cgu.id 8032
>>         fw.cgu 6021
>>         fw.cgu.build 0x1030001
>>
>> Test (on NIC board without CGU)
>> $ devlink dev info <bus_name>/<dev_name> | grep cgu -c
>> 0
>>
>> Signed-off-by: Arkadiusz Kubalewski arkadiusz.kubalewski@intel.com<mailt=
o:arkadiusz.kubalewski@intel.com>
>> ---
>>  Documentation/networking/devlink/ice.rst     | 14 +++++++++
>>  drivers/net/ethernet/intel/ice/ice_devlink.c | 30 ++++++++++++++++++++
>>  drivers/net/ethernet/intel/ice/ice_main.c    |  5 +++-
>>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 12 ++++----
>>  drivers/net/ethernet/intel/ice/ice_type.h    |  9 +++++-
>>  5 files changed, 62 insertions(+), 8 deletions(-)
>>
>> diff --git a/Documentation/networking/devlink/ice.rst
>>b/Documentation/networking/devlink/ice.rst
>> index 10f282c2117c..3a54421c503d 100644
>> --- a/Documentation/networking/devlink/ice.rst
>> +++ b/Documentation/networking/devlink/ice.rst
>> @@ -23,6 +23,11 @@ The ``ice`` driver reports the following versions
>>        - fixed
>>        - K65390-000
>>        - The Product Board Assembly (PBA) identifier of the board.
>> +    * - ``cgu.id``
>> +      - fixed
>> +      - 8032
>> +      - The Clock Generation Unit (CGU) hardware version identifier on =
the
>> +        board.
>>      * - ``fw.mgmt``
>>        - running
>>        - 2.1.7
>> @@ -89,6 +94,15 @@ The ``ice`` driver reports the following versions
>>        - running
>>        - 0xee16ced7
>>        - The first 4 bytes of the hash of the netlist module contents.
>> +    * - ``fw.cgu``
>> +      - running
>> +      - 6021
>> +      - Version of Clock Generation Unit (CGU) firmware.
>> +    * - ``fw.cgu.build``
>> +      - running
>> +      - 0x1030001
>> +      - Version of Clock Generation Unit (CGU) firmware configuration
>>build.
>> +
>>
>>  Flash Update
>>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> index bc44cc220818..06fe895739af 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> @@ -193,6 +193,33 @@ ice_info_pending_netlist_build(struct ice_pf
>>__always_unused *pf,
>>                           snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x",=
 netlist->hash);
>>  }
>>
>> +static void ice_info_cgu_id(struct ice_pf *pf, struct ice_info_ctx *ctx=
)
>> +{
>> +       if (ice_is_feature_supported(pf, ICE_F_CGU)) {
>> +                       struct ice_hw *hw =3D &pf->hw;
>> +
>> +                       snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->c=
gu.id);
>> +       }
>> +}
>> +
>> +static void ice_info_cgu_fw_version(struct ice_pf *pf, struct
>>ice_info_ctx *ctx)
>> +{
>> +       if (ice_is_feature_supported(pf, ICE_F_CGU)) {
>> +                       struct ice_hw *hw =3D &pf->hw;
>> +
>> +                       snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->c=
gu.fw_ver);
>> +       }
>> +}
>> +
>> +static void ice_info_cgu_fw_build(struct ice_pf *pf, struct ice_info_ct=
x
>>*ctx)
>> +{
>> +       if (ice_is_feature_supported(pf, ICE_F_CGU)) {
>> +                       struct ice_hw *hw =3D &pf->hw;
>> +
>> +                       snprintf(ctx->buf, sizeof(ctx->buf), "0x%x", hw-=
>cgu.cfg_ver);
>> +       }
>> +}
>> +
>
>Can the CGU values change while the driver is loaded? (i.e. after a
>firmware update? Does this come as part of the normal firmware block or
>is it something we have to update separately?

Yes, flashing CGU with external programmer could do so, although it is a co=
rner
case, it is possible.

>
>Perhaps we want to extract them as part of our preparatory work in the
>info get handler rather than reading from hw struct.

Do you mean to ask FW each time we got devlink request from userspace?
Well, this seems doable, but do we want to let userspace enquiry FW admin q=
ueue
without any protection? This smells a bit like a security D.o.S. possibilit=
y,
I would rather go with reacquiring this info on pf reset or something.
As I checked there is already a devlink command: .cmd =3D DEVLINK_CMD_RELOA=
D,
which reloads this info in ice right now (through ice_load(..)) and it requ=
ires
.flags =3D GENL_ADMIN_PERM, looks a bit safer.

>
>Either way, overall the driver code looks ok. I don't have strong
>opinions on the naming in devlink info, but I know other folks on the
>list do.
>

Yeah, hope we can get some answers here :)
Thank you!
Arkadiusz

>Reviewed-by: Jacob Keller jacob.e.keller@intel.com<mailto:jacob.e.keller@i=
ntel.com>
>
>>  #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter, NULL }
>>  #define running(key, getter) { ICE_VERSION_RUNNING, key, getter, NULL }
>>  #define stored(key, getter, fallback) { ICE_VERSION_STORED, key, getter=
,
>>fallback }
>> @@ -224,6 +251,7 @@ static const struct ice_devlink_version {
>>           void (*fallback)(struct ice_pf *pf, struct ice_info_ctx *ctx);
>>  } ice_devlink_versions[] =3D {
>>           fixed(DEVLINK_INFO_VERSION_GENERIC_BOARD_ID, ice_info_pba),
>> +       fixed("cgu.id", ice_info_cgu_id),
>>           running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt=
),
>>           running("fw.mgmt.api", ice_info_fw_api),
>>           running("fw.mgmt.build", ice_info_fw_build),
>> @@ -235,6 +263,8 @@ static const struct ice_devlink_version {
>>           running("fw.app.bundle_id", ice_info_ddp_pkg_bundle_id),
>>           combined("fw.netlist", ice_info_netlist_ver,
>>ice_info_pending_netlist_ver),
>>           combined("fw.netlist.build", ice_info_netlist_build,
>>ice_info_pending_netlist_build),
>> +       running("fw.cgu", ice_info_cgu_fw_version),
>> +       running("fw.cgu.build", ice_info_cgu_fw_build),
>>  };
>>
>>  /**
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
>>b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 6b28b95a7254..a3adc03bdd0a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -4822,8 +4822,11 @@ static void ice_init_features(struct ice_pf *pf)
>>                           ice_gnss_init(pf);
>>
>>           if (ice_is_feature_supported(pf, ICE_F_CGU) ||
>> -            ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
>> +           ice_is_feature_supported(pf, ICE_F_PHY_RCLK)) {
>> +                       ice_aq_get_cgu_info(&pf->hw, &pf->hw.cgu.id,
>> +                                                           &pf->hw.cgu.=
cfg_ver, &pf->hw.cgu.fw_ver);
>>                           ice_dpll_init(pf);
>> +       }
>>
>>           /* Note: Flow director init failure is non-fatal to load */
>>           if (ice_init_fdir(pf))
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>>b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> index 39b692945f73..90c1cc1e4401 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> @@ -3481,13 +3481,13 @@ bool ice_is_cgu_present(struct ice_hw *hw)
>>           if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK=
_CTRL,
>>                                                              ICE_ACQ_GET=
_LINK_TOPO_NODE_NR_ZL30632_80032,
>>                                                              NULL)) {
>> -                        hw->cgu_part_number =3D
>>ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
>> +                       hw->cgu.part_number =3D
>>ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
>>                           return true;
>>           } else if (!ice_find_netlist_node(hw,
>>                                                                         =
    ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>>                                                                         =
    ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384,
>>                                                                         =
    NULL)) {
>> -                        hw->cgu_part_number =3D
>>ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;
>> +                       hw->cgu.part_number =3D
>>ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;
>>                           return true;
>>           }
>>
>> @@ -3507,7 +3507,7 @@ ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool
>>input, int *size)
>>  {
>>           static const struct ice_cgu_pin_desc *t;
>>
>> -        if (hw->cgu_part_number =3D=3D
>> +       if (hw->cgu.part_number =3D=3D
>>               ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032) {
>>                           if (input) {
>>                                           t =3D ice_e823_zl_cgu_inputs;
>> @@ -3516,7 +3516,7 @@ ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool
>>input, int *size)
>>                                           t =3D ice_e823_zl_cgu_outputs;
>>                                           *size =3D ARRAY_SIZE(ice_e823_=
zl_cgu_outputs);
>>                           }
>> -        } else if (hw->cgu_part_number =3D=3D
>> +       } else if (hw->cgu.part_number =3D=3D
>>                              ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384) =
{
>>                           if (input) {
>>                                           t =3D ice_e823_si_cgu_inputs;
>> @@ -3778,10 +3778,10 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw,
>>u8 *base_idx, u8 *pin_num)
>>           case ICE_DEV_ID_E823C_SGMII:
>>                           *pin_num =3D ICE_E822_RCLK_PINS_NUM;
>>                           ret =3D 0;
>> -                        if (hw->cgu_part_number =3D=3D
>> +                       if (hw->cgu.part_number =3D=3D
>>                               ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_8003=
2)
>>                                           *base_idx =3D ZL_REF1P;
>> -                        else if (hw->cgu_part_number =3D=3D
>> +                       else if (hw->cgu.part_number =3D=3D
>>                                            ICE_ACQ_GET_LINK_TOPO_NODE_NR=
_SI5383_5384)
>>                                           *base_idx =3D SI_REF1P;
>>                           else
>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
>>b/drivers/net/ethernet/intel/ice/ice_type.h
>> index 128bc4d326f9..814166d959ee 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>> @@ -820,6 +820,13 @@ struct ice_mbx_data {
>>           u16 async_watermark_val;
>>  };
>>
>> +struct ice_cgu_info {
>> +       u32 id;
>> +       u32 cfg_ver;
>> +       u32 fw_ver;
>> +       u8 part_number;
>> +};
>> +
>>  /* Port hardware description */
>>  struct ice_hw {
>>           u8 __iomem *hw_addr;
>> @@ -963,7 +970,7 @@ struct ice_hw {
>>           DECLARE_BITMAP(hw_ptype, ICE_FLOW_PTYPE_MAX);
>>           u8 dvm_ena;
>>           u16 io_expander_handle;
>> -        u8 cgu_part_number;
>> +       struct ice_cgu_info cgu;
>>  };
>>
>>  /* Statistics collected by each port, VSI, VEB, and S-channel */
>_______________________________________________
>Intel-wired-lan mailing list
>Intel-wired-lan@osuosl.org<mailto:Intel-wired-lan@osuosl.org>
>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


--_000_DM6PR11MB46578A43EF737F2316D7DD259B989DM6PR11MB4657namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">&gt;From: Intel-wired-lan <a href=3D"mailto:intel-wi=
red-lan-bounces@osuosl.org">
intel-wired-lan-bounces@osuosl.org</a> On Behalf Of<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;Jacob Keller<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;Sent: Wednesday, April 12, 2023 11:33 PM<o:p></o=
:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;On 4/12/2023 6:38 AM, Arkadiusz Kubalewski wrote=
:<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; If Clock Generation Unit and dplls are pres=
ent on NIC board user shall<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; know its details.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; Provide the devlink info callback with a ne=
w:<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; - fixed type object `cgu.id` - hardware var=
iant of onboard CGU<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; - running type object `fw.cgu` - CGU firmwa=
re version<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; - running type object `fw.cgu.build` - CGU =
configuration build version<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; These information shall be known for debugg=
ing purposes.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; Test (on NIC board with CGU)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; $ devlink dev info &lt;bus_name&gt;/&lt;dev=
_name&gt; | grep cgu<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; cgu.id 8032<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; fw.cgu 6021<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; fw.cgu.build 0x1030001<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; Test (on NIC board without CGU)<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&gt;&gt; $ devlink dev info &lt;bus_name&gt;/&lt;dev=
_name&gt; | grep cgu -c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; 0<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; Signed-off-by: Arkadiusz Kubalewski <a href=
=3D"mailto:arkadiusz.kubalewski@intel.com">
arkadiusz.kubalewski@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; ---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; Documentation/networking/devlink/ice.=
rst&nbsp;&nbsp;&nbsp;&nbsp; | 14 +++++++++<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; drivers/net/ethernet/intel/ice/ice_de=
vlink.c | 30 ++++++++++++++++++++<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; drivers/net/ethernet/intel/ice/ice_ma=
in.c&nbsp;&nbsp;&nbsp; |&nbsp; 5 +++-<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; drivers/net/ethernet/intel/ice/ice_pt=
p_hw.c&nbsp; | 12 ++++----<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; drivers/net/ethernet/intel/ice/ice_ty=
pe.h&nbsp;&nbsp;&nbsp; |&nbsp; 9 +++++-<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; 5 files changed, 62 insertions(+), 8 =
deletions(-)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; diff --git a/Documentation/networking/devli=
nk/ice.rst<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;b/Documentation/networking/devlink/ice.rst<o=
:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; index 10f282c2117c..3a54421c503d 100644<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; --- a/Documentation/networking/devlink/ice.=
rst<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +++ b/Documentation/networking/devlink/ice.=
rst<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -23,6 +23,11 @@ The ``ice`` driver repor=
ts the following versions<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 fixed<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 K65390-000<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 The Product Board Assembly (PBA) identifier of the board.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp; * - ``cgu.id``<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - fixed<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 8032<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - The Clock=
 Generation Unit (CGU) hardware version identifier on the<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 board.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* - ``fw.mgmt=
``<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 running<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 2.1.7<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -89,6 +94,15 @@ The ``ice`` driver repor=
ts the following versions<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 running<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 0xee16ced7<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -=
 The first 4 bytes of the hash of the netlist module contents.<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp; * - ``fw.cgu``<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - running<o=
:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 6021<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Version o=
f Clock Generation Unit (CGU) firmware.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp; * - ``fw.cgu.build``<o:=
p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - running<o=
:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - 0x1030001=
<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Version o=
f Clock Generation Unit (CGU) firmware configuration<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;build.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; Flash Update<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; diff --git a/drivers/net/ethernet/intel/ice=
/ice_devlink.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;b/drivers/net/ethernet/intel/ice/ice_devlink=
.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; index bc44cc220818..06fe895739af 100644<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; --- a/drivers/net/ethernet/intel/ice/ice_de=
vlink.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +++ b/drivers/net/ethernet/intel/ice/ice_de=
vlink.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -193,6 +193,33 @@ ice_info_pending_netli=
st_build(struct ice_pf<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;__always_unused *pf,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; snprintf(ctx-&gt;buf, sizeof(ctx-&gt;buf),=
 &quot;0x%08x&quot;, netlist-&gt;hash);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +static void ice_info_cgu_id(struct ice_pf =
*pf, struct ice_info_ctx *ctx)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +{<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (i=
ce_is_feature_supported(pf, ICE_F_CGU)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; struct ice_hw *hw =3D &amp;pf-&gt;hw;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; snprintf(ctx-&gt;buf, sizeof(ctx-&gt;buf), &quot;%u&quot;, =
hw-&gt;cgu.id);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +}<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +static void ice_info_cgu_fw_version(struct=
 ice_pf *pf, struct<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;ice_info_ctx *ctx)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +{<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (i=
ce_is_feature_supported(pf, ICE_F_CGU)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; struct ice_hw *hw =3D &amp;pf-&gt;hw;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; snprintf(ctx-&gt;buf, sizeof(ctx-&gt;buf), &quot;%u&quot;, =
hw-&gt;cgu.fw_ver);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +}<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +static void ice_info_cgu_fw_build(struct i=
ce_pf *pf, struct ice_info_ctx<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;*ctx)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +{<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (i=
ce_is_feature_supported(pf, ICE_F_CGU)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; struct ice_hw *hw =3D &amp;pf-&gt;hw;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; snprintf(ctx-&gt;buf, sizeof(ctx-&gt;buf), &quot;0x%x&quot;=
, hw-&gt;cgu.cfg_ver);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +}<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;Can the CGU values change while the driver is lo=
aded? (i.e. after a<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;firmware update? Does this come as part of the n=
ormal firmware block or<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;is it something we have to update separately?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yes, flashing CGU with external programmer could do =
so, although it is a corner<o:p></o:p></p>
<p class=3D"MsoNormal">case, it is possible.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;Perhaps we want to extract them as part of our p=
reparatory work in the<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;info get handler rather than reading from hw str=
uct.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do you mean to ask FW each time we got devlink reque=
st from userspace?<o:p></o:p></p>
<p class=3D"MsoNormal">Well, this seems doable, but do we want to let users=
pace enquiry FW admin queue<o:p></o:p></p>
<p class=3D"MsoNormal">without any protection? This smells a bit like a sec=
urity D.o.S. possibility,<o:p></o:p></p>
<p class=3D"MsoNormal">I would rather go with reacquiring this info on pf r=
eset or something.<o:p></o:p></p>
<p class=3D"MsoNormal">As I checked there is already a devlink command: .cm=
d =3D DEVLINK_CMD_RELOAD,<o:p></o:p></p>
<p class=3D"MsoNormal">which reloads this info in ice right now (through ic=
e_load(..)) and it requires<o:p></o:p></p>
<p class=3D"MsoNormal">.flags =3D GENL_ADMIN_PERM, looks a bit safer.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;Either way, overall the driver code looks ok. I =
don't have strong<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;opinions on the naming in devlink info, but I kn=
ow other folks on the<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;list do.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yeah, hope we can get some answers here :)<o:p></o:p=
></p>
<p class=3D"MsoNormal">Thank you!<o:p></o:p></p>
<p class=3D"MsoNormal">Arkadiusz<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;Reviewed-by: Jacob Keller <a href=3D"mailto:jaco=
b.e.keller@intel.com">
jacob.e.keller@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; #define fixed(key, getter) { ICE_VERS=
ION_FIXED, key, getter, NULL }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; #define running(key, getter) { ICE_VE=
RSION_RUNNING, key, getter, NULL }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; #define stored(key, getter, fallback)=
 { ICE_VERSION_STORED, key, getter,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;fallback }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -224,6 +251,7 @@ static const struct ice=
_devlink_version {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; void (*fallback)(struct ice_pf *pf, struct ice_info_ctx *ctx);<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; } ice_devlink_versions[] =3D {<o:p></=
o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; fixed(DEVLINK_INFO_VERSION_GENERIC_BOARD_ID, ice_info_pba),<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fixed=
(&quot;cgu.id&quot;, ice_info_cgu_id),<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt)=
,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; running(&quot;fw.mgmt.api&quot;, ice_info_fw_api),<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; running(&quot;fw.mgmt.build&quot;, ice_info_fw_build),<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -235,6 +263,8 @@ static const struct ice=
_devlink_version {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; running(&quot;fw.app.bundle_id&quot;, ice_info_ddp_pkg_bundle_i=
d),<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; combined(&quot;fw.netlist&quot;, ice_info_netlist_ver,<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt;&gt;ice_info_pending_netlist_ver),<o:p></o:p></p=
>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; combined(&quot;fw.netlist.build&quot;, ice_info_netlist_build,<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;ice_info_pending_netlist_build),<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; runni=
ng(&quot;fw.cgu&quot;, ice_info_cgu_fw_version),<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; runni=
ng(&quot;fw.cgu.build&quot;, ice_info_cgu_fw_build),<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; };<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; /**<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; diff --git a/drivers/net/ethernet/intel/ice=
/ice_main.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;b/drivers/net/ethernet/intel/ice/ice_main.c<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; index 6b28b95a7254..a3adc03bdd0a 100644<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; --- a/drivers/net/ethernet/intel/ice/ice_ma=
in.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +++ b/drivers/net/ethernet/intel/ice/ice_ma=
in.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -4822,8 +4822,11 @@ static void ice_init=
_features(struct ice_pf *pf)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ice_gnss_init(pf);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if (ice_is_feature_supported(pf, ICE_F_CGU) ||<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp; ice_is_feature_supported(pf, ICE_F_PHY_RCLK))<o:p></o:p=
></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp; ice_is_feature_supported(pf, ICE_F_PHY_RCLK)) {<o:p></o:p></p=
>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ice_aq_get_cgu_info(&amp;pf-&gt;hw, &amp;pf-&gt;hw.cgu.id,<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp=
; &amp;pf-&gt;hw.cgu.cfg_ver, &amp;pf-&gt;hw.cgu.fw_ver);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ice_dpll_init(pf);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; /* Note: Flow director init failure is non-fatal to load */<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if (ice_init_fdir(pf))<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; diff --git a/drivers/net/ethernet/intel/ice=
/ice_ptp_hw.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;b/drivers/net/ethernet/intel/ice/ice_ptp_hw.=
c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; index 39b692945f73..90c1cc1e4401 100644<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; --- a/drivers/net/ethernet/intel/ice/ice_pt=
p_hw.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +++ b/drivers/net/ethernet/intel/ice/ice_pt=
p_hw.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -3481,13 +3481,13 @@ bool ice_is_cgu_pre=
sent(struct ice_hw *hw)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_=
CTRL,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032,<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;NULL)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; hw-&gt;cgu_part_number =3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;=
<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; hw-&gt;cgu.part_number =3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;=
<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return true;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; } else if (!ice_find_netlist_node(hw,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384,=
<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;NULL)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; hw-&gt;cgu_part_number =3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;<o=
:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; hw-&gt;cgu.part_number =3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;<o=
:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return true;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -3507,7 +3507,7 @@ ice_cgu_get_pin_desc_=
e823(struct ice_hw *hw, bool<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;input, int *size)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; static const struct ice_cgu_pin_desc *t;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 if (hw-&gt;cgu_part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (h=
w-&gt;cgu.part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_8=
0032) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (input) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; t =3D ice_e823_zl_cgu=
_inputs;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -3516,7 +3516,7 @@ ice_cgu_get_pin_desc_=
e823(struct ice_hw *hw, bool<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;input, int *size)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; t =3D ice_e823_zl_cgu=
_outputs;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *size =3D ARRAY_SIZE(=
ice_e823_zl_cgu_outputs);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 } else if (hw-&gt;cgu_part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } els=
e if (hw-&gt;cgu.part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;ICE_ACQ_GET_LINK_TOPO_NO=
DE_NR_SI5383_5384) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (input) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; t =3D ice_e823_si_cgu=
_inputs;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -3778,10 +3778,10 @@ int ice_get_cgu_rcl=
k_pin_info(struct ice_hw *hw,<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&gt;u8 *base_idx, u8 *pin_num)=
<o:p></o:p></span></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; case ICE_DEV_ID_E823C_SGMII:<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *pin_num =3D ICE_E822_RCLK_PINS_NUM;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D 0;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if (hw-&gt;cgu_part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; if (hw-&gt;cgu.part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;ICE_ACQ_GET_LINK_T=
OPO_NODE_NR_ZL30632_80032)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *base_idx =3D ZL_REF1=
P;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; else if (hw-&gt;cgu_part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; else if (hw-&gt;cgu.part_number =3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ICE_ACQ_GET_LIN=
K_TOPO_NODE_NR_SI5383_5384)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *base_idx =3D SI_REF1=
P;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; diff --git a/drivers/net/ethernet/intel/ice=
/ice_type.h<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;b/drivers/net/ethernet/intel/ice/ice_type.h<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; index 128bc4d326f9..814166d959ee 100644<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; --- a/drivers/net/ethernet/intel/ice/ice_ty=
pe.h<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +++ b/drivers/net/ethernet/intel/ice/ice_ty=
pe.h<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -820,6 +820,13 @@ struct ice_mbx_data {<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; u16 async_watermark_val;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&gt;&nbsp; };<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&gt;<o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&gt; +struct ice_cgu_info {<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; u32 id;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; u32 cfg_ver;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; u32 fw_ver;<o:p></o:p></span></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 pa=
rt_number;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +};<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; /* Port hardware description */<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; struct ice_hw {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; u8 __iomem *hw_addr;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; @@ -963,7 +970,7 @@ struct ice_hw {<o:p></o=
:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; DECLARE_BITMAP(hw_ptype, ICE_FLOW_PTYPE_MAX);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; u8 dvm_ena;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; u16 io_expander_handle;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 u8 cgu_part_number;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struc=
t ice_cgu_info cgu;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; };<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; /* Statistics collected by each port,=
 VSI, VEB, and S-channel */<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;_______________________________________________<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt;Intel-wired-lan mailing list<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<a href=3D"mailto:Intel-wired-lan@osuosl.org">In=
tel-wired-lan@osuosl.org</a><o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<a href=3D"https://lists.osuosl.org/mailman/list=
info/intel-wired-lan">https://lists.osuosl.org/mailman/listinfo/intel-wired=
-lan</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM6PR11MB46578A43EF737F2316D7DD259B989DM6PR11MB4657namp_--

--===============1415771241114432978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1415771241114432978==--
