Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FE86EAF35
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 18:34:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C77B417BA;
	Fri, 21 Apr 2023 16:34:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C77B417BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682094871;
	bh=uE/WmscifQDDdYA8eP0kWrJO/AfzC18U6debHlipIqs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iYhEv+VMxp1cb9OWsLGdqBGXdc3zGupB4l9iFcY1qcA2C2ISRuNWh52c/bNoiJTxt
	 jS0QiaOyvWFee6ra5g6W9jPCsqRb5uFQnj8S6DyCMrpjscOs9FUG0VZZU1Cu95izES
	 GHPNnyNAJpip/c6+nb7+KGl7e7AQuDIOn/5B9D/3Ov7OV2cYEsOY1Qnrtv1qJWw3SB
	 NK7pyPEaekGHRUTvoaxaT73Ie77krdPeGAK9Wmho5qJrHV13RVxE5KQyfuHa/6LGst
	 vgNFHeykguEcJS0kFx2moA+sil1REF4uDvbT5q5rjLLh78qFIIQKMkepYmLB0d68RR
	 fbGEFJCeXxmWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dz8lOjZcB7PH; Fri, 21 Apr 2023 16:34:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74A9040105;
	Fri, 21 Apr 2023 16:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74A9040105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29F3D1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 16:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F20976139A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 16:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F20976139A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WlvL7asYG2yg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 16:34:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DF0161392
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DF0161392
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 16:34:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="326362576"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="326362576"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 09:34:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="694995383"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="694995383"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2023 09:34:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 09:34:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 09:34:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 09:34:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fV+/l2xQ+nT+VeM36fJJV1pN1XHSp9dYkI4cAyJqkK8r8vUzanQD2VoE1CPU/EpQa3to2Ha5+0GVM+2RNhJEig0lRbD5ghsn0I4YChNw11sugVK3PaFpf/SzKpBuv1agWQSNAGZ4x9DeJ/yIBwRsd4Pn5DekO3pBuaeUg5uxot9t0YUcQWhbCH6btiZoxtV+5rS0fI+nLjMQIu8iQfSTYqzRuZR+9aDfDwaZmCGPYgBKl6X8/TExcWRXXN0hBp56HX9+4GTMhbKqGkGsysckiyhOcRHQV4WiDAAm6VC9nN+fv8cHrTQjhgh7utCUjFE6u8SCQvzpXK0nTvv2YbPcJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SpH4F5EPmZyrG1i1nyxFAlb+rOv9xE5Wz3hTZzhstCA=;
 b=SJSDYZFKBcHbxTKnutILScHnbON17A0doF/EsxV8vR7QpWKbI2fkxETqv8AVuIicjYeh1P7rXyt/7sYjQQgn48W3Yvar+thoIhZ6iNlbPEpjrNge3PWAca9nuwREmNEtKP2fpGRRRyhVjxinQtFFjS8XEIYnTt8siRIzPvDFHNgmWunvVGDlkgEwwgGvr1PIUkJsRMVRGZW12eAs0tsEL4v8tlKAdFX7oa/C4PkY9BJst6uwu9R6RbBKH8a+krs0X7uvqNA0qdQMuu/q/OVKgNw8mLTo97fOJec7wOyLN6TljDNd7NaqwJZLOgCtjiwinVZlVbEIwmuEuP7G1mixEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BL1PR11MB5255.namprd11.prod.outlook.com (2603:10b6:208:31a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 16:34:04 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 16:34:04 +0000
Message-ID: <6f23fe3c-c23e-7a37-f22b-21a59281715c@intel.com>
Date: Fri, 21 Apr 2023 18:32:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-13-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230417093412.12161-13-wojciech.drewek@intel.com>
X-ClientProxiedBy: FR0P281CA0094.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BL1PR11MB5255:EE_
X-MS-Office365-Filtering-Correlation-Id: 6edd19e8-cba8-41b3-d061-08db428637f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QxL5lkxTr0peoro7lOV5asW3D5C52ebtlffHaiMoK5oNs29q3+5RZNrWjSOy66Rlou2HPn55+0DFhdEYOOUp1RsduPpb4vwLHUr0lnFs7aCgA+J4Wakt0RdZ9J3lJgAGXiPlJfzic58V8GWs/BGlkJrbXMLqPpEns66jBuLM1t7j4ldPE7WPUQScQsLAFogqMtXYTLX4rmN9cnHRaQiRyiUoYjyTrZMeCe8q4Vaxgq6ErY5NdpMPGVLHQe6M4qqeKfaFKZRQA6nW+DUvso5bYhNJojuPrtT9YgYpTatab0LncQWUt63pGdhplaRhQpLk7SsyptpN6P9qoDSeq1mnK9RhazRbNcJ6wPUj/4jjX+3svz8a1kw5kKlD86zxyC/OREAQmRzdSVySQc8dk6CfXjRKZmSSBR/ecx5Phu7PP23XVHJA54Yp6DDUzwDIvCxGAMuAEwBJqUjAdodRcAVaAYZZ3l+nBFbys/KMLFGHTFgA2SM6q6TjgF7KW4GZLiCFtfGtYLuKamD9OWNDiee6QaCv6beiZonoumbRHIhihDU6H8sU/P47ravcG4DGP6PkD+adDVenPEnBL1Y4lWjsFnlzGSAInWkC/UAViR5PQuw1+lmovjMgG6S2GVDPpUDmnkUGZifiiFxaX7q+r9s2Hw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199021)(31686004)(6512007)(26005)(186003)(316002)(6506007)(4326008)(6862004)(8676002)(31696002)(36756003)(2906002)(86362001)(5660300002)(66476007)(6666004)(37006003)(6636002)(478600001)(41300700001)(83380400001)(2616005)(82960400001)(38100700002)(8936002)(6486002)(66556008)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L212c2lHNTdBamd1MGhBZjJ6VzhlblJ0ZVdmVGVXQU5nYVRlR2xweUgxZEpt?=
 =?utf-8?B?eThkTXIzV1lSM3V4UVArQnorb3VQWWhEV084OGVGK2NYMTI3STJUN1QrZnJq?=
 =?utf-8?B?RXNGbXlzbm5wZ2JaT3VtZkRNSGthL2NaZjlpeUx0enBkRnczZytGWGxhRUpt?=
 =?utf-8?B?S3RxZG1PRnd2UjF1WDhJMTlpcy95bkNJY0J1WHFtV3FCRE51UjNjVkUvbFl5?=
 =?utf-8?B?RTJOakEvTFVPcEs4b2d2TG9XeW9vRWQzMGhic3NaVDFwaWdsMFhHS2J4aGk5?=
 =?utf-8?B?YXdZU0hXa2EyNS83Q2NHaVdsREl5MEhiWVdCd0FoNU9GdFRnYjhLbXpGYmEw?=
 =?utf-8?B?NGJHdG85V0FFeGNua0c5SkVyRi9HenRwRk1yQTF4aDVBMUVibEg5a01GN3Br?=
 =?utf-8?B?ZEdpU0pqY3dmODk1Q3NML0VtM3lMaVltUmRDUUdETmY3RWtnQzVzbVB1YXg0?=
 =?utf-8?B?SzVhY3NHdUtYTEd6SWVLN1pHdFNtUExBWnJjZ2h6VVdDK0tQOUpPY2kyeHFF?=
 =?utf-8?B?TEkyTUg1ZEVKT1pHdjNGZU5CSG02clBPSkY2dmRDdjBVdVdJZ1FJZlFPWE5E?=
 =?utf-8?B?di92N1VCTzk3L1FMTUJ1d2ROOVg3OHR0ZmxZa1I2TVVUOHhaVWMraFJ4bGFF?=
 =?utf-8?B?aTZZTUdnQUwwc0MrNU9wZXRzblpUTzlQQ1IzR3huaVRsaTBDbmNkbkpsR0hO?=
 =?utf-8?B?U3IvRFBuQkxDVXJVYjRHek1oZG1MMkhDelNiTXZlZmtPSThwNTFTWFNWa3BH?=
 =?utf-8?B?Qkh1NnV3SXh3dlE3OVVmVGJ4S1FiTVhvOHZSeHV3U0Nzbzl3WXd1ak1LV01m?=
 =?utf-8?B?VEhSQUp4ZzYvR1MxWGYwaWtIOFdvMEE3bDRrOXo0MmlUOGtham5iaDN2V3hU?=
 =?utf-8?B?UHdUT2xZQlE2cm1VMmVKQm1DRlhiazNtLzRUTVVDZWFyOXZHY09aYUs5SWF0?=
 =?utf-8?B?djk0dEJxa3IvVHpDcFFFK2Q5L0V5QmhWOFhFemwrVlIydmZWWmY0eFBNekVl?=
 =?utf-8?B?bkYzaFlmc3htNDZWM0lMNCtrQ2RVK0x5YUozL1ZqcURJclpTTlYzd0FZRFY3?=
 =?utf-8?B?cnFvSENmVlpoK3ZuNlJQK3ltb1dENUZ6aElKUDJNMkoya1hLbVFFOFRJU1Bl?=
 =?utf-8?B?a1pXTVRxTFpEYUU5N29DdDFreWphUFBCT1Zpakp4R2ZucHZLQXVEdlhhTVNk?=
 =?utf-8?B?ZzZySWdKV041TFJJbCsrdW5LZGFZTmtxV1JCRENGNWdYblZVTDRCVFo1NURG?=
 =?utf-8?B?Uk9mNVRndnlVVWNxN1BrVG16bzFYYkZ4ZC9rTlQ0S3hMMDYvUXE2cnFhdW52?=
 =?utf-8?B?Si9rYzhtTC9xMmUrYk5VNnByOUI4aHlVZE53M0JDTjJLYnhyNkN4QXo2Snps?=
 =?utf-8?B?bFpEbmlEZU9jWnJJUktzeXlBTFU0VlBvSDBnY3ZZamk3dXhPSWkxR1VLRUxZ?=
 =?utf-8?B?cWhKamZ5R1ZiL3dHLzdUOFcxWlQ2UUxuL2hUZHRZNVN6ZVd4dmZ5dmRYRWZr?=
 =?utf-8?B?ZXdBaklQSUczL3dVemQzN2JKL01BZUxFSkRFUnVrYVROVW5sY1lTUG0reGtn?=
 =?utf-8?B?cVRUQUVoUGdLZ252b2pDSjBpeHdneEhPOTdXYndVT1JPY3Q1ZHp3b01YSFE4?=
 =?utf-8?B?dk5nbWdPU1ZXOW5SVVBMYVVnc2tEQXBoV0h0Y1dWaXR6TmEzYVBPK05DZm1O?=
 =?utf-8?B?TWphcUo1eW05ZExpVzFNVG95STFJZFZBZ0J0aS9Jam00RmNvZFQwZDZ4Mjlp?=
 =?utf-8?B?UHRlY3dlQnFNM1FwaWNlZlI2M3lQUlpXUHRtSmRzeWRzRmZxYmg5WHI0eWpt?=
 =?utf-8?B?U2I1cnR5SWVMUUhiVitDcm55QWQ0RXFSMVNwTkg1aVN4cnhycTdsYmYxbXZO?=
 =?utf-8?B?RGNLZjIwcXFWNTY1bEFqV29qbFQwN0tmc3RwK2VPTmsxME8xTWNMZnBJZ2Qx?=
 =?utf-8?B?VlZhM1lwTTdIN3grZlI2dGl6dnVFUGM1WlVEUlNZc01uOUJmOENqTnEwTVhM?=
 =?utf-8?B?d0FRS3ZnTjBxS0NHcngrTHZkdUErbEdqRkRZL250ZnBvQjQwNUpGRkFmYkE1?=
 =?utf-8?B?OE9RelU1VjF2Z29yZjNqMVIrSEZUMHNHdmFUMng0Zi8rUndleTl6ZTU1THFM?=
 =?utf-8?B?QkNuWXlvUXBoZkFMKzVxWFdUM1cxcWlQNXhrK3Z5RjhxODlnK2dyVTBMTG1W?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6edd19e8-cba8-41b3-d061-08db428637f7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 16:34:03.7959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G0UCF0C/CyWAqw2nctPStJBSck86rnoefpIWkOQyxY1HInkT968Ertv3IPMc6LigXXca/RdCp1lr2dXIAmZ309zxHQYmBL0u519j47JkeCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682094864; x=1713630864;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=36TMcYmn02keXwkQdmckvle316Bquz4y8vsq8lIDQts=;
 b=cUUVrLpNDiN3QOP7ZpB4LFr2ZIemeb7no0NNvHFukTwTSzpyFQ8TtVRr
 c1U2hjAdr/MwpP4SchC1MBirZsLBDiCBULBV8sFFhWpl4HXNFnKvskKDv
 IpZkSIOYkOcbh+OA8Y4j5KklCIz/dmVh8c530FxjC2YZwQK1fyJNtlXMx
 Y6MaFhhcDyRjuHEIbFSdqgTIfRSVt1SW//I8OELKqO9G22GVJ8shMff0S
 SdkQpyzavKGZ/fOGa30mYPJO/bgUZHuW/lScJHC22G7AwpkSuqPPV3IVk
 oizxyc+qys4uCCHXG8N0WIKpL6lSRRM7noRinFDj2GjJ9g17vTro4YXr1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cUUVrLpN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/12] ice: Ethtool fdb_cnt
 stats
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Mon, 17 Apr 2023 11:34:12 +0200

> Introduce new ethtool statistic which is 'fdb_cnt'. It
> provides information about how many bridge fdbs are created on
> a given netdev.

[...]

> @@ -339,6 +340,7 @@ ice_eswitch_br_fdb_entry_delete(struct ice_esw_br *bridge,
>  	ice_eswitch_br_flow_delete(pf, fdb_entry->flow);
>  
>  	kfree(fdb_entry);
> +	vsi->fdb_cnt--;

Are FDB operations always serialized within one netdev? Because if it's
not, this probably needs to be atomic_t.

>  }
>  
>  static void

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 8407c7175cf6..d06b2a688323 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -64,6 +64,7 @@ static const struct ice_stats ice_gstrings_vsi_stats[] = {
>  	ICE_VSI_STAT("tx_linearize", tx_linearize),
>  	ICE_VSI_STAT("tx_busy", tx_busy),
>  	ICE_VSI_STAT("tx_restart", tx_restart),
> +	ICE_VSI_STAT("fdb_cnt", fdb_cnt),

It's confusing to me to see it in the Ethtool stats. They're usually
counters, ice is no an exception. But this one is not, so it might give
wrong impression.
Have you considered alternatives? rtnl (iproute) or maybe even Devlink
(but I believe the former fits better)? This might be a good candidate
to become a generic stat, who knows.

>  };
>  
>  enum ice_ethtool_test_id {

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
