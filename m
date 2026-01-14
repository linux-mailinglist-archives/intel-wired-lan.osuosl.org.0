Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C225ED1DFE4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 11:23:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F0B96F51C;
	Wed, 14 Jan 2026 10:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hYBxf4aODyeh; Wed, 14 Jan 2026 10:23:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69E3A6F591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768386212;
	bh=7MK8BrEjsjl0FPSpe8MF9/R6B1WzbvLf6NAZa+P2BxM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x7i9a5kGWZyFKiLcLBo4dPJzm/GK3b+1ffa8xoo7I95hDbBmOrb27PR2fHuVIZ3D6
	 B/ifMZRL5qbWGqdC0uqce4AyqCG2MjHZlPwYh0ickkurMt36GYwUUc6clRProl0CYb
	 IF+LOhlz1LLEq44WnMP5RMn+uiXCqWKl2QRRlNxMirApx/bkQEtL1wpFbKnu0Td1Hy
	 OZmCsqjHJA/mneJix1eb7EpnYi7p3SUe/myNcCQJF+onqLhcK8EDb0WoGwU1EBQIxc
	 2ZPBmiBN3D9tvKYojRmiXd3mSQa9usWv1dhyyRfsCxwrIy+efSEjwjm/amVdRpo0hy
	 HFtTDhNiptJCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69E3A6F591;
	Wed, 14 Jan 2026 10:23:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 801EA1C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 10:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70BC140998
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 10:23:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9n6CBToqsIM4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 10:23:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 61EC440468
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61EC440468
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61EC440468
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 10:23:29 +0000 (UTC)
X-CSE-ConnectionGUID: lrn6cgvvRZCh/5uXui/2Og==
X-CSE-MsgGUID: jA8HmVeOT92iJBqu5S9W/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="73318039"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73318039"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 02:23:29 -0800
X-CSE-ConnectionGUID: mqHWpU2tRB64tTLOHgFBOw==
X-CSE-MsgGUID: 7sqPR3LvR1SM4IeB0zcKQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="209691555"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 02:23:28 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 02:23:27 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 02:23:27 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 02:23:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nkp55Tw3T45rEZGHcACQVXcycVKSluJv0EX/gdD3dfNHpMmzW8N4S7aHPEhkQKPn7SWzlug5gBDx8JvVDsGm6t4h4b3C29KjSDvTq0HBjoAfLSwnBhvoZhnGSuMVqUpUDWWJP2R6KO+MMQI7ZgN+BobwgpUqRdB0GyrTzGsUwqc+5+k03BHrLDmlQ6+mJaFU2PX88c752NxgRC7CxQD9R9bHBACw+nfNmYF7+LSWvdtRXr57iiSUJ3hkCIAR+JRLsznXDVieaqMKA3uOHmrgSDCJ/kYOzS1XeGuekIQxEMVm4Zk6G+urzVENldkpqIR0wUqUeZHdgy5yugEkHOkXxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7MK8BrEjsjl0FPSpe8MF9/R6B1WzbvLf6NAZa+P2BxM=;
 b=UJROy8b58Vm3npvdC/9BoXF+qVSXatOGK/1fZ7Hdok97rfGnmgaagU3tOYx5zbXfib0W35vUt7IapER9RBJJpwhaJ8eoN5jJRktmsEPaLdC1bLqycyKLDcyqjUBFMqwh3B8Rso9Q+4p2GzP8YGQhjXkmEHo1LXoRwAj25lEpr65YtIHhKdL9j/Fuy0gtMGgIWs0vPY4+9YvNX7si3VtXt+z7Whb6luDsGTT5h5/HCfLHfKOu7L50jG+F+9IKltpLupYu12/X3nHsNeBElS6llPFTVtUjGgtKluVBjumuIHbJO0+5VrfKpmp+K8E0B5qTrg5nQ8A2tAUe2OHePppvrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14)
 by DM3PPF9EFFC957B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f40)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Wed, 14 Jan
 2026 10:23:25 +0000
Received: from LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::f110:9a4f:b4cb:2eeb]) by LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::f110:9a4f:b4cb:2eeb%7]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 10:23:25 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Grinberg, Vitaly" <vgrinber@redhat.com>, "Nitka, Grzegorz"
 <grzegorz.nitka@intel.com>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
Thread-Index: AQHcWgwUHqTXSPJapUuoKo9k9qimQ7UkgCYAgCMGLQCABLXsAIAFhyPA
Date: Wed, 14 Jan 2026 10:23:25 +0000
Message-ID: <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
In-Reply-To: <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV4PR11MB9491:EE_|DM3PPF9EFFC957B:EE_
x-ms-office365-filtering-correlation-id: 0197bd40-ca40-483c-078f-08de5356f39e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?RDVjNWFrQnNNOFcyWFZCYVNEWVF1elFiTDU1THpPdjkrVlFuVG12VzNpTDYr?=
 =?utf-8?B?ZWFvS1grQ0xFcldGdVVJSGRUSG5WT2N1VkkyampTckU5RE1URWkxSXlyQ2pG?=
 =?utf-8?B?aHNLTHkwMEhZbDllaGpiVWRwNnhwS2tkOS9kNGZZOFkzd2tXYWZYNHRGb0hh?=
 =?utf-8?B?eS9tYTBhcVJuL1o5OUJYWlFDM0dwVzduYzNwYlVUUDdjWEZJNkhTUkcxVGlm?=
 =?utf-8?B?cU9BVVBTbG12K1BEaU1ISm1pUkgySS9FcnB3WTM5TFB4WUtvb3hZYXR2YzI4?=
 =?utf-8?B?U09udkoxWU5sY3NvZGtaWU1SZ2syZTloRG1aTG9kNGhMekg3WlNUT28rZmps?=
 =?utf-8?B?cFhlUENGTm1CRDNRTjdwRjdQOTRrMldUeGhrZko4dFYzd3BaK2JJMnJla055?=
 =?utf-8?B?dW55SXMzUXVHNWhwd3hwYUFJa2VLSWJkcU5WUisxeGhVNFNDZmRHa3ZxLzFB?=
 =?utf-8?B?TFNxSmljN1IxeHlDdjN6TUJJMUxiRllnTTh4U3RQSWhyelJlaUxxbUtlNG1t?=
 =?utf-8?B?L0RIOGxvSDdlSDNNQnJRbjRlNDNvcFgzU1k4ckhlb0dNYnd2NUxvVjJ2YmYz?=
 =?utf-8?B?L0lMdlZ2S0VGZnppWmhxZE84S0dScVFuYk5va1U3UWcyc0tNUDkxN2dyQlhh?=
 =?utf-8?B?d1FkTkRDbXJTM0JvM0E0OGZXU2dhdVkwU1pzK2lVQzhld3FWOW9jU2NuQXBH?=
 =?utf-8?B?Yyt5cGlZZmRVQUtLM0ZhNUVXRzFqWnZwWkNIM0o2RnQ4T2toSERpWWV2ZVdl?=
 =?utf-8?B?Q2gxWm10NlhTNXQzSmprSXc0VEphRkNSRjZ6YjdscmhTaER3NjJtSVViQWts?=
 =?utf-8?B?NmdwNm9rSDJYNkxaMjZMWW5aU1duTllId0N0cXJnaGlzQU4ybkVpbjR4d04z?=
 =?utf-8?B?bUdzMjJmU2N3amNuRko5VElGakZscytTNU1ZaHlEL2RJc29WSHFOdTBWR2cy?=
 =?utf-8?B?dUl6NUI1STNNZHdGeHJ5a292TDNYY210SjcvWGxDVDVXdCs4SWdyZkUrNngr?=
 =?utf-8?B?M0w0eU1RRE9mWFlCR296UGN6eWhINVRPVTE0NmhZWklDNU1PR1RiaTMwM29w?=
 =?utf-8?B?NkJtZVlESUFWTVZQMytIWDBQSzRsSmZxSVdMY3lnckhPVFZNdFFvOU9WYUlB?=
 =?utf-8?B?NVpadUNZdWFLTWEvZVRicHRNOVRiMGxIRzRucEd2QldQZVRBR0kzbXFuZlZM?=
 =?utf-8?B?by90U0Urd0NUOFI3RFNneG1VYnhpY3hlTTVVTG1YYVN3Wjd0QWltYmJtcE96?=
 =?utf-8?B?ajdDMjhVZCtWdCtTUEp0SVNjMzJOV2h2SlVuVk9QY0tLN2RVTHV1bVRVVnBC?=
 =?utf-8?B?T1k2dUFjMDB3bjJ3bXRpUnpyQWU4MloyVG9BWUR1SFhGNTlVb3gyb0dMd3cr?=
 =?utf-8?B?ZStpS09YbTJyNXFSZ3NmRW93ZGRQbXFaRXBPdnZ5WFBQdVlOdzZ6d0lWN2ZR?=
 =?utf-8?B?Tk8weHZlcDBVbnZ4TkZ0UUMrRjhUdzR6WDg3dDIzaUNYUlRtWWNCSFU5QW12?=
 =?utf-8?B?ejhORG5iK1NPTWNRTk5rczgwTERGYWd3R1RoMjFBcURtQUlGdVRvd2ZaZVBX?=
 =?utf-8?B?Wjg0NmkwbDQ0eXEvUXZUc05GTGVLdjdnK3ZjSlVIRGdMMklVRThkV1QzYVZh?=
 =?utf-8?B?RHp0Z3RSS3A3MmNSTWxtZjlhWlBlcXpkbVllaExENEZibytCSStwcGM3d2x5?=
 =?utf-8?B?Y3M4UDNHRFM4VjlGdy9EUGJyMDR6dXV0YWpaUHF6YjVrTzdONEkxVWQ4Slg5?=
 =?utf-8?B?OFdtQXM0NFFmU0tMZW9Jak9oQUcreGJoRkR6WDJxbjVsdi9BTzZ4Ti9SM21O?=
 =?utf-8?B?UGpWd282N0FmTXdBNGNzS1k2VnQ3Z2ZiVzBkaFdwZUFrdS9FZ0J0K3NONUg4?=
 =?utf-8?B?ZVhIVTlwRmU2N0dxSmF2Q2o1RXVYSTNpWExYYTh4SVoxcTNnMG1URjQ4S0Vl?=
 =?utf-8?B?c2l6MlBWZFFpMnZyV0MvcjVrdit1K2IxK3QyV3g2YXZQNFFubFdZbEZDbXYz?=
 =?utf-8?B?bzhQWUkxTEJJWjY1OTVIb3UrTHAvYmFkcUhVUWhxQmtTN294VEFJSDIzbGZp?=
 =?utf-8?Q?aUKaU3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUxVVWo2L1hCT1VQdG9MOHFXVVJMYmRydDRTUlI5UTQ4cGUxa3ZjRG1JaFF4?=
 =?utf-8?B?QUxyMC9EVllHYTFUUFlGR09UZWRiU0tieXA5QVEwaW5lN29ETlN3VXVZK1Jv?=
 =?utf-8?B?b2xoSGUwQ1pyK1RaNGZaVjk1OTJvS2pnRFhwMFZvREtCN3BoRVFLTFBjVUdZ?=
 =?utf-8?B?TldIZXArMy9oa2pFZ3ptL25iWk9XeGtqcTRGVFpSbkVsWlNPeUhPdVVpRDQ2?=
 =?utf-8?B?VXNlY1JhalFPNE1YSTNwdDJLQTlaTlgzZEVBUzMyRTFHenhJNEpGcDhGODhQ?=
 =?utf-8?B?bWV6aGxMenNTYzV4SlZDWTZQdmpkSEx0ckJTbDQraDlJRG1HWnZRUW9vU2JJ?=
 =?utf-8?B?NXBzVUR0NGJrYmVLTEgyWG42aGpHZytvQWg2VXJnOUxiaW10c05HTWJZOG9Q?=
 =?utf-8?B?SnVvU2xUcTZtOHVkT1gzSFFzWWV1c0pHZkcxZ2JqZWczdVpJWE8vZ2ZwYU9m?=
 =?utf-8?B?bUxHblVIcEU5cm1wWE5vS3plZlorMXdpOGdMUUxBRUpUK0N3NGhhNmFFSjdY?=
 =?utf-8?B?Y3U3SVhKQXJTaURacmljZ3Z0V05ZSVpCQ2RTeTlOeU5zT2xFdGlMdlA3ZGhX?=
 =?utf-8?B?dHJ2RHFQQjBRMW9RamY4dXBYVFFLRXVScGpiMlU4SlRSZHJQTTFFZlUzRDBz?=
 =?utf-8?B?dlR5K3NOMUQ4MHFMaHBaK2ZiYk5nWHVJc1daWW5jMFdWQS96RVRNek0wZHE5?=
 =?utf-8?B?bmVhYjhXMzc5b1RNY0U0YVh1TFp1MVYvTUFsR29ySmVkbmFpZ25rQXBFTGt5?=
 =?utf-8?B?NnRRN09VM0V3cXk1aUZrSkl3TnN4Y3NpNlhWU0lZTnVJaHQ2enVOVFRDVGh1?=
 =?utf-8?B?QmR0c3B6dXhhL1I3OE10M0l1VHlZaVc4M0c4Smd5aUNONmFRVDhMMWQyUHNo?=
 =?utf-8?B?V1U4Y3A0VXFheVVYMnFweGsyV3JleFNHMlJjSVk5WDJudEJkbkZtMS9YblM5?=
 =?utf-8?B?aEFoSThJR1luaHJIYmx1TlFFdHRERjBPdW5YU1FybGxYRkovTEVNVkVIV2Fm?=
 =?utf-8?B?WXAvMnV3VjlrSjdIU2ZzZ1hvOEdFMGRRY25xNlpvdldROHNMU0NjOFR1ajFj?=
 =?utf-8?B?eHVIaXY0TnJUNGJqUW42dlhQOVFybzYzck5Ra0dMczNUTDFGR2FOODdnNnh4?=
 =?utf-8?B?bXBZbk1sZkowNHgyS3dQbGhTcWxqRm43cElWNEovdzBmaTRpd3UzZFZBdE5P?=
 =?utf-8?B?WWVJT2pqZEd0b1pUaCszYzhMUi8rbU1DSlRFZlIyWUpUY3M4ODByMEkySlpH?=
 =?utf-8?B?dUZQOFU4Nzc2aFRGeGdMRy9rbFZoTXpISTRmNzgxQ1Q0QWlzSnAwK29hUTNQ?=
 =?utf-8?B?VEFVdXprZkFnbCtmUDNuMFFkUFhESExTTENJWnBWOTV6WEtQaUcwZ04yOGdQ?=
 =?utf-8?B?Wm45aElOU3lBcy94dTdqb01VQk9GVGlIUllYZXI2dldLNVFsdVhwNzZETHZ0?=
 =?utf-8?B?Y0t6N2orbXA4b2pVTndUdnd5ajRYTU5aalQvRkVVTjhNK0tqd1g0bi9yU09F?=
 =?utf-8?B?V0dtQ25POGhXcWRqem5FVmVYTng0WkNNMmdIbHh4aWEzM1hlWHNCWjc5RzVu?=
 =?utf-8?B?WFIvTExocXFzTDcxSlRSK2o5R2NlYmEyZ0I1UjNSVXl3c0tSdWpldjNEYk9G?=
 =?utf-8?B?LzdjZjEvTjluV01Ib2l5RnArZi9RcWRaQUVDb0VvbVE2bXVZRE1jNHMwWW5y?=
 =?utf-8?B?WitobkdUdGxMQXhqVGxqbWlrelE3QS9KTDlNVGIzNlR5TEFscmdCb2xQWXcr?=
 =?utf-8?B?QlpWY25GR0UwUWlDdkNhcmJWNy8zNkVTdnJnNjR2ZEZLaHJXNzVnWU9YR1VC?=
 =?utf-8?B?cFlkT2k2VWRLK3ZaL213c0xPNHNKVWE3emEzZXp1bk9pNXA2Q1E3aVc2V3A2?=
 =?utf-8?B?Nml3TksyVkp0RDU1azk5a0k4OHVQOGtLV0RqSE9nSnorUkkrNlE1WEgraHZX?=
 =?utf-8?B?YWQ5M0J4VWd2c2Jpa2tuOEN0QUNnNVFmWHhTL09VMitxaUNtR0o3enRpajdS?=
 =?utf-8?B?UU5XNVN3SEpxVkx5TnZ6WGM1QjNrTmJYelJTRWRJMjduVWYza0JmR0UrYXJK?=
 =?utf-8?B?V3V0eVdqdWhhdHF3L1hob1VDZlJWcmxnQlRYMjFjdXpWWjFPOTdZRmxDUTVH?=
 =?utf-8?B?MUNXR0RxOUJCUXpldDlBOUwvWWVIdGlScmIrMGxOQjJCMllhUnFyTExRdUVS?=
 =?utf-8?B?UWNpUngxdzl3Y1pLYWprOHJkbWVPdlV3WXpVd2RnUFNpL2hydHlsenVaaWFH?=
 =?utf-8?B?TzdDeUhoL05KckR0VzVpQ0owMC9rSC9udFRpSTJXSmJvTm00dFZpL25zQkMv?=
 =?utf-8?B?ek5yekFLVzB6N2ZhSjd2WG1VRnYwRFMzam4wRC9ZNVk3c0U1RytaZUMzaVdW?=
 =?utf-8?Q?BwioFgM5H+XVtLM4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0197bd40-ca40-483c-078f-08de5356f39e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 10:23:25.2191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 93dPpN03Fj7id9Cy9NfkcXXlBCEg279KDvfWMvxRMN0NKxWkqYHKmva0nHH4hYwoGoevUNyHiVbrJA6+3mN3avLqLZ3F437sS4DLGCijyTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9EFFC957B
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768386209; x=1799922209;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7MK8BrEjsjl0FPSpe8MF9/R6B1WzbvLf6NAZa+P2BxM=;
 b=ToY4OXZRvGBw0+wz2Bq3lRajq1fHlbGE6NizI5+Wsk9WkewH/N6mJ06/
 o8tfjvxbNfIUtXa4JYhqVHIlijJO7AJqPWciANPvls+tzUts6KHH1PwQD
 olylON0hxYZduImZKCQS8NazYWbSx58CdKSVaKZfkx3o3glza3tTVjSXo
 nEpdw4TwoxPPVvYEY+GDDacyCOiySPJRLE1lR9ghT49mNzIGihaAqU1EC
 p1Nz5088ny2yZDs8SIJfqs7fjOjJXxVx0PSkfErZ4h1lMECTmuT1UiHs+
 CH8btJMphV8X/cB6xjDVeI2bg411DC79KgL3W2CalDAKabrvX9DIgSwie
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ToY4OXZR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
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

PkZyb206IFZpdGFseSBHcmluYmVyZyA8dmdyaW5iZXJAcmVkaGF0LmNvbT4NCj5TZW50OiBTYXR1
cmRheSwgSmFudWFyeSAxMCwgMjAyNiAxMDoyOSBQTQ0KPg0KPkhpIEdyemVnb3JzLA0KPlRoYW5r
cyB2ZXJ5IG11Y2ggZm9yIHlvdXIgcmVwbHkhIEFkZGVkIHNvbWUgY2xhcmlmaWNhdGlvbnMgaW5s
aW5lLg0KPg0KPk9uIFdlZCwgSmFuIDcsIDIwMjYgYXQgMTE6MzPigK9QTSBOaXRrYSwgR3J6ZWdv
cnogPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4NCj53cm90ZToNCj4+DQo+PiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+PiA+IEZyb206IFZpdGFseSBHcmluYmVyZyA8dmdyaW5iZXJA
cmVkaGF0LmNvbT4NCj4+ID4gU2VudDogVHVlc2RheSwgRGVjZW1iZXIgMTYsIDIwMjUgMzo0MiBQ
TQ0KPj4gPiBUbzogTml0a2EsIEdyemVnb3J6IDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+
PiA+IENjOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5j
b20+OyBOZ3V5ZW4sDQo+PiA+IEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+
OyBLdWJhbGV3c2tpLCBBcmthZGl1c3oNCj4+ID4gPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVs
LmNvbT47IGhvcm1zQGtlcm5lbC5vcmc7IGludGVsLXdpcmVkLQ0KPj4gPiBsYW5AbGlzdHMub3N1
b3NsLm9yZzsgbGludXgtZG9jQHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+PiA+IGtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7DQo+PiA+IHBtZW56ZWxAbW9s
Z2VuLm1wZy5kZTsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPj4gPiA8cHJ6ZW15c2xhdy5raXRzemVs
QGludGVsLmNvbT4NCj4+ID4gU3ViamVjdDogUmU6W0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHY1
IGl3bC1uZXh0XSBpY2U6IGFkZCBzdXBwb3J0DQo+PiA+IGZvciB1bm1hbmFnZWQgRFBMTCBvbiBF
ODMwIE5JQw0KPj4gPg0KPj4gPiBXaWxsIGEgbm90aWZpY2F0aW9uIGJlIHByb3ZpZGVkIHdoZW4g
dGhlIGxvY2sgaXMgcmUtYWNxdWlyZWQ/DQo+PiA+DQo+Pg0KPj4gSGkgVml0YWx5LCB0aGFua3Mg
Zm9yIHlvdXIgY29tbWVudHMuDQo+PiBXZSBkaXNjdXNzZWQgaXQgb2ZmbGluZSBhbHJlYWR5LCBi
dXQgSSB0aGluayBJIG5lZWQgbW9yZSBjbGFyaWZpY2F0aW9ucy4NCj4+DQo+PiBSZWdhcmRpbmcg
YWJvdmUgcXVlc3Rpb24gLi4uIHllcywgJ2xvY2snIHJlY292ZXJ5IHNoYWxsIGJlIHJlcG9ydGVk
IGluDQo+PnRoZSBzYW1lIHdheS4NCj4+IE1heWJlIHRoZSBuYW1lIG9mIGhlYWx0aCBzdGF0dXMg
aXMgYSBsaXR0bGUgYml0IG1pc2xlYWRpbmcNCj4+IChJQ0VfQVFDX0hFQUxUSF9TVEFUVVNfSU5G
T19MT1NTX09GX0xPQ0spLA0KPj4gSG93ZXZlciBoZWFsdGhfaW5mbyBzdHJ1Y3QgY29udGFpbnMg
dGhlIGN1cnJlbnQgbG9jayBzdGF0dXMgKGVpdGhlcg0KPj4nbG9ja2VkJyBvciAndW5sb2NrZWQn
KS4NCj4NCj5HcmVhdCwgdGhhbmtzIGZvciBjbGFyaWZ5aW5nIHRoaXMhDQo+DQo+PiA+IEFub3Ro
ZXIgY29uY2VybiBpcyB0aGUgYWJzZW5jZSBvZiBwZXJpb2RpY2FsIHBpbiBub3RpZmljYXRpb25z
LiBXaXRoDQo+PiA+IHRoZSBFODEwLCB1c2VycyByZWNlaXZlZCB0aGUgYWN0aXZlIHBpbiBub3Rp
ZmljYXRpb25zIGV2ZXJ5IDENCj4+ID4gc2Vjb25kLiBIb3dldmVyLCB0aGUgdW5tYW5hZ2VkIERQ
TEwgYXBwZWFycyB0byBsYWNrIHRoaXMNCj4+ID4gZnVuY3Rpb25hbGl0eS4gVXNlciBpbXBsZW1l
bnRhdGlvbnMgY3VycmVudGx5IHJlbHkgb24gdGhlc2UNCj4+ID4gcGVyaW9kaWNhbCBub3RpZmlj
YXRpb25zIHRvIGRlcml2ZSB0aGUgb3ZlcmFsbCBjbG9jayBzdGF0ZSwgbWV0cmljcw0KPj4gPiBh
bmQgZXZlbnRzIGZyb20gdGhlIHBoYXNlIG9mZnNldC4gSXQgc2VlbXMgdGhhdCB1bm1hbmFnZWQg
RFBMTCB1c2Vycw0KPj4gPiB3aWxsIGJlIGZvcmNlZCB0byBzdXBwb3J0IHR3byBkaXN0aW5jdCB0
eXBlcyBvZiBEUExMczogb25lIHRoYXQNCj4+ID4gc2VuZHMgcGVyaW9kaWNhbCBwaW4gbm90aWZp
Y2F0aW9ucyBhbmQgb25lIHRoYXQgZG9lcyBub3QuIENydWNpYWxseSwNCj4+ID4gdGhpcyBkaWZm
ZXJlbmNlIGRvZXMgbm90IGFwcGVhciB0byBiZSByZWZsZWN0ZWQgaW4gdGhlIGRldmljZQ0KPj4g
PiBjYXBhYmlsaXRpZXMsIG1lYW5pbmcgdXNlcnMgY2Fubm90IGtub3cgaW4gYWR2YW5jZSB3aGV0
aGVyIHRvIGV4cGVjdA0KPj4gPiB0aGVzZSBub3RpZmljYXRpb25zLg0KPj4NCj4+IEFmdGVyIHJl
YWRpbmcgaXQgb25lIG1vcmUgdGltZSwgSSdtIG5vdCBzdXJlIGlmIEkgZ2V0IGl0IHJpZ2h0IGlu
IHRoZQ0KPj4gZmlyc3QgcGxhY2UuDQo+PiBXaXRoIHRoaXMgcGF0Y2ggaW1wbGVtZW50YXRpb24s
IHRoZXJlIGlzIGRwbGwgY2hhbmdlIG5vdGlmaWNhdGlvbg0KPj4gYXBwbGllZC4NCj4+IEJ5IGRw
bGwgbm90aWZpY2F0aW9uIEkgbWVhbiBjYWxsaW5nIGRwbGxfZGV2aWNlX2NoYW5nZV9udGYgZnVu
Y3Rpb24uDQo+PiBJc24ndCBpdCB3aGF0IHlvdSdyZSBsb29raW5nIGZvcj8NCj4+IE5vdGlmaWNh
dGlvbiBpcyB0cmlnZ2VyZWQgb25seSBpbiBjYXNlIHdoZW4gbG9jayBzdGF0dXMgaGFzIGNoYW5n
ZWQuDQo+PiBJdCdzIHVubWFuYWdlZCBEUExMIHNvIHRoZSBpbXBsZW1lbnRhdGlvbiBpcyBhIGxp
dHRsZSBiaXQgc2ltcGxpZmllZCwNCj4+IGJhc2VkIG9uIEZXIG5vdGlmaWNhdGlvbi4NCj4+IFRo
ZXJlIGlzIG5vIG5lZWQgZm9yIHBvbGxpbmcgdGhyZWFkIGxpa2UgaXQncyBkb25lIGZvciBFODEw
Lg0KPj4gQnV0IGV2ZW4gaW4gY2FzZSBvZiBFODEwLCB3aGVyZSBwb2xsaW5nIGlzIGFwcGxpZWQg
KDIgc2FtcGxlcyBwZXINCj4+IHNlY29uZCksIG5vdGlmaWNhdGlvbiBpcyB0cmlnZ2VyZWQgb25s
eSBpbiBjYXNlIG9mIGRwbGwvcGluIHN0YXR1cw0KPj4gY2hhbmdlLCBub3QgZXZlcnkgMSBzZWNv
bmQuDQo+PiBTbyBwbGVhc2UgY2xhcmlmeSwgc28gZWl0aGVyIEkgZG9uJ3QgdW5kZXJzdGFuZCB0
aGUgcXVlc3Rpb24gKHBsZWFzZQ0KPj4gbm90ZSwgSSdtIG9ubHkgY292ZXJpbmcgdGhlIG1haW4g
YXV0aG9yKSBvciBub3RpZmljYXRpb24gbWVjaGFuaXNtLCBhdA0KPj4gbGVhc3QgYWJvdXQgZHBs
bCBsb2NrIHN0YXRlLCBpcyBhbHJlYWR5IGltcGxlbWVudGVkLg0KPj4NCj4NCj5ZZXMsIGRldmlj
ZSBsb2NrIHN0YXR1cyBjaGFuZ2Ugbm90aWZpY2F0aW9uIGlzIGRlZmluaXRlbHkgd2hhdCB3ZSBh
cmUNCj5sb29raW5nIGZvciwgYnV0IHRoZXJlIGlzIG1vcmUuIExldCBtZSBjbGFyaWZ5IHRoZSB1
c2VyIHBlcnNwZWN0aXZlLg0KPlRoZSBlODEwLWJhc2VkIHRlbGNvIHN5c3RlbSByZWxpZXMgb24g
Ym90aCBkZXZpY2UgYW5kIHBpbiBub3RpZmljYXRpb25zLg0KPlBoYXNlIG9mZnNldCBpbmNsdWRl
ZCBpbiBwaW4gbm90aWZpY2F0aW9ucyBpcyBjcml0aWNhbCBiZWNhdXNlIHRoZSBlODEwDQo+RFBM
TCAiTG9ja2VkIiBzdGF0ZSBpcyB0b28gY29hcnNlIGZvciBUZWxjbyByZXF1aXJlbWVudHMuDQo+
SXQgaXMgdHJ1ZSB0aGF0IHBpbiBub3RpZmljYXRpb25zIGFyZSBvbmx5IHNlbnQgb24gY2hhbmdl
OyBob3dldmVyLCBzaW5jZQ0KPnRoZSBwaGFzZSBvZmZzZXQgdmFyaWVzIHNsaWdodGx5IHdpdGgg
ZXZlcnkgbWVhc3VyZW1lbnQsIHRoZSBkcml2ZXIgZGV0ZWN0cw0KPmEgY2hhbmdlIGV2ZXJ5IHNl
Y29uZC4gVGhpcyBlZmZlY3RpdmVseSB0dXJucyB0aGUgZXZlbnQtZHJpdmVuIG5vdGlmaWNhdGlv
bg0KPmludG8gYSBwZXJpb2RpYyBvbmUuIFRoZSBlODEwLWJhc2VkIGFwcGxpY2F0aW9uIHN0cm9u
Z2x5IHJlbGllcyBvbiB0aGUgZmFjdA0KPnRoYXQgcGhhc2Ugb2Zmc2V0IG5vdGlmaWNhdGlvbnMg
YXJlIHVuc29saWNpdGVkIGFuZCB0aGUgZHJpdmVyIHNlbmRzIHRoZW0NCj5mcm9tIHRpbWUgdG8g
dGltZS4NCj5Ob3csIHdpdGggdGhlIHVubWFuYWdlZCBEUExMLCBubyBwaW4gbm90aWZpY2F0aW9u
IHdpbGwgYmUgc2VudC4gTGFzdCB0aW1lIEkNCj5jaGVja2VkLCB0aGUgZGV2aWNlIGFuZCBwaW4g
aW5mb3JtYXRpb24gbG9va2VkIGxpa2UgdGhpczoNCj5EZXZpY2U6DQo+IHsnY2xvY2staWQnOiAx
MTY1ODcwNDUzMDMwNTY5MDQwLA0KPiAgJ2lkJzogNCwNCj4gICdsb2NrLXN0YXR1cyc6ICdsb2Nr
ZWQnLA0KPiAgJ21vZGUnOiAnYXV0b21hdGljJywNCj4gICdtb2RlLXN1cHBvcnRlZCc6IFsnYXV0
b21hdGljJ10sDQo+ICAnbW9kdWxlLW5hbWUnOiAnaWNlJywNCj4gICd0eXBlJzogJ2VlYyd9LA0K
Pg0KPklucHV0IHBpbjoNCj57DQo+ICAiaWQiOiAxNywNCj4gICJtb2R1bGUtbmFtZSI6ICJpY2Ui
LA0KPiAgImNsb2NrLWlkIjogMTE2NTg3MDQ1MzAzMDU2OTA0MCwNCj4gICJib2FyZC1sYWJlbCI6
ICIxNTg4LVRJTUVfU1lOQyIsDQo+ICAidHlwZSI6ICJleHQiLA0KPiAgImNhcGFiaWxpdGllcyI6
IFtdLA0KPiAgImZyZXF1ZW5jeSI6IDEwMDAwMDAwLA0KPiAgInBoYXNlLWFkanVzdC1taW4iOiAw
LA0KPiAgInBoYXNlLWFkanVzdC1tYXgiOiAwLA0KPiAgInBhcmVudC1kZXZpY2UiOiBbDQo+ICAg
IHsNCj4gICAgICAicGFyZW50LWlkIjogNCwNCj4gICAgICAic3RhdGUiOiAiY29ubmVjdGVkIiwN
Cj4gICAgICAiZGlyZWN0aW9uIjogImlucHV0Ig0KPiAgICB9DQo+ICBdDQo+fQ0KPg0KPkkgc2Vl
IGEgZmV3IGNoYWxsZW5nZXMgZm9yIHRoZSB1c2VyIGhlcmUuIFRoZSBiaWdnZXN0IG9uZSBpcyB0
aGF0IHRoZQ0KPmFwcGxpY2F0aW9uIGNhbid0IHRlbGwgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBh
IGRldmljZSB0aGF0IHdpbGwgcmVwb3J0DQo+cGhhc2Ugb2Zmc2V0cyBhbmQgdGhpcyB1bm1hbmFn
ZWQgZGV2aWNlIHRoYXQgbmV2ZXIgd2lsbC4NCj5BIHBvc3NpYmxlIHdheSBmb3J3YXJkIHdvdWxk
IGJlIGFkZGluZyBhIGNhcGFiaWxpdHkgZmxhZyB0byB0aGUgRFBMTCBBUEkgc28NCj51c2VycyBk
b24ndCBoYXZlIHRvIGd1ZXNzLg0KDQpUaGVyZSBpcyBubyBwaGFzZS1vZmZzZXQgZmllbGQgYXMg
cG9pbnRlZCBpbiB0aGUgYWJvdmUgZXhhbXBsZS4NCk5vICdwaGFzZS1vZmZzZXQnIGF0dHJpYnV0
ZSAtPiBubyBzdWNoIGNhcGFiaWxpdHkuDQpXaHkgaXNu4oCZdCB0aGF0IGVub3VnaD8NCg0KPkhv
d2V2ZXIsIHRoZSBwcmVmZXJyZWQgc29sdXRpb24gd291bGQgYmUgdG8gc2ltcGx5IG1pcnJvciB0
aGUgRTgxMCBiZWhhdmlvcg0KPihzZW5kaW5nIHBoYXNlIG9mZnNldCkuIFRoaXMgcHJlc2VydmVz
IHRoZSBleGlzdGluZyBBUEkgY29udHJhY3QgYW5kDQo+cHJldmVudHMgdXNlcnMsIHdobyBoYXZl
IGFscmVhZHkgYnVpbHQgYXBwbGljYXRpb25zIGZvciB0aGlzIGludGVyZmFjZSwNCj5mcm9tIG5l
ZWRpbmcgdG8gaW1wbGVtZW50IHNwZWNpYWwgaGFuZGxpbmcgZm9yIGEgbmV3IGhhcmR3YXJlIHZh
cmlhbnQgdGhhdA0KPmJlaGF2ZXMgZGlmZmVyZW50bHkuDQoNClRoaXMgaXMgbm90IGN1cnJlbnRs
eSBwb3NzaWJsZSBmcm9tIGRyaXZlciBwZXJzcGVjdGl2ZS4NCldlIG1pc3MgdGhlIEZXIEFQSSBm
b3IgaXQuDQoNCj5UaGVyZSBhcmUgYWRkaXRpb25hbCBpbmNvbnNpc3RlbmNpZXMgaW4gdGhlIGV4
aXN0aW5nIHN0cnVjdHVyZSBJIHdhbnRlZCB0bw0KPmJyaW5nIHRvIHlvdXIgYXR0ZW50aW9uLg0K
PjEuIEknbSBub3QgZW50aXJlbHkgc3VyZSBob3cgYSAxNTg4LVRJTUVfU1lOQyBwaW4gY2FuIGhh
dmUgYSBwYXJlbnQgZGV2aWNlDQo+b2YgdHlwZSAiZWVjIi4gRUVDIGlzIGFsbCBhYm91dCBmcmVx
dWVuY3kgc3luY2hyb25pemF0aW9uLCBhbmQgeWV0IHRoZSBwaW4NCj5uYW1lZCAxNTg4LVRJTUVf
U1lOQyBpcyBjbGVhcmx5IGEgcGhhc2UgcGluLiBUaGlzIGFsc28gZG9lc24ndCBwbGF5IHdlbGwN
Cj53aXRoIGV4aXN0aW5nIGltcGxlbWVudGF0aW9ucywgd2hlcmUgRUVDIGNpcmN1aXRzIGRlYWwg
d2l0aCBmcmVxdWVuY3ksIFBQUw0KPmNpcmN1aXRzIGRlYWwgd2l0aCBwaGFzZSwgYW5kIHRoZXJl
IGlzIGNsZWFyIGRpc3RpbmN0aW9uIGJldHdlZW4gdGhlIHR3bw0KPndpdGggcmVnYXJkIHRvIHRo
ZSBtZWFuaW5nIG9mICJiZWluZyBsb2NrZWQiLg0KDQpUaGlzIGRwbGwgZGV2aWNlIHR5cGUgd2Fz
IGVzdGFibGlzaGVkIGJhc2VkIG9uIHRoZSBtYWluIHB1cnBvc2Ugb2YgZHBsbA0KZGV2aWNlIHdo
aWNoIGlzIHRvIGRyaXZlIHRoZSBuZXR3b3JrIHBvcnRzIHBoeSBjbG9ja3Mgd2l0aCBpdC4NCg0K
PjIuIFNpbmNlIGl0IGlzIGFsc28gYW4gZXh0ZXJuYWwgZW1iZWRkZWQgc3luYyBpbnB1dCBwaW4s
IGNvdWxkIGl0IGJlDQo+cG9zc2libGUgdG8gZXhwb3NlIHRoaXMgaW5mb3JtYXRpb24gYW5kIGlu
Y2x1ZGUgYGVzeW5jLWZyZXF1ZW5jeWAgYW5kDQo+YGVzeW5jLXB1bHNlYD8gVGhhdCBjb3VsZCBi
ZSB1c2VmdWwgZm9yIGNvbmZpZ3VyaW5nIHRoZSBsZWFkaW5nIERQTEwgdGhhdA0KPmRyaXZlcyB0
aGUgdW5tYW5hZ2VkIG9uZS4NCg0KU3VyZSwgZXN5bmMgY2FwcyBzaG91bGQgYmUgcHJvdmlkZWQs
IGFzIHRoZSBjb21taXQgbWVzc2FnZSBleGFtcGxlIHNob3duOg0KKyAgICAnZXN5bmMtZnJlcXVl
bmN5JzogMSwNCisgICAgJ2VzeW5jLWZyZXF1ZW5jeS1zdXBwb3J0ZWQnOiBbeydmcmVxdWVuY3kt
bWF4JzogMSwgJ2ZyZXF1ZW5jeS1taW4nOiAxfV0sDQorICAgICdlc3luYy1wdWxzZSc6IDI1LA0K
DQpUaGFuayB5b3UhDQpBcmthZGl1c3oNCg==
