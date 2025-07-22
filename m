Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E01B0D8D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 14:03:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7904C615E0;
	Tue, 22 Jul 2025 12:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8FytoxkIOU_2; Tue, 22 Jul 2025 12:03:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDC8861CC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753185803;
	bh=Nts14ZPjjhnpqdB56PSSIaaiXg1degPNzLlBUwQGmF4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HbMOsD0Fk837apL+IEnklcaUFPf7z9g2WlC2A3eb6Gf6nPxsPg6wUfFAKK2/ec8sH
	 zJ0HaPHL+b5RiwI/7SfiB6CdgYJcN1x+ZOD0QfEsI8cUulVEf4+7kp92EjUKdJYIO3
	 NauqIMaL3wPOjPOXJlfrIvTOJSZVU6RdLYLLEIRg+TowAvnwOtmjSANcOE6EuzjIgo
	 0ZgjsjizusKoDBITyVw4AjddblwUmb3mGhLQN0dMHzYijXp7aN+Z4UUeYxmpIgMyis
	 GK0+ZO2TPA1H0g6ux0awm1OzZw/zCzTQ5nWMxmlO3CiCIZuWcYz265GpyooaoCui8+
	 rRdRmsXdk9s+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDC8861CC0;
	Tue, 22 Jul 2025 12:03:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 43937127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 297E8849D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMvR0ZBioiOz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 12:03:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E295849CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E295849CF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E295849CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:03:21 +0000 (UTC)
X-CSE-ConnectionGUID: dKbjsgTMQAusFiVL6zAeRQ==
X-CSE-MsgGUID: SeZ95/qSSIyBzDX/jbCzGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55542262"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55542262"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:03:18 -0700
X-CSE-ConnectionGUID: uVwl1fSyTSacAQYebqbtsQ==
X-CSE-MsgGUID: SaADVYocTnCTDbCX99wb4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="164794550"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:03:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:03:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 05:03:16 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.54)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D8wY4G/mro53aFQmleGMgM6FeuDLvkdUSq+eRbHF1s41gz7rY5hGGxs84Snse6+voEqhC4n056jpO/bqFvfdjzJSuuSmzNkHjIxZhh18bHDFi2auC2O14apFLA2cfvNHAP8whrma7ZAWqBFz2yBJyQ16CLx5E1f3SI2jN9YZ0g0ukKLnmrkNbW2ev1J55QfOhaW1ECcvkDyVBxSaTAT0zbsg+5dYbXXmbHuWokG2Jc7Wvzbudd9qUqiR/P2Rzs6KVGopb8tzs7e0dOoI466knxB+/cJFol01a6kQQxQMbmCMcNYrffZ2F013XwRpCczWzUhxoaFAXXVcZ2QxKdnn9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nts14ZPjjhnpqdB56PSSIaaiXg1degPNzLlBUwQGmF4=;
 b=XG7IEnIHBvx2Oy6ACZiIXQ1F+XdLVMAKc7UTRrlnFamcD6qSXzom2eS7DpyMzjHorPpZgF85JOrPy5igfeXz0Gk6y2wBlS4VpP5UU0BkyspR0w38xckRbEipotHfHe+33vgcNQQY8fxcoiTFAHUFmN01Eg1ejlqZy9Frl5ZbjuYIptEOnbYnMcR9KVuU3COa/0+XCY/KYIGnJl6B+2hU7SaZG3N65NpBYzJr8TlNp4m8Nfskx3vNoG8OTDOMraQJVnh7EjQpw+0bhqaGq1d80AUV53L0J8iDhuEsUldyNtvKtPx/mc10btOQsx6+4TxBb3ZDZr3xcv9xOyTwqAw9nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB6382.namprd11.prod.outlook.com (2603:10b6:8:be::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 12:02:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Tue, 22 Jul 2025
 12:02:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 02/15] ice: move
 get_fwlog_data() to fwlog file
Thread-Index: AQHb+vjM2xwPY8TPKUCibBPUvsajv7Q+CoQg
Date: Tue, 22 Jul 2025 12:02:52 +0000
Message-ID: <IA3PR11MB8986DF9CBA9DD7D092D11D14E55CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250722104600.10141-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB6382:EE_
x-ms-office365-filtering-correlation-id: 230b492c-0795-43e3-0bd0-08ddc917af84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4dglBTGFiaULBhmdt66+ca0Nyk+ogGqUzdpRTYWkIDzjGKRhit5S9ypDWKI8?=
 =?us-ascii?Q?BwwhvEdza6yMF84yhggtKSAknLIs4x2GXbmhS6CWoUeoXMmDNtnaz+E+gI/H?=
 =?us-ascii?Q?8qRqSf8XDSQRJrryO6dbUHjFBL0NEmXV4QKZYX5rNWyN4yIh6ZidnHPstXsB?=
 =?us-ascii?Q?p32qU6C/OxvJD1Yhw1Gx79M7C8aDXd02w+tjoDFluyBpaf8s7QAobBR3kg9I?=
 =?us-ascii?Q?HNyFe9M0kwDJPpl4J6L8H5Z3dTYtdaq5bcS22em2Fj9aGJiaOSOgYbURjvcI?=
 =?us-ascii?Q?MPrgRnHeW+xc/y41e1iSD8lWuMxbZ3rZTuhNxbjAKoHxq5yfXqJlpWAGjIAZ?=
 =?us-ascii?Q?X9lUrf6HrQ3cCpkWNUthSb2hoM6GO8m75N1rUwwefZJTeyamZK717xHCboyS?=
 =?us-ascii?Q?5nP+tvLBKia55epqitXc4LNTfL33gvqWxDsQm5C0L7L6JZNCzg0JBstnZeDR?=
 =?us-ascii?Q?d6NWuKJrdrTNoc4DfrUQRxnfknqzOmZZw8c5aDFoZ/0Flc7+vP4io4exxA9f?=
 =?us-ascii?Q?zxuLbfvHtAKkS2mE4mHZp2KFpNg6/zqZlMNuAW8tq2q4zEXRaze1PA415kuM?=
 =?us-ascii?Q?TWTjkwJo4CP1f+UoVzS5zpz4ARL4TqZrn6p9koeIlHzeNk22Vk/bcMGldzqG?=
 =?us-ascii?Q?sSaRhmObGaYXLxaJzO8Q8cFV8m5jYLPTMGp8DcaPn47CNehWnHSK6oVFUENx?=
 =?us-ascii?Q?x22UQDxobB6IaodjUXx3pfPSV7bwMhUhQhNQgE2Z1BDJxSOm/9F1jzEzrANG?=
 =?us-ascii?Q?gl9ObIAZ7fETBJUvR3LYpOQQ7N1fh3FPsVNono5tqYNIf2TNJsay+JgzJdkl?=
 =?us-ascii?Q?etl++BoM70UQ5QH6aYPpAL0i6JESC2gH3DN3YBXkk4CKZOIPaRfqFplLAsSF?=
 =?us-ascii?Q?vKOrsTmtpdg7bQLQPRiYphNeZAfzMhqHZgVDapWxGiOPQ3BH9DBNRL/vyk/L?=
 =?us-ascii?Q?TV3tXmW9ws68AH1XKGbH0H6+WXGccJzzjCYUb+2lnj8oHDkXgNSa+eAo3Q1g?=
 =?us-ascii?Q?t5izGf3AsgPeNnYGvyoWo9Sn7MpbR2IdEvnTrgz/+10milds/nNwcCGPLQsa?=
 =?us-ascii?Q?DHIapz7tHJPT3ZpU6GdpD7LoxJ+Bzqf9PM93VrTD0fGcLrWYSavmRgc57hQi?=
 =?us-ascii?Q?hZ4veltBxQ4k6yvYy3U2oDWSmoImTqdXIaPThersVM7dFonT21LEoWEeFWV6?=
 =?us-ascii?Q?eRPaSTYYWsXrzeIn5C9yMGchVMsjCs6Z2lPdFxtH1/TTgRHoA7+BnUxWMlud?=
 =?us-ascii?Q?Pkgfu8QQrCBh+9SH9KWuAZnUmO4zHOSy+zznjqn2NM3yq595LXV6THQO/irz?=
 =?us-ascii?Q?tuLclcURugfQqJgS2n28gIDDbyUML2iREp9ZpbpMrZlVZ11rgnhcQ4Xxv3fJ?=
 =?us-ascii?Q?uX4VJ7Bkyh6YDFfMeYWT5gjG5Iq9KkoYIxM1sj3SaMsL3gZuN9NGD8toTJeZ?=
 =?us-ascii?Q?Z0ZmxLrdaICEzN8M/pkAvlnQocr3o9Lfuk1m1qeKlzdyI/LTAQLtIg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+ki/UoNql6YYUlHVWuqYKPkO2717zbhK86Ql13NIqkUXVktMXpc6MVckgSYd?=
 =?us-ascii?Q?EsWO+P8Bt7g2izmOMxatPKbPKUf3wS2WzPtYDO+CYnXDojQHXj4y/URT3nuO?=
 =?us-ascii?Q?HzjeDRUxSTNNIRDsIgEdsrlSET1KBV51rRQgzDgRHvdoTSVQJveU565HJeb/?=
 =?us-ascii?Q?2J1Zm6HHjvas2O/DfB963lg4QbaXSwFcmXwOYQ+QkAaByIgDCrX7kIzFZF2l?=
 =?us-ascii?Q?2t9sRsrAd7ER7U1b6DeujJ9DPKRPL584/AGxH4Q9vmC5rKmYG7YrbrrQ0w6L?=
 =?us-ascii?Q?Etx9KwHcnAsFNecDyA18WdclwAPMOL0LHf9faE4Ff9t1hNRw1mWFGd1/RK53?=
 =?us-ascii?Q?ywpdNZlxGwbiduoKTgi8agJQLmTOEg6J/WcarawDIQnXPu8GcKirw46jKmZq?=
 =?us-ascii?Q?tVYdtEClTVzk6oxT6obKk+0hBGMEMBkFZrrJBd2DgzrXWduoOsNFpX+tqQIR?=
 =?us-ascii?Q?CrtMIKcT3KybFpA8v/UtVRPpXjFu603TIkrWHoEgQxvh1ekblHrSKCyd+F2B?=
 =?us-ascii?Q?hKNf+fYM63tF7xdIansfNafaU2WSVQfkcc0pirWPIYBgOmYBWnbaRc0OeX3M?=
 =?us-ascii?Q?oAB2fRQlCZFrcS66kB1sXZNwt2hLntQIfdXH6mRBdcpxslAe4ln+cbm2KEOm?=
 =?us-ascii?Q?j/pK4W0+BF71/r0syNYCvP1V0pgKqxPh6B8UNnC/h3LBnji+5ox1NY/tA7xD?=
 =?us-ascii?Q?hgXwrVKsSc2b6LGD3CMeOiKm1ftzQQd9zWDyZ6wp5LvD5ghAbzZhKPRYiTys?=
 =?us-ascii?Q?kxQ61o8/5aL2Wm+RKwx99uTfWrRbRAEQoWc6rPyS2wQ+A/7g/6lqsJ59C6d7?=
 =?us-ascii?Q?6rFpMehymT5qGhUuy1bqK+UDCG79euwmAwu583M3HY0+QowmDtoYjUiNZJoe?=
 =?us-ascii?Q?l+m8wmzoNanZqcIcj3PZPqKMczeTF5DmPIucm0h0iNesynRovJl62vJF82ID?=
 =?us-ascii?Q?4v2TvEF6LwQnJdpaS+auJxAQwb0gkSsDkyilccBocoq5mjn+KalzxbzKHYTw?=
 =?us-ascii?Q?sMfuAJvPPiOi/ssWGSDVqhsn6dYzIYw1TJkFA7l4mLt2bBQBIdusHq2iOMk4?=
 =?us-ascii?Q?/3rDsytm0C5IpSWwCUaoLzdLbdrrt/iMmo/5rGgsArvskcsUzj6g8Xc6n8iC?=
 =?us-ascii?Q?0CoVYVQUXYCNF4fUmlAEZjwxoH6aECshQeLgm+bpaZrvzkfXNAfvdu8CE4qk?=
 =?us-ascii?Q?pLzWBXdls28N3uipUlyX5P+njowP37vWrv2HaAXSNp5lu0irb6YPKtdA8qu0?=
 =?us-ascii?Q?rbImwxqr1PXAs0wPiHqhFjv/02vxC0Cvvf2JY6+T5rGxsp2GvvNrPaqU3fec?=
 =?us-ascii?Q?c3vcDo4/8UXHokWMCUTdDY6nmPhET54XjxQg0jxGSSk/6rQCUo+x2j429uU8?=
 =?us-ascii?Q?b08BjA8gEm5Arr3Nnn9nIgnJouighL5TpsSFcoeZ3gfBK9k68N2ji/8thekh?=
 =?us-ascii?Q?gHjF+XFk+243Gxdag9zn84uw0u0OY5OqrvuKp9imBdsV64t9BPFWC3LvJGZH?=
 =?us-ascii?Q?nolbCzP7ZyclvjurPsxLJ0Bkox6nMSdpLuHW4v4zpf/JOwMDkJQtjBx+sXOd?=
 =?us-ascii?Q?F2sr57FdqkJ2qdkSV60u12ZOjvK7bQ1tq07zEnjYPw8J3+FMxg1cVfc5KL9h?=
 =?us-ascii?Q?6g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 230b492c-0795-43e3-0bd0-08ddc917af84
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 12:02:52.2434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jMo7pomEJiDMYuuHqReIAUq430qYtr8EgXp4T8q76KhlfJommnpY/VtM/FezzPKswETqM4FoKYnjy4MCLLtUcIkMfvLoligBEb3BGFbMT2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6382
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753185801; x=1784721801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0cP+xegireeZCVaS2PRfjJoAc67oHo9uXEqkjXbulEk=;
 b=CvdB7iDrlV5Ih7ucRN97vD0WTaX3D9bnJMmjM3f8PeWifB5EYF061cs6
 Z5boE/fJsLf4ZjuQme0ZDvl9HRh7TToIzwJr49zjcojSxPRwX1Boi3eQP
 khgBFDKJ2/V037kFBLVZ0PUyoaKUycvFgFbvUSoTKRcPPTrqfYg9tKw9F
 6KMFQ36+OQfN3IaNklqKJYYbf6EbXvIzX8+Pi7QlTinopRbLznaPZnZjw
 fAX/bUUiQyv8rrcrKh6vmR1ucTEehVk6rwoeq16YOuCK2aesvG3jvMiNl
 YVOJ5wpILDIF444+7rhTQZE9y/XSy4VvpwS3ZElyVPEmnN/gCUTatS/2X
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CvdB7iDr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 02/15] ice: move
 get_fwlog_data() to fwlog file
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
> Of Michal Swiatkowski
> Sent: Tuesday, July 22, 2025 12:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 02/15] ice: move
> get_fwlog_data() to fwlog file
>=20
> Change the function prototype to receive hw structure instead of pf to
> simplify the call. Instead of passing whole event pass only msg_buf
> pointer and length.
>=20
> Make ice_fwlog_ring_full() static as it isn't  called from any other
> context.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fwlog.c | 27 +++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_fwlog.h |  2 +-
> drivers/net/ethernet/intel/ice/ice_main.c  | 29 ++--------------------
>  3 files changed, 29 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index e48856206648..ea5d6d2d3f30 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -6,7 +6,7 @@
>  #include "ice_common.h"
>  #include "ice_fwlog.h"
>=20
> -bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
> +static bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
>  {
>  	u16 head, tail;
>=20
Can you consider adding kernel-doc for ice_fwlog_ring_full()?

