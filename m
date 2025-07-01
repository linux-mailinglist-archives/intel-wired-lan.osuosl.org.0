Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED58DAF051E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 22:49:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5574561200;
	Tue,  1 Jul 2025 20:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QcnQv8p0HKY1; Tue,  1 Jul 2025 20:49:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84FEC61204
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751402945;
	bh=I2oEZn6nP1WzZotfoy9UZZbvBJaZAiuMjzHPGAJN5Gg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BQAYDDyWHZKy26he0tdarrEOS6BD9oSw1+CVEolmqxa7vyLhBxfPzfv2yfZ5TbHAz
	 rngrAMS7Zj9wGfhXmq4mWJ+EVWEM2dk/Yg5r/GAEL6hdwXINrFhisHCRBbFCbNZ3Qb
	 UwCXwHp3eUkskg1CvRy/5NgSxpGGzUAdQM4cpPbegczyij3gVG7xLv73OOdd0BKgif
	 u7YHYBvfHqXj2RHnt+go7OTE4bzsP6g9F81YyPVNKc41L0A7JQR7cxuQNuoYY3hg/2
	 l1dXJZXZDgiaUZJDEpptWhbgMCN0WKyFQoNtXHUdfO71jMLiRlshBY+soin/VO+M5L
	 dtKs2VC9g7ZxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84FEC61204;
	Tue,  1 Jul 2025 20:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E82B128
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 20:49:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BDC840359
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 20:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Pg_0KPLSRqb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 20:49:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 510104034C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 510104034C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 510104034C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 20:49:03 +0000 (UTC)
X-CSE-ConnectionGUID: GRYCbVp9SriV1o/PGSjPgQ==
X-CSE-MsgGUID: FKyPd+nlQAa/G5eQEVdZDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="57494675"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; 
 d="asc'?scan'208";a="57494675"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 13:49:02 -0700
X-CSE-ConnectionGUID: fiTBiGN5RDSveMZcNtBBXQ==
X-CSE-MsgGUID: Uzo/Q6y5RrKjxKSuLACLYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; 
 d="asc'?scan'208";a="154415304"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 13:49:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 13:49:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 13:49:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.44) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 13:49:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LS3n3ytTRtB6iOFodnCdOmCr/aVkw7q7DQn/BQgd7gVF2RBlqBkx/4JeZ/MDfYd8o2K/1NKSMqqSfWSzRN3qBZ11kh26RvikZhcxZRNsBClIq0RPELqdAgtzG6q88Cmhn/B4SFeR94U5sTuL5IcpS3UeyydMPqdoPjh5xehp4xI0JHGrgSGrgiPfcRk3kZGj59x22+o+rY7Y7Q+oLGUU2t6V6kgXYF2zdfenmREc5IBWdHNykjyizCvMbLUYdSIwWjZe0Wf2SZuGxntgvs+Qo850e2BovV7HhansUClfF0lAQTTNk+RLrGUYQ3fB8wxQBfEqRDndCF1C2LhibFTPDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I2oEZn6nP1WzZotfoy9UZZbvBJaZAiuMjzHPGAJN5Gg=;
 b=n5qDcdCSZCuAKdRlP6Oik1M+csc0ih+K9D10vbz+KcjspeOzXMX7aEQEgJYpZmu9uarFGELX+cL+B8/86CX9sBeNgtogtPN7vOFRmrsdiMrwPiKJQ7i+8DTUCPwaSXlvQaeMPb+xl65m9FQKwY0stvRMCRD+HvSrYSkwCzgTk6aLEk6GTfasSPzwzKpTORkG3S71lDVbdJ8YsB40nAlhp1xgNkGN8kuq0mUYYWq+v/xvcN7jFHcS0Do0gH2yzZyg/eJaeKcHZZkW9iIvR64S+LaqQajIIhOVzMRTj+WKTwc/8GNocfEY+U1X1NVVSvp3LlRYg6pyO74mb/+UEfgHpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6018.namprd11.prod.outlook.com (2603:10b6:8:5e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Tue, 1 Jul
 2025 20:48:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Tue, 1 Jul 2025
 20:48:28 +0000
Message-ID: <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
Date: Tue, 1 Jul 2025 13:48:26 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
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
In-Reply-To: <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IeyMGg9bZ83KAjflHZVcXumt"
X-ClientProxiedBy: MW4P223CA0023.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::28) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB6018:EE_
X-MS-Office365-Filtering-Correlation-Id: 51ec6126-f406-40f7-e30f-08ddb8e0a195
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTE4NFlEV0toUnl0U0FhNHlNNmJOd0tDVWpVbnExeE1PUVgwUExMbUp2UnFy?=
 =?utf-8?B?VWM5Y3N5cE9hb282TEZMaDlCTCtMYkNHREUydU5HaDBFa3pqaERZWVA0WjRY?=
 =?utf-8?B?M0lPczBJWFV3MEN4UTI2aWdhZHFzWms0aVVRQm9OdzdhcjFNS3ZXNFc2Q2ZB?=
 =?utf-8?B?UUNDRUdvWXE0b1dycjlBZHdVWWJJWHhLdGsxN2lwdURGbzFYVW0wVFJOcllu?=
 =?utf-8?B?c3BsYzM4NlNkMTNmcGI3SFQ1ZXpPUFdaaW5HaXBOb2NEUnEreWlYTytFNG92?=
 =?utf-8?B?bTRNS1ZkSHFyQVI2akNZSnBCaVlHcUVQTElKWCtLNjlWMlRWWFM1QXA3NHNB?=
 =?utf-8?B?SE0xa2tYdTM3R1h2Qk5PK25zc1Z4ZmhHS1BEZTA1YW5RdGpaSGdmUEtqeE9I?=
 =?utf-8?B?aXUyOU1CQnNuczRXSzNRL3VIc1BiTURSelE1WGdSZU9IR1J2S0Q0RDBGYlho?=
 =?utf-8?B?TFFOZFJYMkZkVlNsL2Z6eFVHZEx2MnpERU55TzcrUVo5Nk1Ld2pUMUtBRU1Q?=
 =?utf-8?B?TndwRGtjSy9FWW1oTUtadzU4QXJWUUM0YWEyWWtwcUp6UnBxc3VQQTJrUFd0?=
 =?utf-8?B?NWxGdmFUNXhwQkVJdC91V1VwOHg2OERRNTFvR1JnSjBsYVM2Mi9NUllZdTJC?=
 =?utf-8?B?NGk2dDB4NmloRmtrenkzZzFxUFFib1F2M21YQjZ5OHExRDl1T3hFc3h5MFYx?=
 =?utf-8?B?a3dUbjJudmFSUWRWUjY4azQ2U3dHeWE5S28vcnhvNTloU1RPb3ZtZWoxVmZj?=
 =?utf-8?B?WXR1ZFMrMTVyY3VTdGEvU2ZOUE5CZ3NORWIvTnU5TVdHa1RIUW9WM3h3YmFR?=
 =?utf-8?B?K3RjcDlBekk0bEZiZjBkVWhFbVkwUWFEcktIdlA1dWl0Y2J5aUprWHJRMzFO?=
 =?utf-8?B?cGF1bTRma3JCaHZTcExhOW45Q0pnSlVwMjFzZkhrd2xRWlpoc283MXJjWUxh?=
 =?utf-8?B?dkJrclZhOE5HQ2poZFpDRnJpdmNxai8rWWxOL01LVHVmdDZUYXJhMXZoakIy?=
 =?utf-8?B?YncwVFU0TFFsYkl0UTMwclRwQlVrNTRuZnA4S1lneW1rNVNZdlR3SlYzeUJV?=
 =?utf-8?B?UndqQnFYN05DNlhVYWtadmJ2Q2hWaG9qLzRUVGlTTWFvN2pOTGF0UHNoeTBO?=
 =?utf-8?B?ZWZNNFBKWW5qeFF0WUp3TldpN3Z2OW1EanlsM0U3WHFoeWJ3SDdxY09EdS9q?=
 =?utf-8?B?aTlKWDlwWDFQQ2p2aFdKRGc1cEVHbGNGWlFtNktZME1JSmdlbFcwQXdmQ0lK?=
 =?utf-8?B?cldDK2lDOUJoUmZTMGRqZXhGMFdmM3BtdkhPR2drWkdiQVhXNXBwVE0yd3Vu?=
 =?utf-8?B?cklKSXF4NmgyS2xwWHFKZkE2eVdtVXdxOXV6cmpGVFhnTUxqbXR1K0tZdmFT?=
 =?utf-8?B?aVV1ZlhFQVBhaGRUR0F4UzZ6S2VxajZaOHNsQmRtMkhmZ0phZ3RrVEhMeUYv?=
 =?utf-8?B?N1l6dE9IZW90c3E5bGdkSWEzRTNwZmZjeDArYU5pNFA5ZUtDVHpzQ2lycFM1?=
 =?utf-8?B?cmlibWZ5ckZpRFdqT3ppME12U2RqYWVOcUhjUjVXa05CNzZVcE5FRmp0Zzln?=
 =?utf-8?B?V2FNUmlrYzRsQThCQXFoVFV5WTBzK3hUMlc5RWc0d2s2Y0pkclVYOTJhQjhZ?=
 =?utf-8?B?djNaN1o0Q0srQSt2N0dpczczVG5hWlJXUENqaVpnYWdDTVhFaFpmdlcvUVY1?=
 =?utf-8?B?cS9hTS9UL2daOU95U21KcXF4ZkVTaXdoR2VqUW9Ba3VCcmxha1hrcmI1ZE45?=
 =?utf-8?B?MnltV0dzRjJBa1BPbzY2enJhR1NIRjZPK2FkRlBSN0lvN1U5QnFGTXhKQWd4?=
 =?utf-8?B?UVc1bFh5dDZVbkNQVUQxMHBWYjFXRlNBWStXbHdtdEtjQ2N1b3huK0ZTL05V?=
 =?utf-8?B?UlZJOTZ2V0trYzlRYWRLcmlZcHRCYXl6YXFQeHpMdXVtNldjdkZSUUlSVFVX?=
 =?utf-8?Q?U033HTwuORw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDZRZ1gxYWFnN04wQk1EMWhSYUxacjZTWVJsVlBsbXZ2MlJEckZVdHVwdnl0?=
 =?utf-8?B?NmpscjV1bCt3S1MvNWRaMWhKb1Uva1FWaVBOcTRPUlJWTENicWZaTUduM3JJ?=
 =?utf-8?B?Qjh6RTIrcEF4UDZvT0xJTEJZTVYxZ2tPaGdrOGhqc1BnOG5RUXpqSks0S3ZF?=
 =?utf-8?B?MS9MbGxOaTR5SVkrazBDWVhtcEQraHdtZkE5RVdyTGJYdjFoeVdSTkJiSFY2?=
 =?utf-8?B?UkJJRlFWVndsc2dIcEI1bjFlMTllbFFZMTBaVXkxS0RrbXVmWnZqdkRDcE1X?=
 =?utf-8?B?WWwyQndrdTJRSFFOcGNaVE5zTW5EWUF1RHI4NkFSMzJRVjhMRWpTV2xwWjdS?=
 =?utf-8?B?UXdiRnU1MG81aVZiWGxTOHcrSGFCc2VvZUNuTnZCOE1xWDNsQjA4NE8rMTVP?=
 =?utf-8?B?VkprUXlTWFJ1OFJBVTNtNC9MSXhySms5Vm1kNHRTYjdmT3hrbW54WUJSSnFP?=
 =?utf-8?B?RGlHQ2RnVnI4eVNseXlQUTl2Rmsxck01ZTdZUnVtVk5lYUppdmFDRW9zb0U5?=
 =?utf-8?B?RUQ0TDdXY0x3ZGpkUDNBaEU2KytqQ2FWZW5LTWgwaFhMSklJYlFadnQzVSta?=
 =?utf-8?B?SlhyRlNaKzhqclVuMy9RM25HaThNQUwxYWdJNS9Nd1dGbkt0Ri9MMStPdzRy?=
 =?utf-8?B?azJ1SmJ0QmplR2d1VmlSYnRVS1RIUmhBMlJyYm1pdjNoTVNic1dHSHFScEtN?=
 =?utf-8?B?NmNHdUV2Z3R6cm15dFp2Rmp6WFg5YTF6Nm5vSTA3L0VRT1JsVlF1aHBacjBt?=
 =?utf-8?B?aHNDZTRLcS9OMTFYOXYyckpoU1o4R2VFOHNXaHgvelBWTCtIejBrM2Z3OTZo?=
 =?utf-8?B?Q2xBcFJreXMwVFJ4T1pXTmtBam5rM09GQ3BtcGNBK2FSQ3pkZy9NRFpCL1dZ?=
 =?utf-8?B?cnlmd3VJM2k1a3QxQU4vU25TaUdjSTM0bVZmMmI1QklIM3BjN2JWaVk2eTFw?=
 =?utf-8?B?dE44ckxPUnk1bVdjTmJ5RHYzMEZCK1JKNEw1eXZGTE5wcEhFbG9pRitXcXdw?=
 =?utf-8?B?cGtETFpXTGhSQXFXcWgvZnA2ZStEa0t6U2JKbFJnSTJkZ1ZFTG0rUDB6WHFT?=
 =?utf-8?B?TEZLME5LOEhoVnl3ZmJLQTMzb09ucEM3TEpVVURXY0Z3U1hTN0taeWlVb0Nt?=
 =?utf-8?B?RnAvQ2V1TDZPbFJFdHpySCtNbUpvd3QxaVFhZVBBYkVxYldNZSsvYXFJdUIz?=
 =?utf-8?B?eGdQNyswblVJbGhxNEVMeUVJMCthMlRYdSsvakkwSjRSejdWZFExcmdyM1FN?=
 =?utf-8?B?TjlWS1dTUHdJVWJRQ0pqeFBWeTJySGpoYzFlbTc3d1VYS3hrRkk1YmY1ZGlP?=
 =?utf-8?B?NXplQnpBb0Jia0hCMXNrb0VNaU1kUm1VMC9BSVRPT2Q1VFJHcnJNQzdIYWF6?=
 =?utf-8?B?TklPeVVhc1JValVhK2M3Sm1mRXVIdGFmU0xLNFJRNDVjT0ZrajVGTGFsbHdu?=
 =?utf-8?B?S0tGSGZpQ3VFSWZseVZzZ05RMmJ0ZklITlJLYzVuUUlrN1ZaK0VycWRQRVNU?=
 =?utf-8?B?Uks3VDQzbGRST0pYT00rVHowNHQ1Tmw0ZTA3K05LUGR2Z3dWSnZFTkxmY3ZG?=
 =?utf-8?B?K1lnTmdKTkRzOEtQRjAvc2RxTDRvNWxSYTcvaXY2OWdBMVRzSzQxT3hGeGcv?=
 =?utf-8?B?WEFLUXBBTFVLTFJRU0Npd0V4eUVwV0ZicjFld1d4VVJjaldSMkVDdldtQ0Rx?=
 =?utf-8?B?clNHS1RCMXJpVG5WcE5GYWNXL05LQ3NTR0t5K1pKYTF5cWVlT0w0RWdOcC9h?=
 =?utf-8?B?SmROK0lkSVMwS3JDOHMwM2VMSzNsdXZLZDZSNmNHZCtZVDhXTkJuMjVwcHI4?=
 =?utf-8?B?ZDFXSDk5K0tUNGlZUVNxU2FWU0cvRklSeUxqYTU0Q2FlSHNPM0dzOEJkUmdT?=
 =?utf-8?B?RjA5c2VDYkVzWGtWZXEyRE1VaFBWSVBGTFJvR3JySlNQSjJiVDBUQ3hFUFV0?=
 =?utf-8?B?NjZRZmdXS2xXYk1OeEx6Tzk5eHJ2d25hT3BTSDJlQmduc0dlMEJ4VkF3c1Nv?=
 =?utf-8?B?aVBFZDdWendtcUw0MHc4K2E3bUcwUnRaOEIvSmNlNkRJeS81Z2o1cWlJSlV5?=
 =?utf-8?B?a2tlNm96b2l1a3ZqVHRLSTB6aG5FLzkydG80bitrc3hleEVHV0dxRjZzTmhV?=
 =?utf-8?B?Ylk3SG8vK2hJL3MyMHVLeEx0VmxhNjVraWUyaWtldXZaby9WOHAvdFgwSEhm?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51ec6126-f406-40f7-e30f-08ddb8e0a195
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2025 20:48:28.1137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SO0E5vq2eq7KWLidJ8HDMGp+ka32lbn9Q7SeRw1QDVxjCFLAvXWs8flgRDor4J31FoQre/X05suhChQU/wU76cYWGN92yoNgYA1uoqsQpV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6018
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751402943; x=1782938943;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=x8/YOXNdEy/aDecJPXJfOWR7lIMA8IkMKkNP26mig7w=;
 b=ndNXpGyP49pmcq3s5aCFUbuhOOA1qEUXmcXhMuU0SLJ3w5tXHpV/TWbd
 5LH8eBbugPblpz66up8dJ6LgfJYnhsobIAg+WSq0PPo3n8F7p7TQzX+3j
 W+nRRb0aXAYOSev0UoLH46UF6CNpFFQ7eX8uCLjPc3KyrwMGOT+t/DLoT
 UO/W2M4KZVH3eOihBLYx5TtgAoTtwXZrVA5VE3r4K28VEZnJdqbZpZMQE
 hQ+XtGNIAxXP13wASXOtdElzRPjFl7ZeDFWlsH9TEb+yOOpa+3vam3gLB
 hmYjgt9J1U4/IL2Zcg1bT6GMFC0hnwGbhS3frIIoKHwTpFwI2fWZI8NyA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ndNXpGyP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------IeyMGg9bZ83KAjflHZVcXumt
Content-Type: multipart/mixed; boundary="------------lHvCjxPmiV0XrS0pYS4bwsL1";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
In-Reply-To: <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>

--------------lHvCjxPmiV0XrS0pYS4bwsL1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 6/30/2025 11:48 PM, Jaroslav Pulchart wrote:
>> On 6/30/2025 2:56 PM, Jacob Keller wrote:
>>> Unfortunately it looks like the fix I mentioned has landed in 6.14, s=
o
>>> its not a fix for your issue (since you mentioned 6.14 has failed
>>> testing in your system)
>>>
>>> $ git describe --first-parent --contains --match=3Dv* --exclude=3D*rc=
*
>>> 743bbd93cf29f653fae0e1416a31f03231689911
>>> v6.14~251^2~15^2~2
>>>
>>> I don't see any other relevant changes since v6.14. I can try to see =
if
>>> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
>>> systems here.
>>
>> On my system I see this at boot after loading the ice module from
>>
>> $ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=3Diec=
>
>>       26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ice]
>> func:ice_get_irq_res
>>>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:565 [=
ice] func:ice_init_arfs
>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:397 [i=
ce] func:ice_vsi_alloc_ring_stats
>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:416 [i=
ce] func:ice_vsi_alloc_ring_stats
>>>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1398 [=
ice] func:ice_vsi_alloc_rings
>>>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1422 [=
ice] func:ice_vsi_alloc_rings
>>>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:109 [=
ice] func:ice_vsi_alloc_q_vector
>>>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:40 [=
ice] func:ice_fwlog_alloc_ring_buffs
>>>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:493 [=
ice] func:ice_setup_rx_ring
>>>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:680 [=
ice] func:ice_alloc_mapped_page
>>
>> Its about 1GB for the mapped pages. I don't see any increase moment to=

>> moment. I've started an iperf session to simulate some traffic, and I'=
ll
>> leave this running to see if anything changes overnight.
>>
>> Is there anything else that you can share about the traffic setup or
>> otherwise that I could look into?  Your system seems to use ~2.5 x the=

>> buffer size as mine, but that might just be a smaller number of CPUs.
>>
>> Hopefully I'll get some more results overnight.
>=20
> The traffic is random production workloads from VMs, using standard
> Linux or OVS bridges. There is no specific pattern to it. I haven=E2=80=
=99t
> had any luck reproducing (or was not patient enough) this with iperf3
> myself. The two active (UP) interfaces are in an LACP bonding setup.
> Here are our ethtool settings for the two member ports (em1 and p3p1)
>=20

I had iperf3 running overnight and the memory usage for
ice_alloc_mapped_pages is constant here. Mine was direct connections
without bridge or bonding. From your description I assume there's no XDP
happening either.

I guess the traffic patterns of an iperf session are too regular, or
something to do with bridge or bonding.. but I also struggle to see how
those could play a role in the buffer management in the ice driver...

--------------lHvCjxPmiV0XrS0pYS4bwsL1--

--------------IeyMGg9bZ83KAjflHZVcXumt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGRJmgUDAAAAAAAKCRBqll0+bw8o6AAS
AQCH8c7aNwzI+wXI6RdAlY2uhqcg9+Jc5SSyhIPbBkP0uAEAvsXAkwAYKioqJiEBzYA9gx76g5KC
1MV3R2dZk6/BnAU=
=BDRb
-----END PGP SIGNATURE-----

--------------IeyMGg9bZ83KAjflHZVcXumt--
