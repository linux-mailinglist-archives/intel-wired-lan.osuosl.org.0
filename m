Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JG4DhQ/82kGywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:37:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7610D4A23F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8520A84CD8;
	Thu, 30 Apr 2026 11:37:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2dB1gzrIst-g; Thu, 30 Apr 2026 11:37:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA5EF84CD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777549071;
	bh=rV9jZGCRPmORPnRLltWKM7lYTrsGHax/sS6cgVVvgGw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CJk5N+ku4SKmJy799WJlURRygH8R9IYoLAjNT+jJ3539j+qia+gN7UaToYWE6bCio
	 WbuD/KULVIWm5O3m5G+uISit9hZ7xfX6pDY+75znLv+1oKhJIeAzg7s8I5rpHud17w
	 gD9dI/FahmLa2LwkKBLLQzQ2ZAlsuJyEJLVTD2oNR4l3JEk43sbxJgCu2U6+AfXYgI
	 Fzu+yI8JzTv5r2tmhq8k0x4hv3vXRzBryGWkRI5rVlthjxSPTG4jf4FAzQ0CUmjsjU
	 z7UUA0wT0MvcRTBf/SiJbKyIhiImlgwORsrRak+36vdWF10I1l1QjfOjR5r0kaFKM+
	 +k4gy/129E/rQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA5EF84CD0;
	Thu, 30 Apr 2026 11:37:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EC40F18F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE397428C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:37:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8xzEbjZYcAWm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 11:37:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 056A542871
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 056A542871
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 056A542871
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:37:48 +0000 (UTC)
X-CSE-ConnectionGUID: fBwqO+OkQGGuk+jU3JhaQA==
X-CSE-MsgGUID: Rls1CV11SES1gvlwB3GdiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="96063229"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="96063229"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:37:48 -0700
X-CSE-ConnectionGUID: 64sLaJ6LSiuuzhbgzoqMMA==
X-CSE-MsgGUID: okUfhjzlQJCLVN/LTGxhVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="234833232"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:37:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:37:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:37:47 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:37:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gXReJd9YfNY79vVQT3j6YoF5HIk80ylZAM+mUE2P91/z5+zHV+fOYXvBQ4Q3Lm9VQ96cem/sm9W13pFMyHW/ELn01lUo6mbfLmg0WyEYnACdGzAJoHJ9befpQcnpMX1122Cm2yMjuGnZgfSUmeKIb80fO1Auw3qsg6yNeIcX4KB0bTE5bEqiVAVvHqv1wmPtN8N0QPvrQN8pq/gg6vztvKeBFokPZHeqZxcZNQXiGrj2tE+wNknnhneX5wyG+cC5S5AOoCrEqyqgkVDOWOhot6+5igYC5IDR8nsG/QlCyHytkakitG2BS+9YAmST2dyQCMe1lVgShlmukX5JDRFCYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rV9jZGCRPmORPnRLltWKM7lYTrsGHax/sS6cgVVvgGw=;
 b=Z6N5oydGZ+w3nUHKplyy/6YpADHzKBM4C/NUtO9WO49leW43/fCIWffTvFCf3hIayFsTFvd7X2Y04NUQPW+sfyTVPfCgpD2iZSrLm5SS0YqCjjJOapFv2A+n6WalsU48KgV6H5KurhADkGhJMyAlPWZCbWanzUYbshAKmB1qRURStIE/qRU1pjSF5rwPwjNLFvW2LzhWGn8DRaa+0gUKTDyikfcYYddGInTF4jSXQzDuwy634i/gp3ugLETzxn+gpEvd/LETSRbt2KQaHLf7qQjspRQdH9IHZTIgl8IiOgb3OpmnvP2WCYcxT9sopKVwMK0WKro5dp6BLqDkBfDGJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7213.namprd11.prod.outlook.com (2603:10b6:8:132::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 11:37:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:37:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v7 net-next 8/8] ice: implement E825 TX
 ref clock control and TXC hardware sync status
Thread-Index: AQHc2IZvbYDkxcc490Gf74IrxYpNULX3eX1Q
Date: Thu, 30 Apr 2026 11:37:41 +0000
Message-ID: <IA3PR11MB89867E1017E2244627C149A6E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-9-grzegorz.nitka@intel.com>
In-Reply-To: <20260430094238.987976-9-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7213:EE_
x-ms-office365-filtering-correlation-id: fc89a17e-4c12-48d4-4ab5-08dea6ace3b1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: RckIX4DOMnGgK2B35SfnYJAh20YB1C5Jd2N9RqYxtwJoutPjpIF/MeZqi3gzXghmUKPrmLkaGBxNrO1GDvBX5P1FthFaPV/XH5C3u1uTkraMRVbzPXmTrwBccWETd0Co1vAk6fV+nLUU5AF3sEsIS5X7VEbXRBE3Kvy7HiVVEw7OGgsuPZRA0CioRHVLfmd9riooQBZtFiF4/FZV79hw83k76qUf9kQ5Kpg/fwJ1Uajz6wPmt6pCs+X6YW+HKglDzMGZjULAk0yQt1P4gnd7SdDRwpEJkCRSl8x5mAfp0cr0PRxvaGhzN2D3IQ+2+SL6xukkE200pgO2WLdNT29jO+W2AhOrALNObje5x2XcMv/Exd0xB2cp3JnTRlGsepIFCjYY3o2qI51h7biWUgfLl3UNXwmXj1gTzt3WlEvKQotRLOlXQLeHIFVrmFzu5uBUjsDgf2BwSk9SmOLhD9EZtc8kAkVHstzNvFlru+hihaJXg5RwefRLxGq1xPoLN0K4FBxh5RPp39mMtjPUQfUVsPJI44ZCqTVLEr2pGSjOGf/CM0IXxS9ktPYTX4UqYE1ZdasO4dYSqmC8TgRDa4LftfcMwnSMtdOxxmZElzCBtDnWJCdSGfW/Meom44E7tvt6Mc5iS6vPZF8QcpWFg5VhPDX4mW4JIih/k5ROGJi+2iqpXBAPaFnrChOeAl00iMV+JxdPSd3n/rMxnclJ3MnBE67XFqNY5SgdF5B0GqtNGx2+F77SMk3QMRgM1gBiGKF2F7VoCWASjSKhF3IdOE23Yqroa87nrQ7ziELG3jzrBug=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IeQIULimOsw9Y5ETlaLt93FwEs2AL72m4ru1XnZMeaiAjrjK6/zVne9JcSZi?=
 =?us-ascii?Q?Vt06aHyJx+q6vEtStTgwvJwOEGGkMiioiyQmDmn0nQmtMd6Y3rZ0Mg+Fk9Eq?=
 =?us-ascii?Q?FD/djGLseG7ChQbBZTdmwHwTC+bY9hDyXk03HBEtG59WPCsJx+QY5XsiaMhh?=
 =?us-ascii?Q?YHlZ9Y5wH0a9Q+Ax2fakHIp55m1hs12h25t+h8dOH0MEYnd8YahnGY99GjWM?=
 =?us-ascii?Q?5Prl9TCjOFiTQydSw1kN0voQuGIifW5PwO0c9IK5JeI9GgISGnzsg8ghBVQO?=
 =?us-ascii?Q?MLwdxIZieAhzel7B/VtZ1k7H4VGS5qOLmDtR18T+cplz7vm9PiwQYefx7ZnY?=
 =?us-ascii?Q?yF6KeTWRHHaXR4Y6a8NjkoaTeGdGPHUVUpQgHySHcoZ+MCOYjx0eU1y1onSR?=
 =?us-ascii?Q?gDietw8Yv4L9ul/8tdz3SXUpVhS2aOgrG7uPqufYJFiFobamLOOK2bl/HR+b?=
 =?us-ascii?Q?ihs4SVBPsnmytI8ojoYc8Wo66CuVOImXYf6yi+YRxzfnEvtOqnpce52/ogXQ?=
 =?us-ascii?Q?ep19Lwc/a+w+sMVSFKc/ZKVpkIAa1fHjMI6m/hG2vCI4/a1DMzruwYyuqBVw?=
 =?us-ascii?Q?0rWrEXqwc8RPYimK8wb/EO/KPzOsGSOShzuhmnM1g20peif7JNZJv6HHfG00?=
 =?us-ascii?Q?XhNoGy4hMBFfLSYVbQv605x1CbgT4LI/B7V8UcuaDjmbsi9NcxtnZH2AQaPt?=
 =?us-ascii?Q?4BTRBavajqgmwbT+jwUalBeYitY7jCWqFc5ov6FWww9tFugwCwrgT0NxI5SV?=
 =?us-ascii?Q?13OBHoTuZyzgQHuIYaWY48KU/xpplyMFLUxDyMMbg+iCYuT3DoARclhF9NHt?=
 =?us-ascii?Q?oh5JGa5rBjrTcqcE8QOutdAinTvAX0QbWF8TWm2eVVVnT0JluK66cExGo7pz?=
 =?us-ascii?Q?+SvksDZDT94eFBX5V78k5+M6+LtVevx92gQ+wreu6rEyHeLd1blYvtSwDTfc?=
 =?us-ascii?Q?6OxlTS5m9QVyrULvmmmhdmHpmoVpl10R7umSaY9N+Abint8nm7SKdXzl0+ot?=
 =?us-ascii?Q?02VvYkisdnmz3AZVxOSHB1P/f0eKApoFt/hKx1DfbVgFD+S9AifwuE1Xh94M?=
 =?us-ascii?Q?Z3FfhhobsZk5Io4rTBz5Q7KZFoL/wTQ5eWVQ25fSAX3YFp6Ln38GFGmckcsV?=
 =?us-ascii?Q?Z7U67KoKandOwQyNFOCXYuP1XMxer4UceR3j2u8eEotkykI+QcS1O13ZswsX?=
 =?us-ascii?Q?QgDskKlj/MSKlLkoC9l8kA6Yf1UfiPhmk6l1wBfpqMvgttuNJs5S6PDTVY/J?=
 =?us-ascii?Q?EWcBVdvusJB6pOm5Ynh/57+6xEK1QqX9gX4SPT9LdVQ+CGvNPupe640Rgh73?=
 =?us-ascii?Q?8msaCs6NwNR7MUxfwE18hBcx8X7uHF7xiV8NxHhPIszHZ7ZhVV9w1n7FkKqv?=
 =?us-ascii?Q?Yj2EsWc6vNqigBlTnaNtUuyvm4LDl4cut+JiTecKixDAhRopqAkf5hJhVqm6?=
 =?us-ascii?Q?YwpNhGK4QSvj8wVrJOIDeQ1ccioYh5EtHcq1XgdUc2HczFps3iic6sfYxF16?=
 =?us-ascii?Q?rh57yc7Hw4tFRTH8CXxgvGOHSD9Nar8Q0k6nPwxYieMokgkb6yd/NjtBjDsx?=
 =?us-ascii?Q?3N8JgQ4zTRJQ4/KjE0BRVn+4s3UVrd02yY7E/x3/0nmkjpjpCggM8aiA0L46?=
 =?us-ascii?Q?LtFmcNWubhdxg4L9zIgSx5x2FLu0gwJdNe0lew8h/47pmZCZei7RTRc1mqkS?=
 =?us-ascii?Q?Ny3iNp/E9SCPAVH4lXUtCmqZo+wR9CDefrzDYKMAd/ftcbn43vm07V3LOezL?=
 =?us-ascii?Q?9bXZi9GA8AmOAJQPyrwYIJ1RMDd/BvM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WkqPhxo9MVavUKDdb4wre29fCUn0R2oM8fYa6L6Ef0uy13McDLbb5+bDgVZ0cMHLoR++vQKgoiwQPOcHC5M0cPyT88kDRR37JHELFvkarZ2v6PAQ6oobU1w57NhB1Ndaa9ghx0934Qx247V0sCsWjFMlI6WyojhONIJZ1IjMB2FB6egKPK5RfZDfgSoJLfMTnm2UFxRFumgjmsCNDIgU0gErfJHjJtxCcHhM0Yzc844ZG4nkYztY75CTSklp5xT97zmd+GiLfdv1khEWtFKmuToIjJ9mh1fLEOw7UL4xC83dyRzSzLcdSOoHDkzpsWNgekBALDGTKq0z8jrPjFPQlw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc89a17e-4c12-48d4-4ab5-08dea6ace3b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:37:41.7619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IrTkkjuVwE/o9bLNZuSfTzfRTQnuozE+oHVxbqmpNDeAY3akMOZaKiRGqCWXhrARCQYC96l3cQyvcbZSUV0kA3Xw3riS82hAuJrFoMPny/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7213
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777549069; x=1809085069;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2qU8J/TsqGUSIphCg+5/Bvvn31EN7Rhzn6HosBbuHj0=;
 b=NtB0fNtuSnyGQdNSNoaY6IFyJODXkmfQAN3uDZLEVsxXVByVUcgoQqSF
 ADpKJR92MDj5Mn8LcFkoRu55L7zGbEvZ6Iy+NplMKg3lQx+e0r8DDToVE
 TQS+w182cHhOVDO0HYqbFLyVHfVfRTbr450xvc5EKMfPskq7jStdXca2F
 36nz3pIycpsPfaTF30hVBcAjaVhSvz1cDogvrBKlG2zqEpOfbMl6HeIQR
 ren1zUrF8YQvV+jl3FGk4hkujYAKiBVElq/g906yNGir1DeL0tlxZjeTh
 ej6bShxjzoniy26z2EcVFw/RXIhTKC4lXmbUYFhPBOoqyf4zYU8ohezJ2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NtB0fNtu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
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
X-Rspamd-Queue-Id: 7610D4A23F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Thursday, April 30, 2026 11:43 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v7 net-next 8/8] ice: implement E825
> TX ref clock control and TXC hardware sync status
>=20
> Build on the previously introduced TXC DPLL framework and implement
> full TX reference clock control and hardware-backed synchronization
> status reporting for E825 devices.
>=20
> E825 firmware may accept or override TX reference clock requests based
> on device-wide routing constraints and link conditions. For this
> reason, TX reference selection and synchronization status must be
> observed from hardware rather than inferred from user intent.
>=20
> This change implements TX reference switching using a deferred worker,
> triggered by DPLL TXCLK pin operations. Pin set callbacks express
> selection intent and schedule the operation asynchronously; firmware
> commands and autonegotiation restarts are executed outside of DPLL
> context.
>=20
> After link-up, the effective TX reference clock is read back from
> hardware and software state is reconciled accordingly. TXCLK pin state
> reflects only the selected reference clock topology:
> - External references (SYNCE, EREF0) are represented as TXCLK pins
> - The internal ENET/TXCO clock has no pin representation; when
> selected,
>   all TXCLK pins are reported DISCONNECTED
>=20
> Actual hardware synchronization result is reported exclusively via the
> TXC DPLL lock status:
> - LOCKED when an external TX reference is in use
> - UNLOCKED when falling back to ENET/TXCO
>=20
> This separation allows userspace to distinguish between TX reference
> selection and successful synchronization, matching the DPLL subsystem
> model where pin state describes topology and device lock status
> describes signal quality.
>=20
> With this change, TX reference clocks on E825 devices can be reliably
> selected, verified against hardware state, and monitored for effective
> synchronization via standard DPLL interfaces.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile     |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h        |  12 +
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 110 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |   4 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  26 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |   7 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  37 +++
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  27 +++
> drivers/net/ethernet/intel/ice/ice_txclk.c  | 255 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_txclk.h  |  38 +++
>  10 files changed, 499 insertions(+), 19 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 38db476ab2ec..95fd0c49800f 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o

...

>=20
> +/**
> + * ice_dpll_txclk_work - apply a pending TX reference clock change
> + * @work: work_struct embedded in struct ice_dplls
> + *
> + * This worker executes an outstanding TX reference clock switch
> +request
> + * that was previously queued via the DPLL TXCLK pin set callback.
> + *
> + * The worker performs only the operational part of the switch,
> issuing
> + * the necessary firmware commands to request a new TX reference
> clock
> + * selection (e.g. triggering an AN restart). It does not verify
> +whether
> + * the requested clock was ultimately accepted by the hardware.
> + *
> + * Hardware verification, software state reconciliation, pin state
> + * notification, and TXC DPLL lock-status updates are performed
> later,
> + * after link-up, by ice_txclk_update_and_notify().
> + *
> + * Context:
> + *   - Runs in process context on pf->dplls.wq and may sleep.
> + *   - Serializes access to shared TXCLK state using pf->dplls.lock.
> + */
> +static void ice_dpll_txclk_work(struct work_struct *work) {
> +	struct ice_dplls *dplls =3D
> +		container_of(work, struct ice_dplls, txclk_work);
> +	struct ice_pf *pf =3D container_of(dplls, struct ice_pf, dplls);
> +	enum ice_e825c_ref_clk clk;
> +	bool do_switch;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	do_switch  =3D pf->dplls.txclk_switch_requested;
Two stray spaces.

> +	clk =3D pf->ptp.port.tx_clk_req;
> +	pf->dplls.txclk_switch_requested  =3D false;
Two stray spaces.

> +	mutex_unlock(&pf->dplls.lock);
> +
> +	if (do_switch)
> +		ice_txclk_set_clk(pf, clk);
> +}
> +

...

> --
> 2.39.3

