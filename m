Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 001AFB1DFE2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 02:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 362B080B69;
	Thu,  7 Aug 2025 23:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hnbueQZiuFF9; Thu,  7 Aug 2025 23:59:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5325D80B99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754611188;
	bh=UFu4hbvO4xZWSbiYJAq7Tg+X7+CBWFWRO71YePeT2GA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1vHByzq6rCAjf5l5DudbV0URRRqs1L7G/hc4IFruJ+ZK/TPr989TMUJB1o9PxIxXn
	 mjRna7dx7fyiAn3KjVnIdtnd3QpZtCvxwtsR+MgqgskB2SWoXqshekVWC5pA3BdJH+
	 ZOLKLe2G77C++P/jTMe8ZwrJ+AIsh7pBsXtzzG5zx86jclRE6esMdl0CFoTyejAGkt
	 ahoHFkiYF5K0wUB4fojVNQ7alhN2ThIhCEsSi44KpP1YJCT2B1v2CZd6tYnec1ctl6
	 KOsIiHZjTJ7H9RRJcvJYRxozeAMT34XjSDfwu+JjF8czyZhPzGERdiWPiC5fKtRgxR
	 eTU54JO8bAIwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5325D80B99;
	Thu,  7 Aug 2025 23:59:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A80831
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 23:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4577B6085A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 23:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id faTI0kNQ9_6U for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 23:59:45 +0000 (UTC)
X-Greylist: delayed 344 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 07 Aug 2025 23:59:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5D29B607FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D29B607FE
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D29B607FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 23:59:45 +0000 (UTC)
X-CSE-ConnectionGUID: X7qQbwT6TiyRIGotJvxlhg==
X-CSE-MsgGUID: C34GF7dKQiGZ7Easgo0SBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60765781"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; 
 d="asc'?scan'208";a="60765781"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:56:40 -0700
X-CSE-ConnectionGUID: 2NaMVMAsQbSQvNynhcs8qw==
X-CSE-MsgGUID: 70T+ZCevTw2q1TExZ6YiQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; 
 d="asc'?scan'208";a="165206250"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:56:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:56:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:56:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.64)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:56:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tTC8VUrwEiKh8iX6RJyZ/RD6xysC5VqR8GFr5sNGPPe/6y+d9yX/NBASDIXtQiwomV3F9yeb8tH0jnJUpMNEhmsHCcAi2YEE5u0rm/BZBg39HXTFNZjOowOE/CeT59fPFeJzbq+Eu7VDwGYXLxyg7FzCmrfJyNTy2F13SE39ZAQGh1VLoZ7PcfvBaCxDHv5onnAtVRSo6MQAyoOPu9bIwbwwxcp85NBrCLahTPPjHaGDWlZ9fgG80XFK4QQHfQus00b2DhQbC1eB3QSt75EsrUHoZvlRbDKZWsPTLtX/2ezce5A7tIVK7Nl4iJwbo+nTy9MJG9YVLvC77bMgUsPjnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UFu4hbvO4xZWSbiYJAq7Tg+X7+CBWFWRO71YePeT2GA=;
 b=bV6Rkut6QrYar/xapo09Rv3IIwuC072bpZwBQdjPTY4zzLPt1uGz+WhGPHGoYpSE89fVXe5xTq71EB1rWgIHtUTmnQxSR+kf4bKZE6Gqh818Qk5wBJABl+fRebsRBzF7TwVIMtLzRzQ/gJJLvBAKTqvXkuhRrts/2v36mQlbF/oNkj1O0LhVi7EtnfniwJ0pIuHg/jwvS4v/zFwRVn+ZkFyGB4BThttjeZKS0Q8kgXk6w/N2DS+xspGkFW8eDOV+5Xk5at62jCPXTlYjgIjulPF1MyKsgN/AtMJiVm9nR4xnDo8lxKfteecUaPoH1tT63/r+pWpnE1OdMB0GOaWxUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB5988.namprd11.prod.outlook.com (2603:10b6:208:373::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 23:56:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 23:56:31 +0000
Message-ID: <afb633cc-b399-4610-9fde-ee4e1984f790@intel.com>
Date: Thu, 7 Aug 2025 16:56:29 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
 <9e72404e-ab66-43dc-8065-1c7008178db6@molgen.mpg.de>
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
In-Reply-To: <9e72404e-ab66-43dc-8065-1c7008178db6@molgen.mpg.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZgRkHRmu4st7XLfvDlO4ihYo"
X-ClientProxiedBy: MW4PR04CA0175.namprd04.prod.outlook.com
 (2603:10b6:303:85::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB5988:EE_
X-MS-Office365-Filtering-Correlation-Id: 520d4c7a-411c-43ff-3431-08ddd60e0855
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGpPVjNpR0dIWWh4SkhSek1jNk5wbjRXalY4b3lqTW9MZW9lUjFCSDUwYnF6?=
 =?utf-8?B?Z1I3bjFrR1dZamt1c0dMaTg5M29uNlZldjBsaHJET25wbFpRTkJneXhZTGlL?=
 =?utf-8?B?djBXWWJZbW54UEcxOGVVVVc0SjNYYXBWY1pncjh2L2QxYlAxd01SRmtWcTN2?=
 =?utf-8?B?dW51MVlsN1NWQXl6NVg5UFFEL1JXRS8zZE9CckNsWk9VNmhWZmxhUkdXNjVQ?=
 =?utf-8?B?QW5qV0ZBZlFCR1d5WE9lZzJTcHFta0k3OTlFVWhId0J1Vko2NWpwNU96OWpn?=
 =?utf-8?B?aGtqVktiTUQ2VHQ4Mld6RWtLcVRGM2c4ejVjeUpMdGRac0tLNWlSVGpRWjhR?=
 =?utf-8?B?Y1M3bzBWYmVIeExOSXhhaXhnSkJmWlpIQzc2d08zTnNaNFBsZUR4ODhMcG9Q?=
 =?utf-8?B?VXlQaitjNENlWTVRWFp2SzBPVkVyY3lXMUlnSW1oMVU3TVF5QWZiTDFhRFd1?=
 =?utf-8?B?Vmk1NWNycE9Ha1MxOGt1VVE1K0hITXJNQnlyZW9UWTJ5QUVnVThpRnlhV1Ja?=
 =?utf-8?B?UE1EeVVQSUZ3ZWgvbSt5aE9XZlRXdXgwYnNsMXJRbmtlNGRla3l0d2NiWHh2?=
 =?utf-8?B?cFdLS1BaSXZsby92L21LNUlCL3ZUWURFcW44TUkvZTNRUE5IWldUVWlWWnlM?=
 =?utf-8?B?OC9JWHpmRDB3R3VlK2ZvelQ2R0FIWkZIZDVnY21yRUg5UUd1SFI1SktZSnkw?=
 =?utf-8?B?T0dXc0diZDR6bGlLSXBpdFFHQW1qc1V4SmM5Z21mUXFZOEdNdWRKODRHbU92?=
 =?utf-8?B?cUZqdDJlYWdhQWlwZi9hRkdwTXBjeGpaV2R4UnFPOXVJbXhESUkwTWdyYnRt?=
 =?utf-8?B?UnVDSStKdDNVYU9Db0ZiYStRT1VkcGNjdjUyLzVZRWZnYjlYdGFrRDIzdDM0?=
 =?utf-8?B?cWxzYXRTbHY4cmk1T2JvK3E0Z0Q5Wm5xaGVtN0lhYm83RjluMVltMjBBWDZM?=
 =?utf-8?B?MXovb2VGeWNOdURuQmMyWXNGeFpIMTN3ZlplZHh4VVFoNjVrT1k4N09rYS9s?=
 =?utf-8?B?TGlXbDlNaXRzZXhUZTAwbURhdi9kbUxnWHF0L1kxVTlUcTY1VnJxOTJxLy82?=
 =?utf-8?B?T2RNY0pJczZBbjIrUDFYRGhFZVZIc3d6MWE0NFJtb1VGU0ovbTJ3Qm14bEdU?=
 =?utf-8?B?dkxnKzJGT3hVZlhhQnRQWkJWcUtVd0FuakhxUDF1TzQwM25zeUgyNXdDVFA4?=
 =?utf-8?B?cjhIZk4zUXJYSkRuWk5rWWZWMm1hQ0NJWnFwTlJ0a1B6OWNCeVlYWlJtSWYx?=
 =?utf-8?B?dUUwVHZkVlFqZGlJd1JyVFYxN09DN1BCQzBLMEh6Y3BUZHU2MEZCMFpFNEZm?=
 =?utf-8?B?UkVISFhGVVJkRUV5VmZKVU12Ty8zSGpBMlBzUGZMbzAvT0JZemp1NEtjT2xr?=
 =?utf-8?B?N2huVzU0WVRrb2JDaG1hNk1EaGhLVzlMNW9RbGIwR2l0eVBlbWNCMjJKYXlP?=
 =?utf-8?B?L2wrbGhieHpibGtxOEQxaTdiZ3RPbnptenB5WFY4YUZjT21HL0Vseko4TWpt?=
 =?utf-8?B?UENtSDlnSWxrVnNDMzFVQWJ4Wi9ZcjRaMVFMU202S1pEQ1QvQUtza0ZsZW5W?=
 =?utf-8?B?OWJJcE5XQXlHdytLa1RKdU1VYlk0Z1U5NUVMZU55dGdaK1pPclI2Y0crM1JS?=
 =?utf-8?B?TC9xZm1aL1pndWxGUXZ6VVI0KzJkZjlNelJlT0dWUDNRT0dFQkNQRGVXelBD?=
 =?utf-8?B?Wk9jZ3M0ZGYxWEdpUTdjNmJhaGRGS0JYRWFUaXNVaGFCaXZwSHJhU20zREtW?=
 =?utf-8?B?V1VzOTZqQ3NXdjJQVXA4OTJCTGVsL0VDNmxJNUlmYzJZNHd0UkVaaGxLLzlU?=
 =?utf-8?B?ZEkyNDhwSUdNMVVqc1B6RDhaaDk0bW80OFltNkIrbTRSZTNDUWpOaG1weGln?=
 =?utf-8?B?K1hJR3J2ai9BQkJhdk5PNkRyajlOb3NQZ20vU21IVlJBNnBBWUhTaW4zdlJ4?=
 =?utf-8?Q?+xoZzP7Rrj0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUUxajJvUUI4NmowWXlOZHdHeUdTMkhNdXFud2xudGw2U0JIUGlJZGNyNmVV?=
 =?utf-8?B?d1M2ZjFpSXRRaHFpK2RlQXROaFhackdaeWc4Slk5MTEwWHFvbkFmV2tFbE1r?=
 =?utf-8?B?ZXozRnlHWEVLR2ZRRStGN3Q3VGkxbXEzb3FJUmJ4amR4M0tmQXloWDF0bktv?=
 =?utf-8?B?MDlpclpySWlsVHRyU0dvSnF1RXVUR0Jpa3VTWGh4eXlnVWN5eTZJU1g3RDBR?=
 =?utf-8?B?YVZvR1FjdVNCMDcxRlVDdHk3UzRsbVA2QVJreUtUc3pBRmtCaFhXQkZwT3dk?=
 =?utf-8?B?M2lFbU1WMTNNY3c1dGR5K2Q0SWRVZnJKc0xzcnptZlVzb2Z6WkgrSktzS3Vt?=
 =?utf-8?B?a3B0cVFSbVVkMnZKajJGWXQ4SU5ac3JHNXRXV3hHYzBvMjBGeC9KaXcxbDFU?=
 =?utf-8?B?S2JyaVpCc05wcDVDL2lGNzcvWktkRDZPVFBPOEdSamNHYjQrVVhpMWtXYk9p?=
 =?utf-8?B?VnFzeEpHSGsrODJnZ2xBWkRDL1kyVGtOcEpEYU5jNkdGYkVQWDlTSFpNMHlM?=
 =?utf-8?B?eU41OUNHRWVIWjQrbWtnWENMVzBtb0J6dmdYS3VnbGZ4MmdDQjdLeWpnOS9C?=
 =?utf-8?B?TGlCVnV6bEVpRTJJNmVhNEZEamVFQjlxOC9xVHpBbFpWSTJDNU1QSGNvdUhP?=
 =?utf-8?B?K2tjTUUxOU55RmpuQXFNd1pjbE1zc0JRS0pJcHNDcnordnhYY25VME9mTGRO?=
 =?utf-8?B?YVpMazFOS3JJUk9FWHVEdkdXZlFObWNRcWgzbWVoZWVkWVlkYk5CeWlqOTVq?=
 =?utf-8?B?S1NZUXBoNnVOOHBCZHdjYyt1djNGWVNyU3JaZ0svdW9tTG9mZTJPZFBFOFNT?=
 =?utf-8?B?RkNJY1FONzdwZlBmb3NRV3p5bzJwMFNPLzlZQ3d4L241NFJLSFJrU0JVQ21i?=
 =?utf-8?B?MnFKSGxjem1PSXBqZGxLekVxT0Y2bU9VQXVCM2E1a3pGc2VqVDY5ZjFZYTlD?=
 =?utf-8?B?WUF6THRCc0swdlNmcmxKSCtQbmtSbVUrWUJpUnN3ZnBTS3ZZWUplWkh0M3FL?=
 =?utf-8?B?TnZHR2Y4N05OeUtjOHVseVVkdlRkZDdrR0VUTGt6SEhjdEZESDdPbGtvUUFF?=
 =?utf-8?B?MitjcUIvZHNCM2VpSmVqOVRkclN2b2l6cWJkNngvS3dibEl6NHE1dGJPWFgz?=
 =?utf-8?B?cUpreitmVzBoMU9JUUFtMWQrZDdFa3Q0ay9ONitySTU2ckVtTUNWVXUvdGk5?=
 =?utf-8?B?bDZpTG5HN3FjS1Z0Y3pzdWhPWk5udEhGd25RS2ltWjQ0WG0xaGxhNFM4cEdv?=
 =?utf-8?B?K3VJRVpvMmtDWDVWVCtvNGszbkxlQmx1YzBkdWk3TzdMS3hXWVNjcUhya1Rv?=
 =?utf-8?B?aGF6UTIzOTdVa0Y4UnkwRFJFcUV6aU1aUWNIaXkrcUYyT2ZBSyt4S2Mrb25y?=
 =?utf-8?B?TDd0ZWNjUnYxakpJQXV1cjl6VWF5MitlUnhMWnFUWGM0MlJISmVnYW1xdE53?=
 =?utf-8?B?aUVoalp2M0lRbk5hTVdhcHFDWitYSm1rNUpFYkh3eXJoeUdhbTJCSVgwMEhZ?=
 =?utf-8?B?aTdXd0swWjQxY1VhN2RQczZDMVY5WEtnOUI4VmJXMjRrWFdFV04xUllab01G?=
 =?utf-8?B?RHBBNHZqYmhkdGQrRVJIdHVKeHJEM045b3hzb2pZYkhVTTZ6ZmZuNDhacHdK?=
 =?utf-8?B?Yk1CN0xOSVlvdzh6R3hDYUFKdTA5YlUzc2ZYWFRWaklMYlcvTFZWTEovc211?=
 =?utf-8?B?a3lxd1NOaWR2dWp0emh1YkRxeFdPVDB6TS9jQ0hieUZLUU5WdXpRdUhGN2ZV?=
 =?utf-8?B?R3N0eEpLRHgrejYzWUMycmJnVkpNbXVEYlRZL2JQWGlVeUFKN2JxQUpmVkpu?=
 =?utf-8?B?ZXBmZXRRUk0zREg3WmxCK0dEdVRzeVVPSitHWnFzdk5IVlZDZEZBbFlzMDEv?=
 =?utf-8?B?RW1Bd2NtTWxWd2hqOWhWNFloMlZrUGhvbFBOTzVuYnV6S0lKRS9ia2svWjNY?=
 =?utf-8?B?MjBlRHdLSDU3QUJ5Nm02NVFJUEFKSnc4R05aQ2svU0FNZ0xJaU8yUFYrRlZO?=
 =?utf-8?B?cUtWRE1HMmp3S21CY2UwWUJPVFlUUytvZXFpbU1yMGx0WEpCNW82QW9qa1BT?=
 =?utf-8?B?UHQ3OFhob2hsYlB5MERtY3hsSGwxTzRSSmdCWjZWaGtDOFZyRVRmVHU1dXhY?=
 =?utf-8?B?QjliWlBKNGR2OHpjcTM5NHphQjBXZGlWTkF6dzZPVjZFNW55WVNRb2k4Mkx4?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 520d4c7a-411c-43ff-3431-08ddd60e0855
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:56:31.8027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A7WqlaG1smgB7XQBVFi+YgOKm6UxiIk51hVjG3aU0gev9d+nrMxv7BcbUFAKCqbB+umsouGF26w/nyNH1KDlsFBcf3tFW+qqsZoPxonK9YU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5988
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754611185; x=1786147185;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=sWIsMyM2TaCaPdJ6LbTzMlNOLLp2fXt1Ajn7gCyV4so=;
 b=LtS5jb10R34xt/kxAxz/qTwNUaVmaUzFsWLLiNDzLrCo58KBgWXOwcs4
 zdJruO18e956DWLRjMBsQhis9VIC2cYQEvsIse7DAQVOH8eq0xMR518gP
 uG+iyv7aKht1luDDjYy0N/k8QoqQEcm95cV4P28/9yL3sIWakoixw5tZW
 YieEyU4B/KRPSU20ck2jcYCPcNGzl52Coeje17nMfq/jl9ouJnjqZoKdw
 x7IEmHgeh55kOXPyVNPnRTnbLHUjJXZDO2iYdSzaD2APqRYDPCDpVQmfH
 Hbv7qb4uihvTe4GO5WyXHRSmqTarNfz9oUby/hmIwsvrvjMmklOliU71w
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LtS5jb10
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
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

--------------ZgRkHRmu4st7XLfvDlO4ihYo
Content-Type: multipart/mixed; boundary="------------mNtMO9Sqzd5BbttNYr7V5dQQ";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <afb633cc-b399-4610-9fde-ee4e1984f790@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
 <9e72404e-ab66-43dc-8065-1c7008178db6@molgen.mpg.de>
In-Reply-To: <9e72404e-ab66-43dc-8065-1c7008178db6@molgen.mpg.de>

--------------mNtMO9Sqzd5BbttNYr7V5dQQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/7/2025 2:29 PM, Paul Menzel wrote:
> Dear Jacob,
>=20
>=20
> Thank you for the patch.
>=20
> Am 07.08.25 um 19:35 schrieb Jacob Keller:
>> The E810 device has support for a "low latency" firmware interface to
>> access and read the Tx timestamps. This interface does not use the sta=
ndard
>> Tx timestamp logic, due to the latency overhead of proxying sideband
>> command requests over the firmware AdminQ.
>>
>> The logic still makes use of the Tx timestamp tracking structure,
>> ice_ptp_tx, as it uses the same "ready" bitmap to track which Tx
>> timestamps.
>>
>> Unfortunately, the ice_ptp_ts_irq() function does not check if the tra=
cker
>> is initialized before its first access. This results in NULL dereferen=
ce or
>> use-after-free bugs similar to the following:
>>
>> [245977.278756] BUG: kernel NULL pointer dereference, address: 0000000=
000000000
>> [245977.278774] RIP: 0010:_find_first_bit+0x19/0x40
>> [245977.278796] Call Trace:
>> [245977.278809]  ? ice_misc_intr+0x364/0x380 [ice]
>>
>> This can occur if a Tx timestamp interrupt races with the driver reset=

>> logic.
>=20
> Do you have a reproducer?
>=20

Not reliably. Pretty much any time you have a Tx timestamp occurring
simultaneously with a device reset could trigger it. I believe this was
reported by a customer along side a firmware update which triggered the
EMP reset logic on one function while another function had active Tx
timestamps going. I wasn't able to reliably reproduce the issue on my
setup yet, but it is quite obvious from inspecting the reported panic
which I included here in minified form.

>> Fix this by only checking the in_use bitmap (and other fields) if the
>> tracker is marked as initialized. The reset flow will clear the init f=
ield
>> under lock before it tears the tracker down, thus preventing any
>> use-after-free or NULL access.
>=20
> Great commit message. Thank you for taking the time to write this down.=

>=20

Thanks,
Jake
>=20
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>=20
>=20
> Kind regards,
>=20
> Paul


--------------mNtMO9Sqzd5BbttNYr7V5dQQ--

--------------ZgRkHRmu4st7XLfvDlO4ihYo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaJU9LgUDAAAAAAAKCRBqll0+bw8o6HHp
AQCPDA8/cPruUpf1192zx8bRJBX+uw07zInmpGYJ4/jSqAD/d5DUM0yPbWCHDE4U+3QOsHe0bdy/
nfKuFXlJCdoILAw=
=s84W
-----END PGP SIGNATURE-----

--------------ZgRkHRmu4st7XLfvDlO4ihYo--
