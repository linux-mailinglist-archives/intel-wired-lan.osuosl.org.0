Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86001906942
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 11:50:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6085860EC2;
	Thu, 13 Jun 2024 09:50:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5hboOCqqzeqM; Thu, 13 Jun 2024 09:50:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7304B60EC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718272215;
	bh=NstqdB4dgm/TYhnq9tRjrtjKTxlVVWVWVMMbp+J5t6c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u8yxfplK+Z8oiE9kEDXw3VUGp+nigNzlkiSa8fTByEn21a49DjjIS8kit9McDED01
	 2rsm4ayG5NWMvLdstQOvne+TRBLxmnph5gX49DuUJou/EezGOs0DjoUlJj0NXYA7yl
	 gmMINHOUz6xaMRb9v7biyApyD0FXtn25a3Q4ws2JmTJWiE8ihfmXU4/R9gCTj++uZW
	 AP5spN/4TZPOqdqW+4xOTDzxojUp7a20AKRP2ZqHkCieQZfnA3xYevKn8O1CvjC4sY
	 6hq8AKhXtBFymuRcHAB6pa7odVhcvK+RyzScEEjFPa0r/1MX6xAEtx/e72giYwjZap
	 TMHg0aNfQje4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7304B60EC3;
	Thu, 13 Jun 2024 09:50:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 490101BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 09:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 329E880D99
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 09:50:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9mrPGTWLlARD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 09:50:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1CB5680D6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CB5680D6B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CB5680D6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 09:50:11 +0000 (UTC)
X-CSE-ConnectionGUID: JXBatLnvRjuEu1HgStIndg==
X-CSE-MsgGUID: y0yO4B8RQ/uyO2eP5nl2yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="32568741"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="32568741"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:50:11 -0700
X-CSE-ConnectionGUID: s9DKUkR9TESORTS0WS0MgQ==
X-CSE-MsgGUID: OwrVMMwQRb+0D6jznhHw1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="39968861"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 02:50:10 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 02:50:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 02:50:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 02:50:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AS4HqjKp4Yurf9DK1zD9LovDmyQXhIYNvPt2bsTwTfEJfJ5j4xo5Jzu9IXvQfCZQoPc33f12lPoJloObTv3sWSkw8VWyNr9qSI+pKT2+8AalzxO8dbFxy8ArkAbi/URCnmriUUUr+Gpa8UBTh2PvIMBucMcJAxMhkytexw/1Ey0JKLzRwlRuWloODBsndNwMM5+0kboXtkrVBiVRl9PloDWkWxvcY7yj4OFg8k8Bc5utAM2+ORsVBQmXEhx7Y1ydesmx6/y6VxsJ+MVU5e7FCfrd8JpgHtgGhYGPWxegkEL0nWpDRZil1DEhnPQUVh9lNXZxixzgRScKHBN+vRfGuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NstqdB4dgm/TYhnq9tRjrtjKTxlVVWVWVMMbp+J5t6c=;
 b=GJzUXali9GpU72gJtBai8n4eybClNn2TKxMJefZnaRWnuzPvxdiEScC3W9s2DCbktqT3XsDQ1MgbPcMBYbvKgGlPjpDklgQDCfMVdAMAe/ODVw140VnZsATy36twg8x4zppNSQHK/Rj2YzAe0xVP2psKYAJP7cQMJj0zSB20KZub+v9wrjIQvrgzGXxLq1kMyKnbrqaqoq17Ony38plzI6tK0COnC627nFXy+LRSEtxVfwhqTJD92syjLoDBtIoI5oCXiIuHad0nuNawTusE9GTIaVRPKUBK8u40JCa9mZa4wCUcj3cqKxwbFuv3p+t+2Kpu+vJ+3Iw1fMzAWnbJEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6170.namprd11.prod.outlook.com (2603:10b6:208:3ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20; Thu, 13 Jun
 2024 09:50:06 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 09:50:06 +0000
Message-ID: <d6296028-eb24-4cb4-ae7d-3640f56c8eba@intel.com>
Date: Thu, 13 Jun 2024 11:49:39 +0200
User-Agent: Mozilla Thunderbird
To: David Decotigny <ddecotig@google.com>
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
 <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
 <cc76768c-d8d4-4c07-93c1-807f3159b573@intel.com>
 <641b439b-2bc0-4f2b-9871-b522e1141cd1@intel.com>
 <CAG88wWaQaCf1rZAdh-5iWLYWOMfj3o6jtc0J=0_3pPDzP0Cyww@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <CAG88wWaQaCf1rZAdh-5iWLYWOMfj3o6jtc0J=0_3pPDzP0Cyww@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB7PR05CA0028.eurprd05.prod.outlook.com
 (2603:10a6:10:36::41) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6170:EE_
X-MS-Office365-Filtering-Correlation-Id: e24dbe89-9b16-4835-9595-08dc8b8e342c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|376008|1800799018|366010;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDBhalpTNDdmbEIvZmNQNFVOMDh2RUxhR3grUGJuL296NjBrNnBZa04rQ0dL?=
 =?utf-8?B?NlJ2dVIyM25Lb3lsS3lVY2d1cUU4T2tDazhuMTE4c2tRSDJvZUFvNEhIay93?=
 =?utf-8?B?eFhZQjl4cW9NSVQ1d3ZzdWZ3ZUhqQVlqNjA5WWV5SEdqd2thaFVOaTlRdXFR?=
 =?utf-8?B?MG4yRHpPelRyZTNZVEZocXdPM1FtQWpaMTBOVkRSSXhNNUdtQzFHTEo3RSt4?=
 =?utf-8?B?RWQ4VWJwY2lSUUxhNG55OW0wczA1Zzd2QldicWgyOE9LOVhUYkxrN1QrbExX?=
 =?utf-8?B?eUx2cC8yelNjOHUyOENWcEtjSm5xdWZPdUVJY3h3Qm9Rc1FWc0o2cjU0ejBP?=
 =?utf-8?B?ZEFDM1J3TnJ4TEFJNjdhL1BjSTliQkxzc0cxQXpWUFB5L2ROL0JSYzJaZFYw?=
 =?utf-8?B?ck95Z1ZidWhnNDluY1JKQjJUbjhjWWNKVGNlVHgvM0tsdEVWU0hsWUpacm5Y?=
 =?utf-8?B?Y2tNamx4Z1Q2Q3c1V1I2WXRpcGIydEhRQ29ucTF2N3MvS21YTnhDODkwUkNG?=
 =?utf-8?B?VUJjVW5Fd0ZwanhaREVEOEhPYnZhbXRxeUJFeVJkc1ZRQWlrRnJibWYvWlg3?=
 =?utf-8?B?Y1A0cmxBQ204OFlpVTRPNm1JdnVyK052QTRsWFhadFZjU0luTk5mQjQwRzZT?=
 =?utf-8?B?NTJIc0k0U0pwT28xMEVUYmUrZzN2ZTV5UUR4b2hhRmVPTHpTdE9lUEhSSzhh?=
 =?utf-8?B?ZUpIazNBelNIYVIzY3d3Ni9uYU9GYXllSXMwRHd2V2puQlR2LzhyNm10eDVi?=
 =?utf-8?B?enRnL2VRVmFXcC9QMlhzdUY3UEhFUmZCV0lhUmQ0c0ZCbHlDR0g1R1N1STBT?=
 =?utf-8?B?bEQwbmkrOU0xNVhXaDZXOE9VTTVsR1pXcS9BVnQxMjIycW1NdTJKOCtYTnNC?=
 =?utf-8?B?Z1F5R0xGcE5jTG1tSVpSOVdmeWFWOHpOVEZMbjBWZEpyUjd6SHNLTUdBL01C?=
 =?utf-8?B?d2pxSkREQTV2QW13TmRITS9WdkhKUHVFSS82U3JUeTl4RFhNck8xeXYzWkRy?=
 =?utf-8?B?eC96amxHZEdRZ3V4T2x6d1dZSU52Wk5QYklxVUJQWGxhR1NMNFp0aTIvZ2dV?=
 =?utf-8?B?OG5DUjE3b2tYeEE3YklodTA2NWVqeTgwN252TS9qK3BWQTk2KzRaOU85eUMw?=
 =?utf-8?B?SjFZUytGSEtCVTk1NE01YTJnRUYxdUJGSmU0c0d2c0lLSE5UQjFmV09sWm1l?=
 =?utf-8?B?QnhnYWp1OHFTVlowZ3VYTC9KV25TeU5FU0ovSWtSYWsvdGUvQXcrUGtOUFJm?=
 =?utf-8?B?VGx1RU1lMHh5b3VTcTREWDJqcnhtVlVqVE1TZzNPblpRZWxRM05MdXRFWHRt?=
 =?utf-8?B?NkFSNTBRWmlBaVpVSE9RbEtXQXFXNzlOZW1HWUFwUE1oeDh5NHZWckpsTE9s?=
 =?utf-8?B?UXg2b2hCUTdXWTNlMWtzZVl4Q2dXNCs4OHJUSlNNcEN1Rzc1YkgzTlBPeis2?=
 =?utf-8?B?MGFLRTIrRVhyc3dHdUlsQW1xbGVLbDBIV0FSYUFsVkNiT1JhYVJ4UGdXeUE3?=
 =?utf-8?B?aWRLYTlTRGpKb0dqMW01TGF0NzNaY21kK3pmL0p5Y0dCbWs3SWQxdEtxeW5M?=
 =?utf-8?B?QTBGci91a21hbVNrbVhiZXJpL0VveEVqZUFqSEx5ZnlqT3dlNk5VQWlkaVFO?=
 =?utf-8?B?aDNXK1pkT3g3cG9HWmpZNEhwNExrM1ZMTHpuWU13bDlEM0xQaWNBUTV0WDRs?=
 =?utf-8?B?VG1IMTlmbDdCaW5JOXZnOFVUZmlsUk1MTkNVMW92c3o3MjBMUC82NHJmSjU3?=
 =?utf-8?Q?vREr6L36h9Vh1WftlNoIkfzDSmtG9qfSV7lJ4Ht?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(1800799018)(366010); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjNWU1VSbnduTWU1TUd5YUFFSXJpVjRFMndTS3N3K0t5WGJEclNiZXFrT2dv?=
 =?utf-8?B?bWI3VXh4Ym5kb1NYWlk1WnpSZUN1QnJGMEtqeTQ0L25aSWlJYnpPVjcybGc5?=
 =?utf-8?B?anp1ZEFZdlhWT0hpOW5zdFMwVlFzMjZidjR1c2JXQWNuTSt3bXhFV0tWSU5K?=
 =?utf-8?B?T1VmQVlwYlAyMW94TFdTSXdLRWtLMGtNUURGSi9sUkkvc0pIdDNMUlJSS042?=
 =?utf-8?B?SDR3L3VLR05ReDRhemxtWWQyWVBXVk5QeFFLa2hGaVRPNWxrc3IzWng0NitP?=
 =?utf-8?B?Zks1NFdpOHIwUmFYK1loN055ZFVyK3EyMnR5K3piSnpIQWx4OFRMek9kbGN5?=
 =?utf-8?B?MTdQY2p0d2xTRnVuTnBHb3VuRk53SDhtYzlwcExNdnM1WHg3YUM3OVJsM0JK?=
 =?utf-8?B?K2NVb1NPb1lJRzVTLzByUEJYbGNpY3dSbjhCTS94RXg3OVVlajNPSWVCV3VD?=
 =?utf-8?B?eWNTb2lpUGpZSDViVVhXT2JhVE9PYXVrejlqTHErR2hvNEdRTVFJanZra2xj?=
 =?utf-8?B?R2ZPeldleGpDVjByUlEvOXFRWmtRdCtnbG9Cdkt4Tm53MHd0MVIySWRTZkoy?=
 =?utf-8?B?amc1VGEzWlNrM2JDVkk4NXVFQVkvWE90SGhwTndmNFNxQXMvOU9hNC90bThq?=
 =?utf-8?B?cmdqZktlVE5NTFZWbG9UMkJqK25XdWg1elFnN1V5ODlxeEF4czl4WWY1SGJY?=
 =?utf-8?B?aFNHa0pLVnhOZ09XaVF4M1o1WDFReDFCMEFuRmtFWGkzRmJ2cHZDNG92MkVH?=
 =?utf-8?B?dlg4b1Y4SXk0TmtFSkIzM2UzZWs4VzdPbnl5RTNpQjkzdkxwdmFReGRuREtq?=
 =?utf-8?B?NHBXQUVJMnRRTXY4YjlDdUQ0K3BBOU55bHV4TVV5NHpmK0NscFZ0clArUndy?=
 =?utf-8?B?SlFxemFzYU9uV0V4KzA5M2duM1JIQjdVTjZNeUNxYTJkM1pxcHQ2K0dpV2FW?=
 =?utf-8?B?NFdQTUhheVhQV2k3cis4czEzaFFTUnFHRVEyaWFsdUFabTdTd3E0QVVEUG5y?=
 =?utf-8?B?QW96dkVWSWpiVWYrSTcwL1A0MGxQV2pncjFjN3FSQWlQSnlJNko5VkdBVm5i?=
 =?utf-8?B?cktjVTRVT2RtakpQcFRncHVWa1dEeDFGVkIrOHRSUzBuT1RMWDlEWHIxRnlO?=
 =?utf-8?B?UEF6K3pMTlBvcGxTQ0t5alhrVnkyUlQ0aHN5MitSTWN1eklSZDgxSDBDNHVx?=
 =?utf-8?B?dGtsbFIzRlc5Y1dpdERsbURpdW9IUmIrbGRaeFZFQmtBN3NvOTVibVNNZDBh?=
 =?utf-8?B?TnVmMFJTKzlVVUFTMWlnY3F0VStxeExmellEYzBJSWp5QVVhWHFGb1ZrRlUw?=
 =?utf-8?B?UkkzcUZkOU91UmR2bWp5OVpaZ0oxT3lZb3QvZUcxSHVrTkxOMENXVGJXcTBq?=
 =?utf-8?B?eThUZk9BZCtTZjYvV2oya0hCOGNTZmNubk9VMVlRVVBHK1FiajZFbmdNckJo?=
 =?utf-8?B?YThpVkJPQW54NnlkZFVEcHloeEpyeE9PRC9mSHhMN2FFb2RuL2pXR0toT2tE?=
 =?utf-8?B?TWFtQzBMazZFbmFqNUFMRHB3VWRnSVd4UWxYaGVlUC8rSkZmb0NLaVc0Uy91?=
 =?utf-8?B?UWt3aEFOZWJXRkZHbWs2SUpjdHpNQmxaNWpXVTNza3lwL3VURlFTN1k5YXMr?=
 =?utf-8?B?YjJSbFhiWVo4eUNuUVFRbU1weWtMN3BxN213cXhGT3l0NFlCd2E2MFZ0cXNm?=
 =?utf-8?B?QzNKaGJDMHJxQXFBbUd6em9ydk1pWDBNTGd6S3hmV250U1h4VXJLcDAvdU5X?=
 =?utf-8?B?RFJHVUpQNFZLNjY1czdKTWNKZEpEN2pzMjVXK2RGbmgreGQ4aklWbVR6TkZx?=
 =?utf-8?B?eTJpTjVzRlRycTVSSVVvWXRKdFYzRm01TGt6TnY4cWU0MVRlSjFoN09RaVpv?=
 =?utf-8?B?WW1yVkZKMVF4QzN1NW9MYkFCeVhFZUgyUGFkQlFzT0w0MmNSVUgwczJqcVM1?=
 =?utf-8?B?QmE1a1J3MUVJQzhvalgxbHdBMzVGTHZWZFNKVytKQmNhYStvRXJ5NUo3ZEdv?=
 =?utf-8?B?UHhuYUd0YUZPRUUwRVpiNFIxNGYzMG9ZVVZ4Sndvb0psR0VCSERVSzN1enB5?=
 =?utf-8?B?aHVCY1l0akJlampzOFZXVzZJdlZSak9JMzQyYU5zcUhVRXdSZzIzNm1yeFEw?=
 =?utf-8?B?bXRwMWVIZ2kxUEdVQlVlV292WXlwMnV2NkZyRUJxMStpTjhQQ1owaStqeXNW?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e24dbe89-9b16-4835-9595-08dc8b8e342c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 09:50:05.9203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rx4TMLUcUBW2kaK0BDxPOj85LkQrlffi9K2VvgMm5MVmLHBkFZ5QhyFNYKscl2BZELtfZlg+V3yRuMEFJXBk/ObxHuuwcIzIElo5TXAIEqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718272212; x=1749808212;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hFW1wVx52bdlwyixvQLS1DKgWJtWTWHYacf57IKlVps=;
 b=TfvzbFIVRYD3ynq9jMVNavlf0tNb7YCzNSs93uH+mQNCpHZL6ibqgkbt
 16huQSluobKlHOAJ2DhasZjNUaO1AhemIe9cFWsK7HU7Z8zwpeIH4raK0
 5V+qjtRjRQHKel4iO4sqhrpymrKFej0NQtYRWOt0SqxEt2LUFBf9aiFK+
 vpojEEJ3/BoUpzAyiayD0+3n5oVcSaGxr3E9Jd6Xso4IJdsivkTtMGmr5
 PiB/GMcdQeK0hQ2lW/x7q3RZ+0E9MfT1PzMFBN+7MsxBGbTrzO8YtrLz9
 JwWQiEdDdwT/h3Mm5so0qJ36m1e1UxtBBMflswuyGjQsvG96mLsPmK81w
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TfvzbFIV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
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
Cc: netdev@vger.kernel.org, Josh Hay <joshua.a.hay@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: David Decotigny <ddecotig@google.com>
Date: Wed, 12 Jun 2024 11:01:46 -0700

> On Tue, Jun 11, 2024 at 11:13 AM Josh Hay <joshua.a.hay@intel.com> wrote:
>>
>>
>>
>> On 6/11/2024 3:44 AM, Alexander Lobakin wrote:
>>> From: David Decotigny <ddecotig@gmail.com>
>>> Date: Tue, 4 Jun 2024 16:34:48 -0700
>>>
>>>>
>>>>
>>>> On 6/3/2024 11:47 AM, Joshua Hay wrote:
>>>>>
>>>>> There are several reasons for a TX completion to take longer than usual
>>>>> to be written back by HW. For example, the completion for a packet that
>>>>> misses a rule will have increased latency. The side effect of these
>>>>> variable latencies for any given packet is out of order completions. The
>>>>> stack sends packet X and Y. If packet X takes longer because of the rule
>>>>> miss in the example above, but packet Y hits, it can go on the wire
>>>>> immediately. Which also means it can be completed first.  The driver
>>>>> will then receive a completion for packet Y before packet X.  The driver
>>>>> will stash the buffers for packet X in a hash table to allow the tx send
>>>>> queue descriptors for both packet X and Y to be reused. The driver will
>>>>> receive the completion for packet X sometime later and have to search
>>>>> the hash table for the associated packet.
>>>>>
>>>>> The driver cleans packets directly on the ring first, i.e. not out of
>>>>> order completions since they are to some extent considered "slow(er)
>>>>> path". However, certain workloads can increase the frequency of out of
>>>>> order completions thus introducing even more latency into the cleaning
>>>>> path. Bump up the timeout value to account for these workloads.
>>>>>
>>>>> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
>>>>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>>>>> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>>>>> ---
>>>>>    drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
>>>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>>
>>>> We tested this patch with our intensive high-performance workloads that
>>>> have been able to reproduce the issue, and it was sufficient to avoid tx
>>>> timeouts. We also noticed that these longer timeouts are not unusual in
>>>> the smartnic space: we see 100s or 50s timeouts for a few NICs, and
>>>
>>> Example?
> 
> a sample:
> 
> drivers/net/ethernet/cavium/thunder/nic.h:#define
> NICVF_TX_TIMEOUT                (50 * HZ)
> drivers/net/ethernet/cavium/thunder/nicvf_main.c:
> netdev->watchdog_timeo = NICVF_TX_TIMEOUT;
> drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.h:#define
> OTX2_TX_TIMEOUT                (100 * HZ)
> drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c:
> netdev->watchdog_timeo = OTX2_TX_TIMEOUT;
> drivers/net/ethernet/marvell/octeontx2/nic/otx2_vf.c:
> netdev->watchdog_timeo = OTX2_TX_TIMEOUT;
> drivers/net/ethernet/amazon/ena/ena_netdev.c:
> netdev->watchdog_timeo = msecs_to_jiffies(hints->netdev_wd_timeout);

This one doesn't say anything at all :D

mlx5 has 15 seconds, but mlx4 has the same TO as well, so this might be
some legacy stuff.
Netronome has 5, QLogic has 5, Broadcom 5 etc etc.
These 50-100 belong to one vendor (Cavium is Marvell) and look like a
hack to hide HW issues.

Re "some issues were observed" -- this patch only hides the symptoms, at
least from what I'm seeing currently. Still no details, so that I could
understand the reasons for it.

Thanks,
Olek
