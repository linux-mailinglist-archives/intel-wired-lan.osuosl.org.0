Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C39DA444ABC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 23:11:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62D5560B15;
	Wed,  3 Nov 2021 22:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVgXM2u0TJFG; Wed,  3 Nov 2021 22:11:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EB1060AFD;
	Wed,  3 Nov 2021 22:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67ABB1BF292
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 22:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 550FA40529
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 22:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kNn41AMpbq82 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Nov 2021 22:11:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D99BC40507
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 22:11:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231857227"
X-IronPort-AV: E=Sophos;i="5.87,207,1631602800"; d="scan'208";a="231857227"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 15:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,207,1631602800"; d="scan'208";a="585379353"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 03 Nov 2021 15:11:00 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 15:10:58 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 15:10:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 3 Nov 2021 15:10:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 3 Nov 2021 15:10:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PMEc8VE9b3j+b616pVIcxRfjsG7PbmXm2pLPoIi3s0RsNsL8uLYl4fucwXRzOtq5A4XCoagmbvgfkYL87LSwT1NJlGv0FUoTEED8sGVbBKEj/cd8Gxr+LxcvdDPcwSheIC+6Ulqm8j/ucsExpVcdHMOI4OJE66KpIVIaPdkvZyeYSqAYFjVsMNrhat30iZheotLrVMzuNmnwElV4vQZAZmMOPYHvcpfmQ8m6RAMnID9fhYHp9ho2cGlSMUzcYFQ4q8JOWpr9UFrgpDCkOqkH1g3tkIiQsqJbnpohxR0fGz2fuAsJcu7H+9FFohhH9kBNwB8gfZysvtJayjZEQdP0jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z8k+btfBnbE7vHSQp8afsd8O3MOcQ9k048XQ2yc83m8=;
 b=Ct9dvf+qgx2/m6mFOd95ISuBOggTZFGJ4Isp2apEjT3MQIqVK0yDVzR3xrLFcA9ocdHw/oPr4Uu/NYOVxE7rME+N40E/ImrU05yfKhQHmCaQjXR7JPwPNpmW69SKSmmvD7KKCJ2qW4NE4tQrc2z4CQZ6K5KfF6+NrJvTlzMnUgb98TWx5j0cH9zq0GNDwojjwcEJkB5taHzx6bACeozur15r3YBSNLNq5FExeotKAt52v1HdHT2WISQEN5zJQ8e9weawTd7hf3qkqgMsGKIxFPd2PDQIo1p3wK7Li5SR8B8RYf1IlhIwZQM9mXYmwdN1OsjYy6+G0Q8z+XX8UpubFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z8k+btfBnbE7vHSQp8afsd8O3MOcQ9k048XQ2yc83m8=;
 b=bmfxXJIoXtEucX6g1LGDQBYdtbUhYN3LjU6cfoCJRnarz1pknP44YQeikF1ZPk+npjuyE2LHk8ZZj4lcUtknkj57arOMzYwfnC4vQxY7OG6bUgZcSWHuUnQeHQ4Jj4op+ZA+UYJOSx8ZXNsuaxdKgdO958Vy3eHa+HW/+RdUas0=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 22:10:56 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::194c:9213:9b06:8c7f]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::194c:9213:9b06:8c7f%8]) with mapi id 15.20.4649.021; Wed, 3 Nov 2021
 22:10:55 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix display error code in
 dmesg
Thread-Index: AQHXzKcWeYg6f3btNUqWYsqSzF0jcKvyZdvQ
Date: Wed, 3 Nov 2021 22:10:55 +0000
Message-ID: <MW3PR11MB47485F26E4CE6C659879EA07EB8C9@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20211029092601.24709-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211029092601.24709-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd57c707-fa17-49b5-decb-08d99f16cef4
x-ms-traffictypediagnostic: MW3PR11MB4666:
x-microsoft-antispam-prvs: <MW3PR11MB46666FDBFDF3026B3E2720AEEB8C9@MW3PR11MB4666.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6qFV5CdPTxRa/yALDALTi3pBtOfB/6poR+C7Ed23KVqM3Ex/g2RprcJhhktzVlVO98OZTWNp9TCfuFqzG3F3TaEYAdoKYtqTeiOrEaCTPE5NS9ZlTWquEco+N3ubdM43NOEHXxV2fMgrDFcU001jAFTuWT98EeNuuCwnuNk838TwlqH0rdxMozZlT0oT5t4fDGub1aLCfsR+GvnRzSPDymVuYdLeVeAfZHtH98Ozk+6kxM6soXWX1SgJ0hzAuWU/7PtLhD2NrwFxVQkgv+zlbkNZasDN/oRs/+Rmr9qrR7Cw1dAUoRoZgzrSFscMqr99BQCXj2aoLptK06yJvnoKVTDtXByegYsGWBJTPZyhEFcZ2KoEhBXz7aztk7dPbCXZSSZvOPTw9GVttTwBEouMrBAlwcWmKTqiQzbDEphdzZa8WGs1il5N59oZ0DiSjrKOI9btBh6u94rip5iQmdYwObbrEm+TcW3nLnJESXkzVFZccVmeTODpquBdNubFX6iqEoJE+mOOmQ2rgZr8nrxuh+/tEVZK+704PVAwyNbr7mgpK7R6b4VGp7ny0UNZ6Ujobvlct+Hzpy5S4CZrr/7S9sHDDLPIGkxb41+r+sD5a6LUc83W9Nm5ksCR0KuHsaF3bLVkRCtKuM+fY3znmeiekyc6eFvRwDLMiDETYypKCgG5zpFTmEYp5+PgKJBsp9yzZBN4ksj+faxt3Q3Mh2AuSQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(82960400001)(66476007)(33656002)(107886003)(76116006)(66446008)(38070700005)(66556008)(86362001)(66946007)(8676002)(7696005)(6506007)(64756008)(38100700002)(4744005)(83380400001)(508600001)(9686003)(8936002)(71200400001)(186003)(26005)(110136005)(4326008)(52536014)(5660300002)(55016002)(122000001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6/jKJ+6lx2VTlYR2Nu2w7l/NbZHyfFpRzy5r4wObWCFQf7mQocR+6NpNrEWV?=
 =?us-ascii?Q?K5s+rqVRmsb7gowzXAE4avMCmmcl3GZ1d7vVkR+tC0bpsEcggNHN6WuC8tmo?=
 =?us-ascii?Q?yhTSab8JRjdoBm/RF90JylwKlFYVaYW4UmoUMqnAoPqamGlpS53MpK4Kftlt?=
 =?us-ascii?Q?JNqRRb+vF6HtV4b4J9GmRqf2Lwylh7iuKmYGhxbzn++qvs1oueYy12IOBBvH?=
 =?us-ascii?Q?lFyBQRTEXh8I9NcGi8WckJNExcRAhxDjrM/X+WVx+ms3/7PHUC34l8oUbI0C?=
 =?us-ascii?Q?ecA527S2nv6S3kaulHKlr6Txqwi277g1ZsngE7oyNQj4z0UpEoLYXVZCyB12?=
 =?us-ascii?Q?EgFZERHURmKvt3hFkZROC7NV2e9AM0QW0SzUaaMNwk+pjN6HWOpSqI4nkCwu?=
 =?us-ascii?Q?e5Ky1UDXLMIxmrwonK/sPF9l0SuC1HFp7jOZL7EgVpdeuLgdp9EDz+5BUpwk?=
 =?us-ascii?Q?fSRTN1eQqtwJtz6KCahWC6MhWLsQ8BJuNW+aD0L7DO/fxlRspJ+lycODzQ7s?=
 =?us-ascii?Q?qu8shwYwRJnpYY3yjR7Um+6gcZyD/obq4/39pPz4QLtvgDGUcGZQlTazJXc3?=
 =?us-ascii?Q?MbDsrNoyg/N9X8lR8rbQ2LjLjGmhXoME8W+xz+RBn/D/u0iItrQ0blwBWxUe?=
 =?us-ascii?Q?0kbro4BLcqHVeC1IwshKgqWLzU7awhJWd4fOtRUVqF3QEeOKTeFfDBH2F3Bp?=
 =?us-ascii?Q?xjQ7IeU9344Hu8xdiCWxbAjStBd5Bsk2mV8i7sdObrxpZIl4CW9m5Y2b/thn?=
 =?us-ascii?Q?NmaKMACcwic5yZIS7PAjOJomCa8DwZ8Ts7ZTN+zT2BQGQTxjnnE0cCXCyU8U?=
 =?us-ascii?Q?x6LcpZYmS2R9fy9vNTKJ7jOWLtT5dBogWwBRxXawD9mQokzYVZfC/xa4QfqG?=
 =?us-ascii?Q?N7Sq3VlNIKl++mhZL/tX9MKNrxAbrOzD9YIYEnTytjZQhfpH9ADfB4xuUO3x?=
 =?us-ascii?Q?cYa6jUnO5yruY4DY5c3nPK7Q4m0530Z1dkyQKcnTI/qhRNJ0wuWsb1MZ20x6?=
 =?us-ascii?Q?c7mOpukpBiNe7fOqQEyJykICgpDpzbR6+P0C8j6yOSKWSESkW7Xz0diX4qYQ?=
 =?us-ascii?Q?nzmyeQsOmuJdRSHgGuLdJaKl8Yq3rwSxNn6ZuauWX/zM9I8LeAOSzr0U+772?=
 =?us-ascii?Q?nxFiVfJefUGdtSo5xIPw7fCSjQhVsKN6R/iGZJBPTzTB0RDkg3iy0un3AzBA?=
 =?us-ascii?Q?q21V2sJSxZVP98pULAUIhTZsqUwBHhWrGBEq4EX1R7jgg7Ro0pMGiqa7D02u?=
 =?us-ascii?Q?yMSg1c+JOI6C8WcB59vqdODmFhzWyATdQpJ1PG5c9o7S+MaG8a52oZIcPY0q?=
 =?us-ascii?Q?giOxNbUKTUo+ibphZq7/Ut7uiAWQ2oaSq5sI61X5yZIntRzFdyNhCQiOz+RU?=
 =?us-ascii?Q?AlBsiw89gzdfXQY6sx3GAWPW8ZG4piqb3T5qHr2EFc5zscaqEgHz5gO6MUZ7?=
 =?us-ascii?Q?j+DPnY1vsMwJA0ZXypu8xs7C90pXCjy5LzqQ6Py/R69pZUnbIV8y1tMin+xP?=
 =?us-ascii?Q?3JdQ7ttY+P97vhiEHxDxyu0XfjLZQV63un34Y3Z6NjF2UqmiXWAzw5sXmANI?=
 =?us-ascii?Q?27QPvKCVYTrh1iPquD3UVHCntZI3bVZpf1NcOIdcGrAqxV0RZWzANOITaRW9?=
 =?us-ascii?Q?8A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd57c707-fa17-49b5-decb-08d99f16cef4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 22:10:55.8961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HosChfskzFX5Q29bHlNRsOvdM6dUmUKqDmHT0yTa4V3ufWMJgd5MfR5xBzO1vtZKnPGaWPHf6wp9GRm8/FQP+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix display error code
 in dmesg
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Mateusz Palczewski
>Sent: Friday, October 29, 2021 2:26 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix display error code in dmesg
>
>From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>
>Fix misleading display error in dmesg if tc filter return fail.
>Only i40e status error code should be converted to string, not linux error code.
>Otherwise, we return false information about the error.
>
>Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
>Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
