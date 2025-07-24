Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 706E8B10808
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 12:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E92240E5A;
	Thu, 24 Jul 2025 10:47:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TLgtR2UBuokV; Thu, 24 Jul 2025 10:47:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70A0D40E5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753354072;
	bh=lsP3P01v8DMJWAArOlY9ylE5OpsUXKc40Abt05W0lSM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=orZ1z9SEIfySFtkmAnCH2MoKNCt0E5WowWjv/N93tl97HXg1cThylOmTBIdn4SWFM
	 7GXu1Ou3T1GjT8MoJ03FtcUoaqcdvLWnvPwYJPBrJu/D+RyrM+5LBThmZyzOKdf3ke
	 x+FNRs2LcRgwEQiNYMiJWyzUyvJ5w7Tvzdnh7rxaveBDBuaa62SD2eElvqltYTJdPW
	 1ADzkQs+2rTjGULWYg1PjVJkSvhskwswxdo7uG3V03UBhD5hNx5C62G/3dqcdJ0XcL
	 rt8p0lzcIlqn+qBclmxyesP7VmkKvTOUsnrnUQJzNNg28aBdj+HvyUn5S44UGsqKVb
	 wprf/stftmjcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70A0D40E5F;
	Thu, 24 Jul 2025 10:47:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F33F1DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4A4B40D4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:47:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9M1rIcMQiR0J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 10:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4E7DC40674
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E7DC40674
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E7DC40674
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:47:50 +0000 (UTC)
X-CSE-ConnectionGUID: /AVu36ONSJK0oZoCRob/Mg==
X-CSE-MsgGUID: yJcpgT+4QJaE0+M12Q+fGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55511951"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="55511951"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 03:47:50 -0700
X-CSE-ConnectionGUID: yAWYiqpMTN+h+3Rqy4/mHQ==
X-CSE-MsgGUID: tuCM+rmdQK6sIIKwkv896A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="191074530"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 03:47:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 03:47:48 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 03:47:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.75)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 24 Jul 2025 03:47:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fId9YeFMk3LAsVPMvesoXbJ7HYYija+fzNwgFwQQnKuLl6B/WWDeeVDDFo5qFxW7hljQ2p3uV+rE5yhFyUcZHRZNM1E/NkP3Myep4Xc5O/ek/8ptiaeRYEGZLZE9nKkn6PNiqikM027OkiRbEqTsMKEVF8YqMZcugIqHaboqkmpI8U8aab/UW3AS1hqBmINQek0L3Hghx4Fi8MHca5yftmZ//4cuwiw093vwgFRSFquFDmtYp4wOZFs86wDXt2CAzbm1VK8/RDw84yS5EIB69ohnobH2gwvQQAaR/wVNe3SoUYw102AVZE2e3xsDOhtF/YErppXhEvEW1OUZEdzsnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsP3P01v8DMJWAArOlY9ylE5OpsUXKc40Abt05W0lSM=;
 b=iUE825YSKdXqPpI5bMs0SipSjEatdt3dKCcI24a2sDx+ufkouSK0amhx61SVacXPe9MbhSHY222GXFktvgfyFmFstlvZVHFo8Pi/qE4UoiiBP1F/lQTppMVgzxsHd4z5Uno5VvoBZrsg51vEcTVp6xgKEOwqCYldziwt63nBBTUOTDgB7hqpEd+/KoOFrQ/cveTyZEMW5mrIYzh+Iw3PkOJu0f3HbleJi4RQHvIdaf+VToGbP4TtvqZuGVro2Y0NpLq6X/NFu1gOIXoILqFNW1xFH0wdanyEHMThNelxN2Uye+0jUFSdYG1OznbvYoj93UWpiNzqPTWN/7SXUNvtZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN0PR11MB6207.namprd11.prod.outlook.com (2603:10b6:208:3c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Thu, 24 Jul
 2025 10:47:45 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Thu, 24 Jul 2025
 10:47:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Rinitha, SX" <sx.rinitha@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "andrew@lunn.ch"
 <andrew@lunn.ch>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G
 speeds in auto-negotiation for E610
Thread-Index: AQHb7OKCOvwkH5j2nEOH+xTzjK5FpbRBNfcAgAAA3nA=
Date: Thu, 24 Jul 2025 10:47:45 +0000
Message-ID: <IA3PR11MB8986C68BE894198CB16F6C21E55EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250704130624.372651-1-piotr.kwapulinski@intel.com>
 <IA1PR11MB6241A1940E8E31B1F78BA87C8B5EA@IA1PR11MB6241.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6241A1940E8E31B1F78BA87C8B5EA@IA1PR11MB6241.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN0PR11MB6207:EE_
x-ms-office365-filtering-correlation-id: b043fdc3-6ca5-4560-6d22-08ddca9f85f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Pll8H1GXSLYGewOY+FvOhnt9CR5kuMBO95krYOn3FkFuUeuQw1HvBCRdjx6V?=
 =?us-ascii?Q?MYMf07P7iKxBIl6QsCIV3Emi94oOoNNiSLLD7vGxk/za/LtUoCha/9po3HLc?=
 =?us-ascii?Q?bvMH5PAO574k+9ikvuZp5x7vzVYHiKFyt2l0gyzk/wY1Pp8yq1v9N9sdk3HX?=
 =?us-ascii?Q?JkNzpPH2VcMY+WaKOBLKnRCCmAYrU8mIzeq0j+vCewGzUlH/pZMktRtdDc/y?=
 =?us-ascii?Q?1K5kcHM1LrE9wZqCbq0gMnpzuzpWezUUeUTXEzrR38dB6WRZX+b8sfbTw7od?=
 =?us-ascii?Q?gPbiaAQzh+Hg5fNOyRfW3NvP3b1DmcIdX+GJgLoKjLkg4aL2w7BG7mH4P5sY?=
 =?us-ascii?Q?f3jSoEOTZmzJnfur2h8wPZjxTn49JkN15ZCbeGEbPMDM5XmaRzSXwRrHmFUL?=
 =?us-ascii?Q?QXNSj9powxs3D492phJXFfRYM5cdNno1Nl2FzlG7qw9KQEP7tDuvcZ4pGCS6?=
 =?us-ascii?Q?LWEgHdHA6QtrE6a/m/jo/QVxw4T4GUg2ygyUlYudq+ivFaayT857bhiGch/J?=
 =?us-ascii?Q?e07AuKcQB+wUkyRtvj8kMAPedWBw7kEo53debC5Ffrz+IiReg3TjzoP/6tsM?=
 =?us-ascii?Q?6e//h1C3LSJH0ZrjLcZvNY+xRdoY66DgI40TKsDDaAgPOZ20rGv+XS9HuXEf?=
 =?us-ascii?Q?VFe5Y7PSRz6NznvAjtJ4AerQwYNsMtp0L0a3LFw5RM6XolwCU3F3ZFi4w7Io?=
 =?us-ascii?Q?CAB2LLH8Lz0P+piCexL5Q5xRMsoWw4KM3rETlur5mZUXfz+dIje7Str4lQSJ?=
 =?us-ascii?Q?63HFR4oAtz9WUFKQUlej6SNlXR2ohbeURle50jCLeP9dJHq19caJXkHV7wVU?=
 =?us-ascii?Q?bSYI+QaZBoDuLIA9YvGVYNbrEOQ8QIjoQ+MMzFn6YQWApb4T/wheyut0uGzJ?=
 =?us-ascii?Q?d5+jp0mgN3r0AmeOFGn2+nAclp0vAV01jQgnZ7/tF65ccvLuUKH9YE5jmuhy?=
 =?us-ascii?Q?Hnaip3lMFq0CZeYtgLh69cj7ZF8Gxk1RDfF659lSWuADBmDu1OCZNozFfZ0t?=
 =?us-ascii?Q?ImFgvk46YjZtsqy5+I2NBSefFvmLRFCgrG/RmF0wnKd5zLSrRIHiXD4PuPs1?=
 =?us-ascii?Q?gWQGv7QJmOP8JXbrvvF9sk2ITeCXSvrDxYBmm+ihMNW4Qxyr6HseXAsYEWA8?=
 =?us-ascii?Q?UHGSemI6i418zODGu/chz42NMeAyhqZi54VsSRwAnph0hPkuciLuyxLqDohb?=
 =?us-ascii?Q?eQVfldZ25OKbz9J1Qf1u6oa9t9Iw/eZvGLdYFLExBuO6/khyxyNjPt7h46Wb?=
 =?us-ascii?Q?SAEm4/Tc+jNftt2XbE/opWfea9N9enaWoLoiLxUqO8ynK8sl9Z67di2VXa6i?=
 =?us-ascii?Q?FweM+Mk4eXRypUBXkRsEPEYmXUdQ1MXCCppx+AYEirmOxUiZZcWqJJXrcc0c?=
 =?us-ascii?Q?z4qRXZiLE+h5Ho5BITRI4unAY/JgSN9TKcKahbO3lk0BAo0Fx6oqw2iUJ4oV?=
 =?us-ascii?Q?eKMkGatZ9OtEAvkdj1EgQhOe52mzOGiLB1JKvhb+21KNs8dqnIEcuw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?s+hA9b2HAH2BLgTwBWa7rn76jB8ax+MRsceE6gaItwVSnfSulgAWCVaEzJch?=
 =?us-ascii?Q?RcpWB/A84A44eQY9ZtX73tJKS/dJoqWzwT9g7Ncam9pL0EbtHmWRzl58f8CR?=
 =?us-ascii?Q?zt6CTMpaWFKqHduDM7I85vtZh0DnBYEusqscI2MQBJvajfBZfhgy40PKKd1k?=
 =?us-ascii?Q?YXuJREsinnjFpQ+l+k/w8pcBCq08B2APd9/bWSvQfLW5ffif4hXqmwzMGahF?=
 =?us-ascii?Q?hqxJcb2iigkv6Lpp6kGU5l1cf2jyQbWCQ1Q1bgsf7X7d67U7BrCumqCBWvPD?=
 =?us-ascii?Q?7M0bLGJv6D9mPF247MdUi/IlYXIiJ1bs4YO/YgKvnLYqE3fxLc8bENgbLsBN?=
 =?us-ascii?Q?F1GoHigqzYbZlvQ1SQ/dub/OcfyXrriEnLBkhyBRUX086tVZj4f/SrHg1uLo?=
 =?us-ascii?Q?eTe9b5jijGAUXvYtPSuAh0O8GKt2kAdYAyyJ+M7nIzctUBDp0C2tjV8vL1qD?=
 =?us-ascii?Q?miRbxSlaHW4kC+iawYkZaNT5AHNr4UcsyO+fMdaeO1Gy8GbQnEUFOpOPt0LG?=
 =?us-ascii?Q?cUnoVP0Nf4RDbnsxu57PhlhGRFBxok9ZLgLQpRgNlbwDbmVrHi5ONZh6kzSl?=
 =?us-ascii?Q?h7rcpdPfS7DGPnG1Jrwb3L0A+BYYDwJTYSi+H0X0t0UH11GUrHRDzYrMoC8i?=
 =?us-ascii?Q?bFE66Zn4qAVs7AuiR8le410FNNV5+CMLpOB4BD1h1w6EHzBl1Gr2GO9fNQ5S?=
 =?us-ascii?Q?wZAYHCSVJXM7Ng+juHlm3a5LgY7TZ/ryFovUdtCDqeKQeuK/CdG5kGulO6Gb?=
 =?us-ascii?Q?9IU7XfoUhJLwIJkIDhToVtnYc3MD7y+P5xX9HATp/P0nwcnaB+lVYIEnu7iI?=
 =?us-ascii?Q?GXW4CSJLnPab9mj5UVUyyQ7wUKbg1RMN8VxsK1P6a8jXfKuggl1xKot/QeLB?=
 =?us-ascii?Q?uOH/Bsfo6TLtMNrJ9bhTNp8+vh7fMbTfsQPi0uCBYd47Y8B3ANgXbdPgd6bU?=
 =?us-ascii?Q?TPjavoqAlOx7vJPEUt9b1080fnPiaG3lRtD4zE74lMUcDdqiUPWmTXi9C003?=
 =?us-ascii?Q?+MNJjF1UHg1gtdloPJfH3v2X+PogfFXBCjjJiGZ4ZcnZ3KqPZFYqPBDKfVk6?=
 =?us-ascii?Q?rWK34e31K92B9XqMI6APGTWP5V6sfPKiE6fFlpFEH2cSV1Z2IZM12WtbAHIq?=
 =?us-ascii?Q?e6elMB3v1U4HANcKQyhmEGSWaKFV/LddGusZDwG+/Jni2ddyDuu84oOu89q1?=
 =?us-ascii?Q?OYvJTprmIYLIfJkq2Fl5eLFAtQ8Iy9UbSnEbrvg+FENKU3uvwJzzT4UiLASY?=
 =?us-ascii?Q?b4dRpvNzBa66LWA+kGHa1CHdF5vitZlZJSNrQ80yCF4Mf6moLDwKdcccq9MD?=
 =?us-ascii?Q?Jl6UVnMoQH1wd3wi+9DAImdkhKZAahzQM7pg+A0RYtwXNvgwhdTp6mPDT2b6?=
 =?us-ascii?Q?uwB22iyKFG3W4vGyz+ziaLuOPRhZph4OMdpHsB5aRpZGYtr1JBxVijYAQQlJ?=
 =?us-ascii?Q?K6FFneoaiNhvbTyiGL58jsURA3q41MH3AcY3iz/c3rzw1gGatiKc0Qhq0f23?=
 =?us-ascii?Q?yMZuVEmZPsvbl9YbCH3w2YDRFlhYH/BBVabBH41cBIXoVnsTon6DZFamz4LG?=
 =?us-ascii?Q?IMPQCZUKbJ4nH8+PgsqSieU2Y0d6XSTb9ey1SGfPcONUXyrixrPeIVvEaQDr?=
 =?us-ascii?Q?tQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b043fdc3-6ca5-4560-6d22-08ddca9f85f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2025 10:47:45.2071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 73Bsf/Zea9C42DXhQsblIPeGDT7gwTiXPeswX4lWg8oWMOdcAL/TE5bF/SP61TSckM1U7elykZ+mao8bZw7t4qyWhGgYP4OuL0BplIkrF7s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6207
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753354071; x=1784890071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X5ihEhE2hwVde2hAqNwvk2xEdIk87JkRdH4iGOd/tDI=;
 b=XioS2Kdj7p66gccGhGuNW2RKAB6aYUP6KrNSeqN1N4nY+Jw5ByQFITc/
 b31hM8Uvnw9P8K4GuPdQKLS9UC5PehNr8Gr/PcUBDaT84SqU6w+e1vkob
 WQXThgO7PJnj4ySRMdICtBf0wFaL6xXSmPSZQTdGh9RQ7eMfoeFITstHY
 OghFo1ykFxMpQMZfTqrWvdbhsjGjAX9f7Q5R03wak0U7tMFHWN6aLoKRZ
 pVTI77sslpOAOXAd4SLqiuigzr9NG9lAni+JWwI4Lu9gMYWNEWDiwQaTS
 xBvdeYE+yaWtPCsSeHrD/I4JxbT3MlvyXcVbVaJpR1lVauzSAUKvEKaIY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XioS2Kdj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G
 speeds in auto-negotiation for E610
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Rinitha, SX
> Sent: Thursday, July 24, 2025 12:44 PM
> To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; andrew@lunn.ch; pmenzel@molgen.mpg.de;
> Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and
> 5G speeds in auto-negotiation for E610
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Piotr Kwapulinski
> > Sent: 04 July 2025 18:36
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; andrew@lunn.ch; pmenzel@molgen.mpg.de;
> Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> > Subject: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G
> speeds in auto-negotiation for E610
> >
> > The auto-negotiation limitation for 2.5G and 5G speeds is no longer
> true for X550 successors like E610 adapter. Enable the 2.5G and 5G
> speeds in auto-negotiation for E610 at driver load.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > ---
> > v1 -> v2
> >  More details in commit message
> > ---
> > drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 35 +++++++----------
> --
> > 1 file changed, 12 insertions(+), 23 deletions(-)
> >
>=20
> Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at
> Intel)
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
