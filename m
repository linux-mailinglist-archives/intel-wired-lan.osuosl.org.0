Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC145C7BDFC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 23:35:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C98E48194C;
	Fri, 21 Nov 2025 22:35:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cm3P8dNfExrG; Fri, 21 Nov 2025 22:35:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 451AB814BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763764524;
	bh=uNQSoXFcubCPV9odILg4v0dFVe1WEVu64AmNc0IVG/0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ck1EMVocPrGY+92XlCBxZTgWEtuBkopIy3DvqkRWjDjJW5PkabUz86tEx6kzvvitm
	 0NiQ+t1XunlhEdX23t1bZgCZ7u0X0+jzsjixZrV6jmdbalj8c3+Z9DxnUK7phT8ky+
	 5Tk6FUkoGGjijDXPRcBvxe3zHYO9lsvfaSa2ytix5Aj1d358XaDBXilpTl+xMh08iM
	 Myvm5Bau+0yVL2U9lnAfHCkTjbOPEmZmbYrIU0Vn41pN83jkojWACOqbLy2MaBPRPW
	 Zo3Q8LTp/gpa7Nvca2401Ti8I3JQeSL+Yz2usdVIyxT+diJSJ2VJoM/rGwd8I9IgTs
	 jzDVsfJiOCo4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 451AB814BB;
	Fri, 21 Nov 2025 22:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B5126122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 22:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BB1D8146B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 22:35:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hkr-eDhAWJxb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 22:35:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7B1ED8143E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B1ED8143E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B1ED8143E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 22:35:21 +0000 (UTC)
X-CSE-ConnectionGUID: ZllV5nY/T/qDqZs5zxy7cw==
X-CSE-MsgGUID: OCN07ei0RkubZvtsrIT70A==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="69722002"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="69722002"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 14:35:20 -0800
X-CSE-ConnectionGUID: D0VEjwqUQQqlSEomZn/bWQ==
X-CSE-MsgGUID: vx/uxc7VRSO4+OROS3mihg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="196090283"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 14:35:19 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 14:35:18 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 14:35:18 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 14:35:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tSjOXPGyMHSG6pZ7XGWfV7BF2TxBMkSItVX7xd7CxB6XigjqKJIOqGoQWXNp2nqyxzMVL4ixlV2eYK+8dcziiLcdpxxH+gYHc+2CMPDlptFBWf4ScQ3kIkbjyx3wXKkPVHS3+FP/4nUrpTXwp1RNQ7x18wI1Zl9iS3lP/3Y6OYGHbnwZAJFknX5v3Q4wqMEZ+g5bbI+uLiomZhBwv8tZ2swtQNNoKun09UQKGvMvb54Z1foY4e0ZMuycxkEcynit+FDfU4q4no8z3mVodEs5zNY0HiEnenoEnziNb1VEte/xzxdr9GWWfAZrOX4nCA2G1yabCQFbzZKZCWM8LZUHJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uNQSoXFcubCPV9odILg4v0dFVe1WEVu64AmNc0IVG/0=;
 b=lz1XCmEM0AepUrK9XHrV9n2xEXTFDJCGO2yoEOATMmvBG68aJVUv2k03uvXAt5eUOQQubHKZoTUz1EPsCPAgjl/6yrjsY+qtViJN6oXlnGxsd32IC1z9uYCoMTa6dp/8kEvyyj0x+uAr9jR8Euif/wztrKpgFUwcR/HXYYxtF70uvmL0+G4VWl4Oc7jcw6Vdv+nZhaHdZyuuAXGzyAvZ2vGkzZtis/2iSEyj6W1ww3UdqkJoS7+uCrCCjUTdxZR0AS7dvgnlem+CVbVcOTNajTodQGBmdPj/To3otjwNXQ6rcBgqFp8HEdZc/KNb7yfD4TWGzS+rBae7xdweHugdbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB8561.namprd11.prod.outlook.com (2603:10b6:610:1ad::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 22:35:15 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 22:35:10 +0000
Message-ID: <d396e86c-e466-4630-8b1f-7f5b640d88a5@intel.com>
Date: Fri, 21 Nov 2025 14:35:07 -0800
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>, Mohammad Heib <mheib@redhat.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>
References: <aSBqjtA8oF25G1OG@stanley.mountain>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <aSBqjtA8oF25G1OG@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0105.namprd04.prod.outlook.com
 (2603:10b6:303:83::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB8561:EE_
X-MS-Office365-Filtering-Correlation-Id: 1bbb30fd-0754-44b6-1a9f-08de294e3add
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmwxZlNuaXI1Q0FqOEQ1TmJoaDJBZzRteUgxRkRBek9IRlNWdTE4YU5UNEM2?=
 =?utf-8?B?WVdWOU9jZkRyekF0Uy9GTnp2SElOenRuTGlramhvSnF1eEJTVnljQVZaQkZL?=
 =?utf-8?B?V0t2UE9LU1B2WUhsKzFkcnpiUGp4alh5eVlsY2lueWNaR3VwMDQwS25pSksv?=
 =?utf-8?B?Y2RFWFJKQlYrL3ZlM3piSlcxYzZpbFIvZ2RNVFJHSk54ZGZXdFdMaWJRMXBO?=
 =?utf-8?B?WE0yK29mclhSaGMveHY4dzl4SmtLNFEwV29qY3owdXB5Z2JqNTFjYWREbUov?=
 =?utf-8?B?cDZHQ1pzZTg1cUZXU0FlNWoyMlZwM2Q1VFd0ZlZZbHVKMTNzclJmN2lYbVpV?=
 =?utf-8?B?L2dkT3BWdm1DUk1YbWpHZUowaGdrdXNXZWkvSitSMmZIb3IzM3RmSC9HS0to?=
 =?utf-8?B?eHRZek9pMmF6Ny9XejZqV0N5QWhHTkM0aTFSWEozSFZHclh2b29tdEFST0hH?=
 =?utf-8?B?QWxNS3VTandjMlFzVHprMlVicGJhVWtKNmNBTHBvUnZSbFR0dExEcnJwWEs2?=
 =?utf-8?B?dDNRMTZZY1kvazFQK1g2bWdPakZSMnlpT09oc0duc1l5bStDRFYyOHQ4N0xi?=
 =?utf-8?B?R0gzemdFcE9abjhrYXJabm42SnNpVmwzcXY5Vk1pVFdLTUxNVzZjMTVmUlN3?=
 =?utf-8?B?MkVPaTM1R1NZOUwxbnQ5cU9KYUFwZjgyYTIrMFlJcVpiUEUzOGV6MVArUlVo?=
 =?utf-8?B?QjY1RXBzNHl3ajVXaFA3a2JSNGRuVldueS9TcjFENUJlUWFKMXZLRWtoNmpK?=
 =?utf-8?B?dWtFR0ZXbWhxNHRFM0xUTVVRUngxWDBubFBVbUhOUGd1VkJ3YnBXcU54VTRj?=
 =?utf-8?B?TVlOT24vd2tIbmE5bnJpQng5d0VGaGJhTjQrK0xteERLYzZ2Z2ZmTm5FaVUr?=
 =?utf-8?B?SThlNkVyZkxFSDlNN0g2cEdUaHk4Qy9lT252Tk0wYkdrd0VjMkt3a2R0VkpI?=
 =?utf-8?B?NDFkWGlFOC9LMVRBdmIyYUt6d3I3N0RsdlcyVjdDL1Uwc2JidDYzYTdadENk?=
 =?utf-8?B?dG1XVDNMNjRwTXMvd3dCK0FGMmN2VE1LQ3BBWVZObkJGZ1ZGQ2xLVFRMMlo0?=
 =?utf-8?B?V0Z1OURQK3NhTWpneUgyeEZnNlIzMmhOY2pUMW50dDNGWTBSYjhvZHhNbC9j?=
 =?utf-8?B?cEM4UVhrYUJudGZQS2hFY1M0M3RZOTNINDF5d0dQOVIwcFVka1J2ZExwMlBF?=
 =?utf-8?B?UWZWM0xibHlzUGdKUG1pSkRENXV1aEZaK00wRHhXd3dpVU14MHEzMWRwYmRC?=
 =?utf-8?B?bk1xVHJCeEkrSEVRWjdvMFJSNm9Yd0dFM1NWZ0tMb1JQZ2ZiQ0Z1RnUxby9J?=
 =?utf-8?B?N285R0ZNeElab2loNlI4UDkwUlJubmgzeDRLejU5aVd1UjA1ZWVzZ1M1L2h3?=
 =?utf-8?B?UFE4c0VrZmpqNzNQQW9ZUU1uYjRMVVl2ZG82UTc2SGw2N244ZEFLZGZMbDFu?=
 =?utf-8?B?ZTF6MkFUZWNjaHF6cWxNb3REQTlBVmdCaDNibFlIWlRrUERRb3JlSDR6VFhN?=
 =?utf-8?B?MGVLTHJsOGJXS1Fpa2hudlliSWdGSnNVSUgyN2UzVFV6c3FrbUlCM2xSenN6?=
 =?utf-8?B?T0ZrMVorOGo5aXFRcDBIRTdraFJuTDhYTzFIM0JHSEM3T0JJNTBKQ1BkbU1h?=
 =?utf-8?B?enZ0aWRnSzRmUlU3TnlONlJ3SWd0cXp2MHNOcC83SFpPQmx0S0c2SjYwUStG?=
 =?utf-8?B?UEdCTmRHQyt3RnNxdTBuMXRYOWlMNDhnRzc0N0NPQUR2MjJOSGFLcUc2enlO?=
 =?utf-8?B?WXpsYTh3a0ZEZ2ZyUUpzTTM2V3ZJazNnSlFWNDV6Vm1aWHV5VnVFOUJ2NFBI?=
 =?utf-8?B?RVJGYzR5dG5OWjJJTXA5Z1ZkVVdrTERPRVREKzJBWkRFZU92SVBIbUxBWGd3?=
 =?utf-8?B?aTZaKzRTSEpOcEFGUjhhbno5bGpUazF3Y1loaUJ2K3dJSEQzcEoySmg2VG1Z?=
 =?utf-8?Q?Zyh0py/wykRh0VOV5X2sdUF3HnwesMhA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjJIZ1ZtMmZyWjhUTm9yMVhPMWNBdU4yYm5sRXl4SVBZdzhIQmdGSnhlZElR?=
 =?utf-8?B?M0kwbkRTeVppYm5uMXBPdWo2MUVRR0plbXBaQjh6ejdvWWVsMUpGRXRQeXlG?=
 =?utf-8?B?U0NFL3gzdFJmeFpNeTR0RG1aVXF3M0t1bGVMK3pRNUNONEViVEZud3ZxMGlS?=
 =?utf-8?B?KzA1cFdjWTUzR3FYZFFaUlFkbTh0MHVWMjZIMkt2NUl3Uk5Vd1RBQXhyMlZS?=
 =?utf-8?B?ZmxLNDVtd3lLQkVpZHR2a2RmUWFoTVZtT01pYlJyb0JaenJmVFFqQTNYeDN2?=
 =?utf-8?B?M2FNM3VMMkViVGVhdWdWZ1Q4L1EvWE0rOVlSaWxDbHhSelRrM0ZhTW5HYmFB?=
 =?utf-8?B?REJjQVVxczdoRUpkdWZ6ZFplNUdNQWRRWENsUmwyL3ZIQTRwUytrbzhJSEZM?=
 =?utf-8?B?eHV4cW5IK1VseWluTGNnbS92dHJxbW5Od0Y5SWozVUdTeHAyRVd5KzZvVXU2?=
 =?utf-8?B?bGlhS2gxeHJwQmt4bS9Wb2h5TXFMV0k1clNkSVFIQU9Fc2l5VUxrekZ5M3pN?=
 =?utf-8?B?aGs4T1g5WmJTUEZ4ejcrMkRpak1tNVRzWmU5Rko3ekFROU4yZWNaL05iMWhy?=
 =?utf-8?B?a1llRE5yVElNdWQ0WUx1RWE3Qk9EdmN2WmJtR21nRTh1MEEzajNaWnNjZjAy?=
 =?utf-8?B?Ry9MTTluUnIyeFowWjcxK2JQYWptRm9sVThpei9UblhndHBlSCtCN2FmcjJS?=
 =?utf-8?B?ZGZhL3pCWFI1bDF6YWtma1BRdTd4NURyYktESUFDc1ZtdEs1WnFzVFZESWtY?=
 =?utf-8?B?VmdZa0s2eHp2MzJrKzk0TjQyTjF2aDdmTXlRVkp4bkNzTDF2cHlHMGxPRmdi?=
 =?utf-8?B?TEMvcVQ5ODRSOHE2Unpidy9sT24zLzEwa1phVlBKUmFNcWRyenFnMzViNHlq?=
 =?utf-8?B?b2pYbG5GRWdEd1FTUitsRzdPWXhNV2g2VW1ySDVZNU11NFlvSzczemh5cWlW?=
 =?utf-8?B?TEgwbHQxRDJnZWtNMFhZZXMyN3hEK3puWGdYWlErUUl5VzRHZVY4OVo3akQy?=
 =?utf-8?B?SWNCY1BtNzFZNzdaTXNJRnlROGhSZ1hOcVZrd3VkWmFyUnhpeHdhRjk1WGw0?=
 =?utf-8?B?ZlRJdlE4akZiNnI2RmZYWk9tbWppV0pmbGpkVk5SWHhNajQ4Z09ueTgxRDlR?=
 =?utf-8?B?OXUwVmlUdG1haVF0N09kcFVqZ3dKS281L0FNVFo4ZFpvQ1VEdDJqRkVxS05v?=
 =?utf-8?B?NlhkZzlMNDB1MFFpaXh6b2JyMUxXMVowS2phcUthUnpLQlpBRTEwWXZGZnpx?=
 =?utf-8?B?Z2hzOGRTZERpVmM3VkRQZmZwTy96bmFISVNha0NJUmU1OFlpMW1HU1Flek1t?=
 =?utf-8?B?enMxUXlOSEFMa1NYUThQK0N1ZmJWTEttQUVtVElGajRMNmdVMk5MTFFZZXdu?=
 =?utf-8?B?Q3lGUHVOMzhCVGNFWjdmQkozT3JhL28vZTVaTFA1aWRwNGlMckl5MDZIUzlp?=
 =?utf-8?B?L0Z6d1pyZ0ZCQkZTdU91WUNhaU5UdDlDOWpLQjM3Y0ZvN1FPTjRubmRmUUZm?=
 =?utf-8?B?OUlmanA0bC9WSHpVZWU5dmg2L1NGNEZJU0FTT3d6NTh1SGVzbnp5SzcybURF?=
 =?utf-8?B?eGNPOXNaa0tWZFo2WGZWS2xTUGxFQ2J6UFM4RFIwWU9TbE9MVWNIVllZd2tM?=
 =?utf-8?B?ejNOZHhQaHV6WjljWXozdlhoeEUvOW1GNHpHVERONStnbWhYYUowQ2FjOU5u?=
 =?utf-8?B?dGlRRkQxM2pSYVJEeWpyNUlCT1JsN2RjRWZkK2htYUpSY281ai83MU5IUVpy?=
 =?utf-8?B?dGlpTCt5RGE2cW5ITFBjNFgvSjFXcmYwR1d5RUpVMHhHNklLZmNaRXdwSzZs?=
 =?utf-8?B?T3RwNHNISDk5eGYzNzJNbGlmWHE3Y1pqSHBORGpjYlJUQ3NXWmlJTTV0Y3Mz?=
 =?utf-8?B?bHlXeDVtL0xlZVk4NFc3OTN3YTZkbWR2QXRRQ0xnODZJTDY5RllYMXlnU1Ru?=
 =?utf-8?B?enJJa01CbjRtdW1nUGMwYWwwRzRBdmk0bGxNeGNUWFlvWVc0WmZaelpkWE04?=
 =?utf-8?B?M0gvdCs5TC9OUS8yemZkby9OZ2swSGJFWXQ2QktaTjVnNFJNMWpjcmt1MUMw?=
 =?utf-8?B?eTRjUHJuNFBLVm5sbVUzYlNQaWIrYWZ6U1pwcEZuTnRRYVQzWTlDVXJYTGU5?=
 =?utf-8?B?bldwNURIblh5dkZvbmQ4TEhDeXVQQ3BPWE5kTndTR1ZZM3JkQWdRLzRGTXlq?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bbb30fd-0754-44b6-1a9f-08de294e3add
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 22:35:10.6673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cctApv4TGiIevr+36sreGGih88FGzZ0a7LB1UVMhwxFJt03NJbEKgi8df4jL3agH65qIYHeduwK/vZTbM0UsnT1aAxFueAZiKBSWtWTISgk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763764522; x=1795300522;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qr8G6ghgHtDf/ogTZo2T78jQUYfiE1Z59uoQnUNN0wQ=;
 b=Ikf0avl04Qs5HmkuCqhssqFhIc5vupigHMADfwCxzczyofwe0Wtb3M+y
 S3PAqWW+9vqy83kwAzNyX7FkfltDg2Mwodkqc8EkDlVjCpBqVbMrcDPmA
 szU0m2yqAfJAmqdJxUOZfkf45DD0xsVCoSeNRivaxDxknNdPcGBMQKFxw
 3kvpmImTGp3PZlMj7iMudeJaam8XuoMOxzu+b0yVebUDTZ3zhfHzem3ZP
 tKQs/1hiE/RmATIk9w9bn2k0143ep59AyYTmx6RPgLeOpcYCQRd8JiJ+2
 O+/iNqusFnio6Wemzwv4lsczMYJ1PKZZsLfS4OIYNyQ/SKDbBBzeIOxr+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ikf0avl0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: delete a stray tab
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



On 11/21/2025 5:35 AM, Dan Carpenter wrote:
> This return statement is indented one tab too far.  Delete a tab.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

netdev maintainers. This seems straightforward enough, did you want to 
take this directly?

If so,

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 9d91a382612d..8b30a3accd31 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2967,7 +2967,7 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>   			dev_err(&pf->pdev->dev,
>   				"Cannot add more MAC addresses: VF reached its maximum allowed limit (%d)\n",
>   				mac_add_max);
> -				return -EPERM;
> +			return -EPERM;
>   		}
>   		if (!vf_trusted) {
>   			dev_err(&pf->pdev->dev,

