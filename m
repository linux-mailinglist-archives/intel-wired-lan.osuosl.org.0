Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA467E60CE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 00:01:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 363B04032C;
	Wed,  8 Nov 2023 23:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 363B04032C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699484466;
	bh=Ui8YX1/QTASv2WZ/x10gMEi+fSnHD1phWDcCMqu3Y0I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b+OnKRYBT61kKepm7ECfOW+DAwnW96w+hDR54q+Si55rNSObQ/RzHI6Ow2GKjQJ48
	 lDCtOxbPIt1flItPHDLxJWJeMAuEHyebo2tjnhdmNLDBlj6IqdWqHn1OhC29aEw/F9
	 +YsuJLsT95waqFwe+SMRQUr0A5gRnQy6RoH2j/FsSqEVIGjv8dUvj090BkNd4pZsoZ
	 hfnv+iIxF8fGZeQ0BpLXFbXkDpPAW+83fGItrONuzRlAlvkf89X1JklpC7a+6/xwMz
	 6Ppl4iSLZS/Ypy4Ee0+hLhtdQqHEqpU6vR7IWZlsEEFr6R36HoxdixmwRClNGjVVxF
	 /slvMSBvE/Raw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6OcS9HDUqz5d; Wed,  8 Nov 2023 23:01:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE09740139;
	Wed,  8 Nov 2023 23:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE09740139
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DF8D1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 142B381CDB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 142B381CDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G-Z30qJnKEMt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 23:00:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C62181C11
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C62181C11
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="11430556"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="11430556"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 15:00:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="792338676"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="792338676"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 15:00:55 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 15:00:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 15:00:55 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 15:00:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a8VS5HUfOdvXLJ3CZFzt+eLm6a2jiwrycqAikMT0avHVzulgVwQhOJdF2ZaDScV1BTRT/8HU7vxzfP0VpYK7zsW7/odRwXidlNFKxAP1CP3cB31ni0FhmiXyo6tdmTl6DS31obFw1+/Yjm0aiaPL1wjZYtrYgE6ybJ3WNJjQxUut9g7YxtTuWZBp7GqfXxS9ng2hJaDiee1o4v6GMCMfalDrl57GKtNcCRdgVD+z37gx5vuxxzOBfgenMae01uZvxLHQU/MpCyC8ZCbp/WMk84dKIV5JH8ddnKf1ga9G/v8LDe2fSyKE5DlLtryct629zRvEC9dfWGXjE/ynZ2szsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2SXbWCHi9ZZWiESvsgN5N2KUs/WW4+gfG9qUxEOFdss=;
 b=MrZ6u3ItvvuWeQnR2KWLyLyhiheq0OLuQsLLc+cXFKFRuO9isWHA+FfFEFtE38j8po3J0iFne2iLksYg5WuutRJBzgojEyFGcAHLWY3Y3SrV82EB9r++/PfNs3uL0FjAV/poxohRfHGIEoc/UvlBSXSGR40We7k9pvZaRyl5DjAv44UBC1Q6x2/GfxwnwoEsxCHeywzySBjG5HAFMuxfUXKMqD8t//MtF0KAdwJNqVEjAWTaBKBCNYY3ZkkeEnMDqfo9Q0xPBClcPQVXEfT3IJCDUxKqgPKHYtPqcUbF8TMP7IAdN1Lc6bsX8nOlxxSIOlHDbMBh7EBesQtd97FMcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Wed, 8 Nov
 2023 23:00:51 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.028; Wed, 8 Nov 2023
 23:00:51 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware 1/3] ice: update ice DDP
 package to 1.3.35.0
Thread-Index: AQHaCAwyHj+7JxzUIU6IcGDFYwPvJrBxHVhw
Date: Wed, 8 Nov 2023 23:00:51 +0000
Message-ID: <BL0PR11MB3122B1CB78BE2225C1D8E82CBDA8A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA2PR11MB4889:EE_
x-ms-office365-filtering-correlation-id: 76a438bf-2757-408d-5816-08dbe0ae8dfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wnOzNg1xt7HkdfabJ2ptbjj23C25/B3vQ+XeBZfc8FXx38ve0AyzbpqemXm7n26duOIERC8ou2V56wvVbF55DcEgB7sqUL8tFVdcAUI9W+5bZzaN8pu0lbG4k4HQekkAJYXRRWLyRhCnHD2lsjWBLmqSR4/7KLQvK9Y7b9ueyA4XqaFzdkYJVMVevWYzf3cugNYVq0DNW0j6Ng7CxPDdKtRFxvFYEz/zKlVPe/U/WdW3sGXjLm/WrSfA/sp9Y1KHu/PV5LaXrUsH1rMXAZEYYf+kwnpYX3JuBN0a5qMEGha7zXw04Rx7mg/0Vu1tvSZ6g8EJkPNPNRA7j/KYXVfh8MenFVI5l/yek6RW/XM/wm1rSdaidM7x9XcEoBHozcSQUGaMTjVyJpcUHC+GWFYMtUkyOkjS76awcBzy2ZRTRLrLdEJIoRiIAABrZKyHCW9t8NPa7Qrfhnij1k8XCym2WB59wF0g7UJun+y/qa0cfX9wpE4/xHOz8ETa62MGrEPR0hToYchd25opT/INv9yZgDiNCsxZt8gCq/zxrY6y78RXioADCNUp/uytzAjuXhFdRJMkFcRHIfRgbruumPUsueMhf61ylzsxJNpk71RSn/RX1Isx+aX+W3Tx/UZBTJ1c
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(366004)(346002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(83380400001)(38100700002)(82960400001)(4326008)(33656002)(8936002)(52536014)(8676002)(15650500001)(86362001)(41300700001)(2906002)(38070700009)(6506007)(7696005)(66476007)(71200400001)(110136005)(478600001)(122000001)(53546011)(316002)(5660300002)(64756008)(66946007)(66446008)(76116006)(107886003)(54906003)(9686003)(26005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4YG09JLBeQ/aHlmtMa50RU4YQXRhpL0m0ytJHyboGl45hLfAK7zm6j9xfFw9?=
 =?us-ascii?Q?F6TNwolWAMOoIwenDArq6LXGFLBv12BLIGWeQW5a5bWOTdRfYTa6NNabUK3G?=
 =?us-ascii?Q?GO8FYDNExI3RgGh2FvAKE0RUPou1076KrNsi13k4j6WV90ln/yiN0B/R5OoH?=
 =?us-ascii?Q?Kc8SEedznTOi8IrbYRQ9zpv9Do16Y03QxlKCAwZY8cs4QKOiPGnhhfaXSrTO?=
 =?us-ascii?Q?io0HXwifUgyk/+Ath66gtG+HnVHTcyfrsnp0VcoCIh9DYNMpCYkntgsjiaGf?=
 =?us-ascii?Q?KxdHWuMXg8EL3VP6zz0pgSWfCdVAD55y3MSxdn31cdSSS2vwG1jn1I6p3tBV?=
 =?us-ascii?Q?fBdSvcNap5dgnCd2Vwp+FTMix4G0gBx7NzwDHgq1Xb8X1meyKV7p7tQ099OU?=
 =?us-ascii?Q?UyHwPY56QmDJ1pu5Lczs5qy8Yzj6WHb0aXRqwEY31uMa4H/sUZhnqPGACfE+?=
 =?us-ascii?Q?8eZPRWYyUHMWhXEnC91QHlOoRkmOQSar02bxDA9AQjXCCTcbR2erww7I1OoJ?=
 =?us-ascii?Q?8XlJo1gU13FhPigKXi2vyTitOt0pUFoUKzpuL0ZHeVKCnN+yy+Q79vzGdNcW?=
 =?us-ascii?Q?Oki+7fBA/PxOLZ7jiR8xZknvwRzD6RunAI5rvJse8Sg9b+f5LGhpB41RFf0P?=
 =?us-ascii?Q?xCvvbRLvFHgOWf0jPHQsifZbUVyx2QxusaTjmpHsezRwTiiKNZiLqpOgeyIT?=
 =?us-ascii?Q?z6LgqBU+ThD2TEAqR96tBMR8lapZY7YDiMjRaOYW4Ec1ptMsqZFXTG+UcCF6?=
 =?us-ascii?Q?w/i04GVAq7jMbjdDJwtTx0jrnNdbu/88EIzw2yP6JDtkRuD9qGCMTeujfADB?=
 =?us-ascii?Q?c2N21U/yZOfVQR/Fqj6u4I7t8Phi4p748n2hW1k06HqklJvzu1g+OK1uKfGy?=
 =?us-ascii?Q?Di48t2qh2P01aZ5fvq/5I7Te5KSkUc/Ossdtb2Gu/XGZv7FS0TRL/Y6Zh4Pv?=
 =?us-ascii?Q?KtR/GazQYECZ9ViYmT+5m4kezkNDC8S17amRWWbg9Ydw/9pr5ecNppwWn9Cv?=
 =?us-ascii?Q?/qRFZh+gbMKKl6Iu9N5dpyXYIlmFvH7QmUoK7zzSKxF2yXkYTWIXLzbxQAKZ?=
 =?us-ascii?Q?iyAP38jg4NS44g55wa4rE/J57HVWT7PsRuFJ/G5t31/M6WClAgBXVdBhssuY?=
 =?us-ascii?Q?U3dag+40P/S+QK5jvtG0B2JHPf/OunM3VRgI9Qe7pdv0AtjdPgy5g23vQvN+?=
 =?us-ascii?Q?Q7Gpq7rdUMwbuOLIU+Z5nNxHFI4LgTOMFfTK1JHhOjvkkxegIghblk9a3O0I?=
 =?us-ascii?Q?cZtFBAbZF61616p4KLkqI0H/3W56PWXIKqAu98/Uujl1Y+Gf71g/0N4nAJ3M?=
 =?us-ascii?Q?6GiDgGgvKAKtwi2mKdRqYjVzjQdMdTejPWKFONgzk3LoCH/yNR3gxwSbiKBR?=
 =?us-ascii?Q?za7RrxshIcHOx7LxSPQ92kIJAYVG5PYCp/JCfEfEUQxEL8SQspB8yfzgLp+i?=
 =?us-ascii?Q?WyEMmKWjyxmtTnQs9ouV/SRwZU6epfW4Nwcwn8RjrPx4iF/pNw/lYJT+Sv0E?=
 =?us-ascii?Q?EU7S9lLg3wo3al8zIh9r5F/jaJbWtphTWDnuw+4Jl2KYV53ozJDxD+fx2ayo?=
 =?us-ascii?Q?pBloe+dBMqnQoNIKFWiwzDlVwK0hfj9doU+uMyuIckXi/eHuKUnF61jLnQVX?=
 =?us-ascii?Q?iQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76a438bf-2757-408d-5816-08dbe0ae8dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2023 23:00:51.3948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zxBhZ2+hhfrTUEdV1B4EJkP5tVp+IdZuBqC/EAGFQsVrOmq1+MwxZsZVIW3AbByaX1+JzEBcWyOIzwF7xIHftH2uZAIHKIYHcRdmP2Gs4q4yvwuUUfdgkPjrBKwvw2o4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4889
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699484458; x=1731020458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I+cae3A3p5yHuPQmDQV0V1RiM4MxiDS3qCGvIfeL0/o=;
 b=h1qwd0ulOjIERV4Obq0znEUS1TZ9f0fFIc3Ch0H7Fsjc0ygNqWs89SGZ
 7ifRaaOT7VPjH9rh+LwKUsfSev4bdelWxCICnvrVlC3VD1rlbkTY+uInX
 tlga6S7dbN3Yg3zmbR3ykAww/Zqgdu25ZpqJWAmh4853cH3dZfGByqwA1
 1W435OfRn2WKmDz+fhDgwODagTCtXY43nyAuRRQdFiGMdvAYeXpdFp6tr
 8U9lMvQjBsmXj3T+z1dUCOAx3ReMY6y+eqTSz4RvELWx/k4ijnTzXwgk5
 JzS8haFoxMZR39QGHgxYYbAcQOm7yHFE7Az7Q27uUjl0ZMGZNS2bVIfMS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h1qwd0ul
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-firmware 1/3] ice: update ice DDP
 package to 1.3.35.0
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Limaye,
 Priya" <priya.limaye@intel.com>, "Deb, Shekhar" <shekhar.deb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Thursday, October 26, 2023 6:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Limaye, Priya <priya.limaye@intel.com>; Deb, Shekhar <shekhar.deb@intel.com>
> Subject: [Intel-wired-lan] [linux-firmware 1/3] ice: update ice DDP package to 1.3.35.0
> 
> Changelog since 1.3.30.0:
> - Parser is updated to set abort flag for malicious SCTP packets;
> - Flexi MD4 and Flexi MD5 in RXDID22 of Flex descriptor is being used to
>   describe rule id matched in the Switch;
> - Updated the Protocol IDs that are being set when receiving MAC_IPV6
>   type packets that have a VLAN or MPLS header present;
> - other fixes.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  WHENCE                                        |   6 +++---
>  .../{ice-1.3.30.0.pkg => ice-1.3.35.0.pkg}    | Bin 692660 -> 692776 bytes
>  2 files changed, 3 insertions(+), 3 deletions(-)
>  rename intel/ice/ddp/{ice-1.3.30.0.pkg => ice-1.3.35.0.pkg} (88%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
