Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8CFBBE44D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 16:02:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A8DD40C55;
	Mon,  6 Oct 2025 14:02:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vg6-RMXDBR3i; Mon,  6 Oct 2025 14:02:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F562417FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759759337;
	bh=o7/d8zTu3I5mwOZu+b8CGF/y6DQBv8AJas7fNQdlxUw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nubqWoTTohzd3ZrMkHg1S7uD6kvkmy5ELmPpgtNPlz4hMgQl5PFxjItaEYOdb6+dk
	 vFpQlC1cxl8qSV13lsuqtsXADbO3XKaUP2YckNZFAfHICDOenWke/5rommDD8naAdz
	 r9E9ZRyRV+OVMbH9V4GVxPTk/qUrjBTpRNoIqvV6Q0bgcc7H+kt/ILpHbQchS5Un5V
	 vyCwWH+PRd5PiF/z0KUAk9BiGRd3AjhTmzS+su7St7rq2UEfTneuAvTgaHr17tHTaD
	 LaLA7bjWxe3cIP7vTAufVbJQR12FgRAmDxQ3+cXRk7wRPSh1OLQOWDAp/T8NXL5Ktm
	 RGZV8BP31SY0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F562417FB;
	Mon,  6 Oct 2025 14:02:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CA31226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E925822E6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4eq-tJxWLVxS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 14:02:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3748383E3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3748383E3A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3748383E3A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:02:14 +0000 (UTC)
X-CSE-ConnectionGUID: 9x/tZgx6QP+HmKkKn/tHfw==
X-CSE-MsgGUID: MwA69K/CS4WQBcWniJellA==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61816962"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61816962"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:02:11 -0700
X-CSE-ConnectionGUID: bDGqV/KGR5qtZhhQOctEgw==
X-CSE-MsgGUID: hHloXyncTfOBpJMzT7WSYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="183910294"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:02:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 07:02:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 07:02:10 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 07:02:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Srx7oGoiClPQ/JvTHp8Clnb1A/eWNgURNj9Dv1aOe2vz5jNnW3IKiOBHB7QjSAo7YRI890uwdPNG/9PaPwjdF6YnTPHZGKa+ok5aK2EQtW1+fiYuw0f0RqTJEUQYdqTg1USN2prDDjQKSrzuHToroozeeO3LYkxF4ZJ+lZ979gii7OUhzzmrVFDIdXTLsn2PiFh9kyHj/QGTYS7HPVyJZHrUTHfNtYeTm3l4RXo0WNiAKxywoqpDGUN5S7CdQu4tLUye6XD8KWQPgYr8UW2BDWmhb1xVRmqSGkRvzj/nqgjrjoce9zxCkD1+1nvSR3GL6tJFXZnVWMLGh4n6rsULvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o7/d8zTu3I5mwOZu+b8CGF/y6DQBv8AJas7fNQdlxUw=;
 b=SOlmtD11Lw2vsJhmWEt4dgiqZUm/s5XlBFFciVQtlTefjQeoLbUXXWj101kZBU3jas2xV6wKPzOyOIWBcqOJRLMhZPVHY5gKlJHc5ayw2BpH9/M8wccS0LzxfjP8LTMsda2w64pN4eISR+mbuY6B3hEj1Dh7gZIrGHiBIM+XeZSplSPIia02iLVNYIFmRt+CxbEAlcR+kCRp90AR9H+nzYebiiYvCPOImPjSM2FUJVyE+mGK+PuacXNp9Vi7szH4cAZxi0K1oYvU0Jz4EgzBn8/m902nkDBaDqeZ2klVQirYfvR+tcz5zJqVznIkFb1YtOdfHjPue+TnAu0ZwqtRcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB7007.namprd11.prod.outlook.com (2603:10b6:303:22c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Mon, 6 Oct
 2025 14:02:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Mon, 6 Oct 2025
 14:02:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, Sasha Neftin
 <sasha.neftin@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 1/3] igb: use EOPNOTSUPP
 instead of ENOTSUPP in igb_get_sset_count()
Thread-Index: AQHcNr4oc0CezRLzxUmlxBzK2fFiC7S1Jg+w
Date: Mon, 6 Oct 2025 14:02:03 +0000
Message-ID: <IA3PR11MB89863491481C4E13B08B26FAE5E3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251006123741.43462-1-enjuk@amazon.com>
 <20251006123741.43462-2-enjuk@amazon.com>
In-Reply-To: <20251006123741.43462-2-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB7007:EE_
x-ms-office365-filtering-correlation-id: 8756c5ac-b0a3-4e23-3b8b-08de04e0ed81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1NvJv8jUhd/ZiFBmtgEwYYR4tko0X0s9BehMEttOpm2nvWiHlphQSznxcOaO?=
 =?us-ascii?Q?NvkK/B/g1LoQAejtPwS0130T42OLSsPEGiMQUS6HZxqI+EzPDdQXOB4pJJYf?=
 =?us-ascii?Q?LPw9Ua9J+Iw9m3edCGXoF208GobBL8oX0V2RUq0RzrT+X4UEjsRbGEivT6yt?=
 =?us-ascii?Q?Mn9hsN1aitGbzrvAk7YK3E46uTM99o1JYosjZxZ48Y5VNRhx/pJkFz1BBBKs?=
 =?us-ascii?Q?oEK1wP/A/yN7Oo0XoLa7Aw3cXGpu6gH007d0kyLd7BpZ9zFLDsSQNniKLDuC?=
 =?us-ascii?Q?4IkeIkiNVmCipsSwTco0d1Ufx6GogNeBMpEKhUsdXQWSQnrediiLYcefYAgU?=
 =?us-ascii?Q?XI/MT+TlOYQ5piPCBwS7nj03y78WHFXWYhaL31nHvJuUFug5ISJ8M8td5ITS?=
 =?us-ascii?Q?5mzBVdPR63Fxvpfj+4FuP4JQky8KvKMfmB65NGKXyMi+XwSAjAZUbyRbksHo?=
 =?us-ascii?Q?s7sV75lReA/Uok+TwC6Tzwyq+rFkutzcHuxNcmvDV5/zfsgL6TnomPNQG3L/?=
 =?us-ascii?Q?tC8BHQgHPT7nRJt6MOXADpA6ftIUMQm512jqybmLDWLcsHkDt3l9/bgDqzp/?=
 =?us-ascii?Q?ynvdGnAP78hZdJkoPQRLXCMD+ATSZYCfBxtagJbuXWQ5fixCI95SuMd88P5R?=
 =?us-ascii?Q?ivEIkPKy08TwIC9P4lowoAQyiSWKIP3HxsVCEjPGGp9P5O7H6nzdX0jiCQ2b?=
 =?us-ascii?Q?EXe4yGSLEmDXcsLWy9qxxvYKNIaW9zjm2MF8OBOcS1uw8HeldSMo5DNW/Uke?=
 =?us-ascii?Q?uQaUfELAANsWshnJj3ZhjdNBjdNvQ9FPXJPRTSDYyoBuc+78zNeBnomRcGfJ?=
 =?us-ascii?Q?vx5JurckwUfwK8BSiQ/fQuuQzFBFA8iwQH0WAjjZC3LR9YCMl2jjxCDbURzN?=
 =?us-ascii?Q?xz8W7hQSJZs4cRQvQLa64a9reUuTo8edoQGiWRFdfvNh8D9tb6YZmQj8igMR?=
 =?us-ascii?Q?eLkFx64oxadn+h2gVQs1YYaQZywZzBFzpwihM5/7LLfMOnBdj6SSPhukfpiR?=
 =?us-ascii?Q?OjAWLVJInnhyTa2lTDmkAew3MKUDrhSVkHG7MEAO5J7NBb2GNwqFfCkjZV1u?=
 =?us-ascii?Q?usabaf7GYSKSEiLP4Y3zjeWxdfTRZe/EJxLCXWYwsx2Cg9i+872IY/VpOrMs?=
 =?us-ascii?Q?FYwHjAuWke6/vNirk8wxMsoVltF5Oc/+86xtStZiwqnMpGFDnutE3X9CFwTz?=
 =?us-ascii?Q?LIntuUtfvd6x1GusnB+eD30iaqFinXRdKUyeOSSv2gYVdK8bfk1OhgguAYR5?=
 =?us-ascii?Q?eRuwMfNS2k6Sx4kvdf6ZRFNZN43leyz43Pfpoel3HKLi7kjEGNxo/DQe8B0k?=
 =?us-ascii?Q?BWEbKsLh4By2x15/7Q3fP69siKIBVYRChSw9B34Sh9WZ3o3J3my535Jp2ghV?=
 =?us-ascii?Q?dHA9ELP9L6QasGsPucrksi/TGvkR/GMueU4qZaL2BYYznqAwW+HVzTixBZmh?=
 =?us-ascii?Q?Tt4ty5U5iJMDQ60iGkqE3onUct4qJBaHh3zptmH4POjNnfBF/TZ39kEDBnYn?=
 =?us-ascii?Q?kwwcrw5w4JFt3M7BmBm/jMYuNM6D1U9MfVDz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fkk0ZGzEH/RkhNMhS/m+sspLLtbBxaSBEzluGJaBRAupsgDJ57VELzUYjQih?=
 =?us-ascii?Q?qmZAoEUg6tagCEfILyn7++SRb2HGmIzS866uKlyOUDlixnDDGRXqG1lmMvL1?=
 =?us-ascii?Q?wiMYbbjxBKoZSptsrxcwDaM0PJcDFWzglX8CDPrEMAxMg2vs8PP074Tg7MCb?=
 =?us-ascii?Q?/UPDCqIPFogWKt3wWpS3QMOiSLa0t/FZ45kMixLrig+6aXsUTh3BA1MR1XsM?=
 =?us-ascii?Q?+yJ5m7mAHfZcPTFAWWWbxLpYnsiyHNnRHRKnhQEXbUoweYH2Uht+xGDnkUmG?=
 =?us-ascii?Q?JJ+nGqs+4dqWuz7VPJEsuYU/xA0JGrUDPshod9N6/RCMl2v3K0f0RVSGTQvA?=
 =?us-ascii?Q?+Qy97Casl2/x9zaJU6cwdTAvJ9umDUOrDbNOkUudJC6RdiLFMcBma5ZpI9yq?=
 =?us-ascii?Q?bJ1dAPNhKqPC9P4TEM5ZdXf741rjjFFzm6Hl5qXXtNDDnzSbNbNkfcn56Ubc?=
 =?us-ascii?Q?gbSOpawt1BjJ2AafaUv5/+VpaZtDZDIGrNPNRb7SXWpicV6rrCaGMIcKHhp8?=
 =?us-ascii?Q?wLoptRmum80gcaCkFYYgdAFqnb2IMaH/UJyc390Lk4kljN/xLKVkn8KizYUF?=
 =?us-ascii?Q?5Lqb6NA+SgCGoKlv4m0NBXN3UIKfWzR12foi+9TnR0jQTzRiyD6qvmjSsQ2W?=
 =?us-ascii?Q?vDC8sUf4LLFwiUUTnzneBz3x4EXHzZG82XMFisaaJYLG74IIYuk1UaIrHHb+?=
 =?us-ascii?Q?GCjwVh8ZaE/SZGAuTL1p8nUTSgf7YJqXH2OapyOK3PCXXsvD3gJgcHHAJ7Ot?=
 =?us-ascii?Q?32YelZHBpEkUFEy3f5/KvXSePKIDYqxbwNcWm8t68s9vola0xR6Zw43/upbr?=
 =?us-ascii?Q?aDDTe8yH3cKoNon4KxiUgebPvQfr5sQ0D8+RrVmhedUqrJrDQMHeiZuJap8c?=
 =?us-ascii?Q?2MWK/d4jHQVmegxreiO3Z5O+5/r5cRbMQ+fXVLQ/gyAx5GPWVkgTy7Q3wW11?=
 =?us-ascii?Q?xpZj82FMtuLl0a7Lx2LkyslGsprwPyCK+OEuBCYhr9sRop4PrGuSsyDQKeFf?=
 =?us-ascii?Q?td5qHAPI1tufaGUaEaeFqVQoNaYYrd9m8U3ywT3M8ojbaOdjZM04y59tWf2u?=
 =?us-ascii?Q?Zc8GEehDfiy78MRvD4E6eIVVZoOavCgiYO6TNEyZYQbjYUkoFr7bRjVQJo7h?=
 =?us-ascii?Q?PQg4gTjkBoBdEkGBlgQ5hC28yWwfB6kqBJzk3XM+FiwodySPtorRnUwksjtf?=
 =?us-ascii?Q?f42Ykx/hqOTkYxfVAs78X7omnP94O/MK4BDWjp57IZwQktSgw4oea37xHsRF?=
 =?us-ascii?Q?Myfi9FlBsYZj7k6qSBDsmNrq/kxf+TDZUUOauFWRP3doY5+9jGa+gMN9X1qP?=
 =?us-ascii?Q?yqJumbJPvU+8oOqJeRV7gl/6ODn22cFnBX8C0i0CzxFE8ajJekKvFvpfKOgg?=
 =?us-ascii?Q?0zIUoMy1cnVwggZvm1eW+NEjwWFAW+wI7+KwaTz9x2os29RmsF58+ujOac7n?=
 =?us-ascii?Q?80yHq9c5n4XQ/X3txQfvNahxBhxq2V1jTfU8xQIRGGdqCAJqNzdJLrxZjyaw?=
 =?us-ascii?Q?9LRdEMPVmT3Yd6VcZeHpEbJrxYg/5HNZadNZ3putnggg1OduItgk5AFoLC8C?=
 =?us-ascii?Q?HCf01tUJMZ+4mr8jTk35A3ZIS0GjfuFVn5c1rG3TOlzNxW+AbX+TQiO9nr1P?=
 =?us-ascii?Q?lQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8756c5ac-b0a3-4e23-3b8b-08de04e0ed81
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2025 14:02:03.6510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GrRtbz0F/vKQNOkEjkXh+xBnViqOI9/JNlEtgYjwFNhy5MSxVvy61fdL1/4mJHIMoMLlYcjYCaWrhHnzQxhcEOk3B1CtjAKG7e5ElJXeSEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7007
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759759335; x=1791295335;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=32DiuU90JzIR79Gy5DhOLPKMyqOAq24bwFS2yoarGoQ=;
 b=DvROE32VFO5AX3Lo8Es8vxjBoiSMSGyDmrfiy38aC0Gb3HZPMoaPBby8
 sCCMwzuMvBmEW5XfI2Hzmmpt0z2juzTqyENPhARGNmr+6HJZi/T28mvv1
 0Gr4XIMRHfBTaYMffkKPlfDMuCIOCZRgRSxsJBech2Mnr6z5Q5BukBzS8
 vnTwS80RlZuUtZvV41R17S9xYgOiPDZxiEjV4wiuo8Lepg8nKLM/oCbwg
 Iuz6D4mAPhUtV5aco+FvyRAOHDCgcT2hkbHOxbJLDWPva2P49vUC6nvPW
 FPkm51xDyYQVS8F4P7rfKnwjWK42ueYmrCJ3ilGiKMY7f1aGPXI4CTxUk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DvROE32V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/3] igb: use EOPNOTSUPP
 instead of ENOTSUPP in igb_get_sset_count()
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
> Of Kohei Enju
> Sent: Monday, October 6, 2025 2:35 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; Jeff
> Garzik <jgarzik@redhat.com>; Sasha Neftin <sasha.neftin@intel.com>;
> Richard Cochran <richardcochran@gmail.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/3] igb: use EOPNOTSUPP
> instead of ENOTSUPP in igb_get_sset_count()
>=20
> igb_get_sset_count() returns -ENOTSUPP when a given stringset is not
> supported, causing userland programs to get "Unknown error 524".
>=20
> Since EOPNOTSUPP should be used when error is propagated to userland,
> return -EOPNOTSUPP instead of -ENOTSUPP.
>=20
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index f8a208c84f15..10e2445e0ded 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -2281,7 +2281,7 @@ static int igb_get_sset_count(struct net_device
> *netdev, int sset)
>  	case ETH_SS_PRIV_FLAGS:
>  		return IGB_PRIV_FLAGS_STR_LEN;
>  	default:
> -		return -ENOTSUPP;
> +		return -EOPNOTSUPP;
>  	}
>  }
>=20
> --
> 2.48.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
