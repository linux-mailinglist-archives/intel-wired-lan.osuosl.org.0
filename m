Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B8BB24CFF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 17:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03C6241170;
	Wed, 13 Aug 2025 15:15:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l709XNjgULV5; Wed, 13 Aug 2025 15:15:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9838A416AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755098134;
	bh=c73n+Yd27PYUvWZRZEyX9vMF17CIDNrqBBHhhtPZ2vU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hhLY5v/Ufbfo8OUTCFBa5KJVGfUc5n4PSwNtzzCnkninuzQ4Pm6PFY34WjjOLSpXB
	 jYMHW0DoUrWJaYtaViSS3SpKQX3d4Q7/QzHseDL/uJV2MX1UM+M8CBdz4+ZfBgvAyT
	 U6qmJOWMkQdHHbMMK7T8hhJDY584KP9ke3gKI7qjKybwU2leiwW0Cp7LBhk8Hs/P2M
	 9xCLvjv4YFGaWh4wlpiWKcFD+YOEzvLucAcWS0wz80zR18iYKd+KJjf59OVQN4iIjU
	 v7qB/v1zJ2q/MGY0Br529mlunlKxNyJ20jI68W8zO3RRUNqNbo0CNOUHM47Mp7wIj3
	 cTmQA6vKy8yoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9838A416AA;
	Wed, 13 Aug 2025 15:15:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6852D1B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 13:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6580040317
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 13:45:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MS5GaBdtrDhv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 13:45:12 +0000 (UTC)
X-Greylist: delayed 310 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Aug 2025 13:45:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 643B6400B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 643B6400B4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 643B6400B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 13:45:12 +0000 (UTC)
X-CSE-ConnectionGUID: l+KyxaIITYmpfndb18ZrwA==
X-CSE-MsgGUID: zwIPfJ6pRyGk90gFwd4IAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="79961120"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="79961120"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:44:10 -0700
X-CSE-ConnectionGUID: QBiGtlwSS0CIHpcqhVKhlA==
X-CSE-MsgGUID: Q75Hfs/zQVq6DESPikbOTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="170687176"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:44:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 06:44:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 06:44:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.77)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 06:44:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gz4n6nW+OB9nFKX6eEU1T2vbggLA1T44WmKOkSyNTJq4szmkESMpJdSnlO76EbRFeC4acXGsoOreBVcKoUEpv6S2F+1ugW8R4guY1EzXUnUnXFJkN6OvqWiYI2WlqNwQn7g78qpN7yBsOmBFIxyIDERxi0zuCkL1n0hLZcSGvW+vBtPITeTteCWZ/DGLjtyDUZb4OW8UubCKsbe5TAN/6KvH+83uATa1NHJgMZgEK3AcdhLzz/B+EZ8zrX/me0yMOo1kozlRPkRrrxWnnnWAbsvzpu0XsaiTM/7bbwdNacLjmnpqUQT1Z6VdNCG8irgK+c+wVtVjYo45FNsxRtaL/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c73n+Yd27PYUvWZRZEyX9vMF17CIDNrqBBHhhtPZ2vU=;
 b=jVV658n74L0w4pRnkVkTpo6ZSS/oUGz4qaROobZrBfG9ySvXnBnjw76m+8RtL56xtYjEm+7rxigO35yYoGT53kQsIsmfYG+kg6SL78s82B3V6BHmG4/kc2vDt8PZ9Wy7Ae/2WpfvvuY9v9MjOxdhuBh9kBt7t3GP5Jvs7GxvVWBQJXMavudVAfN8A9Ig9vaQDFhH9P4NE0pflX1Jf43W08M9urkraJb+2Edb8yBhSafQnybYoUt+PwvkFKBDqJtIbcMTZuNQwwJRpyBPx4aNfuHPPQ5jtDh+cEY9/GzyRlm7mL51GymHtcZKRP+cPTT6Kz46nGflGROE432NXVWXYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA4PR11MB9278.namprd11.prod.outlook.com (2603:10b6:208:563::12)
 by PH8PR11MB6855.namprd11.prod.outlook.com (2603:10b6:510:22c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Wed, 13 Aug
 2025 13:44:00 +0000
Received: from IA4PR11MB9278.namprd11.prod.outlook.com
 ([fe80::21c1:2c15:c80a:ac9b]) by IA4PR11MB9278.namprd11.prod.outlook.com
 ([fe80::21c1:2c15:c80a:ac9b%4]) with mapi id 15.20.9009.017; Wed, 13 Aug 2025
 13:44:00 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
Thread-Index: AQHb8sNkzkYNyhN8cUCY565A/XX3J7Rgla2AgAAy9JCAAAJXwA==
Date: Wed, 13 Aug 2025 13:43:59 +0000
Message-ID: <IA4PR11MB92788E4983AAAF86D1859119912AA@IA4PR11MB9278.namprd11.prod.outlook.com>
References: <20250711-jk-ice-fix-rx-mem-leak-v2-1-fa36a1edba8e@intel.com>
 <PH0PR11MB5013AD3FEC58E277297A7D4F962AA@PH0PR11MB5013.namprd11.prod.outlook.com>
 <IA4PR11MB9278AE885F80AFBCA2411CB7912AA@IA4PR11MB9278.namprd11.prod.outlook.com>
In-Reply-To: <IA4PR11MB9278AE885F80AFBCA2411CB7912AA@IA4PR11MB9278.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA4PR11MB9278:EE_|PH8PR11MB6855:EE_
x-ms-office365-filtering-correlation-id: 532b0b27-95bd-474a-c8cc-08ddda6f7578
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Wld4NjhXeDdUNzIxdnROYlFkSUJ2aGx3WlhDT2wzSS9pdWZYUzVYQnZWaHl5?=
 =?utf-8?B?T2RUTDN4UFN5cDcvY0E0YUxhQVY3Y25sMWRwZ3ByMzlVY3A1Yi9sTUIzN015?=
 =?utf-8?B?Z1dhalZubjM1WlFkMWlaak9rbUx2ek5Uc3hPYjJ0a2RPSGtLZFc2cGkvTkVo?=
 =?utf-8?B?RlRJZ1Erek1jR0tzaWI1YktxSWs0MlIzOTRYcGJrb1kzbVZoU25zUU82cVdM?=
 =?utf-8?B?NkV6c2laaWlTakl4WHlpdGxwOVYwbnM4QWRJOFlyeWwxRkZPRjBRdHZCc01O?=
 =?utf-8?B?UDVDN1FtcjhiV2FjSFhyUHM1TnNZQVd2QVMvKzN1cVNtVEFqRFBNR1BCNHQ0?=
 =?utf-8?B?TGNLRXRvTmVXTFM5MVZrQ2NZcHFKUEYxakh1aEpnYWtZVUIrMWVBMlVGUUUx?=
 =?utf-8?B?TEc4cnY2MDZqR0Z3Vnc3OXp3Z0MwOVp6T3diWCt3K0dGYVFMdnlpWWtJeitp?=
 =?utf-8?B?NGVaZXlvbldTZENrRnZ3UU9qdnE1Vzl6MWhpd1FUTGkreEVmdGdQYnFxQ0lH?=
 =?utf-8?B?elNUNkFSN0JrTXJNeEdXZmFkTmpMM2srekNBVkpqeU1Dcm1ZMXFlQnA3Sldz?=
 =?utf-8?B?ZGlwK2QzUHljTkQ2TnY0dzQrVnAxa0YyRCtPNC9XRjIrNHhpQXdKTzIvRUE0?=
 =?utf-8?B?REljTHVjNFV4SUZzcEJBQzREOS8zOVBRc3ZuMkRjQzhsd0dWelgxb0VneUpx?=
 =?utf-8?B?L2JNblhLRE0vWmkyZEQxVTJxdEpJQzhrcUthVS84Q0pTOE5heHVKZzRrLzN2?=
 =?utf-8?B?QndqK0pSSkU2V0dEd1Z3eEd5RjdJSCt2bUI3MWdzU05IdnA5QVJlK3ZiV1pH?=
 =?utf-8?B?ZlZDSzJxUnN4c2lUT00ydnNCaUVKVHk5WWhTekhmV1ZCUG1uM3J2dnpLSUZX?=
 =?utf-8?B?YitrVis1V1FHWlZJNFl4VE1mcDJFNGI3K0p2SmIyWCtZVzBmb1cwaVhRM2hv?=
 =?utf-8?B?MjRGdklVdXo4N3V3aFFlYzM0eWNmYjN1d0N0NFRYYW54ZFVFUFhHL0J6dkhF?=
 =?utf-8?B?M0tGV1ROMmFKOHBCYmJDYTVBMkhMRHEyM0tES0VVYmNmd0RMckprVTFXN3Ez?=
 =?utf-8?B?cEZZcngrVmgyUUxLa1o5Ui82NFMyYnBJZHR1eENacFZpVVZqQUtVblFVKzFC?=
 =?utf-8?B?S0JvSWRRVXdqWTlsUVh5VEJQVnR1RFltYVFvSE5BMDIvTmlYWmRTVytHVlJr?=
 =?utf-8?B?aVYvd1ErcHhxOWNkbW1tbGhtQmtsWW8xeXl0ODQvYWgyRElFQW55eUhPNmFU?=
 =?utf-8?B?WTNKWUY5N0lSUHVmUUxyQ1BKajkxQkh0eXZvdHg4NUJURDlPUmtUajhuc0FC?=
 =?utf-8?B?RjJzRUg3cXA1ODkvdUt6Q3ROdzFXV2lQZjFFeGRHRnRUNUtHU0JMTzZYRmVM?=
 =?utf-8?B?dUw4VWdMSzVsYXdsU1h2cXpnTUFObDFRNkQ2QmQ3Y3dSSWZZeHFySVJSK24y?=
 =?utf-8?B?TkxDOVJ0SzJDQ3BIV1RNN2w2cDh6ZVl6dVJja2dYbjFZcDhzbDZkaHFrZXdD?=
 =?utf-8?B?aTQ0TThKdG5oWGFlM0JJbnV2WFN6QjBLeUpJbUh4ZEdZaTlOSHpUazlac3Bm?=
 =?utf-8?B?WVY0Vmp2RXVtY3hOcjlqOU9XQzA3WjdweEJuWVpha2JoTFNYUzVkcUc0Q05l?=
 =?utf-8?B?REtQaGowWlhVVFIxbnlzMWYwN25TcjA1OWFNS1VZU1dEN1hIS0VRY2lCa3dZ?=
 =?utf-8?B?SkY4ZW9XSklIMEU3YU1Wc0dYdmsvTFk5TERHMGgyS09qOThaeEpKdVU3ZUg4?=
 =?utf-8?B?bzJEZDRzNWdhU2NHU0lWUlZiS3VvRUFKamowRXdpUzdFOTBGUkdpZk45QXRI?=
 =?utf-8?B?MjVyR1k1U3diQ0p3dllhN0p3aVVWQmVtNjhCT0FVUWFyYXM3c052RS9oemFW?=
 =?utf-8?B?RXVnem90SEVSTTZUSFU0T0tXWVBmOXB1VUF1Y1JJaGs5emhyNUxwanF5SWkw?=
 =?utf-8?B?UFRGTjd6Mm1RWXJQc3RHWjRXUzJoVFVNOXFRM2QzaGdkTlp0UXoyL0c3c2Vw?=
 =?utf-8?Q?sm+RCJPFs6k5j5tNn7c+/b12NoF6Bg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA4PR11MB9278.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tk5ZM3B5YmxYWGg0M0M0cWJ3d0taQUsrRW0waGtqN2dlTzd1NG5GK0tsWnI0?=
 =?utf-8?B?WHZzMUVMZUEvd0NTa2NaV1o2QXFEVHhxT1g3UFppdlZsVXZxaDhFSnl4KzVY?=
 =?utf-8?B?RHI0ampVdmRNdzFpcmlmcWhqQmdqUkFZaG9DNXRtdWk0dnM1SE1QOS9EY3Fh?=
 =?utf-8?B?OTlHNjBRdzFRbWNpeDhoMWlLRzhYWW8xQy9LbUdxYTBvT0dSbnRHTzdjSEg1?=
 =?utf-8?B?SVJqcC9mWG9lTE9ycVVnRTZBZlZ3eUtQbzZncTNMNlN4eVhQSjFBTjBlYW1G?=
 =?utf-8?B?a2h4L0FvQVBMeTd4YmNpQUFodnhNWUtIZjE1Ymx0VzJDMHRaTEg2c2FyRURO?=
 =?utf-8?B?OVJldjZRTitNZC9ReUVzeXU3blIvZ2JiTWtXYlZmbmFqQ3ZXWVAwTjAvWklZ?=
 =?utf-8?B?aXp5V1I5UEQwd0VwdWZKUURmYmJMdjRycjBFT1VyT3Mwc2EvWUJlZGFDalVk?=
 =?utf-8?B?clUwUTFhK2JVUlNkQ25rUkVlYi9HcG1Ib1VIamxaVmhZTEoxMEFGeFhlVERH?=
 =?utf-8?B?MFdYVTNQeS83Sk5DMTR0NENLRkt6bXR2M3ZLaitzeGdPMVdGVFhWT2RRMHBo?=
 =?utf-8?B?TzkwYmJZTE5DVjVEYUVVT1F4eHFHSm9zTlpzbHB4TUo5R3dDaUQ0MHAwVHBY?=
 =?utf-8?B?OUVsOW5qWnZoVlBrN1BuZkdtcWFKM2kvOGFpL3NMKzVFY2swV2V2a2hieG4v?=
 =?utf-8?B?WmZoMDkzeUQxWExBYldaNmNOU2R4OUZjbVpqNW9DWktWdXl0ZzR1cUg2U1ox?=
 =?utf-8?B?dGRodmVwanBKWERYTXJ1Z3hJNmo5Z1ArOXZHemxjWFpOUUp3RldJVWJQRDRO?=
 =?utf-8?B?Ri9ENDBjbU1XekZvcUtoMCtVRkRqR2VaU0d5NmhScXBUT1RWaWRrYUZVdFll?=
 =?utf-8?B?eGtWZFlFWkVyaFgyRDBwRFF1MzRtandyUTRPMTlKYTB2NWpQenJnVnZvVDV0?=
 =?utf-8?B?NTRFVnJRRXkrWENvQXZmTDUvYk9sY3ppYVZXQm1WbE5QVGxkU2RlVlFJdXhp?=
 =?utf-8?B?Mkc5WVFwbzdJRFhRREdWc0FhZVRWY3ZSVnBSZ2pkdE1UVXU0S3B3RElHbVhp?=
 =?utf-8?B?MkljS1lOVWJTbk5RNGVaejg5Wjk5Y3ZtMGc0YkI0NjJXNitrbFVVbFQ5Mnpj?=
 =?utf-8?B?WXJ3R2phY01iWjg1UzJkNlg4V0xFMFM2YzhjNm45M09GeG9YZXhjbDVhTUd0?=
 =?utf-8?B?d1hpN0RRZHN6bWtTTFR1ejFPdEtiZTUrdXpPdzFzUWRJbDVtRW5BcDRzUnVp?=
 =?utf-8?B?MENNemY1akh4QTh5V2Mrekt0NE1zN2pWemhMY2VKbitxanAyNDBjUC9DUXE4?=
 =?utf-8?B?Z2V0dlJWcHhwQU9MdXpGOHlWN0lkREptTnFrRk1sMmg1K0QydTdKSGl1bVA3?=
 =?utf-8?B?WkhaVkNwSVVtMmdFTHdjZkVxcEljaSs0TjJGNzNJcjFNdnZXSlNyVFNpNEZZ?=
 =?utf-8?B?Z2VVLzU0NTBtOVFJLy9nY0VUWkpnU0Fjb0F1NGs3OG0wcm5LR0h6NFFQY09H?=
 =?utf-8?B?T0FFdERGcGtpNC8wVzZHN1R0bTB0VjFVQ01BRDFldzhRemwra1NwRjRJY3R0?=
 =?utf-8?B?THlVOXMxc1Q0bmQ2Zk9rS3BuYnB0OUxzR1Y4bmFZMU1xUFdKVGpTSkRKQ0Z4?=
 =?utf-8?B?cmhlRUJBWmJQRTR3ZTJQS0ZOZXBXSHdRMjBVVmJ6VEdsQVdxOEJycDMvRTIx?=
 =?utf-8?B?SzhEdFNJZ0IzV2VucXRDUzRqSTA2VUsvOFZrVlNMcTVubXdhUWdCdzZTVWJw?=
 =?utf-8?B?UWJ3ZS9RbTZZTkFjQXJ1UXNyVmhGaG53bzAyVzl2UmRlVVpwS3oyZU9jdENE?=
 =?utf-8?B?Qk9wNDJoaUVzcmhpM3hmQk42UzZscUFmQTN5Y05uczdXNS8wUHdSdGU2RnFo?=
 =?utf-8?B?OFNKL1BqcWNIOC9xZmpUY3Q3eEdVbmxGMTdTak1zaU96cWl1ZHJ6UnlIcGwx?=
 =?utf-8?B?YmxDbEZsL1pyUWVsWDRQcmpGL1RkSHpaK1FpNFEydGFjZklacEp6aFBtaTAy?=
 =?utf-8?B?ZjhCZDBKY1B5RFB2U3Y3eXRacXlTMm42U2FqeENYNjJ0Mi85VTNIeHpYRDhX?=
 =?utf-8?B?bUVqYmhpNHlaNmp3L1I1RjE5WVFWWFFZcnBqQlpTT2E5aHhPTExCakVPcWN6?=
 =?utf-8?Q?bEACiTNLrjxQGg3+f1JkmLC0A?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA4PR11MB9278.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 532b0b27-95bd-474a-c8cc-08ddda6f7578
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2025 13:43:59.2903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3vKtzh86qDv3FI1LJ6GmZ/28FXAEg5DZsqEQ6v/2/Z+zv4ZzG54Njw2U2shwVPUhYNJACo35D/cpe2Gsc7Ts4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6855
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 13 Aug 2025 15:15:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755092713; x=1786628713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c73n+Yd27PYUvWZRZEyX9vMF17CIDNrqBBHhhtPZ2vU=;
 b=E3ZgwBw+IROs+tRxJMyPtL6O1OlSuUiEqBsoeYIeqvXqkHEtvFgGCWHR
 H2py2DoOYfaMi6sRUOtou72pARdY+A0xUoFlbrvq6dpVr9jwkcQAIQWC6
 lr9rvVjz8cDnt/4jfFFiuPVhFlZzRbZgKf2IERki9Xul1+gc+Nn5aGEyJ
 iUhxWqIk7ZioV4DN6C8XfPahTxHzOs4HCnv2VLXlMls02Yg1NewfjpeFP
 97DDK44pMuOsNTNZFTsMX2NvBksTZ4Jzr4xpRwHbdM/QkhAiFhmJUoa9y
 3kAZfXHSP2iSXe+2uWP8WNvhlFuyZu1NOyEAinRUIBLttcp689JK9Jqy6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E3ZgwBw+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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
Cc: Christoph Petrausch <christoph.petrausch@deepl.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 ": Joe Damato" <jdamato@fastly.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

KysgU3VqYWkNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTaW5naCwg
UHJpeWFYDQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDEzLCAyMDI1IDc6MTAgUE0NCj4gVG86
IEZpamFsa293c2tpLCBNYWNpZWogPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+OyBLaXRz
emVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgSW50ZWwg
V2lyZWQgTEFOIDxpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBMb2Jha2lu
LCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPg0KPiBDYzogOiBKb2Ug
RGFtYXRvIDxqZGFtYXRvQGZhc3RseS5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBDaHJpc3RvcGgN
Cj4gUGV0cmF1c2NoIDxjaHJpc3RvcGgucGV0cmF1c2NoQGRlZXBsLmNvbT47IEphcm9zbGF2IFB1
bGNoYXJ0DQo+IDxqYXJvc2xhdi5wdWxjaGFydEBnb29kZGF0YS5jb20+OyBLZWxsZXIsIEphY29i
IEUNCj4gPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHYyXSBpY2U6IGZpeCBSeCBwYWdlIGxlYWsgb24NCj4g
bXVsdGktYnVmZmVyIGZyYW1lcw0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiA+IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3Ns
Lm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSmFjb2IgS2VsbGVyDQo+ID4gU2VudDogU2F0dXJkYXks
IEp1bHkgMTIsIDIwMjUgNTo1NCBBTQ0KPiA+IFRvOiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNp
ZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPjsgS2l0c3plbCwNCj4gPiBQcnplbXlzbGF3IDxwcnpl
bXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgSW50ZWwgV2lyZWQgTEFODQo+ID4gPGludGVsLXdp
cmVkLSBsYW5AbGlzdHMub3N1b3NsLm9yZz47IExvYmFraW4sIEFsZWtzYW5kZXINCj4gPiA8YWxl
a3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gPiBDYzogSm9lIERhbWF0byA8amRhbWF0b0Bm
YXN0bHkuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPiA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBDaHJpc3RvcGgNCj4gPiBQZXRyYXVzY2gg
PGNocmlzdG9waC5wZXRyYXVzY2hAZGVlcGwuY29tPjsgSmFyb3NsYXYgUHVsY2hhcnQNCj4gPiA8
amFyb3NsYXYucHVsY2hhcnRAZ29vZGRhdGEuY29tPjsgS2VsbGVyLCBKYWNvYiBFDQo+ID4gPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBb
UEFUQ0ggaXdsLW5ldCB2Ml0gaWNlOiBmaXggUnggcGFnZSBsZWFrIG9uDQo+ID4gbXVsdGktIGJ1
ZmZlciBmcmFtZXMNCj4gPg0KPiA+IFRoZSBpY2VfcHV0X3J4X21idWYoKSBmdW5jdGlvbiBoYW5k
bGVzIGNhbGxpbmcgaWNlX3B1dF9yeF9idWYoKSBmb3INCj4gPiBlYWNoIGJ1ZmZlciBpbiB0aGUg
Y3VycmVudCBmcmFtZS4gVGhpcyBmdW5jdGlvbiB3YXMgaW50cm9kdWNlZCBhcyBwYXJ0DQo+ID4g
b2YgaGFuZGxpbmcgbXVsdGktYnVmZmVyIFhEUCBzdXBwb3J0IGluIHRoZSBpY2UgZHJpdmVyLg0K
PiA+DQo+ID4gSXQgd29ya3MgYnkgaXRlcmF0aW5nIG92ZXIgdGhlIGJ1ZmZlcnMgZnJvbSBmaXJz
dF9kZXNjIHVwIHRvIDEgcGx1cw0KPiA+IHRoZSB0b3RhbCBudW1iZXIgb2YgZnJhZ21lbnRzIGlu
IHRoZSBmcmFtZSwgY2FjaGVkIGZyb20gYmVmb3JlIHRoZSBYRFANCj4gPiBwcm9ncmFtIHdhcyBl
eGVjdXRlZC4NCj4gPg0KPiA+IElmIHRoZSBoYXJkd2FyZSBwb3N0cyBhIGRlc2NyaXB0b3Igd2l0
aCBhIHNpemUgb2YgMCwgdGhlIGxvZ2ljIHVzZWQgaW4NCj4gPiBpY2VfcHV0X3J4X21idWYoKSBi
cmVha3MuIFN1Y2ggZGVzY3JpcHRvcnMgZ2V0IHNraXBwZWQgYW5kIGRvbid0IGdldA0KPiA+IGFk
ZGVkIGFzIGZyYWdtZW50cyBpbiBpY2VfYWRkX3hkcF9mcmFnLiBTaW5jZSB0aGUgYnVmZmVyIGlz
bid0IGNvdW50ZWQNCj4gPiBhcyBhIGZyYWdtZW50LCB3ZSBkbyBub3QgaXRlcmF0ZSBvdmVyIGl0
IGluIGljZV9wdXRfcnhfbWJ1ZigpLCBhbmQNCj4gPiB0aHVzIHdlIGRvbid0IGNhbGwgaWNlX3B1
dF9yeF9idWYoKS4NCj4gPg0KPiA+IEJlY2F1c2Ugd2UgZG9uJ3QgY2FsbCBpY2VfcHV0X3J4X2J1
ZigpLCB3ZSBkb24ndCBhdHRlbXB0IHRvIHJlLXVzZSB0aGUNCj4gPiBwYWdlIG9yIGZyZWUgaXQu
IFRoaXMgbGVhdmVzIGEgc3RhbGUgcGFnZSBpbiB0aGUgcmluZywgYXMgd2UgZG9uJ3QNCj4gPiBp
bmNyZW1lbnQgbmV4dF90b19hbGxvYy4NCj4gPg0KPiA+IFRoZSBpY2VfcmV1c2VfcnhfcGFnZSgp
IGFzc3VtZXMgdGhhdCB0aGUgbmV4dF90b19hbGxvYyBoYXMgYmVlbg0KPiA+IGluY3JlbWVudGVk
IHByb3Blcmx5LCBhbmQgdGhhdCBpdCBhbHdheXMgcG9pbnRzIHRvIGEgYnVmZmVyIHdpdGggYQ0K
PiA+IE5VTEwgcGFnZS4gU2luY2UgdGhpcyBmdW5jdGlvbiBkb2Vzbid0IGNoZWNrLCBpdCB3aWxs
IGhhcHBpbHkgcmVjeWNsZQ0KPiA+IGEgcGFnZSBvdmVyIHRoZSB0b3Agb2YgdGhlIG5leHRfdG9f
YWxsb2MgYnVmZmVyLCBsb3NpbmcgdHJhY2sgb2YgdGhlIG9sZA0KPiBwYWdlLg0KPiA+DQo+ID4g
Tm90ZSB0aGF0IHRoaXMgbGVhayBvbmx5IG9jY3VycyBmb3IgbXVsdGktYnVmZmVyIGZyYW1lcy4g
VGhlDQo+ID4gaWNlX3B1dF9yeF9tYnVmKCkgZnVuY3Rpb24gYWx3YXlzIGhhbmRsZXMgYXQgbGVh
c3Qgb25lIGJ1ZmZlciwgc28gYQ0KPiA+IHNpbmdsZS0gYnVmZmVyIGZyYW1lIHdpbGwgYWx3YXlz
IGdldCBoYW5kbGVkIGNvcnJlY3RseS4gSXQgaXMgbm90DQo+ID4gY2xlYXIgcHJlY2lzZWx5IHdo
eSB0aGUgaGFyZHdhcmUgaGFuZHMgdXMgZGVzY3JpcHRvcnMgd2l0aCBhIHNpemUgb2YgMA0KPiA+
IHNvbWV0aW1lcywgYnV0IGl0IGhhcHBlbnMgc29tZXdoYXQgcmVndWxhcmx5IHdpdGggImp1bWJv
IGZyYW1lcyIgdXNlZA0KPiBieSA5SyBNVFUuDQo+ID4NCj4gPiBUbyBmaXggaWNlX3B1dF9yeF9t
YnVmKCksIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHRvIGNhbGwNCj4gPiBpY2VfcHV0X3J4X2J1Zigp
IG9uIGFsbCBidWZmZXJzIGJldHdlZW4gZmlyc3RfZGVzYyBhbmQgbmV4dF90b19jbGVhbi4NCj4g
PiBCb3Jyb3cgdGhlIGxvZ2ljIG9mIGEgc2ltaWxhciBmdW5jdGlvbiBpbiBpNDBlIHVzZWQgZm9y
IHRoaXMgc2FtZQ0KPiA+IHB1cnBvc2UuIFVzZSB0aGUgc2FtZSBsb2dpYyBhbHNvIGluIGljZV9n
ZXRfcGdjbnRzKCkuDQo+ID4NCj4gPiBJbnN0ZWFkIG9mIGl0ZXJhdGluZyBvdmVyIGp1c3QgdGhl
IG51bWJlciBvZiBmcmFnbWVudHMsIHVzZSBhIGxvb3ANCj4gPiB3aGljaCBpdGVyYXRlcyB1bnRp
bCB0aGUgY3VycmVudCBpbmRleCByZWFjaGVzIHRvIHRoZSBuZXh0X3RvX2NsZWFuDQo+ID4gZWxl
bWVudCBqdXN0IHBhc3QgdGhlIGN1cnJlbnQgZnJhbWUuIENoZWNrIHRoZSBjdXJyZW50IG51bWJl
ciBvZg0KPiA+IGZyYWdtZW50cyAocG9zdCBYRFAgcHJvZ3JhbSkuIEZvciBhbGwgYnVmZmVycyB1
cCAxIG1vcmUgdGhhbiB0aGUNCj4gPiBudW1iZXIgb2YgZnJhZ21lbnRzLCB3ZSdsbCB1cGRhdGUg
dGhlIHBhZ2VjbnRfYmlhcy4gRm9yIGFueSBidWZmZXJzIHBhc3QNCj4gdGhpcywgcGFnZWNudF9i
aWFzIGlzIGxlZnQgYXMtaXMuDQo+ID4gVGhpcyBlbnN1cmVzIHRoYXQgZnJhZ21lbnRzIHJlbGVh
c2VkIGJ5IHRoZSBYRFAgcHJvZ3JhbSwgYXMgd2VsbCBhcw0KPiA+IGFueSBidWZmZXJzIHdpdGgg
emVyby1zaXplIHdvbid0IGhhdmUgdGhlaXIgcGFnZWNudF9iaWFzIHVwZGF0ZWQNCj4gaW5jb3Jy
ZWN0bHkuDQo+ID4gVW5saWtlIGk0MGUsIHRoZSBpY2VfcHV0X3J4X21idWYoKSBmdW5jdGlvbiBk
b2VzIGNhbGwNCj4gPiBpY2VfcHV0X3J4X2J1ZigpIG9uIHRoZSBsYXN0IGJ1ZmZlciBvZiB0aGUg
ZnJhbWUgaW5kaWNhdGluZyBlbmQgb2YgcGFja2V0Lg0KPiA+DQo+ID4gVGhlIHhkcF94bWl0IHZh
bHVlIG9ubHkgbmVlZHMgdG8gYmUgdXBkYXRlZCBpZiBhbiBYRFAgcHJvZ3JhbSBpcyBydW4sDQo+
ID4gYW5kIG9ubHkgb25jZSBwZXIgcGFja2V0LiBEcm9wIHRoZSB4ZHBfeG1pdCBwb2ludGVyIGFy
Z3VtZW50IGZyb20NCj4gPiBpY2VfcHV0X3J4X21idWYoKS4gSW5zdGVhZCwgc2V0IHhkcF94bWl0
IGluIHRoZSBpY2VfY2xlYW5fcnhfaXJxKCkNCj4gPiBmdW5jdGlvbiBkaXJlY3RseS4gVGhpcyBh
dm9pZHMgbmVlZGluZyB0byBwYXNzIHRoZSBhcmd1bWVudCBhbmQgYXZvaWRzDQo+ID4gYW4gZXh0
cmEgYml0LSB3aXNlIE9SIGZvciBlYWNoIGJ1ZmZlciBpbiB0aGUgZnJhbWUuDQo+ID4NCj4gPiBN
b3ZlIHRoZSBpbmNyZW1lbnQgb2YgdGhlIG50YyBsb2NhbCB2YXJpYWJsZSB0byBlbnN1cmUgaXRz
IHVwZGF0ZWQNCj4gPiAqYmVmb3JlKiBhbGwgY2FsbHMgdG8gaWNlX2dldF9wZ2NudHMoKSBvciBp
Y2VfcHV0X3J4X21idWYoKSwgYXMgdGhlDQo+ID4gbG9vcCBsb2dpYyByZXF1aXJlcyB0aGUgaW5k
ZXggb2YgdGhlIGVsZW1lbnQganVzdCBhZnRlciB0aGUgY3VycmVudCBmcmFtZS4NCj4gPg0KPiA+
IFRoaXMgaGFzIHRoZSBhZHZhbnRhZ2UgdGhhdCB3ZSBhbHNvIG5vIGxvbmdlciBuZWVkIHRvIHRy
YWNrIG9yIGNhY2hlDQo+ID4gdGhlIG51bWJlciBvZiBmcmFnbWVudHMgaW4gdGhlIHJ4X3Jpbmcs
IHdoaWNoIHNhdmVzIGEgZmV3IGJ5dGVzIGluIHRoZQ0KPiByaW5nLg0KPiA+DQo+ID4gQ2M6IENo
cmlzdG9waCBQZXRyYXVzY2ggPGNocmlzdG9waC5wZXRyYXVzY2hAZGVlcGwuY29tPg0KPiA+IFJl
cG9ydGVkLWJ5OiBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYucHVsY2hhcnRAZ29vZGRhdGEu
Y29tPg0KPiA+IENsb3NlczoNCj4gPg0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
Q0FLOGZGWjRoWTZHVUpORU56M3dZOWphWUxaWEdmcHI3ZG5aeHoNCj4gPiBHTVlvRTQ0Y2FSYmd3
QG1haWwuZ21haWwuY29tLw0KPiA+IEZpeGVzOiA3NDNiYmQ5M2NmMjkgKCJpY2U6IHB1dCBSeCBi
dWZmZXJzIGFmdGVyIGJlaW5nIGRvbmUgd2l0aA0KPiA+IGN1cnJlbnQNCj4gPiBmcmFtZSIpDQo+
ID4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gSSd2ZSB0ZXN0ZWQgdGhpcyBpbiBhIHNldHVwIHdpdGggTVRVIDkwMDAs
IHVzaW5nIGEgY29tYmluYXRpb24gb2YNCj4gPiBpcGVyZjMgYW5kIHdyayBnZW5lcmF0ZWQgdHJh
ZmZpYy4NCj4gPg0KPiA+IEkgdGVzdGVkIHRoaXMgaW4gYSBjb3VwbGUgb2Ygd2F5cy4gRmlyc3Qs
IEkgY2hlY2sgbWVtb3J5IGFsbG9jYXRpb25zDQo+ID4gdXNpbmcNCj4gPiAvcHJvYy9hbGxvY2lu
Zm86DQo+ID4NCj4gPiAgIGF3ayAnL2ljZV9hbGxvY19tYXBwZWRfcGFnZS8geyBwcmludGYoIiVz
ICVzXG4iLCAkMSwgJDIpIH0nDQo+ID4gL3Byb2MvYWxsb2NpbmZvDQo+ID4gfCBudW1mbXQgLS10
bz1pZWMNCj4gPg0KPiA+IFNlY29uZCwgSSBwb3J0ZWQgc29tZSBzdGF0cyBmcm9tIGk0MGUgd3Jp
dHRlbiBieSBKb2UgRGFtYXRvIHRvIHRyYWNrDQo+ID4gdGhlIHBhZ2UgYWxsb2NhdGlvbiBhbmQg
YnVzeSBjb3VudHMuIEkgY29uc2lzdGVudGx5IHNhdyB0aGF0IHRoZQ0KPiA+IGFsbG9jYXRlIHN0
YXQgaW5jcmVhc2VkIHdpdGhvdXQgdGhlIGJ1c3kgb3Igd2FpdmUgc3RhdHMgaW5jcmVhc2luZy4g
SQ0KPiA+IGFsc28gYWRkZWQgYSBzdGF0IHRvIHRyYWNrIGRpcmVjdGx5IHdoZW4gd2Ugb3Zlcndy
b3RlIGEgcGFnZSBwb2ludGVyDQo+ID4gdGhhdCB3YXMgbm9uLU5VTEwgaW4gaWNlX3JldXNlX3J4
X3BhZ2UoKSwgYW5kIHNhdyBpdCBpbmNyZW1lbnQNCj4gY29uc2lzdGVudGx5Lg0KPiA+DQo+ID4g
V2l0aCB0aGlzIGZpeCwgYWxsIG9mIHRoZXNlIGluZGljYXRvcnMgYXJlIGZpeGVkLiBJJ3ZlIHRl
c3RlZCBib3RoDQo+ID4gMTUwMCBieXRlIGFuZA0KPiA+IDkwMDAgYnl0ZSBNVFUgYW5kIG5vIGxv
bmdlciBzZWUgdGhlIGxlYWsuIFdpdGggdGhlIGNvdW50ZXJzIEkgd2FzIGFibGUNCj4gPiB0byBp
bW1lZGlhdGVseSBzZWUgYSBsZWFrIHdpdGhpbiBhIGZldyBtaW51dGVzIG9mIGlwZXJmMywgc28g
SSBhbQ0KPiA+IGNvbmZpZGVudCB0aGF0IEkndmUgcmVzb2x2ZWQgdGhlIGxlYWsgd2l0aCB0aGlz
IGZpeC4NCj4gPg0KPiA+IEkndmUgbm93IGFsc28gdGVzdGVkIHdpdGggeGRwLWJlbmNoIGFuZCBj
b25maXJtIHRoYXQgWERQX1RYIGFuZA0KPiA+IFhEUF9SRURJUiB3b3JrIHByb3Blcmx5IHdpdGgg
dGhlIGZpeCBmb3IgdXBkYXRpbmcgeGRwX3htaXQuDQo+ID4gLS0tDQo+ID4gQ2hhbmdlcyBpbiB2
MjoNCj4gPiAtIEZpeCBYRFAgVHgvUmVkaXJlY3QgKFRoYW5rcyBNYWNpZWohKQ0KPiA+IC0gTGlu
ayB0byB2MToNCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNzA5LWprLWljZS1m
aXgtcngtbWVtLWxlYWstdjEtMS0NCj4gPiBjZmRkN2VlZWE5MDVAaW50ZWwuY29tDQo+ID4gLS0t
DQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5oIHwgIDEgLQ0K
PiA+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jIHwgODENCj4gPiAr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzMg
aW5zZXJ0aW9ucygrKSwgNDkgZGVsZXRpb25zKC0pDQo+IA0KPiBUZXN0ZWQtYnk6IFByaXlhIFNp
bmdoIDxwcml5YXguc2luZ2hAaW50ZWwuY29tPg0KPiANCg0K
