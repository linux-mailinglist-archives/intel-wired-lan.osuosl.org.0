Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NLnATn2kmlx0gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 11:49:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C38061427BF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 11:49:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF6E840B16;
	Mon, 16 Feb 2026 10:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KHat9sC_61V3; Mon, 16 Feb 2026 10:49:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41B5C40B45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771238964;
	bh=Sl+WnXusKHGgFhdoCNduxBbpNlniVdOlx7fvM8cmu2o=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VwhpcnnAPHCXaxbJuVQ49yz4HyxZbKW+8lb7RPVF747FzD4ag38MjcoBzPi67m9p+
	 LH8ojfT14QRa4196AG5b1QJxfj8+5h4YXRSomEaWADnfakFBJkXIoMaxJ+J7wH2ilx
	 muMoPSUuAtuIkAzaZDN11hR/uzIDvGRWDoogvgPRRarX/AIQkkDvkLbaVPq+k68xls
	 WNejFIpiiwShHBQebXQ1/O9FldGeOBS7EhrZ2ZJCErYf+DjPrtK3vZKdeq08BuC6S2
	 kMmkAcSLva8Wk0WC1U2nXyssb7voGx1y2ufWHUquUy63EQI5eKWUUywC0H5IQy9lNK
	 MS9BglCpjMnOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41B5C40B45;
	Mon, 16 Feb 2026 10:49:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C446F35B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 10:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5D14406E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 10:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cs2eXVhgCDXh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Feb 2026 10:49:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B38C2406D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B38C2406D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B38C2406D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 10:49:21 +0000 (UTC)
X-CSE-ConnectionGUID: 0I5RVz3mS4eE/Xp8mjBbdQ==
X-CSE-MsgGUID: SZq21t7DTgazM41lLbKMUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="59885075"
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="59885075"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 02:49:20 -0800
X-CSE-ConnectionGUID: DuYcu9TiQmaCywaZpl72lw==
X-CSE-MsgGUID: VvOIbJ+7Qh2H+k8FfbDpSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="244143914"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 02:49:20 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 02:49:19 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 02:49:19 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.37)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 02:49:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DKvWkRqXIHsdMQz7rBwpi9aqa116ZKStUp+mr2tIxYY0SgOj5d43GUqNK6njTbckiHH+fvUgd7OUJWPO44rD+brRNWlEl9SJ+wvTbQ79E01+/mDcCq3Qw8Ibex92dM48TCfvjTUkj8Rix4WHH0BvdUNtiUOulkERnazm+0FJp0tLp8OFH896XJ7f48Ipa95PdMP8vPUfQIajG4+s4GgLZNQ3rJmO4vNBke2+FU+nI+d7K5Z9veEp9yYy5eF4Zt1etrQ5JWtLLxkH9qpinLZI8o4MRG6k8jRnV1mrqCng9T6r1cQpX0fXraWmwwXmLxw/k0ySigQSfy7TUubLjJkQbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sl+WnXusKHGgFhdoCNduxBbpNlniVdOlx7fvM8cmu2o=;
 b=xhxCbjza01quWE+6MwJFpUGv5V9eEMvLdWR99B/fsceDJQW1nsrCVAhQatyyn02vIbf/IRl6mZbeIF0QuqVgJZiZy0SuncT0Z/mH3V4yvTjO9y8oDJgSn36eLo5+vK8tgzJIhHdLNxwQxSKHLmPNsRZVyJGbAXZWWyb77O9UWsiUF/Yw9ekq0P79YJGR2UgYLOx0+kFv90AJwArDEEkr+lttCQDCtzfAgZpS8Dpm0gjjGXDZKdWx+O6vcXVIHQCXcusOg48OINAt9i/9z81V6nw0ZcyRuiRiLesBP3LjhgAh94bKb1niJqVG1mCEz8t45jtvcipQ2sD/aOVc9HL0Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS7PR11MB7908.namprd11.prod.outlook.com (2603:10b6:8:ea::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.16; Mon, 16 Feb 2026 10:49:17 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 10:49:17 +0000
Message-ID: <5b7b1746-54e7-4281-a008-aa3496610ccc@intel.com>
Date: Mon, 16 Feb 2026 11:46:05 +0100
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?Q?Ricardo_B=2E_Marli=C3=A8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
References: <20260212183328.1883148-2-larysa.zaremba@intel.com>
 <20260212183328.1883148-9-larysa.zaremba@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20260212183328.1883148-9-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR03CA0044.eurprd03.prod.outlook.com
 (2603:10a6:803:50::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS7PR11MB7908:EE_
X-MS-Office365-Filtering-Correlation-Id: b7022d1e-6a4c-4d9f-5cce-08de6d490835
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cklwUWl3Z09NZEFNclNES3cwZFQwOWpTWUtoeXdXbnV2bS9UMExKVUhWOGw4?=
 =?utf-8?B?dnFvelpPc1R5UE9aejNUZFpWZ1E2R082SDhPbEJ2eXB4U1JhN1pnLzZHb1dq?=
 =?utf-8?B?SnRPRC90eHZhdGdSL3hWRVozdTJueTBybWFybFFtaDE3bmt2UDlDN2NCVkdh?=
 =?utf-8?B?alNBaXhCQ2k5cndvd0owVmgvNy9SZ2MrWW5zUXQ4d29VclBmaEtXaGVyN3Js?=
 =?utf-8?B?QXlyTTdpdUtGZUs2ZFBaS0E5eWdHOTNzeWtWaEE5YWtQRVc1L29ONGdFOHRy?=
 =?utf-8?B?ZnpEUno5YU1Ud2FLdHFxOUdHeFFPcVh6WVJhekJPSUxXV0NmWXZ0bDdSM3Z3?=
 =?utf-8?B?SEhUOHVNUzZoR1d2Vkd0dE5CQmxTNStaK05jSU5kTG43QXRDSXVXY2JYMEs2?=
 =?utf-8?B?NlJNRWZDbFZNeEVqVkhwd3VxMS8rYjJuR1RsVisyQUJYd3F5SGhvampMUVJq?=
 =?utf-8?B?a05IanRXZHE5aHU4K3ZBcjBlQjBONWJTc05kSG9pV016L2UwUTVwdnE3MnZC?=
 =?utf-8?B?VFNNZVlrNGFxR29ML2xFS0dQais0bllvVTI3ZHovVUxoL3JoUE1iWU5PeGg3?=
 =?utf-8?B?TlNrbGM1QWpjMWFZaUY0YXRRdE5LSWcwZU1GSzV3OUlJYmFwdk5uSDBxR2F6?=
 =?utf-8?B?ZWtzNmZ5Qm9JbG1iN2lZZ3RqNlBTM3Y5SjI4WDRwOHdVdUh1ak9uMlVTOVpL?=
 =?utf-8?B?TUVwZXptYXJ4ZzhScTl6MjlpUUplV3A1eklGNmE4RDBtQ01vY0dCdkZqd0Jw?=
 =?utf-8?B?OERLYkdtazhaeFhiT2VEY3RQUE8vUXd1ZDlhcDhXaEJMNjNmYnpWeVdNd2dh?=
 =?utf-8?B?V0NRZ2VTRjQ2YjYzWGlUSEZvZjhNZmNnUnU5Qlo4N3Fsa05rcjZVYWd6UTZY?=
 =?utf-8?B?MU85VXRMTUZML05HNWptRCtmT0hWVHZOVzYyQ2IvZURlT0F2clRXdEpJT0lN?=
 =?utf-8?B?Q0dEV2ZsbEJjb1FYK1pTZnI5NENCUHR1VUtnTlRhU3BUU2N2UGxwOVJkLzVT?=
 =?utf-8?B?L0g4NDd5TXVlS2EyN1gwVmpOQVl0aStsYXVaL1NqNlNqeGFpRVhsZ05sNVhT?=
 =?utf-8?B?RDIvSWdQWFIvYk55VFEvTkN4ajhyTzZoT2JrRXJSbFRNenNPNDllZHFpeUsr?=
 =?utf-8?B?UVVacWpZajB4VTJ5M0lJSGVXczJTeWtHTGRwZmRYeW9rQ3Q0SnVRbzJvWEd5?=
 =?utf-8?B?bks0T2t5TnBoeG5nMTVkSWdSZnpkZzFmaXpKMGJsd3lLRU5UeXRaR1VhY1Ji?=
 =?utf-8?B?bWgzYWFhT2lsTVZDekJielk0S3d5YXV3MnJ4VE9RN1ErNGlQTVgxRzRRZVhB?=
 =?utf-8?B?QjcxSXlLL1p6eExFZUwyZUY0T1Z0T2VQelp6VmZ3aUt6SWZELzJLNjJ6NEZ2?=
 =?utf-8?B?elVtVUtIMCtPZ0cvUVhFbFYvTEtEdlVIV3p5cjBYL0V6bmNlMVhoRGw3RG4v?=
 =?utf-8?B?Ri8vL1BnWHpzcnh3VnhobmZnWjZrMWE0MTBUTm5EbnlOYkFXNFRpUWhTWFFr?=
 =?utf-8?B?NmozNTQ3NVZJWC81MXFIbUlIWE56T3VrUVBZaGduaVM5dGZablIzMkJ5aHNv?=
 =?utf-8?B?Ykw0MitaYS8xdDFzTlFDVHA5ZGFuVUVPaUNIRUlRbFNRZ1ZwMUVobkJnTHVh?=
 =?utf-8?B?ckdFRGNzdDc4TXFBN2wxdDlWelpjdmE2ZzE3KzhiSkZqRlhhbnMvOFkvOFgr?=
 =?utf-8?B?WDFtRGx0TGhzQkw0bDFXakZObGI0UnJlUFFoOFFxVjVkVlYvU1VacnVLTWZt?=
 =?utf-8?B?RytBcktqeHRuUUhkZGVLUDhkQk9yaTBmSzBiR1FtVzlWMFNuenlXNUNOR1lR?=
 =?utf-8?B?RitsaHcxenJ2T000Mm8xN09Ja0VFR2t3STNhalJncjI5WVFRTENZYTJJWHBZ?=
 =?utf-8?B?ZWc2K3hycGV0bi8zOGNwWUhQUEQ5NGgreFgxN3NGWDNCZlE3bFAvbWgxRUFB?=
 =?utf-8?B?cFZSTFlHR1lac1gxZWdjUTJZZjdVaDVYN0dmZHo3OTdwV21yQUVoQWpSWWdB?=
 =?utf-8?B?eDNzNWlqNDZmN3Y1TXUwYTVVUitXMjk1cXhDd3Z5VEF5UkxrMkFiRG8vZHd4?=
 =?utf-8?B?dGlqQ2ZyTkMwc0tQRUx3Wm5VM1d4a3UzbnJ6ZE9VOGs4WVZMMldlVkEzK1dR?=
 =?utf-8?Q?2eKM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d21yQzVPcUhjTUpWcjRzZHRwZGIxN0xPVW5sT29ZWHBZenRwZ2hWeTJKcklJ?=
 =?utf-8?B?SnhHakdlZEpnNjZoaXRNdllpeFlDbDZpRVJGTnFhWU9IUkh4c3lnejNLV2I1?=
 =?utf-8?B?aFlNdmhGVHJnVWF6NkFITmlFM01IaHFoa0FzSmVidnF2bVlCZFBzdHFuNG9B?=
 =?utf-8?B?bWRKZ1ZkL2Q1NTYwVVF3N0RBNkU2QW82cUFVWHE5VTJ3RUJwNmNrV0RkeHgz?=
 =?utf-8?B?MVg0V0pnN3pTclFqSGhHc1hkL0tVaWFXdkZ5UC9ZTXZTVXMrQ2ZoMmxNcUJ0?=
 =?utf-8?B?cWxmS0dEd2xtMTdCbmlISjNic3pDbG5sZFphamVNWGx1WkFVZGRPMlVDT3k4?=
 =?utf-8?B?emJURGlQUWJRdUMyOGxJRWx0aU9GZVhnVkh6VnlSazdRMFh5ZFRRdlVpbytt?=
 =?utf-8?B?Z2NHaHB4NE1GSVpTRUcxdWp5MmQydE50RWZoUWowdWRJVDdzK0lEaUtJRld2?=
 =?utf-8?B?YWxhTVR4RXpidm1seERzdkN5K2VUbUg0UVZRbUdtNm1QSDZRWUJtbUgyenNG?=
 =?utf-8?B?Ui9FMlFkWUV4eEpwYWVDN2JBaVhrWk5rMFFtMEJPczEzK2dzY2ZBdEI4a0FM?=
 =?utf-8?B?LzhOUEFnTXNWbEJvNlVUeDlxQXVrNFhGSHdJd1Q3bnYvYkRCb3ZaVGZPZC9W?=
 =?utf-8?B?R0o0d2I4WDFUaEtNRHlkK01KSS9hWHRBSnFRU1RnT01kYVZmbDhZaFRGMG9R?=
 =?utf-8?B?R011aFBFekRDTXByQnpqaG5mNXovSW1vZ0h0c3ZpNFRUdzJpSlVOZUFSZHl5?=
 =?utf-8?B?ZEU3dHVMdE9wRWIrSTYwRm5kS0hMM3NsTm9rS2dxa3I2NXJ1UVoyM1E3ZWwr?=
 =?utf-8?B?VmpXMzEyRC9FTGoxRzUxbFJ3MHRoVUNpNmQzRmRKNkkzRFZDdk1WOU0wRFNT?=
 =?utf-8?B?amRXRjVkbmd6cWhFTWRsRThGSWdodDlVV3FOMmtmQ1BLcldWbVdjWEpKT2Nz?=
 =?utf-8?B?dXFCTjJFR1FmazdPR3JlKzZ5MkY3dnliTGpRNEY4VHUxakdQVTZTN0FHZEpu?=
 =?utf-8?B?RmVSTHBYdlFsNWtoOUtFRkxRRCtKNy8xaVN4aTZXZzArbHA4RzJKYURVdEdt?=
 =?utf-8?B?VHoyaDhnam5uUmRaS2pGeWlKNTMzVDlhTTltVU1tSEZIdndiM2p1QlZiK3dU?=
 =?utf-8?B?eTB6RXdqcXBXZDdTOHJ0WjhwZVdaa3RTTEpmRUxZOFhqcENNL2djSlJrUi9Z?=
 =?utf-8?B?SU1HLzdoNzRxSGQ2MVBqZ2I0eFFnTHZ5OURqWnhUMXRYNWRJN1RZZUZYWGNP?=
 =?utf-8?B?T2pxSXR6TXBWUG1OejM0QWx2UUN6SkFFN0k4dTdDcFFuZVVGVWU2U3l5Rnpq?=
 =?utf-8?B?Nm1paVhJNFZoTjBNeDliejN1ZnhBcit0MkJnMjVLMzUrT1lIZWhtYXNYM0RC?=
 =?utf-8?B?NWJMelFUU0FrT1lRdkNYd3dhcFVYNUV6enVOZCtMd3Z1Tk9QeUhQb0kzd2RL?=
 =?utf-8?B?ODU3WDlpVExuVkgyakh3LzFrUjNqejl6aG55Tk1iYWJJMUMxUUkzQzBqejVC?=
 =?utf-8?B?MTFWQndEbzlkUTBSMnlTbWtuSFJXWE9EMU85UnVRVlpjRGVrRmIzajBHN3hS?=
 =?utf-8?B?RXBBUnFpNkpGQnlXTlNEalA2bVlYUEJxdkZjTzdmdmVkSXBwT0ZYcXBUUllO?=
 =?utf-8?B?RGF4RlJxN3FGbUFPM3l4aXhSSU5kNkZEUmRvTnpEai9hM1VhNXFRUDY5dXpu?=
 =?utf-8?B?ellPUFR0cU0yMFhhMEk4OFBqalIyZXQrYmlTSFdOQ01nV2tSRUVQVlc1TlYy?=
 =?utf-8?B?S0NiM2xjNmNZOFRGVHBPLzF1NGZ0NkhXRTVxZUJzREk0c2NtOEF0bi9WRE14?=
 =?utf-8?B?cFZVQUlzSGRTTDhMQzdiaEVjcU9QTVFNalA1VGVGeS9ITWdFbldFdGpLaUY3?=
 =?utf-8?B?RHRlUStVdkNCNGo2UWNJK1ZXVXB6b2xmall5WUNQUHB0bGdML1J6bjN0SmtJ?=
 =?utf-8?B?KzFQU3NDWmxpNm1qd2d3aWNQcStjclloV2RqS292eTVSN2VlYXBZN0M2TTlN?=
 =?utf-8?B?czI5NmdtRlNaSXZhK0VWYVVvaVRLa29MckU4alQwSVN3STE0ZWhKRFN2Q1NV?=
 =?utf-8?B?aUJOd3UzUTV3VEFBV01SdHZUdFp0ckQ1ejFvREZ5OUJYOGZZSnJTKzhBb1pB?=
 =?utf-8?B?TWpkK09uQm1JdXliMCswWHNVTEJoc2p6a3IxVFRQWkxUY2ZTanlzUE1HWm5D?=
 =?utf-8?B?cS9pMzZVTjNKMW81WHIwS2N3L1JSNGhnSWNmZXgwdjlQRjRvUkpXLzBINGFG?=
 =?utf-8?B?NDRZWVJUdzd5OEZtYjd3RmRsYVBIcmluc3pncGhGUGMycVkwOHVzc2s1WS9z?=
 =?utf-8?B?bTBhcjhHaEdSd1JIOUJycnFlUGZIMHRPWXRwSm5OeTdMc0dnS2lpdHhtbm5i?=
 =?utf-8?Q?h4u+9lx21fThJxUE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7022d1e-6a4c-4d9f-5cce-08de6d490835
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 10:49:17.3443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u5hSJ2h9JBbMqwVQXXXvJOGBQo2ndM794bVaAZJRrOu20VnTsKzd0+V6yCX6BpJNS4vYfF87SiruUgAgWAGiEHotT0GVLWCgGUEfBmiShgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7908
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771238962; x=1802774962;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zlgrkSEQ9XAlfk/jW7QK0BiIxOEiHQe1aTviDXJz86Q=;
 b=LixbpU6VioY/5a7NOYJZfx29wnfjOcEQEQIlQcOYId8aKEd/8souIik8
 FUOMsQwi5WumB9WKa9lQCTKIjdB/NF5IIe7OfcSiVs+OR9WK+PnJU6EOK
 jZca7NZENvD2hrWEckSBMKNUiESmI92DzKI55oa2SOnnPr1D3psmgACjP
 jcMQFlTFVqlcfXS1FaSs1x7NA3kv/nDaMARlJVvYr4NHI8O6cwJPJip6R
 D0hWoKKQJUFYFqHnlD6Q1RG5x7c2sLLBNuHQ3GQUZeN6Q5Lio2nJbPZkM
 Xyhj4sFeHKv3wwDzpXLfh9jPdSDUUPtoxajFTVfjaWd7QcAXmeIL6wNvu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LixbpU6V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 7/9] idpf: use truesize as XDP
 RxQ info frag_size
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvidia.c
 om,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: C38061427BF
X-Rspamd-Action: no action

From: Zaremba, Larysa <larysa.zaremba@intel.com>
Date: Thu, 12 Feb 2026 19:33:22 +0100

> The only user of frag_size field in XDP RxQ info is
> bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size instead
> of DMA write size. Different assumptions in idpf driver configuration lead
> to negative tailroom.
> 
> To make it worse, buffer sizes are not actually uniform in idpf when
> splitq is enabled, as there are several buffer queues, so rxq->rx_buf_size
> is meaningless in this case.
> 
> Use rxq->truesize as a frag_size for singleq and truesize of the first bufq
> in AF_XDP ZC, as there is only one. Disable growinf tail for regular
> splitq.
> 
> Fixes: ac8a861f632e ("idpf: prepare structures to support XDP")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/xdp.c | 8 +++++++-
>  drivers/net/ethernet/intel/idpf/xsk.c | 1 +
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
> index 958d16f87424..a152c9a26976 100644
> --- a/drivers/net/ethernet/intel/idpf/xdp.c
> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> @@ -46,11 +46,17 @@ static int __idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq, void *arg)
>  {
>  	const struct idpf_vport *vport = rxq->q_vector->vport;
>  	bool split = idpf_is_queue_model_split(vport->rxq_model);
> +	u32 frag_size = 0;
>  	int err;
>  
> +	if (idpf_queue_has(XSK, rxq) && split)
> +		frag_size = rxq->bufq_sets[0].bufq.truesize;
> +	else if (!split)
> +		frag_size = rxq->truesize;

XDP and XSk are supported only in mode splitq mode, so you can remove
the second condition and change the first one to just `has(XSK)`.

> +
>  	err = __xdp_rxq_info_reg(&rxq->xdp_rxq, vport->netdev, rxq->idx,
>  				 rxq->q_vector->napi.napi_id,
> -				 rxq->rx_buf_size);
> +				 frag_size);
>  	if (err)
>  		return err;
>  
> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
> index fd2cc43ab43c..febe1073b9b4 100644
> --- a/drivers/net/ethernet/intel/idpf/xsk.c
> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
> @@ -401,6 +401,7 @@ int idpf_xskfq_init(struct idpf_buf_queue *bufq)
>  	bufq->pending = fq.pending;
>  	bufq->thresh = fq.thresh;
>  	bufq->rx_buf_size = fq.buf_len;
> +	bufq->truesize = xsk_pool_get_rx_frag_step(fq.pool);
>  
>  	if (!idpf_xskfq_refill(bufq))
>  		netdev_err(bufq->pool->netdev,

Thanks,
Olek
