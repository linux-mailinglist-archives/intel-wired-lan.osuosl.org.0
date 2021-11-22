Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CC84590D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 16:03:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66AE54045E;
	Mon, 22 Nov 2021 15:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZBTjXJbJ2nS8; Mon, 22 Nov 2021 15:03:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BC2A40445;
	Mon, 22 Nov 2021 15:03:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 315091BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F3A5605A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=fail (1024-bit key) reason="fail (body has been altered)"
 header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5akcHUHe4d_H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Nov 2021 10:12:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73354600C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 10:12:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="320985814"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="320985814"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 02:12:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="606363400"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 22 Nov 2021 02:12:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 02:12:30 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 02:12:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 02:12:29 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 02:12:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RpAFJ/VQ7N36x4Wc2CqZtsOJw2sq/tIXCRVDlT4k1PBjmEjsjiF2ZybXjNn4r6nYwejHa1TrPKmxbEN0fIEt8NPB/lIpbT9iKvvi9IEuaY8XiT+uJuhXMZkrTsi/TBqtQfSenCGBlJbKVOePv8JxSY0CCG3oml22eewZEi2MF83T0OFvMWO9pG0FY0sWcsAsIRy9gxDoQJpU+GVQz58M/yjIQjpnW1v0mv86zt6PfFHBGxwm6gcBbVvghVIAb2KbrEif1GT04iQw+xaRFpj0fOru8aH9b6aV1Fg+/KwAzGGy9391tXQaIbws6KSqY/w6NE5TUeqqvQl4+g9cHg7n4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DareFcL4g5yszsJRn3e5qPO3tsSlIbOSqFPyvlfEmzA=;
 b=BCa7DZQ87NPYOJowI6oEISdx+RwTfrzgQR31+obi9JJEeaQ56B1xIsMDUnbRPD9+1yLnrCCsYODWKrLmCKkkhVQJ9RUjf7joZ1mmzF5B/x6WU5kg3KxEMZw9VS6/Ru3kN/QAHcEyARJwD8PKhDFu8eGr7a+dI07nAFRWUtFotTsrOfo90urExXzQ2hFV3K/79BE6zk2SBBAAQW3hzP+ywp3W2tTtTBZm/CnSP4/QWKVnSQvs6fUZHKS4n/eBu8t/Ct7scncQ8RGBT6frhhBNqSI6Cp2MZyg8NdAb+MWYxRLIHRmxYZ+Uwy3vTVpPS49cQg0V5wZl4mB3I949l6QdRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DareFcL4g5yszsJRn3e5qPO3tsSlIbOSqFPyvlfEmzA=;
 b=OsvUXjP2iIqWnf9ss2+5OUNYcBkhRlE0LvDrXr5Gj93TPNezDXZKSJw4IzZjd5ucfXwtoljS10EJHpKl8tYMEfuzwd+YyXTUtgGZlYQGIuO+4nKD9Y8wL8i9Ezx+ZcqeZ6Gk/8/K4jrcoAbS/coca+Z7EbVXly94B/nT4AXOoxM=
Received: from BYAPR11MB2727.namprd11.prod.outlook.com (2603:10b6:a02:c7::29)
 by BYAPR11MB3765.namprd11.prod.outlook.com (2603:10b6:a03:f6::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Mon, 22 Nov
 2021 10:12:28 +0000
Received: from BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c]) by BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::4d4:d2eb:1ad7:b47c%6]) with mapi id 15.20.4713.022; Mon, 22 Nov 2021
 10:12:28 +0000
From: "Kaliszczuk, Leszek" <leszek.kaliszczuk@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v2 net-next] ice: Simplify tracking status of RDMA support
Thread-Index: AQHXujDSttbeAip76kmmm1sJ1Jkvd6wPnkJg
Date: Mon, 22 Nov 2021 10:12:28 +0000
Message-ID: <BYAPR11MB2727D9D9F2D9ECB2660246E5EE9F9@BYAPR11MB2727.namprd11.prod.outlook.com>
References: <20211005141446.33609-1-david.m.ertman@intel.com>
In-Reply-To: <20211005141446.33609-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f40cb03-14e1-40e9-a090-08d9ada096ea
x-ms-traffictypediagnostic: BYAPR11MB3765:
x-microsoft-antispam-prvs: <BYAPR11MB37659B5512C7944A3CA7E3EFEE9F9@BYAPR11MB3765.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VGHruALc5BP/Yjy2Hj2hFvyy4H9y0Bt3Rj7/OV0oWk+i5B08NSsTYQiC3nVd9HHx7DBJTIWZRB5dwTM+WRd5V0evVV9JM4+dwnm9fnEHGd78LSh35IiC9xhyL37U3dftsAKCZe6sfhcy5Blaqx9xs4mNMjtheM/feicrX7/Qw/hF7gMFEi/oOVZ7F895vk6ic2YJhnqviiHp2E5WsvHotuyXYhJ8r6Ark4D8nK7andhqDP/u6QQWUFtGWu5AT9m65eAsEZ8Ck4Ok3fY0PUIS4rVK1akasIBfJkCimnmLKGHHVGCPNnTswPwxnHtksg5zIGF2HUtqIgGX4pJFJZebnVnFQ68ngJ93tbr+wtFQ6Xkm9H6s7GyYcj0r7Y0JjPm9PHdXOiAU6eEU9PgakzasD4wXpumWj/4fcLheweAFlnrL+eGxVNCTwwZtUKpIzO8Qjn6U1ZRlYwev1kAPVjYfqFqFGE4OtnO11tLib9w6fsDYdfBU6dPQbWVkFb8y4ph2PCKZ5fFN5Jcx184zKIg7d+yvJsTAldeNMoKQGQadbpx3WpKZM2dxwkQGazHr78aewK/U3wn8mkTKth5CsdLWyIZQp+Ye2LCpY1aaz1lK05czcxCquHwf8C1CPYeKygpIISwaUGwImFzJPcGGPxIid461713oDIZB0LjOwI/XAHD7FhoXNpk38HNmosGFCOITuxql0Q2VAJhkaS4TTITskw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2727.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(64756008)(316002)(66476007)(52536014)(86362001)(107886003)(508600001)(66946007)(8676002)(38100700002)(122000001)(66446008)(5660300002)(110136005)(53546011)(66556008)(82960400001)(76116006)(7696005)(186003)(83380400001)(9686003)(71200400001)(8936002)(4326008)(33656002)(55016002)(38070700005)(2906002)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j4M+C6wwS6dW5rwuBQDT2C7SOEp4elk3lhzzeLcuZ3vLD10uw0BixUlxFWEa?=
 =?us-ascii?Q?3Roy/bgSGz7E8inbOG6xSRPzbsHx8GYPIvc5eiFihlUxBKPLxHGOwd1Loa4J?=
 =?us-ascii?Q?aanOhsDNIsdRlTXmszDcqcykI6fsOLuTPQeR23Tlzlh8ojpv/D1Y541qMxxf?=
 =?us-ascii?Q?Pll8a1Z7Pj93Gk9AI2kRIMXtR/eiw2+2jE28gcOKMss6/lRZtR7PLh+1JXwc?=
 =?us-ascii?Q?WvugGDGWMj3O7yZHXIuDQCZyVshHzVYWwtyLqaHNWjgjREb0AjCbgpwlM0KI?=
 =?us-ascii?Q?W3iBoAWfQ8nfCcxeGZSG30iQDH55C6mdpJGqonRhEtqEz+7YVSPgHs/NxeGs?=
 =?us-ascii?Q?q1DvVGKr+8TuQNcJsKYdJioXbHTadbSiSXBxuArxAhPsR1IGAr/eX7rpo2NS?=
 =?us-ascii?Q?/J9BN8vEkzWus1vyV7uxn/GI5w2z5cxhjoG6wy5+YsmVp3kN1jTFTiB025yb?=
 =?us-ascii?Q?j9PBs82FAkQZ/uv40u53wytHhJzD+b6Yy7e50kr8PeFuGJCQjnXp+yWCZRGr?=
 =?us-ascii?Q?bmp6kSAzsDUIKJm0Rb1klIE/UUtIt3n71KJHksUZBVFbUxFXXaWv9mOOwTBf?=
 =?us-ascii?Q?m93OS8FcPHRUqgZzMFzq9m0IjQdHXeBOjc27L8GDoYqXLZK2NL9iJ2rd7nqW?=
 =?us-ascii?Q?Bec4GviuS0fhqsYTz/0LdN3UAk7NrbCnHxFqotrnnBt18wMU/1LoCWr2Wnuo?=
 =?us-ascii?Q?5NQHXkZW2dKuTXGNM2gpmr/INLMPB1jsZZNG37OUvgyi3JQ6v+cBU0B9QVNN?=
 =?us-ascii?Q?Nk0yqd3wZzw3t4Jtu/8Q1FwsNitvtE8DpWZMfAUarEQ8QuiFbrqGwimRY4QA?=
 =?us-ascii?Q?dzbOsENxiojWrwD9s7nyAnLbbH/zJkFTviWl0K1bT3LvIwk8mbaW1kl0GPoc?=
 =?us-ascii?Q?iVUjSU1A/Wmh40CGK1LKADzLlo7IQp356uHVGXXEzS6njQdLW2XXY9iOpYK3?=
 =?us-ascii?Q?OoiEn8biEtwirV559st9UJH2PEx5twE2feMYUVN/qXfvl1WvasEhfbY4k6mh?=
 =?us-ascii?Q?NQaXx7w/4cBTXIttFXRWM1dJvYO60FJzAWpLpF4c3boWZOAgRs4vT02+7AWh?=
 =?us-ascii?Q?wsGZhbADOKTJ1HEpIgvH4Imqtwzxr5H8+WE1xkvxHY6ugQuga8wwfHwG+EjU?=
 =?us-ascii?Q?RJ2JeyHfBMggupEFSRwSJxlkCcagENisHx48tj5FBrKJd25nD4qcI5ijenIP?=
 =?us-ascii?Q?U88YkTTdBs91Yl0/eVKYhAV4XPAkRF0bFqrQh3PIsfEFjk+710FLCaR9Yyge?=
 =?us-ascii?Q?dCUqrY3Kn6OUPImnPWDOiSyDfMQV5/opgWTmaIqLpJakbszAN7eHT6l0zPA1?=
 =?us-ascii?Q?nX3QjtSSIyBhKDebRal7PasdGR2x9aLKDUsRbswOWBIvpccJSKV4LIIG0dwG?=
 =?us-ascii?Q?1x/2dGYoQEfC6TkCzbrL89F+/yw5exM6YTS3CMQsyF5or8Maj23imONTTFrp?=
 =?us-ascii?Q?utejMYvKi2AOZ8mgMH4Nc/TqH1LuqGVQmXBOSGQVjM/SBTkn4b2ORmpGHWgL?=
 =?us-ascii?Q?Z1BzMZNxt13C81kdukO+ofw3Oz+c2rfIarcPyBsj8/3v341QaCC9YhU3Mluq?=
 =?us-ascii?Q?66/9dzVD1m0b6egbUOn5FadX33ziDwIVSqxFvsF1mR/M0R0JKrdbXebMwDFl?=
 =?us-ascii?Q?3gjRZ4FPywP6vxf0MTerNKZVSBoUVsAPj8hWHGLYL9c0fDn4etELc/Q6UXbb?=
 =?us-ascii?Q?jNDf0A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2727.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f40cb03-14e1-40e9-a090-08d9ada096ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2021 10:12:28.7117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xmV8HXj7CWcyZ19uq0mXkNDI9sm3yv3tXaHHoFv31QYRUTJRacRSr4HO5RzheXbOObYhWlJU8aKDl3B7Ey/8VerlmoO8Ff/GaKiloWZYdbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3765
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 22 Nov 2021 15:03:16 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Simplify tracking
 status of RDMA support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Ertman, David M <david.m.ertman@intel.com>
> Sent: Tuesday, October 5, 2021 4:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [PATCH v2 net-next] ice: Simplify tracking status of RDMA support
> 
> The status of support for RDMA is currently being tracked with two separate status
> flags.  This is unnecessary with the current state of the driver.
> 
> Simplify status tracking down to a single flag.
> 
> Rename the helper function to denote the RDMA specific status and universally use
> the helper function to test the status bit.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ----
> v2: change helper function to ice_is_rdma_ena.
>     universally use helper function.
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  3 ---
>  drivers/net/ethernet/intel/ice/ice_idc.c  |  6 +++---
> drivers/net/ethernet/intel/ice/ice_lib.c  |  8 ++++----
> drivers/net/ethernet/intel/ice/ice_lib.h  |  2 +-
> drivers/net/ethernet/intel/ice/ice_main.c | 13 +++++--------
>  5 files changed, 13 insertions(+), 19 deletions(-)
> 

Tested-by: Leszek Kaliszczuk <leszek.kaliszczuk@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
