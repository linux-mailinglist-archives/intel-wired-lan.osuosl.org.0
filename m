Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1BDB0C8F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 18:41:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2178283A82;
	Mon, 21 Jul 2025 16:41:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZF9XV97dQlUS; Mon, 21 Jul 2025 16:41:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D92F083CC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753116063;
	bh=dDt30tI+EAHJb6SQNwim3a+yx/tLmId/5z/qXzHwCKA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kVtbKOsnl9h5WDZALJYPEfZA92vZ6DgYaX3xQ3bCMbBfAztGmkv8ZOStM9RJSpUpg
	 GpmnSj5uUVm9xBvSgL9qyF0m8w5wZyApwxbHXrnk0QpNtXFCbFLPNiDYPxU38e78lj
	 NEQmRNLQyWCzBNf4T3BZjxk3TNiTjyudKCY8hHhbcbJBkGpaQ+reqF7AuQjwQStDMS
	 eXACuM5oe4uhwu6Uv5Oe/dApNyI8TWqiP7YAW9G0SR/NbkchiFm+yD1UH3m9fRfz/D
	 XQe690v50vH5qgIVL4M7He3PCHEBekek7HKDhKE4274NhQ6JmaCThHAf1OQmGVdTC9
	 DQhkcf4Pg1dwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D92F083CC4;
	Mon, 21 Jul 2025 16:41:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 20F01E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 16:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 12DA6832C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 16:41:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZh1CKPCyx13 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 16:41:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 984F9831F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 984F9831F2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 984F9831F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 16:40:59 +0000 (UTC)
X-CSE-ConnectionGUID: /92w/ikSSwuQaDTJUib/Eg==
X-CSE-MsgGUID: MRLhpG8SSmG8mnA39Z99dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55045944"
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="55045944"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 09:40:47 -0700
X-CSE-ConnectionGUID: i0FihlMhT52WinW7Es8t7g==
X-CSE-MsgGUID: JmOGOkWXQc2hYpnb1sTWOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="158189827"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 09:40:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 09:40:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 09:40:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 09:40:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y7eEtMKkcW/qq3aeBfYcpHzH+wHIZJ/qAAh+DcjFM2ZOnZkdw8RvF+2x84KcUqQq4MT74XMH39yQGgUOBYAz09JEYFqrNcPilPi9naeiE19Qcm2W+LoQv09sELRyaRvITvNdZXFYTkHn1gIzc/YnSmvdodDVbtnitKWsx6EehDdSt0MsQof8MxLJI/WnUG4oiJ3mQS28gCWRp2gE/MsI2au0am5AXzZNLknHWJSA4J7wo7f/EqHuEMHuyRuUdP1ve+6NjH/G5jJn56FXsPeApw0rEtqMcdY77GRTE5qcOvfgicMcyBNkVtTEjO8t9k+wUv3vt8ncbndALUgvxw9i/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dDt30tI+EAHJb6SQNwim3a+yx/tLmId/5z/qXzHwCKA=;
 b=Njo2Q9NeE/BMko+lMlMgyVRTzUUUzXOcpA7Fm/ikaDf4dmFWnm2JoTGNism4OVBTJQRG5wRD5Nl9Q+MSayUedNHm31R75Oa4ySZE356yU+ctrpdT66xk6EJmfsvPxshCvazFltU8ONGI+2DaS7G6nWkjGSZ28OuILmDQxbk2914XRSJPMcXFtgT5r6KyRVmexmciM2Uho25kGljmvP/AsIs36ehr0w/xI+IM35KFMte/0wrcHTz+4GH+k2Kj14R5xdzJpZmVLVKIUmXpVuIR8xn9D6AnjGVFMrnRVmzOQKoYBCLKx2YOCOnO465qYT/MkIQYXnHL3wOfkG8kiLMcOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by PH7PR11MB6401.namprd11.prod.outlook.com (2603:10b6:510:1fb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 16:40:09 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%5]) with mapi id 15.20.8943.029; Mon, 21 Jul 2025
 16:40:09 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [PATCH v5 iwl-next] ice: add recovery clock and clock 1588
 control for E825c
Thread-Index: AQHb7yxIRUDh+W8sbU6zdopp/y0507Q82+Jw
Date: Mon, 21 Jul 2025 16:40:09 +0000
Message-ID: <IA1PR11MB6219B2198973150DC4B1B4D8925DA@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250707104433.2231450-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250707104433.2231450-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|PH7PR11MB6401:EE_
x-ms-office365-filtering-correlation-id: fa55172b-7e8b-4f96-df63-08ddc87541c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UOfVTulrl1ztWGCund/fKplny+CSOALR1zD9wbgrw7LiPgsYsfHLocSPBR95?=
 =?us-ascii?Q?r/gJTcofAQyMMy2TMaEJBAkmi30UjUSgO61bu5GsqqENLmcclnFKWVCTpLrw?=
 =?us-ascii?Q?v9CjdbGdYIdBUnr2w9wx1gNkzKAd6ZZjZ6GTyEop1wAH7zzMTnUPM91YFza+?=
 =?us-ascii?Q?r8azuc6y406kFlUto0PE/jYrACQSHS5KXXhQG6kiuTh33Ahm1uKIegpcqw5j?=
 =?us-ascii?Q?yCvTNe3uT+Yb5DUx0XExqs4KEBNys1EQvFskIYcaw4RnEKkTHXwUVfEQYcHF?=
 =?us-ascii?Q?RLvcPs2kznEQwvLmV4T0CwHoXQg3NJFG35G7Ct2BQQOIxmZXfVJsS9GDbV/F?=
 =?us-ascii?Q?bcs+/Ybcj4m7+9Mr2bBKCSA9cWYbSfK92G29+xpvzddKRbhwv5cuF3P59N2G?=
 =?us-ascii?Q?xGo/csuNIRNrurD2TOlJw5OxdYjQXmPxqEFPztVW/ENDRxXQjXVvQsOiB69i?=
 =?us-ascii?Q?4iQewhQlJEcfrdAmxNwdyfuFLVGCrto0WbDtja1LVDPaoqIo8LYneS0GSgcr?=
 =?us-ascii?Q?C4THrCMCvapKFj9xlEjNy1gVpsSDUrbsFqSdfVFMkX9PgD9Sh/7H8s8B5/sa?=
 =?us-ascii?Q?XQ8fUGZXjB/zQzfzk3MeVcy1FR0fe6n+2lQOrrkLlJL7E/kn7bI8QEJz3lLN?=
 =?us-ascii?Q?pkOSVFBmpmZifO8Hrfp/4MFSxj4l+klSQumfiiWCKDL10jyx2DLL3N3GdSUq?=
 =?us-ascii?Q?MEb5bGacG2fYh4WgtRMwpY2LmKZlP3pcmTNhV9TmNfUjL+7UfbGXusU0uxv4?=
 =?us-ascii?Q?8qZ1qML44QInKTamuli6ONVqIFLim7abebYNn5JyiKsFleCGGrqBYunK3mBB?=
 =?us-ascii?Q?hxRawmX9PEwAazJb38R5EHV+RGCxzb0ELbgv6aqE6wXCZy9x9+x1z0msCeSv?=
 =?us-ascii?Q?q9ywm2l1ceiLMtpMVLKVr8FxX7wCF8YqHNFMTs1oySdFi1kW6dxgE4uI+Vo2?=
 =?us-ascii?Q?fHdRxGmGo1jyoF/UiZ5Jre60hv/Zu/Me3i94pUQb7jNlXc/Ien6OsNSsqWlP?=
 =?us-ascii?Q?0XKT0wKL9mdmmD5xa9lSeJlioMlnDo3ow2JLwrzfedwhbMZ5VyHgrmCW1k5X?=
 =?us-ascii?Q?78xmvQ4z/GXKA8Rokll2AnLuV/4uWhRiR13ZljB2udyUHDJKX+m43to0gc2u?=
 =?us-ascii?Q?1bD5x6Q1C3NRbmFPZEpmsuKR4FsCefUgjujDCy4Vd1mq+cNFw1z//9KKzVG0?=
 =?us-ascii?Q?kvdtcBKBWNPuoLKdVvXa2FoMb8oCuheGTGVVvlfvbtDmgof4RJwFeOI+JW6P?=
 =?us-ascii?Q?27OSsLAJX2I1fr3JXOFvYx9JvCaX0zShGprnIXIApl1hbtE2VdFN92evniNb?=
 =?us-ascii?Q?5v1QC12aRMTeMwhcprojTTzwLvOiwG/sRmkhp3MXLxvDdNvuqteXCxjTVic8?=
 =?us-ascii?Q?W+EBMdAIJ2CqLEgVZG8mfmAv+z7XODXHSS+/F4btEeTkG5K2tKxMziKb6n2U?=
 =?us-ascii?Q?qJvzRwV2A6vcb4or9wGZ0Lm83sn8SgHmdk9FS+U+SuvZ0jF3fsjaSA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dTDJJOp/g0FI7a3tt34bsG+yfY9rUBjkRVePCAlfVr/7exWurOD6JLN3C9Wm?=
 =?us-ascii?Q?hPjbn6Bgf0LAR0eCgiOyNlKMu0ZjaZQzTozMin8fWgqs5pBhll+J2Ocjj1cS?=
 =?us-ascii?Q?36hBqR3Z6kiJRmDAXSQsdL+ZhLVIIM6quHxlVLhSeZiI91zMU0AO+TiVRn+Z?=
 =?us-ascii?Q?80/k/z0k31Ui2mSZmkTqwl4fHYzgTqW6O90ZLt8FkMWSjxhTtc/N/ACrtv5W?=
 =?us-ascii?Q?v/PXURaSPLMROWMBkPy7F4bbyoowVZa8SMrjfNb+FcHypkBL/WM9Y/YCczSO?=
 =?us-ascii?Q?QljXG/XyFGpHq/kELFEGGBH1WFLK+ajthiG+0gVScFDcrDvcnQPK1JcvaLvK?=
 =?us-ascii?Q?JSigfWYxkU9qPwHgeIT0jciD/O4D1s6KUMbUg754m5heAMhOeIpYhS6B/0FV?=
 =?us-ascii?Q?0diGLB6iklTmRN6UCsSICW9DLzDAe/zD9fiUuHfCbBpbZaTbgTrxP8d+res8?=
 =?us-ascii?Q?OMU0ZCox6h0cm3jUknie8VAgN8xxZVkteoiKUU9jgQcbwDnJZLmCJTYZCKAd?=
 =?us-ascii?Q?nhcgt4akY2q9pEXNQRlLnYaKlFDVfL0SHvfRG/KKq7ZcJyeoyUkiJaa5RHEL?=
 =?us-ascii?Q?fXwougk8wc06XytyJUfTEY0fV3u+DlpI9cgGJiqMDgTxYdeWF03BDMx3cxTm?=
 =?us-ascii?Q?/p8JOFH1TqYk3hl9fX01cHSbwEKW16BbkUjPfyoOxsE7rPavyeY2CQZ90hYn?=
 =?us-ascii?Q?Wv/z2Fd6jau9uEDC38ECAoaLk1c5QLJNpyFIyecWhvrBufxVJ4GG1IkehMEv?=
 =?us-ascii?Q?zdg9Ard/V58BbAxHTDdYGJAVebgi34qL/D3juT18JNoM6VHfJNpJ/WGGh8HA?=
 =?us-ascii?Q?z6LTkmLulPOzGb1WeGRx8z16oAbEArdChKKOWqImG36znOTxZIACPijIXYxR?=
 =?us-ascii?Q?zV58lUs5r3I1hQM7MQSRbMVFFx7yvvCc0TQEnpyPhSAx63YLa4huJ+RvNK+H?=
 =?us-ascii?Q?1s/SBEtdF0KMdGIN+zqGzUPuwwcWXriF64ZKh5ZDcGdBhy+s6FSAdBenB9Zz?=
 =?us-ascii?Q?+EIqXyhfQ5YatSGvL7Kx6a7XUazTHiuw+jUMFzvxx7n0T4lfd74gR1ASZClR?=
 =?us-ascii?Q?VW1mb8W+KeBfRisx27lPQiIMEs48mF23Vb7RdRFAqyqMKkSBIQDsucAEfc1p?=
 =?us-ascii?Q?6PDI/z8VUN/A6ZOiuTHuwOyPF88ycPIEYBZVddJyQkfFg+wi25hu56NtX+cx?=
 =?us-ascii?Q?d5ilaJQjrYLSA9+A2nWz71p6ri4nOgc5R7PrWymQRb+y7kk5yPH9nmOMSUCU?=
 =?us-ascii?Q?PabAEMETDZ30ppC6TVhXQDXh9VOWVn9RlYUW2QBota8yJLrUlOyuy5qBpCBa?=
 =?us-ascii?Q?kANhmoNSMAVuE2BYyT7GH0soKEj9xiAlmWmeckF8aHYik/AKm3mZka4V18dA?=
 =?us-ascii?Q?BdUAQeFY2HgU4Pb72C6PCxHAvzRcYdKoQ3fg7Ho6IudptSFopjy1ewVdiG7f?=
 =?us-ascii?Q?Rp8nI79JC7jW5wDv8yLwZXpY0BMDDAAeVf7PEhW9tGhQJVhbntQA1Ll+HKsC?=
 =?us-ascii?Q?gH0UCMruzJ1PKNV9+RozI8yP3jt8EVPrfSV7ViuIU6P0mvToPkBV1tLnG/SX?=
 =?us-ascii?Q?IuIGiLAHl0dduY9ID76PzUgwRWzt5U42Uu1Yczkj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa55172b-7e8b-4f96-df63-08ddc87541c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2025 16:40:09.6011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3djW8F82HHHPd7ha5p1gO4gib+IFaKdniun3SUjQ7CygIZJTebzggwHeNKUk9I8dZxlSW+xQHR41NGgXEoMigPw5WExudC3frVEsmW6hM/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6401
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753116060; x=1784652060;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9OiWCYtVemfOxaZQmYcxSTl/LCGNcHeBd9MUCTJ6Smo=;
 b=Car4cY0fOuLW7e1TjQB1Ofw2QwhyGFuHvfv28umBJaRBV5FBK1l5mA+m
 XguVSxIhjSSNnoj9qSmH+hpXPT5D8UfDytF8gIbvql79CixvUWaNqrOtL
 kW1jLrvF3BMi6L2ACh6uKyXC0062ptOYZe/Vm0/7u4LAIEMk5C14+rQk0
 nsWEmA2wfmmeQyeonzmbAx7V+BBzJEdTVIjKVBtgE5QYqUOA4QdI30Vex
 FBYO47yc+bNYl+R6lYmD3KxNCnfC/ox+T+2eIockX1DtnIlJihoprkNWw
 D/0wk2kuYaZgIUmunAA2fZPQKD3t/4+jaYfnlosa632yyjBVJRHwsNIiH
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Car4cY0f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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
> From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Sent: Monday, July 7, 2025 12:45 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Subject: [PATCH v5 iwl-next] ice: add recovery clock and clock 1588 contr=
ol
> for E825c
>=20
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>=20
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it
> provides control over PHY clock recovery, and PTP/timestamp driven
> inputs for platform level DPLL.
>=20
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
>=20
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v5:
> - fix lkp warning about ice_e825c_inputs definition
> v4:
> - rebased
> - fix docstring for ice_dpll_cfg_synce_ethdiv_e825c (removed 'divider'
>   argument)
> v3:
> - rebased
> - removed netdev reference in 1588 pin initialization
> - improved error path in ice_dpll_init_pins
> v2:
> - rebased, addressed comments from v1 (kdoc updated, removed unrelated
>   code changes, fixed undefined 'ret' code in error patchs, use feature
>   flag instead of MAC type chacking)
> - use ptp.ptp_port to create pins indexes instead of PF ID
> - removed CLK_OUT/output pins definitions as unused
> - removed redundant dpll_netdev_pin_set call on 1588 pin
> - removed checkpatch warning about SET_PIN_STATE macro (parenthesis
>   added)
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 863 ++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |  26 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  35 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_tspll.h  |   7 +
>  drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
>  7 files changed, 879 insertions(+), 63 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 53b54e395a2e..e0ba78d7e17e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -9,6 +9,7 @@
>  #define ICE_CGU_STATE_ACQ_ERR_THRESHOLD		50
>  #define ICE_DPLL_PIN_IDX_INVALID		0xff
>  #define ICE_DPLL_RCLK_NUM_PER_PF		1
> +#define ICE_DPLL_PIN_1588_NUM			1
>  #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
>  #define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
>  #define ICE_DPLL_PIN_PRIO_OUTPUT		0xff
> @@ -74,6 +75,7 @@ static const char * const pin_type_name[] =3D {
>=20
>  static const char * const ice_dpll_sw_pin_sma[] =3D { "SMA1", "SMA2" };
>  static const char * const ice_dpll_sw_pin_ufl[] =3D { "U.FL1", "U.FL2" }=
;
> +static const char ice_dpll_pin_1588[] =3D "pin_1588";
>=20
>  static const struct dpll_pin_frequency ice_esync_range[] =3D {
>  	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
> @@ -528,6 +530,117 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct
> ice_dpll_pin *pin,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_rclk_update_e825c - updates the state of rclk pin on e825c
> device
> + * @pf: private board struct
> + * @pin: pointer to a pin
> + *
> + * Update struct holding pin states info, states are separate for each p=
arent
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - OK
> + * * negative - error
> + */
> +static int ice_dpll_rclk_update_e825c(struct ice_pf *pf,
> +				      struct ice_dpll_pin *pin)
> +{
> +	u8 rclk_bits;
> +	int err;
> +	u32 reg;
> +
> +	if (pf->dplls.rclk.num_parents > ICE_SYNCE_CLK_NUM)
> +		return -EINVAL;
> +
> +	err =3D ice_read_cgu_reg(&pf->hw, ICE_CGU_R10, &reg);
> +	if (err)
> +		return err;
> +	rclk_bits =3D FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
> +	SET_PIN_STATE(pin, ICE_SYNCE_CLK0, rclk_bits =3D=3D
> +		     (pf->ptp.port.port_num +
> ICE_CGU_BYPASS_MUX_OFFSET_E825C));
> +
> +	err =3D ice_read_cgu_reg(&pf->hw, ICE_CGU_R11, &reg);
> +	if (err)
> +		return err;
> +	rclk_bits =3D FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
> +	SET_PIN_STATE(pin, ICE_SYNCE_CLK1, rclk_bits =3D=3D
> +		     (pf->ptp.port.port_num +
> ICE_CGU_BYPASS_MUX_OFFSET_E825C));
> +	return 0;
> +}
> +
> +/**
> + * ice_dpll_rclk_update - updates the state of rclk pin on a device
> + * @pf: private board struct
> + * @pin: pointer to a pin
> + * @port_num: port number
> + *
> + * Update struct holding pin states info, states are separate for each p=
arent
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - OK
> + * * negative - error
> + */
> +static int ice_dpll_rclk_update(struct ice_pf *pf, struct ice_dpll_pin *=
pin,
> +				u8 port_num)
> +{
> +	int ret;
> +
> +	for (u8 parent =3D 0; parent < pf->dplls.rclk.num_parents; parent++) {
> +		ret =3D ice_aq_get_phy_rec_clk_out(&pf->hw, &parent,
> &port_num,
> +						 &pin->flags[parent], NULL);
> +		if (ret)
> +			return ret;
> +		SET_PIN_STATE(pin, parent,
> +			      ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
> +			      pin->flags[parent]);
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_dpll_update_pin_1588_e825c - updates the state of clock 1588 pin
> + * @hw: board private hw structure
> + * @pin: pointer to a pin
> + * @parent: clock source identifier
> + *
> + * Update struct holding pin states info, states are separate for each p=
arent
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - OK
> + * * negative - error
> + */
> +static int ice_dpll_update_pin_1588_e825c(struct ice_hw *hw,
> +					  struct ice_dpll_pin *pin,
> +					  enum ice_synce_clk parent)
> +{
> +	u8 bits_clk;
> +	int err;
> +	u32 reg;
> +
> +	switch (parent) {
> +	case ICE_SYNCE_CLK0:
> +		err =3D ice_read_cgu_reg(hw, ICE_CGU_R10, &reg);
> +		if (err)
> +			return err;
> +		bits_clk =3D FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
> +		break;
> +	case ICE_SYNCE_CLK1:
> +		err =3D ice_read_cgu_reg(hw, ICE_CGU_R11, &reg);
> +		if (err)
> +			return err;
> +		bits_clk =3D FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +	SET_PIN_STATE(pin, parent, bits_clk =3D=3D ICE_CGU_NCOCLK);
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_dpll_sw_pins_update - update status of all SW pins
>   * @pf: private board struct
> @@ -668,22 +781,14 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct
> ice_dpll_pin *pin,
>  		}
>  		break;
>  	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
> -		for (parent =3D 0; parent < pf->dplls.rclk.num_parents;
> -		     parent++) {
> -			u8 p =3D parent;
> -
> -			ret =3D ice_aq_get_phy_rec_clk_out(&pf->hw, &p,
> -							 &port_num,
> -							 &pin->flags[parent],
> -							 NULL);
> +		if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +			ret =3D ice_dpll_rclk_update_e825c(pf, pin);
> +			if (ret)
> +				goto err;
> +		} else {
> +			ret =3D ice_dpll_rclk_update(pf, pin, port_num);
>  			if (ret)
>  				goto err;
> -			if (ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
> -			    pin->flags[parent])
> -				pin->state[parent] =3D
> DPLL_PIN_STATE_CONNECTED;
> -			else
> -				pin->state[parent] =3D
> -					DPLL_PIN_STATE_DISCONNECTED;
>  		}
>  		break;
>  	case ICE_DPLL_PIN_TYPE_SOFTWARE:
> @@ -1021,6 +1126,33 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin,
> void *pin_priv,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_pin_state_get_e825c - update e825c device pin's state on dpl=
l
> + * @pin: pointer to a pin
> + * @pin_priv: private data pointer passed on pin registration
> + * @dpll: registered dpll pointer
> + * @dpll_priv: private data pointer passed on dpll registration
> + * @state: on success holds state of the pin
> + * @extack: error reporting
> + *
> + * Set pin state of e825c device to connected.
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - success
> + */
> +static int ice_dpll_pin_state_get_e825c(const struct dpll_pin *pin,
> +					void *pin_priv,
> +					const struct dpll_device *dpll,
> +					void *dpll_priv,
> +					enum dpll_pin_state *state,
> +					struct netlink_ext_ack *extack)
> +{
> +	*state =3D DPLL_PIN_STATE_CONNECTED;
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_dpll_output_state_get - get output pin state on dpll device
>   * @pin: pointer to a pin
> @@ -1842,6 +1974,228 @@ ice_dpll_phase_offset_get(const struct dpll_pin
> *pin, void *pin_priv,
>  	return 0;
>  }
>=20
> +/**
> + * ice_dpll_cfg_bypass_mux_e825c - check if the given port recovered clo=
ck
> + * or clock 1588 is set active
> + * @hw: Pointer to the HW struct
> + * @ena: true to enable the reference, false if disable
> + * @port_num: Number of the port
> + * @output: Output pin, we have two in E825C
> + * @clock_1588: true to enable 1588 reference, false to recover from por=
t
> + *
> + * Dpll subsystem callback. Handler for setting the correct registers to
> + * enable a functionality on e825c device.
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - error
> + */
> +static int
> +ice_dpll_cfg_bypass_mux_e825c(struct ice_hw *hw, bool ena,
> +			      u32 port_num, enum ice_synce_clk output,
> +			      bool clock_1588)
> +{
> +	u8 first_mux;
> +	int err;
> +	u32 r10;
> +
> +	err =3D ice_read_cgu_reg(hw, ICE_CGU_R10, &r10);
> +	if (err)
> +		return err;
> +
> +	if (!ena)
> +		first_mux =3D ICE_CGU_NET_REF_CLK0;
> +	else if (clock_1588)
> +		first_mux =3D ICE_CGU_NCOCLK;
> +	else
> +		first_mux =3D port_num +
> ICE_CGU_BYPASS_MUX_OFFSET_E825C;
> +
> +	r10 &=3D ~(ICE_CGU_R10_SYNCE_DCK_RST |
> ICE_CGU_R10_SYNCE_DCK2_RST);
> +
> +	switch (output) {
> +	case ICE_SYNCE_CLK0:
> +		r10 &=3D ~(ICE_CGU_R10_SYNCE_ETHCLKO_SEL |
> +			 ICE_CGU_R10_SYNCE_ETHDIV_LOAD |
> +			 ICE_CGU_R10_SYNCE_S_REF_CLK);
> +		r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_S_REF_CLK,
> first_mux);
> +		if (clock_1588)
> +			r10 |=3D
> FIELD_PREP(ICE_CGU_R10_SYNCE_ETHCLKO_SEL,
> +					  ICE_CGU_REF_CLK_BYP0);
> +		else
> +			r10 |=3D
> FIELD_PREP(ICE_CGU_R10_SYNCE_ETHCLKO_SEL,
> +					  ICE_CGU_REF_CLK_BYP0_DIV);
> +		break;
> +	case ICE_SYNCE_CLK1:
> +	{
> +		u32 val;
> +
> +		err =3D ice_read_cgu_reg(hw, ICE_CGU_R11, &val);
> +		if (err)
> +			return err;
> +		val &=3D ~ICE_CGU_R11_SYNCE_S_BYP_CLK;
> +		val |=3D FIELD_PREP(ICE_CGU_R11_SYNCE_S_BYP_CLK,
> first_mux);
> +		err =3D ice_write_cgu_reg(hw, ICE_CGU_R11, val);
> +		if (err)
> +			return err;
> +		r10 &=3D ~(ICE_CGU_R10_SYNCE_CLKODIV_LOAD |
> +			 ICE_CGU_R10_SYNCE_CLKO_SEL);
> +		if (clock_1588)
> +			r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_CLKO_SEL,
> +					  ICE_CGU_REF_CLK_BYP1);
> +		else
> +			r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_CLKO_SEL,
> +					  ICE_CGU_REF_CLK_BYP1_DIV);
> +		break;
> +	}
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	err =3D ice_write_cgu_reg(hw, ICE_CGU_R10, r10);
> +	if (err)
> +		return err;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_dpll_get_div_e825c - get the divider for the given speed
> + * @link_speed: link speed of the port
> + * @divider: output value, calculated divider
> + *
> + * Dpll subsystem callback. Handler for setting the divider on e825c dev=
ice.
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - error
> + */
> +static int ice_dpll_get_div_e825c(u16 link_speed, u8 *divider)
> +{
> +	switch (link_speed) {
> +	case ICE_AQ_LINK_SPEED_100GB:
> +	case ICE_AQ_LINK_SPEED_50GB:
> +	case ICE_AQ_LINK_SPEED_25GB:
> +		*divider =3D 10;
> +		break;
> +	case ICE_AQ_LINK_SPEED_40GB:
> +	case ICE_AQ_LINK_SPEED_10GB:
> +		*divider =3D 4;
> +		break;
> +	case ICE_AQ_LINK_SPEED_5GB:
> +	case ICE_AQ_LINK_SPEED_2500MB:
> +	case ICE_AQ_LINK_SPEED_1000MB:
> +		*divider =3D 2;
> +		break;
> +	case ICE_AQ_LINK_SPEED_100MB:
> +		*divider =3D 1;
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_dpll_cfg_synce_ethdiv_e825c - set the divider on the mux
> + * @hw: Pointer to the HW struct
> + * @output: Output pin, we have two in E825C
> + *
> + * Dpll subsystem callback. Set the correct divider for RCLKA or RCLKB.
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - error
> + */
> +static int ice_dpll_cfg_synce_ethdiv_e825c(struct ice_hw *hw,
> +					   enum ice_synce_clk output)
> +{
> +	u16 link_speed;
> +	u8 divider;
> +	u32 val;
> +	int err;
> +
> +	link_speed =3D hw->port_info->phy.link_info.link_speed;
> +	if (!link_speed)
> +		return 0;
> +
> +	err =3D ice_dpll_get_div_e825c(link_speed, &divider);
> +	if (err)
> +		return err;
> +
> +	err =3D ice_read_cgu_reg(hw, ICE_CGU_R10, &val);
> +	if (err)
> +		return err;
> +
> +	/* programmable divider value (from 2 to 16) minus 1 for ETHCLKOUT
> */
> +	switch (output) {
> +	case ICE_SYNCE_CLK0:
> +		val &=3D ~(ICE_CGU_R10_SYNCE_ETHDIV_M1 |
> +			 ICE_CGU_R10_SYNCE_ETHDIV_LOAD);
> +		val |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_ETHDIV_M1,
> divider - 1);
> +		err =3D ice_write_cgu_reg(hw, ICE_CGU_R10, val);
> +		if (err)
> +			return err;
> +		val |=3D ICE_CGU_R10_SYNCE_ETHDIV_LOAD;
> +		break;
> +	case ICE_SYNCE_CLK1:
> +		val &=3D ~(ICE_CGU_R10_SYNCE_CLKODIV_M1 |
> +			 ICE_CGU_R10_SYNCE_CLKODIV_LOAD);
> +		val |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_CLKODIV_M1,
> divider - 1);
> +		err =3D ice_write_cgu_reg(hw, ICE_CGU_R10, val);
> +		if (err)
> +			return err;
> +		val |=3D ICE_CGU_R10_SYNCE_CLKODIV_LOAD;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	err =3D ice_write_cgu_reg(hw, ICE_CGU_R10, val);
> +	if (err)
> +		return err;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_dpll_synce_update_e825c - setting PHY recovered clock pins on
> e825c
> + * @hw: Pointer to the HW struct
> + * @ena: true if enable, false in disable
> + * @port_num: port number
> + * @output: output pin, we have two in E825C
> + *
> + * Dpll subsystem callback. Set proper signals to recover clock from por=
t.
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - error
> + */
> +static int ice_dpll_synce_update_e825c(struct ice_hw *hw, bool ena,
> +				       u32 port_num, enum ice_synce_clk
> output)
> +{
> +	int err;
> +
> +	/* configure the mux to deliver proper signal to DPLL from the MUX
> */
> +	err =3D ice_dpll_cfg_bypass_mux_e825c(hw, ena, port_num, output,
> +					    false);
> +	if (err)
> +		return err;
> +
> +	err =3D ice_dpll_cfg_synce_ethdiv_e825c(hw, output);
> +	if (err)
> +		return err;
> +
> +	dev_dbg(ice_hw_to_dev(hw), "CLK_SYNCE%u recovered clock: pin
> %s\n",
> +		output, str_enabled_disabled(ena));
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_dpll_output_esync_set - callback for setting embedded sync
>   * @pin: pointer to a pin
> @@ -2289,9 +2643,12 @@ ice_dpll_rclk_state_on_pin_set(const struct
> dpll_pin *pin, void *pin_priv,
>  	struct ice_dpll_pin *p =3D pin_priv, *parent =3D parent_pin_priv;
>  	bool enable =3D state =3D=3D DPLL_PIN_STATE_CONNECTED;
>  	struct ice_pf *pf =3D p->pf;
> +	struct ice_hw *hw;
>  	int ret =3D -EINVAL;
>  	u32 hw_idx;
>=20
> +	hw =3D &pf->hw;
> +
>  	if (ice_dpll_is_reset(pf, extack))
>  		return -EBUSY;
>=20
> @@ -2307,13 +2664,19 @@ ice_dpll_rclk_state_on_pin_set(const struct
> dpll_pin *pin, void *pin_priv,
>  				   p->idx, state, parent->idx);
>  		goto unlock;
>  	}
> -	ret =3D ice_aq_set_phy_rec_clk_out(&pf->hw, hw_idx, enable,
> -					 &p->freq);
> +
> +	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +		ret =3D ice_dpll_synce_update_e825c(hw, enable,
> +						  pf->ptp.port.port_num,
> +						  (enum
> ice_synce_clk)hw_idx);
> +	else
> +		ret =3D ice_aq_set_phy_rec_clk_out(hw, hw_idx, enable,
> +						 &p->freq);
>  	if (ret)
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to set pin state:%u for
> pin:%u on parent:%u",
>  				   ret,
> -				   libie_aq_str(pf-
> >hw.adminq.sq_last_status),
> +				   libie_aq_str(hw->adminq.sq_last_status),
>  				   state, p->idx, parent->idx);
>  unlock:
>  	mutex_unlock(&pf->dplls.lock);
> @@ -2321,6 +2684,59 @@ ice_dpll_rclk_state_on_pin_set(const struct
> dpll_pin *pin, void *pin_priv,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_pin_1588_state_on_pin_set - set a state on a clock 1588 pin
> + * @pin: pointer to a pin
> + * @pin_priv: private data pointer passed on pin registration
> + * @parent_pin: pin parent pointer
> + * @parent_pin_priv: parent private data pointer passed on pin registrat=
ion
> + * @state: state to be set on pin
> + * @extack: error reporting
> + *
> + * Dpll subsystem callback. Set a state of a clock 1588 pin on a parent =
pin
> + *
> + * Context: Acquires pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - failure
> + */
> +static int ice_dpll_pin_1588_state_on_pin_set(const struct dpll_pin *pin=
,
> +					      void *pin_priv,
> +					      const struct dpll_pin *parent_pin,
> +					      void *parent_pin_priv,
> +					      enum dpll_pin_state state,
> +					      struct netlink_ext_ack *extack)
> +{
> +	const struct ice_dpll_pin *parent =3D parent_pin_priv;
> +	bool ena =3D state =3D=3D DPLL_PIN_STATE_CONNECTED;
> +	struct ice_dpll_pin *p =3D pin_priv;
> +	struct ice_pf *pf =3D p->pf;
> +	int ret =3D -EINVAL;
> +	u32 hw_idx;
> +
> +	if (ice_dpll_is_reset(pf, extack))
> +		return -EBUSY;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	hw_idx =3D parent->idx - pf->dplls.base_rclk_idx;
> +	if (hw_idx >=3D pf->dplls.num_inputs)
> +		goto unlock;
> +
> +	if ((ena && p->state[hw_idx] =3D=3D DPLL_PIN_STATE_CONNECTED) ||
> +	    (!ena && p->state[hw_idx] =3D=3D DPLL_PIN_STATE_DISCONNECTED))
> {
> +		NL_SET_ERR_MSG(extack,
> +			       "Pin state on parent is already set");
> +		goto unlock;
> +	}
> +	ret =3D ice_dpll_cfg_bypass_mux_e825c(&pf->hw, ena,
> +					    pf->ptp.port.port_num,
> +					    hw_idx, true);
> +unlock:
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	return ret;
> +}
> +
>  /**
>   * ice_dpll_rclk_state_on_pin_get - get a state of rclk pin
>   * @pin: pointer to a pin
> @@ -2370,12 +2786,71 @@ ice_dpll_rclk_state_on_pin_get(const struct
> dpll_pin *pin, void *pin_priv,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_pin_1588_state_on_pin_get - get a state of a 1588 clock pin
> + * @pin: pointer to a pin
> + * @pin_priv: private data pointer passed on pin registration
> + * @parent_pin: pin parent pointer
> + * @parent_pin_priv: pin parent priv data pointer passed on pin registra=
tion
> + * @state: on success holds pin state on parent pin
> + * @extack: error reporting
> + *
> + * dpll subsystem callback, get a state of a 1588 clock pin.
> + *
> + * Context: Acquires pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - failure
> + */
> +static int
> +ice_dpll_pin_1588_state_on_pin_get(const struct dpll_pin *pin, void
> *pin_priv,
> +				   const struct dpll_pin *parent_pin,
> +				   void *parent_pin_priv,
> +				   enum dpll_pin_state *state,
> +				   struct netlink_ext_ack *extack)
> +{
> +	const struct ice_dpll_pin *parent =3D parent_pin_priv;
> +	struct ice_dpll_pin *p =3D pin_priv;
> +	struct ice_pf *pf =3D p->pf;
> +	int ret =3D -EINVAL;
> +	u32 hw_idx;
> +
> +	if (ice_dpll_is_reset(pf, extack))
> +		return -EBUSY;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	hw_idx =3D parent->idx - pf->dplls.base_1588_idx;
> +	if (hw_idx >=3D pf->dplls.num_inputs)
> +		goto unlock;
> +
> +	ret =3D ice_dpll_update_pin_1588_e825c(&pf->hw, p,
> +					     (enum ice_synce_clk)hw_idx);
> +	if (ret)
> +		goto unlock;
> +	*state =3D p->state[hw_idx];
> +unlock:
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	return ret;
> +}
> +
>  static const struct dpll_pin_ops ice_dpll_rclk_ops =3D {
>  	.state_on_pin_set =3D ice_dpll_rclk_state_on_pin_set,
>  	.state_on_pin_get =3D ice_dpll_rclk_state_on_pin_get,
>  	.direction_get =3D ice_dpll_input_direction,
>  };
>=20
> +static const struct dpll_pin_ops ice_dpll_pin_1588_ops =3D {
> +	.direction_get =3D ice_dpll_input_direction,
> +	.state_on_pin_get =3D ice_dpll_pin_1588_state_on_pin_get,
> +	.state_on_pin_set =3D ice_dpll_pin_1588_state_on_pin_set,
> +};
> +
> +static const struct dpll_pin_ops ice_dpll_input_ops_e825c =3D {
> +	.direction_get =3D ice_dpll_input_direction,
> +	.state_on_dpll_get =3D ice_dpll_pin_state_get_e825c,
> +};
> +
>  static const struct dpll_pin_ops ice_dpll_pin_sma_ops =3D {
>  	.state_on_dpll_set =3D ice_dpll_sma_pin_state_set,
>  	.state_on_dpll_get =3D ice_dpll_sw_pin_state_get,
> @@ -2944,6 +3419,7 @@ ice_dpll_register_pins(struct dpll_device *dpll,
> struct ice_dpll_pin *pins,
>=20
>  /**
>   * ice_dpll_deinit_direct_pins - deinitialize direct pins
> + * @pf: board private structure
>   * @cgu: if cgu is present and controlled by this NIC
>   * @pins: pointer to pins array
>   * @count: number of pins
> @@ -2955,7 +3431,8 @@ ice_dpll_register_pins(struct dpll_device *dpll,
> struct ice_dpll_pin *pins,
>   * Release pins resources to the dpll subsystem.
>   */
>  static void
> -ice_dpll_deinit_direct_pins(bool cgu, struct ice_dpll_pin *pins, int cou=
nt,
> +ice_dpll_deinit_direct_pins(struct ice_pf *pf, bool cgu,
> +			    struct ice_dpll_pin *pins, int count,
>  			    const struct dpll_pin_ops *ops,
>  			    struct dpll_device *first,
>  			    struct dpll_device *second)
> @@ -3004,7 +3481,11 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool
> cgu,
>  		if (ret)
>  			goto unregister_first;
>  	}
> -
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +		ret =3D ice_dpll_register_pins(first, pins, ops, count);
> +		if (ret)
> +			goto release_pins;
> +	}
>  	return 0;
>=20
>  unregister_first:
> @@ -3014,6 +3495,31 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool
> cgu,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_deinit_pin_1588 - release 1588 pin resources
> + * @pf: board private structure
> + *
> + * Deregister 1588 pin from parent pins and release resources in dpll
> + * subsystem.
> + */
> +static void ice_dpll_deinit_pin_1588(struct ice_pf *pf)
> +{
> +	struct ice_dpll_pin *pin_1588 =3D &pf->dplls.pin_1588;
> +	struct dpll_pin *parent;
> +	int i;
> +
> +	for (i =3D 0; i < pin_1588->num_parents; i++) {
> +		parent =3D pf->dplls.inputs[pin_1588->parent_idx[i]].pin;
> +
> +		if (!parent)
> +			continue;
> +		dpll_pin_on_pin_unregister(parent, pin_1588->pin,
> +					   &ice_dpll_pin_1588_ops,
> +					   pin_1588);
> +	}
> +
> +	dpll_pin_put(pin_1588->pin);
> +}
>  /**
>   * ice_dpll_deinit_rclk_pin - release rclk pin resources
>   * @pf: board private structure
> @@ -3025,7 +3531,11 @@ static void ice_dpll_deinit_rclk_pin(struct ice_pf
> *pf)
>  	struct ice_dpll_pin *rclk =3D &pf->dplls.rclk;
>  	struct ice_vsi *vsi =3D ice_get_main_vsi(pf);
>  	struct dpll_pin *parent;
> -	int i;
> +	u8 i;
> +
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +	    ice_pf_src_tmr_owned(pf))
> +		ice_dpll_deinit_pin_1588(pf);
>=20
>  	for (i =3D 0; i < rclk->num_parents; i++) {
>  		parent =3D pf->dplls.inputs[rclk->parent_idx[i]].pin;
> @@ -3094,6 +3604,59 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct
> ice_dpll_pin *pin,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_init_pin_1588 - initialize pin to control clock 1588
> + * @pf: board private structure
> + * @pin: pin to register
> + * @start_idx: on which index shall allocation start in dpll subsystem
> + * @ops: callback ops registered with the pins
> + *
> + * Allocate resource for clock 1588 pin in dpll subsystem. Register the
> + * pin with the parents it has in the info. Register pin with the pf's m=
ain vsi
> + * netdev.
> + *
> + * Return:
> + * * 0 - success
> + * * negative - registration failure reason
> + */
> +static int
> +ice_dpll_init_pin_1588(struct ice_pf *pf, struct ice_dpll_pin *pin,
> +		       int start_idx, const struct dpll_pin_ops *ops)
> +{
> +	struct dpll_pin *parent;
> +	int ret;
> +	u8 i;
> +
> +	ret =3D ice_dpll_get_pins(pf, pin, start_idx, ICE_DPLL_PIN_1588_NUM,
> +				pf->dplls.clock_id);
> +	if (ret)
> +		return ret;
> +	for (i =3D 0; i < pf->dplls.pin_1588.num_parents; i++) {
> +		parent =3D pf->dplls.inputs[pf-
> >dplls.pin_1588.parent_idx[i]].pin;
> +		if (!parent) {
> +			ret =3D -ENODEV;
> +			goto unregister_pins;
> +		}
> +		ret =3D dpll_pin_on_pin_register(parent, pf-
> >dplls.pin_1588.pin,
> +					       ops, &pf->dplls.pin_1588);
> +		if (ret)
> +			goto unregister_pins;
> +	}
> +
> +	return 0;
> +
> +unregister_pins:
> +	while (i) {
> +		parent =3D pf->dplls.inputs[pf->dplls.pin_1588.parent_idx[--
> i]].pin;
> +		dpll_pin_on_pin_unregister(parent, pf->dplls.pin_1588.pin,
> +					   &ice_dpll_pin_1588_ops,
> +					   &pf->dplls.pin_1588);
> +	}
> +	ice_dpll_release_pins(pin, ICE_DPLL_RCLK_NUM_PER_PF);
> +
> +	return ret;
> +}
> +
>  /**
>   * ice_dpll_deinit_pins - deinitialize direct pins
>   * @pf: board private structure
> @@ -3119,6 +3682,9 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf,
> bool cgu)
>  		ice_dpll_unregister_pins(de->dpll, inputs,
> &ice_dpll_input_ops,
>  					 num_inputs);
>  	}
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +		ice_dpll_unregister_pins(de->dpll, inputs,
> +					 &ice_dpll_input_ops_e825c,
> num_inputs);
>  	ice_dpll_release_pins(inputs, num_inputs);
>  	if (cgu) {
>  		ice_dpll_unregister_pins(dp->dpll, outputs,
> @@ -3127,12 +3693,12 @@ static void ice_dpll_deinit_pins(struct ice_pf *p=
f,
> bool cgu)
>  					 &ice_dpll_output_ops,
> num_outputs);
>  		ice_dpll_release_pins(outputs, num_outputs);
>  		if (!pf->dplls.generic) {
> -			ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
> +			ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.ufl,
>  						    ICE_DPLL_PIN_SW_NUM,
>  						    &ice_dpll_pin_ufl_ops,
>  						    pf->dplls.pps.dpll,
>  						    pf->dplls.eec.dpll);
> -			ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
> +			ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.sma,
>  						    ICE_DPLL_PIN_SW_NUM,
>  						    &ice_dpll_pin_sma_ops,
>  						    pf->dplls.pps.dpll,
> @@ -3155,26 +3721,40 @@ static void ice_dpll_deinit_pins(struct ice_pf *p=
f,
> bool cgu)
>   */
>  static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
>  {
> +	const struct dpll_pin_ops *output_ops;
> +	const struct dpll_pin_ops *input_ops;
>  	int ret, count;
>=20
> +	switch (pf->hw.mac_type) {
> +	case ICE_MAC_GENERIC_3K_E825:
> +		input_ops =3D &ice_dpll_input_ops_e825c;
> +		output_ops =3D NULL;
> +		break;
> +	default:
> +		input_ops =3D &ice_dpll_input_ops;
> +		output_ops =3D &ice_dpll_output_ops;
> +		break;
> +	}
>  	ret =3D ice_dpll_init_direct_pins(pf, cgu, pf->dplls.inputs, 0,
> -					pf->dplls.num_inputs,
> -					&ice_dpll_input_ops,
> +					pf->dplls.num_inputs, input_ops,
>  					pf->dplls.eec.dpll, pf->dplls.pps.dpll);
>  	if (ret)
>  		return ret;
> +
>  	count =3D pf->dplls.num_inputs;
> -	if (cgu) {
> +
> +	if (cgu || pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {

E825 condition is redundant here.
There are no direct output pins defined yet and there is nothing to do in
this if-block for E825.

>  		ret =3D ice_dpll_init_direct_pins(pf, cgu, pf->dplls.outputs,
> -						count,
> -						pf->dplls.num_outputs,
> -						&ice_dpll_output_ops,
> -						pf->dplls.eec.dpll,
> +						count, pf-
> >dplls.num_outputs,
> +						output_ops, pf-
> >dplls.eec.dpll,
>  						pf->dplls.pps.dpll);
>  		if (ret)
>  			goto deinit_inputs;
> +
>  		count +=3D pf->dplls.num_outputs;
> -		if (!pf->dplls.generic) {
> +
> +		if (!pf->dplls.generic &&
> +		    pf->hw.mac_type !=3D ICE_MAC_GENERIC_3K_E825) {
>  			ret =3D ice_dpll_init_direct_pins(pf, cgu, pf->dplls.sma,
>  							count,
>=20
> 	ICE_DPLL_PIN_SW_NUM,
> @@ -3183,7 +3763,9 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bo=
ol
> cgu)
>  							pf->dplls.pps.dpll);
>  			if (ret)
>  				goto deinit_outputs;
> +
>  			count +=3D ICE_DPLL_PIN_SW_NUM;
> +
>  			ret =3D ice_dpll_init_direct_pins(pf, cgu, pf->dplls.ufl,
>  							count,
>=20
> 	ICE_DPLL_PIN_SW_NUM,
> @@ -3205,30 +3787,44 @@ static int ice_dpll_init_pins(struct ice_pf *pf, =
bool
> cgu)
>  	} else {
>  		count +=3D pf->dplls.num_outputs + 2 *
> ICE_DPLL_PIN_SW_NUM;
>  	}
> -	ret =3D ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk, count + pf-
> >hw.pf_id,
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +	    ice_pf_src_tmr_owned(pf)) {
> +		ret =3D ice_dpll_init_pin_1588(pf, &pf->dplls.pin_1588,
> +					     count, &ice_dpll_pin_1588_ops);
> +		if (ret)
> +			goto deinit_outputs;
> +	}
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +		count +=3D ICE_DPLL_RCLK_NUM_PER_PF;

Using ICE_DPLL_RCLK_NUM_PER_PF here is misleading.
It should be ICE_DPLL_PIN_1588_NUM as it applies to 1588 pin.
It's a coincidence both defines are equal to 1.
=20
> +
> +	ret =3D ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk,
> +				      count + pf->ptp.port.port_num,
>  				      &ice_dpll_rclk_ops);
>  	if (ret)
>  		goto deinit_ufl;
>=20
>  	return 0;
> +
>  deinit_ufl:
> -	ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
> -				    ICE_DPLL_PIN_SW_NUM,
> -				    &ice_dpll_pin_ufl_ops,
> -				    pf->dplls.pps.dpll, pf->dplls.eec.dpll);
> +	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.ufl,
> ICE_DPLL_PIN_SW_NUM,
> +				    &ice_dpll_pin_ufl_ops, pf->dplls.pps.dpll,
> +				    pf->dplls.eec.dpll);
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +	    ice_pf_src_tmr_owned(pf))
> +		ice_dpll_deinit_pin_1588(pf);
>  deinit_sma:
> -	ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
> -				    ICE_DPLL_PIN_SW_NUM,
> -				    &ice_dpll_pin_sma_ops,
> -				    pf->dplls.pps.dpll, pf->dplls.eec.dpll);
> +	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.sma,
> ICE_DPLL_PIN_SW_NUM,
> +				    &ice_dpll_pin_sma_ops, pf->dplls.pps.dpll,
> +				    pf->dplls.eec.dpll);
>  deinit_outputs:
> -	ice_dpll_deinit_direct_pins(cgu, pf->dplls.outputs,
> +	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.outputs,
>  				    pf->dplls.num_outputs,
> -				    &ice_dpll_output_ops, pf->dplls.pps.dpll,
> +				    output_ops, pf->dplls.pps.dpll,
>  				    pf->dplls.eec.dpll);
>  deinit_inputs:
> -	ice_dpll_deinit_direct_pins(cgu, pf->dplls.inputs, pf-
> >dplls.num_inputs,
> -				    &ice_dpll_input_ops, pf->dplls.pps.dpll,
> +	ice_dpll_deinit_direct_pins(pf, cgu, pf->dplls.inputs,
> +				    pf->dplls.num_inputs,
> +				    input_ops, pf->dplls.pps.dpll,
>  				    pf->dplls.eec.dpll);
>  	return ret;
>  }
> @@ -3239,14 +3835,15 @@ static int ice_dpll_init_pins(struct ice_pf *pf, =
bool
> cgu)
>   * @d: pointer to ice_dpll
>   * @cgu: if cgu is present and controlled by this NIC
>   *
> - * If cgu is owned unregister the dpll from dpll subsystem.
> + * If cgu is owned or device is e825c, unregister the dpll from dpll
> subsystem.
>   * Release resources of dpll device from dpll subsystem.
>   */
>  static void
>  ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
>  {
> -	if (cgu)
> -		dpll_device_unregister(d->dpll, d->ops, d);
> +	if (cgu || (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +		    ice_pf_src_tmr_owned(pf)))
> +		dpll_device_unregister(d->dpll, &ice_dpll_ops, d);
>  	dpll_device_put(d->dpll);
>  }
>=20
> @@ -3279,12 +3876,15 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_=
dpll
> *d, bool cgu,
>  		return ret;
>  	}
>  	d->pf =3D pf;
> -	if (cgu) {
> +
> +	if (cgu || (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +		    ice_pf_src_tmr_owned(pf))) {
>  		const struct dpll_device_ops *ops =3D &ice_dpll_ops;
>=20
>  		if (type =3D=3D DPLL_TYPE_PPS &&
> ice_dpll_is_pps_phase_monitor(pf))
>  			ops =3D  &ice_dpll_pom_ops;
> -		ice_dpll_update_state(pf, d, true);
> +		if (cgu)
> +			ice_dpll_update_state(pf, d, true);
>  		ret =3D dpll_device_register(d->dpll, type, ops, d);
>  		if (ret) {
>  			dpll_device_put(d->dpll);
> @@ -3417,6 +4017,52 @@ static int ice_dpll_init_info_pins_generic(struct
> ice_pf *pf, bool input)
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_init_info_direct_pins_e825c - initializes direct pins info
> + * @pf: board private structure
> + * @pin_type: type of pins being initialized
> + *
> + * Init information for directly connected pins, cache them in pf's pins
> + * structures.
> + *
> + * Return:
> + * * 0 - success
> + * * negative - init failure reason
> + */
> +static int ice_dpll_init_info_direct_pins_e825c(struct ice_pf *pf,
> +						enum ice_dpll_pin_type
> pin_type)
> +{
> +	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_dpll_pin *pins;
> +	unsigned long caps =3D 0;
> +	int num_pins, i;
> +	bool input;
> +
> +	switch (pin_type) {
> +	case ICE_DPLL_PIN_TYPE_INPUT:
> +		pins =3D pf->dplls.inputs;
> +		num_pins =3D pf->dplls.num_inputs;
> +		input =3D true;
> +		break;
> +	case ICE_DPLL_PIN_TYPE_OUTPUT:
> +		pins =3D pf->dplls.outputs;
> +		num_pins =3D pf->dplls.num_outputs;
> +		input =3D false;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	for (i =3D 0; i < num_pins; i++) {
> +		pins[i].idx =3D i;
> +		pins[i].prop.board_label =3D ice_cgu_get_pin_name(hw, i,
> input);
> +		pins[i].prop.type =3D ice_cgu_get_pin_type(hw, i, input);
> +		pins[i].prop.capabilities =3D caps;
> +		pins[i].pf =3D pf;
> +	}
> +	return 0;
> +}
> +
>  /**
>   * ice_dpll_init_info_direct_pins - initializes direct pins info
>   * @pf: board private structure
> @@ -3505,6 +4151,32 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_init_info_pin_on_pin_e825c - initializes rclk pin informatio=
n
> + * @pf: board private structure
> + *
> + * Init information for rclk pin, cache them in pf->dplls.rclk and
> + * pf->dplls.pin_1588.
> + *
> + * Return:
> + * * 0 - success
> + */
> +static int ice_dpll_init_info_pin_on_pin_e825c(struct ice_pf *pf)
> +{
> +	struct ice_dpll_pin *pin_1588 =3D &pf->dplls.pin_1588;
> +	struct ice_dpll_pin *rclk_pin =3D &pf->dplls.rclk;
> +
> +	rclk_pin->prop.type =3D DPLL_PIN_TYPE_SYNCE_ETH_PORT;
> +	rclk_pin->prop.capabilities |=3D
> DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
> +	rclk_pin->pf =3D pf;
> +	pin_1588->prop.type =3D DPLL_PIN_TYPE_SYNCE_ETH_PORT;
> +	pin_1588->prop.capabilities |=3D
> DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
> +	pin_1588->prop.board_label =3D ice_dpll_pin_1588;
> +	pin_1588->pf =3D pf;
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_dpll_init_info_rclk_pin - initializes rclk pin information
>   * @pf: board private structure
> @@ -3629,9 +4301,15 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum
> ice_dpll_pin_type pin_type)
>  	switch (pin_type) {
>  	case ICE_DPLL_PIN_TYPE_INPUT:
>  	case ICE_DPLL_PIN_TYPE_OUTPUT:
> -		return ice_dpll_init_info_direct_pins(pf, pin_type);
> +		if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +			return ice_dpll_init_info_direct_pins_e825c(pf,
> pin_type);
> +		else
> +			return ice_dpll_init_info_direct_pins(pf, pin_type);
>  	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
> -		return ice_dpll_init_info_rclk_pin(pf);
> +		if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +			return ice_dpll_init_info_pin_on_pin_e825c(pf);
> +		else
> +			return ice_dpll_init_info_rclk_pin(pf);
>  	case ICE_DPLL_PIN_TYPE_SOFTWARE:
>  		return ice_dpll_init_info_sw_pins(pf);
>  	default:
> @@ -3653,6 +4331,68 @@ static void ice_dpll_deinit_info(struct ice_pf *pf=
)
>  	kfree(pf->dplls.pps.input_prio);
>  }
>=20
> +/**
> + * ice_dpll_init_info_e825c - prepare pf's dpll information structure fo=
r
> e825c
> + * device
> + * @pf: board private structure
> + *
> + * Acquire (from HW) and set basic dpll information (on pf->dplls struct=
).
> + *
> + * Return:
> + * * 0 - success
> + * * negative - init failure reason
> + */
> +static int ice_dpll_init_info_e825c(struct ice_pf *pf)
> +{
> +	struct ice_dplls *d =3D &pf->dplls;
> +	struct ice_dpll *de =3D &d->eec;
> +	int ret =3D 0;
> +	int i;
> +
> +	d->clock_id =3D ice_generate_clock_id(pf);
> +	d->num_inputs =3D ICE_DPLL_PARENT_PIN_NUM_E825;
> +	de->dpll_state =3D DPLL_LOCK_STATUS_LOCKED;
> +
> +	d->inputs =3D kcalloc(d->num_inputs, sizeof(*d->inputs),
> GFP_KERNEL);
> +	if (!d->inputs)
> +		return -ENOMEM;
> +
> +	ret =3D ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
> +	if (ret)
> +		goto deinit_info;
> +
> +	ret =3D ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
> +					&pf->dplls.rclk.num_parents);
> +	if (ret)
> +		return ret;
> +
> +	for (i =3D 0; i < pf->dplls.rclk.num_parents; i++)
> +		pf->dplls.rclk.parent_idx[i] =3D d->base_rclk_idx + i;
> +
> +	d->base_1588_idx =3D ICE_E825_1588_BASE_IDX;
> +	pf->dplls.pin_1588.num_parents =3D
> ICE_DPLL_PARENT_PIN_NUM_E825;
> +
> +	if (ice_pf_src_tmr_owned(pf)) {
> +		for (i =3D 0; i < pf->dplls.pin_1588.num_parents; i++)
> +			pf->dplls.pin_1588.parent_idx[i] =3D d->base_1588_idx
> + i;
> +	}
> +	ret =3D ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_RCLK_INPUT);
> +	if (ret)
> +		return ret;
> +	de->mode =3D DPLL_MODE_MANUAL;
> +	dev_dbg(ice_pf_to_dev(pf),
> +		"%s - success, inputs:%u, outputs:%u, rclk-parents:%u,
> pin_1588-parents:%u\n",
> +		 __func__, d->num_inputs, d->num_outputs, d-
> >rclk.num_parents,
> +		 d->pin_1588.num_parents);
> +	return 0;
> +deinit_info:
> +	dev_err(ice_pf_to_dev(pf),
> +		"%s - fail: d->inputs:%p, d->outputs:%p\n",
> +		__func__, d->inputs, d->outputs);
> +	ice_dpll_deinit_info(pf);
> +	return ret;
> +}
> +
>  /**
>   * ice_dpll_init_info - prepare pf's dpll information structure
>   * @pf: board private structure
> @@ -3772,7 +4512,8 @@ void ice_dpll_deinit(struct ice_pf *pf)
>  		ice_dpll_deinit_worker(pf);
>=20
>  	ice_dpll_deinit_pins(pf, cgu);
> -	ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
> +	if (pf->hw.mac_type !=3D ICE_MAC_GENERIC_3K_E825)
> +		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
>  	ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
>  	ice_dpll_deinit_info(pf);
>  	mutex_destroy(&pf->dplls.lock);
> @@ -3795,25 +4536,33 @@ void ice_dpll_init(struct ice_pf *pf)
>  	int err =3D 0;
>=20
>  	mutex_init(&d->lock);
> -	err =3D ice_dpll_init_info(pf, cgu);
> +
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +		err =3D ice_dpll_init_info_e825c(pf);
> +	else
> +		err =3D ice_dpll_init_info(pf, cgu);
> +
>  	if (err)
>  		goto err_exit;
> +
>  	err =3D ice_dpll_init_dpll(pf, &pf->dplls.eec, cgu, DPLL_TYPE_EEC);
>  	if (err)
>  		goto deinit_info;
> -	err =3D ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu, DPLL_TYPE_PPS);
> -	if (err)
> -		goto deinit_eec;
> +	if (pf->hw.mac_type !=3D ICE_MAC_GENERIC_3K_E825) {
> +		err =3D ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu,
> +					 DPLL_TYPE_PPS);
> +		if (err)
> +			goto deinit_eec;
> +	}
>  	err =3D ice_dpll_init_pins(pf, cgu);
>  	if (err)
>  		goto deinit_pps;
> -	if (cgu) {
> +	if (cgu && pf->hw.mac_type !=3D ICE_MAC_GENERIC_3K_E825) {
>  		err =3D ice_dpll_init_worker(pf);
>  		if (err)
>  			goto deinit_pins;
>  	}
>  	set_bit(ICE_FLAG_DPLL, pf->flags);
> -
>  	return;
>=20
>  deinit_pins:
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h
> b/drivers/net/ethernet/intel/ice/ice_dpll.h
> index c0da03384ce9..90e624b1cb4e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.h
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
> @@ -24,7 +24,7 @@ enum ice_dpll_pin_sw {
>   * @pin: dpll pin structure
>   * @pf: pointer to pf, which has registered the dpll_pin
>   * @idx: ice pin private idx
> - * @num_parents: hols number of parent pins
> + * @num_parents: hold number of parent pins
>   * @parent_idx: hold indexes of parent pins
>   * @flags: pin flags returned from HW
>   * @state: state of a pin
> @@ -101,11 +101,13 @@ struct ice_dpll {
>   * @pps: pointer to PPS dpll dev
>   * @inputs: input pins pointer
>   * @outputs: output pins pointer
> + * @pin_1588: pin controlling clock 1588 pointer
>   * @rclk: recovered pins pointer
>   * @num_inputs: number of input pins available on dpll
>   * @num_outputs: number of output pins available on dpll
>   * @cgu_state_acq_err_num: number of errors returned during periodic
> work
>   * @base_rclk_idx: idx of first pin used for clock revocery pins
> + * @base_1588_idx: idx of first pin used for 1588 clock control pin
>   * @clock_id: clock_id of dplls
>   * @input_phase_adj_max: max phase adjust value for an input pins
>   * @output_phase_adj_max: max phase adjust value for an output pins
> @@ -119,6 +121,7 @@ struct ice_dplls {
>  	struct ice_dpll pps;
>  	struct ice_dpll_pin *inputs;
>  	struct ice_dpll_pin *outputs;
> +	struct ice_dpll_pin pin_1588;
>  	struct ice_dpll_pin sma[ICE_DPLL_PIN_SW_NUM];
>  	struct ice_dpll_pin ufl[ICE_DPLL_PIN_SW_NUM];
>  	struct ice_dpll_pin rclk;
> @@ -126,6 +129,7 @@ struct ice_dplls {
>  	u8 num_outputs;
>  	u8 sma_data;
>  	u8 base_rclk_idx;
> +	u8 base_1588_idx;
>  	int cgu_state_acq_err_num;
>  	u64 clock_id;
>  	s32 input_phase_adj_max;
> @@ -143,3 +147,23 @@ static inline void ice_dpll_deinit(struct ice_pf *pf=
) { }
>  #endif
>=20
>  #endif
> +
> +#define ICE_CGU_R10				0x28
> +#define ICE_CGU_R10_SYNCE_CLKO_SEL		GENMASK(8, 5)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_M1		GENMASK(13, 9)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_LOAD		BIT(14)
> +#define ICE_CGU_R10_SYNCE_DCK_RST		BIT(15)
> +#define ICE_CGU_R10_SYNCE_ETHCLKO_SEL		GENMASK(18, 16)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_M1		GENMASK(23, 19)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_LOAD		BIT(24)
> +#define ICE_CGU_R10_SYNCE_DCK2_RST		BIT(25)
> +#define ICE_CGU_R10_SYNCE_S_REF_CLK		GENMASK(31, 27)
> +
> +#define ICE_CGU_R11				0x2C
> +#define ICE_CGU_R11_SYNCE_S_BYP_CLK		GENMASK(6, 1)
> +
> +#define ICE_CGU_BYPASS_MUX_OFFSET_E825C		3
> +
> +#define SET_PIN_STATE(_pin, _id, _condition) \
> +	((_pin)->state[_id] =3D (_condition) ? DPLL_PIN_STATE_CONNECTED : \
> +			       DPLL_PIN_STATE_DISCONNECTED)
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index d75836700889..0fa483f3d8d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3947,6 +3947,9 @@ void ice_init_feature_support(struct ice_pf *pf)
>  		break;
>  	}
>=20
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +		ice_set_feature_support(pf, ICE_F_PHY_RCLK);
> +
>  	if (pf->hw.mac_type =3D=3D ICE_MAC_E830) {
>  		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
>  		ice_set_feature_support(pf, ICE_F_GCS);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 523f95271f35..9b7c892ca1d8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -131,6 +131,11 @@ static const struct ice_cgu_pin_desc
> ice_e823_zl_cgu_outputs[] =3D {
>  	{ "NONE",	   ZL_OUT5, 0, 0 },
>  };
>=20
> +static const struct ice_cgu_pin_desc ice_e825c_inputs[] =3D {
> +	{ "CLK_IN_0",	 0, DPLL_PIN_TYPE_MUX, 0 },
> +	{ "CLK_IN_1",	 0, DPLL_PIN_TYPE_MUX, 0 },
> +};
> +
>  /* Low level functions for interacting with and managing the device cloc=
k
> used
>   * for the Precision Time Protocol.
>   *
> @@ -5602,7 +5607,7 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw
> *hw, u8 block, u64 *tstamp_ready)
>  }
>=20
>  /**
> - * ice_cgu_get_pin_desc_e823 - get pin description array
> + * ice_get_pin_desc_e82x - get pin description array
>   * @hw: pointer to the hw struct
>   * @input: if request is done against input or output pin
>   * @size: number of inputs/outputs
> @@ -5610,9 +5615,19 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw
> *hw, u8 block, u64 *tstamp_ready)
>   * Return: pointer to pin description array associated to given hw.
>   */
>  static const struct ice_cgu_pin_desc *
> -ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool input, int *size)
> +ice_get_pin_desc_e82x(struct ice_hw *hw, bool input, int *size)
>  {
>  	static const struct ice_cgu_pin_desc *t;
> +	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +		if (input) {
> +			t =3D ice_e825c_inputs;
> +			*size =3D ARRAY_SIZE(ice_e825c_inputs);
> +			return t;
> +		}
> +		t =3D NULL;
> +		*size =3D 0;
> +		return t;
> +	}
>=20
>  	if (hw->cgu_part_number =3D=3D
>  	    ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032) {
> @@ -5682,7 +5697,11 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool
> input, int *size)
>  	case ICE_DEV_ID_E823C_QSFP:
>  	case ICE_DEV_ID_E823C_SFP:
>  	case ICE_DEV_ID_E823C_SGMII:
> -		t =3D ice_cgu_get_pin_desc_e823(hw, input, size);
> +	case ICE_DEV_ID_E825C_BACKPLANE:
> +	case ICE_DEV_ID_E825C_QSFP:
> +	case ICE_DEV_ID_E825C_SFP:
> +	case ICE_DEV_ID_E825C_SGMII:
> +		t =3D ice_get_pin_desc_e82x(hw, input, size);
>  		break;
>  	default:
>  		break;
> @@ -5730,7 +5749,6 @@ enum dpll_pin_type ice_cgu_get_pin_type(struct
> ice_hw *hw, u8 pin, bool input)
>=20
>  	if (pin >=3D t_size)
>  		return 0;
> -
>  	return t[pin].type;
>  }
>=20
> @@ -5903,7 +5921,14 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw,
> u8 *base_idx, u8 *pin_num)
>  			*base_idx =3D SI_REF1P;
>  		else
>  			ret =3D -ENODEV;
> -
> +		break;
> +	case ICE_DEV_ID_E825C_BACKPLANE:
> +	case ICE_DEV_ID_E825C_QSFP:
> +	case ICE_DEV_ID_E825C_SFP:
> +	case ICE_DEV_ID_E825C_SGMII:
> +		*pin_num =3D 2;
> +		*base_idx =3D 0;
> +		ret =3D 0;
>  		break;
>  	default:
>  		ret =3D -ENODEV;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 5896b346e579..a2ef4034d42f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -210,6 +210,8 @@ enum ice_phy_rclk_pins {
>  #define ICE_E82X_RCLK_PINS_NUM		(ICE_RCLKA_PIN + 1)
>  #define E810T_CGU_INPUT_C827(_phy, _pin) ((_phy) *
> ICE_E810_RCLK_PINS_NUM + \
>  					  (_pin) + ZL_REF1P)
> +#define ICE_E825_1588_BASE_IDX		0
> +#define ICE_DPLL_PARENT_PIN_NUM_E825	2
>=20
>  enum ice_zl_cgu_in_pins {
>  	ZL_REF0P =3D 0,
> diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.h
> b/drivers/net/ethernet/intel/ice/ice_tspll.h
> index c0b1232cc07c..dec0b0105a5d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tspll.h
> +++ b/drivers/net/ethernet/intel/ice/ice_tspll.h
> @@ -21,6 +21,13 @@ struct ice_tspll_params_e82x {
>  	u32 frac_n_div;
>  };
>=20
> +#define ICE_CGU_NET_REF_CLK0		0x0
> +#define ICE_CGU_NCOCLK			0x2
> +#define ICE_CGU_REF_CLK_BYP0		0x5
> +#define ICE_CGU_REF_CLK_BYP0_DIV	0x0
> +#define ICE_CGU_REF_CLK_BYP1		0x4
> +#define ICE_CGU_REF_CLK_BYP1_DIV	0x1
> +
>  #define ICE_TSPLL_CK_REFCLKFREQ_E825		0x1F
>  #define ICE_TSPLL_NDIVRATIO_E825		5
>  #define ICE_TSPLL_FBDIV_INTGR_E825		256
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> index 8d19efc1df72..c606cd75844d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -349,6 +349,12 @@ enum ice_clk_src {
>  	NUM_ICE_CLK_SRC
>  };
>=20
> +enum ice_synce_clk {
> +	ICE_SYNCE_CLK0,
> +	ICE_SYNCE_CLK1,
> +	ICE_SYNCE_CLK_NUM
> +};
> +
>  struct ice_ts_func_info {
>  	/* Function specific info */
>  	enum ice_tspll_freq time_ref;
>=20
> base-commit: 6dbc64bfa1f08ecc3770d1c795ecdde25167fe63
> --
> 2.39.3

