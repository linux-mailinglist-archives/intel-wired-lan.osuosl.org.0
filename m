Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED64C895143
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 13:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F333E4148F;
	Tue,  2 Apr 2024 11:02:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z7KrCH40RlNp; Tue,  2 Apr 2024 11:02:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EDCC41497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712055733;
	bh=tlUUHpsfhIPmkhx/LrATLRSF4Ev3D6bhW8TNfIROXK0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gNl+YHQi21KM04fCrh2fc2tK3YzbxQ/bWd96jf2vW6ZwS+2q1N2irJXTZA2QGgkXY
	 tRS79TdnP8EJQe4YgLjWWxG2RDLbrZArmtLNiYJlGar8kBJiUKe5EcTT4BKo67ovF8
	 eYn8m6sOsOPpVB+J+yiuinAvpiggTiTkQgKNCiG87bonKcR0Gw9iJXmCdLZsLWLP1M
	 5snLO0LSwVTA6dLKb0Ht3U3mf03Hk9y8AvyT4YZO4lf8GGAcMk+oV43J4JOHSr5hq+
	 EedwzBKPkAhPINP+tN2AqyUJJjCeFvGPXXBBVtJsDumTYo9KpQC0pY6CtXyYjhc13J
	 H5NRICewYUEFA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EDCC41497;
	Tue,  2 Apr 2024 11:02:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B81C81BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B09AD4148C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dDr5yLK_X2Hi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 11:02:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C99004146D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C99004146D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C99004146D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:02:09 +0000 (UTC)
X-CSE-ConnectionGUID: qk01u/RhTLm55wxD1Z6dAA==
X-CSE-MsgGUID: 2DhjbgG0SjqSTaJCAOe9RA==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7432274"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7432274"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 04:02:07 -0700
X-CSE-ConnectionGUID: jzUWew9eR/OF+sWMyacwfg==
X-CSE-MsgGUID: E6VCOupIQhinOPjJUh/FwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22688633"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 04:02:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 04:02:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 04:02:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 04:02:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W0G13dSeF5ClyhVNXqpg5zVP5HvF7mjA5XrwHAXAGYvL0qBg9ceHITPvObEHNSdNV3QNyw4+wM4YlGujsgaq1KxKN+rbq4XaHpUobASoQpGnPlp/WAWSaxQRPef6YNVKLqlVSY0ebA2/TKhAqnciCtsNfZdNDCDH5/SI2hPrb/dufp+Qlkv62XK8cEbWoSV9CYFbI0QP/YC/aNkynC4ShFEb/Du9hQzi0S+iJa/K4MqAm6kXA7YUa5GgR7AuoEfvf35K1oGhIaaX7khmJQzhtKG+E0+sFbpRUM+t/n1euNBj2Tkg9xo/ikqXddQq4DitauJSlyLPafO8epC9aMqx7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tlUUHpsfhIPmkhx/LrATLRSF4Ev3D6bhW8TNfIROXK0=;
 b=b1aCnEyQ947+3svgIt/nJIcv6bGMimWxSfuDEGo8U/7DyJPz7ng1TmWmT48lnZHtwB8Gl27Jck1zFUKMRampGfbIJ+K71YqMutjtvCdWDqWST70NUqJ1pbX1JBVMnL15u0tjjXQs80upEMikWRXa+HouecAWsa+2TOPGLtss9Oy2hMXvgva4uBSLl1NRAv2EYRY6f03bG7ncepa3CPFepN3fURIM/o39WZxb/OYwP4LntnS33RX0YMnp0MAK0RjYnbprzVJRm5tkylDR3vfcXTDeJ143iXPHWYUdYshngfGrHFyuB0SwtmanQ1cSZUVDur/36jh6reJxGMc5FazX8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB5970.namprd11.prod.outlook.com (2603:10b6:8:5d::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.25; Tue, 2 Apr 2024 11:02:03 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 11:02:03 +0000
Message-ID: <94f7ec98-4219-46cd-ac6c-8177a0bc37ce@intel.com>
Date: Tue, 2 Apr 2024 13:00:58 +0200
User-Agent: Mozilla Thunderbird
To: Niklas Schnelle <schnelle@linux.ibm.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <c90e7c78-47e9-46d0-a4e5-cb4aca737d11@intel.com>
 <20240207070535.37223e13@kernel.org>
 <4f4f3d68-7978-44c4-a7d3-6446b88a1c8e@intel.com>
 <73c972e5c3889d7e5af24047e6ee8932210b6a63.camel@linux.ibm.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <73c972e5c3889d7e5af24047e6ee8932210b6a63.camel@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0021.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::14) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB5970:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IW0QnOG9h1vbIX+Y8eMKbcmX0SPXVezRQ2P+L0djGwWJAM0IGSuBYbOmPWV033gNAdLD8BLfkgAv+C9g8m0dfunok3HMlFgHz/Aei6CwtwaySyZeMp4FFZeIaq/IrCC1IVkm+CdMAZKu4InodXzrCMwLO5dhOVmWUElurQ8tA1PoSolY4txiLnNea2t3/p/TcZc0KTgrwXDMbm64Henxiu0OLk8PgV1qvE5c62Dfl2FVZ8pWekrZeY9ah51tfMv+fIK7LGQOOC0jR9QoQt3DiSaujiqdX2ZnUh0SIibK5RFPlVNxYyxH6ZF5lJPqvDccTz88Tnd0mKwqN9GNUQ5A2W4QileU8oiWbUfUQw9UGQR/xoR9SF0TTGduC7nfumO6ri1GFbO+dPDexvstoK1xVBzjgqbnxQwORb6/M2s/jhAF11++MvFw6rwQKAoyC7nn7ONYzSClj9hmnv1XPFuTedxypGZ3epzRgoR9AwN/1wuVir5BBy/0PFPFI+uvYZWPzVzSw8kiD/7iUtpC+Rn+M2K38Gq0mHK38fvrUYPMQz6fVXIs1SzcRY9FyOpYd5WeXKrHFWhYQxSHfuyN+JIPkNITBTsYeNu2tbsXb5Zw8SbSwWAZMiHLJHD6pkf0AC6AO/526GSmeL7NTBsa+UJ63GHB72q1Jk0A77KGzFDEjYk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnlPVWUvWkdEait6bWlWSkdMVzYzSXVaUjdObFpQSEhpUmsrWVZRZnZtVnBz?=
 =?utf-8?B?Z09lenhIdmYvd2pjRnhCclhwWEZjeTgzcmtmMmc5VDV3VFV5NmM5dmFMMWRU?=
 =?utf-8?B?dlYyNysvbnZ5ZTZuU0lzVUdTUzdJd0VMcGNZRWdiYzNydEN4d1hRNUZ0c1NC?=
 =?utf-8?B?eVVVZ3JrUENWcHhRcHR3K0ZoMmtVcklrQWxpbTVGTVBzUXJGWllhREtrZFVR?=
 =?utf-8?B?b3huUjNjNTZjUXBaeDVlNzdpZzc0WXZFM0g1SG01VHQ0MXo3Q1p5b2hTTGNJ?=
 =?utf-8?B?SVcwYkpQcVJpK0FXa3BUK05UVjZhRmpwWUtQRGI0NExyMDdQVFNIbDNBbzFw?=
 =?utf-8?B?VUJDYzc0T1VoY2g5R05wTnpRK0F2SjIyaWtzMFlZSTlhSmVIcUpBQjlJYTNz?=
 =?utf-8?B?MEFzdTlvdmQ1M21lSlUyNzJPVXpXaThRYW9ramFRVDE3NXU1RU4rQnZETm9I?=
 =?utf-8?B?TEgrRjI2T0FmMjIzZlluUjMyRTNDWUQ3SHRHWEJTMnQ0WDV4Nnd1anFVUHla?=
 =?utf-8?B?TGRyMXFDVXhLY3dYb2FNNDFkd0JkRVV6aUFRNjk3OENONEllTG5EYi9rVmhC?=
 =?utf-8?B?V2hQYlM5SkMwNTZhSkx1RWhIT0JaZnlMUTZzUnJ2allMaVkxOFNIc1h6bXNo?=
 =?utf-8?B?dGo0eFFxdCtVSXlhSnM1ajhJbk40dTJQSVRWbFpaNU1SeG1YK0JHT2sxaHU1?=
 =?utf-8?B?NVlJUm5nZ1V1NkFGemJoYlNjajg0cnFTeFNmRUdkOGNoVVFBRlExK3FxQTRW?=
 =?utf-8?B?Z1NMMmpwcWt5aENCSjFwWjQ1a3FEdVlsdVFqc2NpQXZoSG8xblpyUjV6T0F1?=
 =?utf-8?B?ZSs4Y2l5OTlXbHZZdER0Q3VpSC9mdklOR2QxMjdwMDh0UWUzUVNaYThXek5G?=
 =?utf-8?B?RjgzRUJJQzI1OHpYK1V4dG5zMTB4eVZ6SkFsNnY5VlZRdVBpdDNGT0g4b1d2?=
 =?utf-8?B?eGNIUElxc05kK1FQeHdPKy83NXg4WkZJVHZXNmhmazVreWRJUXpJeHMxcWpv?=
 =?utf-8?B?RWJaMVYyanorT1BHcUh2UnhOU1RBU2xTMmJHRHBDc1BXN3hua1FvWWYvaUdQ?=
 =?utf-8?B?cmVaeENOUUJqc2g2MlU1blZwMXFzaXMxVGZ0dUtudU92V3R5bU9rMWZqNFFV?=
 =?utf-8?B?SGN4MWNndHh5RVBaZ3dCa2Z0a0wxaG12V3V2NGpOT0FZV0F2bDk1ekNhVVRT?=
 =?utf-8?B?ODREVWUvai9qWDBJYWlia1IxZUNmRmtlWTg5VDU0Y1lodlBDZzV1ZVh3QitT?=
 =?utf-8?B?akRBeFIwalhRZ0xIYWgrOHNjY1N0UGJuNmxKQnYrd0ttMUxadjJLOTdrMVlp?=
 =?utf-8?B?RElzbnFDczNoTDVrK1QwVFdnREQrMWhla3VORUtkYlhvSHZNMUxiT2pvTllr?=
 =?utf-8?B?NHZQRXcwUncza01pWG50Ky9Kdm41T20yNUxVWHBCa3Foak44MWsyNllDNnUr?=
 =?utf-8?B?NzQzRUM2YnYrb0lmWTJ0Sm55UWhzQWV0dXJjMEdvdDlnU2ptYWxUN0JETDhw?=
 =?utf-8?B?S0Jkd2FMeXJlTWRONllCdnA3dENqREpxWlZIRDkwa3NJVlB5QnZ0VmNEZFBn?=
 =?utf-8?B?Yk42QWZLbmoxbm1HeGVXNTE0SHFHSnVncUlRV211cEJKU3MvYlNHN0Y1MjR3?=
 =?utf-8?B?bVhtUkdtNU1xSGVuaDJmWDc0VzNEMXIrMVh4ek4wd0hpcTVZSXYxYXdnMURR?=
 =?utf-8?B?RkJNZ09DWW9zcjZhR3FKK0M3R3phYVFsRDZNNFNtcDNhOVBjcURMVzJjQUhl?=
 =?utf-8?B?enFQZmZCQ3Z3NlErU1E0NTBjeW43ZlZwZGFZRytTUURPVjM2T3d4Qk9KNGVq?=
 =?utf-8?B?YW1NM3ZRMWgrdlprbCtYSTRUMlBEUU5kQW5ZRlpIcmw5bTJjaTNUYnJURmc0?=
 =?utf-8?B?QUpOaG9obko3Z0FLdWNDVjFPSnkrb0FoSTgzbUhJUHNZNE1ONGJONHBxN3RM?=
 =?utf-8?B?QkFyYklja3Jhbks2UE9SM29Vb3NDSERMRmFMTElqQXlWL1BFS1ovRzFXU0t4?=
 =?utf-8?B?UVNvTjRwUHBLeXFPS1AybzF6eWRkOFFOZHVmUStQVFRySjFRaGVHbWNPL3Yr?=
 =?utf-8?B?cFMyZ2ZJblZVRHUreXhpQjVvTVREUWYrenNHUVFaNHE5aGFjSzJ3WWt1YnIy?=
 =?utf-8?B?emp1Q0dadmVTZlIzQ1pHZjk0eFRPNmhXc1pZT05Cb0pTV21wRzZnTnp3b0w3?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1261f33c-39e0-4f5a-1f82-08dc53045404
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 11:02:03.6752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7sc823f/8TkRu8WOHENfnge3qEbUBgqZDA3A7EX3e1j+gfQp04MndNW4lhq14w3tvznFb5ALa8cuo7N0/u8mYtlEElRL/Q7JiG0a+vejDkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5970
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712055729; x=1743591729;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BiIfw+AaHVEwzLCw0RW8QjCfyoqe1LRd31XbXk2jGAI=;
 b=dcvJ/z2GZEHh80/RWDK747oPzX0ZXkuRpYz/YCsTW476Wo02oX+eFIzB
 uLW5WLssYsl5GK7vExeyWlVj3U7OFvEOSewIANAP+lP+RbAn0caNi33km
 eMJpl66LGPrCExTgjiJG9wRjvOcCjyWMD8ay+qx0KtVCN+PvWvx3D+iWU
 VnbknFwB7PCJMYzFpzbwsNg3tj/E8FUA9WY47rdlrZzMCZ9PtDwoQj6W2
 jd3hEki0ohkJTQMJLABE1V6hXKcaZsX2AL5YAsS7E6phVVpassdB+9u6Y
 PPhyERNE/ETxB/0kOptlPl/a8tRV/K1VD/+dpUyV2dmvloh5T6ti6sPXx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dcvJ/z2G
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/21] ice: add PFCP
 filter support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Alexander Potapenko <glider@google.com>, Jiri Pirko <jiri@resnulli.us>,
 linux-s390@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Yury Norov <yury.norov@gmail.com>, Ido Schimmel <idosch@nvidia.com>, Andy
 Shevchenko <andy@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Niklas Schnelle <schnelle@linux.ibm.com>
Date: Tue, 02 Apr 2024 12:59:19 +0200

> On Mon, 2024-02-12 at 12:35 +0100, Alexander Lobakin wrote:
>> From: Jakub Kicinski <kuba@kernel.org>
>> Date: Wed, 7 Feb 2024 07:05:35 -0800
>>
>>> On Tue, 6 Feb 2024 13:46:44 +0100 Alexander Lobakin wrote:
>>>>> Add support for creating PFCP filters in switchdev mode. Add pfcp module
>>>>> that allows to create a PFCP-type netdev. The netdev then can be passed to
>>>>> tc when creating a filter to indicate that PFCP filter should be created.  
>>>>
>>>> I believe folks agreed that bitmap_{read,write}() should stay inline,
>>>> ping then?
>>>
>>> Well, Dave dropped this from PW, again. Can you ping people to give you
>>
>> Why was it dropped? :D
>>
>>> the acks and repost? What's your plan?
>>
>> Ufff, I thought people read their emails...
>>
>> Yury, Konstantin, s390 folks? Could you please give some missing acks? I
>> don't want to ping everyone privately :z
>>
>> Thanks,
>> Olek
>>
> 
> I do see an Acked-by from Peter Oberparleiter for the s390/cio bit, so
> as far as I can tell the s390 part has all Acks necessary, no?

The series was already taken to net-next :D

> 
> Thanks,
> Niklas

Thanks,
Olek
