Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D005F42638E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 06:11:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B6866080F;
	Fri,  8 Oct 2021 04:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SAkD-bdGzyqJ; Fri,  8 Oct 2021 04:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80C0F60087;
	Fri,  8 Oct 2021 04:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB3491BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 04:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C462C6080B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 04:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G8o3Uq09hsjN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Oct 2021 04:11:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44C7660087
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 04:11:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="223838569"
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="223838569"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 21:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="489296966"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 07 Oct 2021 21:11:06 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 7 Oct 2021 21:11:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 7 Oct 2021 21:11:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 7 Oct 2021 21:11:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kVHnY7HJOrlS1BqxYAPeZFcsI/B1X4RGhBWC7qtLQGgYm1A6wmsjZiribjJ30oA3n4sMOP4ysXvyN29g5wPAIEFd6OmQLY/xN+JPH2b48V2bOOcQ1sVVRuCST2r0Wsrgxvy1hkzqJoHwJf4c+a7Uq6oHiqwmC+5ukAQ+A+RRkNz8NxZeoIhPebN8XSiVZPd0G+pu5zqCenfK4MwQ5E1hlW8CdxcBNsYIbJeyUH1xxSlW+wRmH9Zufa/9VffdnSHKqut2qUMqF6nGyC9qktljedQ/nt9FxytRiHNvAL18efRN3LJ3A3sLqCN2tDhSXmk6VIM6MM5mb5TpEIENVlymaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bFC92VqaceU0c19yP6TecTOjJ8kdkcxYg9ecUb7tvrY=;
 b=lwkh8Slf0pXgwY436Vd05z25++nOzAUEUqROI8IiKhIy3tYJileGn3T9tO8EI0RO2WUD8fcWsoLuLIOntaE8I/bVl/Bp/MpaV8B/cddPAo9Xp8LbtXAU6OmgLClCsH6QsI3pMrsjkyFDGwU8Y0XPVhf7nZZqY/D3A+3ZfDpc1hl59zNZJlWswWMPUfnsr5lAkyqMak3O+dfjfrnOF0xkOPA0O9c7DbDRTfsx0smGRG3TwcDpsscZm0xg6E2MH7Uxu2hkeDYXHTe5k6zXlf46vgicyBI7/f+LcPGYJYD1S1ZzbKwufH3zN0t0XIvpuYdUEoNmEHXawm7yoXN2q8QdeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bFC92VqaceU0c19yP6TecTOjJ8kdkcxYg9ecUb7tvrY=;
 b=hxFW3dVGpIjDHHWo0MjjPaTe44h3O6LYpdWwipVvMzZMq8POAzkhUhQsNlim9x4vPFVwXtkPj2zCCYTY90sFI0ETOEU5YZYBhnuYmKFCmUbCCTsS5c860lbUAHGoBcZK9eFhHO/d/V5qwT3OgUnkmkFKp4xQHLZvpc9CF8V2w5k=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW5PR11MB5881.namprd11.prod.outlook.com (2603:10b6:303:19d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Fri, 8 Oct
 2021 04:11:04 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4587.022; Fri, 8 Oct 2021
 04:11:04 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix switchdev
 environment cleanup
Thread-Index: AQHXtw29uZrg52gDmka8e9ZlRjGU+qvIhuaA
Date: Fri, 8 Oct 2021 04:11:04 +0000
Message-ID: <MW3PR11MB455421EC4CD8798409A0A8B89CB29@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211001211115.2647-1-wojciech.drewek@intel.com>
In-Reply-To: <20211001211115.2647-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85dcb52b-a0d9-4d29-305d-08d98a11a56f
x-ms-traffictypediagnostic: MW5PR11MB5881:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW5PR11MB58818341C7F395D72A87F0CD9CB29@MW5PR11MB5881.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GX2nq6RhdQfrT7YAIsVnLDDKixySHbCJn2K6mhu9aKTgT7HQ9bTtoT2tvV0Uiki7dNYOq2CE4WT95lCIQWt/ssJyAcB3F6QoiAXDS7pDqj6WeBK103ryqvIbSq+yoqc2V+PYnyNjEVNviQYjWM8e043LqTMsnVQw1iTIyZ/B+DXaHQdSf7yP0txfFkOpjqltYPkq28h4SeBth5W3DLzhcgvP0AbG6ARbV9AgocCNpJgvQSCYmoZ3KIaANUD5FnV7qYvgtl1S3O6wz+F4bNV8OpKCU87DxID5/l3WE3AFBEyxhUdIYkuxXrzjtGtj/h+eITmNFfTK67cTS7V/6vzhps9N9LjWqqfkvCQfgkNb7L+1n6dNbcikGiYWdoKNlclnoXproMWmLGJst6qqiQOAg/3kq+TKf3p/xVwcLeKMqiVmPVRNblTPyzAPcHWZmOzLgyOxPpfCyAtdc5XvhpGeyHV4nUq16CfvMy8SEZa/pBbcEjtinNVbG4DutoL1Jxsa+bjnfAS6ZQtTYtJaMlbfh9hq1OCItHiKAjSOgKQHgGssXuwN8YHWWX8dOfGRQzk4kJe1ibPJ4bl4TV9WeeOMuuTOdKlNOO5lGC9SMPvXNU3l5GQNYxuf9V+MSiNwEi0yLBW5LfM3uEJPAjFxKzO61vXv0PkYaOzb1fJUM3beW5kkZQ+WzAMQBX0UQKgQobd4Fi5uENRnJw7OQ6mUebY72g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(52536014)(76116006)(55016002)(9686003)(8676002)(508600001)(66476007)(66946007)(33656002)(7696005)(66556008)(64756008)(66446008)(110136005)(6506007)(26005)(71200400001)(8936002)(86362001)(38070700005)(5660300002)(4744005)(38100700002)(316002)(122000001)(186003)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IYYfGsY1u2DOAyr+rvG1uqvZSGtOr2/p+kaH2bIAj23UCcjrE09BHegbRncB?=
 =?us-ascii?Q?IFDUOJU9p6ME+gUpaFn3Ge35kAh+AlOyJyaRlNTCany9W6ZpOuVNadGSoiy/?=
 =?us-ascii?Q?jJE5nKHcO9/7FTFs4KUAsOyUWEAeIOWglA4S5I+OHH6xNVumiQZfiM5KB7ks?=
 =?us-ascii?Q?c5rlvYRRPExvRMVGFgaRfzDA1Gw6uFSVvMXh0or+pHXfG5P6GyJLzXhKHSsx?=
 =?us-ascii?Q?5gsDWH6ptRw+pOC2JLPo8T+vjKLsqbSvgO2q8iN8CleRvxT/AP9+S7fKOfEU?=
 =?us-ascii?Q?V7QBMeoilrprmaNzpeZO1TqDU5SFBOI5Aa1kpzNaEak5PZfy3BmUN/H3NbN2?=
 =?us-ascii?Q?1Ursi7Q9ofDMqnmiCOKMul2AJNReQ9j9HJLdZ3v1foN77vrt9GZuwQ55IrRK?=
 =?us-ascii?Q?2wztEhdYRxtLHgf4J+i5LH2Gk1+cSqgdYPB55W1zCWJ/iUHLHzILvZ7Cqfgg?=
 =?us-ascii?Q?3l+jwi+pFPVAbPPm2AZv17oBokVa+xBpAQtvawCab39Z1kMTYzOBeQquootC?=
 =?us-ascii?Q?OTvXfOZsctTzp2q4xnduC3ZrZBfqbcNG7+J/LcpcCKMcx2H14WAtT4a8LlQu?=
 =?us-ascii?Q?HbiYSUxATSMQuD4u5MuX1EQy3kwZ5tLPhEH3XnoIbbTbpkid3LV1UmxPnt5m?=
 =?us-ascii?Q?jMLMvFLgmuGPy4vxWgfHk3icw5UxJI/hkHELtPc5rlmu+bgE5PndahjT9ym6?=
 =?us-ascii?Q?bQ0pE77Bs28wfo0f5feYVnp22bTMGz9GTjeOXW4CoB3VLs5SkFbV3thjIFhV?=
 =?us-ascii?Q?NDNCifKdhIpnh4OWY5ZcBEv/o8eohB+tIq2vzZ/ruW3PWuHIzDEoEwNMSA4O?=
 =?us-ascii?Q?N32w3SMgBoJj9ZFiFRLiwPliUyRGKC24ZmkXqLdtoxCXnK8YrP0oEnPt7DEI?=
 =?us-ascii?Q?h9V4eULsLK0yKPZ7zmmKTt8QhGC3591B42qCIeLESAuqaPHn1B1lyrKOnlzN?=
 =?us-ascii?Q?13jcEmmup3psZRdDO1O6+/YyvA+xSyUeaNZRU9EHDrL+seYL/fPMpsCUn5bg?=
 =?us-ascii?Q?GMKYgfcZ6LUzO+YiPEv01R4ClnqdLnLBleIzirPyElA1STVWlfQ3vhT2QTPY?=
 =?us-ascii?Q?YNysUpHaunxLTgoRNZ8/XH7fs2dhZJwhx//SGIQJe3SDZCycxUSiJldRNUau?=
 =?us-ascii?Q?3ce3IlJAMHlBRt876vD2aqEP7cqIEY0EgXXX01Saet9llRZ3ZFXb7SgmL7OZ?=
 =?us-ascii?Q?9ncPLqex5zzkYIbbXiMDzBBjXu/Cc20+gNwxkLIyP+0PLjmCm9eMZmu5jD3y?=
 =?us-ascii?Q?FllChRAJ3rDnlzHnicDk0PjsrC7+SkU4R6SeKCf2YS+0GyTK1HhA0C2Pcj6i?=
 =?us-ascii?Q?0+Rb3QspCl1ucC6UGoQCLgWe?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85dcb52b-a0d9-4d29-305d-08d98a11a56f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2021 04:11:04.2288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VU2Gxom1ghnZYOEBH1CFXBtltm2WGu/sjjAgmXZOAMl+FkcnmW03lnpbLT7LmtjvSfprmH9Bw+XfIxpnTapo6xoIlw4MziW6if1VeZKrYUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5881
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix switchdev
 environment cleanup
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
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Drewek, Wojciech
>Sent: Saturday, October 2, 2021 2:41 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix switchdev environment
>cleanup
>
>ice_vsi_release should be called after ice_eswitch_release_reprs because we
>are referring to the switchdev control VSI in ice_eswitch_release_reprs.
>
>Suggested-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Reported-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
