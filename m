Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB133BAAABF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 23:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74A7C60D78;
	Mon, 29 Sep 2025 21:54:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4dLgOgsfRxQ1; Mon, 29 Sep 2025 21:54:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FB6160D7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759182844;
	bh=K1VOPjvJeqco8eTziaXq58kFjkXZpaRotHnUX/Oh/Ys=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yTy/ClNp8CUJEx0pWu1zdHycWmEShmmX53+miwltdbHdXjMkEPaF60NnyCCRebxTm
	 qhDYa/xq7IIFqyKN49pDNTbHKl8JdHGrIaEiJWr90a9QfYAvPJh9pdX3INbtia+DoH
	 OHbYFmeA74TeKw5XOFerOdfN7uTE85YJhEHdKeeWfY5ZDcA+SxjBehhaK3TcS3GX4B
	 Qg2AjB3Pqe1GgBL4+0Lywl8Y78qv7cvI/ipCcOTe+6glRK+G8b/VHMqdlOXKRT0vtb
	 /PEWs/NaBrr/+7x9XluIpu3Pvak4Q/y+jIpy45fgwVYA9W0HIwHpbEMd3Pz7wO8Vee
	 UBnuCXwjXAdow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FB6160D7A;
	Mon, 29 Sep 2025 21:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75DB812D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 21:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67AAA60D70
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 21:54:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZejKilebvQZF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 21:54:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6DDE660D73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DDE660D73
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DDE660D73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 21:54:00 +0000 (UTC)
X-CSE-ConnectionGUID: 6hqdJqALTpGuzuNUFJAMUw==
X-CSE-MsgGUID: Kszw8IQvRjm78yO6px36Xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="84047243"
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; 
 d="asc'?scan'208";a="84047243"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 14:54:00 -0700
X-CSE-ConnectionGUID: 36qls6cHR+KKWNVfYOEf+A==
X-CSE-MsgGUID: PTw/rPh7QBW/2X2pb5jSog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; 
 d="asc'?scan'208";a="182624251"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 14:54:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 14:53:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 14:53:58 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.18) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 14:53:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nqGhagvCdMU/4N188Xv2DxZT2ttO2TlINjdJJwZauIvRRL1yg7imojJKMBlN3D3dt5VQ39XzyFROignEEZf85gxKGxvmlksfuODrZ7bdyEAQSNtY4gfks2F0DySM7ut8e213/a9BCPWFg++ftQtouOXi90zH9CYR3zTeJRqLW1o1I10wTbkV+gja2qFrvTSHEyjZOLWNJjvqAd1e9vrhoNVJuKI/8hPNK0+L65UmC14AMsm1Uc1VNyBkSL2N0BdA4oP+vGtVQEt1VBlUU32smPYTdMj8K3frQAgxUSS6sAE6sUAwCSsLKBxqHrP81+oWmJrUMyfP7yT0afk2BAHCbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K1VOPjvJeqco8eTziaXq58kFjkXZpaRotHnUX/Oh/Ys=;
 b=YzL5OAOJfD9lXFdh621xl+1mWZRqfd1apc9gxM1EUuiHaMFe/m6PNaaNutXQbRlzTdKdvs8UYrbSnfRi6IFg3L6rOm9TnTFQBXlaTQaKpUdqZw15njvL6s1JeKKET7Ftj2Qf4TEgfP8AyEfAIyWF7n+7/qYCOK5AXJDvxSwc4ak8Rv1PcpOBvHKs8JdPheZRcCsr6XmkDYsy1oReEe8Bn9NzrNEw/G/R212ir/kivbKJQdFjAt0Ejuct5jTujXRrBjlb9KDDup5WmnebIbPmY8i4LjSsdownNdIMtOcewEMvmfe8pkCxREuNxHKJbtswGvm/W/2YLaBQwyyoUCBBjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4626.namprd11.prod.outlook.com (2603:10b6:5:2a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Mon, 29 Sep
 2025 21:53:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9160.015; Mon, 29 Sep 2025
 21:53:55 +0000
Message-ID: <9a24d3d4-e8ca-4b50-9ba3-47009e00a3cc@intel.com>
Date: Mon, 29 Sep 2025 14:53:53 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Alok Tiwari <alok.a.tiwari@oracle.com>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <pabeni@redhat.com>, <netdev@vger.kernel.org>, <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
 <20250929115931.1d01a48b@kernel.org>
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
In-Reply-To: <20250929115931.1d01a48b@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------u03d4Pz9Bu03VIuG0UtMJ0tP"
X-ClientProxiedBy: MW4PR03CA0040.namprd03.prod.outlook.com
 (2603:10b6:303:8e::15) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4626:EE_
X-MS-Office365-Filtering-Correlation-Id: d5df41b8-a01c-4de2-9a3d-08ddffa2afd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RGJReTBMMk9DK2JSclU1aENGMTZjT2pYT2xGRmlCOGpCQkhxZ3d2c3Z3VUZv?=
 =?utf-8?B?VHFrR3B5VzFrcG9jZmFLMnBCOWZsSGdDVXBLRmpvYnZsUFpiNUQ5MWpaL0dM?=
 =?utf-8?B?UUhmem9DcDlBNUhvcjV1ZEpLMkh4YWMxUHFWSzNxc211VURFN0MzSStDcVhu?=
 =?utf-8?B?N05iOEdFWGFleDlkOEZqc1VIVkI4TjV2aWZJQUJSQy9SRmp0WVA2UmhibE1n?=
 =?utf-8?B?Tk5TQUZFVXlTVmd0L3dkT0YwdDdlcStPTCtNTkQ0TE5MZDlsV3NwUGJJcVcy?=
 =?utf-8?B?VElucEUwTzZnNTdoREJQdUVXWnhKMTlkU21UV1hlOG45Nm85OXdod1RxdUlG?=
 =?utf-8?B?bVU1dXU4SW92SjhZZGpzbU05aE5NV0gvenk3UmpobG53K1JXRmVaczFST3VU?=
 =?utf-8?B?WlBZUG1EWkcydXNidUkzYWNyZnNiczhyTEQyMHB3bHAyWXpGekxnNFNqaVJx?=
 =?utf-8?B?WkhMdXNUMzlMaFJBTWR2NjlYdHlBUytMUmMvcjRhQzBEYWltTlZiaHdIb0pR?=
 =?utf-8?B?TjRYV09DMkFsTFBVNjRLTGp3dDh1ZkxKMW0yMURCZDVlbkRodDdza1V5dk9G?=
 =?utf-8?B?Wlg5MlNEMHJDb0Rtc2VmL1ZkcDEzdFN0eEJRNmJ0a2tVOUhMVWhISGNhZlFw?=
 =?utf-8?B?RTQvUTJ2a25PdGo2OFA2TEQ1UWxqTjFRNjhRdm9QM01KVzBEaURhWTFQOS93?=
 =?utf-8?B?MkFJYkpNU0hob2tLc0xMaUNtM2x5LzNlc0pGYUUzcSs0S3d2S0JKVU5XVHd1?=
 =?utf-8?B?SVFFYVZSQ2FlVHJjK001QU9kaWM0U1BBNURleDJFcFZGYkpteUNvZFNRb0J2?=
 =?utf-8?B?WGdzdWNxTFZqU21pZHlrandiU0ROL2RPRUdRNHRYRCtnRnpKT3VnNWg5VnpX?=
 =?utf-8?B?d01ERkNEN1U0TzFPQjZUaklkNEVWTEdqV2xwejBPZk9JaVpjcnVhMk5ZSDZH?=
 =?utf-8?B?bzdCd3YrNUlUcTkyWUxlL056TkJoeEhaanpqYkhYVzA3NjhFZmxIVWczZzFX?=
 =?utf-8?B?VVZVTEdXc0FpdVRmenUxOEtSTjhzMGx4YWNjNEFqUVFYRkczWU1VZmJwNlFq?=
 =?utf-8?B?ODNTOTNPbjNFaVNiczM2OGJBUzREVitYZFlodncydVkrK0pCelk5R0ovcGZK?=
 =?utf-8?B?Mlp6Y2Nia0ROUUM4VWh4MnhhWFFpR0MzZTNMb09sNCsxUE5USU1ydGZmdVJi?=
 =?utf-8?B?WlBJejNuTkVrSHVxZ0h0RVNNcXZ5akNpR21Zc1NxUE1IbHVFVWFPWUcwSkNZ?=
 =?utf-8?B?aHR3TnVTdjREZDRFMkMyTmptNk5GQm1LTkp2clZJNEdteldjQ2NIWkdEdlhy?=
 =?utf-8?B?MkZHdGZjMDV1MSthQ3JERkU2bmxXQk1EdVkwMGpYelkzd0JUZ1lNWWJhMGZq?=
 =?utf-8?B?aTZqRC81MDd2TVNBbTV0UlVSZzcrRzFKa3NkUSttUVBIVTh0eHI3STQ1VHpx?=
 =?utf-8?B?blltVEFQT0d0VEZucWw4eFBVcEpZWVhGUWxTL3gzQWJ0UnF6UmV1ZWY3VmYz?=
 =?utf-8?B?MWs3MStweit4ajZlckkrNWM4MTZjbDN2cFNtVHFVT1VTSGJsQ2R1YmY1YmNl?=
 =?utf-8?B?bVNnaTdJeEtyaWVDT0Q5Y1NyVkw4MHlnMjFZRk5WenMwUjNBaWV0blhhMG14?=
 =?utf-8?B?N05PSEtjeXFMZm1GVWhwcE9NcnRjL0dzdTcyc01zWDY0UTNqSXRMSEFZOHdZ?=
 =?utf-8?B?S0pPNVNweDRHVzQvVlRabWZ2MlpmVnZ2RzhQa3FkMXhMODdpQzZNaFY5cC9S?=
 =?utf-8?B?RVUzdWVJQ1FhVXVDT252NExGdWVsV0ExcGVEN1lXRDByMTYrL0t3WWF4L0tI?=
 =?utf-8?B?N1hwYmNnMEhFbWM0bm9PdnRya3FxM0hnekQvZDk4aWhJQUY0V29UR2Q4Nllk?=
 =?utf-8?B?K21hU1NoQXlnbklXTTcwQzRCTFA4K05kVit1Y2txQzN0c3BsNE5WU2RFMWpz?=
 =?utf-8?Q?SZ8VbDJ9W6tAmfaB0BPDreBrA6So1mPC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1BlbmVIeHUyWis3bTJNL3lXaEQrUk9lZTdxMU1GcHlmbGRjZnFaYjV0SVJB?=
 =?utf-8?B?QmZvK3RYYytYSmNlQ0Q3TncrUHpCNnBCYkFMdEtYc3NqeDMvZUdNR25GdldF?=
 =?utf-8?B?NHFCMzEydEdUQzBlSVBSdkUyc1B1SjBSWmpmeVVTdU1FUEl6V3hGYmJkZENR?=
 =?utf-8?B?ZEUwdFlSV3ZkSENxQjllK2NESW1hTmVUUTNrZkJWNFdVZml1SGQ3U05kMW5G?=
 =?utf-8?B?MTh4elQ3ZE8vZElvK010NjRoVEZhdHc4OUZMUUJIckRvV3lQZGlzb0JEOEha?=
 =?utf-8?B?WnFRb0JZY0EwQXlPVmZJcnF6eHRWejlhdWFWTWxXY2dnK242cEIzUWd1VXNv?=
 =?utf-8?B?eUJESUIzblZUMkYxdU1qc1JwOVBSS0ZKdHozaDJOWHAvVHdGVU51QlQxYW9E?=
 =?utf-8?B?SnVkSktEdldsT3Nzb2h2MkFxZVMrZTNCOVBsek4yZ0NNSlh6UUxnelRlOXpN?=
 =?utf-8?B?TldXTUlTendnRHpGTjJ1YTBWNXRDdlY5RlpTR2d3ZGFwZjYwdmZrUmhUZVYr?=
 =?utf-8?B?UjYySzRPZFZpaEk3ZzNWclhxbzNhRkJLRk9rSWxsM2FlaUp2Z0ZnUWdRRUFR?=
 =?utf-8?B?NGdOK1lleDc4THdDc24xcklNY0xsaWVxaVZPeHBKTlRUWXlnVitEL1IwTWti?=
 =?utf-8?B?b0ptWHJGQWxDbGM3c0hnMVRKZ1FTZmhEbHpJMXN6QlUrdnJ0enhNdXJmMjVs?=
 =?utf-8?B?Wm52VXJMcGVDamp1aTNLQU1yMERZOFFyNXpsNXFyTys3RytwNkU5VDdTblRk?=
 =?utf-8?B?ODVwK1JnckJmVTNGMWJGcU5FUUVCT3AxVko2RUQ1T1BxY0VpejF2OGhzMWtC?=
 =?utf-8?B?bGZIcXBXaVNsaGpkemlBejRoalA1UmNHRHBzeFRXOVk0MFU2YzV3blQvS2Zr?=
 =?utf-8?B?S2FkUGpGVzdtTUZrSTVvRmNOOTl1cyswcEkvMXlEbWVnQ0xIRG9tZWg5Z0d0?=
 =?utf-8?B?N3lOK1BjTm44bXdBVFRPeW5Ma0h4enk3UnZveGdBQnJ3Unp1VW5MelRneEtP?=
 =?utf-8?B?MFNZbDFkZDhmVTFrUEhsUjJBUldMMHpqUmZOQ3ppb29SZGpkZ291QnBXTGlB?=
 =?utf-8?B?N01iRUdlYjF4YUFLclhyYmttY0VVRk95VEw1SUI1Y2oxbWF3N0thRy84aFo0?=
 =?utf-8?B?ZVlJM2VkdXlvTU4vR2w4YlZ4MGxpNEFKald1TU1QVTlXS0JMS29DS3BBcDBC?=
 =?utf-8?B?M1ZBSXJEeFlRS3Q3c2F1cjRNQUd0ZGJOclF3STlnYlV2TEVXWWMwMWRrdzI2?=
 =?utf-8?B?SWdZVnlDN3U3aHcvY1VuKzNzZmIzNG1EcWVUSWM1UFF0a29ydEQrMVRVM1A0?=
 =?utf-8?B?ZDNpOXlVV1lRdzQ4TUZIaHJneG4rZ1lTWSs4Ym9CUmRWbE1yQ0lja3k4c2dt?=
 =?utf-8?B?eGhGSVFQQkUwaVIrN2tBQkhxNm9sT2xMTVhuT21UdUgrclhjMnM5Y2ViK205?=
 =?utf-8?B?QkIzSEZNY05KYWtIUlQ4LzRDLzZpNlp4eTVqUmxtdnB4dHdKWHJRSXNFSzBq?=
 =?utf-8?B?LytzSmU3bG9hM2ZDUFE3VUtyK2ZWWG1BQkRrT3pUMnk1Tks1OUFSMzVXelVI?=
 =?utf-8?B?Nm9mUlo1and2d0QrZ1NWeFM2anp0ZkJaMEZrRmNUQ1ZaeUgvM0dFQlIrNjFx?=
 =?utf-8?B?S2RRQzVpRzJ5V0xUT0ZCRFJ5bkcvV1JrQXMvU09jVHZsTHlBc0tNcmFXU29B?=
 =?utf-8?B?bTBBTUtsUU5YSTFndnY5VXc0dkROdGhRdlZSYlNQRkgyNVhwdHFFa3A1WG8x?=
 =?utf-8?B?c2JMRnU1d2ZaVXJrTWJ5S0xuZHZjeXY1NVdtZUZJdEVLRThQdlFVSHJDTTZr?=
 =?utf-8?B?dEg2dEtNRXRBVTBiYzBvU3RGQzdUckdkeVdyVUh1Wit4eVZJYWZzbkhYNEJE?=
 =?utf-8?B?a2JKeVNrUC9yVXg1cGtqNmhpd0V3RWRGQkFKUXJVZzVCQXlRMnF3Y0pROW5a?=
 =?utf-8?B?Syt4WVhWZHpTcC9ndkg5RURiZEMvMXVTamVyMFJYck5NeUpRTFVaK0x6WHp2?=
 =?utf-8?B?M3pDcXNHRE1NYWxad2RDTjczSlhJQ2FPdkRGclhSbjUyS0dZdDBNU3crQ1ND?=
 =?utf-8?B?M2pEZjRDL3dOVnA0b0xydlZ6dzdWK3ZGbEVTRnM1YllJaFE0dFZCSlNXditr?=
 =?utf-8?B?bWdIK3YzMlJmNWczcnJiOW1uTWttTnh2ZXJSM2I1dXFrMFVYQ0drSFBjUXdI?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5df41b8-a01c-4de2-9a3d-08ddffa2afd7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 21:53:55.8092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7D9HukBeUpWtcnkFBMxTWDeZaZALWhCSjW4JL2w6pQVmYAzawredGLVO5lqyZM8EFDXuhyv+ridHLHXQ3BQkXnaZyCI8AegjlwakriOOVNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4626
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759182842; x=1790718842;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=n0AkI/fPtZyDgnH+eILQ8CDVZnoWz3vGLrk2ppZc3Qk=;
 b=maImqvf8MUjtgaXgNk7eRzMjwg/X3krdMQx7VyBKb/F4KzEZqjseu2be
 yM7nw5+hRjuAh6X9Ahqbgv7xQhpfhHJF/O7JdZGWf5Y1+aMf+T6CUTH3d
 SCQl4CmBtxXmFP8jXF3+mCyu86m/plmqHHiC/EH886wnQJmxF0Q2A4Oyd
 lva6fT+6i9TMCG+OeJTmT7CXnbUQhqAuPU6iVjEuaitmCAiXp9DMx7PNn
 eyybyyPdutphlGOt90Gzwgo6O0vlVhq81UzYTPTOryKYkYh/lR3vXQo2t
 j6NIMz2d0QsZf1hB+USiWjdQ3KJYSTECVw2fMlggsd6G6bUWyAB0UKnn1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=maImqvf8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typos and
 docstring inconsistencies
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

--------------u03d4Pz9Bu03VIuG0UtMJ0tP
Content-Type: multipart/mixed; boundary="------------PzbZZWnrJEaAYFw2MP2YnIwU";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <9a24d3d4-e8ca-4b50-9ba3-47009e00a3cc@intel.com>
Subject: Re: [PATCH net-next] ixgbe: fix typos and docstring inconsistencies
References: <20250929124427.79219-1-alok.a.tiwari@oracle.com>
 <20250929115931.1d01a48b@kernel.org>
In-Reply-To: <20250929115931.1d01a48b@kernel.org>

--------------PzbZZWnrJEaAYFw2MP2YnIwU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/29/2025 11:59 AM, Jakub Kicinski wrote:
> On Mon, 29 Sep 2025 05:44:01 -0700 Alok Tiwari wrote:
>> Corrected function and variable name typos in comments and docstrings:=

>>  ixgbe_write_ee_hostif_X550 -> ixgbe_write_ee_hostif_data_X550
>>  ixgbe_get_lcd_x550em -> ixgbe_get_lcd_t_x550em
>>  "Determime" -> "Determine"
>>  "point to hardware structure" -> "pointer to hardware structure"
>>  "To turn on the LED" -> "To turn off the LED"
>=20
> Hi Jake, looks trivial. Ack for us to take it directly to net-next now?=


Yep, go ahead.

Acked-by: Jacob Keller <jacob.e.keller@intel.com>

--------------PzbZZWnrJEaAYFw2MP2YnIwU--

--------------u03d4Pz9Bu03VIuG0UtMJ0tP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaNr/8gUDAAAAAAAKCRBqll0+bw8o6G73
AP44jKvDh9+bZRGOy0W6RLULi9MTDxhVOhAb/Juw+N8UuAEAqTyXqPNxhHVlgu60X/Az9PVzJGwh
CN/Kyq5cUtzJMAo=
=xbhr
-----END PGP SIGNATURE-----

--------------u03d4Pz9Bu03VIuG0UtMJ0tP--
