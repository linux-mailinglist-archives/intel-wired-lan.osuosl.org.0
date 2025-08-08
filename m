Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A577FB1F157
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Aug 2025 01:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 204E660DD6;
	Fri,  8 Aug 2025 23:37:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B3NrZFFdQI45; Fri,  8 Aug 2025 23:37:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7A9260E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754696267;
	bh=zgwnc+ulwwH1BOPJaxWRo7/uxHFFlNGBqXc7nAR2z08=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mlqSRRlD+6Z8V9XVaVIMSFJn+0LUxbLGY0/vh2pr8oFBhwfC6vby9+Q/xE8MVbw7B
	 /0YQiMUDqdgcSpsjlxLkU0G6M+XvOEq89UptpFuWJVfi2Nq9FwcJguMIo/vESt1QFy
	 K1EU92j3a02SPmsXug4SWMerlxx1cQR9BWCbDFi5Ilo5WJ6fJpTlNHgpvUF4++USNE
	 nAcGtDV0eqexVlBC3/aA7Ib3w1VdRM78NxzyQWHvyzqN0CfvSFQa2Coo+EKI6vmb9s
	 OagEJXFAq/dOa2690bYcInyI+Hi8Tb8AauGk6h8XGdQec5oxWWPTdUpAEvtmK51MNH
	 5+ShHMO7QjxXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7A9260E0E;
	Fri,  8 Aug 2025 23:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C6A4A21B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 23:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC630815D4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 23:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N7vGfQ3HZBK2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 23:37:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9CFAB815CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CFAB815CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9CFAB815CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 23:37:44 +0000 (UTC)
X-CSE-ConnectionGUID: zs9N4V1gQ1aKMaZz4tpEjA==
X-CSE-MsgGUID: QbiIfZEUSL2aOfQeOho/hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="82493387"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; 
 d="asc'?scan'208";a="82493387"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 16:37:44 -0700
X-CSE-ConnectionGUID: siMb9UgMTEiedtqzFwWX/Q==
X-CSE-MsgGUID: rj0D4HQWQEKM+sbjjJvN1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; 
 d="asc'?scan'208";a="165806456"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 16:37:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 16:37:43 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 16:37:43 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.65)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 16:37:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=baFkmeXxrBoB0f5cl5mhNiyN+v7sqgwmoZ7OeIrglbxxRR4JFCxLI+MNSkLqIOBujvDWngsSSXGpYB0nmIdSGkCrwkVm/B34XZO50jxiVOg79fhGWmK9PvHQHHnVRlkyg0+8MPVcZXkWyQnXJZbGY5awm2XGoeoM/afMxcMrK7SF2mHw60BwN9f9yx3xdApj1WCAO8BKItdCpjYPVLGywSbiLAqmjoi3l9R87vHfuCGW65qPlIgr7Os3cGPkQNcZUSAQPDeFW6CL75L+3w5tl5Z9QrFKiyC4LXYonDifE8j47cShd82hW7A4wWBY5S0ZjHgd/fw5RkzM/3esy6PCew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zgwnc+ulwwH1BOPJaxWRo7/uxHFFlNGBqXc7nAR2z08=;
 b=L6Ja8Sbf94u+d1JJFAcf0HfqMioLx5FupTdxSBy8Frzc/qg2m3VztPRCiAGksOeiaMBqyxWDdWlv2NJPkfqd+52fSlzZOTjHFN7BlZorOvMi5m9mYak3aLVB6lN0HsAvriiOdkIBuPcfd/9SYy0/vs8vIRSvT54vfDb89FXMeEEfzsxQoB8I0VVtYdcxqrrrm+2kh5XsxkbSVO7m9hPPQ/M0duf8ijkJ2fNFewlo5Nq0d1iRvGEUNZMLGeVYRAWiI9PkBO0VmSoKbf5zZJil4nARgllQneFq/E2KRNJbKdPOz/MiEe5WlFu//Cix5IwDsBt2Was8DQBHDnBRMwS/Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Fri, 8 Aug
 2025 23:37:41 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 23:37:41 +0000
Message-ID: <ebe632af-cd30-4fa5-9c31-51fcc979b300@intel.com>
Date: Fri, 8 Aug 2025 16:37:39 -0700
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <pmenzel@molgen.mpg.de>,
 <anthony.l.nguyen@intel.com>
References: <20250808155659.1053560-1-michal.kubiak@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250808155659.1053560-1-michal.kubiak@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------meDTa0f7icF5ceqI4vAD0bxY"
X-ClientProxiedBy: MW4P221CA0003.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4738:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ff37471-0595-4de1-f26c-08ddd6d490e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cDNoRFhTQnVaRFF6bEhzZ3ZlSlJ3RWpOVUlkaFpYb0krNnUybVV2clZkT2lV?=
 =?utf-8?B?dURONGhOQWxJTjZqaTFKNE9RdGdLdUoweGl2bTUxTm52d1gwWFJwMnV4ekY1?=
 =?utf-8?B?TVpDTytBN1hETklCM1NjWFNIbk54cU4rYTZEUEpSRzZsMHhlOTZTbmRyKzdB?=
 =?utf-8?B?QWdTa3dsb0s0dlhIK1FnOUNES2Y5RkNhazRLV1VockhyZVFibm5IMFE0MDZL?=
 =?utf-8?B?TjQ3V3NpZ2VCd093VlpSNGlMRE56T3JVemJDMTNRS3dhOStnd0RUMWR4b2wr?=
 =?utf-8?B?eWNyL3ZJR2hPVG1CdFBxY2pwWGNLc25uUmgrRy9uMkw3Tk9tZmZ5UVZBYjJh?=
 =?utf-8?B?NkplVmFXUVZlRnlaMGFzNlNwRmtmOVM2YVlJakFVRnpWV0xmL0N1L2JXUlNq?=
 =?utf-8?B?dlBXemJYc2xvMGp1NXdCSnhKOFVScFlXOEwxQXZ0VzJrbytvamx6Q2lWb05W?=
 =?utf-8?B?OFN1V2RmL3J2b0xPR2ErZERVbkZrcm8vZ3pFTXZ0Mnd5VFFRTDQyTUhSOXJM?=
 =?utf-8?B?UDJ2L1lVK2JEMkN0RGdnUTFhYkZwWi85NzZZVmNVRXlhVnI4ODJLMWVzRHJp?=
 =?utf-8?B?RWVycnc2dTJLQ2RBT3JFemlCc0trRG96M3Y3RzNnMCtGYUVTQmxPVUlvd09F?=
 =?utf-8?B?aXJudk0vL1NyRGdETU9teTcrRk1ONXUzbjJLZWU0b3l6NHdVUC83R1lMdE9S?=
 =?utf-8?B?MDhiL29WRXZaUGc0a0NhSmZPdTlBYzB5NVl4U0pOcDUzZXUzZ05tbUVYaElM?=
 =?utf-8?B?R2ZZMU0vdHRoMUpwUXR2MkhKSnlrUm91VEcwVS8rWDg4UlZGZkdFYkVwR0hv?=
 =?utf-8?B?VTVaaE1wNFNpZTdIUjNGNTU4YWdUalAreVBSVjEzZXhLdWhqYmxML2xtcnVa?=
 =?utf-8?B?eEh1ME5hT29pNk9GR0p3emdlcWZ1QW5kSUthUzhUc3dVVW5saXlKS0tZK2tn?=
 =?utf-8?B?ekZoUkQzQnYyM3NlRjFpQU1aTnBSUW1UcnRyOUJXZ0ozZXhGeUlKbWx4M1Ry?=
 =?utf-8?B?ZXpndndobjh6cUl6Zi9tc3hXQlMzSW5HeFBiWWVhaStqYWdDRWh4VTlWaExQ?=
 =?utf-8?B?cVhPbktobUYyVHZWYjlEVWU5UnZlQmlNTlRxQ083TEtld0xFT2NVUWFQUGMx?=
 =?utf-8?B?dHdCb09VdUhEMk1OYmcyYnhYS2txSXNLSkUrbEhQOUZnM3p1czFaS0MvYVh4?=
 =?utf-8?B?UVRFU3pEVzVEejRWUWZTSWZoU25Hb1A3bXE0Nmh1UmRMYVM5NDJWNktsZG1U?=
 =?utf-8?B?eUtKWWVjdTFMLzRqNTNnTjR4OWR5VjNDSmlSdHVVcDdVTVNWYnQwRlIzZ2ht?=
 =?utf-8?B?aUxlc21zN2ZsajZVMzFnRlVVdjczRjBjYVkwazFLRDdubVdiZDBqc2NITERm?=
 =?utf-8?B?SnRCejdvY1pydWVFOHRoam5ZSi8wZGhqVjJoaFRJSjhaVmo4UlY3NmZqVjNo?=
 =?utf-8?B?YkluMVl4ZFQxSlN6N1ZBSEdkYk5keVg4cmZpaStvOWF2YnFDOFFRdHpLNWhr?=
 =?utf-8?B?dGtxa0ltYjlQK2l1WlZ2ZEFIenFadCtaQ3J3WmI4SFVTS2Fpbm0yb3lERlZI?=
 =?utf-8?B?UW9IU1RHcW03NlpqQlZaTUxJWk9xaTNoZWxvTGozZkI1OG0xQ1crTmZBUStt?=
 =?utf-8?B?MUxIWlRDbHlqMTc5VjVJMHFpWTFSOXNYLzZXNkREMXNOS2gyYTkrY0ZGVzJV?=
 =?utf-8?B?T2trOU4xbjNtT2xVZzdnSXEzTytDVWxxU3prekxOaUlOUTJxZmYvbEhnLzVM?=
 =?utf-8?B?ZHJCOWFFeFU1RUh1TUJIK3dDS2lhSnpEUk5aNUdCM2hUWk9VSE5acndHTm9i?=
 =?utf-8?B?cG1WL3h3by9mNlNCNTgrUDZScjZBR0duNTM4VEZmNmc4Y0p3NEtaNmlLNTdL?=
 =?utf-8?B?Ry9iZ2NzSC9Wb1p4dlpnSEdaYzl2WGU3Y3VBWEFLME1ZSFBzTjF4ZWVxWEtM?=
 =?utf-8?Q?GCQSlb+S+eM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmJ0Y3FMd3QxaFllaUdBV2xOaUV2TDYvc3BJWEhBYkFMNldxRzVlc2lYeTFo?=
 =?utf-8?B?V3UwQXIvMm00SjJBWFFqSkkvd3Y5UE51UWtGWE1udVhqa2NweUd6QlJLV2hq?=
 =?utf-8?B?dWN0Ti9KdithY0lFMnFaWVNsRWsxWHE1WHVTczBoYno3cXltRDNhMHQ3c1Q4?=
 =?utf-8?B?d0RaaVp4U3Z2MmhuUktTMUQ4TGxHME5tNHk4ZGo4U3pHT0V2eHNmeWc2Ujhm?=
 =?utf-8?B?VWNGdWU1UDVFUVlPdTVWVEJ3S2ExRnJuNzkvOGl0c1RYaWtRRmtsKy9ic0F5?=
 =?utf-8?B?S0pjU1FWRWxVakNab0pYMGxqeitVSDJKem1xRFIycmlaRWpMWVFZMkQxRm5T?=
 =?utf-8?B?Q3dCWHl3aUtOdCtuUlpyUXNibWJnbDROVHo5NGhHTkg0Sjhtd0h4YnhSMUIx?=
 =?utf-8?B?dVJVOExpUW13dXU5WEtCWHpxK3R3b1FzTUl5cUVxM1gvWFJzYUYyQkJkMi9V?=
 =?utf-8?B?WjRrUCsxSytSUFFBbUcvV0orUzFCZzROSnFvU0VVcVE2dWdGM2c3dUppbHZn?=
 =?utf-8?B?dWpkMEkzZE5CeWVCb0ZPTmFoc3E3bjhTOG5nVmtTZFRyY2h3cHozL0dqU29q?=
 =?utf-8?B?MDZ1NlRvRW8wdmYxU0kzWU1leTEzQmpqYjZPNlBOT3o1TXdudnp2QTR3WXA2?=
 =?utf-8?B?TGpwUnFrdE9lNWI5bXJBL0YyQXNDY2I5dHlHcDdBTEtncW5QeUc3bmNiNkYr?=
 =?utf-8?B?NlhYOEtXWjlSU2JUSXFNVG1KblZQWnFZZ1hCbFoxcDlvSUZMS0RjMmFMY1VR?=
 =?utf-8?B?bFhZQ3dBT0txWU1vdDJPSFhFRlJ4by83c1hzaVBhNGJXNDYya05oRUVJSEJp?=
 =?utf-8?B?OG5JUWExaUVLR1J3eGRLQ3BmenQ3N2kxVUtuMko2VUgvQmt6S2FjSzBScUJk?=
 =?utf-8?B?Y3cwSWYzeXBGSFBKRnNaQnVsZ3pVNlU0VzRUYU51aFN6dzV1cVdlWk9iVUJ2?=
 =?utf-8?B?TERMeEVzSWdNZXVJejZhelRsaFpHbW9WSXpZT2xUdEhicDhGSlI2NFI0eDBa?=
 =?utf-8?B?V0hsc0xPTXZFbXljcjhTd3dtbW9pcjB5aVhNV1VINU45S2UrQ0YwcHNsTUE4?=
 =?utf-8?B?S2g3RGlXS1FqdUN2cjYzZlpkUTFjem80dzZJb0ZybysrM0lGL05xZ01qOElB?=
 =?utf-8?B?bGE5MFhPTmZhTTdQWDVWeS9VUi9HSGJXSm9WZytTcDIyNGdVUTIvVEdna0tR?=
 =?utf-8?B?SDh1N1NrWEN0My9Xd0RheDhpK1JrNmRXTnhlUm41VWJXakoxRFpXMEgzNUJS?=
 =?utf-8?B?VmpLTTBVR200aUVkMTBXZDNEbS9SSGxVeG1MTFpHdmdvTHpFS0ZCQ09kSjR2?=
 =?utf-8?B?YjVVVHpVdmpvWkdkUENJQk54YUN2UWl4VmlJaHF2RG43OEdDWTlNU3Y5aHg2?=
 =?utf-8?B?dWhhN2EvdC85WmIyWHYvSkQ4ME9kdWZtd0NKWlBPamw2NzQ0Rk5vRlRwNU1C?=
 =?utf-8?B?MFdDdmZRZjdQVk5KbTJOZ3dYUElqck5aMHhOclhlY2RjNmMxSFdGc3NneSs1?=
 =?utf-8?B?eCt2dVVWZldMcHFzRVM2ajNvc29tdklLK0I3SE45bnc3dFVEbFVCWC9nZ2hr?=
 =?utf-8?B?aSt5SEtQRnlJWktuNHZHTXRIL0tRcllKV0Z0UC9SUWRhbmV1dTdQbGZhOCtu?=
 =?utf-8?B?OFhGMHVpd2ZDd2s5OUVsQWtWaUZ0eW1GSWJaOW4wRG52Uys0VUUvUkhsNldU?=
 =?utf-8?B?bUYwbEZTZ09XU3FCUExkS3RERlFsRlRhTnJlTnBHekR1VkJHbUZ2c1V1dS93?=
 =?utf-8?B?MVNkZ25ucVdUalVtbHk1NlA1YlB1U2dxbDdVWHh6RW45THpZY0dkdGtmMU5W?=
 =?utf-8?B?WE5LQlJSY3JyU3Ribmp2Rm11QVoxamFvMmhTWGRHaWNsSW5IclVtVUxtdzVt?=
 =?utf-8?B?Y2ZURnJTSUZYQkhIVVFHTHBFdWdrcng5VnExUnFGdGpWQjAxTU8vS3FUSk44?=
 =?utf-8?B?QkZ4TWhSb2pDOWY0RjlkaG1ZK0tlVDRuSkZIaTFEWVdqcEFTMm1mdEJlVXpO?=
 =?utf-8?B?RWV3WGp2bC9xczRmNmtyYXE4Y2VwRDJhQ0haYk5YTlYwNERLWFFIdTRyR1V2?=
 =?utf-8?B?ek51ZXNOemh6OU1zRGY5bmhBUHl0djQvUmRGUkpmeWJBbnBqY3ErRS9DV28y?=
 =?utf-8?B?MlRma0M4VUFJaUxKOExMdkxCV0ZGNW00czZ0Z2J4dlg3UHFaWHZwZkVjL2tQ?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff37471-0595-4de1-f26c-08ddd6d490e8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2025 23:37:41.1549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xaLpUCBBhue6XxwEctR9mkXXJsvE7gRpNTZ7pAnDxX5Npn2louA6jrGZx8EBQTviOGGY6mo2dzZo15j7DBVHWcwFZjepuUW5i1SAniMF+nQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4738
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754696264; x=1786232264;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=2JEAKX5mBi8xh3z4d4THDb15s0Qy5JA8QYAT6veJcnE=;
 b=WtciyHEb+6LAP3WBcf9zzUwAgPYjC7RTLr0qJQEnjTjZfuNPqXdrXCDw
 1HS9mXWiS7YtFrowofiAGrkqkwjDCFXlviELLBgWbMuT9vxxOu/8Z+9HC
 mODBkobKZZ+dTHR37o57BW5ZpU5QJ1DrZyrTl7PzSkYhnAKImUZLub+Yy
 IZcHsXNfuuN7ismKS9gBUawOngO418dX5AAC5VoxEryagznpZHADY+jUr
 3KSMAGOCkNDR2iRtdSOCTcHTFaO2wK0Qi3sOOA1/TXpffoxokrRsgIYil
 Bw/DuZ89tsduM0ixLx+LDiyS4WKYFFJ7GLUTZclDlC//WQg7xbkVP/aPp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WtciyHEb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/3] ice: convert Rx path
 to Page Pool
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

--------------meDTa0f7icF5ceqI4vAD0bxY
Content-Type: multipart/mixed; boundary="------------mjb0NZkwduwG0M6wgrQ0EaXf";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de,
 anthony.l.nguyen@intel.com
Message-ID: <ebe632af-cd30-4fa5-9c31-51fcc979b300@intel.com>
Subject: Re: [PATCH iwl-next v2 0/3] ice: convert Rx path to Page Pool
References: <20250808155659.1053560-1-michal.kubiak@intel.com>
In-Reply-To: <20250808155659.1053560-1-michal.kubiak@intel.com>

--------------mjb0NZkwduwG0M6wgrQ0EaXf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/8/2025 8:56 AM, Michal Kubiak wrote:
> This series modernizes the Rx path in the ice driver by removing legacy=

> code and switching to the Page Pool API. The changes follow the same
> direction as previously done for the iavf driver, and aim to simplify
> buffer management, improve maintainability, and prepare for future
> infrastructure reuse.
>=20
> An important motivation for this work was addressing reports of poor
> performance in XDP_TX mode when IOMMU is enabled. The legacy Rx model
> incurred significant overhead due to per-frame DMA mapping, which
> limited throughput in virtualized environments. This series eliminates
> those bottlenecks by adopting Page Pool and bi-directional DMA mapping.=

>=20
> The first patch removes the legacy Rx path, which relied on manual skb
> allocation and header copying. This path has become obsolete due to the=

> availability of build_skb() and the increasing complexity of supporting=

> features like XDP and multi-buffer.
>=20
> The second patch drops the page splitting and recycling logic. While
> once used to optimize memory usage, this logic introduced significant
> complexity and hotpath overhead. Removing it simplifies the Rx flow and=

> sets the stage for Page Pool adoption.
>=20
> The final patch switches the driver to use the Page Pool and libeth
> APIs. It also updates the XDP implementation to use libeth_xdp helpers
> and optimizes XDP_TX by avoiding per-frame DMA mapping. This results in=

> a significant performance improvement in virtualized environments with
> IOMMU enabled (over 5x gain in XDP_TX throughput). In other scenarios,
> performance remains on par with the previous implementation.
>=20
> This conversion also aligns with the broader effort to modularize and
> unify XDP support across Intel Ethernet drivers.
>=20
> Tested on various workloads including netperf and XDP modes (PASS, DROP=
,
> TX) with and without IOMMU. No regressions observed.
>=20

Thanks for double checking again against 9K MTU :D

> Last but not least, it is suspected that this series may also help
> mitigate the memory consumption issues recently reported in the driver.=

> For further details, see:
>=20
> https://lore.kernel.org/intel-wired-lan/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfp=
r7dnZxzGMYoE44caRbgw@mail.gmail.com/
>=20

I believe we at least resolved the memory leak already, but if this
patch helps us reduce the amount of memory overhead queues take thats
good too.

> Thanks,
> Michal
>=20
> ---
>=20
> v2:
>  - Fix the traffic hang issue on iperf3 testing while MTU=3D9K is set (=
Jake).
>  - Fix crashes on MTU=3D9K and iperf3 testing (Jake).
>  - Improve the logic in the Rx path after it was integrated with libeth=
 (Jake & Olek).
>  - Remove unused variables and structure members (Jake).
>  - Extract the fix for using a bad allocation counter to a separate pat=
ch targeted to "net"
>    (Paul).
>=20
>=20
> v1: https://lore.kernel.org/intel-wired-lan/20250704161859.871152-1-mic=
hal.kubiak@intel.com/
>=20
> Michal Kubiak (3):
>   ice: remove legacy Rx and construct SKB
>   ice: drop page splitting and recycling
>   ice: switch to Page Pool
>=20
>  drivers/net/ethernet/intel/Kconfig            |   1 +
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +-
>  drivers/net/ethernet/intel/ice/ice_base.c     | 124 ++--
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  22 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |  21 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 645 +++---------------=

>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  41 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   9 -
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   5 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      | 146 +---
>  drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
>  13 files changed, 215 insertions(+), 874 deletions(-)
>=20

Nice to continue seeing significant code size reductions with efforts
like these.

For the series:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>



--------------mjb0NZkwduwG0M6wgrQ0EaXf--

--------------meDTa0f7icF5ceqI4vAD0bxY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaJaKQwUDAAAAAAAKCRBqll0+bw8o6JN6
AP9ag42cI8OK49dKQ1itn1PZM9x8joS/GFX6YMkauPDNpQD/dFK0jDIsv1knPa+02l1N0qDaeNwy
rtE36iWykHgL6Qs=
=AH7y
-----END PGP SIGNATURE-----

--------------meDTa0f7icF5ceqI4vAD0bxY--
