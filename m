Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1AF3934B6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 357A6606CF;
	Thu, 27 May 2021 17:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d3mkMzN94vtz; Thu, 27 May 2021 17:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 233246064A;
	Thu, 27 May 2021 17:25:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7D831BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96C936064A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RKZjdimiM6Je for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C6E4E60644
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:19 +0000 (UTC)
IronPort-SDR: xlfPrbq6mTezRcb7WnwsyON4nsY2mia1rBQPbtQRAirhuxmTejOl3tJT2+2ThErqcbfUTxHhsQ
 qnqZl9OIqclw==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="189909036"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="189909036"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:25:17 -0700
IronPort-SDR: aBjSTRNhNWsHWTkmd1IMBAJNb7z3Tu5H75EIrSNb8F9t96YlzcpxtDtvlEI8rlXbKOzN8XdZVs
 DNoIYIVtS2gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="414993807"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 27 May 2021 10:25:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:25:17 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:25:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:25:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OBOYilpThDgTD/ww+4+DEw93BuCz7oMji6M78EthM5QpZ5OTaolm59aXEcH0tKWOBlspB/SdzaNQjigOJEFaB4XUL78FsVXHqCjQ5Mr6hehgJvfvJTW6472s+4ZM/RAmXH9X8aCkyZTrC/79kqgle0MPqF4ebLLqqZRR77gmXT/OQh29ojzcGkcOhVVNsNGphcMicyJ39lvEbJm5VAsi5SHHwKqzrA+oPn1g2ZA327qkitYlIA+L3wRlfCnhAazgxkYOQHJjMUvB6yzEteM0s5YbP5Fo94oORzD3y8E1HklQaOwJIL0NQcYhRcn3MtkHYYLKzncEnNh1hJzDpYph7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1qAnpgwWlwjALximWw6NhEmSCz7J8oB0GXCO/YMqnEE=;
 b=bCeyQ1WNGnVCuonbJhZYX5Pva4rVs+dFMJrajoFkTMGWx1Okn7WYEonfTSzxo3OiFDLhmq23pdO2ctIXVpktW23F+lNQMrqlqdCmcSAz9Ywqp7nKApE2+wjbxYuSruBmBys2Q8J3USTVlBKa9bkq1qwk3Hm8N/OEo09EMN+TnfYxVuHnNxcEiiRIrXONsElyLVt4U1dq66R5SMFbt1r8hO3N7zUF5rLfd3IznY4oJ/p+zDrMGEqBvBmidXUHy57cVs/jj+A+ALE8y2vjJMIaL2kdq07L2KJZVafcJwkDGeaV2Iqj3q1C9aKxuTcOOr2JdWtkataYMEGVEsjQvUL1/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1qAnpgwWlwjALximWw6NhEmSCz7J8oB0GXCO/YMqnEE=;
 b=HKIhQraQV3fc+dzjUtWeGI1yyxM8iER75o8jE/mTkACylQnCakdyI6GPJM7Bp5fVvRFsav3/RB4i//t7YiF1rHake0ZcdGUHG02K8EKJKfMPitF91nI2Af5u7UgiYYDlX0EpjVbksjLemFg3qf/XuwM7QY405aQ/1I0uGwmFDyc=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1501.namprd11.prod.outlook.com (2603:10b6:301:d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Thu, 27 May
 2021 17:25:14 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:25:13 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 5/8] ice: register 1588 PTP clock
 device object for E810 devices
Thread-Index: AQHXTZgt79dK+B0yHEGZGPeJZFx2/ar3nyKQ
Date: Thu, 27 May 2021 17:25:13 +0000
Message-ID: <CO1PR11MB5105A293E9B143CC9E557A10FA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-6-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa97a61e-ece8-4423-c926-08d921346348
x-ms-traffictypediagnostic: MWHPR11MB1501:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB150163AF9868BFDF01ABADB5FA239@MWHPR11MB1501.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5xzpI0z3eSKd+8C8P9ayTQplk3UG2A1pdEb4F6fa5J07CZRW5NzcKwODG1DAp++ehhay/UjBIgGg17yX8DDkEZWeQ2bu+Y9JVcapJtV0kIfpP7WoxDwL667Krx2bG80A/skFQgpPviUBOWOGo3P1CKcjCzxFoj7Bs85+1EEREAOgMVUCDA1QD7lXz7UmGcVvufHC5P4AUz12tSjo/TwdkX2yev1mMjL+uOYX3HJQNoLQrq1gwJXWkIPg/xGvic7ODvLTMb/OmURNQb/e17MNpiSwNkqnx+OnpELkdX6KkjKXNd2wcIJ9BwL5bW5wXc2+ERpT9I+WmXj+yDw7L9XN5wkANkwS1rSf5dmE7ZFS3fzPjqg0bKt7UHEljy4nQLBarzH1pE52qKHG7kLteN0syEMcFsekRLeYgF3MRvFPFp6S7qX6r1VwEJjD92C39QRHa54uGyEmkCPRu0cSAVBW3RoHMUVAG/5fJDlMnADOm0NEnm+saGkRvyuRuGxDW3swuc6e1iiiP1fjKKS2MniekMGKc/9gQJQWBfIohKTmlh5B2n7bjeU8OIrC38Sj5zcFwmL0P8avhVu5gII3xxTv4LOGqvGkoU1tnlOiXDGmPAw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(366004)(136003)(39860400002)(346002)(2906002)(316002)(186003)(83380400001)(52536014)(5660300002)(110136005)(71200400001)(478600001)(8676002)(7696005)(107886003)(86362001)(55016002)(38100700002)(122000001)(9686003)(26005)(64756008)(66446008)(66476007)(4326008)(66556008)(76116006)(53546011)(6506007)(8936002)(33656002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?t24iYaNFSfXEAgecGBQxf2HHSTmWZHhUv9804SnjPQGAjYQyKwl8YarvtrOP?=
 =?us-ascii?Q?M3MUePp4J9RvEY6CJb1ccFq696BsUgeCqnL3ZcySmpdVffh7zFSnc6/4UM1a?=
 =?us-ascii?Q?LsUz1M6e7WcH5WlGXz4MLr6dI5gBgmXwvdS3uTT2ucv7m90gD48pRyrjCuWK?=
 =?us-ascii?Q?w4fPqMXaiOIQ6uUnTxYQgE2g5L1+iYeQY9BxCmKVPRRozOKeKXBwT0XjwfY2?=
 =?us-ascii?Q?yD16ztJ+dhcYC3Mf1rBII7QmA9k5hpPgKXHZJv2wM7Z/Us1Ao3YBY3EQVXZY?=
 =?us-ascii?Q?5Wbg+/7WAK5GFhex/RoSHmRLrzREP/nmx2M5/J5pL63LkXxZdrBYcTxEdXSd?=
 =?us-ascii?Q?UEaefecw3oMHIRiTU++J/9o7oDIdEPk1gGWqbdgx3G8IHxBgesmiz1Y/wt2G?=
 =?us-ascii?Q?KFyiGzQiqdSBWWn8TmrWQet7umBmhngBcTZKOgnZxjJ1IB+3PplhmrXAIiVj?=
 =?us-ascii?Q?BtlFHWC/Ymtxh/7tsbKnqbVsSQOw53QOGgwYm6MkHL1svAchjIhm7MHbebL7?=
 =?us-ascii?Q?ll6nSKVbBRdk5f0f4Kln372vdjKkWfM/LloEt6zx2bQDSbgZ9h4U2V/qvBnw?=
 =?us-ascii?Q?X4My5RbdPR6A9bgioDYm+IVrpXhlshqGUJp5Yc0rr1eygDNLbw1kZsgORGaI?=
 =?us-ascii?Q?AersE41mRFPFFidX+DkURgmm4Xl8SJIFwFdV+JOwuw/YBE8DNeCZuo82vPp+?=
 =?us-ascii?Q?nx4CMZbkJxun0VWHjoikJKMZlL8x0UW1s0FMNaPA1hF9U6ZGichmu9UIBDue?=
 =?us-ascii?Q?xBFKP66py2yRUkwWh/7KCyiLVN5l+7oWvsGOAue1jz9FFLMgkwm6APyFOG1o?=
 =?us-ascii?Q?B26c2UqxOIJRhJUXxRPwb6bngWIVUXOWZGsiDsFT+rFU3w8Ez6RnZrV3u06g?=
 =?us-ascii?Q?SVYiIIULUagspgG2jsU5gil0dQQbd9vNxEJyq5oXMhD8WLUajmUpwBbhHL2v?=
 =?us-ascii?Q?T7l3AJIXVfEEhILlvPrIakR5Xut3dtXP++pWFgj8rTqT3jF1S6OrSHGJxlli?=
 =?us-ascii?Q?FoD39jHnklOnCw+G2H/ozR5QjI0x/Xkn0MjzSnjQlFJ52u5SfGq7GPghGXU/?=
 =?us-ascii?Q?Zz7GBnuNWzWxtZS1Uhi4hEjIwKntNpLa/cjRX8+fgYjwtI+69AnEuI/YO3T2?=
 =?us-ascii?Q?qqsIvG519CTCpLygrjOp23HE20t2MwAiAzDRQImCYKCIX6cUOKDcoYLHnzvg?=
 =?us-ascii?Q?qkvWumiUu7iuRYWmOIqoUGvlIFRqK0MJNVcgeLQ861N0UCEc7+PMaEnxlQLI?=
 =?us-ascii?Q?4EMm9cMB84rwuu/mVOV4hxygrVvS2I0Oh+f/f9XVwRBSVZrSmaq5MnZSMGlC?=
 =?us-ascii?Q?TFSTjpb0Ye9zivOZKq0Jr9Uy?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa97a61e-ece8-4423-c926-08d921346348
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:25:13.5693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: loih5keLk5Sz/X3Y6dy5u0sF5at1HEgKcR2LiVZr+SGu8XU2rOH8f6T/+ss9fyQmh2y3QSl6iIrSzsN/F9NiIv/1EYLfel6gtAxanM6YGsw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1501
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 5/8] ice: register 1588 PTP clock
 device object for E810 devices
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
Cc: "Lion, Sean" <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, May 20, 2021 9:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Lion, Sean <sean.lion@intel.com>
> Subject: [Intel-wired-lan] [PATCH 5/8] ice: register 1588 PTP clock device
> object for E810 devices
> 
> Add a new ice_ptp.c file for holding the basic PTP clock interface functions. If
> the device supports PTP, call the new ice_ptp_init and ice_ptp_release
> functions where appropriate.
> 
> If the function owns the hardware resource associated with the PTP
> hardware clock, register with the PTP_1588_CLOCK infrastructure to allocate
> a new clock object that represents the device hardware clock.
> 
> Implement basic functionality for reading and setting the clock time,
> performing clock adjustments, and adjusting the clock frequency.
> 
> Future changes will introduce functionality for handling related features
> including Tx and Rx timestamps.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig          |   1 +
>  drivers/net/ethernet/intel/ice/Makefile     |   1 +
>  drivers/net/ethernet/intel/ice/ice.h        |   4 +
>  drivers/net/ethernet/intel/ice/ice_common.c |  11 +
>  drivers/net/ethernet/intel/ice/ice_common.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c   |  21 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 453 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |  36 ++
>  8 files changed, 528 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
