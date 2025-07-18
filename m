Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC30B0A8C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 18:44:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4CAE60E0D;
	Fri, 18 Jul 2025 16:44:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hnFrLPTiFiBe; Fri, 18 Jul 2025 16:44:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BA2C60D86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752857074;
	bh=nP4I8Gf8VanTRwC1n59qMyz+gOB4ILXqu7rbvzOVRAs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2bGizpZ+n8XJFMB4g/MiUsogoklou6UQl3jPepB3WBnD3d/iRoPMfvUFGQAzrb0YR
	 hWOjn4kBkVb1WAZlAXEIL5HVnUehyqiDQFoepiMboSNX6R5eTPGzoXVrvENr1rrosg
	 H4YWf2womeHiUGqc7cnGWe4Cz3H9RgL39P1EYiN/Cgg+l4nOUTW4rgZ6ycn+C0xJUt
	 14KJTKGSdCYgVxaEp2LzBTTce2avrpikPYilJFsKJdw/RvMbFML5a/X/je84fjMmYY
	 uqWEVeJEcQhOpLDTW6X96os9b6TiB4VliHyOfT1xOBHrfvM3a2tkjRbNx6meiCb5rC
	 gfGrQ74Fp9/GA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BA2C60D86;
	Fri, 18 Jul 2025 16:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 40C631A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 16:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 330CA60B26
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 16:44:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F-Mkcprmruh7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 16:44:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7639460B19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7639460B19
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7639460B19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 16:44:31 +0000 (UTC)
X-CSE-ConnectionGUID: TQhjDaSJSBKqb+MZxBVtVg==
X-CSE-MsgGUID: IUa14+w5R5GJJSC1kBj+Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="54257012"
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="54257012"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 09:44:31 -0700
X-CSE-ConnectionGUID: Rm5tAIuaSmmCLQoviCguNg==
X-CSE-MsgGUID: nR16s0TGTi24KZgbsBCVaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="162414201"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 09:44:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 09:44:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 09:44:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.68)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 09:44:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g5pr+iN0k5EuPDJGWfcVA/1UfqlyJc566r+W00ZTfV2Ns/39kMfxfHzqhAeD7xxcbG2QawzUMVKX8bGvC813Jp3vOFhBHGrK6aDKJx9QIyp+cFzlsfqNm1vb5STAELMcD5/o4Xxlq69iqi8ZbesghJ7hIyDBVHTHE9eQaceYXF/CoLYISMBmgJPAosEpbnrMurCMXJJd6JUGcpldPgUU6pbZ5UKEW0d+08HB7YnxcsjGlV9w/k8Cpq6atRm81+5+dmsb1dYy34iETpsVMMUtAnWPmjsuO8RuS0noTEA2AhkFXDW4I9cmj0XywFMN++a0PkMzqTNexBP1V93ztQvX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nP4I8Gf8VanTRwC1n59qMyz+gOB4ILXqu7rbvzOVRAs=;
 b=RKhhv6wvPL/EtKD81rp5OeUe+ma10y/X/sgFgPs5PFTzQoMld9Pe/HPvOa+bveI+T8dLK+QqcrtVe3BY7OamYCc1RPEWS+dBnN3YZvohQ9bfINaOGbl4H4gt5oXZs2cEgeru/kMLMgoxN6EXwK4UGh5Wk0qPoIS6RrnZpXkXPM9pmyhv176VwABLbtUm7TQJQzwzJPgIziYQW9M8QhHU/89EQgolInAtHO88ce2rLXh+4z4mlvl8femz+sfIXM44IPiX6+aE0suWBhIZEVKTPD8yUcY/8h3NrwIjY0ArEfakV2oEGq5W8QX26QUEt9vlIvHOeasrxbQ+prCcH6DzSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV3PR11MB8458.namprd11.prod.outlook.com (2603:10b6:408:1bb::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 16:44:25 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8901.024; Fri, 18 Jul 2025
 16:44:25 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Haoxiang Li <haoxiang_li2024@163.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ice: Fix a null pointer dereference
 in ice_copy_and_init_pkg()
Thread-Index: AQHb7Abn4rGYmj9eY0SOQZPbECypmrQy0OlQ
Date: Fri, 18 Jul 2025 16:44:25 +0000
Message-ID: <IA1PR11MB6241087232621133ECB816E48B50A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250703095232.2539006-1-haoxiang_li2024@163.com>
In-Reply-To: <20250703095232.2539006-1-haoxiang_li2024@163.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV3PR11MB8458:EE_
x-ms-office365-filtering-correlation-id: ec5f963f-ab80-4eae-cb11-08ddc61a5b12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5WLWWsOSNdJr+SIZMkLtuXYm/nptvMtpaSb3NQcd1rEe69orOG0sjvrXWaBy?=
 =?us-ascii?Q?oHykNcq+3HRG+/SbW5GcKz+82O4tM1A+yZmNKt8ZMk0tRXSy8+57SZ+N0+UI?=
 =?us-ascii?Q?2vV5W1vz/xbKdoXVsG+p+Vg+ayr034Jb94BHZMbarPuBZxbw4c/GGFeUz3dF?=
 =?us-ascii?Q?bcEhcJHPJlhG6tu2LnYgjqmteD15Moi7A628xmf3lK3wOCP4DtaCuMFWTiaw?=
 =?us-ascii?Q?NzbxdBjB09VKxt42kPdADJrxxFiCu+5sSGfc/DLYjmREAUgtvEaxeIqH7ohX?=
 =?us-ascii?Q?5aTh2lDTswPpaqWWdk6cV+b//RijmYqETuDQkIVuSlUslquUyDOqIDfoT55j?=
 =?us-ascii?Q?tZuB3UF3U6izUqGdBVAJ+FpwqZsQmoc8d32VBZRFWwC3kSazlvxOHyUMeeuY?=
 =?us-ascii?Q?tOkWi1u4yisJLEPrfOL2kVjJbs2Dv/abHzB4/wUhCXq+nOXZibSHTY/1upVX?=
 =?us-ascii?Q?22NiTOzcbGmSNoh4KiHXnyczJ28fbd0ReK97xZWb6MbBabh4svtofMNgMRUv?=
 =?us-ascii?Q?K15gM2QBAkYwT0MdQCOXwotsqZlc6a0Znw7EaPEEbGfPyeWyLGYyJwo01lsQ?=
 =?us-ascii?Q?uyczMNRClsOBtWbCG3CyhE/6WuP6+wxEX19lvFVyuQTSd1d5viC+MWQzNAWV?=
 =?us-ascii?Q?lKVEBo14+okJkYEr77eG1fXoJV34oFi5nWyRShrQWcjB6AC8p7hlqfUmMzq+?=
 =?us-ascii?Q?wkBK73cq5StewTjuTgwoLm3/rL0F7Pp/R/Dqhru/fRiT4NVziZxjE5RsjtzA?=
 =?us-ascii?Q?CieEaYp/gIIyeuJlXDBZLLE3G3v3aVaRAKyfuyqPeKUiZx8rx7cViTegeOT5?=
 =?us-ascii?Q?b0QeApjv+iFZSRjpvs9F7m+DdO6cv3KU6kEObfcKflY1wWNEv2hRNd2IkUab?=
 =?us-ascii?Q?XCh9sL8XjlBrMk0TDKd69bKkg8cfiGFDtb/MDA8EFCLWy+giF+sscxcO2uR7?=
 =?us-ascii?Q?QOs6yywWVYsAi1/GTR8Z7EyG+6DlvnqwIkfoJ978A2xxrz/fm3uPuy//geIT?=
 =?us-ascii?Q?y+sHdYKc0ohHz6B1xK2GPMDVxeZmXC/hDIMnvqr+LMdo5+BNf96cwkLHwxoF?=
 =?us-ascii?Q?rNMeMQU0HAImyTambUQgmUJz1z1KsrrvVA5epXvLbjqZk21GFDL9vImMAkyZ?=
 =?us-ascii?Q?LzMCjbpuvsGcXrM7G2FFpn05NXfV+yzs9u6M38MWrDJKjjhP2aO7xO9jLjpG?=
 =?us-ascii?Q?i51RefPIMLY8XjTQ+apjhzHBtt2M9TwbsRuuyrx4+FYeERcWL1dDfAswewS5?=
 =?us-ascii?Q?BqsL6HVlzJj3/Cg4Re1gWNUSYBY6+efDt1aoXjHunKCujrols5IE7HtRCiA1?=
 =?us-ascii?Q?Hrmv5CkPC5aOCHgOYwbI0+T1OfZs/wxk5i2lct4sZ5i9RbETufvFn8cyxjjG?=
 =?us-ascii?Q?6vbNU/buFxOgDS27UoTE0O3DXKa0rYp8u0fqybaMxj7azi9tifshhinsI3wh?=
 =?us-ascii?Q?n8BrWC9ScTa0QAJcTXlZ6sNLxawQ1hFu4FulnJoOKTjl9lMyo1I63Bw/bWA4?=
 =?us-ascii?Q?q/woWjeMVU1jvbk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aJCfdgaft0FelkjI/7YzkIcStVweX3MrAV1jXuYPZahIOEVwVZcriaVeECHX?=
 =?us-ascii?Q?T33HuPigOiF/1EUa0lUA9Xoo0NF/b3IgkB4nkhP+BlXNjecRA+6pLsgZRiuF?=
 =?us-ascii?Q?U8ti+bN6WtnuJOvGv9GEFLEJtD0sa5BXVK5ScslLlXoRFfoKcJsahVSb7vUm?=
 =?us-ascii?Q?0XltDRyj36FvBBekTaErn28XpC8v4oI1ptxaiP3yUwDVpAOaXzww26gTWb0i?=
 =?us-ascii?Q?ZQnwN5ZpflTeOXJM2TOk4RpwNRbZESMJXm8XiYmuTLO2/QmVPE3cml6j3ESM?=
 =?us-ascii?Q?IRPURua/Cpi3aSgvQHY1zG5eRKfd6U92kknG/Rqr2G622FURbr+AnlB5S/oc?=
 =?us-ascii?Q?RXe4tIbPZ3hWgKoivnqVWcpBT8BAd0qVd02ntJVfJczrFoYsfDB/+Q7ie6JC?=
 =?us-ascii?Q?13XwInK72OrdetwZ9tCZdX1gcsu9hhSjxclCCHgKTx8nFp4OITE/GjQHbXGW?=
 =?us-ascii?Q?8hUsLNZID+4v/OW8MXnL8clgD5w0D3DRTfMUBxUbNwtYNG6z1ePjcQR0nRTS?=
 =?us-ascii?Q?6oAjeFu0iv4wObSyeNpWFTXJQYzuh1wr9ZgC8eo9UmEcDeexLqmEWYkcc8YK?=
 =?us-ascii?Q?Si43EEsU8LRiPg3zQ6HHW+JbUp8VxYtQPjenGgZv7yN5V0YwYbrHEpkgLxUm?=
 =?us-ascii?Q?eitZL9YkplcrT/jx2GPxsDZQbI7KpC3hSlZ1EX5ml4W8DtyL99vu4hMTKrOZ?=
 =?us-ascii?Q?XSrEj1AcP05EJDdE5J9AEJ6szRS7EH9i3FbzWv6x67rEQ1gxa+LE02JycEub?=
 =?us-ascii?Q?IwLytWlmEjG1RFmy8NWHTTSLXVn62jhpWs9lZLtBecKqQE2W89D3HOLpYCHP?=
 =?us-ascii?Q?UOjKA6Nd05YtndtL3R5sk0yDnXzSkCjIOkVesMnUeiONZQmGdqxpcY7P1pBO?=
 =?us-ascii?Q?/Kpaa0Jgi58n3Ac+Y6U87Cafgy3BjrfezCPmZQ5c6IFJ8yV6gyu6TMNkUMYF?=
 =?us-ascii?Q?dswijgE9mgFu+H3HiAztWye77v7nIm7RHsPfUHj8/oxRT5Wq44EKqh75idgL?=
 =?us-ascii?Q?DS3gSdNvvTAK2Cee4zh/ANeLeQF0nEPX81BbsvAbwQVtdovr4jNWmwX9aP/x?=
 =?us-ascii?Q?6VcUr10pF3Vo44mWgjw2s4KYXPSPUy0oAe1TgPd245p7EQDYSOCbUBFXufQ+?=
 =?us-ascii?Q?JzzPeflkv2w99kdYz0Gu35P+EAIKDlZkUSWAhs85oJJMZsT3Fcy7028I7hOK?=
 =?us-ascii?Q?TjMtIKiLhCQ2kefm93cNSCxth2Mdwyl1D+6V4JHYi4EBe5nV6vZmeoXSrGcm?=
 =?us-ascii?Q?alfgHmpcC2v8fXvxIbMIpAOjxZwgSRkcIkcTWC+s3tmyXM+dQNOM3LIJR9dN?=
 =?us-ascii?Q?TT9MyqLTIz+ZFHkx3UTjDpf1X6mHCs2jF1FhLzl77qtorN0a/MF6wZk0qnwK?=
 =?us-ascii?Q?YpjOuyxjaVE0oqqlZgyhQF/JSKetOUYl8O9vkXbm5h+fQLHjYk/ZTEL91efi?=
 =?us-ascii?Q?1A7pFNUs8KsEKWKX8HATudnE4jvYwiLsN73u2PJWoSasZIZXZljWj6MKjXEN?=
 =?us-ascii?Q?P9BLNiBfpHI2Msj9e393XyQAsuITmWVJ98+BedkDdrx4VAG2CG4b6NtnDK6c?=
 =?us-ascii?Q?hzVM1Kq0G7EUL7w4AKnQFHtuKZ6r8/2q2Eofz25h?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec5f963f-ab80-4eae-cb11-08ddc61a5b12
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2025 16:44:25.5578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aGcsnBond/JtKhY9QsFOfKzkhDLbmWW63WLUiRHE3PCmUpRNaH9lrqH8QFo+rSvyLBGTvPtjVb3md6T7cSjM+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8458
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752857072; x=1784393072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nP4I8Gf8VanTRwC1n59qMyz+gOB4ILXqu7rbvzOVRAs=;
 b=Lpt1ptDjguOxVtpOSDjM8Xe1LI9kIPcQrVbk7Io9rg8xsS6wAxAiAe1i
 oP1fyh9v8GvpHq8shmmjg1TLp0Yr38zUDrDllYAestyntYcHRBMHvqfRD
 HYKfkgnac/CwEoUSSLQ08OrtveiLRmLrH/R0C/XQ52h5xznMMf9t9M5Lh
 AI8mGyjbUC/3uno9fHxfbIDgXN/Op9Hua8u9Nh6/SaXsnfSa7QiGHYkts
 hJ5uRfHrgI+MXANrnt+f/Lo/LFh+og1yMjFM5h4m9A4ZDLFg5etfAKEPO
 DKd191+bZiwFKmXxyULsl4S7GU/1kGk1JZzRTyKJNvLdjAaidJHJAInne
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lpt1ptDj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix a null pointer
 dereference in ice_copy_and_init_pkg()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of H=
aoxiang Li
> Sent: 03 July 2025 15:23
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kerne=
l@vger.kernel.org; Haoxiang Li <haoxiang_li2024@163.com>; stable@vger.kerne=
l.org; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Loktionov, =
Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2] ice: Fix a null pointer dereference=
 in ice_copy_and_init_pkg()
>
> Add check for the return value of devm_kmemdup() to prevent potential nul=
l pointer dereference.
>
> Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP)=
 download")
> Cc: stable@vger.kernel.org
> Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> Changes in v2:
> - modify the Fixes commit number. Thanks, Michal!
> ---
> drivers/net/ethernet/intel/ice/ice_ddp.c | 2 ++
> 1 file changed, 2 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
