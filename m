Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B341B2B424
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 00:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEA61606B0;
	Mon, 18 Aug 2025 22:38:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L0nUhR6c5Y42; Mon, 18 Aug 2025 22:38:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0B5660665
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755556693;
	bh=U4gzGIjOjy0JLS0O6mtG7vzVGFVsZgLSsueoXHwlej0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=moMhXz6oinopl3dR5ZO2n+yEa4xN/DzeSia2SrgaBx5IEdm+dtcx6vHEDNG2hcyqH
	 gOtrri6eylmp9RL9ZoXeP1H3s8xKDcSIAz8JE1AWw1A0grqVvLi0jUZ5IbIgJm3/9U
	 dta4TKxA+bsi0IUe4Fe0hglD6kGZplBNguVlndj8w+B+ql/Yu/f5Bn5LNRbS8TQAIh
	 UH0B6s3u6vXnIsgEGwf3w8HVB7Gq/p9Pet9G5wqaIVruunXOTLnUh9Uyq/N2TqmRJZ
	 T9EEA2B/QwMYE8OQTn8EHqOqD5p0x28xubAvbKoESv7YpUS4QsqyYt8HKzIjP99/wA
	 gSeHlZaNa7MiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0B5660665;
	Mon, 18 Aug 2025 22:38:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C52F5E0A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 22:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABF9240683
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 22:38:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PhH-Ya2hfaET for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 22:38:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C36740677
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C36740677
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C36740677
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 22:38:10 +0000 (UTC)
X-CSE-ConnectionGUID: lCiFbrn8SYiCxWZyGHjr6A==
X-CSE-MsgGUID: SFAPlLueTTuPNSFPR23tJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="56818882"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; 
 d="asc'?scan'208";a="56818882"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 15:38:10 -0700
X-CSE-ConnectionGUID: Ro6IbzCAQwWjOsLx3YRPgw==
X-CSE-MsgGUID: xVYaY96gQ4628r2jyvApUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; 
 d="asc'?scan'208";a="168052194"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 15:38:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 15:38:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 15:38:09 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.46)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 15:38:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LiuiO+L6Uql+Qw65XgwAW/xaaa/KWg/7POyIaygJKGKAIYFCrqE/dZ7DZPgi67LgIrTYH+4Hvj5kjolWgfmWtTsx9pBLW+jmaZ0tFF5QnKhhv7pa8UV9QBufHCzrcT1zZX51/hceI8bUNZj39HMbQGdHdrgb4Ap42EgMVtaOpkNFKWjLIbqjh8TL/jQyQov1qJxBSl2MIJ6rbLBCznpjlBd/LsNBKhiEc/9thh9DTsrWnUoYFYT8KlX6SJsyOEmHhqzQLu+DhT/cbbPTj6fcxmp/ul+9nGYP0DDTVZc7dJhFhUd62kHFtJjej3p+HBFEeX+KpL1uoJE4KcdrdjDugg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4gzGIjOjy0JLS0O6mtG7vzVGFVsZgLSsueoXHwlej0=;
 b=EWaR6JpKNdv+jWVSFyHRAgSRLQKylGEPgqS0j4PI74jDwzDOoqIcdfr4ttLaRG3NMZ2wMLgek/r42RNhuLN0id7TqnCmnj9zqVcXdVG01P2iEjhT3V+Te00jCwVkMrjLSUGcCYfHKXZ64BOAA5Jm9cSCMAyMKzSivk4qukYgVZzOhmcJ8kicz3gebO8CdUa2KF6QSC0UYLT4I/QAqrRM8K7OpKK0wuc2rtnpjEVmMl5srmg3dqK2MmcqaBW0pbHTjKAIjzbyms0KJz43Cd2qTkppNtZqCyhx1xnGdBWDsQzZ6Ew17cSqgJ/UiUinc1YjqqdCPI+u4u2gr/2yqdm5+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB8503.namprd11.prod.outlook.com (2603:10b6:510:30d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 22:38:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 22:38:06 +0000
Message-ID: <474498f1-5ad3-41ef-aca4-16830ad208ac@intel.com>
Date: Mon, 18 Aug 2025 15:38:04 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: <vgrinber@redhat.com>, <netdev@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Simon Horman <horms@kernel.org>, "Marcin
 Szycik" <marcin.szycik@linux.intel.com>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com>
 <7f767a82-b70e-4520-a9cd-360949961373@intel.com>
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
In-Reply-To: <7f767a82-b70e-4520-a9cd-360949961373@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LUTRftresaCpLYo0yKkSRKvk"
X-ClientProxiedBy: MW4P222CA0013.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB8503:EE_
X-MS-Office365-Filtering-Correlation-Id: a0bef81c-6d45-4855-4e51-08dddea7e64f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTFKd2s3VmV6b2twZjVkRVFaSVNadFN2b0pCUHRZZTdXczRrVGZFUlhpTkRp?=
 =?utf-8?B?UEp3KzgrWVpFMnkyQThZUEZYSjl1RFBLd0pOWTM5dUl3SDU1WlpLU24yVzY3?=
 =?utf-8?B?N3BFbk4wcGJzdXRZbm9ydEtEQ2hDRzZaYTVNWTV3Tk5uSVVuMHZGd0ZUSENW?=
 =?utf-8?B?OW9sNGI3SnhzckdLcmsraEtOdHNlb3hrRjhWV2gyRUxQeHV6alV6Zi9tNUJE?=
 =?utf-8?B?enE1ZkVSMFJqL1IzOG9uMHpZSzU5RUM0VTVteko5V2NzQ1QyVFpubk55WnBC?=
 =?utf-8?B?N1BKNlI3OUlSQzlEVmdiaVVJR1R6SXlFSnc2MjM0NitnVEN1M3MvdXhTQ2VW?=
 =?utf-8?B?aHBQajFlWnQ5SVRlQ01adWdBdmRlK25xd3hjZ2xDMDB2VTJQY3FpWE5vclpq?=
 =?utf-8?B?RHhuamx2czhmTHNmTjM5NHBtTWZ0cDNCM3hQN2RpbEJISVlXT3A2b3lBUEsv?=
 =?utf-8?B?QS9yUFF5aktKZWM1ZGo5dUJORGpWNWVuSGhvMFY3VEF1NmhUVkgrV0VDMThG?=
 =?utf-8?B?UVRCOC9sT0hJc2t5T2JlM1psZXVRSjVjNk1ZeU90dE5PaXZhRHVwd0hHNUZW?=
 =?utf-8?B?YkVDMjBrbzhHeGlubm90NUNacVByck1vSW1EUGJCTmhBVmF4WVpqM3JCMUZI?=
 =?utf-8?B?aVpEdEZlT1I5K1NwYUtWWCtVWEZxaitJTkdVOWtBOXpCZndvbDY2enRURlQw?=
 =?utf-8?B?Uk9tM256L1lJa0hGZWJFbmorNWhOYlZJTUhMRzZuODRINDlDSC94dTNnemRF?=
 =?utf-8?B?VXZOM3dRQklRT2R6bjNPdTRZQ1pYc0pBSTBJKzBRdEY0ZERLMVB1ZlVhNytE?=
 =?utf-8?B?b1dLeDZyU2ljcWdJZmxvdFRiZGJtaEVsZk9WV1U3SzJva2dBOERyeTE5NmVv?=
 =?utf-8?B?MW9pMlByOFdObm5FYisyU0wzOG1ZZkdGZkhGYUZLdzFtdWZtbXU5ak16d3FY?=
 =?utf-8?B?ZjNIYU11b1lwMU9BVWFSc3krSDBxZlgzQ250eWdUNWFwbURnRk1wakVqQjFp?=
 =?utf-8?B?MGE2MmphRyt3MkFvbFpNUndZOGpNeTVTWXliSkx0d3dZbzh2ZlpWcDk3V3BY?=
 =?utf-8?B?QXRkUUgzUFBoZStCYi9ZUzgvQVIzNzBtQmVPVVNQeXFuelpFaG5JSHY2ajVQ?=
 =?utf-8?B?LzAxaUVOV2JGKy9ocWVHajM0RWUrajNGdjc0TS9KK2pIY1VnYmpPUVhHeGk2?=
 =?utf-8?B?cjR0YmQxSGdOYi9jOE80cWN3N29CTm1kUlZjd2F2UWR2cERZNTRWV1BJSFh4?=
 =?utf-8?B?VGFrSmZQSWpJTGJ2U2JwbitHR25zU0hmMDhpSGJCMWo4bGlWZXBZOUQ1VTVQ?=
 =?utf-8?B?UHR4cG81ZGdwOVpBK0I4ZjRYYTFkNUF3Zk1lZWZSUVQ1MEFBakFwRnpTTjFI?=
 =?utf-8?B?anNiTmVBbVZHeTd3Z3ZRUXg0VWw4bElWQmIyRndkeTcvQkp2dGlYMkhxd2xu?=
 =?utf-8?B?R0RPNzFmcHZNMHE0QXBZUVlxKzErRXNzcEZKdW9hczhTYnBaamlpTWNsb3Jj?=
 =?utf-8?B?UHpPc1pWa0ZQNU4rc01DT0ZPZFZnRVhOR3VEWldFMGhTaU9YNk5MZXJlaCtk?=
 =?utf-8?B?NlgvdkZIalBrc1NxdDVKNlNNYW5HNS83UnJjMHBvUzBHOTN1UHZGVmhFZ0Ns?=
 =?utf-8?B?WWdrakhrQ0dQdjlabDFhRmREcDl5aS9uVFdJY1J6RGNJV2dvSURaWmVHa0ht?=
 =?utf-8?B?M3lvb3NINEE2eWJSMS9SQVcwUjdzRFFHKzIzUXRiRHVpaWtpNmpwSURoNEh3?=
 =?utf-8?B?SEZaY3k0azluY0xYYjN4VytyU0ZlQWorS3llb3VnRWF1bHh2M2ExTGQ4K21Y?=
 =?utf-8?B?dmhoSEgzRGdLTHM4a3hIOVQ3bXVUZDRqelBsRlVXS1pTUm1JRklIZEQ0eVBU?=
 =?utf-8?B?c0tsTWk5MTBnbmwzMVhTWEs1aHNhVUVPRndyOGpjUmpOR3Y4WGYxTExjMGNz?=
 =?utf-8?Q?YA2gTKfn/NM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFFuTkVSREE1aDZzbFBzK1dvZEduaWRZVmVsdVFSVlpuYlF2TzBTQTRzVjJR?=
 =?utf-8?B?WEQvc1E0bS9XbjNhV0lINm9ESEQyWlJKRWVUMldqNjJTS1Zpc28zcGlvbnQx?=
 =?utf-8?B?cHJpNVJwTk9uQWhKeDVQdWhKRW02QTlFYXVabUhaVTk5ZjA2L3RnK2YyZmFV?=
 =?utf-8?B?eDRNS0tGTXJjVGNtZVl6RkhCVk0rMFVSZ3lhZWRaZVJhczJINXVuK1Vob2dS?=
 =?utf-8?B?di9IMUo0VTJJc2VVVGhmQ1MxTHhxQmczTlgvN1J5THk4aElLcFR1N1hUT0Rm?=
 =?utf-8?B?bnJvcE9NOHltN1BKWHJuUWVjcG5OYk5KRkVLWW1DQWJBQnZiZjdzU3E1UTZz?=
 =?utf-8?B?WE1PL1JZZFBKMHp0ZHVOWldZNjV2aHlQeWFhNlErYzkza3JJcWcrZnhDZWc1?=
 =?utf-8?B?aThBMm01cGRVYWxwZ2grTldJSWdmQ1dTVWhWYjlSemxIRm9KeUtMUVd3anN6?=
 =?utf-8?B?UllEVFpCOHRSQmdYUmNGRTNnODFiY21nclV2OW91ZlFkUkhaelZlNkdEcFhS?=
 =?utf-8?B?UGxqZ3VRYTRZMjFXK3pCTk9FZFhsK2orRDlINzNDNUFhZ0dpbXZhcHU1RG5P?=
 =?utf-8?B?OHhEbkcxUU9QbTM3UktYL25xVlEyZitaTGszMFlraHZDTGRXZlFaUGJXWTZi?=
 =?utf-8?B?MjA1QkZPdzRNYU5LdXpneXVyWXFzUThTazBjb2sxbXNZRVVvdlZ3MWJuNmJO?=
 =?utf-8?B?WmtKVmdVbEs1YUlMK3BkbmYxM0tRNWpXaGpobjBKZmZUQkdTblA2ZVd5SFRY?=
 =?utf-8?B?UXQ4S0NuRUxHS1dPTHFvcTNrdHJmUmF6TmE5S21LeUVOOEduTTE1ZTZqVXM5?=
 =?utf-8?B?Ky9LOHNlTEQ2MjVqUWZWOTdaVkoyZjI0Zjk0MHlsTi9KSzRRN01MclhsVGdR?=
 =?utf-8?B?ZzhvNStVMERGaExQbkE4bDdPTXlxTExCRk84N0x3NnpBSElkcGNyY0VlYVRk?=
 =?utf-8?B?ZjhCUUEzZmM2djNJZTh1V3V2ZElpVncyb1BUS3dhRHlNeHBCVnhNdHhkWmky?=
 =?utf-8?B?MWczeXVnQ2l6aW51S0lhd0k5c3RrbGczOFBhVVl2aC9pVGNIelJRYjVvZSts?=
 =?utf-8?B?a1NpYi91QnhHaEZhR3kxY0VEM1g1OW04MFlBa1BGYy84dzZRbUhwam43R1Uz?=
 =?utf-8?B?ZzFDZzRRcmV5STZlVlFxQ0RiSUkwMHJ2ZUlEUmlvU1RaTlQ2NEhiNkR5RUp2?=
 =?utf-8?B?NmpSWXl4bERucVh6U0hJQWZ2ZEdiTEl6MW1iNzc5NWlMcStva0R6d1pXQ3hD?=
 =?utf-8?B?WGJYaHQySVhkMVJiMGhaUVVBcExzRTNwUEIxbzdCRVUvaHZNcDJXQ1o3TkIw?=
 =?utf-8?B?ZnVDYklNaW4xY1RQWG54U2ZONVhIeHNkck9zc09ZSFNtekFzRDhBWVg4aDh5?=
 =?utf-8?B?Z09LdFVWa3dNTjZXL256NklFV3NOamRTM1VBV1JXNVliL2J2VjQvQ3NNbkVh?=
 =?utf-8?B?MlNBTlhjdUJBS1Z6UDdodWl3K0Z2K2E5OFhhUElrSWNZK2tGOVcveTBEanc0?=
 =?utf-8?B?TFJKTHloOUxLN3BacU1CbHVVcEVqSk94SFQvQ2ExenBCczhSTHZiMnBNRXBr?=
 =?utf-8?B?Qk1ITDYzMU9aZnZESkliZDllQTMzbm5vU1JySUpuQ0VIaUpOYW5WSlVraFU5?=
 =?utf-8?B?cHZiVzJxSHh2K2VrMjZCL3FXTkwzbk04Zi9TYTF1ZmtLK3R3cllsNDBhdXVR?=
 =?utf-8?B?by9WV3JBeTkwUzBzMlBxR3ZsaGRnQ1UrdjEydTgzUmZLNkJLUEI5WXdkR2RN?=
 =?utf-8?B?YitoYnpxb0VlNVZrYXFUdGsyNURDWG9SRW53VGF2YVkwckpjelVWeFQyMjFp?=
 =?utf-8?B?U1JBcHpDSmZrbEI0eFFObTdGM1VIVVF5ZVNqK2U2VzZRWFMrZis4Vk9CK3hE?=
 =?utf-8?B?K0dXY2hReHF0QWpuK3I1ZTNXU2FPTjRaT1E0TjlJRG1zV0Z6SHdzRlpQb3VR?=
 =?utf-8?B?N0JDMUJDTENPNkxLbGZ1ZVMzVEtXL0s1LzFSc2JJM2x2ekRwWS9La1daVVR2?=
 =?utf-8?B?bGRBSnRWdlRINmcveU9TaGttVDVKeUowcHYxNWMzeVNSMFhEaDZyeGdKY09p?=
 =?utf-8?B?Ui9iajk4K1Y2VGJiVXkvaWhJZ0R6UG9JVlRHalhMbFh3YUFvNGJRWlVHWExy?=
 =?utf-8?B?WmtCcU5udVhRak5GclEwQS9MaDgvZmJhZ1NFVG82NmVWRjg4WTF3eC9Cdm9Q?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0bef81c-6d45-4855-4e51-08dddea7e64f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 22:38:06.2972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ehYqVcczzuFvPF+LpENhpFvYTY3JMx2lO00JpCCR5zEjJBuUJ+VcrJNnUxSwponU+J2xDMmv5LhQR6CeCFNvkDopGnCrV1QiQc1VlKllDfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8503
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755556691; x=1787092691;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=7nebk25gs7Tfd0WkOQqYC8CkFOuEhzFGp56TlScMpL0=;
 b=MD/Fr8y56BCY9g429VNAqG103vKCXypvvf100PpaSOAc/w9jWYddlcpH
 +3qqrFf0Xtto6dbzQm6P8zvrAvuJwuVNwuRYf24DsQM9dj/pavJNR3CYp
 9XCR0a4RNmwuf+LX2l4RGZaMoYNVNiysNqDfFjMyEJXAu9wp76Rq+hs4Q
 Agw9Worgm74DoNjCNqBX2+1Xnb+SqLzaWqCpvvRX77h93uNU4p7mQ7N2V
 F+kwcFXEhFFAuQDL01o2Vgc0wNYi15eO9xQERPWbBWcVcbdm+iOrpK7Sc
 MCPthBv0nLSsmhnfECCVMawPochwKnD/lSHdkPt/C1YsdKPA5DoIcccQS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MD/Fr8y5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix double-call to
 ice_deinit_hw() during probe failure
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

--------------LUTRftresaCpLYo0yKkSRKvk
Content-Type: multipart/mixed; boundary="------------EGJt6KHZSArp85dyQxgTBVki";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: vgrinber@redhat.com, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <horms@kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <474498f1-5ad3-41ef-aca4-16830ad208ac@intel.com>
Subject: Re: [PATCH iwl-net 1/2] ice: fix double-call to ice_deinit_hw()
 during probe failure
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com>
 <7f767a82-b70e-4520-a9cd-360949961373@intel.com>
In-Reply-To: <7f767a82-b70e-4520-a9cd-360949961373@intel.com>

--------------EGJt6KHZSArp85dyQxgTBVki
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/18/2025 3:27 AM, Przemek Kitszel wrote:
> On 7/17/25 18:57, Jacob Keller wrote:
>> The following (and similar) KFENCE bugs have recently been found occur=
ring
>> during certain error flows of the ice_probe() function:
>>
>> kernel: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> kernel: BUG: KFENCE: use-after-free read in ice_cleanup_fltr_mgmt_stru=
ct+0x1d
>> kernel: Use-after-free read at 0x00000000e72fe5ed (in kfence-#223):
>> kernel:  ice_cleanup_fltr_mgmt_struct+0x1d/0x200 [ice]
>> kernel:  ice_deinit_hw+0x1e/0x60 [ice]
>> kernel:  ice_probe+0x245/0x2e0 [ice]
>> kernel:
>> kernel: kfence-#223: <..snip..>
>> kernel: allocated by task 7553 on cpu 0 at 2243.527621s (198.108303s a=
go):
>> kernel:  devm_kmalloc+0x57/0x120
>> kernel:  ice_init_hw+0x491/0x8e0 [ice]
>> kernel:  ice_probe+0x203/0x2e0 [ice]
>> kernel:
>> kernel: freed by task 7553 on cpu 0 at 2441.509158s (0.175707s ago):
>> kernel:  ice_deinit_hw+0x1e/0x60 [ice]
>> kernel:  ice_init+0x1ad/0x570 [ice]
>> kernel:  ice_probe+0x22b/0x2e0 [ice]
>> kernel:
>> kernel: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> These occur as the result of a double-call to ice_deinit_hw(). This do=
uble
>> call happens if ice_init() fails at any point after calling
>> ice_init_dev().
>>
>> Upon errors, ice_init() calls ice_deinit_dev(), which is supposed to b=
e the
>> inverse of ice_init_dev(). However, currently ice_init_dev() does not =
call
>> ice_init_hw(). Instead, ice_init_hw() is called by ice_probe(). Thus,
>> ice_probe() itself calls ice_deinit_hw() as part of its error cleanup
>> logic.
>>
>> This results in two calls to ice_deinit_hw() which results in straight=

>> forward use-after-free violations due to double calling kfree and othe=
r
>> cleanup functions.
>>
>> To avoid this double call, move the call to ice_init_hw() into
>> ice_init_dev(), and remove the now logically unnecessary cleanup from
>> ice_probe(). This is simpler than the alternative of moving ice_deinit=
_hw()
>> *out* of ice_deinit_dev().
>=20
> [1]
>=20
>>
>> Moving the calls to ice_deinit_hw() requires validating all cleanup pa=
ths,
>> and changing significantly more code. Moving the calls of ice_init_hw(=
)
>> requires only validating that the new placement is still prior to all =
HW
>> structure accesses.
>>
>> For ice_probe(), this now delays ice_init_hw() from before
>> ice_adapter_get() to just after it. This is safe, as ice_adapter_get()=
 does
>> not rely on the HW structure.
>=20
> I introduced the order change by
> commit fb59a520bbb1 ("ice: ice_probe: init ice_adapter after HW init").=

> You are right that current driver does not yet utilizes that, but it
> will in the future.
>=20

If you have a better fix, I'm all for it. The current driver code is
buggy at least in the error handling phase.

>>
>> For ice_devlink_reinit_up(), the ice_init_hw() is now called after
>> ice_set_min_max_msix(). This is also safe as that function does not ac=
cess
>> the HW structure either.
>>
>> This flow makes more logical sense, as ice_init_dev() is mirrored by
>> ice_deinit_dev(), so it reasonably should be the caller of ice_init_hw=
().
>> It also reduces one extra call to ice_init_hw() since both ice_probe()=
 and
>> ice_devlink_reinit_up() call ice_init_dev().
>>
>> This resolves the double-free and avoids memory corruption and other
>> invalid memory accesses in the event of a failed probe.
>>
>> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
>=20
> The blame should be on me here. But instead of fixing current bug in
> a way that I would need to invert later, it would be better to fix w/o
> order change. (If unwilling to wait, simple revert would be also better=
)
>=20
> I would like to do [1] above, either by my or Jake hands (will sync).
>=20

I hadn't noticed your change when looking through history. I am fine
with either a revert, or dropping this fix from the DDP fix and
submitting that separately. This issue only occurs if probe fails at
certain points and cleanup logic is triggered. That should be rare.

Alternatively I'm fine with reverting the change if we want to get this
potential issue fixed now.

>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/devlink/devlink.c | 10 +---------
>>   drivers/net/ethernet/intel/ice/ice_main.c        | 24 +++++++++++---=
----------
>>   2 files changed, 12 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/driver=
s/net/ethernet/intel/ice/devlink/devlink.c
>> index 4af60e2f37df..ef49da0590b3 100644
>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> @@ -1233,18 +1233,12 @@ static int ice_devlink_reinit_up(struct ice_pf=
 *pf)
>>   	struct ice_vsi *vsi =3D ice_get_main_vsi(pf);
>>   	int err;
>>  =20
>> -	err =3D ice_init_hw(&pf->hw);
>> -	if (err) {
>> -		dev_err(ice_pf_to_dev(pf), "ice_init_hw failed: %d\n", err);
>> -		return err;
>> -	}
>> -
>>   	/* load MSI-X values */
>>   	ice_set_min_max_msix(pf);
>>  =20
>>   	err =3D ice_init_dev(pf);
>>   	if (err)
>> -		goto unroll_hw_init;
>> +		return err;
>>  =20
>>   	vsi->flags =3D ICE_VSI_FLAG_INIT;
>>  =20
>> @@ -1267,8 +1261,6 @@ static int ice_devlink_reinit_up(struct ice_pf *=
pf)
>>   	rtnl_unlock();
>>   err_vsi_cfg:
>>   	ice_deinit_dev(pf);
>> -unroll_hw_init:
>> -	ice_deinit_hw(&pf->hw);
>>   	return err;
>>   }
>>  =20
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/e=
thernet/intel/ice/ice_main.c
>> index 0a11b4281092..c44bb8153ad0 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -4739,6 +4739,12 @@ int ice_init_dev(struct ice_pf *pf)
>>   	struct ice_hw *hw =3D &pf->hw;
>>   	int err;
>>  =20
>> +	err =3D ice_init_hw(hw);
>> +	if (err) {
>> +		dev_err(dev, "ice_init_hw failed: %d\n", err);
>> +		return err;
>> +	}
>> +
>>   	ice_init_feature_support(pf);
>>  =20
>>   	err =3D ice_init_ddp_config(hw, pf);
>> @@ -4759,7 +4765,7 @@ int ice_init_dev(struct ice_pf *pf)
>>   	err =3D ice_init_pf(pf);
>>   	if (err) {
>>   		dev_err(dev, "ice_init_pf failed: %d\n", err);
>> -		return err;
>> +		goto unroll_hw_init;
>>   	}
>>  =20
>>   	pf->hw.udp_tunnel_nic.set_port =3D ice_udp_tunnel_set_port;
>> @@ -4803,6 +4809,8 @@ int ice_init_dev(struct ice_pf *pf)
>>   	ice_clear_interrupt_scheme(pf);
>>   unroll_pf_init:
>>   	ice_deinit_pf(pf);
>> +unroll_hw_init:
>> +	ice_deinit_hw(hw);
>>   	return err;
>>   }
>>  =20
>> @@ -5330,17 +5338,9 @@ ice_probe(struct pci_dev *pdev, const struct pc=
i_device_id __always_unused *ent)
>>   	if (ice_is_recovery_mode(hw))
>>   		return ice_probe_recovery_mode(pf);
>>  =20
>> -	err =3D ice_init_hw(hw);
>> -	if (err) {
>> -		dev_err(dev, "ice_init_hw failed: %d\n", err);
>> -		return err;
>> -	}
>> -
>>   	adapter =3D ice_adapter_get(pdev);
>> -	if (IS_ERR(adapter)) {
>> -		err =3D PTR_ERR(adapter);
>> -		goto unroll_hw_init;
>> -	}
>> +	if (IS_ERR(adapter))
>> +		return PTR_ERR(adapter);
>>   	pf->adapter =3D adapter;
>>  =20
>>   	err =3D ice_init(pf);
>> @@ -5366,8 +5366,6 @@ ice_probe(struct pci_dev *pdev, const struct pci=
_device_id __always_unused *ent)
>>   	ice_deinit(pf);
>>   unroll_adapter:
>>   	ice_adapter_put(pdev);
>> -unroll_hw_init:
>> -	ice_deinit_hw(hw);
>>   	return err;
>>   }
>>  =20
>>
>=20


--------------EGJt6KHZSArp85dyQxgTBVki--

--------------LUTRftresaCpLYo0yKkSRKvk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaKOrTAUDAAAAAAAKCRBqll0+bw8o6KFu
AQDbJKWkOqEd7dwOph4KBn9CU+xCuss65R3Gu59XilK6ogD+IXO1Zb/fSLwd9pUp8AZdTvJywH0Z
4+MqrxPwCriCEwg=
=AhV1
-----END PGP SIGNATURE-----

--------------LUTRftresaCpLYo0yKkSRKvk--
