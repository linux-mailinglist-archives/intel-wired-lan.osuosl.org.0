Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8910C641CC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 13:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45FB8409BA;
	Mon, 17 Nov 2025 12:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ifUskxPsOMDU; Mon, 17 Nov 2025 12:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EAD84098C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763383231;
	bh=DMKjI0dUvHp7hota+bTOqudvu3mA62Mjs3oikre4QJI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6eOMGshlFZIOwlyUKmHZijkxng+PExmiiMLLKqHSPrzwawU4ZdgO2XFOr+Rp+AUKi
	 eXNvIrXRdn/BvF1m7HsjkQ9zaKx9U7nHn47L8Fb5vNcIy/IkPxEjBUoSFeK+r4+1ix
	 lISqHVM0T34SMKiUAz5oAI4Sccf8ez5XfgibiEFzAp2MKxk0CnPT4tZZUMo+cPfcTx
	 z+9E67Mg//DBhhVVjj1CnOKYzpjYM0SsbXdi2/kxE3cNismCKe3ZhacG9gIJJaaP++
	 3FnvWT6hOR9LA72Z2u7yCVqYnz2txj9qOMvV8/523tP4Cm2JmhNSiOroqDX3Lx4zHH
	 BJZniJqGu44UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EAD84098C;
	Mon, 17 Nov 2025 12:40:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 09E03D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 12:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E48FD81E79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 12:40:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a-96zA6KOQ68 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 12:40:29 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 17 Nov 2025 12:40:28 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0222F81E4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0222F81E4C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0222F81E4C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 12:40:28 +0000 (UTC)
X-CSE-ConnectionGUID: nXjfRvHESv2BlJ0xZxDabw==
X-CSE-MsgGUID: A4o1PgVVRCyT60RlJld36Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76481935"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76481935"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:33:22 -0800
X-CSE-ConnectionGUID: rkOm9TayTFyK9SS59g9YAA==
X-CSE-MsgGUID: fZfo436KQgOzTbGS53jVTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="189736607"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:33:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 04:33:20 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 04:33:20 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 04:33:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oK5PFvfRBWyvXZWN8nNd9+3K4vL0dIW4TZNWi7zT6Tf/2Tsja8fGkG1ir0Q+QExQc06y/K8fgrDysUSW7D1DH34spsfTuavF98M15xITPmDWSNg6cfnheB/WcJL0jVY9a8l/KEjXja9kKyeiKTNuSq9He0Q9XAsrdD92RngtwLEx0Lk9aswMGz9qGX3lNv/kOeLHEWhVXOv2NeMM3dQiigZluKShqHBe9GF6Th179Rz4VBkrDNyoTE5x1+XUuS6W8nHjFYettHQYqYShE5wyafMM71+FjnysA4LjFpEPFGx7PCJEsj1R5yVaHdoRz1BPIspQ0b1dFy8XAIEbc0URXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DMKjI0dUvHp7hota+bTOqudvu3mA62Mjs3oikre4QJI=;
 b=Kl0tPT7JFgs/wZAKlgp0dlkp4HLIZ5YRevkdNRYhdWsfDqpkbn4BWgguFIyvIpWKgHrzP4Soz9dSDeQGS5ow/cfqlkhLyn+YTf4iXhwTPj7lUjICmS1fTC3ODAlrUxcS6IZ4SzC/8g38DRrrb9P5Ppd7s6ghBFkgoQs5rJezl8jIuBR9cpunx5qX4xnZRkumcIMs2dk3dMecb5EENaXFhjaQys6zRM+5uxBMFX9b8XdCwctsvFyJwlv7N//jMGyxUcC9X8X8WZCANNlh8vJxZX0gOswuEnxXnffs1wTxsf7zcFfaggUTOUto018xCq2p/tzTsaBraN1eYrK3jj4/Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by CY8PR11MB7361.namprd11.prod.outlook.com (2603:10b6:930:84::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Mon, 17 Nov
 2025 12:33:17 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%5]) with mapi id 15.20.9298.012; Mon, 17 Nov 2025
 12:33:16 +0000
Date: Mon, 17 Nov 2025 13:33:04 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Emil Tantilov
 <emil.s.tantilov@intel.com>, Madhu Chittim <madhu.chittim@intel.com>, "Josh
 Hay" <joshua.a.hay@intel.com>
Message-ID: <aRsWAPW2g5_OIXhQ@soc-5CG4396X81.clients.intel.com>
References: <20251117070350.34152-1-larysa.zaremba@intel.com>
 <09f58140-8d9c-42f3-a9f4-380c30d7c11e@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <09f58140-8d9c-42f3-a9f4-380c30d7c11e@molgen.mpg.de>
X-ClientProxiedBy: BE1P281CA0156.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:67::9) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|CY8PR11MB7361:EE_
X-MS-Office365-Filtering-Correlation-Id: a6305830-084e-40b2-19be-08de25d57b9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?g/qZEX7Myq8x99k/5uDKZxdVzkn34OUF8TsM7k7hVTLzT3JIBy4uV3QXJssn?=
 =?us-ascii?Q?glFNE1aC5bPobPK/86KiQWQbkVw4XIrM8xqH6AyMmwxl8QNMrR9vuvlBGu6b?=
 =?us-ascii?Q?0MlOCbcXu3r3ezotPt8Hh8fvTEeLTh4FN8MHc7U6K/rSAJbBOOPC+MgXah2b?=
 =?us-ascii?Q?ZbfGITXJLgqBMzHSaUvQoThNnM10s/zI19ojdsfrlh98ZlU2MuiA1MuRnMmp?=
 =?us-ascii?Q?SPvl1XYobX4H79EqKZPmkcX4vcpLuOsLGPg+RDVkuczOSVFkv7/Kdn2EGf+y?=
 =?us-ascii?Q?wOWYzHcUeblTpQSGWbxIFyxyOay9bg9ikndmtVBCLqMxfuhTdMjewCpanHIy?=
 =?us-ascii?Q?mP7Z3NML42LizvIb/LbUui7T/5Qb2xWeN14Un3ckiOxewMdhL+sgJr7vtG5Q?=
 =?us-ascii?Q?J5A55RPQ7HA0jIDosaFuTf+xHCe6Exlt3HZ/YF1+V/0PRSDwpBinXlFfBWo4?=
 =?us-ascii?Q?4iXC7cQI50WMFXCFz9CIJApQzlh0GEEydHhNXbK6DHb1R7jQOdlzNs/BCW3M?=
 =?us-ascii?Q?51TGHaIi4C9VfYsVOE2q7cpRIQNsWbK+TmAqRCA1KIbnR7eQjwij8OqbL3nC?=
 =?us-ascii?Q?Lm5a6QVHw+QreA+8XH2oHxnyxKosoHJYLdpnphYBrwab4E8BsdshS93uH200?=
 =?us-ascii?Q?8cM2bA9Mdq+sjklNiVS2oR5DY7ogZjZ0QBd7B83389pHuPuc7Tc1+RKWf1wB?=
 =?us-ascii?Q?I7koG36DnyBQRpCsIcvmgliKG5QF+8jwcgIiyKPsCIt9JMBKIx2XZMEJuX+2?=
 =?us-ascii?Q?bkTKKcgTWZ3jUicqZwoo1SqntbmNp09i5xaDE7HiYUZm9XRLxuw5wXMof06h?=
 =?us-ascii?Q?rfxhOBKVkGNvjC0aWW7IicXWHjwj+QctMwwj5wI5DnnAeconJmJ2lFizQJ5U?=
 =?us-ascii?Q?3WMC/NslgRAx32NkdFZU5PhmyMqLJKRKVdS4NQsBR+edZl4a93J8RwLYZsBi?=
 =?us-ascii?Q?IdCZAeCci0+3Qlh4GuRjpLly/NxRpipCDVUrBPwtCyJ8h6SD0gOCk+GihSES?=
 =?us-ascii?Q?CtxqrD9N0K1YTH1GfxiOl3dvbJEQTZ/zj8qi38R5QawqQED7c2D1PRZkEjZL?=
 =?us-ascii?Q?1EkrhQkIGD3y0BFcQGf2EZ/Y/U8xVz51VTPdvB44nxdb4YTvq6Uo7g2dyvVc?=
 =?us-ascii?Q?5M+0CDlof53tyYOrrJF+AokPchbfM7z7a6QdCbgmYwoZPouLh5xh2kZGhfQY?=
 =?us-ascii?Q?h9qHNSSnG30OI9SGb1GqLWx0w1SSgkQeoyTinYJJ2i1nc+oRLyjEzMgrTIuW?=
 =?us-ascii?Q?Axh4Msdgy9Gm0v3JkIWEHk7OJnPbb4MAUQlqCr4wLxTD17wQVINMvQl+a+sc?=
 =?us-ascii?Q?fT34aMAsmdCjprvC3oyH/oWfHqkRJyuN8xNtVPBs/XzGj8xgBrJSYKu9/4jO?=
 =?us-ascii?Q?8vBR8T10U0DDsGhhK/TCw8+0BvCgfJVuqFVK1YhqetuDN1R2KLlG+t+sIDt8?=
 =?us-ascii?Q?5PxhgBK0pqHz2rriDs01vVh+Xal0uHo2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bf27KYlXYQitjtLv5VrPn2jgn00sLPWGm2GUzPE0dJ8fx7vtjGRN+HxI/Ser?=
 =?us-ascii?Q?X9SMfOlgsNZ2KLTfL4FBaOzkgPNRdD6HXfvwIIZiAmXLYU8xN0DDcnyb3gbp?=
 =?us-ascii?Q?fRMN9NjnDGR+zmYN1f44I25y27VdEjB13jRpPEcspDf63tLVe7jErHeAk0SG?=
 =?us-ascii?Q?3qexvbXB+P1iNuGERkB6K+37+hhUnx5SODNQfLIrFLR/QuJLewqG4GlOWpmx?=
 =?us-ascii?Q?Y/K95nbbbNDt+vpbOVAHv8rL2tzFg+pgbX9K+7MQjbaK7kErazozT7zyvw0n?=
 =?us-ascii?Q?64Wsz3K5JgovYAj4C3i9p+ujtkGdwnBmAOkBh1fJ9ErRIN2JEOwcD3xpwre2?=
 =?us-ascii?Q?nnnf9g0JqhGMFF4dksQaWTMNNYtf8kAPGipulhY5WubT+Aq+Ltc0ksfvv/rq?=
 =?us-ascii?Q?jtIYYhVOeNw/Sf7s3UvwzXev0n7OchU6u1FTHeq7zZQFzuNUiXrL1Gy5HWMY?=
 =?us-ascii?Q?9CtirKarRdzGOz7nh5KdVZHYBZP3Yq8VviQ/T1JQHzCA/ua+v7VZIpEUjgll?=
 =?us-ascii?Q?KAgyRqOLyryXxQ/mDeZHUrrxYTuITuC3+GAejiv7BjRXERtQYctEl5azC8/n?=
 =?us-ascii?Q?BW7vviXXfu50SkEIMVkSeXLwiB/DbIcCnR5agykwPRZL84C6z0uFKvEDL5nL?=
 =?us-ascii?Q?FsHQV0GjZqA6b7wjvNdOL0Bpadz7qFHdXQVGVc/jQwbkDCIJc5NFKga1rDA8?=
 =?us-ascii?Q?UfAIuIFMb23mNhY6CTGI+MpJRGwF7ZHvYMYwpDlfrk4F+PMGa0ytIIskcVDK?=
 =?us-ascii?Q?+08H/Fpsg7ImhI7C4EzgwkQI54+xKg4WJTANkpi4udoSD2T8STiwqZ02eF/8?=
 =?us-ascii?Q?ozqzw0lNL8ZML8xUN4mFu5PZA2sSafk6LDp4YyOAaya9CmOdd27UaR+HU/vs?=
 =?us-ascii?Q?FdNUeYY+bK6wL5ELf9+bEuM/vS5dJ0/TE9KMWtZpwrvPqSw4m5lahdhoCqZD?=
 =?us-ascii?Q?9MFdV9Wd+TO2Xr9KKo94QuAku1q6DE/ek7SuEQkVsOgWaiFwpr+35ou5NCQ+?=
 =?us-ascii?Q?NsQ3v2n7woDHp0p/a9w1LR34rVLQB1eGLL4Hm0pWButtmT8Xjs2wx3oboz+P?=
 =?us-ascii?Q?VeEYZv9eRElknQ+1TRmetyaICYsjc7ymG98K6tbAEJo14iqfxSnD+Bl+Gh1H?=
 =?us-ascii?Q?IR52sgUV+zgIb6gtrgPFPMnNQNMhhwRKEN4iQ0DRa8GQtrTW8OhKMYbzehwA?=
 =?us-ascii?Q?4gPmi80aI6Gw8fsH+zMlEabZaswoycfBjb6P6BDpWvwnkxTbPeeR1S7G7gjY?=
 =?us-ascii?Q?FHWfXBNUR/DG75248AlFjHk98qX9xSHgSI1urQLTckM5jW4FfvKT2eGT+xtx?=
 =?us-ascii?Q?cPhSc1tK8HPhunbCRaN9cGRaeqmvFU3idlJfuScblphZJkllBC3LEwaKgZMb?=
 =?us-ascii?Q?t7Uq3c2VL4muaRsUlWwZQYSuQyUDnnitV6uWRj93S1QSOmDpS3w90KWio3NQ?=
 =?us-ascii?Q?L48b9m3hgpCBssAOfvg2uMyolFnM1rGeHmvixB+JYMpefRrHQ8krxPBgIhZi?=
 =?us-ascii?Q?V3ghJo8LLLH5CwnQbX8pIYRehtjdskCUs+XaShWs4R7dAw53SUIuErgZznAg?=
 =?us-ascii?Q?Exr1nVvGNFtBEM3O1G2YMtreZn3pmtcu74WE6U6Vlxf3wPqkSU4J16jYz5g1?=
 =?us-ascii?Q?L/faRhQwV6fodvTgPfDolACbge8M/i2azfY4GGSrOYXtVWHd9jLFaEMnRLif?=
 =?us-ascii?Q?A34Jxg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6305830-084e-40b2-19be-08de25d57b9e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 12:33:16.7771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ABDWJkZOlkUt+ijR4x7Slwm4+d6v4I1XBk61SSKfkihJFJk36zPoSH4RJwcxGkdFHizqp8tWywblsILziiYJqEbkI9vujrQE1hIjfChAACk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7361
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763383230; x=1794919230;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+VjvONOjGmG+7G0GmGaYKIfdWBE1kPifsMcyeH+8cCc=;
 b=lkLde8DJG+RTBR6HWm+HPxMzVcQRikQ6tE3Fg1xGP9/dz3KTodYtTY4I
 bfjVQSqab4X2QcME5cyq1YCASGxP58XI4CbQsuSDVphOGGtkPyGqIotyA
 DrvKPVHw+zRiw52LOerbUKXH5EPaijbIUoEvKh7e+5qPT5DTFz5CpiUtA
 tU9/LrqZV4e/3a6PC0Yg+XulIntjsZuKvVc8LtGdOFz3nqe7cBLZVAEVL
 kDAEo9dTNvcBQuSyw07+2isb1CspsYXhHNKZSLsRzOeCn1gmuZNt7Jeym
 oaKGjczyfZKLnk91n6Kkn8YTqylpG7j6P5e/l6dKonf2xP28HVvhLU8TW
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lkLde8DJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device
 unplugging when rdma is not supported by vport
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 17, 2025 at 08:25:50AM +0100, Paul Menzel wrote:
> Dear Larysa,
> 
> 
> Thank you for your patch.
> 
> Am 17.11.25 um 08:03 schrieb Larysa Zaremba:
> > If vport flags do not contain VIRTCHNL2_VPORT_ENABLE_RDMA, driver does not
> > allocate vdev_info for this vport. This leads to kernel NULL pointer
> > dereference in idpf_idc_vport_dev_down(), which references vdev_info for
> > every vport regardless.
> 
> Please paste part of the Oops log lines.
>

[Nov17 13:01] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  +0.000044] #PF: supervisor read access in kernel mode
[  +0.000023] #PF: error_code(0x0000) - not-present page
[  +0.000022] PGD 1086495067 P4D 0
[  +0.000021] Oops: Oops: 0000 [#1] SMP NOPTI
[  +0.000024] CPU: 122 UID: 0 PID: 2977 Comm: rmmod Tainted: G S                  6.18.0-rc5+ #2 PREEMPT(lazy)
[  +0.000037] Tainted: [S]=CPU_OUT_OF_SPEC
[  +0.000016] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0008.2305172341 05/17/2023
[  +0.000031] RIP: 0010:idpf_idc_vport_dev_ctrl+0x4a/0x1d0 [idpf]
[  +0.000051] Code: b7 85 62 05 00 00 40 84 f6 75 7b 31 db 66 85 c0 74 61 48 8b 85 28 05 00 00 4c 8b 24 d8 4d 85 e4 74 42 49 8b 84 24 80 00 00 00 <4c> 8b 28 4d 85 ed 74 2b 41 8b b5 00 03 00 00 48 c7 c7 90 df 1f c1
[  +0.000053] RSP: 0018:ff8a55d0221d7da0 EFLAGS: 00010286
[  +0.000022] RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffffffffa10e7c0f
[  +0.000024] RDX: 000000007ffffffe RSI: 0000000000000000 RDI: ff39dab073e381a0
[  +0.000023] RBP: ff39dab04dc50000 R08: ff39daa0c08f0918 R09: ff39dab08372b7b0
[  +0.000022] R10: ff39dab06fdbd778 R11: 0000000000000000 R12: ff39dab061fba800
[  +0.000023] R13: ff39dab06b2f4480 R14: ff39daa0caeae148 R15: 0000000000000000
[  +0.000024] FS:  00007f53a027d740(0000) GS:ff39dac05ceca000(0000) knlGS:0000000000000000
[  +0.000026] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000021] CR2: 0000000000000000 CR3: 00000010acc48006 CR4: 0000000000771ef0
[  +0.000024] PKRU: 55555554
[  +0.000014] Call Trace:
[  +0.000016]  <TASK>
[  +0.000019]  ig3rdma_core_remove+0x1c/0x60 [irdma]
[  +0.000091]  device_release_driver_internal+0x19f/0x200
[  +0.000035]  driver_detach+0x48/0x90
[  +0.000022]  bus_remove_driver+0x6d/0xf0
[  +0.000022]  auxiliary_driver_unregister+0x16/0x20
[  +0.000027]  irdma_exit_module+0x58/0x64 [irdma]
[  +0.000087]  __do_sys_delete_module.isra.0+0x1b9/0x310
[  +0.000036]  do_syscall_64+0x84/0x810
[  +0.000024]  ? clear_bhb_loop+0x50/0xa0
[  +0.000025]  ? clear_bhb_loop+0x50/0xa0
[  +0.000022]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[  +0.000024] RIP: 0033:0x7f539fb34abb
[  +0.000058] Code: 73 01 c3 48 8b 0d 55 13 0c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 25 13 0c 00 f7 d8 64 89 01 48
[  +0.000064] RSP: 002b:00007ffd969dee68 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
[  +0.000032] RAX: ffffffffffffffda RBX: 00005634554d36f0 RCX: 00007f539fb34abb
[  +0.000028] RDX: 0000000000000000 RSI: 0000000000000800 RDI: 00005634554d3758
[  +0.000028] RBP: 00007ffd969dee90 R08: 1999999999999999 R09: 0000000000000000
[  +0.000027] R10: 00007f539fba5ac0 R11: 0000000000000206 R12: 0000000000000000
[  +0.000779] R13: 00007ffd969df0f0 R14: 00005634554d36f0 R15: 0000000000000000
[  +0.000716]  </TASK>
[  +0.000698] Modules linked in: irdma(-) i40e ice gnss ib_uverbs libie libie_adminq libie_fwlog ib_core idpf libeth_xdp rfkill qrtr sunrpc intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common i10nm_edac skx_edac_common nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp dax_hmem cxl_acpi cxl_port coretemp iTCO_wdt spi_nor rapl intel_pmc_bxt cxl_core ipmi_ssif intel_cstate intel_th_gth mtd iTCO_vendor_support mei_me isst_if_mbox_pci fwctl intel_th_pci isst_if_mmio vfat fat intel_uncore einj pcspkr i2c_i801 spi_intel_pci mei ioatdma intel_vsec isst_if_common spi_intel intel_th i2c_smbus intel_pch_thermal dca acpi_power_meter ipmi_si acpi_ipmi joydev ipmi_devintf ipmi_msghandler acpi_pad fuse loop zram lz4hc_compress lz4_compress xfs nvme nvme_core bnxt_en ixd nvme_keyring ast libie_pci nvme_auth polyval_clmulni libie_cp ghash_clmulni_intel hkdf libeth i2c_algo_bit wmi scsi_dh_rdac scsi_dh_emc scsi_dh_alua dm_multipath
[  +0.006464] CR2: 0000000000000000
[  +0.000823] ---[ end trace 0000000000000000 ]---

> > Check, if vdev_info was ever allocated before unplugging aux device.
> 
> Please describe your test system.
>

Ethernet controller: Intel Corporation Infrastructure Data Path Function (rev 21)

MEV-TS card with FW v2.0.5.

> > Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, init, and destroy")
> > Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/idpf_idc.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > index c1b963f6bfad..4b1037eb2623 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > @@ -322,7 +322,7 @@ static void idpf_idc_vport_dev_down(struct idpf_adapter *adapter)
> >   	for (i = 0; i < adapter->num_alloc_vports; i++) {
> >   		struct idpf_vport *vport = adapter->vports[i];
> > -		if (!vport)
> > +		if (!vport || !vport->vdev_info)
> >   			continue;
> >   		idpf_unplug_aux_dev(vport->vdev_info->adev);
> 
> The diff looks good.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul
