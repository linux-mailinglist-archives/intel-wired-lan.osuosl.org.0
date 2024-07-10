Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C86B92D3A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 15:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDF3140B5B;
	Wed, 10 Jul 2024 13:59:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R8Zhd7gX_p0t; Wed, 10 Jul 2024 13:59:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E5044156D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720619986;
	bh=iiDaL9xQXeMrGiWGZ42MYmRbHIEZ7n9r6aAO89C1CDI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g/aXrPyu5gJfFXl7FiOcX58nNAzYk9mmrJFHJNaqT8LwjpW5kj7oXPBq37J4jtEeh
	 hCY/uUxBZBoLEklWVi8FETUpWDjmzolAxw+Q0qIuOetbwWAr7HtuCIHdR5tddWqRUC
	 xfefp45hYmtKYG9mztG0qwlSnWnaIgbp9z8VbO0BhoIvPZG8qZYVPEd1HldJotz1R6
	 uN6fbF+YnnGVLqNWwFeSDhFpUx9SQ9achdnCWkv3yAbEEwYlv6fIsNbRnANECdPHdS
	 yl1tWozk74LUM5EVGp3i6we6w1CdJfHiPqf/+o9BHEPcuLw57oN8v9gTUCVgvHaEhi
	 eb3FSl624o+Vw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E5044156D;
	Wed, 10 Jul 2024 13:59:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 935CF1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 13:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8002A6072A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 13:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vfQiRQ6OGw41 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 13:59:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C3D560701
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C3D560701
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C3D560701
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 13:59:43 +0000 (UTC)
X-CSE-ConnectionGUID: NQYqiFQlQHiGX6Myrmj/kQ==
X-CSE-MsgGUID: Ach+ayZ+T3uWsBiKaC+YRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="40458850"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="40458850"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 06:59:42 -0700
X-CSE-ConnectionGUID: TrGq1pbkTP6fBOa2aSMnhA==
X-CSE-MsgGUID: gjDfnBT9TpubQ15CEeuv/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="53172993"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 06:59:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 06:59:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 06:59:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 06:59:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HfckRmxhoqD85oRD8FXO6EHLMe7BNmANT8DZkVDQq42IOhx2fepboST9vBe0Z4qq66KFv3gUk1eO+kBGAfb/KaN6qqOYf9h/OSaWcBd+F0lh0+R8l4SXBB+GnJA4GWFXkBc8Vr91wiFLavbjLqREq1AaresiXAECoKqiv957BuRIvqeEZn3BufLIhUsgi7CdCWPcUR66/X8PE0kAANGDIwMJtHyq/2Wqm9Xw4/iZlNRZMZ4L5VHxBlRV1+CNRYHUWNb4bgT6GQPlBV5iIn1EE5SCSBt04XtKYxvknoYO6YevlHMfuGeZRK/ye10Py6ft37JzyErZr9ubtP0UKxVz1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iiDaL9xQXeMrGiWGZ42MYmRbHIEZ7n9r6aAO89C1CDI=;
 b=E318FKimA8UltI+EiJeOnIZaRJYqnPlwLnq7B3SC3a01d4FximScd/0VMuCbigsVRQ7JG0EsymK3g4lwI9tQDI5yc+N3XFa3GGLxLSHmQC5/4CgrihOTGxiHPcsFXrjUAuCX2UWNlwwogBwJL6Ibyi5rhcJC21MEeIdZs4h6vIB+nh5fPcH2cQTtJNd5hhd3ITMLlZap3+GT+EoULfHeKwH70q8FHJtNL3avR1WRocbtjlFIjT5zlX264kXKjwuTDUmrEtxcyNCxfYuDkWi+i26g8y5PotL4linXuiYKcj2K3HJgD4lCph7yFt+X5rOw8DU56s1MOg9PPoD5dFwZRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB6757.namprd11.prod.outlook.com (2603:10b6:806:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Wed, 10 Jul
 2024 13:59:32 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 13:59:30 +0000
Message-ID: <b83d8d92-44c5-438f-acef-d5781ab44f0d@intel.com>
Date: Wed, 10 Jul 2024 15:59:23 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
 <20240703125922.5625-4-mateusz.polchlopek@intel.com>
 <20240708124055.GN1481495@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240708124055.GN1481495@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P191CA0015.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::8) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB6757:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f422b39-ff14-48e9-497a-08dca0e88526
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEFqZHNIbm15cEpYeDhhMk5ha3pWRTZMZEZQMk9pQnpPWTI4dWNWNEN5YTMy?=
 =?utf-8?B?UlQ3bDhVUjUzTHhGQkZacXc2YSswUHZhV2JkSE5udFc2a1FZQjl6K0tORHhv?=
 =?utf-8?B?RkhMclBmSExVOTNWSjVXSjdJRkd2NW0rQVc1UUZMa0QwVk9vWncwZHZJMFJT?=
 =?utf-8?B?a1ljZWdIYmp6RURKQ3d3dXE4elQxNUxxVWhNZGRkVTY4QXNVeTZEU1F3cUl4?=
 =?utf-8?B?dFREb2E2SzMyMk9vOGQvdlNwdGladHVBNFpwVXNtRmxuaThpSWNFdUt5d0VR?=
 =?utf-8?B?NG5WNjA3aStXWHIxMUJERS9yNURMbEtoOVNmdWdIZkdzYmwvbkhVOWgrSDBM?=
 =?utf-8?B?RVNDWkxBa05HdWVZMHdmRzlWK1hqbU5yOVg0akZzalNxeHk1NkIxdjJzTlBi?=
 =?utf-8?B?ell0WUNuZnRvTklxUXZwQm9DSUI3MDFSSzZOU1dheVdLVjg5b2ZtQVY5UTJC?=
 =?utf-8?B?MmhLMzZwbUFDNUlTeFl0UGFMYmdaNGE5bEdyY29iZUVUQk1uK0w1SVdtSE9u?=
 =?utf-8?B?NHdWRmhvNm5mWkhpYjZqRFM4bzJ2SmpNSG9Gc2JiNGR3YS9admFaVEtySkl2?=
 =?utf-8?B?NzRqWitlVHVIbk9UZ1VvV3RKTEU4WWNaQmw1WFpWbzVuaXFrSGtUblR0cERS?=
 =?utf-8?B?bnhVemYwV3UveUl6cS9KaUlRb3RyYzRlaFVKYlN6UWFIRFh3bThnM1ZLYmZY?=
 =?utf-8?B?V0JQbVJHcUgzVVNYYlNzajVZQXA0Yk82NkdrNW9lQkJuYjhudTFwQjFENXRF?=
 =?utf-8?B?MkNoUExvMWhRWXRSUkNtSGdQZm1OUmQ1ZVRZa1NJUXFaeVVKUUF3QkR1TkFM?=
 =?utf-8?B?Z1VSa0hSb0VvT2o0dDNRUmlFQUhKSWM2SXEyZlFFeXczdDlSTWVPWkZUZFRL?=
 =?utf-8?B?QzNmMDNFaUVQaFlHWlF4ZW50bi96SVI3UG5tYWlhek1kTm1PVHM0R3dMOHVN?=
 =?utf-8?B?QWVtQ21md3U3cGtEbFZFb1ZRM05OdWlJdFNQQmRKU0l2RzlLc0F3TER3ZTV4?=
 =?utf-8?B?ejhHSTM4dWZWMG1iMUZ6U3VNSjQxbkV1WTJ6OWQyMXhNS1U2VWpuREE5QVF5?=
 =?utf-8?B?MW1tWEFkcXNFaGI4US8wUEJrVWYxZ0hNNHZYUjMrM3BEaDFLZUtTVk5SOWda?=
 =?utf-8?B?U1RvTHVtYi84SkJkNDJhUkpJWjNpdmJuOVc3QzR2UURCOUU5Q2p2R1pOYmpE?=
 =?utf-8?B?eERkdEFRTnQ5MXdDTnY2bC9BYk5FaWJncXpvRkdlcndFckN2ckZVT3NzTE1a?=
 =?utf-8?B?ZzAyWWpsR0h4eGxqcy9Lc01QVWdRNFl4Vjd0U0sweGFJbmJOWWZaMHlVbVl3?=
 =?utf-8?B?MEtIKzc5T2ExMjZDd0FUOEpXUUlEV0NoS1FQRjNCTkwweEtuY2Y3SUg0VDhl?=
 =?utf-8?B?eThVVTBGWUFEMjhoT0xvcU1yNW4wOGlQYTU2MXpua1hmSWxIUXpPQjF3RmJn?=
 =?utf-8?B?V2t3cjlONUlYWmwxbXBDY1hlSHVodDNvMTVoNzhJTmp3Sk01UDdzb3piR21p?=
 =?utf-8?B?TGUzcURRVkVpQXhxYTR4Zzl0UEtzQjVEVWwrNjhQTXB5d3MxYklWR2ZaZTh4?=
 =?utf-8?B?Tm1GZittbm9BejlTYWdyaG51dEo1WW02eWxHeVFZbnFwQmp4OU1hV0VOWXhC?=
 =?utf-8?B?eDY5S05tYTRWTzZhcVVueHpFMVlZbXNwdEc4VnFXTE1QTlpVWm0wZERuWTRD?=
 =?utf-8?B?YlQ0N01tYWVEaXppSll6VjZuRmNYMU9ySnVwRTlORVR3MXJYakRHWEozMG83?=
 =?utf-8?B?MzkvVXVQTVRLeElPMlk3NmRaRC9YK1Y3SDBKSG9Ba1o1L3ZZYjdNNUFERmN6?=
 =?utf-8?B?MW5IUFdieWpJenlBNzlYdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzhPTDU2elpKVGtTTzErTmlrOWdsbis3S3czakFZOU83Q3Z2YkV3eWRlZ0dv?=
 =?utf-8?B?Y1lWcXdTcWJKV0RvQUMyRWZLMGJNWnR1SkFWVi9ray83TGVuUzlQbVRYdjBY?=
 =?utf-8?B?K0FKZ1FMaDB3eGVtNHRaNGw3WXdjUTN1R1huTm41Yi9GUS9HVTlUWGQvamNM?=
 =?utf-8?B?YXhvdlVzeDcvN0JRSTQ2bGNuY3YrUldpeS9ub294Z0pwaCtQUzRoL3BQZE5U?=
 =?utf-8?B?Rmh3YkxKR1Jvc1lYcUZlTEhjZDNKUExHK2VFUmVndVVPeU10dEhNU1BwZDQ3?=
 =?utf-8?B?L05jL0hCWmFVeHVodExadGhSL2RPVzZoQlNuZzZhR3hKcnNSWFU3SXBCTm5O?=
 =?utf-8?B?TXV3VnZzYXRrcjdGcEJuQ0p0L3hoUFBjdXhmT3JscHpWSGtjK2F3UUFFV3lF?=
 =?utf-8?B?c0Ixc1JISHd2MkFmTlJXOHIwTTArbzNCMGQ2Tjhnd0NtOTFLVUVHbXdmSnBN?=
 =?utf-8?B?V1ppcG41Uk9VS3FYZWtxMFNnMnAwY1RHL0ZoYnAwd1gwbDFreWJ6Y1FnSWFZ?=
 =?utf-8?B?QVg2enV3b0tDeUVGWHFxOG1pTlhjcHFZK0NQd21zZDdodG85aktoWTZuSUJy?=
 =?utf-8?B?bnlIMngvcTdmK2pwcEVPSkxqMVJ1Zmd5TkxjanQ3OVBQV1lrV2lhZE1iajdx?=
 =?utf-8?B?ZExuMDBwZmpmMGlwZXFoVDAzRDhFalcwSGFGS3BEQSt2SnRGMTkvRjBkNm9F?=
 =?utf-8?B?bVhSeXJvbGpCM2hVcGdDWXd6MVllZDNld25PSkM3dFlaUnFqZXFpSGJlYVhn?=
 =?utf-8?B?SWZxOHEwd0JjcEZmVzZpdXIwZHFkRUlBdnZ5akdjblNrdUVMWlFDVzBVYUE4?=
 =?utf-8?B?RFRBRHY0eTRQYWhoOFJHSmhwK2RsQVI1S1hIbXVrREJNV0JvbitwRmkwQ1pT?=
 =?utf-8?B?R2t2dld6WlVWUVpPdVB5cnVPSEd5bzU3UG9DYWJQdTlUcTlYc1M3Y28raFlW?=
 =?utf-8?B?eE5YSnVRc0lGc0Y5TkxqeVhsZzBGaEtGb0xka2ViSC8yc2szM0FmS29ZZzJU?=
 =?utf-8?B?NmphZThVR3lSUUtMSHIycjQwT2RMRnVzZGJqUnR2SzRLUVBZK0RFREhsYjJN?=
 =?utf-8?B?cHUvR1RmeVBKSDJqRmpRTFdpbDc0U21qZUxCaXk0dkw5ejZVWEdGK0R5SlVW?=
 =?utf-8?B?TEtsZytTRlJPZFNNNE1MZE9SUHZxT0JNSTNUZFpIZ3NtN2Zsd0Z0dEdrbHIr?=
 =?utf-8?B?WUtjMEdZa3NnckFZQ2pHaWRxTWZjMWh6WnpnckJWOHpDaFBvNndMMkRlOVBU?=
 =?utf-8?B?VDV5M1V6TzdMamxtR29Cc2UvY2FXQWJmNkRvWXIyZDgza0MvWXpQSklzV0FG?=
 =?utf-8?B?Q1ZoTzJLb0NLWWV5cUVuSzk4OFNlSHJSQ3pSbmM3clJXTmdsdW9sVXZvK2xz?=
 =?utf-8?B?TVdsYklnWkI0QXFseFRQbFovWDJmUHFIU2F3bTRNaFJDbkEzVVZyZHo3N0Ey?=
 =?utf-8?B?Si84Q3h4akgrWCtnRHc2cUhkVVdhcitYc2pobDNZWWVsQTI5VnRwUE96cjl4?=
 =?utf-8?B?dlJiRGFiSks4eTczSFBvRGpweHRzUktOVGdtYmp3dHZTaDJlclo1allGYVds?=
 =?utf-8?B?OWtiK29zTjNvK1JaNzZyTW1rVEZ6eUprT0Uramd4eGRmWEthWG5zN3FDK1NV?=
 =?utf-8?B?SWxCTlhSOG96SVc5SzhRcGxvT0hiaG5sZUs4cTVINFl6TjdwVkJrMk1URjZx?=
 =?utf-8?B?MEY0MS9NVW1NalVMUHFHOTBXSVZndjFpcHk5ZmFoeWdzbUhYbzE5cUE5NUc5?=
 =?utf-8?B?K1JPb3ptOXk0bnNyRVZCd3JzMmpxQkp6d2VsMmo5SWhhNlZxQ2FXZE5YTkRR?=
 =?utf-8?B?UnEzZklmQ09UTmtTYzJONDA3cEMzUzFXS1E3WXVlVjRjMHhGRi94aEI4QWtI?=
 =?utf-8?B?Z0hhdXp4dWdiWnBzcHRSalM0WW5oYnhzYldHNkEzckdaTEZvb2xEcExMMzRO?=
 =?utf-8?B?QTR2Z2FLSFVUOFBSVTBQbVJuL0lVMG1rWE1jNkk5aDUrK0NhZWlMeXlqMnNv?=
 =?utf-8?B?N3B3dU85dzFESG4vZTRKNmxicENHOU1vRjcyT1lYb1EzMEhCck84Zm9yWURH?=
 =?utf-8?B?Q1dXbWtOQUN0YlgxTC9yMFM2dnFscGw5S1ZZdG5WQXhWN2RBc1VUUTRrMVFp?=
 =?utf-8?B?WlZ3STc0SUMxcm15ZExXdkJQZkRpZHpMOXNHN0N0YXAyYTdyY3ZTZVZEYitO?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f422b39-ff14-48e9-497a-08dca0e88526
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 13:59:30.8044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g+MQzjlm/Vsc14T/owgSW90TDRSPO3+jhmqFVeMW/OqwT1Cl0UCe4avTKIiE5Pr+CehqtYtZMmF5KEbUZA4bwuaQBpTnWsBLEpthwYuCPxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6757
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720619984; x=1752155984;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c7kyQpRwr0MXGTf4AYPONdg9yfsDTUJRSClPp69unww=;
 b=DKjJWxle2FK82eoMbK/BwJBf5bjd2XY3K98SUdnh/1k0CJrM6n3vYseP
 y3fVqhpdz1lyIpw2BWeGPF07T+evFWBNn4OA6Ur6MMUdpc6+kpQPBwm81
 DNl37/epzWHGjJIqCdA26yzDYGOTSZV1SWIKhhGXUdtYdsGu/CLFqcmeK
 fRAPH3ag06HQf1M9IbmS6rkgkCv+53rgZ0wQ+KyobOVK/kkqrHBUbjne2
 F3p0LcMB5X8hcljx/RDzyqBYnGiyKBnDfJ+0kb1SI1Wl3UYixOhSMcbHq
 xG8xL5HdFq+406aY0fdAoLC6pkJn/yl6VMg78JbwOsk9g+x1SG2fzvTBX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DKjJWxle
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ice: add Tx hang
 devlink health reporter
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org, joe@perches.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 apw@canonical.com, lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/8/24 14:40, Simon Horman wrote:
> On Wed, Jul 03, 2024 at 08:59:19AM -0400, Mateusz Polchlopek wrote:
>> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>
>> Add Tx hang devlink health reporter, see struct ice_tx_hang_event to see
>> what is reported.
>>
>> Subsequent commits will extend it by more info, for now it dumps
>> descriptors with little metadata.
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> ...
> 
>> +/**
>> + * ice_fmsg_put_ptr - put hex value of pointer into fmsg
>> + *
>> + * @fmsg: devlink fmsg under construction
>> + * @name: name to pass
>> + * @ptr: 64 bit value to print as hex and put into fmsg
>> + */
>> +static void ice_fmsg_put_ptr(struct devlink_fmsg *fmsg, const char *name,
>> +                            void *ptr)
>> +{
>> +       char buf[sizeof(ptr) * 3];
>> +
>> +       sprintf(buf, "%p", ptr);
>> +       devlink_fmsg_put(fmsg, name, buf);
>> +}
> 
> ...
> 
>> +static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
>> +				     struct devlink_fmsg *fmsg, void *priv_ctx,
>> +				     struct netlink_ext_ack *extack)
>> +{
>> +	struct ice_tx_hang_event *event = priv_ctx;
>> +
>> +	devlink_fmsg_obj_nest_start(fmsg);
>> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
>> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, intr);
>> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, vsi_num);
>> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, queue);
>> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_clean);
>> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_use);
>> +	devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
>> +	ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
>> +	ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)event->tx_ring->dma);
> 
> As reported by the kernel test robot, GCC 13 complains about this cast:
> 
>    .../devlink_health.c: In function 'ice_tx_hang_reporter_dump':
>    .../devlink_health.c:76:43: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
>       76 |         ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)event->tx_ring->dma);
>          |
> 
> Perhaps a good solution is to add a helper similar to ice_fmsg_put_ptr,
> but which takes a dma_buf_t rather than a void * as it's last argument.

instead of duplicating the function for just one call, I will simply
resolve the warning by yet another cast:
ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)(long)event->tx_ring->dma);
					  ^^^^^^   // cast to long added
> 
>> +	devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
>> +				     size_mul(event->tx_ring->count,
>> +					      sizeof(struct ice_tx_desc)));

Here I would drop size_mul(), as any wrong ::count value could easily
extent the dump past tx_ring memory, resulting in attempt at reading
past their page
And we are not really protecting against "too big" fmsg, as it is capped
anyway to 4-8K.

Perhaps fmsg-put also ::count to aid spotting such cases, but only if it
is not the default 256.

--
not a change request, just digression:
it would be nice for devlink_fmsg_binary_pair_put() to compress
"repeated same value", like hexdump(1) does.

>> +	devlink_fmsg_obj_nest_end(fmsg);
>> +
>> +	return 0;
>> +}

