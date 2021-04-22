Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8F2368941
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 01:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EEA2405D0;
	Thu, 22 Apr 2021 23:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YALgwm7CxNVP; Thu, 22 Apr 2021 23:12:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00E19401F1;
	Thu, 22 Apr 2021 23:12:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47DD21BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 23:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3AC8083C40
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 23:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9xtM5PyNiM7h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 23:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A7B783C0F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 23:11:56 +0000 (UTC)
IronPort-SDR: I2oSLbLNYHsxK234XM10MWrfqF2UQTimaIgtRbb79q6votrxSw92r0ErcRpYeFFpcLShdjZtfC
 s1JutGT3qALA==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="192800564"
X-IronPort-AV: E=Sophos;i="5.82,244,1613462400"; d="scan'208";a="192800564"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 16:11:56 -0700
IronPort-SDR: Lxoe5r0gPrAfXyiZnEhNwAh0yyW72JyUhlUPyP+aL8wNaEwQmWzjdUg1/sgk1zAFUmTnpJSYlE
 JM5ip3Oi/0Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,244,1613462400"; d="scan'208";a="424047504"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 22 Apr 2021 16:11:55 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 16:11:55 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 16:11:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 22 Apr 2021 16:11:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 22 Apr 2021 16:11:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gTwVk9lkcfJiGP08q44I0ItVnoSA1zqBHS0kr74s0K7jOdmfXT+rrih5j4ZI0Y3Bb7W1JxQX3CuBXgqhDudLAcV9r0pAl653Fdid5vw4ezmL6eTIcp5kuWPP8ezf/FlHwWnErar25rKPdIB6zkRfIPjEwsoRJbMeMrP47lpoGi+ev1Onxgjup2Sy4Qt/fMXquSSd5GMz1IB1ep58uNCkF6y5EgORf9xBzRCOVmvA53lTTtBDcArRK/zMAUIBhw8PPw7bCNsGWP3qfGVDpRho+nGMAw3M6KnoyEGa8W9y4oT0sfNR0BzwHi7jeBK0bBiHisMlby5RSTL5WthXe17fhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MOKYChI2vKZqbPPO400MDG8HugqhYG8Uhl/Ou18cAaM=;
 b=n9Bm7nWX+zteGT4v+zEkVRY2MTKhYHOyPQHNtgTYBbXROj7dsnCa00RTHmNnv0jFb2p1rzkXN6n4bAHzFZpEJZiCoKDrsUnUvnwdqOBqAhcWIrhaNfu0RP4AwJ6H0lSkXjClrLEFWi5kLjJEq7ikBcLY020c13o3/+OuntW2QTduv3TUiFWj6HZQGJ+63Vl4qzy4LRZj5+m67zMu5vkXgsnvaO5ReaDv9UqRoff/kIrZIsQpmPyfA3XpJe1Ddr4tuk+zhcF07/zhwknvANGAPpbfR1dFGJm/QIcKciCg/3Q4tZT716hNJ9CJyVOSNCIs+q0b6d/gKbZn2CbN10MSdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MOKYChI2vKZqbPPO400MDG8HugqhYG8Uhl/Ou18cAaM=;
 b=BK0tXLoJqPuzus7POxQ3xu/GzCk3RuNaqYHFwwXv3JeZ5DB1Kcr8Gj2pRhFalLXKmd7R0V238vKk+hBKBkXONs8bdhbQjjqRgQ8M59wRJLUuEKcDMMDSP6K1Ia9FEjgOuuqdG2xOUFb2UnxNy9IJUYiIdGG78BlQpTbSkmkl4UY=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR11MB1648.namprd11.prod.outlook.com (2603:10b6:301:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Thu, 22 Apr
 2021 23:11:52 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4042.024; Thu, 22 Apr 2021
 23:11:52 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use
 strongly typed pointer
Thread-Index: AQHXIdh4YlKmop088UiiocRY+D+pCqrBVfaA
Date: Thu, 22 Apr 2021 23:11:51 +0000
Message-ID: <MW3PR11MB47489CAFB87C11854BB1F9E1EB469@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-5-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-5-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e9deef2-7bfd-49e8-04ef-08d905e40398
x-ms-traffictypediagnostic: MWHPR11MB1648:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB16489AD41EA12BD03552D780EB469@MWHPR11MB1648.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:242;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P6BtI7t8otSr3xzkWaAjTRifLL2hpt3MRwb+YpuEHhm9UTfaiIAqx09LdvzyX5DtaZTH3DRC8I+GRUuONRVUA7C09woCeQCbYaJ6BsYm+qGPm9St4UQ5ZzyBk4rzYDum+xgQBYkOfox7pj9xNklBXSwiyjQUhuUlkXi0ro+aw+DoSQbH9pj4gi+C/RstmPIKmq0VqrEEcN6NJsXVeRGYovVtvjXnZPPoSrsoy4ZIsy6JdLF0xzOMcOLBEpKk+pulaySS7zQuQ7W4M0tDPQswYT8P+V1SsLMlpbSaGgRWbGlHRuGDX5Bi7tXFU12GN9GSMsTouFilAWnyPVz4P8bO31GjfpRvteBD+gecXKMKdFyfWf+0etZoU4UPqsVanVEROJpHc1uofJUBqTH4QMp5EM1Cs/icqFgbcedXVw0krYTpWghgw+OJKwpP07o8lurQaMvhkQnM1G1mV4A8iyYbzyAFhTcOhvNu5Zgi743JoHBBC3+IgukXykFp2mIxJ8lYQmKoWkCv0eFZedMk3jBR2XLVfU03CoB2V8nuCYEFgYYdwVRkZAda2qZ5OVSJgXBh2il0kbCSfDTB17NE4/3PF4wxmIZ1GALGad8xAyzAatg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39860400002)(346002)(366004)(136003)(186003)(83380400001)(26005)(316002)(71200400001)(8936002)(38100700002)(8676002)(6506007)(7696005)(33656002)(110136005)(478600001)(9686003)(66446008)(86362001)(2906002)(55016002)(66946007)(52536014)(76116006)(66556008)(64756008)(122000001)(66476007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?qguyDZC1esJOEUna4l/ESw+zEN5TInFfHFBv0KwkG8CW77c0PK4axEwuVmHa?=
 =?us-ascii?Q?kRn2RZSrWvGTQLca2bHSrDxX0HPw4INEMIa1DL/f3a94FFzjnFf3lk6ABKtm?=
 =?us-ascii?Q?ozowbL4aCqsse+jUPepAdqZL9d79ScB3epeYtVC37JS2CFiUtycrtqgp4L8o?=
 =?us-ascii?Q?F9BpWU9AwOtYUQBnvMBEPZzen2NL9bxqgo4HYkLj2RRtfL0zwCpEE+NPZXYW?=
 =?us-ascii?Q?nQZqDytA7BMHtNRgP0IHmb/xw+MyQjB9lGARkZY4JP91bQUf6FgF+ZpNp23g?=
 =?us-ascii?Q?aUFbSSyeX5DRBepYTHADCG7TF1m9OVmpebQzMpAy/Y7QdC2tzNlOFCLYsqDM?=
 =?us-ascii?Q?KHHWov1WwPIT2l0GSxEmByQNyDfX6xuajCnvDs10aT+epQhkwgRVhSJ14MC9?=
 =?us-ascii?Q?X9KgPR/1dviRvSm3BlqfzoJ4c2uxpKi2xTMKTxM5jh/sD5F0hHrOHZ+JfI27?=
 =?us-ascii?Q?UgP+eTPdXuxcU18mOoZor7bXygb775oAb2XaF5xg1/BlC3y5n0VGzgtvFYHR?=
 =?us-ascii?Q?t5vgQO2XLQh00/XlbfMQvCQV3xkufSh2kjJzLn5cprc3nzmELCPr4sa7eVw2?=
 =?us-ascii?Q?7q6XC99gbfYDkQxyCKHPBrcJDugJHABiYODBl4n/Kvn/dNkBkqHyIh0m6Kd/?=
 =?us-ascii?Q?zY2GQEeIiwbgxrcnEtwpAc6kdzB6DCRXGxknzr3q4GTuJCGsU37KJ2GIkOKA?=
 =?us-ascii?Q?Z8t3Gos0xyRmmw9fQbiMSmq+jwr2+3tUvH2I+gXCFjKPLtFOFRnqIh3npenS?=
 =?us-ascii?Q?UY4UNd0kQV4oc4NIEKmJIO4RUiyG+qOPZII1RmalxM6VKQqNR3F4UwuxHPVn?=
 =?us-ascii?Q?BT17HqwPeWHHicWhsfSEV8Tfh12D4S4iEJMoqJS13uoLtNH7tPgfi8JXRj2P?=
 =?us-ascii?Q?d4A5kBfqimadwvhcKec8qUljMCsEeI+fuI2lF8B5R0LqiDgdXRRy9FvPWnIo?=
 =?us-ascii?Q?hqYwl+sUI0o+Uun1Nw8IUMm2kT09QllTPckst9atFZWGXT5svXPwleJ+CsJV?=
 =?us-ascii?Q?rNa/dOCzcEWV0HzcoGBkAf9Ry/kYmB++51tSbZladjTWLsjNjssXoZT5LUS/?=
 =?us-ascii?Q?yw4ZmLhAUvYvRJ0k23kKpI3ZfjZBH2XjqETDuXb5ELjStePXRpgFByzTL7K4?=
 =?us-ascii?Q?3aktzHLdp5h+amUNs3Njviod564bJFPvatARujBYjU8OzVgkyiN0pCOQYrcX?=
 =?us-ascii?Q?22uljjsTkL5jkazSJGSY3BOtTGVT51vXPi0N4cdiwWqMSAHIzLYbbIR2KeIM?=
 =?us-ascii?Q?Yftns+54AjTYrGQj4Bm/bOX6k9srdIVlUAvLGxBaVkdDyMPsFCBpYf+vg2/l?=
 =?us-ascii?Q?EMO1fyi1LJ30si/ez7rqS294?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e9deef2-7bfd-49e8-04ef-08d905e40398
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 23:11:51.9736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cgo4E9KIFona9p0OxCjPT5DuNpC/DLwbQVfNaomg+h0M3ibJE3Ex0IAx+C1rW2hwQKAgEQVJLzpYmzmpZIKF5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1648
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use
 strongly typed pointer
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


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:38 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2 04/11] igb/igc: use strongly typed
>pointer
>
>The igb and igc driver both use a trick of creating a local type pointer on the stack
>to ease dealing with a receive descriptor in
>64 bit chunks for printing.  Sparse however was not taken into account and
>receive descriptors are always in little endian order, so just make the unions use
>__le64 instead of u64.
>
>No functional change.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>Warning Detail:
>  CHECK   .../igb/igb_main.c
>.../igb/igb_main.c:442:25: warning: cast to restricted __le64
>.../igb/igb_main.c:442:25: warning: cast to restricted __le64
>.../igb/igb_main.c:522:33: warning: cast to restricted __le64
>.../igb/igb_main.c:522:33: warning: cast to restricted __le64
>.../igb/igb_main.c:528:33: warning: cast to restricted __le64
>.../igb/igb_main.c:528:33: warning: cast to restricted __le64
>  CHECK   .../igc/igc_dump.c
>.../igc/igc_dump.c:192:40: warning: cast to restricted __le64
>.../igc/igc_dump.c:193:37: warning: cast to restricted __le64
>.../igc/igc_dump.c:275:45: warning: cast to restricted __le64
>.../igc/igc_dump.c:276:45: warning: cast to restricted __le64
>.../igc/igc_dump.c:281:45: warning: cast to restricted __le64
>.../igc/igc_dump.c:282:45: warning: cast to restricted __le64
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>drivers/net/ethernet/intel/igc/igc_dump.c | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
