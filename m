Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C24AA00A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 20:28:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2061E81971;
	Fri,  4 Feb 2022 19:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id veZFkkJlmzNC; Fri,  4 Feb 2022 19:28:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1429281839;
	Fri,  4 Feb 2022 19:28:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 032F01BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:27:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E30F540131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i92PWVkSTO8T for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 19:27:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03DFA400D9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644002878; x=1675538878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wpowl3wLsLlKN+m/STqTqAbXwmmwPz80Z+44SKMTGv0=;
 b=knr6NVwQMM/0dUnIB6iHRm3lbUAxlvNljvxYo4KiT+Njhl+NaJHXCtSr
 zXJyaZFkQ0tb8cChc6GdhhX5IU85iCaj6PZawDTop/3/F4cvHm8ecbOyZ
 rH4w8alflh3F9+eWEO3Z9ViEOZnEMvTapRSQGytX1vwOZaSRpTxQL8x9B
 aD9n5/onNupsEq8afVg6nGwi9JjdY1DzlcLaitVE37dlU5+rfPtrMggeS
 ULogsNBp5VSNysVnpgd5f9zmW1eUhNCNKSwLaW3QoNIrsDkinaM8+wTOA
 oMo4pwZHOUradBJqPU1tKQIXC10/mZU+z02liFjWkWfNxQCwK0roAnewN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="248377583"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="248377583"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 11:27:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="524415286"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 04 Feb 2022 11:27:57 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 11:27:56 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 11:27:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 4 Feb 2022 11:27:56 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 4 Feb 2022 11:27:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQ2KzgOHzIiFlfdcw3NWRNNKeK2g+wdHvYCHiwQvHpfZThL5n4ld6rFAYHaMERICXrS3pmWoMDHAzBaVwDA8+EKOXZgkCLwBuwkm70fmmVw2xHiGaXkNRGAJRxAGBbJf6GR3x9YlWjKIz4jGxo7BW6CWjV8dBFs1MXY2dGQgSUjNFc4GvsNTXCRnFMiDEwjHOZbyWnrNd7V9tDsUDhHB54E75vcn2QfqrI869ziEkaDf7mDO+2R33ALh7yRt1H4mFCICgzoB+m7jn9TuIm2ElGKtGBkqiVEzKqoAFf4f3TJNeRGy5bGTzZMQpaqujhVQk+AykVLuCtXMxBXmzvqOcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=torPGicj2JJfkqQJ/DArt7U7gGGZv26HX2cPfd6zM6I=;
 b=Pmz+3JgUR8yvRO1U+eVh0bl/77cqBE1NbZNBNUAOMMttOGq5Z0GfUq1PB8TUtVaO/ccRmj9EpA1t3e8YvT1nhEve9ZL0GqTRxpkmJwYog37TiS3MqpyjKlt4UN/p2v1dR2JLlsRo2WAhQRkqz/CZjhuFdQzMIXlICBkaWxWZuDdpFvk3pmQH7JDmwNvofJLuB+4PTelhV6bR4PW58NCU9qNs1q1qrxGZ6fjsBHBXRrPDo7J7rWak8/dZFYoPLwdTKeGSXVyIgbHSRXbobm5YzvD79ZgUZjNIM2e3Ed+dCLXg1MzEnmcxNg6i2+xYOqVXHTETa7OmF6Qv/Rvk65tEjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by BN6PR11MB0065.namprd11.prod.outlook.com (2603:10b6:405:65::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Fri, 4 Feb
 2022 19:27:54 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de%5]) with mapi id 15.20.4951.012; Fri, 4 Feb 2022
 19:27:54 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-queue,v2,1/5] i40e: Remove rx page reuse double count.
Thread-Index: AQHX832URW3NGbDzR0mRgXhx1Eu2layEE3eQ
Date: Fri, 4 Feb 2022 19:27:54 +0000
Message-ID: <SN6PR11MB3518FA19E64833FA59065632EB299@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
 <1639769719-81285-2-git-send-email-jdamato@fastly.com>
In-Reply-To: <1639769719-81285-2-git-send-email-jdamato@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54892eb8-1a27-4084-8225-08d9e8147121
x-ms-traffictypediagnostic: BN6PR11MB0065:EE_
x-microsoft-antispam-prvs: <BN6PR11MB00652578D97D012DE8C203F6EB299@BN6PR11MB0065.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8IVXrTYQrMHgKTHro7IGAy995p7rO47q3FF10Nds5k8ojNI1amQGrjntYujMf0dX5s8K3IScB1/FwMYNwC9BW+xWvS7+zNWMNlkPx9rPWYvhR11mRX8ePfhlpGirfueNFHYeaRf76+W1mN5BdIDbyazqQ/6HLKxJVSLfi2EZvAjDnUBUmDVAM39BZtZUrlHnjN4xZuugTXPLSxaQiMUuURPwb/HiPN9ubEWql0s6By9xnntd1KZH1ScX1IrSWWhM4s1sKYrilfGKCgGqJZFIdFZl7pGTBdIsCItSXTQvYJyG/9B7FSe/cy8wfM1LYdKtc8qPrDYHNHwJybULho0+40VYAlTuBbHvzLgQzlVwgHF3EBSGBtZA97hm5BuNNelB4G1pvU75A0W9nB2BGMlAjMHqf5OseltAviOIf167WV3BAEdAVJQC2QuF2A+2qhSAGEoyisfP95d/UUgX7YoK+Qknoz/8xTXuKGbk6dy83/ZFmA4qGwenXjM/Za6k/wZV/c8V1kYHmjZzk9TpRAOysIcm8jXUkeAWPAL39vTT6y8gKEs0CDfARSIIUSrj1XyBrGpqGT/Gf+ybDxW8BWqHumDkADx/m3pKSBelU93dQoFy4U7I/wquTE8+N8VQue3gN1RUHV76Tec906TeWT/7VojQBz4LBLrk9T256AbInvf11IFXeuAhNDLDfq+mNJkPGfgR40zTQmkKkyBn9lG6Ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(54906003)(83380400001)(316002)(71200400001)(86362001)(5660300002)(64756008)(66476007)(33656002)(76116006)(26005)(107886003)(66946007)(186003)(4326008)(8936002)(8676002)(66446008)(2906002)(82960400001)(110136005)(55016003)(38100700002)(122000001)(6506007)(9686003)(66556008)(508600001)(4744005)(38070700005)(52536014)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4o6Gc0z6NHl960Ey6nh3KM9QKaKUEZu4uKGjg4PEIwkMPCg9ug9DvyEMC320?=
 =?us-ascii?Q?n0u1ytIi0VOl+5OlFcAHWbj2EYGMyay7o8fSsu2n35Pm60P8JiGweRm/3o9L?=
 =?us-ascii?Q?VYvlRzFXOKw+G5Ek3IhIg8/nQuuvsoRRHmgkLyh4K21s/2CfVg2WgOSuHI8T?=
 =?us-ascii?Q?LOB22P0K1b3PY8PI3LokFVPD+OgyjuzMpMyIiwpIvhYYgFgBJB0BBn97vtds?=
 =?us-ascii?Q?cxAiS3x2Q7qaoULSxkK34vlPbWBr4uxmQYHgYL8KJGNQf+7RqULGQ+Ytql6l?=
 =?us-ascii?Q?LE+ZvLYrjuZsU2QwfBfeXrU0cjtTgJxNPgbT/4qDqtYWEmkV0Mdv7huQ7rCL?=
 =?us-ascii?Q?92rvTM5WJwqgk36vzVhfSH0xZ6iZLoCTcXxzkoL9OuQtJdVsNhdPkRGlK0J4?=
 =?us-ascii?Q?Z3qo3cM/aRtoXA43vyZi/7rg2BYdw34X2e5J9OlblFb9cqNxcU3OM2B7vMI+?=
 =?us-ascii?Q?7jUUDhuL0SLz3B4y7rUZZFf9r9Zbilu/TFA8h88le0Qznb4irnzOCmMjiRpO?=
 =?us-ascii?Q?Y5yMb1Z39qDpGgJ4eMKz7Fz2iAYleA2Md0MU7OFoD99+PpGOgl34sO1Abc7a?=
 =?us-ascii?Q?AKvMA6B0ou4zCtHTHa7e4/J7oEH0eDlYazkU16Elk+bgL63EOMhdeM79TINx?=
 =?us-ascii?Q?WMhnG0avWsG6NJ7bh2+96aq7EZ/Qy0LaEqW5sOlVX+AN9C9SO1vWF2E759ug?=
 =?us-ascii?Q?Pqv4qUScqLj6jqbTYC5346p46orZNPmRrLPcVwjjWkqfmByJlVLQnaETycLC?=
 =?us-ascii?Q?wGqFh5yGTDth41WtQx2XgubZYUsMbwAEs+Jc8qP8E35enwO7U5mizelIY1a0?=
 =?us-ascii?Q?C5xf7kxf5FHCRlg8moaB2lPKXFsD4GCZDN85VBWY+B0YSjJYCeNsKLJXUvK6?=
 =?us-ascii?Q?WzK6ueJoZFvelmPdfqff18X3VjA3HkSsGHz+IT5xJrQ90Yc3MyjHgNy74Fm2?=
 =?us-ascii?Q?ghVwcu/tAohEQaXE71gn0tUHNmTMC6PBVjh4Qbfhw4RJnn+udbCmrNg+D92z?=
 =?us-ascii?Q?VB9LqwPEgFwUDef1DMy00VMMm7ncofsgx1hGCUtS0UDeaa3QRyWaVLVLcz2R?=
 =?us-ascii?Q?NXQaTFqbUujf+MQUPkiZXI6VgRBOC68dXb9kKnkaEFsTUhR04jnUiqkXhO1Z?=
 =?us-ascii?Q?9c0R/w7iaNCNZJ3w2IZFAr+QmXa23XsidkMNpfMeSnlXP/cM2OFmpvJ6GcpV?=
 =?us-ascii?Q?u9wzo+57hVGbYPdlb4hHGqXaJtyyiqxRwjONZmShbOAt6W/SIoqkwlHL+OmQ?=
 =?us-ascii?Q?g2yZrLyLCFU7NwArtiwequT6aYlc65DOToHGzDXmZ8j1Q6fOStqfXuJVNckE?=
 =?us-ascii?Q?o36ZfuvbaJuFpMzDvGQGodP8t1bu7pWUx9gUfPcnFegKdxWgIf8VAnr0wZ8j?=
 =?us-ascii?Q?tI5RHvh+QgfDlQ/pQic+zrYde+3dYaQWjwOTkUzdXJIRZu34FvP2Rf8l2D1q?=
 =?us-ascii?Q?Xu9mijs2V4+6SvgWrFwtlTpQNjpXCFSjYX1A71M3k7KVpgITDLldjtTjtOxu?=
 =?us-ascii?Q?N20MFGkoOLO52UYj5kQ5g7FTIgI30Lueu5RO2iFaZ2ewfzwgDfeoCdwwIyz3?=
 =?us-ascii?Q?jhuxD6bD9p+RbFvlA2kQMDa0OgJPgKK9AfITsbnpXt3d9/lOuvmsXZGnZ1tF?=
 =?us-ascii?Q?vg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54892eb8-1a27-4084-8225-08d9e8147121
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 19:27:54.3553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3MyVcxtVQKBLuY+bInhTsKW6bArSjGfYE53ZeyUnLX08kfw3Tvf5MC2BJF4lB/2fNEB1uKoi9UDIHPI/HtTM4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue, v2,
 1/5] i40e: Remove rx page reuse double count.
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
Cc: "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Joe Damato <jdamato@fastly.com>
>Sent: Friday, December 17, 2021 11:35 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: kuba@kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
>Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Joe Damato
><jdamato@fastly.com>
>Subject: [net-queue,v2,1/5] i40e: Remove rx page reuse double count.
>
>Page reuse was being tracked from two locations:
>  - i40e_reuse_rx_page (via 40e_clean_rx_irq), and
>  - i40e_alloc_mapped_page
>
>Remove the double count and only count reuse from
>i40e_alloc_mapped_page when the page is about to be reused.
>
>Signed-off-by: Joe Damato <jdamato@fastly.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 2 --
> 1 file changed, 2 deletions(-)
>
Tested-By: Dave Switzer <david.switzer@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
