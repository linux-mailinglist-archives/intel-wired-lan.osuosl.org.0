Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1ACCE72E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 16:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D94FA60832;
	Mon, 29 Dec 2025 15:14:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RH6Fmrh2Qjvq; Mon, 29 Dec 2025 15:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44B41607EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767021287;
	bh=n5HrMzZEZi8Yq/neRnBLUZfS9cQahkpli+eua/3qg/w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=knGhUACuji2UbOV5QGXARTkGul4OuPGCKv7szCZW/FpU/YkSP65srVsPk2XfXQ6C1
	 N4OcTNn1D3+4Y0909i4IXD5xPEP9LzElGwUocEeaWYexI356Af/MQMiG9A0ojVAJ6N
	 V3O1OF5mH2PC7c66QNa5QymULnTkseUaStM/l2mMb8ruqVVUSJq6weuRZWGaG8gLHv
	 NOq4SxviHEjVsxnu5kervgdj1vz2+XePoXu7v7UqdUeWqmZa4I+rLIsbD1XtojCEWo
	 9KroVXzWn7Is8WdrqyuxVVA7kWOmWx0FcexuagOMKY+f4OZpwMB4ajxKXcqvXf26yM
	 xvjyuqbxTOVBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44B41607EA;
	Mon, 29 Dec 2025 15:14:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C5FBB9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EAED4027C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z9AxrfGRwYFF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 15:14:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 73AFE40259
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73AFE40259
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73AFE40259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:14:43 +0000 (UTC)
X-CSE-ConnectionGUID: p+V0MOd4RPqb2o91O3X61w==
X-CSE-MsgGUID: gv3WGWbsQ6OBbxXpQ7XY4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68700771"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="68700771"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:14:20 -0800
X-CSE-ConnectionGUID: Rw0mqPQaQwKeDuxf9Xnq3Q==
X-CSE-MsgGUID: o8UcW292TrOQdD5nbUUReg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="231609859"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:14:15 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:14:12 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 07:14:12 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:14:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D7sA8jPCmOkEMKqfb2NPr2B9NZHh7bPeWmjUU6MmXxh8v+vaPX9MrDzNOjmXpg6JjwP/lsAjl8opaZJXiaO21b9lRDsafJ2r/A1filXWWpPqRYNpxLJ7wyjkyIiKnJq2N4bS4sSHkCGWBhOnavhhR3S/9annHUID3KWrxaey/p9FGJ0dCEWXj91oAxl3oszIn3I8B5Uhld8zOiivIznU9+2iwC6X3FyPhStWRO0MvqdpdM0lRlzyfcuqsHZ1W3vyLD9SfsbwAgRozRkPXcCED5SK7INqf4nbi6PxsP8M1VBVca5BFMy3hGALYs42WZyfwjdAMd9uASjuRJyr5n8pVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n5HrMzZEZi8Yq/neRnBLUZfS9cQahkpli+eua/3qg/w=;
 b=iBWVWe5n4BvS7TEQRLRnyWohNL9W+eBNJY7GLgYzGB67XjvqhAlYThqraDSHows75BK2wpKb4aSuTlpkv9aURiVfY0pHMaEabUfO2Yt9214zIxFPhzlEkp09fR637YJvAncA2clASCAqFzMVK6FoK5A2pOqKIv3CucqLjhWUOvjhSPq7RpLxGkzTIr2d2p90TpCc6Cc9oXEIBaWV9KGbb57t2m2svXFfRTnIndx2Rb/mTTLvJMm2MoA2fpWccA8YtMzQVuciIDZyhuuHGznQ25cxBjmDzMUyHDVUsjDh8ZQI4KhJpPMLlINBW2z6MzV5iFzUAr4d1r2u74M0AyFpyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL1PR11MB5317.namprd11.prod.outlook.com (2603:10b6:208:309::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 15:14:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 15:14:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Aaron, Ma" <aaron.ma@canonical.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/2] ice: Fix NULL pointer
 dereference in ice_vsi_set_napi_queues
Thread-Index: AQHcZcC/uITlSkCTJkS5qtcLzHdc7bU43uFg
Date: Mon, 29 Dec 2025 15:14:08 +0000
Message-ID: <IA3PR11MB898660A992E72E62B4A9DD1DE5BFA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251205082459.1586143-1-aaron.ma@canonical.com>
In-Reply-To: <20251205082459.1586143-1-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL1PR11MB5317:EE_
x-ms-office365-filtering-correlation-id: 4977a25a-6025-45ca-2624-08de46ecea4c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?eaZcRCqhnnQEkm2OlKk/40Zu9cme1DT4qyrO0zTP2Sj5Vbfs0e7Fx9xb3ZVB?=
 =?us-ascii?Q?FxLxsi4vEjGdHi6MB67X/n4yTxAFCZVPvm/APmBneMEG89T+V7TnhBA/IXCH?=
 =?us-ascii?Q?cauMsz0i1+DvQ2L0scdBnY6MtfHVt2+LeE30Rr/caNzy96SMMniiCLawGcAn?=
 =?us-ascii?Q?6YxfxiSaXEahfdRSbtRyShOOoIac3m+soA52CTwGY8pccqykXoSXh/g3A67I?=
 =?us-ascii?Q?WgoChcEMFVSyHMNNhW0j+QrfWun2ApnfPMt8YtpwLjczzHnibLtiLO/7Y6wz?=
 =?us-ascii?Q?epBaqekLErI2WfMCIir7S+3aF7kIxq9paf/MCb1Ua7nmg4ablWXx/HlrJZXa?=
 =?us-ascii?Q?LtKe9Tys/FeoEZmUyQ9NeOio3/83SP9D7K00Gikw8xykyySgHtTRSqSrT6CL?=
 =?us-ascii?Q?02VK82gZyaoC3dN3K9D9idgE4yhmdgnnHgKGdfFcma4Wex8cuvFez6k0Tckn?=
 =?us-ascii?Q?S9YdJx5tiCxigAaCl72jIUsN+pD8O/waAjAcLtJIwiC/Z6qly1ke/mpA331g?=
 =?us-ascii?Q?jBJoJ7GmsrdoJl8oD8XUzJhLQ5A8gBLabMMJBNXDcE6bhT+FGjkgjF5trBKq?=
 =?us-ascii?Q?V4ebShmIJod+vepYq60Xu1ZqmTZdjvB/ejatMYOWFVkc2BH7Ud9jIRSgrCPe?=
 =?us-ascii?Q?cv/ICZMgMS9XV+jCDCxSWwE9uldf2CeT6v/C3jEiwcf4VmHaY5vW0f4jgXHE?=
 =?us-ascii?Q?Sf9iLtamqtt00AkXVxlEdSwGSVD5S4JuLAjNvzeGV6CWIr9Uy/PzplPmHMl3?=
 =?us-ascii?Q?TbilJeAMtrdaVb3X934GoB2sKCfCPfTFPC1BAZru6uViPqGsEgxJU7Tf4e+l?=
 =?us-ascii?Q?bNsakjgcXG2DAYThJqmXheweToalqRmcy8RFB8Geyhg/nCoW2mV/fNMVwW1S?=
 =?us-ascii?Q?7j+u63pN2Z4lOsxMviuPUiYV5TAj0XmenvR8ripCIELaFfeU/LKkB5JMYbhF?=
 =?us-ascii?Q?NJ3C9QHIAQtnvDSFJChNEW6bSUjfkjyIsoEyoqJVgB8obQ0cL5/RyVIthQjQ?=
 =?us-ascii?Q?IX+Ilaj+frvmL0/7B5EgZ3sXhn0PmaCFNqwq2U/PxrynQn8eSek9hq0t52xX?=
 =?us-ascii?Q?jsTywjZpaMIAGFVzs6lsB5JgqL+i14wCmoZwxuMRFYcoQHlBFnuqjUAB7CIa?=
 =?us-ascii?Q?1AjTokPKvHut1N+evXmo+dYjSMg3ep0YtDdg1ZjzRVhOUdJWUeS03YV3s9YC?=
 =?us-ascii?Q?EfFUWS8XLZqVgI6qQGR2jKgdbyvcYxfgBLQy+uewPk+fwMWhJL0kjTpTDpxI?=
 =?us-ascii?Q?WRfHZEGryU8m/F96w6x9R9nTILJld7d9tIbSS75uBIk4nnP0HRU/5lom46ae?=
 =?us-ascii?Q?dT4LuHkPoArTy5bxlI+Wf2ZUoVC+XGLTUqP3X4Z2vg2BG3ypNe9GJevHTuF/?=
 =?us-ascii?Q?ZxjGI/1KNDg+11JYbY40fQ831RE6fQGqyNUcJ0GJZ98Iga2hpFqwtn9WHRUO?=
 =?us-ascii?Q?Y8Ad1jqHWkth0yBP9LrvUFgv89ZYCzmmNFeElWukBnVk+cb2LqiHytO8AMtL?=
 =?us-ascii?Q?yqltcY6EM9AqGP27mWXgaMVhG7IwzDXG2g8H8lLHa5dGFd7lHmwJE88EuA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oMMxTusucAxk6AjoXvDobvPV0swag4s2RqJ298Ruhz71Kko5Aj5rt2+SqUel?=
 =?us-ascii?Q?dQN4zGuggbfbYM45L2NOlEPAa12z7IVwhmwHNWOZGCuCo1AaCOPC3nANiaU9?=
 =?us-ascii?Q?6ZKCDIhzPvkAYLtbGVH6UMqbe8e2m7Ytgg/MXLC8inkoN+weWmShWq3AJTnN?=
 =?us-ascii?Q?8Eax+l6fVTLWCrgCxC1X6sSw5sgLvaSF0GkZDryd2/yni1HGW3Yr3F7BfIg+?=
 =?us-ascii?Q?Tzd6/7Y/No/cl7rDgh+Gucv7w/qYJqDZQYMvZuL5O2DKfeoel6b9tGL/FV6S?=
 =?us-ascii?Q?OBSXX+UUHoXG/SNVi+9lZwXcxUXq64PP8Hp1MEsGKlkE03NRsOB4wC5Aosih?=
 =?us-ascii?Q?8yQiKzRKx+wbHpf7KIVaIbmTweT6+3m2YlUZVL9IZLRAqeTMHqDQIUA1Dptk?=
 =?us-ascii?Q?qfkCdxF1wS1j2X7wmSk+UxS+LPg0fP3EWHoCxqs6C2a+gjzyVuumqWZJA4u/?=
 =?us-ascii?Q?ujdM59DACALkqDcHSR97zRHxEmlc01MObHpvotSJYZGVCcnmM2lB7x03VTx9?=
 =?us-ascii?Q?QWwwxw8u63Ttebs56LnhgorKp873A2OsWVgE0bIfkCcXHpYmmPRElXoc1kMY?=
 =?us-ascii?Q?X3FjvPdXsLxCzdpiui5cV6R6SfM4ZX9jC96JPkGRZCSeYGEUiHpEqQEHWbOO?=
 =?us-ascii?Q?9mpuf7DQLjFlpVZuamosMqNCl5dEp15149JetstLt0svWo/gtH5+UcRuruZ/?=
 =?us-ascii?Q?LVZ8vWazTI0uhHZNN12BktvHgMicsf9HSvJWXisd5U3OeYSfA0i05W9aGMMW?=
 =?us-ascii?Q?JcNouAOAzKezSJqalyd2wNaS5o7eCfvb5RWgWx6aYA6V00/uiNgt21/gPQ1S?=
 =?us-ascii?Q?2h61Uyj+6GB5MIV0UiX6NExMHeBkTCy9DaU2h2aJPIx8fMkQZ4ZgQnBXjIV7?=
 =?us-ascii?Q?XEDeRNW5ljs/vFrOkRhi4bx1u4a3pLawcXUW1q/TzZfbAJJ9afZq0HmC3xQO?=
 =?us-ascii?Q?olRTDJgfScIEgQVP87O6jg0+07L21Ae8inUegbOGQllPkfBSOnreHsktNsC/?=
 =?us-ascii?Q?HOfDThSwnZJd22yAkUrm7K4AhQyM14E+YdsBPH2ID2In7l/Fm91Th6HjPJAU?=
 =?us-ascii?Q?FfEb/4MG2NPoCnE2L/gmWV2DiTKbW2IPsBTucS5JAltufuCECnZnLmyKTcyk?=
 =?us-ascii?Q?QKfrTgWTiMYOYjJLsPfUPlrQ9qXnOKQM2CDQQqyiN4UkyVc4zSJC21bsVY5q?=
 =?us-ascii?Q?jyWvlYDACjFvR3Z6IEF2pHKvxhuUPBvuEcDyZNtmBMzFC41D9YJ7pIfX0Ate?=
 =?us-ascii?Q?5UJSLdo73hq+hjY4/+Fx+2L41nrk+XYKY7QM+2Zf1kdtQ1HrvH+hS2jwnuAK?=
 =?us-ascii?Q?zQWoKvltBUbgPHoMUvuZx1gvPPLZapBcNXMudColQzA/aslUon5+c6z5tQ56?=
 =?us-ascii?Q?6NUkFEOf+A0QR+mCMgcp8xA0tvrrk0lVgXm5IZ2nBx1SraUzyu9UtMmILPv+?=
 =?us-ascii?Q?hRqmL2wCOZQsXULpcZTe6riiwK3hlP6RgisCwPIUFf1vwlJuAbqBwzhCyYYa?=
 =?us-ascii?Q?CI/Nvjdq/I6nX3JONPeu6Tpt+UGpMmcbU4obN4v41WGKefocJt5LJhqGg8wr?=
 =?us-ascii?Q?QbfLCwN4RKqrJMwcYu+5x1PcdWJAIlCBHw4BQBDGpcH6dq4U1llGCxrli7NY?=
 =?us-ascii?Q?Yg9sIscCaHAL4xd2i3j6a4C4+GnmWi1Y2eIRILqs6kcO/eA6d7XaKEds1hhp?=
 =?us-ascii?Q?b3KUP7yhzakB812WjzgslZnGFAdbBuCTtA1rcfWXxyd2e7sEVdpgKRXM4Ab0?=
 =?us-ascii?Q?wapoQKOoo74fgijbHtQo5GAe5sEjJtE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4977a25a-6025-45ca-2624-08de46ecea4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2025 15:14:08.9669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jEMMqHxwveaxUKuYEya8BIxyYhZxWHrJMhwCpq1C6A3w5riJbSFDHoVtcRatKYP3YG+kC7vdBL/99R1//0LCkc5KxFE+H+virHkYMGt+tkY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5317
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767021285; x=1798557285;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LAI7Mpy7BgpnuF1w4LaD6AwNSFs024dtLHCElPGteE8=;
 b=AbEu4jLiLNkAtLDh6TwlEjzUDHcnS1fQIgA4D+ghMy7idZHU4ABQwFdW
 tN1vJfUgNjo41XONrbf48SSlD881npTXr0cqSDz+VhayOYPAPebwsaxNV
 zNl6Ini/XgYjckqbyDF/1XFdlWT7sudwn0leKTDhyCW2aXC1NEOTQ7LoZ
 ESz9Wb3oT3nuy/fXnK2geXeU7VdQ+zd5jTi9SfHBYwxlO890XaeV2CZ1n
 3/lSID1jyNnGLhI20K7+HZfJEjNH9dKX6k5OQpWlCszR5aQcjWpRLFJpF
 2kFFoYdxY0cQp0aJDBm9tbBBQeoSjkxGmuG0VE9AF7MaK8sAVLK29cJv1
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AbEu4jLi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] ice: Fix NULL pointer
 dereference in ice_vsi_set_napi_queues
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
> Of Aaron Ma
> Sent: Friday, December 5, 2025 9:25 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v2 1/2] ice: Fix NULL pointer
> dereference in ice_vsi_set_napi_queues
>=20
> Add NULL pointer checks in ice_vsi_set_napi_queues() to prevent
> crashes during resume from suspend when rings[q_idx]->q_vector is
> NULL.
>=20
> Tested adaptor:
> 60:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
> Controller E810-XXV for SFP [8086:159b] (rev 02)
>         Subsystem: Intel Corporation Ethernet Network Adapter E810-
> XXV-2 [8086:4003]
>=20
> SR-IOV state: both disabled and enabled can reproduce this issue.
>=20
> kernel version: v6.18
>=20
> Reproduce steps:
> Bootup and execute suspend like systemctl suspend or rtcwake.
>=20
> Log:
> <1>[  231.443607] BUG: kernel NULL pointer dereference, address:
> 0000000000000040 <1>[  231.444052] #PF: supervisor read access in
> kernel mode <1>[  231.444484] #PF: error_code(0x0000) - not-present
> page <6>[  231.444913] PGD 0 P4D 0 <4>[  231.445342] Oops: Oops: 0000
> [#1] SMP NOPTI <4>[  231.446635] RIP:
> 0010:netif_queue_set_napi+0xa/0x170
> <4>[  231.447067] Code: 31 f6 31 ff c3 cc cc cc cc 0f 1f 80 00 00 00
> 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 48
> 85 c9 74 0b <48> 83 79 30 00 0f 84 39 01 00 00 55 41 89 d1 49 89 f8 89
> f2 48 89 <4>[  231.447513] RSP: 0018:ffffcc780fc078c0 EFLAGS: 00010202
> <4>[  231.447961] RAX: ffff8b848ca30400 RBX: ffff8b848caf2028 RCX:
> 0000000000000010 <4>[  231.448443] RDX: 0000000000000000 RSI:
> 0000000000000000 RDI: ffff8b848dbd4000 <4>[  231.448896] RBP:
> ffffcc780fc078e8 R08: 0000000000000000 R09: 0000000000000000 <4>[
> 231.449345] R10: 0000000000000000 R11: 0000000000000000 R12:
> 0000000000000001 <4>[  231.449817] R13: ffff8b848dbd4000 R14:
> ffff8b84833390c8 R15: 0000000000000000 <4>[  231.450265] FS:
> 00007c7b29e9d740(0000) GS:ffff8b8c068e2000(0000)
> knlGS:0000000000000000 <4>[  231.450715] CS:  0010 DS: 0000 ES: 0000
> CR0: 0000000080050033 <4>[  231.451179] CR2: 0000000000000040 CR3:
> 000000030626f004 CR4: 0000000000f72ef0 <4>[  231.451629] PKRU:
> 55555554 <4>[  231.452076] Call Trace:
> <4>[  231.452549]  <TASK>
> <4>[  231.452996]  ? ice_vsi_set_napi_queues+0x4d/0x110 [ice] <4>[
> 231.453482]  ice_resume+0xfd/0x220 [ice] <4>[  231.453977]  ?
> __pfx_pci_pm_resume+0x10/0x10 <4>[  231.454425]
> pci_pm_resume+0x8c/0x140 <4>[  231.454872]  ?
> __pfx_pci_pm_resume+0x10/0x10 <4>[  231.455347]
> dpm_run_callback+0x5f/0x160 <4>[  231.455796]  ?
> dpm_wait_for_superior+0x107/0x170 <4>[  231.456244]
> device_resume+0x177/0x270 <4>[  231.456708]  dpm_resume+0x209/0x2f0
> <4>[  231.457151]  dpm_resume_end+0x15/0x30 <4>[  231.457596]
> suspend_devices_and_enter+0x1da/0x2b0
> <4>[  231.458054]  enter_state+0x10e/0x570
>=20
> Add defensive checks for both the ring pointer and its q_vector before
> dereferencing, allowing the system to resume successfully even when
> q_vectors are unmapped.
>=20
> Fixes: 2a5dc090b92cf ("ice: move netif_queue_set_napi to rtnl-
> protected sections")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> V1 -> V2: add test device info.
>=20
>  drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 15621707fbf81..9d1178bde4495 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2779,11 +2779,13 @@ void ice_vsi_set_napi_queues(struct ice_vsi
> *vsi)
>=20
>  	ASSERT_RTNL();
>  	ice_for_each_rxq(vsi, q_idx)
> -		netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_RX,
> +		if (vsi->rx_rings[q_idx] && vsi->rx_rings[q_idx]-
> >q_vector)
> +			netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_RX,
>  				     &vsi->rx_rings[q_idx]->q_vector-
> >napi);
>=20
>  	ice_for_each_txq(vsi, q_idx)
> -		netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_TX,
> +		if (vsi->tx_rings[q_idx] && vsi->tx_rings[q_idx]-
> >q_vector)
> +			netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_TX,
>  				     &vsi->tx_rings[q_idx]->q_vector-
> >napi);
Av'e got an idea, to improve indentation and logging /*just in case */
What do you think about this:

	ice_for_each_rxq(vsi, q_idx) {
		if (!vsi->rx_rings[q_idx] || !vsi->rx_rings[q_idx]->q_vector) {
			netdev_warn_once(netdev, "RX ring %d or q_vector is NULL\n", q_idx);
			continue;
        	}
	netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
				&vsi->rx_rings[q_idx]->q_vector->napi);
	}

With the best regards
Alex

>  	/* Also set the interrupt number for the NAPI */
>  	ice_for_each_q_vector(vsi, v_idx) {
> --
> 2.43.0

