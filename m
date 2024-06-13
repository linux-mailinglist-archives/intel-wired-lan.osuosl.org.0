Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D12F5907587
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 16:45:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B9D74098E;
	Thu, 13 Jun 2024 14:45:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zNz278FhWdps; Thu, 13 Jun 2024 14:45:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18F8840985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718289941;
	bh=bbouUaCtb3OSADW0dLblq4LRkxDBBQHfR+wYRhkuynU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wT2h1avTzf9SBsBo+ZJerRJe2QwST2ZjF1W/A8VrZpk9qMbFoUy8cbpx2DC/1fBis
	 jFV+Mbm6qbK1tq15xKm7KRto8Hz+ueifQT7qoxtb8eW0Fn14MIlHhx6X67jKwNXQwx
	 0KqDjgs5AlWFRSScAlHrIZV474x+mle8B2qkyXTclb3Y/FT0grnrXfFRImF7/RkbJy
	 29PUtWV45uU5+GfjRwRLKRN1Grh2bQCwunXBhkHzE7ywkAG/w0Zy6VIiW8JFmD0twL
	 DaZn2qyOy1SVSo1rGyZ76y/f0eoVAP4Yrforwl2I6bEF+UXEwWut/gU6TVLeob1bdi
	 EKryx3iEv95mw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18F8840985;
	Thu, 13 Jun 2024 14:45:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45F811BF34B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3192D40981
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:45:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eIgtJiLy9M-M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 14:45:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=tony.brelinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 21F4640157
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21F4640157
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21F4640157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 14:45:37 +0000 (UTC)
X-CSE-ConnectionGUID: xQHEbCK9SIWnGeThkcr40Q==
X-CSE-MsgGUID: 5O+ttLGmSFaS2CtJT3u0ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25792200"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="25792200"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 07:45:37 -0700
X-CSE-ConnectionGUID: Mq5lLHp/QKqUUiTsk15jKg==
X-CSE-MsgGUID: uQ26Wb7VTzyt7a1/W93P/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40286007"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 07:45:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 07:45:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 07:45:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 07:45:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 07:45:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jiijb6CbEO5EaupWAQLscnYOyBjAjIEupCiz2k9KpvmN32qJg7DDDJRQ0M2MHosBoHDXwYVZ6IfFfi5vRckTDfBxeOZHYw9qfO97MG9re8AfHjYpxRNUCO0sUre8sH4eHmuRAMuD9/8xJ47O5Y3mIUqcAPuA3RZpyBglb1m7Qgs6tGZNICQ0XfvG/p+BPrmVqPbORehxW8ExdRoCxMCfS6sF4oUMtEJjcFcgsgxcQyo5N+69px1fVgGH4pS9gwTHLLCXsXMr6b+NGuzeX7SXvP7H520E7Xk9XZOCDW+/cuux9Alaeta8QxCKBJoFAjCgJznFzVRQo/+V9QHuQPk5Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bbouUaCtb3OSADW0dLblq4LRkxDBBQHfR+wYRhkuynU=;
 b=b9Ty8k+P+WUTlb7YlmDBtrj1l6FEGp4xZuzsCnLGMZ7m5oicV4ObNFNcm67A+nn8FHWx6Hl0S0lSuKKN61HcHTo0f03BjMfzNw9PXaOFEEMIsD3xG7gTiS7jZMWTrWOLV/bKGX/whAwGdHKGX9TeqOOY/fjaOjIg4HED+f2ZptjanTI+6aGn5leOQEZ1pDL9nITg+28Ik3Y9V4iSmHuuf8woJ3kuCp5igoPb+yxdjYcp9I2u7a5cgIF9jY3TVHM9GxZnXRNsj5Ze/gGe+ZxQ4glN1+qAuWlWEa84XkGrUgleyp/I1T6vv8RI10Ugvc2m1V4c9S2wMnLY1UrgezAy0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8115.namprd11.prod.outlook.com (2603:10b6:8:12a::12)
 by PH7PR11MB6378.namprd11.prod.outlook.com (2603:10b6:510:1fa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.21; Thu, 13 Jun
 2024 14:45:25 +0000
Received: from DS0PR11MB8115.namprd11.prod.outlook.com
 ([fe80::4cbc:6f18:8a83:eba8]) by DS0PR11MB8115.namprd11.prod.outlook.com
 ([fe80::4cbc:6f18:8a83:eba8%3]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 14:45:25 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
Thread-Index: AQHavLhOZkmqizOOl0SR9XYasMJFJbHFxegA
Date: Thu, 13 Jun 2024 14:45:25 +0000
Message-ID: <DS0PR11MB8115032C123829C19E91EFD482C12@DS0PR11MB8115.namprd11.prod.outlook.com>
References: <20240612110402.3356700-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20240612110402.3356700-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8115:EE_|PH7PR11MB6378:EE_
x-ms-office365-filtering-correlation-id: dcd34918-a489-4257-bb23-08dc8bb77635
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230035|1800799019|366011|376009|38070700013;
x-microsoft-antispam-message-info: =?us-ascii?Q?T7d9mOAg5g5tQyGOkF+nsNr9D7j23tfn3W9m3Hl9wmqBGueP1P7vaxdMHxyM?=
 =?us-ascii?Q?ZaTs7fNsgKl3+t2WC20FORaKiDNO8WatdHvK0KjbA+wUZQhFYWXyJAoG/n3m?=
 =?us-ascii?Q?wLdBmG7rZl0ndDfraqnO+rt2FhmY+5oFdePgdP3iY7I2tCVidntFp51qBzwf?=
 =?us-ascii?Q?UzAMROoVYLhV7hm0yU8gfE1v88tg3V9OsYZX6YAkgAqO56Xv35/JVzj1329B?=
 =?us-ascii?Q?6XY4szCn4cJbF52WZBGwFIxUZbnxqD+meLntm6GnirMIvRHGQ/LiyJoo6hbu?=
 =?us-ascii?Q?twxkopDgGEg0wdAJKFeO/o1RJUYFqdO3VSqi4JkV8kB57ovOBFP54a9TZteV?=
 =?us-ascii?Q?1NnWwc53eDqhkQ/EGBnAQ3thkPEIN4wCKmZOWqVlQG0Pp8f5qRgwPtSuWmKA?=
 =?us-ascii?Q?4zFEM7oHlTVy+LGGJHrDI6Aw1jXmb72FKyvHX8nI4a6mipH2qrTAmK1ce0Wf?=
 =?us-ascii?Q?ysl5HIQfXPT/ODyhgMKvyXMyve3mAcDH7ORGFcsMd5mCpMaUswgzgdBV70i0?=
 =?us-ascii?Q?FRlV2dmHDFbr11OgE7LA49bOU6GIEYoEJBS2L5PCPUXxbE0KiCaG7/9/C4gB?=
 =?us-ascii?Q?7IgXivTzOSNBvSsUCU6EEwwMsbOqHrSQ9feMi708Ms831P1/ZG3cOLySj/X7?=
 =?us-ascii?Q?jVpBlmmeap5cwnv1h2qPqebYUC5HYfutPrpibLeyU9RGtyfrW1o6kEjIl4o/?=
 =?us-ascii?Q?IExYzaELU8eJIr321AdlyXx5JgSdjZLsqHbwDBZATp0PQ2z91JukgxIXu9wq?=
 =?us-ascii?Q?auzoiJL3HkUTC5ok4bkDKOy3INccV3KkKAtGRBcINw+Emkt/5G9ImAO9FzxN?=
 =?us-ascii?Q?aubp9LaOA8X+WVg4CBBIoQ/HyI0hN3pOjPP6+NbcChZjTEig3K/BwwzNfDPD?=
 =?us-ascii?Q?lYEfNHbkNnGRyK5Q23OBKov+GlfcPziy4HRcZe8MePtHMtFJqlSx87IgKEe5?=
 =?us-ascii?Q?M7tNiU9II97LQ5NRbYDJLx9o62Kb9Iueps8LyLxv2DTXkWKkYRe9PcCezgQp?=
 =?us-ascii?Q?9FXTgDgk//4J3QYh5v4Sw4k0FGSe8ISrTDMzsrhB68ZP/nYN4xTTvyG2zXXN?=
 =?us-ascii?Q?I9avQWkp4t+vuGqBjoktqwT29vRFWb1PEC6/WKHzJYki++XWGnqSyH2snd9C?=
 =?us-ascii?Q?otLBjSvKYIZ0rZn2WMR03rIgFzU/dEA5f/AGxR8gd4RkKJdp4bn3qVg8Lzdo?=
 =?us-ascii?Q?74g/ThvK0py44LjSp9TGurJGaqsM6yu5JMiKN3YVq5+iPQJt4pFr+1aTU4/U?=
 =?us-ascii?Q?PcSdr/mJ5TcIUTo/il6Ve3daKJ2cWTROX2pXSilUmpVKzelUsa8u8lFpmaMn?=
 =?us-ascii?Q?vGUY/FF/UMXsFVfDIAPSJa6XAvsRQR5r9qXacgxqNTlqT2Hjck2lF2qHPd4a?=
 =?us-ascii?Q?FJoVVqI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8115.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(1800799019)(366011)(376009)(38070700013); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EyaYKpQCMP9w0l1Etg+BM+uv1J2+TKKBcja9hqUnyMb14Tn3riOj48jeRSMG?=
 =?us-ascii?Q?oU24qRBvmOh8cjG3Tgn33mYRRiZjUzfW5P+4c7BK/W7kVqBLMSn9rQU1g6+x?=
 =?us-ascii?Q?w2+hCTntL7rgoNc6cigvNzOV5m0U3TBDVPesrRkyg5wL2xM++dv6udDvtZ/7?=
 =?us-ascii?Q?6X97tRgf3dHEi6KPleQFG+On9UVPU7BPUH9jih3cE7jkV8AcQjd6Whmdudkc?=
 =?us-ascii?Q?qaljHVjEb9FQ1x3t9+59roPTux/uY2uRPhGzfkoP+8Wp3p7QQmgtY05MGmMG?=
 =?us-ascii?Q?bvTb8epUrFEwaYxy+D2hcJ2BgHTWaVTjFUuH3fC6/pHrN0tBZwoTaQcdaD8D?=
 =?us-ascii?Q?7Xciv0ZCu06wnSR0QH/OBL/yNEyo+2C450fTcvrO4/emAKZ2scuCAOrqxCdE?=
 =?us-ascii?Q?4JbFyIvnIjnuK1NVG5N1rLW0ArgsBcPxQS1WdQTcB9cDVSBASyh4ROZ8+90U?=
 =?us-ascii?Q?mYlcxLUL9Kb+g1Y1jGssXn77LI/jUjkB+3TGr0dJjlya9Bu0QhLFlTSP/UTw?=
 =?us-ascii?Q?4vlNA+UQNw5tloMsQ/TJdVlXnwcyPkP0tzWOBmv2pKKJ2L80eAhaHpHEHSzd?=
 =?us-ascii?Q?DheRVjGsDOgWTUpD6gBpM+2KdunMwtPMi67J2kbDEZ0WnMjFch6NM26+U2oE?=
 =?us-ascii?Q?Sx+2nWMhTh/VLWtCSJsjClX6ndalp3F3ebzfq5zl+UNBDaPAyAhfAS2l2/ja?=
 =?us-ascii?Q?iIDK2jcyXySpCwOoqYrLOZvezmXQ6IuP9nsmktPbx9Hgh+GzmG2U4pQxaBaj?=
 =?us-ascii?Q?XVOA8I40Ef2t2EtX7ffVcifspw+AUfmc1jpF6MjpuWEJKX+WVGB8TMlQiaUi?=
 =?us-ascii?Q?ciueot/H2GYV40ehQ9LUyE5Hfr9SjHy9TOB0sZnt05Pi/It9bXackUnuodl+?=
 =?us-ascii?Q?xaROaI/N4s+elh1iHX3Db2XHPjrt2LlRbSLfnNbRyDdkqr+sc4JAaqwYkWU5?=
 =?us-ascii?Q?X3SaiM7ZyfpUw4Rq/sW+2EDYgUmsz1aW9io7q6R+7GxvFsWHaAQCVqXOjsto?=
 =?us-ascii?Q?PxnTAZ4WmFiSrmSCouD3Mx1LeS4gLjxOtHggKOvmlu1zDtQQNZHPyQgjsfyX?=
 =?us-ascii?Q?1QLqUcclS9W/4oWCUbuZz7Q82h89ut5oFtSXsckRgScsLaZ4STSA/K/qxjZO?=
 =?us-ascii?Q?ZFSsbkWXEMfGrlOSK6YIYQl5w16yjvyUwQVFWMa7ephuRNiUM6w7ha+8SA4u?=
 =?us-ascii?Q?bdCUyKXmnhKG35iqUqIVgfMNFNdJkRhYt129Pc11/ny13BouLruP+dOF3+po?=
 =?us-ascii?Q?koettNLDrVUlw/BwavbHN6sfDqqawFGMFyKMnMsxzRBC9FOa1cZCCoKE/8IY?=
 =?us-ascii?Q?HWb8It0hj4dTCAELuuTol0MsJbofDo4+N0z31ORbbmZ3lVxnefydzaPFl94k?=
 =?us-ascii?Q?LBLMls/ZrA+MLpQcJGhYekQ+8g2etzyfeymO/1O07dItPtIMN+mnfjdJfMqW?=
 =?us-ascii?Q?4PJgTBvvhLzMKBwR/MzNG8ZirgZP6hyCoTqReaZb61fQxOw0O7TvW5UTrDFR?=
 =?us-ascii?Q?KJoyrxXvUJFH5QudMvknLPTe2eP+UFQpwJfHvCrtn3E/OLAmjp/X7gi3P4XO?=
 =?us-ascii?Q?XvPmT6Hn89Q0Ea3MvV7nXhdABA+0mccrkdmY5faf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8115.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcd34918-a489-4257-bb23-08dc8bb77635
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2024 14:45:25.8162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eL0xZhf84wD/8YO7QUN5ddLA0Hgxo/NJb1anb5MQihVansF/gDAG2HmFzTv9zW32Ue82n/Ac6f0cuCJXoliqWS7ASJ20AC+E+cA7VJ0HKbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6378
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718289938; x=1749825938;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5B4CKCBA6vuc/O70SUqZtGvhpyUoOY6Dzu1FNtyJLJU=;
 b=nRJYMDDlHxXN41K3/3/1Xun2salUDSLj90S7ciqEBrC/IRjshbmApQQ7
 l5eIEs8N1GCOqC2mBjNgh13lYsaLD3oWJLsOUEfzm/NWIhT7a34NIkbap
 aBlG/+o1cne+1v+4DwznckydqeChD3aN74ZvwYjD+G1Hf/tY1yTVE1X+c
 DE83Gc4s1M+DrydryjHnEWg6QS06tiFGxd9pXPa1bIVGISwFY5UJu0eYS
 mW63KdC5rcDFTvG2hPGl/6hYzoAfL1wLV6TfLIRDmsFET9y8gwW/joEwk
 u2Z460wi/Jomfxl4xOMhCnpx52suftldAG/oA9KuiatF5taxQNJreXhwj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nRJYMDDl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kang,
 Kelvin" <kelvin.kang@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Wednesday, June 12, 2024 4:04 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Kang, Kelvin <kelvin.kang@intel.com>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix hot issue NVM con=
tent is
> corrupted after nvmupdate
>=20
> The bug affects users only at the time when they try to update NVM, and o=
nly
> F/W versions that generate errors while nvmupdate. For example X710DA2
> with 0x8000ECB7 F/W is affected, but there are probably more...
>=20
> After 230f3d53a547 patch, which should only replace F/W specific error co=
des
> with Linux kernel generic, all EIO errors started to be converted into EA=
GAIN
> which leads nvmupdate to retry until it timeouts and sometimes fails afte=
r
> more than 20 minutes in the middle of NVM update, so NVM becomes
> corrupted.
>=20
> Remove wrong EIO to EGAIN conversion and pass all errors as is.
>=20
> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> reproduction:
> ./nvmupdate64
>=20
> v2->v3 commit messege typos
> v1->v2 commit message update
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>  1 file changed, 4 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>
