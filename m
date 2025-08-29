Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2DCB3B4B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 09:50:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7ABD614F7;
	Fri, 29 Aug 2025 07:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 30p80UrGgifA; Fri, 29 Aug 2025 07:50:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45BD8614F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756453800;
	bh=yDMkVhO5/hqCKljVuZyegATgmJ7yOX8/hg4n11z8z7M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t4EFo7a8Sr2t0EnNkeIa4rYm9B1oRwF70W3eUyzK1tM0gt/NcFHqUnoySefhUc4lK
	 SP407Xf5BGdh0IeylGCNt3jKutMOawGOAOZNXauFpTAHu4/95qOm+ogiXSM23BfLXG
	 r4KTSW/Mql0JFphHlR1oRbISqgHARliCf3tBvFpsBQruT/kZo2hF6CnAMT4e/4ETN9
	 YF4xiCuEGOoRziQzk9c2i+sLWoKWhrh0lBevu8DSemvglveFA2c9axoYNdUuKop5l8
	 QWUCrJd7oyS4tgHD0QDWchbaC86K2hH+0yFrorVPDeQwsmSQnRuFB7E6jYRtqW6S6i
	 mopE3Zln9JElw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45BD8614F0;
	Fri, 29 Aug 2025 07:50:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 63B2F6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 473C6614DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:49:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GuCzwiTOOJP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 07:49:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93A4B60851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93A4B60851
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93A4B60851
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:49:57 +0000 (UTC)
X-CSE-ConnectionGUID: FV1AkeNuRHCAl5trCaUO7g==
X-CSE-MsgGUID: KH1uTH0PSKmLjlihr3OtPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58587133"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58587133"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:49:55 -0700
X-CSE-ConnectionGUID: +A8ZjNfKRyy/r7vYT1f8Og==
X-CSE-MsgGUID: P/uNKlmNQdmVugbgXFJbZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="175618502"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:49:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:49:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 00:49:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.88)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eY5NSdN2QUDUPuvo7uEPIBLvLWjNXhqdFe/BJ9LfJNHq9du3wnokejpVBORHsalFeSNPzGpzqwnhlngRKY5+45hGDqnS1XbcUvg0YfUcEyUwzFtOL9ZhqshSi4deTI9QOIB3+RCEE2T+ji+zwAT+RxLYDJRweL9Td/xv7sQz9V9ig/pgh9pGHFZ0PdPBLAy2N9YmA15huPum8iPaqg0oGrrFsdr8aZHz6j7lspm9yl3MHfCsellhhHg+Gn9M+BsFxooLUgy0+1NXySX7JZzPb3jDTXXvoTMOqQNDUOhGOTxH8Ib7sPh6kJhx88VQJ4kZnAcBps8Fmy1xHY6GizNYBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yDMkVhO5/hqCKljVuZyegATgmJ7yOX8/hg4n11z8z7M=;
 b=c8aRrtTw5Fdn74ceX7Oo68tY18b2G1k892sC/cCqVmGHXzdxcntj0cHKkMgqxL31eQax0kKB6nw4j0ajamTM9wweDbI1tcH0Sek8mQtBc5dj8rR5hxmId7zPbreQIVK+pfJcz07LAcbCgCXL8rVjCH+3zeR6SlXiy3gZshaywKXtYjujwzA51GbTLR7qtaHJJwm13WJskdBNIJaPXWQMlZwI2eWGXZNzTbW7nkTPjp4O9JHavv84hEvI4ujwhlIEGbXYWFW2u7ztBy1HsY+5mqV/iF0mrFm0EneOfbNrGMxmNg50IQ28SxCF85r43Ked2oXTkYxJTJkQZfENxp54+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by CH2PR11MB8777.namprd11.prod.outlook.com (2603:10b6:610:283::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Fri, 29 Aug
 2025 07:49:46 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.9073.016; Fri, 29 Aug 2025
 07:49:46 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "horms@kernel.org" <horms@kernel.org>, "sdf@fomichev.me"
 <sdf@fomichev.me>, "almasrymina@google.com" <almasrymina@google.com>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>, "leitao@debian.org"
 <leitao@debian.org>, "kuniyu@google.com" <kuniyu@google.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Vecera, Ivan" <ivecera@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [RFC PATCH v2] net: add net-device TX clock source selection
 framework
Thread-Index: AQHcGDvl/LMwp05JjkKtLLSsBfpR/LR4pqiAgACPnCA=
Date: Fri, 29 Aug 2025 07:49:46 +0000
Message-ID: <SJ2PR11MB8452311927652BEDDAFDE8659B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <20250828153157.6b0a975f@kernel.org>
In-Reply-To: <20250828153157.6b0a975f@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|CH2PR11MB8777:EE_
x-ms-office365-filtering-correlation-id: 7153b270-4df5-49cb-2d5c-08dde6d09fef
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HLlkHit5n7sUBTloB9XvJXB6GilXTfnMsJUxDcQMO3/po7Un4/YHgB18v5st?=
 =?us-ascii?Q?8w8SphLHvbEPSnFT5VTcI59+VmN66c/cRRvcNowE6X8bLIWCUGGgLMQsarEK?=
 =?us-ascii?Q?biShQEUD155g7GjpQZWGRbs/ltP+ws9XVlxIDFczrTN4Fg+yxlSGcdxxKMFK?=
 =?us-ascii?Q?iVr41YKR09Kp7BZ9mg8adTOLh8Run2C2Yz0eKr73G/xC3J9YR2dqIkfLGKmg?=
 =?us-ascii?Q?VC+7uLItPxSsucxnP/K2BYwlQgT4sIy2t+SEGw4LYUtsObQd4r0ijfncvVD4?=
 =?us-ascii?Q?XZJFlTGxzt6Kddmb5j8pzux0XhWGn2sty9vanCkkg54TsxSFnOPxwFn7Mbwz?=
 =?us-ascii?Q?57VMgM3qdXf0sKZcJdq0R8KsjWGYO0OfAef0LftRBSx5LK0PNUYzic1htoYJ?=
 =?us-ascii?Q?4QUPx+2+zNcNQ0RxBJF8YElmfM3QuGHREmMokAissiaseXj2yZLVqF2Rgw97?=
 =?us-ascii?Q?i1Gj84D1eiZq3nu/rinwCxFHsxoqJCkC8x8Y39ZLXLItrKeeC/ySvbGO0llV?=
 =?us-ascii?Q?VhGKg+Q8W2EGfAEC1tq/rpLynXvHOvby11qTYxubBVwKob6JWA7+2ePWqlzZ?=
 =?us-ascii?Q?MxKkSHcKCOeckKlkB7pBsKwnrXQtAzuSb6sxWPDm+SjpM/YIzMboAHqqN6S4?=
 =?us-ascii?Q?u6lKo6jEvPlzWOqdJDmqJSGATcnsa94c70sJbzhn1dv+Whhemh0C610AWP7P?=
 =?us-ascii?Q?3rqt6haRiupuXiko1Of2AaWGVezz0DcPQqPMITOECho5CNd16tH47lfEOPZg?=
 =?us-ascii?Q?5DetgO1dV0a8trTMfkT1T5EDrn9z7mGvZJkJ+xwjzlPsNdXcqb6yJuk7MEMD?=
 =?us-ascii?Q?dc8X8wEO82p9cSbcKQ1Trvx/Zvc1M4gk6V9zH1JBmzErUypfd0woDre+86ya?=
 =?us-ascii?Q?DUon9JDPHGyVIiLIPIhbWWdghTzKCXb7QO3P8FJLrvZxrrKMaV3EpXV2CH+m?=
 =?us-ascii?Q?fSpOowa0N5eXFujVSzIeOIvg6BblWGaL7CBLoTetpeNGLth6cew/AIUEHg2u?=
 =?us-ascii?Q?kx6y56u8hVtT9ND3r3/anJQgwDTew+y0z6ufF3cFRLzLLQVGB9VCSIUsnf/A?=
 =?us-ascii?Q?wrlAL8NyUXIDoDzJeTvo+pYbbxIKRfVQf2YBCYOuOV0sSsoJAMKGX/FamPqv?=
 =?us-ascii?Q?fRWK4Hl97w09+vbd2noayZKsePUFnPW4pXQOU8toULEoOs6uCuH1cJ3pwv/0?=
 =?us-ascii?Q?XN/29jCsp2ju4aE9iWw43jBylxzX33nyNGCaRbPJ6YuFJmttgiH4CoiFoBI/?=
 =?us-ascii?Q?M64BQazCDiXQkowJg+ubwtx0bInr0MIfPJ6lvn7uU1MxlNjWvRQHENMpUC2N?=
 =?us-ascii?Q?qJxpPxsf+gvh2j1vA1CTxtEREVO9Z5bymc1fvCgsjN4wdVqsXNmbyWZgwPFi?=
 =?us-ascii?Q?KaRmuZ1LzLt84Reprla1J1S7poukUfXHDkJODM9me+h/7kGQA+EE0ui8OmHw?=
 =?us-ascii?Q?Uc4d/LoieCZjIotMKOYbzkB8w9mPJMfqhcayMyBGIfKLj2tTl7n3Kg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PuW9NC4Ot4/vLdHyLhAU5VwGgpZMA5+G0SW5yFAc5LP1vFWwiEpKtUMOGH0a?=
 =?us-ascii?Q?SeM8FInZewZv/vqD3uDzbZxGznG+XflAcYW7aYe+K4Lnq+gESm47oyB0zopS?=
 =?us-ascii?Q?zMOAUoQth6G4ii9ln6cwKR8dMpTxzBez7lSkHsJ5GIqPkfQvygBq2KMYhK1c?=
 =?us-ascii?Q?H4nqNzvRm2LILNTGn8jHnoW13fAnQA10zECPdQM8VlSKf3HeF9temuQ33vJW?=
 =?us-ascii?Q?js/2XpHgw2biLhjYcE1fmEyH/Nhsib2HrE2E+fg8bZYEF4Ywazmpp4lP8F3Y?=
 =?us-ascii?Q?afLyCUcIES0xiAKj9tPoVtv7KP5RVtyA1RtC0ZQaCeEZ05CXw4pQM0xMHRuV?=
 =?us-ascii?Q?Nu+rhlb4H0L8vr3p1cBuQhmRRTVcyI/tDKgicNpAI2O2lhiHfz3w6/+PbehK?=
 =?us-ascii?Q?st64DjrBCYVMqMW2vN2LEtuth19kg/IIBjm8yK07P/fM9hMAA7zlU0JcEqXJ?=
 =?us-ascii?Q?gjV6wKTo1KbwhjwoPgsmVW4IxwV8IJfHfjWqI/Iy+5FypRx33uNRhhQ1ggNl?=
 =?us-ascii?Q?DSuP0jDVB6XbypTC9orYpVZ1YDO+uT6kYEE0R+KhHNktujj234iCMf8YAD/F?=
 =?us-ascii?Q?E+/eUK0G2cH62h0My9Ii0ht/nBJxe31fA7pjQQgi3is5UR3rFCiAFNBd/dXE?=
 =?us-ascii?Q?Q8uflWwyVNmzuWMC0sSGhDbEDUqt61/cULkdWALi/ffk70BiTytvQHAKhRbr?=
 =?us-ascii?Q?xo8LpB7DHQQVru7XIKLO4/m4w46m9o+aACELAdENV4UbScDtAKNggaFKDga9?=
 =?us-ascii?Q?n9a+O7uJHpeLvsAXC4rohod7if/5SkVermkI2RTctbUkhi5S3rHG0Y6uUDNK?=
 =?us-ascii?Q?vwSZ+wOO40AqK4AKElWURQYB3DDu/t91A+BMC06R1jcgUK0SoX9oG0ayntn0?=
 =?us-ascii?Q?om2XrWECnCjivPOndeaZCTawwOohjM2oIwLt8NOhl30VThJv1htjZyemUzZV?=
 =?us-ascii?Q?eagteAY9s3mShAy3gsMtaI4o7jc0t4Ia5EA6ZtHtky4EaWVdtnxIv973zoG2?=
 =?us-ascii?Q?TWixDwOrHZa8+PRQX4QlzLiOGVeyzED2g3TKIdxL+7DmE4aeI3qglX2R6UOb?=
 =?us-ascii?Q?pZrVaSutGsDbBQLTEDCcYe+i/DeoRREmrU575FeUJz7NttzZvwmNsrYqZbYy?=
 =?us-ascii?Q?lAJDKVKn08j0UAI8JMjHXAwFcrjKR2AxoM6Zkbjms/70xLeAAG+M7pVnYyse?=
 =?us-ascii?Q?oDmUxlvrnlSbLFEXcXmXYvgWQ+286JuFmzC4/1ZuHrnjrxYPEiI6aaLReehk?=
 =?us-ascii?Q?nqNwfSQ9ZkGNenpWFXRVkrQ/rnSR9M7J+KpsCge4jJGW1MlxtVp9ntE523Ud?=
 =?us-ascii?Q?gZTtCe39tsbhw8sbxQBGV7bWYB4NkJY20pDyVYhXqA1d0hzhcRQmDAAMrpMy?=
 =?us-ascii?Q?dpmNNdRugb711FntKX0tW7khyGw1as3KISoLhNOC13tgGCnhxWf6prgrMfg9?=
 =?us-ascii?Q?Z38fwVnGyZR75GGgJeGPhwLgT16PbFiCPUjtIjTQiijxJscr2lHcShtnaBXU?=
 =?us-ascii?Q?s/EXuT7U0BZvFViwUTY5z9CYMK/2qXJZ3YmbtGQVGrRXzPlOCgfGmGEFM6B1?=
 =?us-ascii?Q?Y5VSRIIBwyZ+W/1mCpSoT+wPVCjog61Ox6CGKcrmhp9r5Dnp1EgTw7ThNs1g?=
 =?us-ascii?Q?sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7153b270-4df5-49cb-2d5c-08dde6d09fef
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 07:49:46.7028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DBci1nPETLo87rgBbZSpRdJ23tu8aT8ptV3Age2qN1f2Ubh4aKtMaP8MlDIJMCPT9191738noq2b5sOUhWoVD9Ou8L6i4MHFfgRmr0k7Zj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8777
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756453798; x=1787989798;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yDMkVhO5/hqCKljVuZyegATgmJ7yOX8/hg4n11z8z7M=;
 b=oI0Ppz/rlAGLUF98G9g9NOEZ4KS1QVZ9x5+DXkZkFvisYok4bgHi0MSx
 cvWxs6/4oo3dZ+nWD8cuKMowdkCLCbIGF6RDxO2+jsvtksRjdix22g0SE
 NM9q0H7wcowiYVBtNw6N20IjwnRSGsJbZeBpp7Ni39lfWkocDsi71/eHy
 oxr4MNSJAIh+492WeMVBFR7hhkM0BsdIBCZi1HYffMCp9Cq88b4dHV4sl
 GVWbeWXhpSsjk9j87XzRG27OTGzzax8ZObNPXgYUrwzWGWiF31Mduose+
 a1GB3bv4sgk/hvb1gJQV+HiXaKq3K9L8kYkpUsuYP6n1rmsuaf5+S6XBL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oI0Ppz/r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Friday, August 29, 2025 12:32 AM
>
>On Thu, 28 Aug 2025 18:43:45 +0200 Arkadiusz Kubalewski wrote:
>> Add support for user-space control over network device transmit clock
>> sources through a new extended netdevice netlink interface.
>> A network device may support multiple TX clock sources (OCXO, SyncE
>> reference, external reference clocks) which are critical for
>> time-sensitive networking applications and synchronization protocols.
>
>how does this relate to the dpll pin in rtnetlink then?

In general it doesn't directly. However we could see indirect relation
due to possible DPLL existence in the equation.

The rtnetlink pin was related to feeding the dpll with the signal,
here is the other way around, by feeding the phy TX of given interface
with user selected clock source signal.

Previously if our E810 EEC products with DPLL, all the ports had their
phy TX fed with the clock signal generated by DPLL.
For E830 the user is able to select if the signal is provided from: the
EEC DPLL(SyncE), provided externally(ext_ref), or OCXO.

I assume your suggestion to extend rtnetlink instead of netdev-netlink?

Thank you!
Arkadiusz
