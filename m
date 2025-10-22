Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91544BFA460
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 08:42:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4824D83CCA;
	Wed, 22 Oct 2025 06:42:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fRePmKi-fTuF; Wed, 22 Oct 2025 06:42:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF0B783CD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761115329;
	bh=Nw2D2QlQcVxGCjeA2jKfQCRB08hcLsAkiOx13uKD0KY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=468YmFnzBj5dPe3NcD5EqcJTLRhbjmC2ZpSxSmCuMlLiPM9ybHq601b1FD32fn4AD
	 1VHOOZBnlQn8HpNVM6clRYc6SUrwjtnCqm54Rjk4AbUDwOvQ9DWKQLRrSJW2ddoxqC
	 kWdDClMShEqlMzMgHFX50wkF90GvbAt46iwwquzFqd5fyAXXhnFTrlUe2Wv+ENwP5J
	 Xwxmemnps4P9FiotGcp54mWEPc1Dr1tTtahmbvl5JfyzJZa1RwoE+WkpRm57v1so3Z
	 ryihSWk+6Hq5hC/djwjWZKdYJX4qiJKqhHe6Tw6XoQFGpsWYPJ62fgAO3czR4fUUUZ
	 +vOF9Fjm6ZoLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF0B783CD0;
	Wed, 22 Oct 2025 06:42:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CC13770A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B249F40B34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2opQSt0KTz4h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 06:42:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1C41440B31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C41440B31
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C41440B31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:42:06 +0000 (UTC)
X-CSE-ConnectionGUID: fTfXCvojSROII0g4Ur0pFg==
X-CSE-MsgGUID: A3lp6u0jT6COJcXEnqoErw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63291369"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="63291369"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 23:42:06 -0700
X-CSE-ConnectionGUID: Qpx2w4H0Q7itJZAYkdkong==
X-CSE-MsgGUID: RzJI03aQRiey/ND7v4vutQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214430760"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 23:42:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 23:42:05 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 23:42:05 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.7) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 23:42:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hJOriFspYZp4J8G+X/U6k1+iz3Wk5fr7JMC0xo463GGkRzAGIO5Qiscy97KcouWsFgw8JNegzDcbV69c99gtMjJcBfuBEVdDQWV2DhxtY4HE+++M3uoNQguiy9s0YcoDKrPj8C0OAJajeFCegWAjJcJjoM6W1NYi92dxCaPoq/FcrHhGKgCvWxhA0HiYNbuYWjnxXDcOqUBstC/ISTz+Png41uzxe0+dX4/LC1LLu0wdJgaQWdV7v8PlblqelebVtMo6GTGLjLhdqYw8Yn+r0C9rDimt/RJulFaNZWWIW/6k4oWNUSeARnkH3LVnTrMT3ffbtOtaLQ2OIkjv4u3yGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nw2D2QlQcVxGCjeA2jKfQCRB08hcLsAkiOx13uKD0KY=;
 b=nzsqAD7uiUix9ZaWAKR9AgJ7MgRdSFhx1vucnjHsBQhae+UVfvlcxKid3m1bmLow8I50HU31v8TfncmKBa4rgOrTRkI2hszfT2kPQU4xP7dozbJa7dRkz9hQ/nWiCaCvZ3w2AP4jCbFcSAVgGbw/viNR4y8ELTWogK2jR1p+yR4iaALHOSUVif9lDwPxJdYkRudUxYT1FrUaK2CQ/HyxUDliNESvvSfNgqbQNerXo95oILR/EGzVIZhTxmbaIDN1C7hE1gzoda5e6VTAJ8MQEVFjcT7VHAIlJ+1yIxvsjiKOtsB448zADPPa0nkXwT6D1UTMaeAIdVfEByQqFMBSrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 06:42:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9228.015; Wed, 22 Oct 2025
 06:42:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 04/10] idpf: move some
 iterator declarations inside for loops
Thread-Index: AQHcQuFV46gSJh3J0kmn5wl7fP8AdrTNuAvw
Date: Wed, 22 Oct 2025 06:42:02 +0000
Message-ID: <IA3PR11MB898627389CFADF28DD2EBB3BE5F3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-5-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-5-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ1PR11MB6155:EE_
x-ms-office365-filtering-correlation-id: 76ab0afc-b08b-47a5-11b0-08de11361ba2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HI7PZVRFECvjdY5ix95Zpmbv+FdOMz5hUW18WWi7IkkcP8aefoEITJmJ54yw?=
 =?us-ascii?Q?4Xc6f05fYpC0n47UnbarUOUKiIXKNCDt+J4lp6BdpObWjoQZpSY+jlW11cST?=
 =?us-ascii?Q?vM7+dHu693PGxbt6rF8Q3OvpdYDhgqnGVtHQYX2KrUlXSI0idbU+x3sKKhWF?=
 =?us-ascii?Q?5SsapZX3ch9EiHn76XTUXo6f/MYOvQcoaxaWCvipCE8Bu5jVcx6tmrOZWKf+?=
 =?us-ascii?Q?x26N+vOqqw6cfG0PRRrhguFJ20JM8ay0Xpg15SwGQGp5SEAjuttj883CNkpJ?=
 =?us-ascii?Q?nFdJEyRMevPtpVD3g6vmfE8mwl/X8C6o+eNpDvRwU0UV6XS2TsxHTjoICBmj?=
 =?us-ascii?Q?om+SIMR6xJ5YiYBXjEvIl/dh753E41VwYFWQQodtJ5aUYWT3sGUBL5SgwpRE?=
 =?us-ascii?Q?DUkEah1592J7G+6efIq4r3n77epP4VmOisBYRzlYLB52k+HkPXZcnQxqdfxD?=
 =?us-ascii?Q?wuYUWdnlpnKUDCfrgUzttXaLRoEwh5whE0syb0JEsLKP7RZAiG7RgpJlmoJ1?=
 =?us-ascii?Q?MjqwjFUVluCxFH4DA5kpo2Gh70BBpILL4g09CaCqJpxlt53EawGXhKhsgfPk?=
 =?us-ascii?Q?iVOV+HyyILOeZpuL8FIJMJRsGQo9k9qzEhQwl7ortQXDT+oTvNCAUbJ2ABrV?=
 =?us-ascii?Q?rnm3qmia2PWQcsQq3pi9m1YEt96gPxDoins7hHKNMATtH+o+X/WDUl8TXyKd?=
 =?us-ascii?Q?dHNASWs5UV6aI/GfyIrJuAWSn6U+RI8IQ2xhedQ5Rig88C359GrF3QZKIU0w?=
 =?us-ascii?Q?+DYKwZV56HW2403hqG8U7rhDynOo/DV4I9oN46mXllldFMbTCeHBmcqqZDp5?=
 =?us-ascii?Q?g2PKUkMIQ9C7cqOU1bcBsNJWj8iI2n6aS/k5I+RcFnOFy9ov5tsoi3xim1je?=
 =?us-ascii?Q?I+u32DNt9vpW42atYUzQbr6+mbyaBQzPNrFb+xT8o7jyI6H9kQd2+w2iNiGN?=
 =?us-ascii?Q?WIcyCD76hnsqjruvH7+olDQXxM31A+INUbH5mcNIT67RyD2HNNQah4MztQPK?=
 =?us-ascii?Q?Wy++Mb3BInzGhfV9tnIBTGnuJWK3vBNnSNtdS9W3/akNKDnFGwKeRrk5GT/l?=
 =?us-ascii?Q?D7DDZtRmEpB+fbKHw2dpXOs+u2YQc3hG3DeSGnM+dp/iwQm1pinRT7hemfr/?=
 =?us-ascii?Q?x/d3w4EjIfZla53dAO3p+M+HDwey9B5jXU4pwrl4DayWgebOhMss0ocUDJYw?=
 =?us-ascii?Q?/q18Mv1l96qAbNqy0csWjXxw+CdQBJUn2+aZinmY++no5CMi//GadGv1mqwS?=
 =?us-ascii?Q?IcVyRd7j6DFBlZRzWOuUtVpgLUyJofB5UfhC57BLIWSbsSHJZ80rDZOPHqVs?=
 =?us-ascii?Q?2Li66iCbITcvPKokJ9GZG7TB5Az7teUb97sAb9zS4onrZUxfB7unxZNWyM30?=
 =?us-ascii?Q?2u/NiPEhmGK+NWfepOi6Gj4IfdXHfmumcEle/CbxPWM6QAlaTCslhcgtNdZg?=
 =?us-ascii?Q?XNYWwGn48Ylb+lm6sqSE1zF/cAg59qFy93xQykbBh3RCkmPScQYM1lvgyR1X?=
 =?us-ascii?Q?Slapt4e4Iuo1HfA38AxYeRZYKJxzYNRpu1Ix?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8mHLZ7bZO/XbOw0EBKC5xsEO5G98kdKrFCV0xr70ePUURZit388musbqgBlt?=
 =?us-ascii?Q?/PewtxoL9bEYBGHjZ/r3kVL8UhIcwETVhH7HQ2/dJVbbQG8uYRJpmmfu6ttH?=
 =?us-ascii?Q?ybbXFmYo/DX+142rj9LGkZwTUc8cfNvLifHiMRc+itJ6SXoUMQX+OkT1ousR?=
 =?us-ascii?Q?n1l1zmV1Hb8+I6Txmt/jxV202QaPnNjSeSTXZ1JI7J8SlicNzKKZ8EqhNySE?=
 =?us-ascii?Q?/cBOlWK7J8Xdgl5bv/DJEpzj+Lk0WNhbLVOuP0gKIVVx/jPSdzJjulVzfR8n?=
 =?us-ascii?Q?YRo38fKtlJfmfh3Jm9N3q7Udx8rNQ9ifQ5qAWi3qsyt4Mm9QYQob83IOKQgc?=
 =?us-ascii?Q?td80hmw4OBuny+xQoS+wQ1kfx1lCLO84It5+P+wgOWao9fZCYhmJr+OKhYzI?=
 =?us-ascii?Q?zdsHA40b2QXTnqjB1P9LNFLvvgrXWPe/B1lNa9ibvw31Ze05iZuQPWiU8N3m?=
 =?us-ascii?Q?eNWFmFYpTj4EAgCfkpcSov9e6+SkA0MeSDAjJoecl73/Jp5bqKZ3eoZvAn4o?=
 =?us-ascii?Q?+EOb8si3kCshtSj+L6k4oz5wE9clE48LyE1uE+NdLZCylxuTYdjH3APE8pkr?=
 =?us-ascii?Q?KELgoDk6EeebG6saFiM9POrTgpAJzGq0iXpGlUd8BttwJAuayg/CPNUfR1EC?=
 =?us-ascii?Q?rVw+icHz6ublEm0R1X8i9E41vBui2/tzpHMtvrahQCACeNJJTbtnefiuTJdl?=
 =?us-ascii?Q?SMS0l0Bg/Dvg0Z217GIEiwlNSsariANsjsF7kpaH0BbaxtYILFTI/VIripz9?=
 =?us-ascii?Q?MujX87RyDjuFWqnjiFsF+pTrkZ68mb6F81qhFCchmndUrwlQ+qhCYeO8bDQo?=
 =?us-ascii?Q?nwmMxqR6T5FGoj0nqlhrTZ5PEJ+i8deO0Inms2ddcoYI7wxVVekYTZZErxzV?=
 =?us-ascii?Q?rBucOAM7JlZ3BxqSpeAylkLFkopJwEHXTFyIQDGq+OyhF3ZnRDLNO2O6YNy8?=
 =?us-ascii?Q?Z/P3lBmm4XazULT1JMXwgBn8HPDOR5MU85zZseLdCH/S2WR1vYtvL+P8cuhX?=
 =?us-ascii?Q?KW76ajy1e3uU0NAi7x9NCSm0z9iR5NIVdcMfzHaBqwtW/K4BXzDWSOP7eAKK?=
 =?us-ascii?Q?0rvlAc82rBoDwkI5KO/Lp5pvW0zUWoYh4P8HWxUWzWb9INR8Q+Oa0e/0Bmt7?=
 =?us-ascii?Q?Vwgf7gBUrAZ3QJ1gIZZSyvu7Y/4YFiQ1I//JikOjZBHEZhbA8+Jh4RTvMgzb?=
 =?us-ascii?Q?HUB+vzeGCoSUszZ5yAsvMUqDPeviu7mw/uPMbF3KgyDEPewFpRSUfqvXQS/b?=
 =?us-ascii?Q?eXCFzTZi9LpGv6vcR6G2XiZ2XCpSGbuEgAXiDUQU2lE45sCRv65znjRGSORK?=
 =?us-ascii?Q?1KZi4jzRzljkqjbA1fJx95JE8RA9S0cMQWKCGr5pPXrS0w7wPw2NoXFJ7uzW?=
 =?us-ascii?Q?lgRjHhLeIPk3bPzCR9FIHjKMP6yFCeaRyavSB6QZSPQGqvGlW0rS8hyR2u2K?=
 =?us-ascii?Q?8pAMW+f+T3qeqMOi4gl+6+rBPldUbl65fDO6Hbnb1vycWPWp0EPxOjQfPiqG?=
 =?us-ascii?Q?gWK3s2596quDVk7012zWFPwAE9MCRWM/PPYkcOzF1FN6CHC6db2xjuTGF/KD?=
 =?us-ascii?Q?d2YvYUobQiZaoCbEv92TrygbY0nfLqkxys/MgaI24bQsXUA+gBMId+ZfNhxa?=
 =?us-ascii?Q?fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76ab0afc-b08b-47a5-11b0-08de11361ba2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 06:42:02.2309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Py9YY8OdkX7lL5cRY+aFYFIkl0+fbhW1GLGgu2NtTi+kc50IxkqYd6iI+/10niKNEKDwTRrdxq4qv9Rij6rDQ0aCbF1LPZCe85BNs9TPSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761115327; x=1792651327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AydHuO7R/QzG8NtantUt3oYubYQDZu9NqxpCo2R121E=;
 b=GDwIAbRIGU2P1fVvWV9KwL0N0LFgdm3gSbAXB8bpjZwYAZRzJKaXMex1
 ggzo06rkzDuNPyWHVvEhwMsI6IH8OEurOHeKW6U7mIcqQULdzCNsj05nf
 fmP/552BUtQBaRcYz1l50sDB9EVBeyXhkOoRNDOme92v2b8/XHnB5EAiP
 20tOZ0P76Ejg0RzotFlxXlzIJMcYMS5bvFZQWjJGeAgt30iQBWRt4sbKN
 2v38aUpyz/v2Nk5GQgFG0Fm+x9BcB+dBN+KNSYtrpHcLKcnj0WosaCKb9
 3XNx/sUlpU4hlhC7sgYFB9uY/o4uka0Zpyaj7MANauzEZ0Q/UpK+mb7GE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GDwIAbRI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 04/10] idpf: move some
 iterator declarations inside for loops
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
> Of Joshua Hay
> Sent: Wednesday, October 22, 2025 1:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 04/10] idpf: move some
> iterator declarations inside for loops
>=20
> Move some iterator declarations to their respective for loops; use
> more appropriate unsigned type.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 28 +++---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  8 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 96 ++++++++----------
> -
>  3 files changed, 57 insertions(+), 75 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> index f12c35c6f5ec..564fb25bc309 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> @@ -649,7 +649,7 @@ static int idpf_set_ringparam(struct net_device

...
=20
> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
