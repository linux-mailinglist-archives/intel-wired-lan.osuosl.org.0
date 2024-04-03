Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47736896A7C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 11:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F1C480EBF;
	Wed,  3 Apr 2024 09:27:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GIdfudsMvSD; Wed,  3 Apr 2024 09:27:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E331780D7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712136452;
	bh=LHjhHc+OFL/1zaHxYUi+t0YJksByxpL8MYuS0/o4EQw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0UflLhBBTo1VjbbDiC9xJYeQUFY5p/2Hl+94QdYa/UmdoSceMwsuZSJ3/1tCUNQnU
	 FbKsnqnVd/lukPWgZv74EshULFtxVvVZkSFDv6SbKMW0G3PhxsKZBub+gos/6UKthV
	 bkH6rP8g2qncxlLEjSynN+8xY6h5tV9BpirJZALqbG55mtUSyNn5FlvxTDWeYk/3jc
	 qqXTGS2nkxPowPYIBiwVxu+oPaR/VeFvJeH5bFuDPLXa3+StFg2A4qPT643hEWclhD
	 Uz7uL6DLd9um7Q2KQBvK1hLC/+Bsy5T8Gfg833Qj1otDy6q0NY3fjqX6uZz9jXoG6r
	 uyO38QupdXJzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E331780D7B;
	Wed,  3 Apr 2024 09:27:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBA171BF271
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 09:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C74D360D76
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 09:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tR9oSfTI1mP4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 09:27:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E467E606F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E467E606F0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E467E606F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 09:27:27 +0000 (UTC)
X-CSE-ConnectionGUID: nf/Yx1Z1SuGONraHDRspKw==
X-CSE-MsgGUID: mBlIY6NfQkaO5icfoGvyIQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="18082624"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18082624"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:27:26 -0700
X-CSE-ConnectionGUID: uunrd/8mQneZ4pjPjAHKXw==
X-CSE-MsgGUID: aJvstR6pQcGUD/Yxvcz/3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18336614"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 02:27:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 02:27:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 02:27:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 02:27:19 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 02:27:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zq+paaT2tYMk0DtiKctsE9vk+B7YqaEkRvgMfQrpxpKf/eqnqh9xQoaqp9mNrbBrh/+ELkhfXnXFO8FixXzCRaupYCcOhTGCfc3gJdBpziFyNoKnopgHA4AJNViMyyTVzGbJYZ7l/zEUES/Zf6osOEde/UrzOps9w9b7CXN0Vm3TTB3pwrgNNOdT+Cz+RyFIeRbCeDvTvFoJ7tIQHwZyW59N4f07urPLDgKmP6i8w1rZoUjiMPEgaLnKGH4LOLRgWo3hvOOGDZWTpLkdYVYJR6FTqviXgjPjDnkE1E/c9WuSoO9nknURnS49thDZEOiUxaPNHz5G0+GwLIfbfWczcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHjhHc+OFL/1zaHxYUi+t0YJksByxpL8MYuS0/o4EQw=;
 b=IeaviHvz55LRySxvBUDvDwQNNDt3KBPReuspbHmyk3FiHc2PhsQ3NRhfPFTPjcDg2xZb6+RpAsJOKJUm7QhfXU5M3lsMbYoS8LUG1myCY2mSxMOuIjcz+UEK7+5a8Fb1i+tF23vxEIZQSG8v/62anfsHprxy5YEkcIiVZmthbaHt+2mwI1+UztfdU0YtkoPBHY5IC/OdEZBbFunmXBXVwtXIzL0EEQ4jA+IuoDj5Xg2UEGnmxDXRvDQVWGLKECvWcxc5jml1qG8Yly3rtDtJXwqsd0EyUTRxGLZbFSLsaGq4HTAVv/yb91B6JW8lk3QflUBj6ywL5GRoFRgqgl+ZtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SJ0PR11MB5151.namprd11.prod.outlook.com (2603:10b6:a03:2ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 09:27:18 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 09:27:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] ice: Reset VF on Tx MDD
 event
Thread-Index: AQHahR4CrNukXglgdUuAzZFf4xiQDbFWF2nwgAAu64CAAADPoA==
Date: Wed, 3 Apr 2024 09:27:17 +0000
Message-ID: <SJ0PR11MB58666BD324254B3B39024A22E53D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240402165221.11669-1-marcin.szycik@linux.intel.com>
 <SJ0PR11MB58667566B779717F962B9871E53D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <1e22362d-63ff-4aba-8ef7-0b139517ba56@linux.intel.com>
In-Reply-To: <1e22362d-63ff-4aba-8ef7-0b139517ba56@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SJ0PR11MB5151:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wfvDpG4SwkJ6v1oKuj03kC8rnCwKFoFo182qrhoQwi06HaIrb4tEYBeQqcNh5X2ImCpDxrbiSr4XOAEUbhVMyjFgvwSDfvDV8ZYzGVzhic2Vf4/IPlVAG9O17ylvjYMpo+hWFFKSL5cStjj+yz/9/hPHS9j/YRjHUA0rYF5UcScTSDsMkB/ph7Cc08NAYvZrg6WQnc8F0Y0+kugbkRgNbEE/Ta5mzYPOgFNn/3UIIwDoa6Em3IO2oOpnO4PF7rcAgs/7yjcCOU+BuG8a4LmILl5GyLhH1o3dBSpO++Wk/WCwYzZQlfihPkMypkPOhLO9d2d50/dBsb/emKVQbdJvJn4ENDR6iCt8L6EsxQz13Xzm+VeOKF0DhgzVTPacis+kUgIGsETb3ngRRysAIODqgyt+UnkYalKOA3lkUZH/iDRmWZr3inIhRtbbFhccGOei7CIJe4s5Po3SYLOL6KyL0+dFYnI6XELnWcVTQJh5vqEcP3lxQOMAVoXaARwkLwIo7/5OGaAhRogf6o3ns4tVJciJPS1iHuMPTShj1pC5gS8PQiFVQ/e4Aha0QhAnCG6tJJ2yMEK/mH/NzDZRn4zB8tGxj4LB8IwDSAY859iaVydjkGQam4+YHk2H8IKlzdBC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFpDSnZLK00wd3ZTVWFYZ0Jnb2NhQ0dCU0lWLzhNN0RPdXYvQVFtc2RQNTlZ?=
 =?utf-8?B?V2h5K1UyWkY4YkRlbzNBSEJ6OWNnanIyTmlML0NGLyt4REsvQ1JnKzMydHc0?=
 =?utf-8?B?KzBmUDNrNTQzZW9OeXhpRCtMdjFUZWd6emxGUUNsZkZkYjh6cXZ1K3B3QzBO?=
 =?utf-8?B?L2lJMVF4SU5odEo0cTZlU2FRcHM1NEgwb0dTRWxqSTJ4RVhMN1Z2cWloNE9q?=
 =?utf-8?B?STlmZzE4Wis0ZjlMRG0zQnBTbys5S2REalkyWDJBTkhkUkhwZkQ1MVhlTUVv?=
 =?utf-8?B?eFBscTZiVUhJc1pFWHpkZDI1TWxFTmJ1eVhWOXhaZVp6Y2J6dGZubnlHSnk1?=
 =?utf-8?B?L1FFQ2N2dzI0THNBQzhRSkViVFhaY1dIRDRNcmZneWVUL29ac3lGNmFrR0pF?=
 =?utf-8?B?ajNWSmNqTkwvOGhIUkxad1FIU0JHYmxLMmJTZXk0Ujg5QUtkRzl3VWg1MVNZ?=
 =?utf-8?B?a2NBOGgyZGtQSTBpMm5taldmbFQ1Q0x5a3gxUlRJZU5PSVpXclNNalFNc1g3?=
 =?utf-8?B?dFpBVHhQZi9QTlByVmQvbVYwWHIydVFVcVpKNVhrSE1yVDg2SU1qcVdPbUVI?=
 =?utf-8?B?QmRNOG5HMUQwUjk2aXVZQmF4VTVHdmVNTzQ3OE9NbTNpMVJjeVp4V3ZFTWVk?=
 =?utf-8?B?UVJBMDhqN25YR1l4N091OE5ESVZhQ3N1QTZNVy93cENyZVBPWnNzL0JLbE0w?=
 =?utf-8?B?d3dtUzNnN0JYZmZ6Uis1TXVQVzJqbFpxR2twU1Z6YmJCaWZyaXNienVuVlJE?=
 =?utf-8?B?S3VXMjlmaHQ2Vm5nSFhtYTJaOEg5SWFCOGI3d0N4MWhNRlN3ZUlYVkt1aTd3?=
 =?utf-8?B?bWFaNmFYU3JqV3R1WTk1bVBWbTFIa2N4VEYzbEdJMkpUQlFvWk11Mk54dU5o?=
 =?utf-8?B?TktWdFNWZTA1endESmZDUGp4MXdaK1UwVWhWbHBORG12WW9YZTkyNTJVT2p1?=
 =?utf-8?B?a3lWTzQ0K3ViaU1ZUlRpdlU2YlNVTmxMcWNuYVByMnFBL3NENUlXV2NnTGVj?=
 =?utf-8?B?aDhVWi9UamEzOTNXRXhjQjFLVHp0SHJZaHY4U1VhQVdMWHRuNklBbkN2VVd5?=
 =?utf-8?B?WXhPZXVxS1N3elRCMFdESzFlU2hYdEZBSDRMR1g5MVhOUWdVclRnMzNMSHJk?=
 =?utf-8?B?R0kzdVQyOXRFMGhzM0Rub3dzVE10UWFwTitRVUVpeDQwbzlqckMzR296SHBQ?=
 =?utf-8?B?RW9rMEFIbHpsNzliNjJwNVlIRTdmQUpjaTdZR3U2YTBnOGREWTNoUHV2dmtN?=
 =?utf-8?B?V2ZSWkd4MWRwZENxTDFSc1JmZitVUkcxNTM5N0kwTnBFeDJzRXZOVGxHMVk4?=
 =?utf-8?B?RVIyTGVtSzFlNU9INEgvVXZSYTJ4VUoxblpIdDNBUjQzZm9McnAvdDIwTG51?=
 =?utf-8?B?TUVOTzU1eHUyMGw5RGxXdElrand3RG9lWjdGWVlHektsSjFkYTBhYTBZK0pC?=
 =?utf-8?B?VkhJMC9Kay83ejRmdFlFdUtVc2NuWEN5TnBFNW1vZUFtaVk1Z0xTeE02dGxX?=
 =?utf-8?B?TjRmZGk1ejJGYlVvNm82RDdwNUt5aW1zZUhTVGZYbWpzUWZnaUdFOEQzMDds?=
 =?utf-8?B?dnRiZ09qTmpnTkVXTmYvV2VJdXEyVUEvcmZxcUU0Y21LY3dTcDNweG10Y3Nt?=
 =?utf-8?B?bUxadWk2a1FCSzJYMVphazRkcjJBaDhVQXoweFNiZUFrNmNBbmE4MlMvUVJj?=
 =?utf-8?B?eGphRzFJRGpoSCttUGIySmdTb01qTXQ5UWRyVk5zWW9JZlpudmhWaks1T0kv?=
 =?utf-8?B?RjNRMm5vb0l4L1BkZFEzOWsyNXZON2hqSVEyK0NFVG9qNHhSRGxSMXgzVWNl?=
 =?utf-8?B?d2dvaWoxMWpENGhaV252aUg2MncxcThYR2UyYW1lb2NBU0FtN2R0M2NNNTE2?=
 =?utf-8?B?azJWRkJLTHBVditSQXNlK0MvUHo1NUZnYXNENTNFVHdjZkZ2MkhQOGIyczRo?=
 =?utf-8?B?REIwdWtVUXhKbEkrZ2xicjR4Ly84cFNXcmZ4R01qdktNeFcrVG04WDJVTUl4?=
 =?utf-8?B?VDBvQTZEclFiN1k0NFd5TktpZ1VJM0Q3ZnlMdGRia1BNZGRTMFBzOGljUUtI?=
 =?utf-8?B?QVJYYnBMZFpibDVHLzRCWlBoZnBBWlhkMTBGZXB0RWI1THlyY2hIM1lwTG1L?=
 =?utf-8?B?UU8yY2J1YzlwK1VRM2NtaTZxQzlqc1ViU3FXckRhVlpxT3k3MkhWZFFDUWk2?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb2b874-1f83-4f68-ba31-08dc53c041a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 09:27:17.9799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V+JiN6ECkMqIV6Z6OzWuaNkYi1w1OLNYaGnUhxvp1WD5HrlNdFKiRaJCMsuPevo/KU3y2WkxCgQKz6Lf5DA5T9mn+LpZpvaLZcOuZv6fR58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5151
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712136448; x=1743672448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LHjhHc+OFL/1zaHxYUi+t0YJksByxpL8MYuS0/o4EQw=;
 b=VJk/ifzZXZJ7aCM5h/ZZtgIPbnt5EA0aFSYJh/X3d/xcel/LcpY2/YIY
 YhssJnIhl7JUWh2cS9DIKkj6KmCM8GzYUd8GZTZVLTOZ0qG4eiSdXcXF7
 QauD6VWLfwP78im+xQVAAIwKCF3kBCBNruf8MGfjP7djyXtspbFU/OFGg
 QR0P0EDAprubzIkqkWWXmEmj0LKdMWgGMOEohQrM4ZwifwrYhhsLtPuGK
 p6UI7wxWprfmVpguur7Iz0DiWBVBX+h6UgOYVGv2yg41mnSpPof585+LD
 3MTDbPE+WuvyXGve8XHeR9QjA6nTNIndEkobvoRJgvm53Do2CV8h82ZnT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VJk/ifzZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: Reset VF on Tx MDD
 event
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Wang,
 Liang-min" <liang-min.wang@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFyY2luIFN6eWNpayA8
bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwg
MywgMjAyNCAxMToyMSBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPjsgaW50ZWwtDQo+IHdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3Jn
DQo+IENjOiBEcmV3ZWssIFdvamNpZWNoIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPjsgV2Fu
ZywgTGlhbmctbWluDQo+IDxsaWFuZy1taW4ud2FuZ0BpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnOyBDaG1pZWxld3NraSwNCj4gUGF3ZWwgPHBhd2VsLmNobWllbGV3c2tpQGludGVs
LmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47
IGhvcm1zQGtlcm5lbC5vcmc7IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
aXdsLW5leHQgdjRdIGljZTogUmVzZXQgVkYgb24NCj4gVHggTUREIGV2ZW50DQo+IA0KPiANCj4g
DQo+IE9uIDAzLjA0LjIwMjQgMDg6MzcsIExva3Rpb25vdiwgQWxla3NhbmRyIHdyb3RlOg0KPiA+
DQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogSW50ZWwt
d2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbg0KPiBCZWhh
bGYNCj4gPj4gT2YgTWFyY2luIFN6eWNpaw0KPiA+PiBTZW50OiBUdWVzZGF5LCBBcHJpbCAyLCAy
MDI0IDY6NTIgUE0NCj4gPj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+
ID4+IENjOiBEcmV3ZWssIFdvamNpZWNoIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPjsgV2Fu
ZywgTGlhbmctDQo+IG1pbg0KPiA+PiA8bGlhbmctbWluLndhbmdAaW50ZWwuY29tPjsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgQ2htaWVsZXdza2ksDQo+ID4+IFBhd2VsIDxwYXdlbC5jaG1pZWxl
d3NraUBpbnRlbC5jb20+OyBNYXJjaW4gU3p5Y2lrDQo+ID4+IDxtYXJjaW4uc3p5Y2lrQGxpbnV4
LmludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+ID4+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IGhvcm1zQGtlcm5lbC5vcmc7IEtpdHN6ZWwsDQo+IFByemVteXNsYXcNCj4gPj4g
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4+IFN1YmplY3Q6IFtJbnRlbC13aXJl
ZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NF0gaWNlOiBSZXNldCBWRiBvbg0KPiBUeA0KPiA+PiBN
REQgZXZlbnQNCj4gPj4NCj4gPiBQbGVhc2Ugc3RhdGUgaW4gdGhlIHRpdGxlIGV4cGxpY2l0bHkg
dGhlIHB1cnBvc2Ugb2YgdGhlIHBhdGNoOg0KPiA+IERvIHlvdSBmaXggYSBidWc/IHNheSBmaXgN
Cj4gPiBEbyB5b3UgYWRkICBmdW5jdGlvbmFsaXR5PyBzYXkgYWRkDQo+ID4gRG8geW91IHJlZmFj
dG9yPyBzYXkgcmVmYWN0b3INCj4gDQo+IElNTyBpdCdzIG5laXRoZXIgb2YgdGhvc2UuDQo+IA0K
PiBJdCdzIG5vdCBhIGJ1Z2ZpeCBiZWNhdXNlIHRoZSBkcml2ZXIgaXRzZWxmIGRvZXNuJ3QgZG8g
YW55dGhpbmcNCj4gd3Jvbmc7IHRoZSBwYXRjaCBwcm92aWRlcyB0aGUgdXNlciB3aXRoIGEga2lu
ZCBvZiBvcHRpb25hbA0KPiB3b3JrYXJvdW5kIGZvciBhbiB1c2Vyc3BhY2UgYXBwIHRoYXQncyBi
ZWhhdmluZyBpbmNvcnJlY3RseS4NCj4gDQo+IEl0J3Mgbm90IHJlYWxseSBuZXcgZnVuY3Rpb25h
bGl0eSwgc2luY2UgdGhlIG1kZC1hdXRvLXJlc2V0LXZmIGZsYWcNCj4gd2FzIGFscmVhZHkgaW1w
bGVtZW50ZWQgYW5kIGF1dG8gcmVzZXQgd2FzIGFscmVhZHkgaGFwcGVuaW5nIGZvciBSeA0KPiBl
dmVudHMuIEknbSBqdXN0IGV4dGVuZGluZyB0aGlzIHRvIFR4IGFzIHdlbGwuDQpGb3IgbWUgaXQg
bG9va3MgbGlrZSBhZGRpbmcgbmV3IGZlYXR1cmUsIGJ1dCBJJ20gbm90IHN1cmUgeWV0Lg0KDQo+
IA0KPiBBbmQgaXQncyBub3Qgc3RyaWN0bHkgYSByZWZhY3RvciBiZWNhdXNlIEknbSBjaGFuZ2lu
ZyBiZWhhdmlvdXIuDQpQbGVhc2UgZGVzY3JpYmUgZXhwbGljaXRseSB3aGF0IGJlaGF2aW9yIGRv
IHlvdSBjaGFuZ2UsIGFuZCB0aGUgbW90aXZhdGlvbiwgZXNwZWNpYWxseSBpZiBpdCdzIG5vdCBh
IGJ1Z2ZpeC4NCg0KPiBQbGVhc2UgYWxzbyBub3RlIHRoYXQgSSd2ZSBwaWNrZWQgdXAgYSBwYXRj
aCBub3Qgb3JpZ2luYWxseSBtYWRlIGJ5DQo+IG1lIFsyXSwgYW5kIGtlcHQgdGhlIG9yaWdpbmFs
IHRpdGxlIGFuZCBtb3N0IG9mIHRoZSBkZXNjcmlwdGlvbi4NCj4gSSdtIG9wZW4gdG8gc3VnZ2Vz
dGlvbnMgdG8gdGl0bGUgdGhvdWdoLg0KPiANCj4gPj4gSW4gY2FzZXMgd2hlbiBWRiBzZW5kcyBt
YWxmb3JtZWQgcGFja2V0cyB0aGF0IGFyZSBjbGFzc2lmaWVkIGFzDQo+ID4+IG1hbGljaW91cywg
c29tZXRpbWVzIGl0IGNhdXNlcyBUeCBxdWV1ZSB0byBmcmVlemUuIFRoaXMgZnJvemVuDQo+IHF1
ZXVlDQo+ID4+IGNhbiBiZSBzdHVjayBmb3Igc2V2ZXJhbCBtaW51dGVzIGJlaW5nIHVudXNhYmxl
LiBUaGlzIGJlaGF2aW9yDQo+IGNhbiBiZQ0KPiA+PiByZXByb2R1Y2VkIHdpdGggYSBmYXVsdHkg
dXNlcnNwYWNlIGFwcCBydW5uaW5nIG9uIFZGLg0KPiA+Pg0KPiA+PiBXaGVuIGFueSBNYWxpY2lv
dXMgRHJpdmVyIERldGVjdGlvbiBldmVudCBvY2N1cnMgYW5kIHRoZSBtZGQtDQo+IGF1dG8tDQo+
ID4+IHJlc2V0LXZmIHByaXZhdGUgZmxhZyBpcyBzZXQsIHBlcmZvcm0gYSBncmFjZWZ1bCBWRiBy
ZXNldCB0bw0KPiBxdWlja2x5DQo+ID4+IGJyaW5nIFZGIGJhY2sgdG8gb3BlcmF0aW9uYWwgc3Rh
dGUuIEFkZCBhIGxvZyBtZXNzYWdlIHRvIG5vdGlmeQ0KPiBhYm91dA0KPiA+PiB0aGUgY2F1c2Ug
b2YgdGhlIHJlc2V0LiBBZGQgYSBoZWxwZXIgZm9yIHRoaXMgdG8gYmUgcmV1c2VkIGZvcg0KPiBi
b3RoDQo+ID4+IFRYIGFuZCBSWCBldmVudHMuDQo+ID4gUGxlYXNlIGRlc2NyaWJlIHlvdXIgY2hh
bmdlcyBleHBsaWNpdGx5Og0KPiA+IERvIHlvdSBqdXN0IGFkZCBhIGhlbHBlciBmdW5jdGlvbiB3
aXRob3V0IGFkZGluZyBhIG5ldw0KPiBmdW5jdGlvbmFsaXR5Pw0KPiA+IERvIHlvdSBhZGQgZnVu
Y3Rpb25hbGl0eT8NCj4gPiBEbyB5b3UgZml4Pw0KPiA+IFBsZWFzZSBleHBsYWluIHdoYXQgYXJl
IHRoZSBjaGFuZ2VzIGluIGRyaXZlciBiZWhhdmlvciBhbmQgdGhlDQo+IGNoYW5nZXMgaW4gdGhl
IGRyaXZlciBzb3VyY2VzIHlvdSBtYWtlLg0KPiA+IFRoYW5rIHlvdQ0KPiANCj4gSSdsbCB0cnkg
dG8gbWFrZSB0aGUgZGVzY3JpcHRpb24gbW9yZSBleHBsaWNpdC4NClRoYW5rIHlvdQ0KPiANCj4g
VGhhbmtzLA0KPiBNYXJjaW4NCj4gDQo+ID4+IFJldmlld2VkLWJ5OiBXb2pjaWVjaCBEcmV3ZWsg
PHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+DQo+ID4+IFJldmlld2VkLWJ5OiBQcnplbWVrIEtp
dHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4+IENvLWRldmVsb3BlZC1i
eTogTGlhbmctTWluIFdhbmcgPGxpYW5nLW1pbi53YW5nQGludGVsLmNvbT4NCj4gPj4gU2lnbmVk
LW9mZi1ieTogTGlhbmctTWluIFdhbmcgPGxpYW5nLW1pbi53YW5nQGludGVsLmNvbT4NCj4gPj4g
U2lnbmVkLW9mZi1ieTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5j
b20+DQo+ID4+IC0tLQ0KPiA+PiB2NDogT25seSBwZXJmb3JtIGF1dG8tcmVzZXQgb25jZSBwZXIg
VkYNCj4gPj4gdjMgWzFdOiBPbmx5IGF1dG8gcmVzZXQgVkYgaWYgdGhlIG1kZC1hdXRvLXJlc2V0
LXZmIGZsYWcgaXMgc2V0DQo+ID4+IHYyIFsyXTogUmV2ZXJ0IGFuIHVubmVlZGVkIGZvcm1hdHRp
bmcgY2hhbmdlLCBmaXggY29tbWl0DQo+IG1lc3NhZ2UsIGZpeA0KPiA+PiBhIGxvZw0KPiA+PiAg
ICAgbWVzc2FnZSB3aXRoIGEgY29ycmVjdCBldmVudCBuYW1lDQo+ID4+DQo+ID4+IFsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC0NCj4gbGFuLzIwMjQwMzI2MTY0NDU1Ljcz
NTczOS0NCj4gPj4gMS1tYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbQ0KPiA+PiBbMl0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjMxMTAyMTU1MTQ5LjI1NzQyMDktMS0NCj4g
Pj4gcGF3ZWwuY2htaWVsZXdza2lAaW50ZWwuY29tDQo+ID4+IC0tLQ0KPiA+PiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgIHwgNTcNCj4gKysrKysrKysrKysrKysr
KystDQo+ID4+IC0tLS0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3Yu
YyB8IDI1ICsrKysrKystLS0NCj4gPj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9zcmlvdi5oIHwgIDIgKw0KPiA+PiAgMyBmaWxlcyBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCsp
LCAxNyBkZWxldGlvbnMoLSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jDQo+ID4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9tYWluLmMNCj4gPj4gaW5kZXggMTg1YzliMTNlZmNmLi44MGJjODNmNmUx
YWIgMTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bWFpbi5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFp
bi5jDQo+ID4+IEBAIC0xNzQ1LDYgKzE3NDUsMzkgQEAgc3RhdGljIHZvaWQgaWNlX3NlcnZpY2Vf
dGltZXIoc3RydWN0DQo+ID4+IHRpbWVyX2xpc3QgKnQpDQo+ID4+ICAJaWNlX3NlcnZpY2VfdGFz
a19zY2hlZHVsZShwZik7DQo+ID4+ICB9DQo+ID4+DQo+ID4+ICsvKioNCj4gPj4gKyAqIGljZV9t
ZGRfbWF5YmVfcmVzZXRfdmYgLSByZXNldCBWRiBhZnRlciBNREQgZXZlbnQNCj4gPj4gKyAqIEBw
ZjogcG9pbnRlciB0byB0aGUgUEYgc3RydWN0dXJlDQo+ID4+ICsgKiBAdmY6IHBvaW50ZXIgdG8g
dGhlIFZGIHN0cnVjdHVyZQ0KPiA+PiArICogQHJlc2V0X3ZmX3R4OiB3aGV0aGVyIFR4IE1ERCBo
YXMgb2NjdXJyZWQNCj4gPj4gKyAqIEByZXNldF92Zl9yeDogd2hldGhlciBSeCBNREQgaGFzIG9j
Y3VycmVkDQo+ID4+ICsgKg0KPiA+PiArICogU2luY2UgdGhlIHF1ZXVlIGNhbiBnZXQgc3R1Y2sg
b24gVkYgTUREIGV2ZW50cywgdGhlIFBGIGNhbg0KPiBiZQ0KPiA+PiArY29uZmlndXJlZCB0bw0K
PiA+PiArICogYXV0b21hdGljYWxseSByZXNldCB0aGUgVkYgYnkgZW5hYmxpbmcgdGhlIHByaXZh
dGUgZXRodG9vbA0KPiBmbGFnDQo+ID4+ICsgKiBtZGQtYXV0by1yZXNldC12Zi4NCj4gPj4gKyAq
Lw0KPiA+PiArc3RhdGljIHZvaWQgaWNlX21kZF9tYXliZV9yZXNldF92ZihzdHJ1Y3QgaWNlX3Bm
ICpwZiwgc3RydWN0DQo+ID4+IGljZV92ZiAqdmYsDQo+ID4+ICsJCQkJICAgYm9vbCByZXNldF92
Zl90eCwgYm9vbCByZXNldF92Zl9yeCkgew0KPiA+PiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IGlj
ZV9wZl90b19kZXYocGYpOw0KPiA+PiArDQo+ID4+ICsJaWYgKCF0ZXN0X2JpdChJQ0VfRkxBR19N
RERfQVVUT19SRVNFVF9WRiwgcGYtPmZsYWdzKSkNCj4gPj4gKwkJcmV0dXJuOw0KPiA+PiArDQo+
ID4+ICsJLyogVkYgTUREIGV2ZW50IGNvdW50ZXJzIHdpbGwgYmUgY2xlYXJlZCBieSByZXNldCwg
c28gcHJpbnQNCj4gPj4gdGhlIGV2ZW50DQo+ID4+ICsJICogcHJpb3IgdG8gcmVzZXQuDQo+ID4+
ICsJICovDQo+ID4+ICsJaWYgKHJlc2V0X3ZmX3R4KQ0KPiA+PiArCQlpY2VfcHJpbnRfdmZfdHhf
bWRkX2V2ZW50KHZmKTsNCj4gPj4gKw0KPiA+PiArCWlmIChyZXNldF92Zl9yeCkNCj4gPj4gKwkJ
aWNlX3ByaW50X3ZmX3J4X21kZF9ldmVudCh2Zik7DQo+ID4+ICsNCj4gPj4gKwlkZXZfaW5mbyhk
ZXYsICJQRi10by1WRiByZXNldCBvbiBQRiAlZCBWRiAlZCBkdWUgdG8gTUREDQo+ID4+IGV2ZW50
XG4iLA0KPiA+PiArCQkgcGYtPmh3LnBmX2lkLCB2Zi0+dmZfaWQpOw0KPiA+PiArCWljZV9yZXNl
dF92Zih2ZiwgSUNFX1ZGX1JFU0VUX05PVElGWSB8IElDRV9WRl9SRVNFVF9MT0NLKTsgfQ0KPiA+
PiArDQo+ID4+ICAvKioNCj4gPj4gICAqIGljZV9oYW5kbGVfbWRkX2V2ZW50IC0gaGFuZGxlIG1h
bGljaW91cyBkcml2ZXIgZGV0ZWN0IGV2ZW50DQo+ID4+ICAgKiBAcGY6IHBvaW50ZXIgdG8gdGhl
IFBGIHN0cnVjdHVyZQ0KPiA+PiBAQCAtMTgzOCw2ICsxODcxLDggQEAgc3RhdGljIHZvaWQgaWNl
X2hhbmRsZV9tZGRfZXZlbnQoc3RydWN0DQo+IGljZV9wZg0KPiA+PiAqcGYpDQo+ID4+ICAJICov
DQo+ID4+ICAJbXV0ZXhfbG9jaygmcGYtPnZmcy50YWJsZV9sb2NrKTsNCj4gPj4gIAlpY2VfZm9y
X2VhY2hfdmYocGYsIGJrdCwgdmYpIHsNCj4gPj4gKwkJYm9vbCByZXNldF92Zl90eCA9IGZhbHNl
LCByZXNldF92Zl9yeCA9IGZhbHNlOw0KPiA+PiArDQo+ID4+ICAJCXJlZyA9IHJkMzIoaHcsIFZQ
X01ERVRfVFhfUFFNKHZmLT52Zl9pZCkpOw0KPiA+PiAgCQlpZiAocmVnICYgVlBfTURFVF9UWF9Q
UU1fVkFMSURfTSkgew0KPiA+PiAgCQkJd3IzMihodywgVlBfTURFVF9UWF9QUU0odmYtPnZmX2lk
KSwgMHhGRkZGKTsgQEAgLQ0KPiA+PiAxODQ2LDYgKzE4ODEsOCBAQCBzdGF0aWMgdm9pZCBpY2Vf
aGFuZGxlX21kZF9ldmVudChzdHJ1Y3QgaWNlX3BmDQo+ID4+ICpwZikNCj4gPj4gIAkJCWlmIChu
ZXRpZl9tc2dfdHhfZXJyKHBmKSkNCj4gPj4gIAkJCQlkZXZfaW5mbyhkZXYsICJNYWxpY2lvdXMg
RHJpdmVyIERldGVjdGlvbg0KPiBldmVudCBUWF9QUU0gZGV0ZWN0ZWQNCj4gPj4gb24gVkYgJWRc
biIsDQo+ID4+ICAJCQkJCSB2Zi0+dmZfaWQpOw0KPiA+PiArDQo+ID4+ICsJCQlyZXNldF92Zl90
eCA9IHRydWU7DQo+ID4+ICAJCX0NCj4gPj4NCj4gPj4gIAkJcmVnID0gcmQzMihodywgVlBfTURF
VF9UWF9UQ0xBTih2Zi0+dmZfaWQpKTsgQEAgLTE4NTYsNg0KPiA+PiArMTg5Myw4IEBAIHN0YXRp
YyB2b2lkIGljZV9oYW5kbGVfbWRkX2V2ZW50KHN0cnVjdCBpY2VfcGYgKnBmKQ0KPiA+PiAgCQkJ
aWYgKG5ldGlmX21zZ190eF9lcnIocGYpKQ0KPiA+PiAgCQkJCWRldl9pbmZvKGRldiwgIk1hbGlj
aW91cyBEcml2ZXIgRGV0ZWN0aW9uDQo+IGV2ZW50IFRYX1RDTEFODQo+ID4+IGRldGVjdGVkIG9u
IFZGICVkXG4iLA0KPiA+PiAgCQkJCQkgdmYtPnZmX2lkKTsNCj4gPj4gKw0KPiA+PiArCQkJcmVz
ZXRfdmZfdHggPSB0cnVlOw0KPiA+PiAgCQl9DQo+ID4+DQo+ID4+ICAJCXJlZyA9IHJkMzIoaHcs
IFZQX01ERVRfVFhfVERQVSh2Zi0+dmZfaWQpKTsgQEAgLTE4NjYsNg0KPiA+PiArMTkwNSw4IEBA
IHN0YXRpYyB2b2lkIGljZV9oYW5kbGVfbWRkX2V2ZW50KHN0cnVjdCBpY2VfcGYgKnBmKQ0KPiA+
PiAgCQkJaWYgKG5ldGlmX21zZ190eF9lcnIocGYpKQ0KPiA+PiAgCQkJCWRldl9pbmZvKGRldiwg
Ik1hbGljaW91cyBEcml2ZXIgRGV0ZWN0aW9uDQo+IGV2ZW50IFRYX1REUFUgZGV0ZWN0ZWQNCj4g
Pj4gb24gVkYgJWRcbiIsDQo+ID4+ICAJCQkJCSB2Zi0+dmZfaWQpOw0KPiA+PiArDQo+ID4+ICsJ
CQlyZXNldF92Zl90eCA9IHRydWU7DQo+ID4+ICAJCX0NCj4gPj4NCj4gPj4gIAkJcmVnID0gcmQz
MihodywgVlBfTURFVF9SWCh2Zi0+dmZfaWQpKTsgQEAgLTE4NzcsMTgNCj4gPj4gKzE5MTgsMTIg
QEAgc3RhdGljIHZvaWQgaWNlX2hhbmRsZV9tZGRfZXZlbnQoc3RydWN0IGljZV9wZiAqcGYpDQo+
ID4+ICAJCQkJZGV2X2luZm8oZGV2LCAiTWFsaWNpb3VzIERyaXZlciBEZXRlY3Rpb24NCj4gZXZl
bnQgUlggZGV0ZWN0ZWQgb24NCj4gPj4gVkYgJWRcbiIsDQo+ID4+ICAJCQkJCSB2Zi0+dmZfaWQp
Ow0KPiA+Pg0KPiA+PiAtCQkJLyogU2luY2UgdGhlIHF1ZXVlIGlzIGRpc2FibGVkIG9uIFZGIFJ4
IE1ERA0KPiA+PiBldmVudHMsIHRoZQ0KPiA+PiAtCQkJICogUEYgY2FuIGJlIGNvbmZpZ3VyZWQg
dG8gcmVzZXQgdGhlIFZGIHRocm91Z2gNCj4gPj4gZXRodG9vbA0KPiA+PiAtCQkJICogcHJpdmF0
ZSBmbGFnIG1kZC1hdXRvLXJlc2V0LXZmLg0KPiA+PiAtCQkJICovDQo+ID4+IC0JCQlpZiAodGVz
dF9iaXQoSUNFX0ZMQUdfTUREX0FVVE9fUkVTRVRfVkYsIHBmLQ0KPiA+Pj4gZmxhZ3MpKSB7DQo+
ID4+IC0JCQkJLyogVkYgTUREIGV2ZW50IGNvdW50ZXJzIHdpbGwgYmUgY2xlYXJlZCBieQ0KPiA+
PiAtCQkJCSAqIHJlc2V0LCBzbyBwcmludCB0aGUgZXZlbnQgcHJpb3IgdG8NCj4gPj4gcmVzZXQu
DQo+ID4+IC0JCQkJICovDQo+ID4+IC0JCQkJaWNlX3ByaW50X3ZmX3J4X21kZF9ldmVudCh2Zik7
DQo+ID4+IC0JCQkJaWNlX3Jlc2V0X3ZmKHZmLCBJQ0VfVkZfUkVTRVRfTE9DSyk7DQo+ID4+IC0J
CQl9DQo+ID4+ICsJCQlyZXNldF92Zl9yeCA9IHRydWU7DQo+ID4+ICAJCX0NCj4gPj4gKw0KPiA+
PiArCQlpZiAocmVzZXRfdmZfdHggfHwgcmVzZXRfdmZfcngpDQo+ID4+ICsJCQlpY2VfbWRkX21h
eWJlX3Jlc2V0X3ZmKHBmLCB2ZiwgcmVzZXRfdmZfdHgsDQo+ID4+ICsJCQkJCSAgICAgICByZXNl
dF92Zl9yeCk7DQo+ID4+ICAJfQ0KPiA+PiAgCW11dGV4X3VubG9jaygmcGYtPnZmcy50YWJsZV9s
b2NrKTsNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2Vfc3Jpb3YuYw0KPiA+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2Vfc3Jpb3YuYw0KPiA+PiBpbmRleCBmYjJlOTZkYjY0N2UuLmE2MGRhY2Y4OTQyYSAxMDA2NDQN
Cj4gPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zcmlvdi5jDQo+
ID4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYw0KPiA+
PiBAQCAtMTg2MSw2ICsxODYxLDI0IEBAIHZvaWQgaWNlX3ByaW50X3ZmX3J4X21kZF9ldmVudChz
dHJ1Y3QNCj4gaWNlX3ZmDQo+ID4+ICp2ZikNCj4gPj4gIAkJCSAgPyAib24iIDogIm9mZiIpOw0K
PiA+PiAgfQ0KPiA+Pg0KPiA+PiArLyoqDQo+ID4+ICsgKiBpY2VfcHJpbnRfdmZfdHhfbWRkX2V2
ZW50IC0gcHJpbnQgVkYgVHggbWFsaWNpb3VzIGRyaXZlcg0KPiBkZXRlY3QNCj4gPj4gK2V2ZW50
DQo+ID4+ICsgKiBAdmY6IHBvaW50ZXIgdG8gdGhlIFZGIHN0cnVjdHVyZQ0KPiA+PiArICovDQo+
ID4+ICt2b2lkIGljZV9wcmludF92Zl90eF9tZGRfZXZlbnQoc3RydWN0IGljZV92ZiAqdmYpIHsN
Cj4gPj4gKwlzdHJ1Y3QgaWNlX3BmICpwZiA9IHZmLT5wZjsNCj4gPj4gKwlzdHJ1Y3QgZGV2aWNl
ICpkZXY7DQo+ID4+ICsNCj4gPj4gKwlkZXYgPSBpY2VfcGZfdG9fZGV2KHBmKTsNCj4gPj4gKw0K
PiA+PiArCWRldl9pbmZvKGRldiwgIiVkIFR4IE1hbGljaW91cyBEcml2ZXIgRGV0ZWN0aW9uIGV2
ZW50cw0KPiA+PiBkZXRlY3RlZCBvbiBQRiAlZCBWRiAlZCBNQUMgJXBNLiBtZGQtYXV0by1yZXNl
dC12ZnM9JXNcbiIsDQo+ID4+ICsJCSB2Zi0+bWRkX3R4X2V2ZW50cy5jb3VudCwgcGYtPmh3LnBm
X2lkLCB2Zi0+dmZfaWQsDQo+ID4+ICsJCSB2Zi0+ZGV2X2xhbl9hZGRyLA0KPiA+PiArCQkgdGVz
dF9iaXQoSUNFX0ZMQUdfTUREX0FVVE9fUkVTRVRfVkYsIHBmLT5mbGFncykNCj4gPj4gKwkJCSAg
PyAib24iIDogIm9mZiIpOw0KPiA+PiArfQ0KPiA+PiArDQo+ID4+ICAvKioNCj4gPj4gICAqIGlj
ZV9wcmludF92ZnNfbWRkX2V2ZW50cyAtIHByaW50IFZGcyBtYWxpY2lvdXMgZHJpdmVyIGRldGVj
dA0KPiA+PiBldmVudA0KPiA+PiAgICogQHBmOiBwb2ludGVyIHRvIHRoZSBQRiBzdHJ1Y3R1cmUN
Cj4gPj4gQEAgLTE4NjksOCArMTg4Nyw2IEBAIHZvaWQgaWNlX3ByaW50X3ZmX3J4X21kZF9ldmVu
dChzdHJ1Y3QNCj4gaWNlX3ZmDQo+ID4+ICp2ZikNCj4gPj4gICAqLw0KPiA+PiAgdm9pZCBpY2Vf
cHJpbnRfdmZzX21kZF9ldmVudHMoc3RydWN0IGljZV9wZiAqcGYpICB7DQo+ID4+IC0Jc3RydWN0
IGRldmljZSAqZGV2ID0gaWNlX3BmX3RvX2RldihwZik7DQo+ID4+IC0Jc3RydWN0IGljZV9odyAq
aHcgPSAmcGYtPmh3Ow0KPiA+PiAgCXN0cnVjdCBpY2VfdmYgKnZmOw0KPiA+PiAgCXVuc2lnbmVk
IGludCBia3Q7DQo+ID4+DQo+ID4+IEBAIC0xODk3LDEwICsxOTEzLDcgQEAgdm9pZCBpY2VfcHJp
bnRfdmZzX21kZF9ldmVudHMoc3RydWN0DQo+IGljZV9wZg0KPiA+PiAqcGYpDQo+ID4+ICAJCWlm
ICh2Zi0+bWRkX3R4X2V2ZW50cy5jb3VudCAhPSB2Zi0NCj4gPj4+IG1kZF90eF9ldmVudHMubGFz
dF9wcmludGVkKSB7DQo+ID4+ICAJCQl2Zi0+bWRkX3R4X2V2ZW50cy5sYXN0X3ByaW50ZWQgPQ0K
PiA+PiAgCQkJCQkJCXZmLT5tZGRfdHhfZXZlbnRzLmNvdW50Ow0KPiA+PiAtDQo+ID4+IC0JCQlk
ZXZfaW5mbyhkZXYsICIlZCBUeCBNYWxpY2lvdXMgRHJpdmVyIERldGVjdGlvbg0KPiA+PiBldmVu
dHMgZGV0ZWN0ZWQgb24gUEYgJWQgVkYgJWQgTUFDICVwTS5cbiIsDQo+ID4+IC0JCQkJIHZmLT5t
ZGRfdHhfZXZlbnRzLmNvdW50LCBody0+cGZfaWQsIHZmLQ0KPiA+Pj4gdmZfaWQsDQo+ID4+IC0J
CQkJIHZmLT5kZXZfbGFuX2FkZHIpOw0KPiA+PiArCQkJaWNlX3ByaW50X3ZmX3R4X21kZF9ldmVu
dCh2Zik7DQo+ID4+ICAJCX0NCj4gPj4gIAl9DQo+ID4+ICAJbXV0ZXhfdW5sb2NrKCZwZi0+dmZz
LnRhYmxlX2xvY2spOw0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9zcmlvdi5oDQo+ID4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9zcmlvdi5oDQo+ID4+IGluZGV4IDRiYThmYjUzYWVhMS4uOGYyMjMxMzQ3NGQ2IDEwMDY0
NA0KPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NyaW92LmgN
Cj4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zcmlvdi5oDQo+
ID4+IEBAIC01OCw2ICs1OCw3IEBAIHZvaWQNCj4gPj4gIGljZV92Zl9sYW5fb3ZlcmZsb3dfZXZl
bnQoc3RydWN0IGljZV9wZiAqcGYsIHN0cnVjdA0KPiA+PiBpY2VfcnFfZXZlbnRfaW5mbyAqZXZl
bnQpOyAgdm9pZCBpY2VfcHJpbnRfdmZzX21kZF9ldmVudHMoc3RydWN0DQo+ID4+IGljZV9wZiAq
cGYpOyAgdm9pZCBpY2VfcHJpbnRfdmZfcnhfbWRkX2V2ZW50KHN0cnVjdCBpY2VfdmYgKnZmKTsN
Cj4gPj4gK3ZvaWQgaWNlX3ByaW50X3ZmX3R4X21kZF9ldmVudChzdHJ1Y3QgaWNlX3ZmICp2Zik7
DQo+ID4+ICBib29sDQo+ID4+ICBpY2VfdmNfdmFsaWRhdGVfcGF0dGVybihzdHJ1Y3QgaWNlX3Zm
ICp2Ziwgc3RydWN0DQo+ID4+IHZpcnRjaG5sX3Byb3RvX2hkcnMgKnByb3RvKTsNCj4gPj4gIHUz
MiBpY2Vfc3Jpb3ZfZ2V0X3ZmX3RvdGFsX21zaXgoc3RydWN0IHBjaV9kZXYgKnBkZXYpOyBAQCAt
NjksNg0KPiA+PiArNzAsNyBAQCBzdGF0aWMgaW5saW5lICB2b2lkIGljZV92Zl9sYW5fb3ZlcmZs
b3dfZXZlbnQoc3RydWN0DQo+ID4+IGljZV9wZiAqcGYsIHN0cnVjdCBpY2VfcnFfZXZlbnRfaW5m
byAqZXZlbnQpIHsgfSAgc3RhdGljIGlubGluZQ0KPiB2b2lkDQo+ID4+IGljZV9wcmludF92ZnNf
bWRkX2V2ZW50cyhzdHJ1Y3QgaWNlX3BmICpwZikgeyB9ICBzdGF0aWMgaW5saW5lDQo+IHZvaWQN
Cj4gPj4gaWNlX3ByaW50X3ZmX3J4X21kZF9ldmVudChzdHJ1Y3QgaWNlX3ZmICp2ZikgeyB9DQo+
ID4+ICtzdGF0aWMgaW5saW5lIHZvaWQgaWNlX3ByaW50X3ZmX3R4X21kZF9ldmVudChzdHJ1Y3Qg
aWNlX3ZmICp2ZikNCj4gew0KPiA+PiB9DQo+ID4+ICBzdGF0aWMgaW5saW5lIHZvaWQgaWNlX3Jl
c3RvcmVfYWxsX3Zmc19tc2lfc3RhdGUoc3RydWN0IGljZV9wZg0KPiA+PiAqcGYpIHsgfQ0KPiA+
Pg0KPiA+PiAgc3RhdGljIGlubGluZSBpbnQNCj4gPj4gLS0NCj4gPj4gMi40MS4wDQo+ID4NCg==
