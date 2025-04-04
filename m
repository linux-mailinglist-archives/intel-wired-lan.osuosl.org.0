Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFA1A7BB32
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 927E083AC0;
	Fri,  4 Apr 2025 10:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wv7FOwsPDZnS; Fri,  4 Apr 2025 10:52:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5C2783B46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743763958;
	bh=H6fPnBxH9xg5ZujvJtuhtH6xAXSxvUp4PBave+CZNXY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k5iAbM2uTh9OrOcjbjhN9+z7EavYIZGEAe6CIgbWveUUvM29elskzjz2J0lqPRTSF
	 8RLszlV8nImP9Q0YkktM/9VuglgsefKFKFBOHNvIQJvJ671IpsH4mItdxE6E2CXeG8
	 73d0YvB8pv3p/TfDTVXBrVy0gSePISqWmnNZTKU8wFZMDlQ7+2PGiPzA8DyZcU42aX
	 neFA2H+u3mWdZPBABGkd7Ertw92hGXFnTyKq3gSuIwTijxK4bzE74vsIgcBGY+t2+1
	 kEeDFXTSui9F9giVWp07hf4mv8e2lKEdgybG/RvF+bUFLpNp0Veh1xMTb6HE3Ke9b1
	 JlitlUk1pV3Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5C2783B46;
	Fri,  4 Apr 2025 10:52:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AEF72117
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0625406F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:52:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o8LsTk1L-LXR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:52:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0C8174059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C8174059E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C8174059E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:52:34 +0000 (UTC)
X-CSE-ConnectionGUID: 1bp1u75aR2iyeFpkpmvVtg==
X-CSE-MsgGUID: Ch959QWpTj+nicHJ4fGM4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="44448975"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="44448975"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:52:34 -0700
X-CSE-ConnectionGUID: nAnyAyA8Q2mvSvZw1R5iwQ==
X-CSE-MsgGUID: tkTW5CmRR8GzZCiWX3t+tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="132402987"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:52:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 4 Apr 2025 03:52:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 4 Apr 2025 03:52:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 03:52:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GNUSYhpl6378QgKa91w6l1hqnGT7hzsQOo4LS9qIssC/7kqKdjm/0Bu2ML3m3jj5CB6vlsgE6gJ5mLXntnjUYz1OHjzBwOxB4UClaVYTUOXRoSPyzU+Rg9dTkus9c6vjTVgI2Bx0XVhXTvf4MWA61iLY7M05YuKb5n7GdJpoDqx9Fp4zGs0uW5PTD2RhtKCgycRalOb71lTxbpwiSOAWhevKtVVlXrNzfBgwjkxLM2I/sXu1ekUF2GnHs/3SRqDQKjJiWSp2ESDESf6Jd1uUJMxLRy1g9+KGKYFrZuDjLps+uu/9faVNvkypLlplYFDdS87b2T3LleWkAF5wgY0/lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H6fPnBxH9xg5ZujvJtuhtH6xAXSxvUp4PBave+CZNXY=;
 b=VNdDvqIEmQmKK4I9tuiZIyisdITRWSydTQOZdVcDxbiSY4Zq0YwoP6x7uzq/Fg3TVOUHc/CYtqF6/MZc783Qw7yrsWtbPu2zdGRLwKVtUcOtKPGIhzFtg57rZwta1bfZ7ndHw3qAP0VCetcN4gih3cEDhkJtfOMyd+Dt3koT4qbXb8SFylErOO1HoykbfPg4HIjYONbmrynib6wuuleLjMbz+6ETOptv0HNOedVB7xnGplWQfZayYsmj/Ic4DfpMlpAk609KbGjqcmJQXTkzg/cWdHkXFZnwHdgANEe0RCvM14/FUtfKXt3NQfNJ0vLkOhMeDT4OzyJRyjO1Ob6GGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.41; Fri, 4 Apr
 2025 10:52:31 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%5]) with mapi id 15.20.8606.027; Fri, 4 Apr 2025
 10:52:31 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: refactor
 ice_sbq_msg_dev enum
Thread-Index: AQHbmZrKnf1krcksBkCRn+62He7mRLOTaMaw
Date: Fri, 4 Apr 2025 10:52:31 +0000
Message-ID: <IA1PR11MB62411E360D95FF701FFA72448BA92@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250320131538.712326-1-grzegorz.nitka@intel.com>
 <20250320131538.712326-3-grzegorz.nitka@intel.com>
In-Reply-To: <20250320131538.712326-3-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA1PR11MB5803:EE_
x-ms-office365-filtering-correlation-id: b757e717-2aa6-42ac-d176-08dd7366ccb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZyhXMg6abAUjF5OxSX1I3n+sdpvELimGAO5Ya1UV5fG1E5+aaNc63xLAKx2z?=
 =?us-ascii?Q?u1UB2JHQaRjZNSb9wJrGU4VYyv80V0YIsDIAttNqTF7xjqIEWlfIq+tR+FEF?=
 =?us-ascii?Q?5WoSYxz/ev3AUHnwfGKNqDoQv6t/soOtcgCDKiyo/4X4y8fTOj7QEaijzXr0?=
 =?us-ascii?Q?ASLjxrrvsWLVrXfvL5tkLke09/j7aYxpoWa4zh9Q9D6AYnTpz2sOKkhcpHCi?=
 =?us-ascii?Q?og0kJ0r7BnIwILcHZLZqokDFYI/QQGbc59dQ38ky/Z2ATgsY6DpYMkiWAMQw?=
 =?us-ascii?Q?HwIX8qcHu6KdLdmnuiUQfDhrfkc2woLgthNji/AP5JvfVH2FNWxVS6EypM5z?=
 =?us-ascii?Q?O0sxUKjNN8cUndCPF4TQZvSW8aJxSe5lJon4InwAsvQVrXOoXPmucr/cRQy+?=
 =?us-ascii?Q?xr6gV29rSovoPH69LoqWl+IVrzXMucCv47OtuSRW49EGCmk0ti3q1JI+btHb?=
 =?us-ascii?Q?ULuWQSVu7/PTodnR+0KLhk6tZ/S/xhuiqCk0FuXL1ZgLQG7HsBA9u1u6lMs6?=
 =?us-ascii?Q?MbH94uD8VaTnd95Kk5Xf5/WiLI65KQjN+097eYnTWoH6INBF8Oqb3uqRwqXY?=
 =?us-ascii?Q?YIfVIgi49rphHxiZDjJ7SpO1RF94Pw2Jdaa23CrXlPNSpKrX5uhCPatFKvwO?=
 =?us-ascii?Q?idKQ226jBOL9hWbRoABnVhS0XxrowKRcfVVNLS7A/Nn0QJty7f726R3VW4xQ?=
 =?us-ascii?Q?Q4EnalM5RLMxS5zZz97HgDJnoawQ/kQzTm/k4gSzrL6C8OjX0YNOkfA191/2?=
 =?us-ascii?Q?5IRbuu61vyuCWn3gpeDewB+ckfLpyc3thyv7+DjW1kTb6/Ord5v0bpcd9f9H?=
 =?us-ascii?Q?MMIfDvwXcS83240GkVKpECW8MoCDkCMgkL23oJJ0U2VemZ26lT7NAu4gBUDe?=
 =?us-ascii?Q?NrcUWr9RymtW9HLn7xr+Ii+V/B2CBAR8yxxen1CZXy17PqwOaeyMIXA225Rq?=
 =?us-ascii?Q?0G+QTfAjCRn25edOGNb7urTsjV/yTki4Aop/2yIQcPtEOCkecC5hc2yGGgqR?=
 =?us-ascii?Q?inQSVhtKnGEaJblQzCxE5GzkffAiRTOcnrKqonOpjIksK4Ht1dRujm/+6Kw8?=
 =?us-ascii?Q?XXVyXrMMy/z/tmOEwHERyO+JDmNG9MIR4qEh54iOs9SwiCp+6U/zW05hasYE?=
 =?us-ascii?Q?TYhM4nu26H4qjrtR6TwxPBWafXUH3Kz+2ky0rinKrPvZkXjmiDFGX3rG7XVY?=
 =?us-ascii?Q?Nr+gptRD5Pn73PMmehvc/ExSCzyzr2cCZpRf9HQdiKPbNaHaYAEPCHL6tO7d?=
 =?us-ascii?Q?bSHIBE0YtMjo38uY4FkmQXnoIym0nhlfsIm1Ehh7T3oFD8RKio2pqy1LSM9i?=
 =?us-ascii?Q?fEDnOgrwG65RZB0cw0ztFXkmskQvBKulaeYmDdZPj0fbHEfFGdeR79URb/h2?=
 =?us-ascii?Q?/3POdTJfiQutAVNYw9XT35LSMaY3pZu7gRIz2CWlo7o5apX0XH3EZxEPR4Je?=
 =?us-ascii?Q?erF++OA3ito0CBvmPHEcYIEizQZuzTBs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UdZsFGkcoATJvibqd81k/i0Mmfwd0GQY99GdanGbY6P4jYt2hpI0Og4+pY4g?=
 =?us-ascii?Q?UNv3mrY1z2Ix9pZ1v8F8J6t7ikFTbI4jDtbIkvyF9Y/K6rlzJBrR2EpsbzQa?=
 =?us-ascii?Q?FtVpCa3DJ1BY1u17MSayM98QZtpYu+of+jAq8yOEKB2zupNQZERvlNvE5JNZ?=
 =?us-ascii?Q?Ls29r+OeFtDKH2XRW0XimV7CHvYHC7QsuEe37HGQXMyQmKo4YgxFIcghSS6Y?=
 =?us-ascii?Q?40/1WbNG4LownXxNrCzerILbigX3AMZOH5L4QhRp63kKMPdm0TMcQVFfIiQp?=
 =?us-ascii?Q?D2vkbcQXgZVnYOqsr3Yobzt4CmKX9kShhSgwF1GZXgVjJmLkAk1LoilwPtdP?=
 =?us-ascii?Q?K4QkOcbUGWzZ5cntISoNXveFzoOzn/tXxTLhsmEDozmQenVUOMWj5N68b6/7?=
 =?us-ascii?Q?YwOoS/IhSl5suQeSgIL1Szp/6YmGsqx/wOT+nNwR+C5d0ZZISh9gHeDHpVJ8?=
 =?us-ascii?Q?j7tW7Mn8eOchByn8WI8xY6hDtI4WMXMxdlv6q76y/8RAvqz8v95MJ639ZLpT?=
 =?us-ascii?Q?H1iOndC0UBfrgHJE71vDeW8zBg/1wXGMhQ33X8uUFtcqBuzz1dHNIl3W4GrC?=
 =?us-ascii?Q?KEAfH3Q2Gjxi0h7680v/Lpr4MUIe97vcyDMuNJ/9Epy5+sicB8FaDZZZIxdh?=
 =?us-ascii?Q?26vIX19ZlsaKv0QyMfWNyz7ZCBBFOrEbFPxYfCMEf29ikOqiLEwRgkMM61g/?=
 =?us-ascii?Q?uS5AwMRScEid/fD1jPXOD+mPx4Pi25ph2LdwIm1dHWxbG8YjpgcrHoXfmUiJ?=
 =?us-ascii?Q?KeH8tARX4fek/xdNhGlz4cx44n9DX46I0uc0V9y72wPmdnsfiQ+aYlN/yDRi?=
 =?us-ascii?Q?LKqRWoD8XhU0I3ZJdmZoH6vIAciTkLHye0a+PVdULeYRUYSU27jqG/7DlF56?=
 =?us-ascii?Q?xN+59KTai/VJy4vvfgdwBICNLERAbWbMFfL0q+AM71R1tsqJpBhQKB2HXSS3?=
 =?us-ascii?Q?Ou5yHi0Z0oc43fVQZccC5N6AxS19Z9MTyIkmszp6g63t6oLsm9kROptKfBoU?=
 =?us-ascii?Q?Uiun5CJbL2Fc1RGDpqKRCXDfjOtHxOL3ypBsL6yQDNJy6Mr7oxeWPMkokY72?=
 =?us-ascii?Q?0DcnrB9IZWZhIxnAChOnGgSxFPFt7ZXXEty2LI48IobvxO9zH3fwq5t4OWlq?=
 =?us-ascii?Q?4MVZyiCgqExo174pUrVt0075JCN+iQ3cvi8w1Rv5gfqSxJnPgNcloL6+gS9t?=
 =?us-ascii?Q?Yq5FRcYsvZJ3Xjr0zgaaF7v322XU3YfWPiBaeDexqlIajCEADt0AaHg42N+y?=
 =?us-ascii?Q?P2iKE1t/MO07O4RGoTGd8MPadcl8RdA39SagqKQocy56xN7rr3nhj7dDuHqX?=
 =?us-ascii?Q?T5L5v5v2Ro/Z2e/1/pQt0cX3KUDe5E72Sy7hxA+Py7jVcUMdRe9Dfm9XQZLj?=
 =?us-ascii?Q?2nFN8OV/S2TxLfMOWfj2lq5ft4SLDSQX3Iqxbtb5GxpEDexRClvBWsrVXzto?=
 =?us-ascii?Q?D6UEsaZcS1ra8p9ME062jsfWUZD0VKGWgKbB9i5y+KZwl3Kzjv7QvwzTdxQ7?=
 =?us-ascii?Q?GhU3EoTkL019Pvb8bo7En08Nv0xrQnDsP2hPjQBQUrLMEB2tmClyoUs2ZUgq?=
 =?us-ascii?Q?14ZZs7R1OUl3RH993ebtqmD1WKL97y32FMHiIll5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b757e717-2aa6-42ac-d176-08dd7366ccb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2025 10:52:31.4254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4M+CsgVb0xmF4U1mzunmkHmvABcsWmJ7zfNCw/ZBuiQ9LnalOnrWwNFun5WUbmJI5SFoXgU1fWad82Z8J9137w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5803
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743763955; x=1775299955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OpTv8bHoLoGDK3Cldvi1sq5MrL6bREdZ5CH8GmboRIA=;
 b=C4P9cX0hWx7TzrYA2p5FgUhWsFM/TJQoGRgS8lNfMm7kuvms0qJF7A/6
 hMNA9rd4+Resfg+6uz7H7GVt/a3/z82IcPK0FaWM32Rlhk6jZMTp0fMvY
 mAPdxwahnn5mf7BkeGER5WlNtCjBJeeyx37tIveImiT1bieRxADRj8m0I
 +lXQ/faGrt0CyWNfftvrCnGyb5eqcaRczKSW9TBlFyRJwr0eIU3G+SmAj
 ufrTTFAs80UITedTSRw/gV4eEcx0l6SIx/El34heL3AThMfH0X/CElqqi
 UQ3DW1WVxdord+eKFQUlSv045Qx1DlZQFxseMmq5NWBrBKnTcdh3NThSy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C4P9cX0h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: refactor
 ice_sbq_msg_dev enum
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 20 March 2025 18:46
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; horms@kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: refactor ice_sbq_=
msg_dev enum
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Rename ice_sbq_msg_dev to ice_sbq_dev_id to reflect the meaning of this t=
ype more precisely. This enum type describes RDA (Remote Device Access) cli=
ent ids, accessible over SB (Side Band) interface.
> Rename enum elements to make a driver namespace more cleaner and consiste=
nt with other definitions within SB Remove unused 'rmn_x' entries, specific=
 to unsupported E824 device.
> Adjust clients '2' and '13' names (phy_0 and phy_0_peer respectively) to =
be compliant with EAS doc. According to the specification, regardless of th=
e complex entity (single or dual), when accessing its own ports, they're ac=
cessed always as 'phy_0' client. And referred as 'phy_0_peer'
when handling ports conneced to the other complex.
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_common.c  |  2 +-  drivers/net/etherne=
t/intel/ice/ice_ptp_hw.c  | 20 ++++++++++----------  drivers/net/ethernet/i=
ntel/ice/ice_sbq_cmd.h | 11 ++++-------
> 3 files changed, 15 insertions(+), 18 deletions(-)

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
