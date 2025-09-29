Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 210C9BAAADF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 00:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A06A60C21;
	Mon, 29 Sep 2025 22:13:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XKf4jdFZRnli; Mon, 29 Sep 2025 22:13:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90AA260C22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759184013;
	bh=0T4zP0i0Ngl9ha9gquv4RUd+y6BAwEOMzZdZujaq0dU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oaNE1KN5ZXM5ekyLv+pIRp0rwKL4+ztAwAsbPFiYuwp2tzXnbsy1Js6S5wjRUxbIp
	 uesSwzzaHIMobbxs+bW0DjlDvuqeHHGhCulaqHqaD4HfzgQqMKV+R26efFfs32V/Vf
	 4gMBVQHkDiYB0fdh0e5na7jnG6P9bReRHhgwhI6cNc1Livg6HXn+C9V320/MGv5elO
	 brsVW4l8DB3gssqkpaEDI71FuvzXWXVYS4+SfceF9dZ4j+maa0xq10RLi0uuMMbdhv
	 RM74cq9je0akfwfqF5lxkF0y13/m8gaHmFDQhM5grXEMTlGPOCSQPiYBhApQMDkUZx
	 Dp7ORwG/gp0VA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90AA260C22;
	Mon, 29 Sep 2025 22:13:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CD67512D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 22:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B39E18150C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 22:13:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6IJLwMe_R6y0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 22:13:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9953E80A4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9953E80A4E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9953E80A4E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 22:13:30 +0000 (UTC)
X-CSE-ConnectionGUID: 42tHKhypRcynAmECMQw+jA==
X-CSE-MsgGUID: soY87wd5TmKWXfqXmqBvfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="64057738"
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; 
 d="asc'?scan'208";a="64057738"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 15:13:29 -0700
X-CSE-ConnectionGUID: W67H2eNYQ8a9fzDaNSKKVQ==
X-CSE-MsgGUID: 3gG2co6ASxKF+MS1ST8GHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; 
 d="asc'?scan'208";a="179115811"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 15:13:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 15:13:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 15:13:04 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 15:13:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nSn8/Q682Ra9j1CebVw33AhwsujE0r73pkkMcgyMOWWPuo/nqU6hO4L+HegTIUShox+TxdQUMMnLKlsI20fYpyovYjWf3QhXcbFr//81vAZuF5lXfaLcnUJ8zkoTrz6w39MhCkljZrsaThO9xjYzlsUDbnigem5jnKgzqPngyKpj1Ej3YsAx53Dnj853rC+BdZpbynu73IftOAhJYMX1FOj+wYTVSxf5YaMJ7PmA40QdNSvBqSyR2/0Onzb+FcTHUGEIX9FE7Q9XwDHjy+NyYyZ5e4qOTby5OqfN9Fw1Rmu8X6PVcIrHvB1C0L1lExUCtpozdEcqs++H3JpUkiG1mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0T4zP0i0Ngl9ha9gquv4RUd+y6BAwEOMzZdZujaq0dU=;
 b=ylBLLPheFGh5Sk2Q6ADJ4WRllZv+zXld9bxWCUpKhyaMFwxZKOnoZMhVQbyCed38ZHnNd8DP+oZB5y00cKyqob1+3QyrZORV4U+M0rjlbQPGodJNQm0VXeneolGOkLl1AGzpcngR+AtZEqBli4jMcC+mfCBKHNYj2klYKZ8KnJXRJspNxPYg9wDTk6azN+NpD7csNOiXJQTK2jqUDtPmFyrp9pElV65RKAWFRZZle636BM4YTeCFAV0HNCvyLel2UOWaspcPUi4/sFU0UxtJaQWOOzCL5PaXukmvG0I3UTRRZyvYO5jFSifpya6yPHoow4ZGJ7JoZqYVzxwzkO0+ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB6764.namprd11.prod.outlook.com (2603:10b6:303:209::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Mon, 29 Sep
 2025 22:13:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9160.015; Mon, 29 Sep 2025
 22:13:01 +0000
Message-ID: <e4dba218-be8c-48ed-a4a2-cd966a553dbb@intel.com>
Date: Mon, 29 Sep 2025 15:12:58 -0700
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nitka, Grzegorz"
 <grzegorz.nitka@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Karol Kolacinski
 <karol.kolacinski@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
References: <20250923152904.1869397-1-grzegorz.nitka@intel.com>
 <IA3PR11MB898664E18FD62E9C3BA2FB26E51DA@IA3PR11MB8986.namprd11.prod.outlook.com>
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
In-Reply-To: <IA3PR11MB898664E18FD62E9C3BA2FB26E51DA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hXFB16YRO6ECdyZpYyXqiS4v"
X-ClientProxiedBy: MW2PR16CA0040.namprd16.prod.outlook.com
 (2603:10b6:907:1::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB6764:EE_
X-MS-Office365-Filtering-Correlation-Id: 15b95855-c8ae-41a6-e1fd-08ddffa55a6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OGN3Z2VUUER3cXFqZkl1M1NmcFg4ekZFNUt5NkpXa2g4NC9mbm5nckVLZGUy?=
 =?utf-8?B?cVlLdlZ0cEtHQkpuUUwwTk5aY2FQODNIV1R3WEVsNktuY01mTVV5ckg4WVIv?=
 =?utf-8?B?Zy92L2YyMDJQK25KWkYrQTdZM0gxelIyUWFhbFBOeWlLLzJVT2xZZjR6ekJR?=
 =?utf-8?B?MDdaWTlpTURZNHVqSlZ6cStsWDhSa2E4MGcrTytrRW5YczVEN3R6OENvTWFR?=
 =?utf-8?B?RytqcCs5S3dHODJFcmxIR0ZXUklsRzU0SjMveE1EanNCam1QeTB6bTlheGdl?=
 =?utf-8?B?L1dheEs0RjF0Q1VENENHSmFJSHFpUncvaDBkT1pDWGJidlpSZ2MxdVM3eWFM?=
 =?utf-8?B?YVhiemhoOUFEa25OMzNwdFdJSGY2dE1pL05NQjRaNVRySGZSTk5UZWkvaDNM?=
 =?utf-8?B?V3NJUVhwNnMrSFpVVG16VmFNT3diTGNxcVF5SW12QjFEaGRYQUc5a0JFNFMr?=
 =?utf-8?B?akhHdFh5RzZmZ2p0RzRRVEQ3VFk2SFBLb0YrM0NCOGlleXVWRHlWQ0NxTjYr?=
 =?utf-8?B?QXhBcXlaU3p5TkVTRkdPVnYyWUpGVFd3NmdtSmVqNlEzZVdKTGdLR2dyK2dr?=
 =?utf-8?B?enFRanJQL09rUlkvVTdTc3FIV3cxTE9zd0hMU2JtSzVJL2ZONWJ3MUxkYnBs?=
 =?utf-8?B?MEdpS1dSSDlvY2NHZXNVYlY3dEFZck8vTEtjc2U2UDFwMkllSDAyV2tlamNp?=
 =?utf-8?B?ZEhmWEloZnMvYWN5bzRHN1djdlJUeXZNT2M0cU01MG1MVWJaNUhZSGpLYUZS?=
 =?utf-8?B?WjJZd015ZDRXSzdLZlhaS2o3bG1xUzFCVnlpdFMxVWh0U1JpK0dsVHNsdUZu?=
 =?utf-8?B?Z290REJ6enRLMk9teVFVYWtHbG42dEdGczJxTllNOTIyVThqTnIrbnhmaGNz?=
 =?utf-8?B?RWxwM1haT1g0aEJ2QTlkdmlIbVQ1UkJQOG9JSnVPeFBLL3lBcEw0Y3lMdENT?=
 =?utf-8?B?S0JzUDlNdkdOTkFjS1Q2L0hQM2dmYS85QXBoNWU4eGNBK2hJemp3UThiRG5q?=
 =?utf-8?B?MjJ2MUJOTlZtVDFEcVJmbmMxMm9JM3lOUHdmS2Z6bkNONmRYYW5WbXRPdVlM?=
 =?utf-8?B?ODcvRlJJMGxGcXptemkzVU9MWUxPYXZjeUVBZEZON1RYZUdDOU5NQ1VoRjRP?=
 =?utf-8?B?R3g2WU1EU3owcU9hOW1PVTRyMUUwNVBPKzc4Nlo0QlFUKzNtUmtwcE9mVzA4?=
 =?utf-8?B?N0dNbW1NQVpXcDZhV0E0R2VvZmtMRjJKRzJUcUFTenpGeTkzWlpYaEo2SVVD?=
 =?utf-8?B?NDJiR0RYK2lNdTlSVEZsVXV4aDdTd2dRMGdSN3J0UlpwMzNUcjM3Mk0zcWQ1?=
 =?utf-8?B?NUcra3YyQ0Z4bVNEZGF1Vy9WZy9KbXNLSDQ5MVlFL0EzU2ZPb2VUSStaQ0Mx?=
 =?utf-8?B?ajVjZGtkRklDU2I4TzVVT0pmV2ZKeFlIb2RRclI2SEphSFJ6V3hFUXpuOExj?=
 =?utf-8?B?RTlqK2dOeDRmNVQ2UmU0cEMyMjFNK0t0ZnhiNkRicVF3U0sxYjA3QnJGckJK?=
 =?utf-8?B?UlVTU1dzMkFKUkpvTTRiVVFNN0NQMEhYc2xKRUl0MEFwMmR6MC9SblhoajRN?=
 =?utf-8?B?aXo3VXpJTlNrcENqam1sNUtDdnRZS01vNjAzTTZXUWx6M3JHZWtNcG1UT25B?=
 =?utf-8?B?bi9sYXVRT2duUE5IdXFQMEdKczBDN1pCVmx3V0NUYzVrN05ZamEweTYxd2NB?=
 =?utf-8?B?SklUa2s0L3dhOFo5MHJuOWhrb1g4VUNJK0lmRlVCajdibE1zYzBqMElhS0hJ?=
 =?utf-8?B?cGpOQ3MxR0pnV1k5V01qdFl5eVZpVkRUT3d3cmt3aG9wajB3MnkrOWR1bXd0?=
 =?utf-8?B?THpTRFdZbHN6cTB4REY4ZkdKMjZvSWFlTHJxYytuVGtqWjlnL1o5OXd1UXRX?=
 =?utf-8?B?dkFrQmR0QjlZaWlURmdYYkpycmRGdHVZQjZabk13Y1JiQ2c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3BlVGhPQlF1V043Qk9id056ZjVxbkpwcjJYZkpJQ1lNUW5zWmo2TWhOZ2tG?=
 =?utf-8?B?UzhuV2tXaWQ0Zkd3NDh0U0lTbkNIS1EvcXRzblU1MHpDOW1hSzkvdXJhWVl3?=
 =?utf-8?B?b0QxUnNwaHZsSkkvWlRFcWlPYVA0a2Ntc3ArTDlVSHd1enJadE03bU92QzlY?=
 =?utf-8?B?M1RkZTByVWdWc0trSDBxQ0pwOFp4Rzh1bEhiZ1Y5eGJIU1pFZkpjU09SaDRI?=
 =?utf-8?B?MnVCaG9CbmR6RWNFUVlBUi9lTDkra2VXWGVLYldsc2NNcDFtd01CTGJNd0Jo?=
 =?utf-8?B?TXBTK3FpTWp0RGxEY3dkZjdCcU5EQldFYkZQV1M3eFZMR2R3Z0tqYmlBT0Jv?=
 =?utf-8?B?ZE1uS3JHYlgzczFQZGNYLzc5Wk50UWdlNEpRTnpmRlVMOGVTQ1JLQXR4UEQy?=
 =?utf-8?B?cmpMWXZtN2dUbllEVzJmbGMzNCtBM1dpaWpOWHRweUtpTU91Y2F2bXo5Z1dy?=
 =?utf-8?B?cFNWR3hEc2lPNVA3azRPZjF0K0ZIUjM3NkRBVHU5Ry9yUHJxNTNLL2dmRFNr?=
 =?utf-8?B?VjhnOURxQloyb0hKU2laWmpIT25iSzdpVU91cDhKQzQwN1dsV0JibUtaWkE2?=
 =?utf-8?B?Q01BL0JST0JUZVhaNi9ieTh3OUEyTFJGWGxVbUZzSHlUeDcvTC9IQVNwZ1RM?=
 =?utf-8?B?QlJrc1BsS0VZSURFMWNqcHJ5OG5jVWJkdnJxa0tXTm9LeWZKa0ZUcEFmYmRX?=
 =?utf-8?B?cjFjalZMa1BCTGtHMGlBcjBnejJHbHpmdW1BUU8xcks5Vm9ZcnpPM3owWXdH?=
 =?utf-8?B?UkN3cy9hbW80NG9LU0N4V0V0WUFOWGNlQ2hqa05ISWRlTkhwbzVockVvdXhT?=
 =?utf-8?B?MmFtZ2s0OGlFOXFJRkJSZ2h3NUFrREMyTzdPSE5FbS9tK3RERFc0Smhwa1JZ?=
 =?utf-8?B?N0VBdGhJR1puRnZybitJK20raW9HZVR1clYzclJuNzM4MG0waG1MWnFBZy9x?=
 =?utf-8?B?b2NYaDNXRWVhdFdSRzNOOXozNFlJcy9lRm9vWTlXSnlWSjF0RWVKekdlQjZt?=
 =?utf-8?B?UWV0ZXZ0NUEzZTZFaENEbG40bm1KSHllamxRRWhUVk5hbzJwUHQwZ1ltT2My?=
 =?utf-8?B?RW9jdGpEU2hQc2lPekNuRlhTSnM2Y2RYTjlscnVvTy9hWEJQOG4zTENjYXZr?=
 =?utf-8?B?RjJDczBTWHd4Ylo2eExBNXhQTEFaREpmZ1R4UjIySmNlb1RqMjNUTk9pdDFS?=
 =?utf-8?B?OFNyZWF3N29KUUhBTkJURzV0MXpreTY3UThxWUxNSVhRMHNLYzJKdzZRVEJK?=
 =?utf-8?B?c1BsZDNkZ0IwNDkzd1RocmRWNjllbEpOcEZTcEVZYURocXhSTHBvMGJaRWM0?=
 =?utf-8?B?VGFyRGdKQ0pjUlBtTXJSNWFybmFyTnhGWDlUT0U4SnhDT2NDTkpPam1yYXJD?=
 =?utf-8?B?RDAyMm55TTVFNy9IS05UN0tMeWtGbjNUdXBhQTVTZFV4NkZWS3VLeEtlUTJn?=
 =?utf-8?B?SHFYMHhVMExieUJIQkNDZzV5NEhYMjRVZkxVK3NxaEVGZTFGT2dMaTdJekw2?=
 =?utf-8?B?RzhocEY2UUFIanpxUDRwSkRUUkJGcmg0WjFuc09GaVNIcHJaRTB5R3B2K3F5?=
 =?utf-8?B?bDV3SU85eXBvMEJzQUtab2k3OVVrSjAxUUo1aXgwaDRNcWl3T0pBSVZnTGc2?=
 =?utf-8?B?eDVhQ0F6YWljUThtcGsyUGlweWp4a0RsNXR0TmtjT0JiQ1lxRVdOdFlHTG5C?=
 =?utf-8?B?QnowK2JhUFJuU25zWERCSFJKMU5kcG1MRU5PYWFuUDRRSVRsT3BIOFQ5eE5L?=
 =?utf-8?B?cmxoMjVya01sRWdGeEY2NWZ6SEVkT1hCdUFMNVZNZUpVQ2I0QllaSG9MRW1C?=
 =?utf-8?B?c3hROHUxNjMzQlNtejZ1TDkrd0p2RURCZkhwaVQySFprbkROendrcUJDaFBT?=
 =?utf-8?B?Qy9wLzQ3ZDc1bVY1VmhOdmo1TUthWGJwWFd4dlFSNVhQN2M0RU1kYWFKS3A2?=
 =?utf-8?B?WnQxTDgzaGNCOHlJdWd4NFFFMkVXUThhbEd1QlhEMXAxbnczV1FwaWdGMm5t?=
 =?utf-8?B?Q2ZQUjdqdHc5S0RTUUdKUWhsY1pqeVhtWnlsektkdHUvZnNpeFQvTDN5TDRL?=
 =?utf-8?B?WVk0SHN0S0w1dk9rczFLakhVUldzNUp1UkZrRnBKU3dxRUt1ZGRKNFM4SzlS?=
 =?utf-8?B?a0F1ZDd0ckFKVmxlTVZjdkJ1QUFybGtUZEd3Wi9VR3V0bW96U2xQY0UwbUZr?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15b95855-c8ae-41a6-e1fd-08ddffa55a6a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 22:13:00.9802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CckqmkeWPiAwNmBFp709pxZO0ECZKXBNXNS6CkSt1HhTBPIYMHUiqHdA0hT+1EvZjO20N6uttYFIJO+Z/3WSDqFUoRjVpSZLdyMforbcNEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6764
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759184010; x=1790720010;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=qWFwNS3BFQrDrAW2NASpVeud/YEypzNFVm9cT6qVrcE=;
 b=TjXqMEug0LrMqu2ZILPEKnBd1Nqu2CHID/JWNjEJF1Kf0P5wIZix0GZc
 upjakwMqjcGofvJofGnqC8mpuangRMEbqDAIji450r+ivbyhYIOHQBkEE
 vANZCN5kYbGCWZtt58r2MuXGOG47dUWhBN/3H9Ne78N2zozgjufDR/XN0
 RdfsRKvKS4jgPn95XqpjobNO1QEw6vL1iRAaALwj2og+DfGtjjS5DbS1C
 Le/H0/Ywyk+E77BLt1i/ZhV3ljubCl+U5rhYvDzlRmgTcvONqNhC36CdY
 qPWnuhVnBv4F7Kc1f9SDeoGKH9VNYC5RmsGfT/gS4TDiz2MsBKdso2hls
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TjXqMEug
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix destination CGU for
 dual complex E825
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

--------------hXFB16YRO6ECdyZpYyXqiS4v
Content-Type: multipart/mixed; boundary="------------EuEjZbACgZbq0KPZ8fFiM80K";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <e4dba218-be8c-48ed-a4a2-cd966a553dbb@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix destination CGU for
 dual complex E825
References: <20250923152904.1869397-1-grzegorz.nitka@intel.com>
 <IA3PR11MB898664E18FD62E9C3BA2FB26E51DA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898664E18FD62E9C3BA2FB26E51DA@IA3PR11MB8986.namprd11.prod.outlook.com>

--------------EuEjZbACgZbq0KPZ8fFiM80K
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/23/2025 12:21 PM, Loktionov, Aleksandr wrote:
>=20
>=20
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Grzegorz Nitka
>> Sent: Tuesday, September 23, 2025 5:29 PM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org; Karol Kolacinski
>> <karol.kolacinski@intel.com>; Kubalewski, Arkadiusz
>> <arkadiusz.kubalewski@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix destination CGU
>> for dual complex E825
>>
>> On dual complex E825, only complex 0 has functional CGU (Clock
>> Generation Unit), powering all the PHYs.
>> SBQ (Side Band Queue) destination device 'cgu' in current
>> implementation
>> points to CGU on current complex and, in order to access primary CGU
>> from the secondary complex, the driver should use 'cgu_peer' as
>> a destination device in read/write CGU registers operations.
>>
>> Define new 'cgu_peer' (15) as RDA (Remote Device Access) client over
>> SB-IOSF interface and use it as device target when accessing CGU from
>> secondary complex.
>>
>> This problem has been identified when working on recovery clock
>> enablement [1]. In existing implementation for E825 devices, only PF0,=

>> which is clock owner, is involved in CGU configuration, thus the
>> problem was not exposed to the user.
>>
>> [1] https://patchwork.ozlabs.org/project/intel-wired-
>> lan/patch/20250905150947.871566-1-grzegorz.nitka@intel.com/
>>
>> Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825
>> devices")
>> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_common.c  | 30 ++++++++++++++++++-=

>> -
>>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |  1 +
>>  2 files changed, 29 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
>> b/drivers/net/ethernet/intel/ice/ice_common.c
>> index eb6abf452b05..5ea420c76f54 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -6382,6 +6382,32 @@ u32 ice_get_link_speed(u16 index)
>>  	return ice_aq_to_link_speed[index];
>>  }
>>
>> +/**
>> + * ice_get_dest_cgu - get destination CGU dev for given HW
>> + * @hw: pointer to the HW struct
>> + *
>> + * Get CGU client id for CGU register read/write operations.
>> + *
>> + * Return:
>> + * * ice_sbq_dev_cgu - default value
>> + * * ice_sbq_dev_cgu_peer - when accessing CGU from 2nd complex (E825=

>> only)
>> + *
>> + */
> NIT: In kernel=E2=80=91doc for functions, Return: is expected to be pro=
se (not bullet items).
> Also, prefer =E2=80=9Csecond=E2=80=9D to =E2=80=9C2nd=E2=80=9D, and des=
cribe what is returned rather than enumerating constants.
>=20
Actually kdoc does support lists:

https://origin.kernel.org/doc/html/latest/doc-guide/kernel-doc.html#retur=
n-values

Specifically:

> The multi-line descriptive text you provide does not recognize line bre=
aks, so if you try to format some text nicely, as in:
>=20
> * Return:
> * %0 - OK
> * %-EINVAL - invalid argument
> * %-ENOMEM - out of memory
> this will all run together and produce:
>=20
> Return: 0 - OK -EINVAL - invalid argument -ENOMEM - out of memory
> So, in order to produce the desired line breaks, you need to use a ReST=
 list, e. g.:
>=20
> * Return:
> * * %0            - OK to runtime suspend the device
> * * %-EBUSY       - Device should not be runtime suspended


This format is acceptable, but I think its only more typical of the case
when returning integer error codes. I'm fine with changing this if
others disagree with the format, just thought I'd point out that it is
one of the formats documented..

--------------EuEjZbACgZbq0KPZ8fFiM80K--

--------------hXFB16YRO6ECdyZpYyXqiS4v
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaNsEagUDAAAAAAAKCRBqll0+bw8o6Lpv
AQCFNNIsWfXGG+PEFh7sxbGqvNOKl2qwLJjNnnon2DxijwEArfe4GRKfb2OWBzEa7Gj6DYRfIIhy
GPMvgkTrluQqFgY=
=bjRc
-----END PGP SIGNATURE-----

--------------hXFB16YRO6ECdyZpYyXqiS4v--
