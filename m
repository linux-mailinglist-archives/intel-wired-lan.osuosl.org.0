Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA738BD062
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 16:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 402D86083B;
	Mon,  6 May 2024 14:34:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8AX6PJpNGy-a; Mon,  6 May 2024 14:34:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E52AD60858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715006096;
	bh=06ZqC4BeyICve1MU/VD5WFGXE42FAUzd5hnSnNSviek=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qIg5ICk9L01AWqUS+FObyaAYWrShmToLBx3e6V9YODvXYCrZ633N+AsmgxPLnolvo
	 R6Nhsdr2CXX3o80F4zcz6v0elhVvnzVGqZxz9WAKE0noU5EOfKVNPqPvAYWToZ7jBM
	 jBhD/aan1rfIEWRqdZ3xwY1B4fybdg1sEcK7hsAuSCv4SpLvGfJoLPaBHu5B5NOcdC
	 mDj3oMGTpm3OegTJDWN2oSzlbRBG4rqw1J8Vx+ffpTpc6YrEZHlCF8OCDza394xaXH
	 YC8aDG+ZBYGh09f5rZytV0sX+DoHznPV1s2VbjIBc5zUIy/ymFZ9pHr+VSTno/InbK
	 LL7wacL/u1MgA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E52AD60858;
	Mon,  6 May 2024 14:34:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FCCE1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 14:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8981D406D7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 14:34:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kQc-by0b4EyJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 14:34:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D1AC640657
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1AC640657
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1AC640657
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 14:34:51 +0000 (UTC)
X-CSE-ConnectionGUID: dr4DiOrXTtOlq7loylWlrA==
X-CSE-MsgGUID: OY6k9kUHT0GYVJsIg/tLIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10633264"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10633264"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:34:47 -0700
X-CSE-ConnectionGUID: PwrKswT1SFyKgQ/JkMhSZg==
X-CSE-MsgGUID: nXtDtKZiTw2BRe/eB2iaDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32656002"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 07:34:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 07:34:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 07:34:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 07:34:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YACLfFEFHGFfNS80G8Ed326MFIWjHUeW1x5LVaQpgk21UWyxDOYa7LLaR7HMF5r8Ta4pHVjuWetvgRdbWQPJ1lvwo56ecvJms6/TxkRX49CKC9sQqezbG1AfIEVwgS1jjtWwk0cHIqUnPal+TV8KQQUi+bDUEna6TYtOgDlsbxAbJ7DtkIqvzUIClFvn3zXYO/yFYpYVAkWkMxl0lMyhS6Q69ATguDTeBhNCtiIP326QoSdlfs2HleFKJN/XQa8FLpKpjs1azI8RpOouUS6AVBiI7tAzvo0uaTIRGB4Dp5KNOa82PWBvcYC9KpONbRiLhh5n730Go9va2il9CdlJDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06ZqC4BeyICve1MU/VD5WFGXE42FAUzd5hnSnNSviek=;
 b=ee/gBkLJhBCrXCliKt1gcLEqhmXj0H1gxlMkwVgDlX0w5T8UFErpk9wqchVgjasQh7jfDKaoXCqJtiyYXxHCov3e4mCDX1SdmnuyQuwX67NpTtJbrN8SJAEA0IYwOoeauNUmVS8po07zFZRXqU/KKBQanEnnsUyuGWo4q0X3J8CyIcKSRJT/Wllb7mIbrtNDwEkpd0Rc3/YKtlz2PbV9DVi5/nr0lI3RKReBlvtoZUctkyn2oOWy9nRiTzUbZhJgRMdY56WOkOVZXbjEXfXAxqZojrS8xp+Wo87oVNpQkqtCEHHnZ0sVl1RKL2i+ZHf+PIaTdN9T2Dq+cxS7Ee8hxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH3PR11MB8435.namprd11.prod.outlook.com (2603:10b6:610:169::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 6 May
 2024 14:34:44 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb%3]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 14:34:44 +0000
Message-ID: <9be9efee-6adc-4812-b07b-007c0922183a@intel.com>
Date: Mon, 6 May 2024 16:34:38 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
References: <73ac167e-abc5-4e7b-96e3-7c6689b5665a@intel.com>
 <20240429185941.6229b944@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240429185941.6229b944@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0013.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::14) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH3PR11MB8435:EE_
X-MS-Office365-Filtering-Correlation-Id: 61c94585-d9a0-49e1-9242-08dc6dd9abe5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTl4KzhCaUpXaVlmTHNhWDhiTzBFcnprWkk3MnNSRDlIZDZXSktIeEF2a1hC?=
 =?utf-8?B?bVpzenN3Y0N5bkFpL3EvUzUyMVp0UmYzMGlibVVlOU9RU3RUckJoOHRmZ0E4?=
 =?utf-8?B?b2toYVcyOFBwcjhEZ2tMUnhGbmNIS0Q3clZteFZEZUFDVUd4bWdpWlRIa3lD?=
 =?utf-8?B?ZnpvUUZqNTJHb2UvLzk1cmNGNTBUL0VXTDBPOUszSmhRbXMxNWpadWR6TXFB?=
 =?utf-8?B?ckVQZHpFYmtqbTFqUDNRTXVvWmpyOTg1dXN6NEgraHYxQUF0cWV4YW4wY3Rs?=
 =?utf-8?B?QU0ycHVST3RCaEY4OXRxeDJFcnp3Ukd6SmRjaVpYeU1NK3U4Q05kU2dkM05r?=
 =?utf-8?B?RVBQQU8wUmFaeUpkL0tSdlNGOVg4VEJpUlBqd1N6WjZEazdSVjdjdGlaTzZI?=
 =?utf-8?B?U25wSENWRk9WaVRkU3dlM291ZVRJbktXUVRtRkdBSG1Zc2xTR0pDcUVBMHNB?=
 =?utf-8?B?TCszM3VwTlgxWDh5YmFvWnNuTFI1QXBubTRDcmgxN0ZDcGJoT0ZnUFRVa1h6?=
 =?utf-8?B?aEE1QzViVElDbGsrNTFEaWE4N3YyUW1CRy95cGlMVVU2a3J0cmZueEZiN2N2?=
 =?utf-8?B?ZU9XN3VIZGdaYWJ0bWs5NEFMMWxWZzZPVlJHV0NXcmNkZ0RaY1BneWlDQXRX?=
 =?utf-8?B?MGVPbi9BTHVlU0thcGk0NGtYRjBpcVN0SHFNU1ZrT0RSTTlZOU1SK2cyRllT?=
 =?utf-8?B?dVRYeWFybXVyTHpkSUdJT0Q4bmRmMWdheS9SWlBML0QyeEhDRktvMHhCYUVR?=
 =?utf-8?B?Zkh5MUJ2STdNQ3loKyt0SEVSaEZTVkMxT3FTa0dsUWwyU201L2pjbXZ0V1dz?=
 =?utf-8?B?czJLVG9acDhoL1Y1Ulhka1lTRWpnT2E1TDNPNm4wQUR1OUpmTzJ2aUdBVDFa?=
 =?utf-8?B?ZlJVbDRVdjIrT0J3QUdwOG1pbUREN3UyYk5jVkxUcXZhRzVwdXBVNjJMa2ZT?=
 =?utf-8?B?V0d4SmVTaEYwWnUyTHdqb210cGd6c2dzeTFQdVRTMkVQVml2d3lqRkVLNjFH?=
 =?utf-8?B?TnhDemtmUWhnOE1ZTTBVVHhsN0l1amVXbFNGbVRYZ1lYQWRWdFBOaDBVWnpJ?=
 =?utf-8?B?WDFxRC82azVreC9tYXM0amZ1TGExNnVweG0wOTNVV3FXNmdKZkYzc0VUcnZK?=
 =?utf-8?B?TnhueU8yNXpPRzhOckVERkE1UWt1WnZwazBGZVR6Y0Zkb2tLWVpseFVIZTEz?=
 =?utf-8?B?cGt1elBoOEp4emFCTDh5N2VjUzN6VW5ZS0Z5QTFRSUVLTHNvVnNsUXpUTnov?=
 =?utf-8?B?ZTF6ZzRJMnhQY2p5WnM4cVhSaGVKUzlhWDkySXJUT1RlNUtERGxDWHpTYTBt?=
 =?utf-8?B?MHBnN2JkSVNrVzVwb1VnWHk0RjJwV083REVMVDlncU10OVUrSTRqYnQ3MlU2?=
 =?utf-8?B?RCtpaW5RdnhFUFRmeEFYa1cxVGhtNTJwckVkaHdwSXdrMkVranNIWmZOUGFu?=
 =?utf-8?B?dnZEaExCNmM0Q0lWNFkxSFIxdlhTcEhWTW9PU1hia3ZjMCtCRDB3YVhneXFE?=
 =?utf-8?B?ZXZjZzRZb2U1dFRFTXlKSkEvZkxDTkF5MXRIbWxSa0lta0RaUjVpQnVETEp6?=
 =?utf-8?B?QkJkQVRNc0VtL09YbmVPbVVFNlArZ3FjRm03Wm0rZXRBZlZZbmRObS8zQ2xF?=
 =?utf-8?B?ZTdzeDlXWlo1WU9XcWJiNy9aSmdvQ3gwUmRKZktkY0N4cFR1Z1N1UlpwL1hn?=
 =?utf-8?B?TzFiYUtHOThLTDRrb0V1bkpRa08vWmw3VVBiQXZyR2VBWTVVQ2t1bXhBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEhWcDErbVhKZDVKVmJrWlFkcStJcHZPbDVqekV1Q3kzWFdJWW5BaFFvdVB3?=
 =?utf-8?B?SU5hUlZJeVE0anU4UEpXMi9XRWpLUE1JVGM3T2twem9vaTkrbGRZRzRybDVU?=
 =?utf-8?B?ZXVZR3hEU3MyUk0xdno5OWdPeU1CdmJHRVkrQVVVVzh6MStDM1lVNW16bUJV?=
 =?utf-8?B?Qkl2Zi9tSWloYlEyMENBQTFaU3E3aVZMQ2hUaVU0eWUxNlp2TzllbkFSOTFw?=
 =?utf-8?B?czV6dXVaV1pkLzJ3UTVmbE45QnNiRTFmc1F3Y0lvUExWMGNwZjFhY21XbUdU?=
 =?utf-8?B?T1d3S21EbWNlb2ErZlBKVEx0QTlkMzVvcFh5eWg4QXpTV0NSTkxha1kxQWdB?=
 =?utf-8?B?Q2oxTGlwREM2QUhnVVY3ZVBvVjVteEF2ZHB3MDAvUHVXaDB1Unc0TS9qTVpD?=
 =?utf-8?B?Z2NxQlk1c3dwTUZPdWlzeU8xR0tGOUpMTjhWanFHZWQySy9qTVFQcGYyYkhB?=
 =?utf-8?B?SDdYeUFJczFwa25tVHNad3JKQjdNL1RTdEhFQkt3Qi9Vb0xWMExRUnJaak0w?=
 =?utf-8?B?Q3BvL05mdFRZRmdHNkJ3alpOcitVVk11Q1lKRjhnRk5DUjYwOFdHTEliSTcy?=
 =?utf-8?B?V0JFZStCK1dUNUgvWmY1M2VReFFPdXZWTnBaMzFYbWtDQVpyd0YzRS9oVEky?=
 =?utf-8?B?N0k0Z2pEM2FhRlMrNUV5RDJwV0NReFV0YmVpdUt5eE1RV3F4RWtQb0dxaDBu?=
 =?utf-8?B?UUhvaEl2VTNBbEpZTlFMWFRyc3hKajgwREdlS2x2UytUYTc1dlpJQVVTZXNp?=
 =?utf-8?B?bXJybkZaZ1YxOHkweElKTUNFcmo2dk8yd1FkcStONUk4UitKZ2xZNkRqbkh2?=
 =?utf-8?B?YjNaQ2taNkNjRStmYVAzOFQ3eFFmWE1tS2xiWEdDcDVGbTJnclZtSUdLRnNo?=
 =?utf-8?B?dDUyNVArZnNIakcvMisxbjdsRDVESmJoaU9hczRCK0pqaU42RHQxSUpwZGJ1?=
 =?utf-8?B?VTI0OXM3Wk5rSnlhRUxjMDA3Z29kckZRUXYrTTU3ck1mTlUyMkhFY0RTTkRY?=
 =?utf-8?B?M3RUUE81Vm1UQ29uUEFrWHpCRTdSZFdxWkVzQVlVOXJLYWs3YzhqcEN4N0RO?=
 =?utf-8?B?VUJnSlJCOEZFdE5hRjBjT1VCUElEN0wyUnU2cmlqMkIyQzNOTE1OYWJCb245?=
 =?utf-8?B?L2JiTU16c2xZNW5IcFhrekNSdmQ4ai9ia25zVnZkOTVFSG9kODRPY2VsVWV6?=
 =?utf-8?B?R25MSk9yUmxBRlo2ZG9RaW9ZM3BqQW52ZitPM3d3bGJaak91U0lwYTRycWdp?=
 =?utf-8?B?VHBRUER1WmN3ZUlVT2RIMzBlaXN1Z2J2Y3prT2tpUjI4bk85YzBsNW9JRlJJ?=
 =?utf-8?B?VmRnT1hqdU1nNWZvNklWSkkycVZsNDNwM1pBK050TlVXVjd2MDFDYUs1NmRk?=
 =?utf-8?B?ZFVWc1RENm82NmxxZ1pHRk5nSmFzQk9PSnNqbVp3dkd5dGZ2VjJkYzhDSUpE?=
 =?utf-8?B?ejU1ditrZURhTmpmK2Z4Rk1yV2ttMjZnVnZHV3kzQmlBOFAwZ0x3UGRKR2tQ?=
 =?utf-8?B?UWRlTkFPVDFaKzFhL2xIN1BIUUNGK211OFJVNlBQRlk5NHRYRERDampXV21X?=
 =?utf-8?B?dGlvSndDdTZ4NWowQ0d4ZTlUdkhUblRyV1V3NEE2SFdZRlQxM0t0VE1vV0oy?=
 =?utf-8?B?aVhtSWFkMmRyUjU4MHpBWHhxVnQvbDF3Mmk0TjlJSEZOMVVQdUUrZGFLTXM5?=
 =?utf-8?B?SFo1dHh5bWplTXZtZGVmbndTTFRHZW9LbTdxNEhaSkcyZ1Rkbm55bTA1c1cw?=
 =?utf-8?B?a3c0NS9KUm4xKzVvc2VDak9yUWFFTDZIbXFvYmtiVnlEdzhiMnB4UWhNTU13?=
 =?utf-8?B?RUltRkhqS1I5aWRja2l5K0JMNFBFRXE0cUpEdVU3dlhNOS9OOFJMKzhpV2xz?=
 =?utf-8?B?blFTcEhUVWxzMkVHS1RJYmxFVjNZUjNhWkFWMU03N3VEM00yYXgzeWdVVnF5?=
 =?utf-8?B?Y0lhbWRRL2YxQUs2blJzUUxvK2tWb24reWpDL2w1Tmtacm50ZncvYTVBaHlq?=
 =?utf-8?B?UXB3dHlmVi9nTzloeHNyc3JWemZDbVd4UmhMS09jbmJ1VCtWSkIzRVBqRnpZ?=
 =?utf-8?B?ZEZ0dEJEUnBPU24zVnU1Tnh3UGFKV0RERGFEbUM1Skl4aytCcW5sZWVmTjNx?=
 =?utf-8?B?TG1SSFRpeTlLT0FpaTZZc2JtTXZRV3Vpa0dpMm9IbTI0TGwvVXc3NXk4UEpH?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61c94585-d9a0-49e1-9242-08dc6dd9abe5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 14:34:44.0227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ITvheUqLqmCVlka2h8B7bSQcC41/7G3cIIUymdg9Py74TZHJwcvyDfvrYuaBdMB9luADkYo5H/k7aIOtzxKXZqtpSxJmPrOe1TCljFsxMJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8435
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715006092; x=1746542092;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JxbXQmyrfzSJctJWaA3nK2Qyz2bWIYqOMDwgmYd/Sbc=;
 b=RO0yMr12EStoHfqnynheJltCzhYbkkGdK/wJ9HC8uzIueowN9KJAtoJ6
 p7xpPn4NdGrljqEqh/ITJuZ9k7AwkzXMif1gOGt5ehIgXqOgdJLfXQeVz
 NUNg+0j9ignZ/9hDSvE907q1YwXdrYu25RAqs9unEnSP0mfaV8XklNpEn
 +FoqKhKUB0DtkZNEmg5ivJ8ZDw9/rvHS4oaWjZVi4BcJvIDp46ZhpVl/x
 KMnEZSxGgf8gYwAN2IoVMlDX2EiXLWQe0NwsvX71AGxqgeMWXwbLQCZIA
 d2egQTFLRYLFO0BSAOWIi0GQP3G75g19Dpfqp01Xf4SIht1MoAfTCjJMC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RO0yMr12
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next (what uAPI?) ice: add support
 for more than 16 RSS queues for VF
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter,
 Konrad" <konrad.knitter@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Simon
 Horman <horms@kernel.org>, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/30/24 03:59, Jakub Kicinski wrote:
> On Fri, 26 Apr 2024 15:22:02 +0200 Przemek Kitszel wrote:
>> ## devlink resources (with current API)
>> `devlink resource` is compelling, partially given the name sounds like a
>> perfect match. But when we dig just a little bit, the current Path+sizes
>> (min,max,step) is totally off to what is the most elegant picture of the
>> situation. In order to fit into existing uAPI, I would need to register
>> VFs as PF's resource, then GLOBAL LUT and PF LUT as a sub resource to
>> that (each VF gets two entries under it; plus two additional ones for
>> PF) I don't like it, I also feel like there is not that much use of
>> current resources API (it's not natural to use it for distribution, only
>> for limitation).
> 
> Can you share more on how that would look like?

something like below (though I have added one more layer to illustrate
broader idea, it could be chopped down)

[1]

> 
>  From the description it does not sound so bad. Maybe with some CLI / UI
> changes it will be fine?
> 
>> ## devlink resources (with extended API)
>> It is possible to extend current `devlink resource` so instead of only
>> Path+size, there would be also Path+Owner option to use.
>> The default state for ice driver would be that PFs owns PF LUTs, GLOBAL
>> LUTs are all free.
>>
>> example proposed flow to assign a GLOBAL LUT to VF0 and PF LUT to VF1:
>> pf=0000:03:00.0  # likely more meaningful than VSI idx, but open for
>> vf0=0000:03:00.1 #                                       suggestions
>> vf1=0000:03:00.2
>> devlink resource set pci/$pf path /lut/lut_table_512 owner $pf
>> devlink resource set pci/$pf path /lut/lut_table_2048 owner free
>> devlink resource set pci/$pf path /lut/lut_table_512 owner $vf0
>> devlink resource set pci/$pf path /lut/lut_table_2048 owner $vf1
> 
> Don't we want some level of over-subscription to be allowed?

In theory we could reuse/share tables, especially with the case of auto
filled ones, not sure if I would want to implement that with the very
first series, but good point to design interface with that in mind.
To move in this direction we could make numbered LUTs an entity that is
set/show'ed (digression: this would feel more like mmap() than malloc())
(The imaginary output below does not do that).

The main problem with the [1] above for "current API" for me is lack of
aggregate device [2] in the structures represented by devlink. Let me
show what it would be with one more layer (so I put PFs under that, and
VFs one layer down).

Here is an example with 2 PFs, one of with with 3 VFs, each of them with
different LUT

$ devlink resource show $device
$device:
   name lut size 4 unit entry
     resources:
       name lut_table_2048 size 2 unit entry size_min 0 size_max 8 
size_gran 1
       name lut_table_512 size 2 unit entry size_min 0 size_max 16 
size_gran 1
   name functions size 5 unit entry
     resources:
       name pf0
         resources:
           name lut_table_2048 size 0 size_max 1 ...
           name lut_table_512 size 1 size_max 1 ...
           name vf0
             resources:
               name lut_table_2048 size 1 size_max 1 ...
               name lut_table_512 size 0 size_max 1 ...
           name vf1
             resources:
               name lut_table_2048 size 0 size_max 1 ...
               name lut_table_512 size 1 size_max 1 ...
           name vf2
             resources:
               name lut_table_2048 size 0 size_max 1 ...
               name lut_table_512 size 0 size_max 1 ...
       name pf1
         resources:
           name lut_table_2048 size 1 ...
           name lut_table_512 size 0 ...

where $device stands for the aggregate device (covers 8 PFs in case of
8-port split used)
and all named PF/VFs in the output would need "dummy" size calculations
(I would like to remove this need though)

When all resources are assigned, all "size 0" entries should have also
"size_max 0" to indicate no room for growth.

[2] aggregate device discussion:
https://lore.kernel.org/intel-wired-lan/cfe84890-f999-4b97-a012-6f9fd16da8e3@intel.com/
