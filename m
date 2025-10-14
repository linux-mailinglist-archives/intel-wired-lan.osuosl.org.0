Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCCABDBD3A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 01:41:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD4EF61200;
	Tue, 14 Oct 2025 23:41:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 29Ya5J0B22lb; Tue, 14 Oct 2025 23:41:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEA4E6121A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760485313;
	bh=zjMPhXqtBJaZeW4TJOk4NJIKGfH4MV6ZKx42YNCTiZM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X1TZ9ovOYW6my8THoC+9Ek1q8wB4X7Ah9pmf0GjL4galfu35qOAd2DrhRzCPau1vs
	 1qywqRAu8Xt7ujSHnzkQf3w3F5jjNulCv6V1GcWoEtiNj7t9WYuFzfX9ccHfjEIndD
	 8OCOa6WPYHBwTqw22ymFrlhblrOFQP6SCSOyA3swr85AvslCIJal7FoB5onoamvci8
	 S0Etwa12CdUtymX68YdRP3dPZy0ZeKE0Ojm70SXboGWHDC13zsUQzn2+NU2LJlFXXP
	 +/vXaWbQB0m7N1Svi3ZcMyiy9+G6jQM/TPHU5TKx3NlZoERpYXI1UWMlS271ocF/bg
	 f3/hO48WZ8ozg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEA4E6121A;
	Tue, 14 Oct 2025 23:41:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A5522BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 23:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 96A75822BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 23:41:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0AiQhrAV4r7Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 23:41:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 644B8822B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 644B8822B8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 644B8822B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 23:41:47 +0000 (UTC)
X-CSE-ConnectionGUID: sd1CF6dLQt+kQt5/QaNgNw==
X-CSE-MsgGUID: GjP4HDL1T42cGkoVm0YSAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50217173"
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; 
 d="asc'?scan'208";a="50217173"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 16:41:48 -0700
X-CSE-ConnectionGUID: pbbC4sHRR1+WgyktCV6s4Q==
X-CSE-MsgGUID: dngP6MMiSmOWaXtRYUdp/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; 
 d="asc'?scan'208";a="186439400"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 16:41:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 16:41:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 16:41:47 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 16:41:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l09B+52zU1aHdGnnMsL2rsElTxF0RwWjUlJ+H3pQpUiHcQx+3Ki73I7jskOSCBanUmZjKPMpXZd6NnfTWMKs/3E3Ta4tA+r2tJdH5IdQrX2XCJedUx/CZl7/i2S9c8fhMTi+BA8EpvKs5Gm5mD/KOlyi2mdOwrFTSvw/WFtjxV5k4NSFZxiBErl5K1f/yqiC3Dry+xtMvuNm0lF9/2qFGJn5O2oAvn12a/AqseG3mCl5od9wfagmDfRnODYXxqnLAFU/2jzlEGfNjikAgHaNLm+x8bP1IqCppOkBIMnz49LOk/5DiDOxhvXqvwvMEIdEB7VGm8HCviB+dqw4UDQTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zjMPhXqtBJaZeW4TJOk4NJIKGfH4MV6ZKx42YNCTiZM=;
 b=YPTT0c3POygsuMjL8SiNkCW1f0x9bgup9v3qq6yuYlA/TFPIT2a07r7ap+QiSpRVYW+UI4VoiTbleTkRllvchozdxOsfdcxu04U/9C4/v8HFi3d+urRMJCSG8vjAyTcxlHu2kUqwKo47vWbDOWZK8U+U12BQ0rAV4F7WriiM6BR0HgZKmgzV6XCGzpvQpG/fPm4yHhTs95l3PVXQBnSZjgfwUEjQYuEhW+Q9r8Claz120jPGIX0v8PVZxARQl2ptwMA1j0RXrd9QXki9/0Eo5vAVytEQ5rASphrEbhKKoYFYHpUjEiXKyOYbyfY0P8VxbmfGsnuzuFJDK8B+s6UVAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB7666.namprd11.prod.outlook.com (2603:10b6:806:34b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Tue, 14 Oct
 2025 23:41:44 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 23:41:44 +0000
Message-ID: <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
Date: Tue, 14 Oct 2025 16:41:43 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>
References: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
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
In-Reply-To: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Q8Iif75a66tLKgC0JRdYdPeR"
X-ClientProxiedBy: MW4PR03CA0099.namprd03.prod.outlook.com
 (2603:10b6:303:b7::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB7666:EE_
X-MS-Office365-Filtering-Correlation-Id: e13b7af0-9e43-481d-8241-08de0b7b3b88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2FEaXQxSmRJOUhHOXFNUC9PTHNiSFF3Smx6MkYybmJhVzZYdmtBVFYxclhp?=
 =?utf-8?B?aFlmdG9QR0hGSSt6UFZtYXNpZzhYeFdveTYvYTRkYVJZWXA3TWtQWEc3NVhx?=
 =?utf-8?B?ZER1cmpMSGtRRHQ1NWl5OXJaRzBORXdFOHVnVStDUDJWK0duQ3BlT0ZWdEZl?=
 =?utf-8?B?SXZ1QW9oUXdFUGxVNkJYck5MRkZWRTlZV2hVOWV1OEdTSDZJNytQYjRIQ0hn?=
 =?utf-8?B?ZDFpOXFJL2V2ZFpwMThleFUvMEQ4YUJPYWppWmxIdk4rWkZQdWlIdk8vZDdX?=
 =?utf-8?B?NStoQWY3WE1PUWZ2R0o5RnNRN3dUZ2lNYzBIb1pBL3VYZzFsNDB5RGNoN3Ju?=
 =?utf-8?B?N1R4SUVGRms1RWkwbk9WT2F0aU1YcXpHcnJaVWVlcDFpU2ljWWR6bS9BZ3Za?=
 =?utf-8?B?UmJsY3VZYmhzL3g4aDdWRXM0SHhUTGY1TlFZTzVJYkloZFNuaDYySDNsdFEx?=
 =?utf-8?B?OVB1MVVRRzJwcWNWZmZXMTFNbDZYQkdjaSthdlVwYmxOd2tOWUhOZXh3Z1J4?=
 =?utf-8?B?dm01dzIrYkRRK1N1eENmQmpzaVRSN09CZjJ6Y21UbVgvdjZFQmJObVdvYVNJ?=
 =?utf-8?B?ZXRnd0QwVFBPVlNSSWRDLzlYZnhYV3ZwTTFJRDdaUUZRZFdFbTc0M2lzV2la?=
 =?utf-8?B?NXRZRXF3SCt2SE9LVWl4Z3VXYStZTFRTdHV2d3I5V1hhdVFwZzNuTCtWUWk5?=
 =?utf-8?B?RnlSbHZ6R1VWQXUyVlNuUzhFK2N6Q1ZJUzRicG10QjFJWVdaVHIrQkc4SGJi?=
 =?utf-8?B?NUczWWc0ZGRUc1ZWUmpWV0FrNkFlMmNBWERWd2p1bitxbGlzMWhQdis0NHFw?=
 =?utf-8?B?TmRNWitqdzBUcTIwcFAxamJHUG1UcUQvWjg4ZWFEcU0xMTN2ZzBvSlg1TDl1?=
 =?utf-8?B?azFHbnBZRGMxYUFHNWM1RW44Y0ZzUU1pTkhLVWI2MS91SHc3S3BiUG9uZkZV?=
 =?utf-8?B?ZERKbU9EL2VPY0FZSm1nRUhxZytxQjFYRmlXem9RU1cyaU4xREUvOEE2SXpx?=
 =?utf-8?B?UVVnY0ZzZzJwTkpXbWFUUm9rcE93cE1ZeTV4WDJBWkFSK1lWVnRrRUtteUFv?=
 =?utf-8?B?bkZ5Y3g3dHJReXdrNjQ1bXo4emJMZFRoaHhnT3ZLNEZvZjNxaEpWMW14Y1Jq?=
 =?utf-8?B?Tzhla2FtbUE3RVFoOURkcDA4SVJBeUx6dG1qcTB5K1NkVytvUGhwdTZ4T3p0?=
 =?utf-8?B?ZGNEeEdZdmtwNVVFaHZxdkp5T1MvaTZHNTErL2FaQmdzdjFSb3hRRmlGM0pF?=
 =?utf-8?B?MmlFQWtlb2EweDF3RE8rYVpqWmN0K1FrTWNKWVk1UDlRcWFOa1ZVajNnR2hJ?=
 =?utf-8?B?SEZ5bk5RTXFGRGpzZVY1LzF1a01Sa29qM3lXM3JJTEM0dC9KdTFpTmlHckxq?=
 =?utf-8?B?T1Z0Kys3cFJhcFhIY3RZL2g5T2JKYkFSZ2E4VFdMUmFCb3ZESjZ3bXA2c2Zz?=
 =?utf-8?B?RWgyV1U0UEIvN2cvS0NOa0RKaDNwS001dnlaMFYzUCtEei9EQ21zcXFVV1or?=
 =?utf-8?B?cjR1VjdKZHZIK3ZCMlFacGo4YS9pT0tDaE04SGwyUjh4bjNnLzM1K05kaW94?=
 =?utf-8?B?U2IwUXdGWWo4amdOeTlDeUkvREVKdGl0ZGhmYkJLdTJvV0t5amRwZDAra2F3?=
 =?utf-8?B?QjZ5Q0U2cnhETktITjhNaEVJMkFZM1o3TVJXK1JYa3JIWjVVUENsSVdFcGFv?=
 =?utf-8?B?UW9HQTFFM2NOUzA1eG5LQ0RRWTQ1T1dUVUxlSUpsKzBHc0E3aWFzdCtOUUhN?=
 =?utf-8?B?M0p1RXQxeUl6OW9sRGxrL2U2VW16WEwyeXZsMkJVR3d2cmxadkZxVGU5blhV?=
 =?utf-8?B?VzF6VzFLU2FLNDY0Q1c3bFJ6bDk1VnVBTGYxRENwcXVkK051elVUWm5LNk1h?=
 =?utf-8?B?Ym1xRkhWM0dUZ0swNjA1bXdMUnU1UXJObFZlUkZsRmY4dXhiZnp6WUx6TmR2?=
 =?utf-8?B?OTNhZjJSSEloOVBIb2dqbFNSVStQRFlUNkZGUEpSaW82aUNQVUJuMzZvRmxP?=
 =?utf-8?B?NTBaTkwyK1lBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2VnSitXcmlDUTVMMmdJaUgrTC9PM3lDL3gwUTRiK0MvZCtSVktLYUsyMUZs?=
 =?utf-8?B?SG5BL1VXZVY5SXM5OHR6NWl0SnloYm45dVk0NVk4TmJlVUxqMmRDeDh0OG9s?=
 =?utf-8?B?dENlcW5RUFZBOVN6TFNDTHdRWnJpd3E1ZUlLaUVKS0V6bFphY0pQbEo3THVz?=
 =?utf-8?B?MWVlV011a0JyTTgzNittNFViUlRYUEhvU2lqOG5PL0V6SWZhelRsSEd6UEZH?=
 =?utf-8?B?YkMwOStPZ3lLVi9nbzEyRFo4eW9EbzVhYkNDelBIQ0pVN29ydTBtR1REV01r?=
 =?utf-8?B?blpTNllBS2taSlBGSFY3MkUxVE1pSDVJNkRWYXVsMTNjS2szRUlLeGtCa2Ra?=
 =?utf-8?B?d1lzQlgxNDUzNTloSGJCbjhmWjdMdjVLZHhQUFJFbm9VUHR4Q1EzU0ZtaXRm?=
 =?utf-8?B?S2hUZ25xU05xZmZBMG9hM2F1eTNldFZQanF4NytWaU96dDJDcnU1R2tZSXdU?=
 =?utf-8?B?ZVlacmVYN3M4VEdISmRkUFdBcHd4eUVBMTZNY3UzQmZBbHAxZDFrR0o2dXZS?=
 =?utf-8?B?LzJlUTZabGZrTFE4T083Y0NVeVdxV0pVV1RMd0pjMDZjYW82VnN0NHNEUFZo?=
 =?utf-8?B?R2F6WEZpRlBvTHlTZEEzSk5ndmtQUFYxVGg0RVkzNHhHdUNxdkNmbDNEWlBx?=
 =?utf-8?B?dVE5elUyS09NY0pDRmgyejVLU2RuMkl2TXN6U1kvc09NM0huZWxLalpIbTV5?=
 =?utf-8?B?cXBLT29Fc3hPamZkaXVOUzlGWEdRMktsQmJqTDNXN1ZicFBrUURRbDlOcTht?=
 =?utf-8?B?QWtobjhsSjAwNGZFR2kzcFRaUUVhU3lsUG1TaUx6UFJaSmtMRWh1U2VFenYw?=
 =?utf-8?B?RklSaTVwVUFnalBDVC9qK09TRE1tV0s0d0I0TkFreUV6bVkvTlFyYmNvSHFS?=
 =?utf-8?B?OUE1Z1poeFZydG9zcy9iUVRtc3dZME5LSW9udTRmUkEvZTZ3RXFwWGtyRkdk?=
 =?utf-8?B?ZUhpaHk2OTlLL1VDTnFqYWY4c245bXlBQk9rV0VSTnUrVVl1ZU9nUlRqcFNS?=
 =?utf-8?B?emd0S1QxMlJjM0JLWndGdGwyTHFjVC8zWE1pdCt0VW5FN1RyQlFFbmRkYk9m?=
 =?utf-8?B?UUtIa0VTRDIzOHRSbFpQNjQ0aTVDRmZxYXdQb1BmTkxDUWYwR1Rya0dUZWtG?=
 =?utf-8?B?VXRZNkZtL2Rxa2FjRzZFZERSL0tzWDRGQnZ5TzBtQ0FQcGhxRTBOc3dxOWVa?=
 =?utf-8?B?WW5CTlNzek8zYStxY2pOWTRzM1gzR0FicjlkdlZjbEpEUG9KR01PYmpLa3RI?=
 =?utf-8?B?WXgrWUhPclRvZjNFZ0FIRDZjOThLS0o0R1FGSXg0ZkI3WVRtR2tSdVovYnN4?=
 =?utf-8?B?RmpLNmREdGtyUExzZUc5WEh3T3EvMENZZ1pwWktEM1A2cTYyUXVzVG16Ry9m?=
 =?utf-8?B?QnVMRmQySE51VWtYbEQvTDRJdFNUZGRtaWtZdTZ2ZE9RdFVwZ1dIYW9pVURw?=
 =?utf-8?B?WXlZdlN2VlMraFhWYy9maElPbVFnenZvaDMyb0ZPNlRCK2VPOHBxdCtLSFdv?=
 =?utf-8?B?Qjg2WDFzSHlINmJicUlDdUFrbTViSEk4UTJScHVzNkhrM0p6TGhEV3lqR0ZN?=
 =?utf-8?B?TTRaSGIwTkNWZlg5cDBQbVdtYlBoL0NvenZxVm9wRlJmZEJsYS9ibW43aDl0?=
 =?utf-8?B?cDJBVEUwaDZJeWtRZlZvdXBXSEZqSTdFeTN3OXVmamtEYnF5NVJmUWxXanpC?=
 =?utf-8?B?WlZ4OUg0OFh2dng4S1FZQ0hBcDloZ3UxZ3luaU9HV3JXYy9DcnNvc3BOUWcz?=
 =?utf-8?B?TnlJR09wdGVhY2RrUlQyQ2xZdUpVWlg1U0duSFRlZ25NYkFOelZEWDloZzRH?=
 =?utf-8?B?aHNaYlVBaVM1UURkTmJ6S0lwUXNNdDRpbTNwMWdLQnhkTjd0c1YzaTl0RTgz?=
 =?utf-8?B?QzZhQWxSdkt6RjJqSEg0RkphbjF0Yis4VjRvbGlkaXY4MGIwMGIzQzVGWmhM?=
 =?utf-8?B?TjlYNStLTnBBR3Z4TTNQdlJaMm14VVgvV3RmRFFwd0ZpTnordS9sRnliZEZt?=
 =?utf-8?B?dDBMSzBzMkVrQTVQck9Ob010MFBlMnBaTjVIZng1dVRQNnc4b1ptZzRjYWsx?=
 =?utf-8?B?RmJhRG1FV2drdytKSHVpb01wQ1ZIa1lqTVp1bHNGU3V1SURtdUFVS1FuOTh6?=
 =?utf-8?B?ZXdvTzRBcGc5aE9yemtJcDFabng4czB6TUNTQ0JtTzJ0MElWczUzUVZrWjMx?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e13b7af0-9e43-481d-8241-08de0b7b3b88
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2025 23:41:44.2499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MoA9t15S+ttuFo1CDlpvQBNebSQapm9mo/tMaSRHewqJyZffXjncBnu2aK8f6Ff72s2QvMxtppMsudKlGRkpc7w2WhvVMlZo0Gi4kl+HTgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760485309; x=1792021309;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=FfeY4Kqs3icof5hC0ZLGsSk6TNURm3/UYpgEQTYDzTY=;
 b=cV9oIxQeNhhzy1hpDscxtoLvvRc1vK58LiRosuxdcZMpqfmmbRvKhX1z
 qUop0eZxbykWe7BA9oGnHyYeuc6vxlP+057OafM1QSEc01HIRhdMmcsOT
 bYPw39R9IhPTfb6pP21MtKqvFbQL1gznHdwEyu9cOFjgoGArlsiPIGE58
 mLlAxF6ftrUTsshMAP+Gu6PyGgNSkuxnhE4eisJUnU53qRdrybzdeNuf1
 EJouAyhjTQ/S3GqeoV54eMXSdYr90e0JGjPglXzfusZNQGt0xE8ZMWdPQ
 yaUqMaV0h/wLC14lLoS4Wp+N2DxpWKmm+Aks8G8gL8S+U/94V6Y0eGoPt
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cV9oIxQe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
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

--------------Q8Iif75a66tLKgC0JRdYdPeR
Content-Type: multipart/mixed; boundary="------------b2jv21YTyiTr0xQ4WDB7FEM0";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
Message-ID: <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
References: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>

--------------b2jv21YTyiTr0xQ4WDB7FEM0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/14/2025 7:11 AM, Michal Swiatkowski wrote:
> Building the ixgbe without CONFIG_DEBUG_FS leads to a build error. Fix
> that by guarding fwlog code.
>=20
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb1760=
58@roeck-us.net/
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---

Hm. It probably is best to make this optional and not require debugfs
via kconfig.

>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 ++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h | 8 ++++++++
>  2 files changed, 10 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/ne=
t/ethernet/intel/ixgbe/ixgbe_e610.c
> index c2f8189a0738..c5d76222df18 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -3921,6 +3921,7 @@ static int ixgbe_read_pba_string_e610(struct ixgb=
e_hw *hw, u8 *pba_num,
>  	return err;
>  }
> =20
> +#ifdef CONFIG_DEBUG_FS
>  static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, vo=
id *buf,
>  			    u16 size)
>  {
> @@ -3952,6 +3953,7 @@ void ixgbe_fwlog_deinit(struct ixgbe_hw *hw)
> =20
>  	libie_fwlog_deinit(&hw->fwlog);
>  }
> +#endif /* CONFIG_DEBUG_FS */
> =20

What does the fwlog module from libie do? Seems likely that it won't
compile without CONFIG_DEBUG_FS either...

>  static const struct ixgbe_mac_operations mac_ops_e610 =3D {
>  	.init_hw			=3D ixgbe_init_hw_generic,
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/ne=
t/ethernet/intel/ixgbe/ixgbe_e610.h
> index 11916b979d28..5317798b3263 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> @@ -96,7 +96,15 @@ int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 mo=
dule_typeid,
>  			 bool last_command, u8 command_flags);
>  int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
>  			     u8 *response_flags);
> +#ifdef CONFIG_DEBUG_FS
>  int ixgbe_fwlog_init(struct ixgbe_hw *hw);
>  void ixgbe_fwlog_deinit(struct ixgbe_hw *hw);
> +#else
> +static inline int ixgbe_fwlog_init(struct ixgbe_hw *hw)
> +{
> +	return -EOPNOTSUPP;
> +}
> +static inline void ixgbe_fwlog_deinit(struct ixgbe_hw *hw) {}
> +#endif /* CONFIG_DEBUG_FS */
> =20
>  #endif /* _IXGBE_E610_H_ */


--------------b2jv21YTyiTr0xQ4WDB7FEM0--

--------------Q8Iif75a66tLKgC0JRdYdPeR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaO7ftwUDAAAAAAAKCRBqll0+bw8o6KUj
AP9bQwe1grdDnbKm+9jA89SLgF2bzK/EM+K0MydjODyp0QEAoDPouV18uPSsacv/l+syx3vIh3Tz
5kHGimsb5g7Luwk=
=1wv3
-----END PGP SIGNATURE-----

--------------Q8Iif75a66tLKgC0JRdYdPeR--
