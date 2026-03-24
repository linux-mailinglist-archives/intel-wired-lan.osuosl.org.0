Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNTcEalDwmnvbAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:56:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 969443043EC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:56:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DD56826B4;
	Tue, 24 Mar 2026 07:56:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1hG6CXXvszt3; Tue, 24 Mar 2026 07:56:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C60B826EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774338982;
	bh=b5vCj2PLEES2pzv3b3RtZVhuzgQl9Dbu/YfBN0357aI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vEXqSqLRMU7DSkdsnGStfzEnz+EhwygcJPRyLvP8C0LnB7OHA4NMaBA8MCc6lfHu9
	 rr5CxjKfhcvEUIb/GltzEI/VllDJKwV03yK1bb7RjQLOzrd/wOw5ltbdPU8ue22i0j
	 dNARkflqesI4kWib2LzGghMIeRX/9mWGiewA9Psz/njMuwq4Ou8zWnSM1VKKYrU6K9
	 qFVwb/MkYsFqK8eHpqSOavTu6DzA3DFie0XAIW/nFjO9P01TP5dYaWDVq9xPvF7BkI
	 R/cGKBLFXn7UfhyVmcUYue9VoOBfckJLUD5+rlUd2OLJSNKcvygd+BwX0heWeNHzz3
	 vGZYsm5JgQ5cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C60B826EF;
	Tue, 24 Mar 2026 07:56:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8925FF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E7FE40F2B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:56:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eWTwO77UEEu0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 07:56:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5BDFB4099B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BDFB4099B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BDFB4099B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:56:19 +0000 (UTC)
X-CSE-ConnectionGUID: 8vJPlae4RYmUWwlEikrz0g==
X-CSE-MsgGUID: 9+54lLQlStad+vYG0doWkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75320236"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75320236"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:56:19 -0700
X-CSE-ConnectionGUID: kkTsn2KqRN2Q06LiUHwRiw==
X-CSE-MsgGUID: AmJM9FUpS22ArJg4IFLgng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224507658"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:56:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:56:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 00:56:17 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:56:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F1ITTxH6wrvcLZGX7CAXoBgJn5B+VD7AVWK621Yd20eY7CdLodqPXUmlaDcHmqvie/w90/g3Tc8rVuHuadeky5SaXTPs3N1K30L7q+brK7FnQBVGN8KXOEP+m5N9zaSoLRosqqQRzAzdVeHNHgPoe+VkAVGyAFoRbAPY2sEByRjlvKNc8KCHTBfyr5KQ89zA4pfExJyM/od+k2y/oszLv+8YFSB0wXB1kO0kPJIlVbT2ds+uQPz8QQAK/lw4f6aPG9c+fYQnyJMsUBAvYY912lR7vJivKojd0Ct9zQ3OOsytvlJOLXwOArhbzaPys/byJbC2b/H6EbFhwl5k2qQldw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b5vCj2PLEES2pzv3b3RtZVhuzgQl9Dbu/YfBN0357aI=;
 b=MrYM10+oSPyPBfndgRKR4J0LStf47RCHaxryFHIpxQSN52hGlPXKJ/htOcIavp59aAdYY6MFbVNA414BQJpp3ICMXk7HK5c4fkMu4URRIEQhiyCimZZ73GtmVyIJa3JCQ0YDzoHVJf2W1hkmDayZoo8/oKdLsmkA+2Hv24TfaUVn4RHQGlgSr5aINBnLmsVduT7A6cNyUqUarLbVtvtPASUXrj3FAWtqvOsNKlssX+mnT68B3psnop3jHgNpxs/gEssMhJdgrJdUoq/qhatF412NZtNnZV5x6bsLL25m4OgGX5V7OVzqiAapDqU0F+3WT7pQwx4zwyiIF6FOYcAXwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:56:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:56:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 07/14] idpf: refactor idpf
 to use libie_pci APIs
Thread-Index: AQHcuuxZ3rJNOFJZPUKT1CBUScSmd7W9UW1g
Date: Tue, 24 Mar 2026 07:56:14 +0000
Message-ID: <IA3PR11MB8986CFDF333C0562B2AAE11FE548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-8-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-8-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF2AD6B04BA:EE_
x-ms-office365-filtering-correlation-id: 47260874-e0b7-4ea4-e5f6-08de897ad2c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021|18002099003|7053199007|56012099003|22082099003;
x-microsoft-antispam-message-info: ujOEBbBkWouQaq4mlIGya+X0AtZNHakBZjD3D9ZAOFqdf7vQJUFrRZ9+cacL0OxZHir+91YyS+fA0CAYDuZuehu4Z7tRR2OEivzmtkZE9fDkBggsEsZSwAcHry1oTHMR5RsaUUaOEM/elMjos5BZhBMKWzp9dgoZRwFt/8U6ke8iwMYKnKD0lxP6uzq2gWT2mv0BJN+zDKmz+mqI8Dy67Bh0l8VKuXXgp/H/fq//qX1Rd5U48qyLZdmSkrROqfskk0OHnYLVtMmAj6ORB6Ccop/nLGqSSOkrfzgJrk4pPQ38VmYNaBAy5Te0S9LBzirMj9iC5qXxAy36yoJcVFZXhiHFk7gnp4FCjutUu+YIm4d1JWuWYSr4ITXyZ0oZlmD90zhqEAgolhXKJaJGNTvv3V9Q5sV6C+6PKDG0zFlNzty6np4HlgJJBxe9/88GLPH4uL3tN92y3om5XqB4cOZN1zJv2Hd3mycKI138d0SHG702Y3saDI8nKJEsUPdLe/fo+s+gEMfDKfVzMMYGjB9BJrLpF0AShISy+J+FsBZ2ECVU8XRp53M8IRITkeWw/BteuUHj38Yi4hZLCKXyhnA315ymFoIGKezY2gRaMybpnIF0tV43KQjuk+69PT56xnI7ykSvP/Z/IChbobIZGCHYYZFROQKG9pjfUY3v2suB0VUDpDKASpsyxfhC5mJcSnuyvdgbaN9D0/NjFSWXpoDRB9hlpOdBSJNhS3ehdoMhewqzUFZFzrm3fYZCXtH5x61EI3FWn+ZSznxz3p8R4hp+bVLL4K5PUjqXcs4fs4LwTfc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(18002099003)(7053199007)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iKBRe9YkZ+axr/nofTTJTyv6PzzWg4SFYw4T5fm3eMsWSR35527AJKTX5xuB?=
 =?us-ascii?Q?nkDTO0JH9Cn9qudV2AEUSERhDtzm0P4+dDpcafTpL7sAsaPtJ98i+jB6tmBL?=
 =?us-ascii?Q?+fjxD5yGkVyNbr6Uq3ByslxW0khp9nLws8+uq4XTOI931DDcXH9rojy8FWbT?=
 =?us-ascii?Q?0/i4w8TqF7CzZOn1g5YiFG8iNkc3Arhx3Z/1rQSS/nkvqgw4iHNRzL7IZjZ+?=
 =?us-ascii?Q?XmUstLh9qhwaXS5bbVElz6eW7TAo2GwZa8l0pk9H00P6U31JNo/6gg6U85Vg?=
 =?us-ascii?Q?TBRWsWtNAg/5BbXB8mkNxA4qcJWYGjk/AUaeK/+/TLId1GkmC5k0cmX/8qNB?=
 =?us-ascii?Q?M3zPy6DPyMW2k/8WgXCe+GNfkgoPAy7iRwyr+HeLz0o9IGnaH4cuJdLLxHBZ?=
 =?us-ascii?Q?cNU/cXBTU0TI+NMBp5Qcy4gEtLtchS9aR0BE8+ZrzKkF3qHH7Bh/1xzIfmET?=
 =?us-ascii?Q?nx1sMd0OMs3pd4jxUewvU5FtYTElv0yCrq19o/+8GGpdZ/YNXQS5pZbRwSVN?=
 =?us-ascii?Q?ckHEJUGGiBb/m9nPewhRRg8Bpvw22zlDXaxElFP/zeJZbHDIM718Wp7zlidE?=
 =?us-ascii?Q?nQOHS89n857NPVBHCzJ1wkKnR54iAVINy3TpzMoLiQdJXm/tesxvZALu1i3U?=
 =?us-ascii?Q?z7JR0FgCe4JlrwAB1XmIjzuRJZg/w9viAviUpN9ZbwwdZtdzwkCDqIHBr8Aj?=
 =?us-ascii?Q?UK1ZB543AVGopxE7vrQ67efNAZVABarpV75gHD+DDuNRKpWKwljC023gwdr8?=
 =?us-ascii?Q?ej29m3/7vGGCDbCOuyqg/XNDD9YGc7zK9vvm+E3VGDVPfb4E1X/l3/qZe53k?=
 =?us-ascii?Q?30w60pU/utluUQjY21fRQczwExny/2sVQjcKPWxs69FxJq+tZdfkUzJKs3YK?=
 =?us-ascii?Q?xw3oaLx9gH/9OwhEzjzfNEQ40N11pyG3U9jBMfYC2EHvUfIoZLnXkdPVqXJD?=
 =?us-ascii?Q?jSlBVKa6luy/jlkMOizEU2EgqLFX31ne2OwaETa93G+KErTQ2yyIyNxt0p8L?=
 =?us-ascii?Q?WjSDdZ/R+ATDau1ssyPP6RHY//AhOFBGp/yd2RTcGLy+CY8dpiy8rh/Gx2Xy?=
 =?us-ascii?Q?IywrV0qAaQkUO+cdo2aM1z5XCM+ssXbnWTPgPu2WNUOTKEJcnrXUKG0PJZGS?=
 =?us-ascii?Q?NrEhGPsFHQLRwFj7eJ/fG0SI/Z9MQ4Q53s0jSDLEII5TYZDqaWu5oNlmVElu?=
 =?us-ascii?Q?9atUl3pjsX2SE4Lv5RCguj9+8EYetPFQIt56xwp9z8Sm6uEo9QlvDZkGo6hd?=
 =?us-ascii?Q?/gsz9KWmvfG/1kTicJ6AcRyr7uHbk6b2cRqXJAaTseLeSwDKyQZ8e5Yy00Oj?=
 =?us-ascii?Q?VCWIxGw5ONXwlS5u1u1RZrmcaJ1xEQKk4MZQ3MJ3TNjbZvfQGw6XKeyW11GN?=
 =?us-ascii?Q?ciL1VPr8pQeE6wlt3ERl3EuSC3Z32MSi8m1lKroRW6zhR2QVGu5GpPYXKX87?=
 =?us-ascii?Q?jND5sX1JWfTWZYAuxZD7GUm4oQS6wMu5ZrtoBiyLnB84w+FF1lf9yYa0IzRv?=
 =?us-ascii?Q?QfGvZ8na+ZcBe3EGTyecjNkAMYZSu8orpwKRDghMqX6QVqLNTVJAJxCj7Nzw?=
 =?us-ascii?Q?2gDVH8etfbPv7YhEwWnitOuQQaVZ9kl5TVcbceaYEtG8eYKVv3OGNdWLITJZ?=
 =?us-ascii?Q?7Y1wob4E66tOVVBG34gRjlciLgLkeUabTSAeHfaxpYO8RUnB/ZOoNR8ayKH0?=
 =?us-ascii?Q?2fncFtlJarV2TMX/XPUCxExSI9X2NpUHbWkLzKJBGnh84xeYJrpGUlyLt1/o?=
 =?us-ascii?Q?xdeCgLyBOcg5xojq1dBh7BWsLxiUgNY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: IMoWkDcEFHLmBAQwZBjxfFvxf2Xwyyg9MJZguSHw116U+d0htUPypSPTqKL4kMzM/irvUSYD8i8sTxl+y1aikwiLsyFnNluzk2f036qO68JGin0AmnrlTb5FVaXkXaBgQ/6YasERrHe5GeeDPz9Cyx1BulequmCXC1MXjQZFuVX1Gc8TUay8RR1KQlmMumy0F2OiSk1MH1Otowy9uThYqfRGlmZI7b5g6VjBRJfk2bePD5Slii/x1rLM9rS6j0Pml2fp+9VV9E28WEq1W1pE64UK5++vGMN48koPzQkT/F6YjxYy760T6wKUCIME91AjjsmGGvx2qBv78hBxC5y/jw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47260874-e0b7-4ea4-e5f6-08de897ad2c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:56:14.7571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8MJV8POcOLiON4Ht8QytRFXOzXLRFjL0x7hbotBJ1DQkwtRe8LpwRa5T/t+O9CUg8+USCJkvox+buL3UvWYWZGibAMPzYkQPQzWh098+sSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774338980; x=1805874980;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LqjbEjfcV45GnE9F1mwgR20OqsSpwzRhieB+MGQezlA=;
 b=RZ6tpYIc6iIjkP38ZCAIpd/cTDUa9Y4l2kx9k+7WXuFIq7CObVlq15xU
 60Spji1FlYY4n7cHNbTIlEcav0HfIgdsD/KpzYx1L2SRRwqI1gbWTh1nR
 2bl17zCUuw0NiChKV8aOEjIGyoTwJoXyiV16EATVYs1q8C4n2uDEp1bKc
 iCIsdXZIw4plJpny9tu3ISuQoRWmDTTRQjQBzgWCT2flDbVINp2oX7g01
 Xdk6YY3JlTrCLemmaVJVyrS8OGv4HfO+4O7OwXxs7pWKsIgbd2ar61wR9
 XpV6SsYwLOtUoZgHFcGrTCXbQypeTXe9K6W+Sye5MfCEArLc7y0hpk5P2
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RZ6tpYIc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 07/14] idpf: refactor idpf
 to use libie_pci APIs
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 969443043EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, March 23, 2026 6:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 07/14] idpf: refactor
> idpf to use libie_pci APIs
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Use libie_pci init and MMIO APIs where possible, struct idpf_hw cannot
> be deleted for now as it also houses control queues that will be
> refactored later. Use libie_cp header for libie_ctlq_ctx that contains
> mmio info from the start in order to not increase the diff later.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |  70 +-------
>  .../net/ethernet/intel/idpf/idpf_controlq.c   |  26 ++-
>  .../net/ethernet/intel/idpf/idpf_controlq.h   |   2 -
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  61 ++++---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c    |  38 +++--
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   7 +-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   | 114 ++++++-------
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  32 ++--
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 161 +++++++++--------
> -
>  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  58 ++++---
>  11 files changed, 271 insertions(+), 299 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig
> b/drivers/net/ethernet/intel/idpf/Kconfig
> index adab2154125b..586df3a4afe9 100644
> --- a/drivers/net/ethernet/intel/idpf/Kconfig
> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> @@ -6,6 +6,7 @@ config IDPF
>  	depends on PCI_MSI
>  	depends on PTP_1588_CLOCK_OPTIONAL
>  	select DIMLIB
> +	select LIBIE_CP
>  	select LIBETH_XDP
>  	help
>  	  This driver supports Intel(R) Infrastructure Data Path
> Function diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index e717f8097d23..7866b8beb6fd 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -23,6 +23,7 @@ struct idpf_rss_data;
>=20
>  #include <linux/intel/iidc_rdma.h>
>  #include <linux/intel/iidc_rdma_idpf.h>
> +#include <linux/intel/libie/controlq.h>
>  #include <linux/intel/virtchnl2.h>
>=20
>  #include "idpf_txrx.h"
> @@ -625,6 +626,7 @@ struct idpf_vc_xn_manager;
>   * @flags: See enum idpf_flags
>   * @reset_reg: See struct idpf_reset_reg
>   * @hw: Device access data

...

>=20
>  	return 0;
>  }
> --
> 2.47.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
