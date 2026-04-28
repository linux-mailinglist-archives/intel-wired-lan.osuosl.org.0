Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2J5UOXnA8GlPYQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 16:13:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A56486AA5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 16:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 782CA60EBA;
	Tue, 28 Apr 2026 14:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMFZJp7t8kiZ; Tue, 28 Apr 2026 14:13:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3E7F60EBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777385590;
	bh=z7Fiqubad4icQ51WnV2eW3jKgbDW4CQwV64Y3AB9Ygc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6lh43LYSFqVHXT9zhh3DsS50/MHp5hkKBq40UB61FviMz+zMsnqNzScXYTvYClJhd
	 LfU+YaQvrbqhhlN/3f/giKN6v7WH2pEb1O19jQu9OCzaokaF09TnNyWrIy+c+ncd47
	 h9J3faA5qin7q7g9Ioh9hnBPUTyZYAjnA7F2KYaFoxrMGUWVgcSSTsIK6bBLgTN3/C
	 nVHCMma0U4NE3QIbNAqLCWOBGrwoI1F2YjykLQozV5Lcy/94if70yqTS5aen//5X+Q
	 VriOpMJY4/ZgSEM5puRMVg3JvKnxJ2ZvTBiY4c8A5KI5TUDn14m8OevTpxlMs8wnRx
	 Ou3KQ356ZnJOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3E7F60EBD;
	Tue, 28 Apr 2026 14:13:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 355211B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19CE460EB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:13:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ESbJ-RrsMYIG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 14:13:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 37F3960EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37F3960EA6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37F3960EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:13:08 +0000 (UTC)
X-CSE-ConnectionGUID: 7BPuc+oIQoKB3tKf3GhM1w==
X-CSE-MsgGUID: nFV6wAbzRimh2HDOY8lpxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89755710"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="89755710"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:13:07 -0700
X-CSE-ConnectionGUID: C5cyhmynRnuC7Kx8C6yv0Q==
X-CSE-MsgGUID: lPdicSLXSBGjW8in9Znwkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="227442929"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:13:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 07:13:06 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 07:13:06 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 07:13:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KVNIpw86IFZfujHiNKXjzAmB7tkUMYEoItV0YT1bacxh9p1jgDXE6f3fJ1A0CyI7YyD2eysPK/+2lLJH/IGuMSMvq/2nZufI+pUZwnBMVOD8aeMVcderhr/cSj4Z2aX5scN3Oo4YHATNEd0yWQvgq7uCErrna0FFqTUvme5E/XG5FLDCscbQA8PlkJdGcPWoorsvSPqBVpNxDhMg9rfswYWb4JEEXNicyLZAGuFfNlLp+l6jZtHSEv+HARMnoqPThL3ltPIwB5irh6DLw/7YdbpR4axP5ZYCEjCgmjWOQoG6jGvVNsYswVx1N4UtSOBcVb2StE2EE0eesUnFuB6flg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z7Fiqubad4icQ51WnV2eW3jKgbDW4CQwV64Y3AB9Ygc=;
 b=Y1wMOhSGVgkEKalFOzLQJ5O7cVpzFb2ZpslGU9QW08ScKQKcsrMczsloSQrIa9CCatV+jKl/vVOMJReTW+giIrJCcNn/N8JVyL/nekGHrGC4xrVxPQ2fSwKuFY5U7MOPBE3Z5jBQQUk10yFZ5brL6ObBifoaqPXGo22a2areoNnd3mboHx0Ovl2RyNIFaUO/wiMxi7J/BT25oGDyvzAoaVgcp6otXDPNkE7N5Ix/EW3omOCI1t/b1HH8Y0uRBK5eRQbKTvlZJ4kEIEAtV5V9Dpu29Aks7FOEm2Tc6L/uBV/Mvt9kcBoEdVmYvG1bqCXRIHxrmmmgWC86VHF1kNG3ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7529.namprd11.prod.outlook.com (2603:10b6:8:141::20)
 by SAWPR11MB9781.namprd11.prod.outlook.com (2603:10b6:806:4c9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 14:13:04 +0000
Received: from DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::1289:ce98:2865:68db]) by DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::1289:ce98:2865:68db%2]) with mapi id 15.20.9870.016; Tue, 28 Apr 2026
 14:13:04 +0000
Date: Tue, 28 Apr 2026 16:12:50 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Fijalkowski, Maciej"
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "R, Bharath"
 <bharath.r@intel.com>
Message-ID: <afDAYhzuIxNAdVLB@soc-5CG4396X81.clients.intel.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-14-larysa.zaremba@intel.com>
 <IA3PR11MB8986076E6260ADB50B05602CE5372@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986076E6260ADB50B05602CE5372@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: VI6PEPF00000232.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::8fc) To DS0PR11MB7529.namprd11.prod.outlook.com
 (2603:10b6:8:141::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7529:EE_|SAWPR11MB9781:EE_
X-MS-Office365-Filtering-Correlation-Id: 36903804-4fd0-4b9c-5c65-08dea530433c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: M5TQ8FjdpAmNQnn+949Za8C2nVMOenmmBNH4Yg48VeaGacUziZHV75/qhqa93FlxeP6lUaB+vu9v+nwqDcMZLuFHLnZytow4ccHXXf8cVBW0b7YPrqRp+kZBAam4xnJykTfpDovRTtul0iyXeN78nkbEEMqf+7U+JYCj5VObOusduMEX3OPM504F4NxVUCGlZOI7Gb3/rWNWzOukyDZNC+1fVpulvme+P0K8fiP4/yvU1KJLELM1zF91sAi6QofCRVk3EFUdesokh45DCYrbOayvE4+SdIgLz8ulHQD/Zs2YNWPSmw71Y8MmGJ18Kn/v4ncEmEPDnBw8ObREAzwuGY07QeCQin191Zz4JzZGiWi/uhD3Dawf2QFRXA8Dpj4pH+YEze+z8wdEz2HWgjahT/B0U2F8x17c3dHPZsAJA79q7UMIqQWXbA6BxGDoVjA8YGhzgQfEDAKkNNvG9sx9l3b5XNRt9jslfWiOTK8f5V1OIP176qad29uqZcZc0a+W4nkH2VOh0plWSY/tpvjGsORB5kAnDAbuAbhPEYF0ChE5N4aiHjowb42qV85EhgOFQADSuEaTk3xVmnMUb2XXEvZ2UreKOK0El759L1E22+lbW6lo7T/zyRVD4hsqAbbIJtt2N1YTKUcj4CbO38MUd5V0jC/RuU0qe8B4tLoXE4GsZuHQF6org1abIGnHvlaMZnFIDKXJ9f14XH5gAeMdij8RxqWTbDTn+TEIot/Pk04=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7529.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w1sHir+/GnwNBpsLVdMsPaP39Hwc94ix9JJE7MPKclfW/dySIfFLIuQU0gpf?=
 =?us-ascii?Q?uOdeTzqWDGNvx9CZNCkLWeRoks+MAOVIzVPg0lt1Pc/zMVqaQ2bLglX0F7WK?=
 =?us-ascii?Q?GnwMY8X6dE2KOO0+I+p6CCTcQ+ltZE1YrdRnwDZ0tVgAGcJa99DE0Ay7j9Tu?=
 =?us-ascii?Q?o9L0N2SrdCM6tcJ+0F90nTgcO2pDOfssH6V6PtgGiiTlLbDyrdXXhqtI0R+6?=
 =?us-ascii?Q?x08pp/bmszcPpeur9d1rmZAQO+7zilGinLyogGioeGGxOHLIrENPzu0ZQKwd?=
 =?us-ascii?Q?N43BO7NSkAbnCxhZDM3rK0QCAWv9FRl07/MkHE9hEmTDoo1nuj1p714UU3ka?=
 =?us-ascii?Q?CWXWhNn/rQADLVLlkYxoxcGxgp1FxX59YEl95RV7SpwegYpuPykhraMR5qnZ?=
 =?us-ascii?Q?chIwvxJkFo9erenu6risl3IzYJnVHgHcTdCYnqFI4jSj0Vtm9DvVGlnb7zXB?=
 =?us-ascii?Q?+hJBM4ducTeJGvnPnd6h0/j3N5wcFUQsLCaT2HF56yw7ZcynXU95gJTPIP8a?=
 =?us-ascii?Q?ukBnnzL1HOQ5zyjjoEL02ybeRKm7KuzYW9OVuoTtqLb4c9kanPjMJT25lO61?=
 =?us-ascii?Q?U+HFtLI3SXFZnyrMnyjBLLh685eEfUC4RTuEI7Uys1jqlLxj6Mnm2Rm1TqAO?=
 =?us-ascii?Q?BTCiRjwq++BX9OFZHbf8Qnhe8WuXJAZ7A+vyogrvk79rSya2s5YcGxsZEwxx?=
 =?us-ascii?Q?Z+sQupYp2+4H7lPf+V37vCE0wLICqnGEXHQepifN+oOqqOmyv63f77DYvbC+?=
 =?us-ascii?Q?snKAEXKV/h9Uh1mqihZec0IdMu7HiO8wb9hKO7au48A6Ja6sYf25CaUlwsRt?=
 =?us-ascii?Q?yRLpwcveXOjeUFgDqV86WOXmCK/Qwt4jdVLY4/SdRkxaOfnGV+OZfb3Sd6lr?=
 =?us-ascii?Q?JNoWSo4uMjyoDLdfEkqSsKDh4c9OyH8jxp1Ab3HcCRfVc2SvEIdy7Oz1QDDn?=
 =?us-ascii?Q?ZICnC3lQUNH5WViMwNGg9DeJNYIZqrmheeHEFny6RD6ZBUQz+65cgQCcRKFP?=
 =?us-ascii?Q?UkVIYZ/CIMlzZutNovFzQ0NzwDoWUNZH60clRDMnicXJ8CrOlMfUbb+Dx//v?=
 =?us-ascii?Q?nm2mAQIUvJgt8SQm89EeYKBpb2Sec53sMUx4Mpdnn+W5YLtdG1Rg0EAtbwqY?=
 =?us-ascii?Q?KxidetRMXzjPcHiG0DVqQPer4YDYLcFNDzc2aE0kMKylSy3yShB0ZmnUB4V2?=
 =?us-ascii?Q?Wjo4nG6Fi230k56UjWd2V/evspewi3zK3LH98OMb8IvEHcIFGT5mZ17yWiDs?=
 =?us-ascii?Q?/p3wGnzVr1D+lO+asICC+m6FG7dPOAZdHhiXkHMNWmwauOyjV9xrPnyFoMgo?=
 =?us-ascii?Q?6MGv4Y3j8AocRi7L4bvHA5hV0cUc3BbtCF7ZjuoXgyxJU2rR3iQmoNlZRQyq?=
 =?us-ascii?Q?y1kmF1axhoyPKLSeUoRa/E9EN7JpNqUCVOz7ofceQrTtHviw4NMEHiQ7ELVp?=
 =?us-ascii?Q?Pyxm2ny9Kw4SP+mGUCHUrxlQ5XNRqHU9YWOfWRRplv7LzlQ0JkHwwN5DUhkn?=
 =?us-ascii?Q?E2ni3u2fe/+32MoIoQzv3zPcTQo1nq9/xaT2yxZj2sBRN2NzW4UkAKgRhzaX?=
 =?us-ascii?Q?7evRc7/gC42IlQjzht47b2XH64kitLmoWeLTLXCpHnI8ZNwjyiAgHyxTLhr0?=
 =?us-ascii?Q?cUGmRXszzKqQBmcUYxkwqtCdZ+3o32ohMvzr/xWJLqdy8Y/mjcUxP+PvlBRd?=
 =?us-ascii?Q?1UVDpL2s5ogaTC2/iQJ4mpVQwru2S+aCy5/7naQbHteqV3dKY/2G+hUodTid?=
 =?us-ascii?Q?hX1Havnwkj7nFoUGeIXHa8oYvaVJpYvc+VDoblO0gsLT3TqVzWDo6Q91gjtD?=
X-MS-Exchange-AntiSpam-MessageData-1: PyscIOvsv9XpGHRsLcuD4Avh3HL2dwtY2U8=
X-Exchange-RoutingPolicyChecked: DLyO+P0Cv7/AB9T7ie34gLL3WbBMaDvSPauGsjDW29zProRGBKyuwqC+DD1VO7qukqMSfSH622XpvK5zkjdCONgJ0sCxkhDAsFVYIe2HkPKWiERl/5Z3wVOhGL1j0PGYk9FcwIyUOWH4uKMLdbz4VTe5pOWfR44VPCPU7zrS02CJA8zhpqk8vieyRy2KJ9Dl9Fxz53KSloEQ+TU2es/TO6x4MC1sgWj0gjrOy9grfr0dlpUArs/OcqKhki6YhWbAQAbAcML9HwSrxG1AEbDiP+/ITJEbyV++fRCLikrOI645G2OfItE/Fe4ln7EBpodAqGZpEtbELlZtwjnjhcTyvQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 36903804-4fd0-4b9c-5c65-08dea530433c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7529.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 14:13:04.1696 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: awNxtK6wi3Sg0y+MeLa9V9zJBF+TeLxXnhbpKiK/5kEGRv/BCsBjXpZksCx0t+5nm7mQ+khBtUPpTp8gsfZkaJUNjVg4ucWxzl6BZUXls9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777385588; x=1808921588;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sw2GrklNIam5lUUj1Qt8/kRC3kcDu/wm1ToCXpfJ3fE=;
 b=DNNYJbPQPjeqBHd6WQCnVNy+dGVnQpQX/5OkdntGavJBRd7S2l4o/7I8
 KlNTZiAqQExfZpzzFyulsRqp8lMuRp2dGZOqUb/yroHPh0cGT48cjVuqI
 8KgpmUGu5rif+U4x7VYH6TYRCZQZ49QgtJZ2GTtOAe6yKvJ0ks3StGS5Y
 pxjR3gO8buweEPI2gRNosnrnUaqb42lj7Cx9UzC7/dDm+fSXO7ar0YU6u
 RCcRUsYxV0xvvOrGxRa9WrCxiGvt9YPj9pa4TbW6h3NO3k9CnGjV4ERtX
 /wcqMU+m++B5EcSHSzXvwkJl55O3Nck+nNxNI+3t05kI8Vds4zqJMSIrS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DNNYJbPQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 13/14] ixd: add the core
 initialization
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
X-Rspamd-Queue-Id: D1A56486AA5
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
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bharath.r@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.932];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]

On Tue, Apr 28, 2026 at 10:50:54AM +0200, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Larysa Zaremba
> > Sent: Tuesday, April 28, 2026 10:27 AM
> > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>
> > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> > Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> > <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> > David S. Miller <davem@davemloft.net>; Eric Dumazet
> > <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> > <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> > <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org; R, Bharath
> > <bharath.r@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v7 13/14] ixd: add the core
> > initialization
> > 
> > As the mailbox is setup, initialize the core. This makes use of the
> > send and receive mailbox message framework for virtchnl communication
> > between the driver and device Control Plane (CP).
> > 
> > To start with, driver confirms the virtchnl version with the CP. Once
> > that is done, it requests and gets the required capabilities and
> > resources needed such as max vectors, queues, vports etc.
> > 
> > Use a unified way of handling the virtchnl messages, where a single
> > function handles all related memory management and the caller only
> > provides the callbacks to fill the send buffer and to handle the
> > response.
> > 
> > Place generic control queue message handling separately to facilitate
> > the addition of protocols other than virtchannel in the future.
> > 
> > Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> > Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Tested-by: Bharath R <Bharath.r@intel.com>
> > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ixd/Makefile       |   2 +
> >  drivers/net/ethernet/intel/ixd/ixd.h          |  10 +
> >  drivers/net/ethernet/intel/ixd/ixd_ctlq.c     | 149 +++++++++++++++
> >  drivers/net/ethernet/intel/ixd/ixd_ctlq.h     |  33 ++++
> >  drivers/net/ethernet/intel/ixd/ixd_lib.c      |  25 ++-
> >  drivers/net/ethernet/intel/ixd/ixd_main.c     |   3 +
> >  drivers/net/ethernet/intel/ixd/ixd_virtchnl.c | 178
> > ++++++++++++++++++  drivers/net/ethernet/intel/ixd/ixd_virtchnl.h |
> > 12 ++
> >  8 files changed, 411 insertions(+), 1 deletion(-)  create mode 100644
> > drivers/net/ethernet/intel/ixd/ixd_ctlq.c
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_ctlq.h
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.c
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.h
> > 
> > diff --git a/drivers/net/ethernet/intel/ixd/Makefile
> > b/drivers/net/ethernet/intel/ixd/Makefile
> > index 164b2c86952f..90abf231fb16 100644
> > --- a/drivers/net/ethernet/intel/ixd/Makefile
> > +++ b/drivers/net/ethernet/intel/ixd/Makefile
> > @@ -6,5 +6,7 @@
> >  obj-$(CONFIG_IXD) += ixd.o
> > 
> >  ixd-y := ixd_main.o
> > +ixd-y += ixd_ctlq.o
> >  ixd-y += ixd_dev.o
> >  ixd-y += ixd_lib.o
> > +ixd-y += ixd_virtchnl.o
> > diff --git a/drivers/net/ethernet/intel/ixd/ixd.h
> > b/drivers/net/ethernet/intel/ixd/ixd.h
> > index 99c44f2aa659..98d1f22534b5 100644
> > --- a/drivers/net/ethernet/intel/ixd/ixd.h
> > +++ b/drivers/net/ethernet/intel/ixd/ixd.h
> > @@ -10,19 +10,29 @@
> >   * struct ixd_adapter - Data structure representing a CPF
> >   * @cp_ctx: Control plane communication context
> >   * @init_task: Delayed initialization after reset
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ixd/ixd_ctlq.h
> > b/drivers/net/ethernet/intel/ixd/ixd_ctlq.h
> > new file mode 100644
> > index 000000000000..f450a3a0828f
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ixd/ixd_ctlq.h
> > @@ -0,0 +1,33 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2025 Intel Corporation */
> > +
> > +#ifndef _IXD_CTLQ_H_
> > +#define _IXD_CTLQ_H_
> > +
> > +#include "linux/intel/virtchnl2.h"
> Every other file use #include <linux/intel/virtchnl2.h> why do you need #include "linux/intel/virtchnl2.h" here?
> Please explain

This is a small oversight.

> 
> > +
> > +#define IXD_CTLQ_TIMEOUT 2000
> > +
> 
> ...
> 
> > --
> > 2.47.0
> 
