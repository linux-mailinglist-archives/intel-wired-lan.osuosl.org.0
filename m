Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5CDBFE9F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 01:57:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BAA140E80;
	Wed, 22 Oct 2025 23:57:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hFC1QKvTwa59; Wed, 22 Oct 2025 23:57:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B454240E81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761177420;
	bh=RybiesgsgBZoZpgSuz1TUzXTZmQHbCP936EwG4XjisM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nYY9mDnltXvcts/XSrnA7Ss74I2dhK0cq5Nq7LXCWuF280Obcp6uQdtY4VfdGZx5u
	 3GlSBYIy8a3yPPSZ02crcxRoCWlAQqUV6ssgQp7uqGP3HEynn7cvYfdZdnLDfnson2
	 6BkmQGtcAl4Q/sVbC0E3Q6Ux3l0m6tXqH2j7oXUjO0pg8XH8IBLk7D8GS3yh+uDZTa
	 nk39/zKU6Kf1HbGaj1TmFwbZhzmnHDt3UwTjHGBpj/Rfj69npVKh07ELYlBuuDhFzO
	 bM/bKhg4v/xu9DTiBeByJDA9B1LN75QtA5Kn5+BgNRvrd4V5nFt7xJcOa7BFZPsyrA
	 o86EMzZqbImlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B454240E81;
	Wed, 22 Oct 2025 23:57:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D55A470A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 23:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C739840E7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 23:56:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PD4UAvoDByR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 23:56:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2626E40E7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2626E40E7C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2626E40E7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 23:56:58 +0000 (UTC)
X-CSE-ConnectionGUID: qgYPoYaCQ32pKOsA9u0aOw==
X-CSE-MsgGUID: i38M4Ic6QiqiheeduQP7RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="50916886"
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="50916886"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 16:56:57 -0700
X-CSE-ConnectionGUID: tQZ7ZyT9QkGjiR5awlwUGA==
X-CSE-MsgGUID: Cf1DpJMkS/KK3DtD0Nmwgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="188294427"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 16:56:58 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 16:56:56 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 16:56:56 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.58)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 16:56:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XYW5yQL4OMT1Dxq+YAbRXlC4hpbnMWex1YLat/HzdL14vmb/4AJImfA6vakb+v884IQFjSWLNsGPM6De5wSqm76GXFfpqdiCwzfAIoCN6rKd05Nbw7wSHogEnSD5SG5qAdDg06oaSjiobRN97ONCRsn4hn8EWtdPfPjwJfPt6WkOwhcSbNwjbVaJkzWZg0AWTx+s3tB2DYxO4/JECQSxUfKjOmAtvE610qqbkmweHniarcLEAK2tf4gZ9KPyKX/4gKN7HghQl67Zb2xBXmxm6qGkaECWfm+BCPJHCrX4PDqBn06ItU5u0cFhnaR1WS0E/lwyOIUZAD46EuGbHGpEoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RybiesgsgBZoZpgSuz1TUzXTZmQHbCP936EwG4XjisM=;
 b=BQ9LTKkVDtotF2JsbxrFCb5P50GE4LtgC2uyHtNpiOfXavR3xNVIiOFWbrJOnqGm+VID5/C/z7vzfAaUK7UGCM7Mx3kuXyUn85O5WxdKSvPKb1Hx0Fea4sT+6CBSRN4QN1JFFgTB3ke+MPNAXY/oDhC0vFGqmkSCSQp1XySfgoYWJYJ2B6XuMx25KBc35pgPwRk9jGa4pEjbSv6PRA1Ngz69ohz9nKS/3YhJQ9g0pqE5MCZCjzpO2/x49cZmmo5dbsWyDL0+y9vEiPphJGpRKEGWbe4J9HCrAbuFZdG6nTxn7Sl62dC2W9GQfoTeyuyjwz5sLiNgfeiAD5R33vz2qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS7PR11MB8856.namprd11.prod.outlook.com (2603:10b6:8:253::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Wed, 22 Oct
 2025 23:56:54 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::241d:ef75:baf6:dfe9]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::241d:ef75:baf6:dfe9%6]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 23:56:54 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: drop page
 splitting and recycling
Thread-Index: AQHcLf8eNT4NOi0LhEeTKr6WtesdRbTPAoVw
Date: Wed, 22 Oct 2025 23:56:54 +0000
Message-ID: <LV1PR11MB8790C3ED783490EA27E4268C90F3A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20250925092253.1306476-1-michal.kubiak@intel.com>
 <20250925092253.1306476-3-michal.kubiak@intel.com>
In-Reply-To: <20250925092253.1306476-3-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS7PR11MB8856:EE_
x-ms-office365-filtering-correlation-id: 050c7030-dd23-4911-878f-08de11c6ad6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gMYzd3Rxu/ExEXK3HDVBoeukwWe5M1Mm2zPGlNN227OpREGSPrcfUapqiqVA?=
 =?us-ascii?Q?YguQJq3xhn61CR4iLhjU33+8M6ItCm8uyBhHRKvFsT8EeXfkb89TnNzFr8GX?=
 =?us-ascii?Q?uqPU3f6ndZbY/xW+SBrgsCPQF6L4oY9ywOd/7vB/dpFpDHQhBEDD/Stz+d2l?=
 =?us-ascii?Q?9bjixtu2tqX7SV467Dr79TvWIFATSlLD5sdTZaXWArfeKxmx7hQNECjCS3kv?=
 =?us-ascii?Q?aj95Pq0OoDD4w+3rXWI5bousUuodGd3AyBl/6iVscSKM07sDJMCXT0QJHmVF?=
 =?us-ascii?Q?2BSOVQ2t0W77PPFwHjD735OyEluhvpfvOARtu0t7ksH/V7OXdh70pDfplOuM?=
 =?us-ascii?Q?ob9aaVwO+oqlYAX4qBWX22IGy2yJ2vRFuDjdgWh1etAiDMkq/t09qN3DGiBZ?=
 =?us-ascii?Q?QfuCjKCetIz1d+Kvh4qnacO9buQMWOspwOmZr6UGULOq4SJjrqgj5x1YZShI?=
 =?us-ascii?Q?+IeAGuQS8+o4pJmi3XtI67JjhjZWgkCgLOkn6BKkfy2goYfLK5yQV7hu6eLI?=
 =?us-ascii?Q?4j5GZj6SHMq96r4lc8Yq1CNK1iPOsLy4pFOwzTs84ztBS4vmyN3qLx2Gv8RH?=
 =?us-ascii?Q?DwaD4ND9UBnO4pOYQeCzPGzHkOr5H6etgL6omoKCHMJhRI1n+DY7+YSUwzvT?=
 =?us-ascii?Q?tImjCT/y93EFfQZyIAm0tzWAEiaP76u88lKl2qRXDUgtLdkPTxU600ygo5EN?=
 =?us-ascii?Q?9gOhPWH4nOPC2l+Dqu5/8tTTmiu/c4d/N1ewcbC8KnKZSgaBXgOnsyiC5Efw?=
 =?us-ascii?Q?N9zFgp94bs51OZ/9KIn9yBpV4ONwhZCtnacz1/1+jTg0BfGKlMUwow2chUaE?=
 =?us-ascii?Q?Vu6ZeSqQBB8URsl/AJoCVS96xhWWGK8vpL4AbwSqHpBWZmT+7DdhG/HXMVVI?=
 =?us-ascii?Q?oF7nnuOvhuO4Kt/frMQjwB9UmZNlAnGICIIloADe5ITMuMEk0+4mRuGQQlm2?=
 =?us-ascii?Q?tQ6kn8o/vIAUHSLPu7zf2eva+zMwg9Y+E2gVWpuls4pP7mHqJScqyNZnibKX?=
 =?us-ascii?Q?pyOnsof0LA2LmuX/iYe2/Za9hjIgY+smIKsOM06Db+jMqWKuPT7xZFxlWOqB?=
 =?us-ascii?Q?r2s4XoyLl4HmdVQVm9OXXghqQXdvcAOJZ5d5F9RkeDsmETMZTNwHdBYH5JqZ?=
 =?us-ascii?Q?cdRvvsEKkCK8rz701xOeO1NR6vl0vwpTGmt3DphrecqHSfdbOHVi8bxlSHk5?=
 =?us-ascii?Q?EeZH5DgIFpexAJb6lf6oYt/ACidzMCZUVWCNAADQmYJd8wTIWPnGD6KHIFcn?=
 =?us-ascii?Q?uKN2h4k+xYK7gaVOORusqkOljGUg9T4DEPc/X1BAtfjHVlqxt2VskmzTnQ8j?=
 =?us-ascii?Q?fe5px1qpA50JOzMFlkJPl691AIwLxbPse23vCbBrwmtTdFdKYz954bi4wrgL?=
 =?us-ascii?Q?5/hDciFG7673pcNTLz12tfK3qKOY2muIiqDAEFg8R4OQtGrqiwpqsmqFNN/T?=
 =?us-ascii?Q?RczhBaK1G1GpqzwRUh74TpETYTOO5xbYTFi9cszvz/+JrEmPsd+9RD9qrzM/?=
 =?us-ascii?Q?uZHrj+LyVk3tWiZVQStTgT/bsCBfZSM15j+V?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Mz++N3gXF0mXroP7OCDIGqC4oAUhAHcdQT1h7ygRHuPl59oMZ9hyuHCBolSC?=
 =?us-ascii?Q?s5yII1BIMmpcrN3PYwI2z+K5RTAFIYj3TBZjroj/RT22/d4hxXxTrUWp86hz?=
 =?us-ascii?Q?C6Nf7Fmfv9ZxdnG8n8qeOVlmJK7o/pxzf0F/lSBkmdFwwAiW6hDpnVzJMOvl?=
 =?us-ascii?Q?O5tdj5v5T++gaJuVXHIqiBK2I1ekRLO2OxCfWjQDN8JRSP3Dv0y4SgcvhzTd?=
 =?us-ascii?Q?LC2r3EKq5KcTmPB0hPb0c1rqlhTfaefZH1mhoTOLe3gdWYW4x42kQxQKDTy2?=
 =?us-ascii?Q?Q0UR2PHUaRNXjC0UMcJtr2PPreooyuKBZH8S9xbsQwu29UBx+ta7Z/FJA2Mm?=
 =?us-ascii?Q?/qaVD9mOM1e5Y+LHcDvru+GMytruX0e2oDA2lSiF5a6tQB0bICwfQpN84kmF?=
 =?us-ascii?Q?007681wf1dFeDN7IGzUOAKI3EfxMJjQPQQraQifgZalWF57KyrMXwXfKNHCZ?=
 =?us-ascii?Q?tBC1R3JVIGD/XQQw3ycP2p3HWH9HhEe0qNZa1YTAisjqY9bWX7BteYqWsbzV?=
 =?us-ascii?Q?GvzWIk7wo2toLACYLwfzFQN9m9r+Md+YO/P/jOpmOt3D3xVPR9+cFZjrr3YK?=
 =?us-ascii?Q?nwZW1uAiEZS8Sawpyfi4/o/JwMXu1P/KVq4KOlEaxoqZj0Yv7WKm6RVwd+8P?=
 =?us-ascii?Q?AQjM0Qcjhqbc+XgfRw80nwE6qAsK2q6YlRLRIEKbyfWUWsHIEzYC8gTd46ho?=
 =?us-ascii?Q?Yd79Ni3iAx0tKIoDAyyMUuVv+gECzYxqfhJWMIstpiXwJHxvYip7bADFE0Rw?=
 =?us-ascii?Q?ERK7QyEFZnuZlqFwVCAqLxOBPMh7EaxHHDUzJ+upUI+2AeC/6aAiF/r7Yh6i?=
 =?us-ascii?Q?DsX+XcdrrPTPPhdx9HG0D7fMzK9HYAEcPDJbP9FVGChuHJVJbwHpWLB4Srdd?=
 =?us-ascii?Q?zt7u38tyvOJPsLzJYRSG5sGI4P0r2+LkD2LLy8vU7oaY2zhxls7loe/Uj6Od?=
 =?us-ascii?Q?en5ytXoQO7NMR+9R4OtNem3SwyouI1qxPCp5f9N6ZOzE+4r6RLfpxNDzHYS2?=
 =?us-ascii?Q?orQrmjoPGmUBFgW5cvHuZgYiE5HlbKyibGADsBUFA3Re/LAJJ/+nxtUPIiMO?=
 =?us-ascii?Q?WwvMMyNGNxhg40jWvZnE12FfdeahLP9oIV8dW51HekFLkhIqu4EGvTrt9q8u?=
 =?us-ascii?Q?9e+ZDsNtAQFByNViwYlP4nRxgqiytL2ofiGzG4qMDJvzxJmlrz7yZ1HM0xhc?=
 =?us-ascii?Q?rgzisKiis3XsnNLKhwDTrcz5+TH4XcpD07EdlCsvW7XQinWttVUFS3Zr075Q?=
 =?us-ascii?Q?wxf2T+iVqQnIhCWsYyeB+//xpEmPXa968AsaF84/D9G+lXH3jUur0I7oK6Rn?=
 =?us-ascii?Q?OM//aT1rGZQJiMiJ3JBQx0UutbfzZsQMwZOh13GPH9rzvgooR7eew/3qPpv5?=
 =?us-ascii?Q?s48afejTIITOW/B3gDZAz6pnGgAIVhoYe5bWJ+epZa8Na9/1zw9Cc3/VRfyQ?=
 =?us-ascii?Q?adqUYR2h5mV2ux+1e7aht9kx4W1UtZWpq1jS26yD+wlIjkEScI8SHVCSc0L9?=
 =?us-ascii?Q?anEI2VCj4E0nFW8c/Mqdf7bascxIYc3cTaRXpLHVW9xhwNG/M/p+o2Zazf2z?=
 =?us-ascii?Q?TyH9nSoRvYUf9lNg5M7npPwP/JAv7p2rfTwqvUzp6F8oexK8bFtM/KkKepM+?=
 =?us-ascii?Q?JA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 050c7030-dd23-4911-878f-08de11c6ad6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 23:56:54.4004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6m5Tla2xE/0N3abhWyNZwvSj3BRW8KMkmHvOaQgFEZL2u8XTwQ6Ka/P6sy/kVwirsbRLAZU9Fzc2g53d2LF7lnmvRBt1S13bL2lxPzscq+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8856
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761177418; x=1792713418;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zg9cXQzkz2ERZlYZNwXM3Y+BaC+jF3le50nBRz/J4RM=;
 b=KahUK82Ryl2WnI9Ggi5ju5kooNu7R6u7AoWgj1rUBdMabHlz1V8NeiDi
 PXsvN6bfZEwz11+vGmvRqobIpbH+GB94PC/+iKFh5OBWDCIOpwG6nptse
 RKRPen6rTjoU1IWIlau3vB3Ep/Fcry4UXg3SexwVavoX+ZuzaFM1Fc614
 U062Hu1DUDLmA8Nj3B0VW43LdujL/JicDbUp1Vfj7eEpUCFv/oin1C87L
 LcsjKdASzeZPzllvaLB6B02qK6Jx/wnVZ2GjRy7QQO9wO+/g89UXpTWcK
 31fHIfNi30yQUgqyMh06QB/rFw9SNxU2mtNkOJvMmD8KE8dc5GIbmk4Gd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KahUK82R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: drop page
 splitting and recycling
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Kubiak
> Sent: Thursday, September 25, 2025 2:23 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er <aleksander.lobakin@intel.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>; Zaremba, Larysa <larysa.zaremba@intel.com>;=20
> netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>; pmenzel@molgen.mpg.de; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; K=
ubiak, Michal <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: drop page splitti=
ng and recycling
>=20
> As part of the transition toward Page Pool integration, remove the legacy=
 page splitting and recycling logic from the ice driver. This mirrors the a=
pproach taken in commit 920d86f3c552 ("iavf: drop page splitting > and recy=
cling").
>=20
> The previous model attempted to reuse partially consumed pages by splitti=
ng them and tracking their usage across descriptors. While this was once a =
memory optimization, it introduced significant complexity and overhead in t=
he Rx path, including:
> - Manual refcount management and page reuse heuristics;
> - Per-descriptor buffer shuffling, which could involve moving dozens
>   of `ice_rx_buf` structures per NAPI cycle;
> - Increased branching and cache pressure in the hotpath.
>=20
> This change simplifies the Rx logic by always allocating fresh pages and =
letting the networking stack handle their lifecycle. Although this may temp=
orarily reduce performance (up to ~98% in some XDP cases), it greatly impro=
ves maintainability and paves the way for Page Pool, which will restore and=
 exceed previous performance levels.
>=20
> The `ice_rx_buf` array is retained for now to minimize diffstat and ease =
future replacement with a shared buffer abstraction.
>=20
> Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |   2 +
>  drivers/net/ethernet/intel/ice/ice_base.c    |  29 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c    | 139 ++-----------------
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |  72 ----------
>  drivers/net/ethernet/intel/ice/virt/queues.c |   5 +-
>  5 files changed, 24 insertions(+), 223 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
