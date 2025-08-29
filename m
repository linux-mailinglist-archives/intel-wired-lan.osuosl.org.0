Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0406B3C3F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 22:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7BB7617A4;
	Fri, 29 Aug 2025 20:55:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jRKEwZERWTj; Fri, 29 Aug 2025 20:55:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC692617A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756500957;
	bh=J8hE8dktirlxT5md3mSlt3J81oKqKtDMNk7i/jYfVqA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hTr2pgAdr+jUdwiDqtZcC1kJPZgFxLxEFzdweh09XS8Gc4vSTkxGUeKxAMHfBIZkF
	 KM9SCIyILAJh2o6ItrlKBk2AuD4QRQOdKSWnx9EzUQHAoLjjdCMVUzBzSBkYIJKsuB
	 3uwf8Q2IDw6XmVN65X8cOVe9HAeI1ji/KWQcYm6Pb1J3LBj3fwuRtY6L2sS4JnekzX
	 BZvZLghTdlw4JREsoRqiMl37FSo/BcvSnl4JGW3Z2SBKWYIc/9oL6RPrewhA+jSLYy
	 c7aeZmb7pUs4bx+ihXBNnR8dplcejusldy87IEle6qVCRFRcnx7EoZdcTLI66CFhIw
	 T6Tkz3X3/qDDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC692617A7;
	Fri, 29 Aug 2025 20:55:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 092C1D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 20:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE7E861707
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 20:55:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ob3K5Blg6M20 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 20:55:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C066615D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C066615D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C066615D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 20:55:54 +0000 (UTC)
X-CSE-ConnectionGUID: JsKJHiPbRymIvDbO+sso3w==
X-CSE-MsgGUID: dFKcpvkyRUqlXr0Sr3ffzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58719478"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="58719478"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 13:55:53 -0700
X-CSE-ConnectionGUID: 1Ktgu+KGQRyLsatAuns4CQ==
X-CSE-MsgGUID: 0bD5vrppTmyS++qvjfiVqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; 
 d="asc'?scan'208";a="174641765"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 13:55:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 13:55:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 13:55:52 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.84)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 13:55:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wx/wzST+A+QVrntKVO5VLutBTyxdBnr6UMtv78dfSdInvBdPIVd/DsE/XC+GVsMuJSzTx+Pkj8rim9UmKNjBMkKY0OwCmTG4X6v9cMZH1puDKD90SRFXyneqmLoIgupBb82b3abwImutXs2PhxT+BTKAvrnKF80x9XCBVpvyI00bRGZVeqQNk4Up1OZ/jD5gpLoHYHQeRDmu4zkb8oYvwuQCGwJ2K0PbUYk1Ai1zHH2XXXztgGuZ72fnqVdS9Svh66cXHbS/gTpupECVoeLtbt60gtHW/KBMD8MlZ8AtXjODZExrDKmuMp0cX140UgYxA9AqqSlBMrz5reQRJruvTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J8hE8dktirlxT5md3mSlt3J81oKqKtDMNk7i/jYfVqA=;
 b=LI3imIxTbmfwFA3p4sCbeuVJjxeflxmEp9tlZfrVVP1OIyDcakXRr9CdybP2ewPQNIcASAF5i+7oveW0bOkkXfCzD+AjDPX+giyitBr4gzKUuUnOp/2U8Oko7YqVQnPgSpNfMBjgcbfd4HRP+v3CfmoyQ2vhXux+x24Jf9Z+gfc04gV+gXMnn4XwJP2wcAJdANQkxRYYYmRe/TXzi9rLQz+YA7PiL//E0ZZgS6ieVI0YT4cfZjMjso1yxxm2fA1QD/dQw6/sRUMLlfO8jpMekA4pHw7JPxFHtp0GPTN3SKABIIpFTvz5Xd/bvPqH/Pe7LOwhuAQNn+NZdBZeW9uGEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.21; Fri, 29 Aug
 2025 20:55:45 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 20:55:45 +0000
Message-ID: <bebd0334-4d4b-4162-a935-1a2125400cea@intel.com>
Date: Fri, 29 Aug 2025 13:55:43 -0700
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>
CC: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>
References: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
 <CADEbmW2eDnADv78cwWRAVMuq_JrgPACbfTf_Yc_oA-Xiuv+x_w@mail.gmail.com>
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
In-Reply-To: <CADEbmW2eDnADv78cwWRAVMuq_JrgPACbfTf_Yc_oA-Xiuv+x_w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ctf80V8Ppp93OcTPEJ0zB8lF"
X-ClientProxiedBy: MW4P220CA0022.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::27) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB5140:EE_
X-MS-Office365-Filtering-Correlation-Id: edca3649-f3a4-4ed3-d880-08dde73e6c8a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlUyZGphbGVTSy95Z2Zic3ljT2tzM3dOOWVqNUpYcWtOb0lCUENOR2RwYk5v?=
 =?utf-8?B?RHlURW5jRHVsQU54MFJISzhMVHZib1ZFWlFPT1Q2b0tRUXFzdUo3UDJGM3Rt?=
 =?utf-8?B?dWs4NU04V1ZENU9MTklvMEgvUWhrR1A4aXBHUm14dUQyZXhmdEd3eUcrUjR4?=
 =?utf-8?B?d3J5UWdDYWVaT3pVaExyQ2NrY0MwelV0NnZ6eXREY240VTZab1RoOGZ0V0VO?=
 =?utf-8?B?aTlQVUQrRmVhS0NtMGdhMk0rTjVhWENKZURSWnA2a0VHZmxNdEFDVHkwTGwz?=
 =?utf-8?B?U3Ivb1RTbnRQVXZqLzNITEd0R0lEUFJTa3RrL0tUV09MZnJTdzdVQWtMZEFY?=
 =?utf-8?B?R25ZNWdZNTZZaGN6azFETjJFbmk1b2Zpbm5iNFRiNWgrMEhYOTFqTWNzdUQ0?=
 =?utf-8?B?MklvREZyRU1oR0F5YXBCaW0rSEdDSUZhRmJ2cWxYODA0ZWhjUTNTTHJxYUpq?=
 =?utf-8?B?YVFXa1F3ZWpYTlpzNG01TURBczdoUGxRVVBoclJFL2hHWkhSay91alp3TjhW?=
 =?utf-8?B?M0FkQlBFZG0xam0wVW1Vb291NTErdEU4dVc5RmpUb1ZPTzJWdXhMaktraTli?=
 =?utf-8?B?eFhCN0xvQnhOamRONmk3aThZTWlBN1JPeTRXNjNxeHp2L2FlNHVIaTV3VlJm?=
 =?utf-8?B?ZFpqNElkd0JDZ09hdEpqei9JdGtzdUNWZ3dGSWZzdm9MNFFUYlBJMmlvQ3Fn?=
 =?utf-8?B?RTVVc1ZJcmtpV1J4ZEtha1pqM0xVNUlmaTAyKzdNY0x1YVhER3VNNXZFNEZJ?=
 =?utf-8?B?TjlNNWhPSWVjME1DUmxzVVdBWWdKMWx2UWwxQVA2UzNKQ0pkOS85TXZGcVhK?=
 =?utf-8?B?a0lKazFRZkJXTmJ0ZDRqMzRjYU9CUGozN2xhQ0NPQ0gxZlpNNDlyRUZJc1M5?=
 =?utf-8?B?MExzbHd0Nm9VaHVQTk0zYzlqZVRoZzdyYm9jNDBnRlNvV0RVc1Z3TFErSGls?=
 =?utf-8?B?aWFxSWR5czlPNHVYRy9QSG9nTXdaMlNseXRyT2Naam5kajAyWGVRaGtOaU1j?=
 =?utf-8?B?QlpwdXdQSzBHZzNVSUNLVUpwMmtBZkRXRW9nam01emtuZ3AvbkkwVi9Bakx0?=
 =?utf-8?B?QkRrZ1FyeGJwNHdrVW1oSis4WVR4T3VOZzRkOTJzNGU5WC9aU096eEpYK1Mr?=
 =?utf-8?B?dVppS2JoUWF6QWhQYUNjWXY0MlN3TDdubXRCZTcvWVpJTTVKL2Zaa1g3UmVT?=
 =?utf-8?B?SUFEL29kKysvWUFVcUsweFM1K3d5VzJjUjNvQWlmTWRKK3c3a2lxRjlkOVpx?=
 =?utf-8?B?TXkxYWwvb0theExpUDB0b3dtVVRYd1Bta3JyK2cxZ1FmUndoVXFVa0NmTHZW?=
 =?utf-8?B?RTA1VERTZWVRYnlQTnpnT1BNd3FkVFdQdTRjeWZvbXJZZGtCT21oSUZ6SVhL?=
 =?utf-8?B?dTZNbDZOc0cwVEZBd1VFMjc2R3p1alJ6ZlphMDJwVWxKeFNWcll5MjNkWUky?=
 =?utf-8?B?bGNIRURPSTNvS0ZCNldYN3hWUC9oL2trVXpzQjg3MVAyYnQycWFNbWtLWEl4?=
 =?utf-8?B?bmtwN2VWQ3lkV3ZwVVRUZHFBOG5hWnc0Z29zaVNFWGhPUmthTGZSR3haVWxW?=
 =?utf-8?B?S1F6NlNLZXpHYkQxVEgxckxyeVdXTkppQ254V29SODQvMDZjWThzclk1MnNH?=
 =?utf-8?B?SGR2cVRZbklvZEMycElMUi9EaG5ycWNkTzl1MVZBYVdSWGNVa2xmN0VwOFBQ?=
 =?utf-8?B?Tzc1OER3eHB2dDRIQlBHRzJWM3p1eDhzVnJOZTkxUTNSYTMraWhmcXFuRk9a?=
 =?utf-8?B?RHRzdE5DZjVTdWJYSU1JYTNTUVVpWG04OGhnWUNJc0xBY1NSOUE2ZDIyV29B?=
 =?utf-8?B?Mm4xK3JsY3cyMjdPZnZ0c3BmQ1dKUGFwNFZlYVpKbHhibzZIQXpnc0JpMmI2?=
 =?utf-8?Q?L1Ht0fLf7rZUD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2szSWFFdDNSUGU2anM0SDBieUdtbjk0ajExclcyWkpRWEJzWktyMmtGVW03?=
 =?utf-8?B?WVBZV2ZGZXNNTWRDQ2Fjckt5azc1VXNxWUIzV3RWQ0xQeUkxaUo5RVFqakgy?=
 =?utf-8?B?NWYwSHpoaHZtaTRzT1ZIcVo4S2NJcE9tckwwYmZ4cDZ0eURuejI4Ylg2ZW5w?=
 =?utf-8?B?ZytPVm1OZ0lxSDRpczQyNXRSMm00aXRZZDBXdjluZVY0bEJsa1VrZUlRUW9v?=
 =?utf-8?B?NnhOWlRvTDlUU2ZuVmpMdlFPRDkrQ0tIcWJ4YTBrNjRFZkd2eE8vM3R6ZXNn?=
 =?utf-8?B?NG1QK2hJcElHUXhyV2V3ZjNjTEVOZTV2SExSZDBmT1RXMmhNWWxFRlRTOUY5?=
 =?utf-8?B?SUg3MTNOM3dKWTd2YWw2cVpZNVVUUnBoUWoxOVVxb01XWmRNTVZtajgyUW9X?=
 =?utf-8?B?c2pqSU1Vb0wvMzhvS2JpMEFWajlHRENzWVBTRTQxbjdoQSt0MTM2cGs3dUU5?=
 =?utf-8?B?T1dkSkZGek9aN1pBZDJNODdJeVVnVXl1bWF5Q2YzUEZ4NjJuSktyMkV4akNZ?=
 =?utf-8?B?TldVUzhlSkVhMjBSRStzR1VITHZoOFVCdkpIR3NFUjRJSjZnTDdJczBEZ1k4?=
 =?utf-8?B?dCt4L1h0NDlpd1I5TzJ3T3FNSXZEbG5GVXQyeElxOEU5R2I0bEZLaEF6ZDRU?=
 =?utf-8?B?TkFPeDBicWMzYllsaDFyTi9oWXdqRDB2QnZxUGFyek5OTFhYQmtSc2dEMy8v?=
 =?utf-8?B?a01MckxOTDZtNlk5c1Npd25kNkNiTGtCVjFKM1hSQVdINlBTSFNCY3BYL0lP?=
 =?utf-8?B?aUt1OXZpWlA0TGsxNHc4MEh1TlpnODU2WDJwT1VqZkppc0t3djlNa1haNFQw?=
 =?utf-8?B?ay9DMUNWdEJuQXpmMTlwb0tIUUlkcU9mbFpiSnFoVm9VazJkR3N0TWNmMWNF?=
 =?utf-8?B?RWRkZlJXMXZuVk04aTMzVmFrZ3NueXMrMzJQYWt1V1pXaUlBcFZVZUxWMDBh?=
 =?utf-8?B?NGhZTWJCMVpXalhoNm1Qcy9JcWZFaW5kYlFlaDRVYVpCdVhuMHYrTlQ3VWFB?=
 =?utf-8?B?U3BBNFgxQ0xOVkJFNW9qSm1iUkxqOWMwTFNmYjB2WSt3dCt4T2xzOTEyUHpa?=
 =?utf-8?B?WWNIaEVoeUVmWkZubzM3RTUrRzY2WFBIemZEZkRoSE1PZDVWVUd5dld2WGlO?=
 =?utf-8?B?Y3ZpRDNjM1FCVlB4cW82UEJrcHBna0ZYRFZIa1J2Vks0NkRia2pEanZPbHFo?=
 =?utf-8?B?N25VUHZBNlljSzBIZzAzQkVNSThRVHdCS0xPQmFRU1JqTXBsOGJCT3JIRmEw?=
 =?utf-8?B?c0VXUWsvQktJYi9mMXZBQWl5a21xc2Q2bWJKRjNqdzFERXB3cVRrYnFXSGZ5?=
 =?utf-8?B?ZFJYWU1ZTUVqckc3Rmlqd2k0ZFhMcW1WVnVteTg1NGk0OGhUQkFqL1BQblhO?=
 =?utf-8?B?T1hUM212VFhrTGJ3VVFRZ2M2aXl0a2poNDVuR2ZRQWpUY0VBQnRXekMrdndT?=
 =?utf-8?B?aCtWQ09QZDZ3Yk92U1NGL2xTSU1qQzI5eUhUYjdYVDdkWHZsdVJ0R1dvYzlO?=
 =?utf-8?B?WUhxRjZRWkpOY3g5R3RVQTFqdk11Zm5RMEdyeWRKZTkrOUduQVp3ZllvK2N2?=
 =?utf-8?B?OHVxeU1MdnJUanB2OUd1amJTblV0NjNJRjRFbk51Z0pPQXg2bStkUisrR2xw?=
 =?utf-8?B?NDFBa2RrZHV6aXBuQ1pud0hwSkMvQWh6cGpacUtsbkh4Vzk4bVh0MmtoK3ll?=
 =?utf-8?B?MGVIL3BsYWJ6Yk93OUtJSnlGa055TDdiVXppUGJISnRZVzl5cFo5bnp6V2hI?=
 =?utf-8?B?blRxTTROVmpXVXN1YzBkMTZjU2daa1Y3YUMyM3NZbmMwM2hNV0ZacVVnaUk2?=
 =?utf-8?B?QzJhdE9UcFg4c0lrZmEwNm1CYjBPR1NhL00yazJnTzBZajRha0p5QUJxNDhw?=
 =?utf-8?B?eTNuUmY2Z2greUlHbFk5T2U1ZTJpYlAxdWpNRkdPeGt5Um1CaEx2M01hb0hL?=
 =?utf-8?B?bzVmeW5UcGxEUWtRSzJzdjM0SWtlUnV4MjlHUEZKUms4NEkyMUowcXU3RUoy?=
 =?utf-8?B?MnA5c0o3WVFRNGJsV3RLWGRGVFBzTkxGVUJOeVAwWnZ2R3kvZlhrMHM3bTJm?=
 =?utf-8?B?aGoraDNaWTdkYmViYzRNVEpoOEZPbDVsc2ROc1c4NFhzWW9tcXUrZW9KMDEx?=
 =?utf-8?B?cDh5VzVMdXhMUW12ZWdMenIzU1M3NVV1VzhxWGlVZDh5VWN1cEMvemlsdE5v?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edca3649-f3a4-4ed3-d880-08dde73e6c8a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2025 20:55:45.4480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qf7IRw3YAvLfd4eRT0aD54+HuB5h+p1M8XTUfqp+GTEM6tOtx/XPahjft7Ijldic8UzdIjjGFFRZLasWKtVgflmQ95/VOPH55ZjvfnfBFp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5140
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756500954; x=1788036954;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=lq6U0V13cPdZe4YLvQtqiUbDTO3ZK4Qt3BbrFsLD+2A=;
 b=Dzu2z6VjLRtHGvARMwRKR0D0tnAyrHE15+yYv5q2Mtc0K3+jPwgXeFlF
 y9jBVqiN4lK+etvFvJB9899hYXF5Jqvc2Tc01ixUBS/r9oxrEyZDEkkqZ
 LQHw5fdT9K/HU0b94tRhy3Y5cLaIptn3pEE+xeHuLF6UrE6aaVc0x/2pW
 MIUQYDey9qkb1blqmYlNC1LL+1Kq6mQ7a2c2OvwACPyceueOF/6mrXSBj
 wrAoQtCoSAJabbOJlzfnOo9hGu73hUrVecF2CuBSSy+/Ie3D8h+j8z8Hf
 OfMXBLMaqe0/8pPxkNnVEeKiDhKJPNndh3gbSLfnzfihjg3wdcuV9NXvU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Dzu2z6Vj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
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

--------------ctf80V8Ppp93OcTPEJ0zB8lF
Content-Type: multipart/mixed; boundary="------------RDOiLLe0EyrwNSUErxgxsyNX";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org
Message-ID: <bebd0334-4d4b-4162-a935-1a2125400cea@intel.com>
Subject: Re: [PATCH iwl-net v3] i40e: fix Jumbo Frame support after iPXE boot
References: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
 <CADEbmW2eDnADv78cwWRAVMuq_JrgPACbfTf_Yc_oA-Xiuv+x_w@mail.gmail.com>
In-Reply-To: <CADEbmW2eDnADv78cwWRAVMuq_JrgPACbfTf_Yc_oA-Xiuv+x_w@mail.gmail.com>

--------------RDOiLLe0EyrwNSUErxgxsyNX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/29/2025 6:50 AM, Michal Schmidt wrote:
> On Wed, Aug 27, 2025 at 11:18=E2=80=AFPM Jacob Keller <jacob.e.keller@i=
ntel.com> wrote:
>> The i40e hardware has multiple hardware settings which define the Maxi=
mum
>> Frame Size (MFS) of the physical port. The firmware has an AdminQ comm=
and
>> (0x0603) to configure the MFS, but the i40e Linux driver never issues =
this
>> command.
>>
>> In most cases this is no problem, as the NVM default value has the dev=
ice
>> configured for its maximum value of 9728. Unfortunately, recent versio=
ns of
>> the iPXE intelxl driver now issue the 0x0603 Set Mac Config command,
>> modifying the MFS and reducing it from its default value of 9728.
>>
>> This occurred as part of iPXE commit 6871a7de705b ("[intelxl] Use admi=
n
>> queue to set port MAC address and maximum frame size"), a prerequisite=

>> change for supporting the E800 series hardware in iPXE. Both the E700 =
and
>> E800 firmware support the AdminQ command, and the iPXE code shares muc=
h of
>> the logic between the two device drivers.
>>
>> The ice E800 Linux driver already issues the 0x0603 Set Mac Config com=
mand
>> early during probe, and is thus unaffected by the iPXE change.
>>
>> Since commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set"), =
the
>> i40e driver does check the I40E_PRTGL_SAH register, but it only logs a=

>> warning message if its value is below the 9728 default. This register =
also
>> only covers received packets and not transmitted packets. A warning ca=
n
>> inform system administrators, but does not correct the issue. No
>> interactions from userspace cause the driver to write to PRTGL_SAH or =
issue
>> the 0x0603 AdminQ command. Only a GLOBR reset will restore the value t=
o its
>> default value. There is no obvious method to trigger a GLOBR reset fro=
m
>> user space.
>>
>> To fix this, introduce the i40e_aq_set_mac_config() function, similar =
to
>> the one from the ice driver. Call this during early probe to ensure th=
at
>> the device configuration matches driver expectation. Unlike E800, the =
E700
>> firmware also has a bit to control whether the MAC should append CRC d=
ata.
>> It is on by default, but setting a 0 to this bit would disable CRC. Th=
e
>> i40e implementation must set this bit to ensure CRC will be appended b=
y the
>> MAC.
>>
>> In addition to the AQ command, instead of just checking the I40E_PRTGL=
_SAH
>> register, update its value to the 9728 default and write it back. This=

>> ensures that the hardware is in the expected state, regardless of whet=
her
>> the iPXE (or any other early boot driver) has modified this state.
>>
>> This is a better user experience, as we now fix the issues with larger=
 MTU
>> instead of merely warning. It also aligns with the way the ice E800 se=
ries
>> driver works.
>>
>> A final note: The Fixes tag provided here is not strictly accurate. Th=
e
>> issue occurs as a result of an external entity (the iPXE intelxl drive=
r),
>> and this is not a regression specifically caused by the mentioned chan=
ge.
>> However, I believe the original change to just warn about PRTGL_SAH be=
ing
>> too low was an insufficient fix.
>>
>> Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
>> Link: https://github.com/ipxe/ipxe/commit/6871a7de705b6f6a4046f0d19da9=
bcd689c3bc8e
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>> Changes in v3:
>> - Don't disable CRC. Otherwise, Tx traffic will not be accepted
>>   appropriately.
>> - Link to v2: https://lore.kernel.org/r/20250815-jk-fix-i40e-ice-pxe-9=
k-mtu-v2-1-ce857cdc6488@intel.com
>>
>> Changes in v2:
>> - Rewrite commit message with feedback from Paul Menzel.
>> - Add missing initialization of cmd via libie_aq_raw().
>> - Fix the Kdoc comment for i40e_aq_set_mac_config().
>> - Move clarification of the Fixes tag to the commit message.
>> - Link to v1: https://lore.kernel.org/r/20250814-jk-fix-i40e-ice-pxe-9=
k-mtu-v1-1-c3926287fb78@intel.com
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h |  1 +
>>  drivers/net/ethernet/intel/i40e/i40e_prototype.h  |  2 ++
>>  drivers/net/ethernet/intel/i40e/i40e_common.c     | 34 ++++++++++++++=
+++++++++
>>  drivers/net/ethernet/intel/i40e/i40e_main.c       | 17 ++++++++----
>>  4 files changed, 48 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drive=
rs/net/ethernet/intel/i40e/i40e_adminq_cmd.h
>> index 76d872b91a38..cc02a85ad42b 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
>> @@ -1561,6 +1561,7 @@ I40E_CHECK_CMD_LENGTH(i40e_aq_set_phy_config);
>>  struct i40e_aq_set_mac_config {
>>         __le16  max_frame_size;
>>         u8      params;
>> +#define I40E_AQ_SET_MAC_CONFIG_CRC_EN  BIT(2)
>>         u8      tx_timer_priority; /* bitmap */
>>         __le16  tx_timer_value;
>>         __le16  fc_refresh_threshold;
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/driver=
s/net/ethernet/intel/i40e/i40e_prototype.h
>> index aef5de53ce3b..26bb7bffe361 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
>> @@ -98,6 +98,8 @@ int i40e_aq_set_mac_loopback(struct i40e_hw *hw,
>>                              struct i40e_asq_cmd_details *cmd_details)=
;
>>  int i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
>>                              struct i40e_asq_cmd_details *cmd_details)=
;
>> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
>> +                          struct i40e_asq_cmd_details *cmd_details);
>>  int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
>>                            struct i40e_asq_cmd_details *cmd_details);
>>  int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/n=
et/ethernet/intel/i40e/i40e_common.c
>> index 270e7e8cf9cf..59f5c1e810eb 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
>> @@ -1189,6 +1189,40 @@ int i40e_set_fc(struct i40e_hw *hw, u8 *aq_fail=
ures,
>>         return status;
>>  }
>>
>> +/**
>> + * i40e_aq_set_mac_config - Configure MAC settings
>> + * @hw: pointer to the hw struct
>> + * @max_frame_size: Maximum Frame Size to be supported by the port
>> + * @cmd_details: pointer to command details structure or NULL
>> + *
>> + * Set MAC configuration (0x0603). Note that max_frame_size must be g=
reater
>> + * than zero.
>> + *
>> + * Return: 0 on success, or a negative error code on failure.
>> + */
>> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
>> +                          struct i40e_asq_cmd_details *cmd_details)
>> +{
>> +       struct i40e_aq_set_mac_config *cmd;
>> +       struct libie_aq_desc desc;
>> +
>> +       cmd =3D libie_aq_raw(&desc);
>> +
>> +       if (max_frame_size =3D=3D 0)
>> +               return -EINVAL;
>> +
>> +       i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_mac_=
config);
>> +
>> +       cmd->max_frame_size =3D cpu_to_le16(max_frame_size);
>> +       cmd->params =3D I40E_AQ_SET_MAC_CONFIG_CRC_EN;
>> +
>> +#define I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD    0x7FFF
>> +       cmd->fc_refresh_threshold =3D
>> +               cpu_to_le16(I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOL=
D);
>> +
>> +       return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);=

>> +}
>> +
>>  /**
>>   * i40e_aq_clear_pxe_mode
>>   * @hw: pointer to the hw struct
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net=
/ethernet/intel/i40e/i40e_main.c
>> index b83f823e4917..4796fdd0b966 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -16045,13 +16045,18 @@ static int i40e_probe(struct pci_dev *pdev, =
const struct pci_device_id *ent)
>>                 dev_dbg(&pf->pdev->dev, "get supported phy types ret =3D=
  %pe last_status =3D  %s\n",
>>                         ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_=
status));
>>
>> -       /* make sure the MFS hasn't been set lower than the default */=

>>  #define MAX_FRAME_SIZE_DEFAULT 0x2600
>> -       val =3D FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
>> -                       rd32(&pf->hw, I40E_PRTGL_SAH));
>> -       if (val < MAX_FRAME_SIZE_DEFAULT)
>> -               dev_warn(&pdev->dev, "MFS for port %x (%d) has been se=
t below the default (%d)\n",
>> -                        pf->hw.port, val, MAX_FRAME_SIZE_DEFAULT);
>> +
>> +       err =3D i40e_aq_set_mac_config(hw, MAX_FRAME_SIZE_DEFAULT, NUL=
L);
>> +       if (err) {
>> +               dev_warn(&pdev->dev, "set mac config ret =3D  %pe last=
_status =3D  %s\n",
>=20
> Just a nit:
> There are double spaces here after the '=3D' signs for no good reason.
> It's not just in this message. There are a few more like that in this f=
ile.
>=20

I'd hazard a guess that I copied one of those lines and thats how I
ended up with the extra spaces.

>> +                        ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last=
_status));
>> +       }
>> +
>> +       /* Make sure the MFS is set to the expected value */
>> +       val =3D rd32(hw, I40E_PRTGL_SAH);
>> +       FIELD_MODIFY(I40E_PRTGL_SAH_MFS_MASK, &val, MAX_FRAME_SIZE_DEF=
AULT);
>> +       wr32(hw, I40E_PRTGL_SAH, val);
>>
>>         /* Add a filter to drop all Flow control frames from any VSI f=
rom being
>>          * transmitted. By doing so we stop a malicious VF from sendin=
g out
>>
>> ---
>> base-commit: ceb9515524046252c522b16f38881e8837ec0d91
>> change-id: 20250813-jk-fix-i40e-ice-pxe-9k-mtu-2b6d03621cd9
>>
>> Best regards,
>> --
>> Jacob Keller <jacob.e.keller@intel.com>
>=20
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
>=20


--------------RDOiLLe0EyrwNSUErxgxsyNX--

--------------ctf80V8Ppp93OcTPEJ0zB8lF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLITzwUDAAAAAAAKCRBqll0+bw8o6KLW
AP9dMMBw/C0tAqQxE1KFaTLL8ZnVsvByXnd5NU+ETysj+wEAv7oYWSJ5fgjg11nLlkWblyeDiEih
M6pWTTmnNofLsQI=
=OmWl
-----END PGP SIGNATURE-----

--------------ctf80V8Ppp93OcTPEJ0zB8lF--
