Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AE1C2E59D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 00:01:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3899407AA;
	Mon,  3 Nov 2025 23:01:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VdXkv6JridO3; Mon,  3 Nov 2025 23:01:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B6F24079C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762210884;
	bh=AffXC5aZMD2NF8YKWrhhFKi9cvLXzQz9iGvmvnFEF2I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=umEK5tSm77H76EeVqrvdR4knhOwPjH624bvvEQrHL/cxt8bD2D3jhxsA/TjlD3lSl
	 //EE+Rn9362RJ/APddXC6wRlBiCVgPNU0dCqIXBFk0rmKmtMx+nRa78PllyuaR0Coa
	 UTXuJulJxqXaYgyyOi6nJgmAzSvXOiwPx11R9sn/O76bAhZWMB3KbRQjzEwX7kdQfX
	 VoHbojnqw6HPwMm7LWSBC1kYs/R9GdgvuSAgrx0P2v5wZxTGkN0N28mIP/49cpj8A3
	 yVtEC2CWyUJ/+imS/oJQFVHCeXoCWQuiIgcLFGMo3bL+m1tamFWExvhcMiTR2+93AD
	 8ZV+HzAEJTxjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B6F24079C;
	Mon,  3 Nov 2025 23:01:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D6820278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 23:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD32440610
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 23:01:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H5lyGHtNpaIa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 23:01:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B602E40361
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B602E40361
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B602E40361
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 23:01:21 +0000 (UTC)
X-CSE-ConnectionGUID: TsH1HMILS9aSa/sv8Ts2DQ==
X-CSE-MsgGUID: FfOuUcP2Sx2jVxBZ5aarIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64335428"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; 
 d="asc'?scan'208";a="64335428"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 15:01:21 -0800
X-CSE-ConnectionGUID: f48N/b4YQUG3ZIcHSRU+5Q==
X-CSE-MsgGUID: IPlELpDET265CzrNuTcr8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; 
 d="asc'?scan'208";a="187711600"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 15:01:21 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 15:01:20 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 15:01:20 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 15:01:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wwmmhR3uN0pgRHBZ1jYFbtFjEtXwxSI6cr/E5xb22YoMrzT8Q7hGRJTbekY3CtYtJ+VqFXKCBR3rPGZPR4KwiN5AcUQqGm+QRXn/Qnx2nTfgH4qLZPeRGcoYIG/3XdAWfe8QBrSmB+7QoP+G4L77FF5QkGbb5qT9Pn+6+cwD9L1TBysQjuJP1/28E/grmB0oLeg70nabxcHekziZK4Mrz/QgP2Bfuecra//CFntNieTQCg7gpNaJhTSusDtuwHhlvmefro7z5IuEoYh/gKbh8QcUeqx2BOQ3OEl3K83KrRvOiSShyRC6Zm7loD73CZwy64td6ElyH8GQl69FMhOQQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AffXC5aZMD2NF8YKWrhhFKi9cvLXzQz9iGvmvnFEF2I=;
 b=XZ1rc8QZtf66bEgIkF6kfhXquGeoqUS7xVXyMMQzIVmFTo5B8P28FQNMFH/mUYcIRiC7mqOUxOHoVF1aPf+Owa3AN1zqg06ZxgSsLLcvzQ9R77ENCBiXcBzF9shqPc4tKSKRIAup/uWfI269prC+oK4V6AWshWSYfnSQl9uv5mFIn9puM5wfo2vZhHSdjKiHi5nRnYYEZjf74iFt1072Nf+0ZfASMKDjosalL3J+Zc+dN3lT2yOMbq+oD6BGIeXVRV269cApZ9oh2F3oMWLveYrxGa2//0fmUyAEUA2ybkBJ+tj7e3xn4LAQHggVY/ZIqiW7lEkGrkHQB+gi7D+Vqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Mon, 3 Nov
 2025 23:01:17 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 23:01:17 +0000
Message-ID: <f839323a-4946-422b-a72a-c2efd71b2f42@intel.com>
Date: Mon, 3 Nov 2025 15:01:15 -0800
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Madhu Chittim <madhu.chittim@intel.com>
References: <20251103212036.2788093-1-joshua.a.hay@intel.com>
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
In-Reply-To: <20251103212036.2788093-1-joshua.a.hay@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XpA69oUtr5BK6cYUNtozgCOF"
X-ClientProxiedBy: MW4P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BN9PR11MB5228:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c233152-5ad2-4d66-55fb-08de1b2ce522
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3E4eTdQUmRnaE96VGI1MmI5WjFJL1RneGV3YVBWTERFWGNzN05kN1FHcVZG?=
 =?utf-8?B?TUFoNVlaMy8remtyNXpkTVNESDZRUStYemRRY2hsZmJ6YkkxSStoc3llbm9L?=
 =?utf-8?B?MTk2eVpSOThZd0NudERwS0VQc2JSUksyTmU4QzVKeUNMMStVdmRCYWRCVC9S?=
 =?utf-8?B?Mkg1SmI3L21TVkpTT01XUzNlVXZzMHJqVE1FZWpjelVpbEY5MmlaeXAvTE5n?=
 =?utf-8?B?TUFGMytkMEtXQVF5SXhFWlZ1dGt1Mkx2QVd4NkJBenNlM2NrN05mT2U4Q2Zq?=
 =?utf-8?B?djlpR2p2cGFOMEtaWmVLVXJPd0VIZ3o5a1N2enh1dWltVUh2a0ozNmwzZ0Q4?=
 =?utf-8?B?dkd4NGwyTXh4OHNueEE0bWdVaUVrMzJGS1pJSzVvQXV0OWp4dENJSGZQazZD?=
 =?utf-8?B?bWlsYnRnYTcvMDA0U0hhdmZWUE9tam1RTDBSZ1BnRm5tOU1NdzlpWXljcmtD?=
 =?utf-8?B?ZTBmWVpMUkFLMGZPNnhCSUY1dzlEVEMwM0NTUHBhUG5zU0VoUkxPU1R0cGw1?=
 =?utf-8?B?UDZFL0dWMWYwTjR3VHhCTDhBTGxvR3MyUkJGS1FqQlMwNklUeGR3YldZMURO?=
 =?utf-8?B?QnRoQlNFTzhLU1FQWi9DNTNZMjlwbUpveFdXZ3l6ZXpwL3hLZVZzMnpHd1hJ?=
 =?utf-8?B?Y3NLYWFhZWM3end3MEk1UGJLK0ZLM2dnRW42Z016ZlR6c3Y3S0o1Q1hvRU9s?=
 =?utf-8?B?VjNBeGxBQ2RISnpqMzdLd1g5LzR6Z1RobFhoclVETEpsblJveEhXR25LbXFp?=
 =?utf-8?B?bEpDK1NZeTJDZ3IybG1zd012OXhHQWt2WjlPOWhTVkVGTWM3blRlOFJNSERO?=
 =?utf-8?B?Nm95U01SbkFrWlpJMjF4ZmVobTJkRjRscjI1TWZuZ045N3hrUUxkL0s0dVZN?=
 =?utf-8?B?alQ1bFFHbjl3SnprR3ZvUk5nSDJZbTNtN1htVXdwVXRnTnh5MG1rcEUyNlda?=
 =?utf-8?B?bkZFdWNRMFdWMlQ4N3lLWEZML1o3OVdiUnVhcTVOSFE1bXJBRDltaU9FYXU1?=
 =?utf-8?B?U2RReVF4Tk9jNlNpUW9aSkZ3N2dnSHpCdkdXQU1EeGVURUdhUnVxdi9rMnpS?=
 =?utf-8?B?c3FkWFJ1MGtjVERPRnZ1SmR5aGF5VTZpNDluNmdVbWNzK0lWVDZTbVN6MUpM?=
 =?utf-8?B?ZkhQY1ZrVDVVRUJ0Yjc3RWFIZG5TV05jeGlGNC9RUG5TNDlvTFIyWXdLa291?=
 =?utf-8?B?ckF5SUxpamFob2wxbWJiWXY4eWxOQWYrQUU4Mml0SUZBbUxSdXpQODI1anY2?=
 =?utf-8?B?YUZkUm9YMFB4cEtBT2h2d3hkeEwzeVNMNEEvdExPZUh2aERzMUF2bmZIbjZR?=
 =?utf-8?B?ZGxKd2RBRjlBcHJNNkp6ZU9VUGx2THR1MHBWOFdwYng2VWJxamlvYy9QNmtq?=
 =?utf-8?B?SlJ1RDdCeDk4ei9rSXV0aWZ6enM5R1dRWHV2eDUyZVhrTzJlR2U0RWNZVWVa?=
 =?utf-8?B?OEJtS1JQQmdEZS8yZWFnUGNxWUJtaHo2cmxVVEFUaHJyNElVNnhlQzJVN2lV?=
 =?utf-8?B?ODRRRE5udjNpVCtzZ1NXL1ZucnFpZVo0UjVOQ2pUOE92UDZtTHFPV0pFS0F0?=
 =?utf-8?B?VnR4MERFMEpxWXVBUVhtQ0pnek1TYm5hbjRLWkJuUGNPR3JyVW4wN0Zjb3Jl?=
 =?utf-8?B?a1B3S09lV2dCYXdWMGFGdHRycXJwZVJ0Q0RHMEgrUHJ5VEdEcC9EMGhMeXg5?=
 =?utf-8?B?YzFMamd0RXdLdG5aMy92bHF1TjZpK205cDRuVGlpOHNFTnRwQXZtditWTDlm?=
 =?utf-8?B?dk9sQ0dRVkhrVVRua1dvbmhKTnM3REEwTnF2dW5tc1dMVDBNZHY5NUtNQWZl?=
 =?utf-8?B?VUtibkU0Q3BmRURNdERJNi9tU1BpZE5JOG5mK1NtY0RVWlJhT2F4c3dYTkFu?=
 =?utf-8?B?YmZmQS94NVZkMU1tL2VZNWFQaWRxTWVaN3NDL0VOdHpoSnVnN2dQdkcxVGhB?=
 =?utf-8?Q?W++027CVaybjfdoOUXdMqqK19h3sKOg8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZW11Um8xc2hHZDdPazUweDNGTzViV2xseW1OZHU3SW9qNGIwVFRJcWMzY3dz?=
 =?utf-8?B?ZVVKbFVCVWd3ZU5NMTloYmRSMVdXWUlydy8xS0NiZ0pRVjl1MzFuNWFlQkov?=
 =?utf-8?B?c3pZYm1md3lURG4reU12MkR4UVFZblZqYmRxQVhRWU5UM0tFWWdmTVZ2UlYy?=
 =?utf-8?B?d1BCYUVEWkltdFlySHBwbUhzemFKc01TU0NRK3pWWEl5OGYwUlBSUGhoaHhh?=
 =?utf-8?B?aE5GVFNGajYxSVdMWmdhQVgxRC9KcnBkU1MvbDRDdUduWGgwcmRSQVVlMEFu?=
 =?utf-8?B?TWtBaURrd29OUGI0Wm1XOStaa0ZzU1VEaldlQzNSRWlyd3ZXRExmQ0NnZ1BZ?=
 =?utf-8?B?UDhFRE81cWtKeVBsVUpjZ1FFZ3lFZzgrU1BjQ0p6OXNpdXR4U0Z2RldxdjdI?=
 =?utf-8?B?NEZuYzFmcFo3MXJDU0ttRXlmdW5SdUlLVWxmOEU0SUFoenhvWnFianprZEJa?=
 =?utf-8?B?dXl4QThySjl1SzlQTVpSN3huVGZWQ2pQZmd0Y3I2Y0pNdHM2S0N2VkZzT0I1?=
 =?utf-8?B?UTVBVVFIQit6aVJjUXVqc2hTRUdaS1cwdVIyemt5b3lvdmF5OThDUXFuMXZP?=
 =?utf-8?B?UWJoN2FvZERmZzJva0g1ZHdEVFpUQVpjYVI5QjlpdS80ZnBDVTdjSGxiUEFk?=
 =?utf-8?B?QzlJZGdqYjF1NEJQNHNXV2xmOVNjbFRGWVBTc1pvMnZsbkdMZStGdDVmZzBn?=
 =?utf-8?B?T3pVNzFkYk5ZUkw0SzZURUFWS0JOQjhyRTA0U2dFcHBiK1B1d0RzYVZIbDdB?=
 =?utf-8?B?Q1BYdHVPVVMyUjZJb3lidDBZeGh2VXJYc0hWQ29WOVlaS29EMnZ1bEdsSWtZ?=
 =?utf-8?B?a3Rxam05cmdXVHpUNDk1aFBIVDBac3BLS3ZnUWU2WUlqUUl5dVRyTERJaEJ5?=
 =?utf-8?B?UW5YdGtwTDlhTXFHYlY3Nm4xUnZtLzhWVDJmTFRJMU9KbEdlNjRRWHA1dHR6?=
 =?utf-8?B?SVRsOFkyUmdEUnJtTit1VEkvZGFFTXZQSitFMHFNZEIvRzlrWUV4aWtGeDMy?=
 =?utf-8?B?Y1lKS2pnb1huRWVzUUFnd29IdFQ0eW93SjRMMXp5VmdMdlg1VUREbXZMSFdy?=
 =?utf-8?B?M2RGVmU3TVpFYWgvRzhDNnIybHVNSTJxN1VmeWh0dFhVdVBKWEo3eFl3SDd3?=
 =?utf-8?B?VzQ0djc4dUJQVzNyVkZaczRSaFllSW5XcmhtMDNUMUp6VEVNQVNLd1Z4LzB4?=
 =?utf-8?B?NDZURVVXajRuK3ErWjgwKzVtTlZhNnBCWXVaTGNaSk1HTHBFNFprSlkyUElx?=
 =?utf-8?B?cTQ1VEJlejRzTXViSVhjT3NENnY5SlpVNUtMUDlLZy9XM3R6SjUyaDJ5Mi9q?=
 =?utf-8?B?UXROSzdaOHhIcWFBSE5mZXFneGRhU2x2YmRPb1MyZUJVRmhUUXUxUC9BUUEx?=
 =?utf-8?B?NzRNSVBRMDc3aXpYQnFJTFdJWERqTUhOL3lJTkUzeEo5ZHhyTnhIT1Z2UGdN?=
 =?utf-8?B?Z25SKytiZHdCOFpGRnVpYlVUQWVTaWJ5SlZQdElUemVNYXJpVTZyS1hwMG5w?=
 =?utf-8?B?c0x5cjBNc3EyMi9xY0c5ZldiTzlFRGpKcHM4c3ZHcndxUDRwNk1LMFhtMXJB?=
 =?utf-8?B?N3NEbjRVeU4vczJQb1p0Sm5aRlVSZ3VwTWVGZ1IrOHVVYk9nQUF0SmNOcnE0?=
 =?utf-8?B?Wi9EanExYWcrTHZKYTdWNlhIa0xVV2ErdnAwVHQ4RXk5U2R4Tk5Bbjh3TXdF?=
 =?utf-8?B?TEgyK1E1UDd0ZWZKRWYzRSt5b3UvVkJYQWlCa3M0cnhEOGd2eUNncGRpVU1i?=
 =?utf-8?B?Tk1UVk1KbFlBb2Y2VCtEYkNVSXFUeTl6SWZpKytWOGJEbG1zZlVLMlZKL1RM?=
 =?utf-8?B?MmswUUVETS9iNmRzTXZhcXdzM3orZ3YwSFdtMEdvZmx6SUUwWmQ4WVl4Q1dO?=
 =?utf-8?B?OXR6NGJWeHVBOW1BSzkvbWRsRFBQVTZDektKVUlXbFVGUGQzeGM0ZmpYODdX?=
 =?utf-8?B?OWVuT1RYOFczWmZzZk8xbDhOSjB2L1BwbHJyYlVTaXBWSWZXeG5kMHZxZ0xp?=
 =?utf-8?B?MlpUUTMrb2JlM3dwSGtxYVNHbjNBOExrWUdHZU5sYW1yZURMVzlYMmo0TzY2?=
 =?utf-8?B?RlVHV28vc20wWFpjWDdMRVlmVmlxNkJVM2NpbU16WWNBVGZIbW1DNHNNRElo?=
 =?utf-8?B?REhvVEhKUThzYTFIWDRkTnFlbXQ4bWpOZG51Ylo3aEtsMTNyZ1FIOVl2VEFX?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c233152-5ad2-4d66-55fb-08de1b2ce522
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 23:01:17.1989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uCds9Axl4oHVSeyTw9sYTCN+6gnCsvrU7rLjvug9N6QxHHpsPaYPTE/ZCYHmyg6gohdctpWwk2sOjvLdZES/AzLxIynCl1DYIUi3jeAC/RI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762210882; x=1793746882;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=V5cXkzFC6czKt4uwWglZrjeJAclJBRpd17eoLFYE7hA=;
 b=Y3INZcNKUh55DYwVHylCoxtSzRle4cNJuD2HvhiZ07LHU/eXke4dNI5X
 2yQzWYhzt36ZS64Q3gUytvxBdXt8dW8/ro5Uk4Vohms4stOomAryFkQE6
 BRyacijWt/Yt1n+c03REXS0Tfpck5OVgH0FrAYw8SCBROpdsoOWgGXuYj
 ci6AAMyfYC7DuL3sbdME0gmgtNrDt86UnRgT5iGVKojSfH0KEZQAtjzvR
 VCjtjXzGtiKKxO+vycSWU4Epon+cDkugB9UqtYJc7QOu9ax0NwPsldB/Y
 6YNexHMWSUNoiCm0Wbi9XmVEUj9eI4OUrK5+sCVxgdULNIjBtutlrTAII
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y3INZcNK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: cap maximum Rx buffer
 size
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

--------------XpA69oUtr5BK6cYUNtozgCOF
Content-Type: multipart/mixed; boundary="------------IhKU00edcSJDFWNpNmbxGPB1";
 protected-headers="v1"
Message-ID: <f839323a-4946-422b-a72a-c2efd71b2f42@intel.com>
Date: Mon, 3 Nov 2025 15:01:15 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: cap maximum Rx buffer
 size
To: Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
References: <20251103212036.2788093-1-joshua.a.hay@intel.com>
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
In-Reply-To: <20251103212036.2788093-1-joshua.a.hay@intel.com>

--------------IhKU00edcSJDFWNpNmbxGPB1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/3/2025 1:20 PM, Joshua Hay wrote:
> The HW only supports a maximum Rx buffer size of 16K-128. On systems
> using large pages, the libeth logic can configure the buffer size to be=

> larger than this. The upper bound is PAGE_SIZE while the lower bound is=

> MTU rounded up to the nearest power of 2. For example, ARM systems with=

> a 64K page size and an mtu of 9000 will set the Rx buffer size to 16K,
> which will cause the config Rx queues message to fail.
>=20
> Initialize the bufq/fill queue buf_len field to the maximum supported
> size. This will trigger the libeth logic to cap the maximum Rx buffer
> size by reducing the upper bound.
>=20
> Fixes: 74d1412ac8f37 ("idpf: use libeth Rx buffer management for payloa=
d buffer")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 8 +++++---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h | 1 +
>  2 files changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.c
> index 828f7c444d30..dcdd4fef1c7a 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -695,9 +695,10 @@ static int idpf_rx_buf_alloc_singleq(struct idpf_r=
x_queue *rxq)
>  static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
>  {
>  	struct libeth_fq fq =3D {
> -		.count	=3D rxq->desc_count,
> -		.type	=3D LIBETH_FQE_MTU,
> -		.nid	=3D idpf_q_vector_to_mem(rxq->q_vector),
> +		.count		=3D rxq->desc_count,
> +		.type		=3D LIBETH_FQE_MTU,
> +		.buf_len	=3D IDPF_RX_MAX_BUF_SZ,
> +		.nid		=3D idpf_q_vector_to_mem(rxq->q_vector),
>  	};
>  	int ret;
> =20
> @@ -754,6 +755,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue =
*bufq,
>  		.truesize	=3D bufq->truesize,
>  		.count		=3D bufq->desc_count,
>  		.type		=3D type,
> +		.buf_len	=3D IDPF_RX_MAX_BUF_SZ,
>  		.hsplit		=3D idpf_queue_has(HSPLIT_EN, bufq),
>  		.xdp		=3D idpf_xdp_enabled(bufq->q_vector->vport),
>  		.nid		=3D idpf_q_vector_to_mem(bufq->q_vector),
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.h
> index 75b977094741..a1255099656f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -101,6 +101,7 @@ do {								\
>  		idx =3D 0;					\
>  } while (0)
> =20
> +#define IDPF_RX_MAX_BUF_SZ			(16384 - 128)
>  #define IDPF_RX_BUF_STRIDE			32
>  #define IDPF_RX_BUF_POST_STRIDE			16
>  #define IDPF_LOW_WATERMARK			64


--------------IhKU00edcSJDFWNpNmbxGPB1--

--------------XpA69oUtr5BK6cYUNtozgCOF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaQk0OwUDAAAAAAAKCRBqll0+bw8o6Ar3
AQD3J8btR6HSsvqzGSvKQt94pv60brvXhA+ZtMVqLJH05QEAoLhXukQpNs+WhTJef0nhK5I1119P
PdNpBMTV126hcA4=
=YArd
-----END PGP SIGNATURE-----

--------------XpA69oUtr5BK6cYUNtozgCOF--
