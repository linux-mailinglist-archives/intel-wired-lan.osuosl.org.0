Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VbbCK7Q6TmqQJQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 13:55:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 242C57260FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 13:55:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=f1CrntTT;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA12F81EED;
	Wed,  8 Jul 2026 11:55:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S2kPKS6YLPKV; Wed,  8 Jul 2026 11:55:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55CE981EF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783511728;
	bh=ll2xqUG4hfW3T/TtAxFjjGamZdAUVN8DV5kX0IP4ReQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f1CrntTTqPDC6hY//L/kb/M0ygaPV/Tq/9FCWzT6nbgYAZvrfkdndulZr9Y5FjJxb
	 1hheHfF8CRJKReJy3aDoOT6mtEc0IblGVotB7jGQEqYgJ2E2mCjbUGbMUuQOH0bSyr
	 9D6ZJbBdv1SpBHi9mvPp04w6GCM7jd9bS6/59Rfu+2xHCWVrqDtPfVw6TsEBC7CshU
	 OvNsVD2VbpBVGuzCujuTT/T2vAXn9YQDyTWCUJ26tXELZyDkhJJQ/0rRfs6zej6QfY
	 I42u+ezyQIglDPVCbuXK1RYcwiCqldb88hcnlJE3i6q5A+HM0Dl3phbe1kdWodpmiX
	 4vc3upkSUrThg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55CE981EF7;
	Wed,  8 Jul 2026 11:55:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BA86B315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 11:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A05E340150
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 11:55:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwHxmU0io4FF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 11:55:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D19F8400E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D19F8400E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D19F8400E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 11:55:25 +0000 (UTC)
X-CSE-ConnectionGUID: OOnGGfN8RDK2PcoRWl/GRA==
X-CSE-MsgGUID: pMRwyrx2RY+J/ztxnZ4BPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84362353"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84362353"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 04:55:10 -0700
X-CSE-ConnectionGUID: U51T0NhcSf2Wy839ft/hFQ==
X-CSE-MsgGUID: gn63LVeyRDCovA6HcM9Lew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="292464073"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 04:55:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 04:55:09 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 04:55:09 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.52) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 04:55:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jlhjaz5UOWnbqTYJXBYogaDshQvKuPtwxXggdwUT+bbLbiBT7skFZv7pkaQB6I/vS/7KcsNWqATbbp9agGpJ/yJSfd9XrtLxZe3+KV83gJy+xkflKG/YaMp3/hDqdzvnRaShY6BaHJeVUIiCGY5h4q6jXJonzSjvcPhdRdghYmguTjxHieRkorChyjnEkTd1VoNaVZKy3WlRWG308qrHhSMSEWQUuBHMJpqld0Q+83eFbRsqf/UsIFoZf+gfUVod2IQ34vuSn0mMzmzXkST+wrD2mKC+Nd/V75gLAYSB9hY8kWnN5daoW5faQA0hpoXS24/lk6tBvH4bRx7JpZ5AqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ll2xqUG4hfW3T/TtAxFjjGamZdAUVN8DV5kX0IP4ReQ=;
 b=I97xb6v8SI7w/Vm3XnilgnvnT5KIEOQLz5qZKe5qBOSbpYU2LcjYeQEK1jd6rQZtqr0LdIU/0spClyKangQWBlalo54uNEBEiaQKau9RhoTiQgNE/HpTO59XvIdz5Q0J4o2VwEBR6v7NW/rDOkPDj46tzfd9lQAbnshHJt86QdmtCpclApY6ub/VcQBAEkf7t+Ez4d/sAH0Ejljv4hYM3gl7vX+L/ExJ2/avWx3JylPYKxBtnkm3bDpkUyy2V8Oi1VXtKdszLFtkfKQ93+z1H54BFjrdqXXaVS18vwdYa0ZzmLWVnzq40v05NGi+9hC9Ff5hpDvUlO/1sDwR23UJEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB6786.namprd11.prod.outlook.com (2603:10b6:303:20b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 11:54:56 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%3]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 11:54:56 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: prevent tstamp ring
 allocation for non-PF VSI types
Thread-Index: AQHc7WcGljCL8KzAu0upMMNCORoKWbZjxL+A
Date: Wed, 8 Jul 2026 11:54:56 +0000
Message-ID: <IA1PR11MB624128242D1E9C397473FE7C8BFF2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260526154755.362476-1-paul.greenwalt@intel.com>
In-Reply-To: <20260526154755.362476-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB6786:EE_
x-ms-office365-filtering-correlation-id: f7bdd0fb-b730-407e-8823-08dedce7baea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|18002099003|38070700021|22082099003|56012099006|11063799006;
x-microsoft-antispam-message-info: be3l4tjBjfbqDKNA1wSuSUvqIJIrymgqubi9oDFrb6YnuX0ryGObS5m4qki11B6RByAYdQcv2dWvG2DvqugHXLYP6p2DYoUppiphsxy2bVL4ojpGH4pVTTtc6kWmq0VH2W/lY/RMsQK21+5NUXlzVbRymBUp96qTK+5/MzMW4sCmuAD1sMBLPqhMQ3fXmzlAv680SpBX+wN0zlF0gbFAn9/2Xsu4mB1Wcwrf4umCl7OA5b+qwaRomHsoxYUlsHDgwX6dHlbHdpPBswzHeKI/sSfZmTQeduMn8Omp6mF5WgI+7Kl/++gcE1sXHZ0hNmQ59OPhROYLbb4F+oSSV2SgEh/s46DlglXsehxIFILfPGwxpMrQ9OiqKoIzPKhesp+5a+m/6VPbLGUfLH/ysln5iF0WijSPXxytYKKuH7uvko++fN1LcBUBiht1E5iJCdwopqRGCmX7LDh2ZAiSb0oE3MUn07YW/WWLySUM8rBSXVCl6sEFOwz2pFXs598TZeny8/omRht7x4LVOx3gs5QL+HZwXIYHEMFdZobaKEUSxMK73fbyuMfbhA1XOAIAi61u43U1I/UsdNwLoJsGLBa2/CuI3+EpgPC2HwN2B1MTtAjod7Js/IrJCrLNZGDxgwsborJHOsbGPqE3v1WOj+BCK3zZJASVQUP28M4j+5dQb/ZbZg/9GvQ4rJ5C5NT7dIyngybF/zYKWNNIKxMaiIxtRl+th2eGxSL2svTafFJBT9A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(18002099003)(38070700021)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+oeytoPuQgPSmPBhFQK/GfdSL21OxuHBRo6f7A1exzD/q4UBKz3NLVlyXk6V?=
 =?us-ascii?Q?slWWgHU1H9k0uF4VOuDfU5Qv5DkvFOdAS/IUevlPRVDRSLhSxwqK4L9r5GRv?=
 =?us-ascii?Q?fY1CDMP19O0DRV8Oyt6lM6DP3J511Ur5f+knGfBYHHpIewcLKyboZNJoTecc?=
 =?us-ascii?Q?XNlrRMfPqrGTF3PtNwGYeuvzFn8TqAlJvSzK1FVZCQZDPzC3J4BL+4H7aO8l?=
 =?us-ascii?Q?D0Ya68C/ycvQEmfQ8dBWiwL7FWI2xZu2NoQ7Ei19/umuofokxmHGIqRHnrAe?=
 =?us-ascii?Q?qwu0IHszXNyjHgOyIc+8hqNMhSJDcd3UjqSlZkxepRvoFsgQur+fqkmjorUf?=
 =?us-ascii?Q?vErqcivevxkrle11yZ7tjO6Wkx33gQQ7COjMuVYWuD/vl8CPF40q7bdD535y?=
 =?us-ascii?Q?/UBtzuNRmR3na5MB/IjqOsWHvrkvlkmOqo8H+XlmZaAmJpsM0Y6S7WnEYLnE?=
 =?us-ascii?Q?fkuE91jQqauvS+PZxUvPpJBx4y3FqQxJD7SoNSjWrLCUzKCuKIFtFbhlIIsq?=
 =?us-ascii?Q?PXYw9RBk6eQJWk7Fc3RRTItrQQxM+KmbZtqPaHO2OFa70nDH+tv7jRPvvNdB?=
 =?us-ascii?Q?/d3oXdGQua1JReMjROm7bcRwAeVlcFj7tG2nP4ClJdTz6CpJqSrF3Jz35mHd?=
 =?us-ascii?Q?2B03UUv8dd0CJ65j7Gf0XNCs0nRxaLiIbwx/dGixtz1TV2vAPgeV51UnSHLI?=
 =?us-ascii?Q?uMfg388cRG4G9UueJu6rHh46cV24dYJuKOOKk2oEEqjP9lYsfOJOXP5/ttlG?=
 =?us-ascii?Q?JUVbIrCgJCCcHoS5/I6kpiwKcT0SGKNvi64ns/GE9tcLvCcwgNAdj2ANm1Ep?=
 =?us-ascii?Q?LuENzzeWjBfFKdAyAY/3Qptq1EKpXwUs2y0/hawBqaZivsRKi2Ofj0J15B0Z?=
 =?us-ascii?Q?dyghqycigfiN1ohf7Hc3OWioGQDR313Pr/vTNP7/KjWzIy7e67/h09VaSwua?=
 =?us-ascii?Q?uRo/v5C1Geq+GJN/+kS1HgOqJI4DPlKdv5NzYsVsxCvfZ0FPu36IysAJLYiS?=
 =?us-ascii?Q?rQHm9RbhbKpyl3tcEEF+qciy6HEoBmr9f9+kXwP1r6eXC9l2bztds6Ch6Zen?=
 =?us-ascii?Q?jfvvFknF9XKATT+442dr0KNi4sCmkTpYoxln4d1Uo+IHNxsA64drgvkBglie?=
 =?us-ascii?Q?z7J7VSs7MawUmV/YH6gwdAwpkNXlMAKMTmB+3Wc+yELBtY4mKVSX/HeS1/pC?=
 =?us-ascii?Q?DZKkhAU9sFGsL0lIXKGUrQsrQ+7ZPH8sYkLYjS1ypcm9o/U3yrqFW1Xf2SmI?=
 =?us-ascii?Q?35wiFZyg5AmcNzOwCkOLBTNIWEkrHx/w5Cn+dxY0mgzcYIXw0kuQYdN4wIN8?=
 =?us-ascii?Q?kWkmqg5MDnNB1bOwKQu3Jcb3go8RmsxEDdIyRQFbNSS01ILWlYG5cwA5F2xi?=
 =?us-ascii?Q?zQDf1G1YdKpr80AXhhvM5J5CR8ctoGLHReGI2S6KK/P7lmrlKIQeXltVz7Td?=
 =?us-ascii?Q?I/SbFlBdAZHAD3cccc2lWUEnfd8DIChDoH2B/R+SkxQ5rgr9+t+CnCAflblI?=
 =?us-ascii?Q?haFAsxVFsLu8tvYSwKycT0qcVdCGGaYn0TBR3h06yPkMM1S9VwQbDuRDHig4?=
 =?us-ascii?Q?1JiPHCB7eedOJALFy+y1YzEJLJNQuDAuOxpoX/keHY5BNQc1pwH9YxY7Cd2u?=
 =?us-ascii?Q?hTT1+aTmpp8/0LwZj2JS51fEyQcyG0anpedHdmciNDhn8073RRmlV2bFHk8c?=
 =?us-ascii?Q?lZYsq7bXTljAQGwl9dpXzoWRfMs5WOkst0+Lwgz+WVi4w047?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GqXFalXM6oqGYns5N34wsygfkcbT0y+VuIWuhMsfDF62nYQvRtdL6V2Y3xUe57bm9CtsQnNgVTH/pkMyaqdhhW6bv/3w0T05L1CHpY2ZGE+HyPTWCvRRG0QRqff/B6SAoNj8QEv/5MRyiaIo08WfFJQdZ7t6p4Rkub7FLnfKPIEqHhVz3iXHfdbjM0vzdCuWqh70xl1UhWcFA6MT4CcdK1rSEUMMHC7yeXeD8hmm1+msEusUJLC1ICXDVF9Owp6D9UyTfiJNKGRiqIOi9biRon1+tgsWqW+k2JhhBmFXxoPrEeRZy0BP5CEyBQfdx5wzwE3Xe+TonygWSVdtjumY4A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7bdd0fb-b730-407e-8823-08dedce7baea
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 11:54:56.4645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HYrwghQW6jturf0Mc1sgdsLDX+wdVjyyDmKZcFjhEDcwYsAkXilm6BgINtqE1IU2P0ntOiOX5USK7NCJdrd3oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783511726; x=1815047726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ll2xqUG4hfW3T/TtAxFjjGamZdAUVN8DV5kX0IP4ReQ=;
 b=CYv4/Vl0YXPehi8e7JSZlIJaNaRd10ekzjVL6nceWzUQrfAJFD4vv0m0
 fro8V5D/WTXrRv7981IPnKmPHUA9Kl/zH4A2C+pCWvZCdHQk7M6+P6TrH
 K3zUk5A9AlXrvQjV4YVaXZBetZbmidhSP/h6L027xXeO6eMzE6W32hL9s
 rNe6e0KKxS7R6bzgTOfihOjK/xyGsgCthDJYUPNU3vZR8BrDrSAUlMY39
 20rTK9Yj3Yc4RkOjGn/Y58CgCxn6qpg042BjMJ9IVojojNk90B2U4LO1B
 C0vsFR1fqxaPCKOjITfzFYUW29EXSs2qoNpfH3H3pmFKHyVj3BRjnugUh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CYv4/Vl0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: prevent tstamp ring
 allocation for non-PF VSI types
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:paul.greenwalt@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,IA1PR11MB6241.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 242C57260FF

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: 26 May 2026 21:18
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>; Kitszel, Przemyslaw <prze=
myslaw.kitszel@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.=
com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: prevent tstamp ring al=
location for non-PF VSI types
>
> The pf->txtime_txqs bitmap tracks which Tx queues have ETF (Earliest TxTi=
me First) offload enabled. This bitmap is indexed by queue number and is se=
t by ice_offload_txtime(), which only operates on PF VSI queues.
>
> However, ice_is_txtime_ena() does not check the VSI type before consultin=
g the bitmap. When ETF offload is enabled on PF Tx queue 0, bit 0 is set in=
 pf->txtime_txqs. During a subsequent PCI reset rebuild, the CTRL VSI's Tx =
queue 0 is reconfigured and
> ice_is_txtime_ena() is called for that ring. Since it only checks
> pf->txtime_txqs by queue index without distinguishing VSI type, it
> finds bit 0 set and returns true, matching the PF VSI's ETF queue, not th=
e CTRL VSI's. This causes ice_vsi_cfg_txq() to spuriously allocate a tstamp=
_ring for the CTRL VSI ring.
>
> Since CTRL VSI rings have no associated netdev, ice_clean_tx_ring() takes=
 an early return at the !netdev check before reaching ice_free_tx_tstamp_ri=
ng(), leaking the allocation. Each PCI reset leaks one 64-byte tstamp_ring.
>
> Fix this by restricting ice_is_txtime_ena() to return true only for PF VS=
I rings, since txtime_txqs is only meaningful for PF VSI queues.
>
> Fixes: ccde82e90946 ("ice: add E830 Earliest TxTime First Offload support=
")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h | 3 +++
> 1 file changed, 3 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
