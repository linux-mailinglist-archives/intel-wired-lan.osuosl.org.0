Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DFC5B7DE5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Sep 2022 02:33:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7929D60B32;
	Wed, 14 Sep 2022 00:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7929D60B32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663115605;
	bh=w8UNFx9Tdy54qz8XyRHRUYQ6BHS24HLTGqP/CBFnamE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oHMqYLVKNFtI8nihBYYUH5HeFM5PQPbxQt3bCKq/QD+tQTPo2aaNq17H7hzCRI9Vg
	 EKPpWcuhPKL+FBd5qPgmPeIvoAZKQJkgd9sqlCFnj1Nn2Dqjf8nhdnlo2uD7nWFYpG
	 mDMX7u3c4hx0qjRfuZTsOmwnT/8Xz/jxT/F0KIMuDi0wIcpoKsVd4/IToaBtUbICrY
	 6+HKSGFwr1728ZUcrqnPp0iuyJnFcC9FGQkUuqL0dB0PCVH8gTSJ7E5xbOp6o33uz1
	 FKDG2StmhkwhsXQF66Oe/2jVRKAavFOnTPfk17bC51a2P9wT4cgQnAfrxhGiUCfXjI
	 D900jDf9wnoLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QL0T5O-SeNDY; Wed, 14 Sep 2022 00:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 624F4605B2;
	Wed, 14 Sep 2022 00:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 624F4605B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86B8D1C113E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 00:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55DB14007D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 00:33:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55DB14007D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s7vbukTSvuPM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Sep 2022 00:33:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA50F4007A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA50F4007A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 00:33:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="295881772"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="295881772"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 17:33:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="678809015"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2022 17:33:08 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 17:33:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 17:33:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 17:33:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1hTsF+Ow0SYJQt0PBfrB3Eoep1W1SpR4TUAagImvnbQULRI56Daj9IXQowfGQUl050h97RYi5bMbXXAC9THEKKjDnl59PO6rNeVcJQKwsnCWi4LZl8aSu98UexX9fnqcb/7ESloEVadtu/tQujIRAKUjQLOkOKkOqXu7AAj+OcRfa9DhEYVL/OIEZN0LV53GekVJt4t+IGDkaPFnuvVCPctjyWVZzIza44LPd8Wns7NEtc6rNZb5o4pH77CyybBEQBymGx7Pqr6PGyqBRIyluKMR+6mUjJWlSBAOM7b82063KJxF33o0hngqonG4hVDEoaPfP9qfcB17Hc8oCnxJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g66H7W2CYy6W0Sj3tjJa7LjE3yOJE8+ux48kUIE1/Wk=;
 b=Lm2LcF7o23Y68wtMHfLkZQcwLLCt85v3ltsMIv/e/s3JwLAz8AvoNIwrCkIeDtihbycto6BtTEyWgrtC1h5DSzf/ug7XBEOfDca4a7MYoSGFZKrBABY8MltoFeDXT2G9G9n3CE4jvgL0zsv53e8grwxKf6yYLF9HBDtzXodHnh3lZpF7ATlqTormMTNea0Dzivw3asJ8wYhfJwTUkWKrEQaZPvvjVgGYfx+bmrBGaaD/U8ljmYE+4pnrf2DhqmEfGb98mplVhKz0iljPFfqZz8/GCe1vGohjUoMSreCROy5gTXZQ8NKYORNivnOSnjzQFxLlYEwXY7CQ5d/DVFzlzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH0PR11MB5298.namprd11.prod.outlook.com (2603:10b6:610:bd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Wed, 14 Sep
 2022 00:33:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 00:33:05 +0000
Message-ID: <772ceec3-6c54-6a5e-a188-964b90b618ad@intel.com>
Date: Tue, 13 Sep 2022 17:33:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220829073348.9520-1-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220829073348.9520-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: BYAPR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CH0PR11MB5298:EE_
X-MS-Office365-Filtering-Correlation-Id: fe1472f7-33b6-4a81-254f-08da95e8b0c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5B/4pwQZ3ll52C8YCFyjTXRp65XTPBRKQNAeY6ubTrniqStAKa5+4pJJ68Fc6VFr1kbSPorxIW9SYUcqerSMi3eYPofmd7ToQ5EHJjMmPON5/uPkPE1FgllnMvCwlAAe+s2B8II7sK+qBaNio4ZzJUQcTJlsghyCW2AKc8EEit+464TSJJ9gGDlDpH2GJxYlC05q+jkEWvKSqHHazq8+7qdAUxh+7ChAGdUR6JDRGmkwpKsWd1X8+LQxXbC4wlelCkgn/2Cn/RucG5wJApjDWSrlHI46oTehYw5q0sMZdpWDDCp7K5uROjO4kgNOkAcnKWWURSji3wRf7/3+TGLzBEJ4gFlK8CzShdrnIVFg10he5UImeifx0vNFULlYUZU8KrYjZsLU9le2RQ3BUZ2zsgsGT9QH2W2QyReqq6sI07FnIzDHBpiyvP6anbCTlupfelzQ0JMmnmkBaDZ1K3FIDRa7uy+m0iJlNPUV4hkCZ3ZNnXGoLde5fWNT0Ipjn6rO/g1C7zW6W7ZfVsxxH10NmRhK3XvQePOPu6eP1Ph+3Npcj2UaqKhDZ09iP+9P6EhXvMh9g2HzclUQPy2deIEksnKtSe89qrkkTu19MFIZ7ySxb0s1FpySrKqWoXj+UeA4wwuRX7LHyIRCsS/trZkDmmRCrlId4T5t2ZzBi6/szigV/ftualAYOSHxOSaCNGhxNM5v2XEOx9zmx8UHCnJtTO0pcX0PoivGcWF0TR7+53D+mIRRGDXKR+QHo/8H5E0QXljkjRJIwfA2/rI8UevgmHjCeLB4GQcOEO2ditwoIfz4vZ/oY2czXsSmp63k4QVaKhx3xDhBtgAGFgDRpscGOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199015)(478600001)(66556008)(6486002)(8936002)(66946007)(2906002)(186003)(2616005)(36756003)(6512007)(31686004)(26005)(38100700002)(8676002)(31696002)(82960400001)(5660300002)(966005)(4744005)(86362001)(316002)(41300700001)(6506007)(53546011)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2ZwYlMyNmFjNFduUXJXSlJXdlNseW9WbFI2ZUcwYVhYMnZrdlppVWdOZWJn?=
 =?utf-8?B?YUdDS1RkTlFMbVIxY3gydXJRNzhxU3hkVVpMaW5pMzZXc3lVcmQ2SmJjZEo2?=
 =?utf-8?B?V212WDVEellZaWxqWWp0OVdrcFpQallYWUNvK3NqcEFDajBHSldrdUh6RTJT?=
 =?utf-8?B?NDFOYkRYTUpKb2IrVC80Si9DTHRwL09GN2lzMWVwZndDMUhwQXhsTWxmQXRM?=
 =?utf-8?B?SXEyZzd6cExldExSZythNXNtSFA0ZmJCeGhyMHR6V05KV3FvSUNyMk9xeVZt?=
 =?utf-8?B?bzFyMm9yeGVsRlhXWGdvQ29TYUxOQWsvR1RnNi9PamRsMjYrVklBcU9ZWlgr?=
 =?utf-8?B?V1RNUWFRK3F3ZEV2OWw4QXZON1lWZHhKWFdYSzRTaitkdkIwcXdqcFp2RFc5?=
 =?utf-8?B?aVBYM2hsNHo1MGoydnFudVZTc1RHM3U1a0w3ck5zMTFMVWkxa3o4Y2pPSGJB?=
 =?utf-8?B?bTlLam1Dci8ydWV5UURHVVdUT3o4Ym5WMlhjM1hWVTRVUHI4L3FLblZUM3F6?=
 =?utf-8?B?THo5Q3RGS0t0dkJwejkxZVpINUNNZTJQZ01jdHRIbTBIaFd1enlwS3NkQWpQ?=
 =?utf-8?B?czdLS1V5alR4RzhJbWNlc1k2NHNFY3gyRHlSOFNqNjhqZXBzUkRTRGthOWNZ?=
 =?utf-8?B?c2lta29nMmtTWFQreXc5UGNFZitYNjkvRXFDQ3QzamJFZnFRQXdnOWdzcGJL?=
 =?utf-8?B?QUZIdHl4WFBGYkZZT0xCSkQ1YUcwbzFaczg2azlqUGYxVW9UT0ZFZkZ3Q1FF?=
 =?utf-8?B?QkRQaGJQTXRHMDZBakE1UmJYUHdINlNkNTgwdCt2RFpvUW9FLzdPMlpEUkFJ?=
 =?utf-8?B?VWFzQXF5ejVuYkgrZCtPVjRkbVNwSGtwdWNnb3NBMng2dFFFOWFPMkNLMXhn?=
 =?utf-8?B?NEc5bytHMGZMaGIwZkxvQWpaNFVWS01UeUxGR01Pb2ZXaUdBdjNEU3l2S0pu?=
 =?utf-8?B?ZVdWQ3phd2lqN09VOGg2ZVhuZTNhdFFkenJDL2J2VXdzRC9tTDR0MjhXRmI0?=
 =?utf-8?B?THZnSnd6ZFIyVVd5OHpPUGlmeWQrdGY3ZEtUVjhKQkIrcmYxenV1UFdQQXJo?=
 =?utf-8?B?a3RUVjlSTlBMWWRhWHZ0V0NNdEZoa3IxWHgwd0Z0YVUyYmM2bmF4SE5RMDFI?=
 =?utf-8?B?L3cyNUhwaWNBY1BTUnZUN1VaSVUyVkNBQ0hkZEp2WXJmNDk2a2ZHUTFSSVpO?=
 =?utf-8?B?Z1RHcWtscGROVTJYc2R5S01NcjZmRWNVeUxpaG5XcnllVmlkZWNybGtMcnA5?=
 =?utf-8?B?c2FleklXcnlLSVhrQ2phcUVpbUo0a25kRHpKVkkySkZSUzZVSmg0dENBa0kv?=
 =?utf-8?B?Z0RyTVJVanA2U0l0Z0RvVWZoNExtbjUrRGU5SjdPUVdqOHlrRis4K1dLZ2s5?=
 =?utf-8?B?OE9NampIU2xEK2ZTQk9vVzZ0T2tFanBUMTEwU09RdHo3dThVbjMwVi9tVzhl?=
 =?utf-8?B?cDhUS3B2cVUvMVNScjdlREtraGlvU0l2Z2hHRjhyUlZxY1pwRno4dUVuUHRv?=
 =?utf-8?B?dDU4d0JBTjk4c3BGaUljRHA4QnRKN095c2RvbjZtcUZtcTZreUQveFJlMXh0?=
 =?utf-8?B?OEhoK1dySVpBbU9zWjIrNXl3MTZCMHRPd25xTG9RNDVPUG1RN2ZraWlpRlQ3?=
 =?utf-8?B?UkdlZFdFSERCdEtjRm5YS1E3OTNybDVjWm1kTVdPZjAwY2JqMldYRFNUejVV?=
 =?utf-8?B?c05NN3EvbjJQaHgzWjhaYVd5Y1M5UDd6dmViais4UW5Hd0QwbVNBK21VNFpB?=
 =?utf-8?B?Y255TE54OThGK1UvMzFBSTdqS3oxV1kzT2NtM3h1dytjdnJqWm1JbmFCQWFj?=
 =?utf-8?B?U1NhQ0EyMndvS0cvZHF4dmhUQ1B2Z1RBWnkwSXlReFlQQUF4TlZkSS91VDcv?=
 =?utf-8?B?ME1obUt5NG5FQlZXc05zTi9xYVR3OVVxd1cxSXpKeGhDVGY5VjFoZ0JOVHdo?=
 =?utf-8?B?QUVXR3hZVHNoTkVnVkZ5YkpjU3NKdk83dVhkUGVQYm15VEtTSkIzdWtTbWlH?=
 =?utf-8?B?bk03MFg5eDVJQUpOQVIzSStXaHBJQWxqUlNscmtUTFExWVVUSjZ6MzJiRUcv?=
 =?utf-8?B?WXVtY05rb1VyVjZlaTdNdjFvWXFJUnlXZ2dZNitnWDBkQnFSZnJaYXk3VkZB?=
 =?utf-8?B?alJVOG4xeVFFKzRSVXdoUEZKL24zdXdxcEcxSnQ3TS93WWpTajd6K3hzZlBI?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe1472f7-33b6-4a81-254f-08da95e8b0c1
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 00:33:05.8933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p+nrtxyq+7i3GYwtYykdxTau0wTOIKvgk7FoNXOBQPWRLSobAurznFGSQ8VSvhUrIgmY/8W15t1kjoApsBOT214qmhPTJPoOxHLeJOvkrcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663115597; x=1694651597;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iTbH8YuDO1qRjXW5xnlgo+F0nTwtu2koct9KlFdyYAc=;
 b=PsekdZMEcUZ4NhEh3/FOhNQTG9xUizR0FP1o8z4tg9PMndnzBmju1xfS
 bNI2XhZHoD22EA87FxmOD0jFTxuqH/J5EtkqX/hZMTMCMcFpsIOpN6LDR
 5usoimrN1OdPNoE7elJ+5TphTVfKKPBA0wtyFKPfjazsya//XQJe5mqMg
 TWQdcGOQbjkTOLkKN8BOE56KNLcjjgiuiB+SwRJ2pKxXgazASvcv6INZk
 6qd0vsJNgZEHxBzoTPsWbwJZMHbd08GMdeqnG8/XBXama7HNNkBgNBAKX
 x2sHAGob4ty+hBDQvn+z+CcPSl3GHhBFrGODgaWxz7pewZpAGMDV24ov4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PsekdZME
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove second GNSS
 TTY device
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/29/2022 12:33 AM, Karol Kolacinski wrote:
> Having a second GNSS TTY device causes issue when user is reading from
> both TTYs simultaneously. Remove second TTY device to avoid this issue.
> This TTY device is not necessary anymore and it's safe to remove it
> without breaking compatibility.

Dropping this based on feedback received from another patch dealing with 
GNSS/TTY[1]. We should look to convert to the GNSS API instead of 
maintaining our own version.

[1] https://lore.kernel.org/netdev/YxBU5AV4jfqaExaW@hovoldconsulting.com/

> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
