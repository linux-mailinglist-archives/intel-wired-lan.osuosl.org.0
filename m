Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B67442DA3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 13:15:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A00C660827;
	Tue,  2 Nov 2021 12:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KiFj8VmxqYHy; Tue,  2 Nov 2021 12:14:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A89A6079A;
	Tue,  2 Nov 2021 12:14:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D2F41BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 12:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5707E40297
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SY3gXBOr8uW3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 12:14:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D1E540295
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 12:14:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211295974"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="211295974"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 05:14:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="583559106"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2021 05:14:53 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 05:14:53 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 05:14:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 05:14:53 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 05:14:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cazVSYx/sD6eJhuPLolU1EWpiha+pdv8ylx97gtGr0G7Cr+896VcP2fNwDXuspcVvB8ZUOnWG339NXJNqHpBzT9QJ3J8ipKdwCErAdyFHBvMPaB4XVXRWZFTDnU+LPyKgIs10hgLn0s1Lhey3TVwmk6V/uaXomvHls7NpOVqT9yEfOHsqA6A5u5tbDF3tNzYlfJ2OJdu5Q+zEEdSYW/AQ0Bq/6SwqztzMsmNJzHLNqHuKdq5qWgqoCfolVi6xfPYtGvxN9iMhNTESFI4/IlKsgeCzZYPAt2KgTvJptaaopWtnjaFIUoJErbqjdZ5/szYZmd03w3OvD2LIUpv2ZhwZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tbZsk8ruapqsA5nP8AsiDxN+JlaiU5uoJLl8Bw6TEVE=;
 b=MsW27V0YyZIEZNIg7y0helzfLYo/ol97TypLf5r/73GeplFUNQE2RcPyRLEwB/C2bD+h45dBM76kvufOU5Icn8nU+KimnpOeIH2hnxoYUI7UqyAHxic8D6x37bXc9KH0JFn8tJ9wf0VEr2Hrg8nsw/fdppoT8oUhC9OUMfAmr8QUjsbWnUtvOcaojP+Omr/FxvxpkMkjDUpBHPzzK4Bitr0jKv2QgKcilfExIk5Qp4lB7y0Ej+0i18N42SMMczMLl/vA3CnLsvtQTOMd0MZjN+oLacDitibkma0frpO6MQmpJmlsEYflv+wJc4kvmIGizSLedVk/iKapf8enAkGO0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tbZsk8ruapqsA5nP8AsiDxN+JlaiU5uoJLl8Bw6TEVE=;
 b=kG1tt70s6V1VFeO9iae99n9hFYXMhLt9w92nQBGwIRCblSJ0vEHLu5wA+dTgbGtB22rfMw+6lZI3lX+NqXbJo7Gks582pnsN3IEX8fO0kJ0nTsU9KKrrLtZViXAf8FDzuJjd/MX2PyhZRbKumgoMFytf9rVak3nn1FDXscTwMS4=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5589.namprd11.prod.outlook.com (2603:10b6:8:26::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14; Tue, 2 Nov 2021 12:14:51 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%6]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 12:14:51 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor
 iavf_mac_filter struct memory usage
Thread-Index: AQHXnXjQebtBZuoxXEa9aet6Kken2avwi26Q
Date: Tue, 2 Nov 2021 12:14:50 +0000
Message-ID: <DM8PR11MB562102006F47ED929785D42FAB8B9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210830082536.274203-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210830082536.274203-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71d7c0dc-0ad9-4b40-f75b-08d99dfa5ef8
x-ms-traffictypediagnostic: DM8PR11MB5589:
x-microsoft-antispam-prvs: <DM8PR11MB5589749461279702458C2BFCAB8B9@DM8PR11MB5589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5Fkuh5qyLj2wf8UkzjyjFJZ8y24UTqgUsbAHSZtZoaYpITDe1AovbildzjxdM9l1VC7s1Le9fL4hFi2EszUuH64DPtyPe+1Y3Jn8XUDujLXnvBirxqjkKFraE6mctKhOn66oiZi6Z13CplfLX4En9PjaT/GV0kVOJxWTYMWcWuX4HbMp91Uif/HwbR1KzjYPFm8KOMocQDrT9weqdUNhhJIXCf7f94GfqScIeq0+gH05E1FHWtO55e5zKkzYJmYWf51p1wQVLDDf2t/fuGc5OkSiP68LXtKzLqm9e13jjKCoiMqvLRShmaNCQn+k8tf9Yp1oUbdhGfuO6i9efIx5ttWXjTdSkB6Fc3jcGmOscezGHrPWtFqqag0qucLpfr4zVqnYCnkUSlP4IEaqWdpztKdNZCgBCsI6kP+HaLcdl3MjLSNQHRMqKXC4l/HOZjwpiKDBy/U71j1kapkXZ8q2avbc2Zx47Aqt6kPjVg92bIwdswTKwfuG8jkqZsYWIRd9K25F66+qiTIEat0naQqhlAzVLCsxIWbYETsfw8DKnpWJRWOOAPtgKIgXpGLMQhkakJF6jkMhYsyCTpF7rDYU5topfF4mA/dbbWC0eFWYX4QH5nozfJrI/hjfWAne4KdeJSWEDGOmJm+/D7XuUBwP5VPwixZ6q56dnx9jjiUjCIUnNOb5iJqVxLBC23XKHENmTvXpCT0+7DkgyEkGhbmBJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(8936002)(86362001)(316002)(4326008)(38100700002)(66946007)(7696005)(4744005)(122000001)(53546011)(5660300002)(76116006)(8676002)(107886003)(83380400001)(82960400001)(55016002)(66556008)(64756008)(9686003)(52536014)(186003)(2906002)(26005)(110136005)(71200400001)(33656002)(508600001)(66446008)(38070700005)(54906003)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?u1l1ygT1hvBqI3Gp0/6U2TO/FPpZ3kwsEyNBhDDOz37aSlxfMrJzYHUn1W?=
 =?iso-8859-2?Q?s8/Dne8B21T0KHZouCRw9VZuB74LvibafqiOcSUmM66l0Vk5ycdqD7aRec?=
 =?iso-8859-2?Q?cbEsXjTC+q4tU9YRAhh1ZDx8ZnJcJivgMh7l58vHa9+HG8zh7TAgzm1MI9?=
 =?iso-8859-2?Q?pq4Pd5YJeBL8mUsxj7DaQ3rFt8da7DP1vrbGwvc5dIgbv2LlL0+FSEwqrC?=
 =?iso-8859-2?Q?+GTx28p5k4o30VrValT/f9WYNa8fbawqLIzN7/GjUTbnhOXV4Ih56vHqUC?=
 =?iso-8859-2?Q?k7f231XdymmAIBZEYebEJp+bj79DtYujx3oXmYwqj6BxSm7pBuv/t7Zyao?=
 =?iso-8859-2?Q?A7qjZUuel2NznQKDUnZzfDMT4xvqO9P4Q8P3VVDYpjfyE+hN5vNieSHE61?=
 =?iso-8859-2?Q?mDMlyA+og1zpkqZcJuOWy4+utOQBwSPlsrqWC52EB4GbmW8mG1FevV1yGn?=
 =?iso-8859-2?Q?ww5zWtw7DH0a3BhaqwDDSaSfwTLHaJ5+rH2cdxcy+NknenWIR5mCJA/2Ue?=
 =?iso-8859-2?Q?n0Ev2E9XWSZmZLixHDMY4plBRrw6pMse34wiXuwdiWkF0dXOYvWk7c5uo5?=
 =?iso-8859-2?Q?aFJpIZiCfRYhNKsT8e62IMvYAv71ySOq6wJ9pWSZokzfUom/SLe5gj/bjL?=
 =?iso-8859-2?Q?k4aD1FA+O7tWcDGSfXSp3IorHR/VaHroacO18pvvkZGOdgwyCnpoivgdcF?=
 =?iso-8859-2?Q?0hBfsIfYCtivEZOOMuC0Itng+6r5txq9Mty9dvuCddb49mhRxTaBMapTd7?=
 =?iso-8859-2?Q?vvb/Pekvq4q9gsUZMgtCGYVDaG+aGpkzx8Mu3f9YFZTtjf8+g9aVnjwIrd?=
 =?iso-8859-2?Q?aaB5WNQHBN4CG9j6K67idYV9UDlZ2R01djbPHWeNkUHGv6kUiNFopWBAWx?=
 =?iso-8859-2?Q?TRTxRXx8UhhapqzvNDoI+x3aFD1g/IB9ZzJJfIG5OyE41HGzzv6hwAfQed?=
 =?iso-8859-2?Q?QvQckvmWmh979HdQPMRK2LuNtFpEbGaWFnILp+xsSh7a1oHuHBp/JFdjvl?=
 =?iso-8859-2?Q?pfydTmzVt9wb64FV2QerXoyKqQG0u/jwmxov8j9X/dEHDchA0euDZjMRwk?=
 =?iso-8859-2?Q?Kl91tLCdJ6nPEpOH4piNVkCzWxnTa3c/8y1351lE+ur//Gy99KxCzjhJ8g?=
 =?iso-8859-2?Q?sW5ukCyRBk2PP4O4nmXzSPw5sseVpaRk0U9sQjakb0qv5BdTowjzr9HOkK?=
 =?iso-8859-2?Q?VgjkkdA3B0WiYdna3FKASzneOijgNnm0RKxLDWzyNEehIPzYANKz9fMkLD?=
 =?iso-8859-2?Q?3NubZNfFk53ZEo/bODZKKMH/Gj+qjmyb8zQycScDWH/Iu201klaAvuWqlh?=
 =?iso-8859-2?Q?JJb5JVufkCRgj57l+c8A3QY8PrfvUsZmAAPKrC9SO6E9R8fQqMiztkQtbJ?=
 =?iso-8859-2?Q?syBg28rxWBMsVLC+EMW8wmMSWxg11mo713t8KrcxZHOJVAOqLsqjenc5Sm?=
 =?iso-8859-2?Q?b6mlECJURoM7CnPfHgP5b/+3mCA0njx/SM1pdN99kK7qIsdNOCaeF3cxaV?=
 =?iso-8859-2?Q?9S+nYTh7KhuO8Zhyw9GVZfoBg77gwyKobSOG1yCPrGqJtS1EzbZJ3MN8Hw?=
 =?iso-8859-2?Q?16NcWb+jK91Ehg0pUp0yZPvUK+mITPAT0HNFjIQ5lCzyNEkBAU6lQd0bNH?=
 =?iso-8859-2?Q?LQIRJHhuJUGUey+qtYk1v9vo9qmNIbODIIOHQzagjOUsUjtqpdZAQcfrle?=
 =?iso-8859-2?Q?8yhb6c6nNznv3pYFr+sHYdryUQGY3ZWKy5wF6tuDMX9Qm66jOjMOL00XQl?=
 =?iso-8859-2?Q?Py3A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d7c0dc-0ad9-4b40-f75b-08d99dfa5ef8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 12:14:50.9250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WgpebhCZt26G55Mfno6zScedgRn2ZV8LXa3ghbJLkjxEj7qnr0ZmCIDWekPoe+tbW2LzAvElvvjHF552KDiYh1B/RXzbpLx/WwL1AjbWizs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor
 iavf_mac_filter struct memory usage
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: poniedzia=B3ek, 30 sierpnia 2021 10:26
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor iavf_mac_fi=
lter
> struct memory usage
> =

> iavf_mac_filter struct contained couple boolean flags using up more memory
> than is necessary.
> Change the flags to be bitfields in an anonymous struct so all the flags =
now fit
> in one byte.
> =

> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c95775509a..3feb9edb8131 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
