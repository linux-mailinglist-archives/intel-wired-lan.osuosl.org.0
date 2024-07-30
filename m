Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF45F9414D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 16:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67C1360A3A;
	Tue, 30 Jul 2024 14:51:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ra1Q83QiRgT4; Tue, 30 Jul 2024 14:51:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E12260A3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722351110;
	bh=N55mVaixN0BLjbdEFrhUkUXaxvMB5tKEdLkO/S6d/2g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L1pMSgxTSTfVtGqxIax98IBoRVmexMJVobEvK63CXjnas0H+TlJk8ruFP98jI8FCW
	 +zz609xJjU4L+F/eUXDGHT9MBGPDdsyQ7qW4Qz7DiwUXy9GaCa8BgRaD/AkwL7kEbY
	 4VxVOIiRtCN1Qk3Uf4M4QxbOyBedYZflDZFvmlixiLJfAqn0P0WpIE2PNOt3AmRdLZ
	 /+0sIlron2XMhKHVAnSep7piepwvcDEt8flQ/FsZllih2/FBhMXlGJ9x7K5nlIUv/G
	 qX6wD5Ciz2WyzcKkD5P5EDP/Opx0KOMkELw8kf9cUKPwbzaFY+NtBAy4PqM9tpDhfD
	 ya7X44FHawIcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E12260A3B;
	Tue, 30 Jul 2024 14:51:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7950F1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 661C560A38
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:51:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o6gQzeq1Dtko for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 14:51:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E93660A35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E93660A35
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E93660A35
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:51:45 +0000 (UTC)
X-CSE-ConnectionGUID: 0qzHXYfnRjq1Ov6g7BMmuw==
X-CSE-MsgGUID: 2ZWnob1PTeuqrXn+K0PUog==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="24035955"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="24035955"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 07:51:44 -0700
X-CSE-ConnectionGUID: /O1KBcFfScePCWAe4zTbAg==
X-CSE-MsgGUID: JNaWzX8XRQqyNr2q8mTdQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="59215105"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 07:51:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 07:51:43 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 07:51:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 07:51:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 07:51:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HVmEbekCdZxz4AX4UO/fjU2+FAvi9d8QrxS/ZTDudjpAHsPlTbTAwqqWulviW+tpaVB92mGmou5o7dqt2wVtuOo+BPcyeKge49SJr8z25ND40qWrZuMFwH8YUjAc1zVkvIcSxQ9nf8My+2p9Ls2QKv3SMFWI2oV3Hbwpre6rWX+hl5SaLTVgg37RJ3gcNzWq8h5DAmQSf0nP3RuUGvmm0DaCVUTrBsMbeO9a81aWzUkM+vLcnc+D0vMeHAhTx+Rq5Ts9KQiybooT+DzXFcUD3vd3aCqZdlqtlK0s1Tap4KApzCnOzvCyRheDQvG8mH50IladMQIdTKVhJW0RySin5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N55mVaixN0BLjbdEFrhUkUXaxvMB5tKEdLkO/S6d/2g=;
 b=g3dtr85J9BkoAoq2I/NWKGkaHFMthybUj+64wmSy5Te9kbyVWurZF0T4skJmn5O22tgG/OA+WYOCi41Ui8HLzPfyppIKqakwkh1i9kdn/FR/PFh0jPYUHSs07MHJpTq3Nx21rrT7jsFvVprDJsTn2Aeu69tiUVp9c5YGTH8F5XsFuI7IDGy1SWFERpK7E4JIzh5uZdck3CIiibE7Fd/fdfF7ncb+ziAp7taaAyUSz33Ongpxe+fA37QwtV03sLDhCDae2urKtk5cFVHRX/2P3KITygwG3EGYOgwvqJR0XVgCIZTFKaAvGTznV1oddFxuWJl4dH4xtTW2CodY9Be1tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH3PR11MB7818.namprd11.prod.outlook.com (2603:10b6:610:129::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 14:51:39 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 14:51:39 +0000
Message-ID: <31fcb873-742f-415d-916d-89735133a0be@intel.com>
Date: Tue, 30 Jul 2024 16:51:34 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-12-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-12-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0216.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:88::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH3PR11MB7818:EE_
X-MS-Office365-Filtering-Correlation-Id: 70eb7e2d-1ac4-43ef-3fe4-08dcb0a71e18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0NvSTdST2FKK3JIQXdmWTdKRGF1YVFlZnp5Mk5xSkM0WkZ5Q3lZR0l1ZjQ1?=
 =?utf-8?B?aE9QcU1BbGdXR3NncDFVOTRybDBEb2JTMFN1QWhVU1k2b05zYnFIRUthRUpp?=
 =?utf-8?B?dkpyd2s3cVJsd0ZpUHZKZFhGL0p0M2dtRzI2OVVpMzhDNjdJNitXYldiUm9O?=
 =?utf-8?B?cGpXMHUrcG1tNkw2SGZNN29kczJkSXFCa09sMzBRT2ZKUnN0cVN3NnB4L1N0?=
 =?utf-8?B?UmFLT2pvSmQzUkpxZW81M2NqZTJjK2JGQ2IxeGRENnB4ZEsySUJYN2x3WXRJ?=
 =?utf-8?B?Z0VwWDVCQlpUaDhuTkZkcmZwMlNKTG9JSWM5RERhdjZGaXlpdHRMZDhYYmNw?=
 =?utf-8?B?amhTQ3JHK1R0Qm55YSttelhNUjBHeDlkYnNVcFh3RlJvWkphbGE2czZycDVD?=
 =?utf-8?B?bCtzMkRqa0hkTVp1amVUcE1PbXB4K0NxZTl4ZEJ1SjJ6OUY4L21BR0VTMm05?=
 =?utf-8?B?YmJOcGp6VXVFSFhhS2Z6TVNFTHNwN3VjZzh5VVFxVkNoOEtrNzAyUDNvSHhO?=
 =?utf-8?B?MUEva1BGYkI0Zyt3aHVyMDVlMzlwclJ4UzZWTXJsUm4va2xyQ2dKbDBUS080?=
 =?utf-8?B?R1ZnVXRYMW1reThJS00xcUpFdS9VenBscjN4cEFLd3hVbWpjZ3JnTXZtL3p5?=
 =?utf-8?B?NDdpME5JazVvdnYwK3JQVkh2M3AweDA4UDBxY0V6TktMdnBBWHE0ejlIcFlY?=
 =?utf-8?B?bThxemtnM3JjQmJid2NENHM2djRUNjIyUW52cGZNYTZ0dng3MDloL3hJQ0E3?=
 =?utf-8?B?ZktQMjM0Y3BmSW10eGNMZk9zK2R2WERwZm0waURqTU1ESW5ScHlwWmppTy9y?=
 =?utf-8?B?ZzNabGdWeGZGZEltczdJN3VraE1iZmxmOHVaZjM3ME5qK0pKeVU4ZytTa3hK?=
 =?utf-8?B?NXQzdTBTWmZWbmFsVG8wK05sV0EwRTkzdmNnTjZqZTVVZHNwSVFaY3FoaW12?=
 =?utf-8?B?YWlqUklMb3RtSmx3dlBVMzJTczhrcE1tanJ6cThwZUlWaWlUQjlzaXFaYXN3?=
 =?utf-8?B?TEdFeml0c2h3RzJFNVYvMzljNUxTenI0cXg2L0R1NndwNHRNRm1DZ0o5Ni9x?=
 =?utf-8?B?SXk0RmJ0aGd0bG5pSkhhUk93UVFocy90QWhFbHEvamFMUUp2YkF1MUF5Nklz?=
 =?utf-8?B?Mkw5ZExhaWd4WHMzUlNkRVk4Uks4dlM1Wi9TUjdjQlVlTm9McU45SU56ZlJD?=
 =?utf-8?B?N1VRckJORE5GbTFMbG5kUTg2N1hpY0pKSHg4eEU3OW9QOHh2SG1sdWNVMjgv?=
 =?utf-8?B?R1VDcmJiZzd5bThIclMyVnRKWU03MkR2VVVsZ3k5UG1FR2FCeGhqQ2N5VFps?=
 =?utf-8?B?ZHBXa1ZUdXByYnBLTjY3U1RjWGJNTUFwY3VzV3I2YXNIZ1prZ1BiZHpQTkZr?=
 =?utf-8?B?MXRkZHFpb0VSMUhOY0ljVVdQMFRMbUEyR2puRWtZdXp0NldISG85SXhNelpl?=
 =?utf-8?B?Zmp2WC82bmhCVkJvTTRMNmhiZDF6dFdIT3RpaG9YUFZxZ2tGbEgrblVZakVZ?=
 =?utf-8?B?aFFqaVh2dk1CaTRZbC84Zlh4eTRXRmlOYVJSZldXRVJYL29wZzF5Y1JLQUN5?=
 =?utf-8?B?MENXeVVENktKOFlsUXIwejNzdHNadWlVdS9BY2NQWVhOdk5CUGx2Vjg4VUVN?=
 =?utf-8?B?MTBNcmxqYzNUN09kUzE5eS8zZDkwQVo1RTZOdTRVNDZXS0dJeHdyM0NZa0tC?=
 =?utf-8?B?b1FTQ3EwbkhTNjVsT09takVJQlltSkFIRVl0M0J4Z1pBRWpZbEFwMmMrYU1h?=
 =?utf-8?B?eDk2cmV2amlFaGIwd29EMXg3bXpzNXFLSUkxZ3ByMUQ4enMzdUJEejVVOGpR?=
 =?utf-8?B?cTZEN1NLNGsxNFJMdmh6dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlJwOFBzV0JGclFoZ05mUHczVzJueHQyNVpxdXQxSXl1YnhmZWdVQTI4MzRK?=
 =?utf-8?B?WWRMKzJCT3J3ZE9xYTEyOVUyZithLzdPNVVEZEZsekxDVXNudm9iWG9nOXg0?=
 =?utf-8?B?ZUNqNUwzMmRtbzlVQjY3QTFjNm5KRkNqZUlqZHF6T09ORCtPaEVKZGExQm1J?=
 =?utf-8?B?cXpRUmZsZlNsSW1VSDUwc2JqL21LTFFMYWtrOUw4S2o3VWRIZ1NPRmdKZzlV?=
 =?utf-8?B?ZjQ4Z2t4eC9qODdNV29pQlV4Y2poZG5SS2VVWTgraEQzRmwrUytYN2N0cWZH?=
 =?utf-8?B?ZTJuRHJSN3FwV0c3WDlHSi80TFdVWnFISFNnMTBac250RExEczhhZjhnRzBB?=
 =?utf-8?B?eFZOaU1QQnNaVjVxa1FYQUtPSVhzcGRMektzVXhJMkErdnJpb2dRZXNrSHlP?=
 =?utf-8?B?WHYwMzZvVGdQTUg5cEIwL0NWS0xrRU1SS1k4eENObnRlSzFmMmROTUpLRGtK?=
 =?utf-8?B?RVEzNFM5b1FEVG44ZmlFMzNDVGUweTB3YlRjMld4a3JmbGx3WlhSZTNhdHFz?=
 =?utf-8?B?MFJmRXdWQmxiZWUzVURpeDZ6ZXY2Y215aXh5TkhNOTd0UWxFd3R2ZWZSNDd2?=
 =?utf-8?B?bnRYWXFrZ0NxWUxoQVBwUEZTalpMZ2trNkkyNncxU1BxSkdKS3UzRGRCTGQy?=
 =?utf-8?B?VGlDYjdERVRySTRqajVBbmhab0dqSGg1eVlOVktZaEJmMjRCTnQ5c3ZQckF4?=
 =?utf-8?B?bEZrYVlxbUM1RkRlUDBGeG52R2JMblUvUzUzbWs2Z3VvUEFoOGtzdjlVRDJO?=
 =?utf-8?B?MUwxem8rNFFsbmgxVlBCRjRJb3B5clpXei9HVnVrZTdNQk14V0RXcGRsSnFi?=
 =?utf-8?B?RTE4MXR1cnRKZkt3QkxnckxBRHNRRnRZNnpxcjVabklIeWFDWFd2a2NYanIv?=
 =?utf-8?B?dHlMK2U3VTRONlZEOE5GK3hYUk9MNGoyMXZrNlZCcFh1UkFGNk0wVk4zMzRZ?=
 =?utf-8?B?OEliRG9GTGZJUnJYOWN2ZVR4dkU0TG5hZkh3aU9tcDNNYURDTm5kb1hNNmVQ?=
 =?utf-8?B?aXgrazBabjRqS1UvSXN1dlk0SzdsMlZEZmhTMkFYUUh3R2xDN0pGN2pNL0h0?=
 =?utf-8?B?dkFRTFB1d01mWWRrTXVLOExwTHRRVWsxV2ZENUZmTnlpa3lPRGxYbGJqcW9o?=
 =?utf-8?B?b3o2KzliM3VBTUlIbHB3M3lnVk1VdmV1M1F4SkIrVWxmWXRvMmxMNE9QNEtV?=
 =?utf-8?B?WXVINzI0TElzcHBPS0Y4OW9iNDY0U2JFdExIT0RyZm14T08xcUxaQW5nUFlh?=
 =?utf-8?B?blRlbFV2ZEFUaitXVU9wUUc3MVYxRGlxQVl1YUdHTnZnK2JMc0kwN2xMRGl6?=
 =?utf-8?B?ZFpQSmczRzM4VW1iUlE3azBBaVVtcmN1bjlKYmgzTGtLeWZDazlqVHJqNlZy?=
 =?utf-8?B?L1J1NTZnb3JpQXowQWkrWW9weXZGQXFFTkI4RCtUa01uV0Z2MEo0aitEMk5m?=
 =?utf-8?B?NHoyOW5vNW9KeXBOeTBRakxUcHhmdm1oWStZR0ZBbWQxZXVMdGVSMUEvcmsy?=
 =?utf-8?B?WDdTNFQxT3RSNG1oLzh4d0hXZmpyTldjcklmY0x6VTd5UERNRzFYS2ErNFpZ?=
 =?utf-8?B?d2JQcTdSNjRLUnJJYU1tMCtuNUJDSS81cEtYcjdPYnI5QnhaeE8reXViUm5v?=
 =?utf-8?B?K3dhN0kwL0ZOWitRa0tqZ1g4ZWloR1FkTXhoTmpqckxhZzVJYVlUK1VvaUN2?=
 =?utf-8?B?RkRiNXVoTitrdUtNZkxlT05YVk9GQk5keHFxaWl5VWhUUE5ndmVOZmJ0bFVt?=
 =?utf-8?B?Y2hoZjVueS9qQmJxK1ZLS3B3eW02b3RGbW1uUWRYVGV6Sk5CV2dUbmJoUERN?=
 =?utf-8?B?V1dUdFpreTBNRmdXd3dkYTBTTWxlSjRyZHlQRWpKbE1kNzgyd3BsTFhrdnpi?=
 =?utf-8?B?TG9XVGhiYk5ncFN1SVpWVXVkczZ5WXcyVlplM0R1anhMNWRGT04rdXVLR1pv?=
 =?utf-8?B?VnBTS0tHNDNRRkhpNnY3Y29aTEhSQWhURTJjNFNucFY4YzZVRWxiTlVwS0h4?=
 =?utf-8?B?c3BzbEZMWEdNMC9jbTcwY2dkeXEwZUJ0bGRNNzNCdjVTK25RUGxxall6dW02?=
 =?utf-8?B?TGc1dVFjbVBGRllmSkxSZUxvL2JqeHpjQzVyc2Z3YnZHeHFVK0xJTXRMTkpl?=
 =?utf-8?B?dGVOeEpMWHA2WFdySmt2d2N1MzFMOHR5cnVpQUxlZ2c4NVVKaHBmd2ZHYi8r?=
 =?utf-8?Q?oNylE1tzOsjNHAnUODd7ruc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70eb7e2d-1ac4-43ef-3fe4-08dcb0a71e18
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 14:51:39.1764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bbMptNcCLVOYl5zdCXWPa6+MFC5Fv3aFg9m1wtX7vE8X7ZwZhPoR2/MDAvt+qLmXfs81weTGeeFTtYPG+TO4/fc3znfNNSl5Daygt6B+cjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7818
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722351106; x=1753887106;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O1LQaCjBzO/eyYyZKaZXFZP057fUR5D2CTPc7+499YI=;
 b=LanIJwvp3/8hzABYWoyHql7Ujbv6vNtF5JjZf6EjbybzgIJ+5W+IUXOL
 prR6ap8A6C2UERV4JgmI3J5BSZZyGSwLC7xjj5ITBj7BviaXwW2v2nYbz
 jXlOs8PwktaqDuWeKJlDRVSlKBxNSi+w0iSiBHP6qSO+5ZP/mi//rEh/x
 FB0lPOVfp9RaNMRr4EM6NhlOZAZmlvOsSSC/gSNeMeTwK5/infUXOPWM3
 6GJUS6dxkH5hqNSJXzNk5lltuqupO1PWalaJ2HLUr1+IPqz7G2gp8TZkq
 dfYD3GQ5WhK6uvDOT9/XV84ziRuD+mwLJQj2fKL3YLHsKkGhhEDFn4Pkn
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LanIJwvp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 11/14] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:15:06 -0400

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the
> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.

[...]

> -static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
> -			     struct iavf_rx_desc *rx_desc)
> +static void iavf_rx_csum(const struct iavf_vsi *vsi, struct sk_buff *skb,
> +			 struct libeth_rx_pt ptype,

You can save a couple lines of diff if you rename ptype -> decoded. And
it would also be more consistent to what you're defining below.

> +			 struct libeth_rx_csum_decoded csum_bits)
>  {
> -	struct libeth_rx_pt decoded;
> -	u32 rx_error, rx_status;
>  	bool ipv4, ipv6;
> -	u64 qword;
> -	u8 ptype;
>  
>  	skb->ip_summed = CHECKSUM_NONE;
>  
> -	qword = le64_to_cpu(rx_desc->qw1);
> -	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
> -
> -	decoded = libie_rx_pt_parse(ptype);
> -	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
> -		return;
> -
> -	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
> -	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
> -
>  	/* did the hardware decode the packet and checksum? */
> -	if (!(rx_status & BIT(IAVF_RX_DESC_STATUS_L3L4P_SHIFT)))
> +	if (unlikely(!csum_bits.l3l4p))
>  		return;
>  
> -	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
> -	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
> +	ipv4 = libeth_rx_pt_get_ip_ver(ptype) == LIBETH_RX_PT_OUTER_IPV4;
> +	ipv6 = libeth_rx_pt_get_ip_ver(ptype) == LIBETH_RX_PT_OUTER_IPV6;
>  
> -	if (ipv4 &&
> -	    (rx_error & (BIT(IAVF_RX_DESC_ERROR_IPE_SHIFT) |
> -			 BIT(IAVF_RX_DESC_ERROR_EIPE_SHIFT))))
> +	if (unlikely(ipv4 && (csum_bits.ipe || csum_bits.eipe)))
>  		goto checksum_fail;
>  
>  	/* likely incorrect csum if alternate IP extension headers found */
> -	if (ipv6 &&
> -	    rx_status & BIT(IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT))
> -		/* don't increment checksum err here, non-fatal err */
> +	if (unlikely(ipv6 && csum_bits.ipv6exadd))
>  		return;
>  
>  	/* there was some L4 error, count error and punt packet to the stack */
> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_L4E_SHIFT))
> +	if (unlikely(csum_bits.l4e))
>  		goto checksum_fail;
>  
>  	/* handle packets that were not able to be checksummed due
>  	 * to arrival speed, in this case the stack can compute
>  	 * the csum.
>  	 */
> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_PPRS_SHIFT))
> +	if (unlikely(csum_bits.pprs))
>  		return;
>  
>  	skb->ip_summed = CHECKSUM_UNNECESSARY;
> @@ -959,30 +943,122 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
>  }
>  
>  /**
> - * iavf_rx_hash - set the hash value in the skb
> + * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good checksum
> + * @vsi: the VSI we care about
> + * @rx_desc: the receive descriptor
> + * @decoded: decoded packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
> + * descriptor writeback format.
> + *
> + * Return: decoded checksum bits

(don't forget about periods at the end of sentences)

> + **/
> +static struct libeth_rx_csum_decoded
> +iavf_legacy_rx_csum(const struct iavf_vsi *vsi,
> +		    const struct iavf_rx_desc *rx_desc,
> +		    const struct libeth_rx_pt decoded)
> +{
> +	struct libeth_rx_csum_decoded csum_bits = {};
> +	u64 qw1 = le64_to_cpu(rx_desc->qw1);
> +
> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
> +		return csum_bits;
> +
> +	csum_bits.ipe = FIELD_GET(IAVF_RXD_LEGACY_QW1_IPE_M, qw1);
> +	csum_bits.eipe = FIELD_GET(IAVF_RXD_LEGACY_QW1_EIPE_M, qw1);
> +	csum_bits.l4e = FIELD_GET(IAVF_RXD_LEGACY_QW1_L4E_M, qw1);
> +	csum_bits.pprs = FIELD_GET(IAVF_RXD_LEGACY_QW1_PPRS_M, qw1);
> +	csum_bits.l3l4p = FIELD_GET(IAVF_RXD_LEGACY_QW1_L3L4P_M, qw1);
> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RXD_LEGACY_QW1_IPV6EXADD_M, qw1);
> +
> +	return csum_bits;
> +}
> +
> +/**
> + * iavf_flex_rx_csum - Indicate in skb if hw indicated a good checksum
> + * @vsi: the VSI we care about
> + * @rx_desc: the receive descriptor
> + * @decoded: decoded packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + *
> + * Return: decoded checksum bits
> + **/
> +static struct libeth_rx_csum_decoded
> +iavf_flex_rx_csum(const struct iavf_vsi *vsi,
> +		  const struct iavf_rx_desc *rx_desc,
> +		  const struct libeth_rx_pt decoded)
> +{
> +	struct libeth_rx_csum_decoded csum_bits = {};
> +	u64 qw1 = le64_to_cpu(rx_desc->qw1);
> +
> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
> +		return csum_bits;
> +
> +	csum_bits.ipe = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_IPE_M, qw1);
> +	csum_bits.eipe = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_EIPE_M, qw1);
> +	csum_bits.l4e = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_L4E_M, qw1);
> +	csum_bits.eudpe = FIELD_GET(IAVF_RXD_FLEX_QW1_XSUM_EUDPE_M, qw1);
> +	csum_bits.l3l4p = FIELD_GET(IAVF_RXD_FLEX_QW1_L3L4P_M, qw1);
> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RXD_FLEX_QW1_IPV6EXADD_M, qw1);
> +	csum_bits.nat = FIELD_GET(IAVF_RXD_FLEX_QW2_NAT_M, qw1);
> +
> +	return csum_bits;
> +}
> +
> +/**
> + * iavf_legacy_rx_hash - set the hash value in the skb
>   * @ring: descriptor ring
>   * @rx_desc: specific descriptor
>   * @skb: skb currently being received and modified
> - * @rx_ptype: Rx packet type
> + * @decoded: decoded packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
> + * descriptor writeback format.
>   **/
> -static void iavf_rx_hash(struct iavf_ring *ring,
> -			 struct iavf_rx_desc *rx_desc,
> -			 struct sk_buff *skb,
> -			 u8 rx_ptype)
> +static void iavf_legacy_rx_hash(const struct iavf_ring *ring,
> +				const struct iavf_rx_desc *rx_desc,
> +				struct sk_buff *skb,
> +				const struct libeth_rx_pt decoded)
>  {
> -	struct libeth_rx_pt decoded;
> +	const __le64 rss_mask = cpu_to_le64(IAVF_RXD_LEGACY_QW1_FLTSTAT_M);
>  	u32 hash;
> -	const __le64 rss_mask =
> -		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
> -			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
>  
> -	decoded = libie_rx_pt_parse(rx_ptype);
>  	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
>  		return;
>  
>  	if ((rx_desc->qw1 & rss_mask) == rss_mask) {
> -		hash = le64_get_bits(rx_desc->qw0,
> -				     IAVF_RX_DESC_LEGACY_QW0_RSS_M);
> +		hash = le64_get_bits(rx_desc->qw0, IAVF_RXD_LEGACY_QW0_RSS_M);
> +		libeth_rx_pt_set_hash(skb, hash, decoded);
> +	}
> +}
> +
> +/**
> + * iavf_flex_rx_hash - set the hash value in the skb
> + * @ring: descriptor ring
> + * @rx_desc: specific descriptor
> + * @skb: skb currently being received and modified
> + * @decoded: decoded packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + **/
> +static void iavf_flex_rx_hash(const struct iavf_ring *ring,
> +			      const struct iavf_rx_desc *rx_desc,
> +			      struct sk_buff *skb,
> +			      const struct libeth_rx_pt decoded)
> +{
> +	__le64 qw1 = rx_desc->qw1;
> +	bool rss_valid;
> +	u32 hash;
> +
> +	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
> +		return;
> +
> +	rss_valid = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_RSS_VALID_M);
> +	if (rss_valid) {
> +		hash = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_RSS_HASH_M);
>  		libeth_rx_pt_set_hash(skb, hash, decoded);
>  	}
>  }
> @@ -998,14 +1074,23 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>   * order to populate the hash, checksum, VLAN, protocol, and
>   * other fields within the skb.
>   **/
> -static void
> -iavf_process_skb_fields(struct iavf_ring *rx_ring,
> -			struct iavf_rx_desc *rx_desc, struct sk_buff *skb,
> -			u8 rx_ptype)
> +static void iavf_process_skb_fields(const struct iavf_ring *rx_ring,
> +				    const struct iavf_rx_desc *rx_desc,
> +				    struct sk_buff *skb, u32 rx_ptype)
>  {
> -	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
> +	struct libeth_rx_csum_decoded csum_bits = {};

Since you assign @csum_bits unconditionally below, it's not needed to
initialize it here.

> +	struct libeth_rx_pt decoded;
>  
> -	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
> +	decoded = libie_rx_pt_parse(rx_ptype);
> +
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
> +		iavf_legacy_rx_hash(rx_ring, rx_desc, skb, decoded);
> +		csum_bits = iavf_legacy_rx_csum(rx_ring->vsi, rx_desc, decoded);
> +	} else {
> +		iavf_flex_rx_hash(rx_ring, rx_desc, skb, decoded);
> +		csum_bits = iavf_flex_rx_csum(rx_ring->vsi, rx_desc, decoded);
> +	}
> +	iavf_rx_csum(rx_ring->vsi, skb, decoded, csum_bits);
>  
>  	skb_record_rx_queue(skb, rx_ring->queue_index);

[...]

> +static struct libeth_rx_extracted
> +iavf_extract_legacy_rx_fields(const struct iavf_ring *rx_ring,
> +			      const struct iavf_rx_desc *rx_desc)
> +{
> +	struct libeth_rx_extracted fields = {};
> +	__le64 qw0 = rx_desc->qw0;
> +	__le64 qw1 = rx_desc->qw1;
> +	__le64 qw2 = rx_desc->qw2;

Make them u64 right here with le64_to_cpu() and then just use
FIELD_GET()s instead of le64_get_bits() below. On BE systems, each
le64_get_bits() implies a byteswap.

> +	bool l2tag1p;
> +	bool l2tag2p;
> +
> +	fields.end_of_packet = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_EOP_M);
> +	fields.size = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_LENGTH_M);
> +	fields.rxe = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_RXE_M);
> +	fields.rx_ptype = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_PTYPE_M);
> +
> +	l2tag1p = le64_get_bits(qw1, IAVF_RXD_LEGACY_QW1_L2TAG1P_M);
> +	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> +		fields.vlan_tag = le64_get_bits(qw0,
> +						IAVF_RXD_LEGACY_QW0_L2TAG1_M);
> +
> +	l2tag2p = le64_get_bits(qw2, IAVF_RXD_LEGACY_QW2_L2TAG2P_M);
> +	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> +		fields.vlan_tag = le64_get_bits(qw2,
> +						IAVF_RXD_LEGACY_QW2_L2TAG2_M);
> +
> +	return fields;

As I wrote in the previous reply, this needs to be split into several
functions as not all the fields are always needed.

> +}
> +
> +/**
> + * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
> + * @rx_ring: rx descriptor ring
> + * @rx_desc: the descriptor to process
> + *
> + * Decode the Rx descriptor and extract relevant information including the
> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + *
> + * Return: fields extracted from the Rx descriptor
> + */
> +static struct libeth_rx_extracted
> +iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
> +			    const struct iavf_rx_desc *rx_desc)
> +{
> +	struct libeth_rx_extracted fields = {};
> +	__le64 qw0 = rx_desc->qw0;
> +	__le64 qw1 = rx_desc->qw1;
> +	__le64 qw2 = rx_desc->qw2;

Same here.

> +	bool l2tag1p, l2tag2p;
> +
> +	fields.size = le64_get_bits(qw0, IAVF_RXD_FLEX_QW0_PKT_LEN_M);
> +	fields.rx_ptype = le64_get_bits(qw0, IAVF_RXD_FLEX_QW0_PTYPE_M);
> +	fields.rxe = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_RXE_M);
> +	fields.end_of_packet = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_EOP_M);
> +
> +	l2tag1p = le64_get_bits(qw1, IAVF_RXD_FLEX_QW1_L2TAG1P_M);
> +	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> +		fields.vlan_tag = le64_get_bits(qw1,
> +						IAVF_RXD_FLEX_QW1_L2TAG1_M);
> +
> +	l2tag2p = le64_get_bits(qw2, IAVF_RXD_FLEX_QW2_L2TAG2P_M);
> +	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> +		fields.vlan_tag = le64_get_bits(qw2,
> +						IAVF_RXD_FLEX_QW2_L2TAG2_2_M);
> +
> +	return fields;

Same here.

> +}
> +
> +static struct libeth_rx_extracted
> +iavf_extract_rx_fields(const struct iavf_ring *rx_ring,
> +		       const struct iavf_rx_desc *rx_desc)
> +{
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
> +		return iavf_extract_legacy_rx_fields(rx_ring, rx_desc);
> +	else
> +		return iavf_extract_flex_rx_fields(rx_ring, rx_desc);
> +}
> +
>  /**
>   * iavf_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
>   * @rx_ring: rx descriptor ring to transact packets on
> @@ -1142,13 +1317,9 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  	bool failure = false;
>  
>  	while (likely(total_rx_packets < (unsigned int)budget)) {
> +		struct libeth_rx_extracted fields = {};

Initialization is not needed since you always assign it.

>  		struct libeth_fqe *rx_buffer;
>  		struct iavf_rx_desc *rx_desc;
> -		u16 ext_status = 0;
> -		unsigned int size;
> -		u16 vlan_tag = 0;
> -		u8 rx_ptype;
> -		u64 qword;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
>  		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index 07e54db0bd4d..498746a83d35 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -179,39 +179,13 @@ struct iavf_hw {
>  };
>  
>  struct iavf_rx_desc {
> -	aligned_le64 qw0;
> -	aligned_le64 qw1;
> -	aligned_le64 qw2;
> -	aligned_le64 qw3;
> -} __aligned(4 * sizeof(__le64));;
> -
> -enum iavf_rx_desc_status_bits {
> -	/* Note: These are predefined bit offsets */
> -	IAVF_RX_DESC_STATUS_DD_SHIFT		= 0,
> -	IAVF_RX_DESC_STATUS_EOF_SHIFT		= 1,
> -	IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT	= 2,
> -	IAVF_RX_DESC_STATUS_L3L4P_SHIFT		= 3,
> -	IAVF_RX_DESC_STATUS_CRCP_SHIFT		= 4,
> -	IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT	= 5, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_TSYNVALID_SHIFT	= 7,
> -	/* Note: Bit 8 is reserved in X710 and XL710 */
> -	IAVF_RX_DESC_STATUS_EXT_UDP_0_SHIFT	= 8,
> -	IAVF_RX_DESC_STATUS_UMBCAST_SHIFT	= 9, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_FLM_SHIFT		= 11,
> -	IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT	= 12, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_LPBK_SHIFT		= 14,
> -	IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT	= 15,
> -	IAVF_RX_DESC_STATUS_RESERVED_SHIFT	= 16, /* 2 BITS */
> -	/* Note: For non-tunnel packets INT_UDP_0 is the right status for
> -	 * UDP header
> -	 */
> -	IAVF_RX_DESC_STATUS_INT_UDP_0_SHIFT	= 18,
> -	IAVF_RX_DESC_STATUS_LAST /* this entry must be last!!! */
> +	__le64 qw0;
> +	__le64 qw1;
> +	__le64 qw2;
> +	__le64 qw3;
>  };

Some rebasing issues here. You redefine the struct you introduced in the
previous patch. I'd say the previous definition was more correct.

>  
> -#define IAVF_RXD_QW1_STATUS_SHIFT	0
> -#define IAVF_RXD_QW1_STATUS_MASK	((BIT(IAVF_RX_DESC_STATUS_LAST) - 1) \
> -					 << IAVF_RXD_QW1_STATUS_SHIFT)
> +#define IAVF_RXD_QW1_STATUS_MASK		GENMASK(18, 0)
>  
>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT
>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_MASK  (0x3UL << \
> @@ -228,22 +202,6 @@ enum iavf_rx_desc_fltstat_values {
>  	IAVF_RX_DESC_FLTSTAT_RSS_HASH	= 3,
>  };
>  
> -#define IAVF_RXD_QW1_ERROR_SHIFT	19
> -#define IAVF_RXD_QW1_ERROR_MASK		(0xFFUL << IAVF_RXD_QW1_ERROR_SHIFT)
> -
> -enum iavf_rx_desc_error_bits {
> -	/* Note: These are predefined bit offsets */
> -	IAVF_RX_DESC_ERROR_RXE_SHIFT		= 0,
> -	IAVF_RX_DESC_ERROR_RECIPE_SHIFT		= 1,
> -	IAVF_RX_DESC_ERROR_HBO_SHIFT		= 2,
> -	IAVF_RX_DESC_ERROR_L3L4E_SHIFT		= 3, /* 3 BITS */
> -	IAVF_RX_DESC_ERROR_IPE_SHIFT		= 3,
> -	IAVF_RX_DESC_ERROR_L4E_SHIFT		= 4,
> -	IAVF_RX_DESC_ERROR_EIPE_SHIFT		= 5,
> -	IAVF_RX_DESC_ERROR_OVERSIZE_SHIFT	= 6,
> -	IAVF_RX_DESC_ERROR_PPRS_SHIFT		= 7
> -};
> -
>  enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>  	IAVF_RX_DESC_ERROR_L3L4E_NONE		= 0,
>  	IAVF_RX_DESC_ERROR_L3L4E_PROT		= 1,
> @@ -252,13 +210,6 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>  	IAVF_RX_DESC_ERROR_L3L4E_DMAC_WARN	= 4
>  };
>  
> -#define IAVF_RXD_QW1_PTYPE_SHIFT	30
> -#define IAVF_RXD_QW1_PTYPE_MASK		(0xFFULL << IAVF_RXD_QW1_PTYPE_SHIFT)
> -
> -#define IAVF_RXD_QW1_LENGTH_PBUF_SHIFT	38
> -#define IAVF_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
> -					 IAVF_RXD_QW1_LENGTH_PBUF_SHIFT)
> -
>  #define IAVF_RXD_QW1_LENGTH_HBUF_SHIFT	52
>  #define IAVF_RXD_QW1_LENGTH_HBUF_MASK	(0x7FFULL << \
>  					 IAVF_RXD_QW1_LENGTH_HBUF_SHIFT)
> @@ -505,9 +456,85 @@ struct iavf_eth_stats {
>  	u64 tx_errors;			/* tepc */
>  };
>  
> -#define IAVF_RX_DESC_LEGACY_QW0_RSS_M		GENMASK_ULL(63, 32)
> -#define IAVF_RX_DESC_LEGACY_QW0_L2TAG1_M	GENMASK_ULL(33, 16)
> -#define IAVF_RX_DESC_LEGACY_QW2_L2TAG2_2_M	GENMASK_ULL(63, 48)
> -#define IAVF_RX_DESC_LEGACY_QW2_EXT_STATUS_M	GENMASK_ULL(11, 0)

Define these four correctly in the previous patch, so you wouldn't
redefine it here once again?

> +/* LEGACY DESCRIPTOR */
> +/* Quad Word 0 */
> +#define IAVF_RXD_LEGACY_QW0_RSS_M		GENMASK_ULL(63, 32)
> +#define IAVF_RXD_LEGACY_QW0_L2TAG1_M		GENMASK_ULL(31, 16)

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 4163dfe90b4a..d60fba84b109 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -403,6 +403,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  	int pairs = adapter->num_active_queues;
>  	struct virtchnl_queue_pair_info *vqpi;
>  	u32 i, max_frame;
> +	u8 rx_flags = 0;
>  	size_t len;
>  
>  	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
> @@ -420,6 +421,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  	if (!vqci)
>  		return;
>  
> +	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))
> +		rx_flags |= VIRTCHNL_PTP_RX_TSTAMP;

This is not related to the Rx descriptor refactoring I'd say?

> +
>  	vqci->vsi_id = adapter->vsi_res->vsi_id;
>  	vqci->num_queue_pairs = pairs;
>  	vqpi = vqci->qpair;
> @@ -442,6 +446,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  		if (CRC_OFFLOAD_ALLOWED(adapter))
>  			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
>  						   NETIF_F_RXFCS);
> +		vqpi->rxq.flags = rx_flags;
>  		vqpi++;
>  	}

Thanks,
Olek
