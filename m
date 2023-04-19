Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6923D6E7E7F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 17:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E00E660C14;
	Wed, 19 Apr 2023 15:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E00E660C14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681918808;
	bh=CSioy0EtG1/jwEq38Zwrg3zRsMO3TxEtEq+5K5ETNT4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MsWXsZVoSRvYLbsIA0i07Bsv0jMVIwTg32YrsfC4r72/ZX5kug/g1VH5Ww1iUuOte
	 cKxKmhoQCMhg5utAvwVWFHqO2IPKFcdreRdGBIG/nR+NNLyAeitdZ8QUMJFvHEJ/Cd
	 8h2Qmluw7fJziQGO1q52oy48ZnnClK7tqw9Cxg1uQnWA7gYdPFVYwX2glXk1ot/Zy0
	 spwnB9os7muML0d7QTHO47//ytQn1XHFs57JXRgtGbRtXAKfQ/vMgvMJuuX1vmme9i
	 Kinzs6/WggbhBv7+6qazmnMDzrzdn4Jrl/Q+CXGR+IPFR4bUtEndbjzQbSUXxa8y7G
	 AO3dGXqqPRrNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAHfwP4ubXs6; Wed, 19 Apr 2023 15:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9A14616BD;
	Wed, 19 Apr 2023 15:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9A14616BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1297B1C439B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D939383C59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D939383C59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4EzsEeVnqXgl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 15:40:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEB2981F0F
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DEB2981F0F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 15:40:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="325096464"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325096464"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="641816943"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="641816943"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 19 Apr 2023 08:40:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 08:40:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 08:40:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 08:40:00 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 08:40:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCu6lnozzRJEU06qauf6NBP0mCXMjKRJXBnOJ7l08bMObkii+c4Pq6uv7gJQibsegQ8/gOp2qqu4LeGjnHYzpWeFMaSTuqDz+tl1oJqhRjT8WMP3PdmLouOjCW4SENtf0gEgzyDIpw7/qFYvUMhh/qlezjPj78zSrM4A1Wnw8tnSjC5DuwXRdw0XE1b00GmlLwkFHdnPsVpYVm8E51krsVQsilB0gnNXnK7jyASfnhh9GNypZNCc3e86WhM/aQmree1EG6AYhk5j6Pvsf+gFWhtlhQLlUNyTXgykWQKMLQMIS0mKjYbYjGL3gFAPHMH1eMKTKDl2dsaDpMN9URM0FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LUCnbvFmliXg8ddJQUYUdE6D4NLqACU+4tXQfuTTkn0=;
 b=L4FmOwJVYnr86uk3e3DpTI06IX752kLrY/ySo0uLDE/2HZaiLDBGo3eYBbG8kz9q5CfqTlrlc6gKc7VJRUoumjlVdTBE5+0mnp9PBqjL8YfQ8/oUM5eCZ0714y96BIDyxOLJyYSKSAZOqpvct4SYzhctfFv2aeoCoMbcy+DrcASF/I0TloKnILa6mpdZFnyjxZF2oiik5cMxzBAMaelbZaSUzsdtsQurPtsNvvJLhpAOfEXj0nma5ZnOc1QztCiYnHqF1Fx0mkA3JEGziaasb7Rt2hPxjD1DJZ12nooL8bXtM7SOM+7xBSigBLER+t4arrh00P79siPu7JxvHK+OCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 15:39:58 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6319.020; Wed, 19 Apr 2023
 15:39:58 +0000
Message-ID: <10045539-91eb-cdb1-0499-1c478d87870e@intel.com>
Date: Wed, 19 Apr 2023 17:38:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-6-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230417093412.12161-6-wojciech.drewek@intel.com>
X-ClientProxiedBy: AS4P189CA0026.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::13) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CO1PR11MB4994:EE_
X-MS-Office365-Filtering-Correlation-Id: 780a195f-f278-4f84-43e3-08db40ec548f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dNP7P1SuRmLhpTnYxCEvv3D4P5sD5GCAHGJ0NYLzfVlynWZpnf0SpU4XUn8oZNp47eCLpq9Dnfn64sQuYJf5dpx8wX4fYpq9VmMM40pEy/G5IsOOjb8Gnxc+xC79JGeOyKgXnrqUmYHIlabuuKFXYhvawjAb5HDdica8wnN047zDJCTpEg6CVpzgLeXNmdHnAVOdfrV4aQRgfFZseNt1ggjwl+a+PD1/diOR5x0/sUJwKpLnCnC19TiBIOQRLZH8nXo7KlQCUk6pFf+zEhqTNW17DtlaseKSv9VinnSK+uhrXgciyHoeTmnX+56Rg5nlpe8AQcm7MR5BSu2Zm6zk474kb7zuGjcxSJFYbr6xOqChDZyrW32mKyW8mimYN3c+Qd/mC8j8UhDJco5KfpSQEGooQXSWZOm88S9XQieKty3DCFQeCd2imQs8RD0j5nuyyPBJGOio4LVymwGvhPtxXY8ZqKUqtpHYoJ/jlFXQDQFP7StmQBO8W8zwtROjzosirFJBBSNokWl+uNzUFgVkKpi7Z8u4plFmS7wlQ7voiXVpWzqRf8sZ01IcT3y35XMkJfLyzrqfEaBqxjLvFSt96d+OKJXLSpzIKlrY9cs2I0X+/hYfstaMq4Mna+7meyJJBUPztWgI9p8/7cW9q0BPNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(376002)(136003)(366004)(451199021)(36756003)(2906002)(8936002)(5660300002)(8676002)(41300700001)(6862004)(86362001)(31696002)(38100700002)(31686004)(478600001)(37006003)(2616005)(316002)(26005)(6506007)(6512007)(6636002)(186003)(6666004)(6486002)(4326008)(66476007)(66556008)(66946007)(83380400001)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEJkaEpNMlJ3NU85cEFrSEVpR2hOMm44WGFtWnVpT3Myc1JOTzBBNFB2ZEJU?=
 =?utf-8?B?R3lEWDZhZC94NE1KdjVuaTNHeWkycHJqdHdvNDhRaE9hejZ2QS82T3BXb04x?=
 =?utf-8?B?TndoLy9odmdFNEpDWHQrSVFWOWg3U1JxbFVvYWorbXh3NTMrN05HRFZsMG5S?=
 =?utf-8?B?dGlUR0wwSDBmUzFxOXE2QVZnZ3hkTURBMi9ZVFNGNHpHOVNpZGRmWFR3QUVk?=
 =?utf-8?B?S0FRcE1NeU9KM1IyWDI1TG56ZjdEV2dGdzViM09CbFNhWU5OeUpDYkV5a3Zy?=
 =?utf-8?B?azNnTzdxU3Q2bzFNUWdnQjVleVpZWUh4ZWZNbEpnK1lKQVVqRkhvb1R4SU1y?=
 =?utf-8?B?WW4wN3JyNGsxVGw5TmxtYkh5YmJpZ3hrKzllbHpmTWs2TjhURnlXdUgwQjlK?=
 =?utf-8?B?aWMwV3BxSlJ5RHJKRmQzcEhyVkplZGIvbDkrR29rZ1N1SFdRWHRJRzVFVWpz?=
 =?utf-8?B?Q0R0K1RJUW1lbWtiMzV4TDltZnJKaFljYmVvVnZQSmtObVFpSEFGeUFZWHpP?=
 =?utf-8?B?cHNHZlBJZEQ0VlFTLzJ4WmltdlVLNXNjdm1DNURiTlppUktjRDV2RmNTTk5j?=
 =?utf-8?B?VzJwRkZiYmZtVEZhWXNEQy9HRURVdTR3aUEvTzA5YmR5dXMxam8xajlMWE0x?=
 =?utf-8?B?ZDdyVVBGd3UxNVFTcUt2K0VNU0c2ZXI4R2VqRndJaDNtU3RwQTJsNEt2Sk83?=
 =?utf-8?B?bXlUZnphZVlxNUJ1UkM5c1V5c0ZqVFlwMmsxOTBvM3ZWMWlNaEY3NU9pY0VY?=
 =?utf-8?B?R0ZDVU1OZWxCMWlhQ0U0aERyWjhwQlhWSmMwQUZ0YzI0elpHR0RXRWsyQXZq?=
 =?utf-8?B?Y0xORW52L0V5aElyeFM0bXE5OGxVWmRQYWJXSDZSNDNnMUZPZnM3QTB1T1hL?=
 =?utf-8?B?WDVnMnRzWkQwQU94WUF3OW5sUkxvejg1SldTVlIycFZYWTlKQUdrTmZtZ1Fk?=
 =?utf-8?B?RjZpTWZ6SGZkUUlybVg1Ti9VclFtRDlzMUxSU1ZPV1JpOW9jTkN1MmEzR3Vl?=
 =?utf-8?B?NFdNTjV6eUlKNVMrazNJdzBaM3VmYjI2K3l5a2VLVjB1K2Q3L2VyTldodVBR?=
 =?utf-8?B?WVplNUR4YlZueUFDTktJTlZXQjByYk1MK2tvQkMxR0FtUkJ2eFFjeEpPSUI0?=
 =?utf-8?B?UHd1S0RYeENKQ3ljaU1mbGdjQlpVOGRNajRyVGJUSWlIWVFpQXh5UXNtakpZ?=
 =?utf-8?B?SXJmazVCMWNNSGtaOFFJL2ZMenNsdjBUSWlIdVI1NUwvSkkzblVQRDV1eENv?=
 =?utf-8?B?ck1adWc3VW5jcVhMd2k0WER3M0ZOc1N3UjhvRlFOM2ZtZHBGNTlXZElrK3lX?=
 =?utf-8?B?a0J6cndFcUZOQng0c3ZIK0pRUU9ST0pnZDlIRzBEQkNiOHBUMmdYbmpjKy9p?=
 =?utf-8?B?TWlWRUYzeTVOS1VoSC91b0VuZHp6YlVhVWxmZkRjV3RBV2tUclNId25zZlN0?=
 =?utf-8?B?dHQ4djM0MnllMXZOMGhhd3pVUysycGl2TEgyQWZmY0Y3dnRVYVh2N1g5ZXdT?=
 =?utf-8?B?VjlmSU12cFIwUTJYWFIvaDdxRTRVVnAzT3JYeHlWNHM4YmlLR2hoY1dHNmMr?=
 =?utf-8?B?WDU4ZG9sWndRSkJpd3Z4M1FIYVQ1NGViYi9Gc21FOTZhVDV1Y3VEOVRoTE5p?=
 =?utf-8?B?OFhiQStrNjNUZWFiUDdLRkRablkwQVNRd0xRU0ZrTC9TeGNEbFdLTmdFM1A1?=
 =?utf-8?B?WEl6WTdpRWF1NlBERUVzTk5CSkhnSy9xSjNpakJKaHNSQjRhK0w2WStrVzUz?=
 =?utf-8?B?VEtFQkpiSGx2bFpxbTgrek1VR2ZYcDY5SktFZjVqRWZQWjFqVVdtNWk0Mk9F?=
 =?utf-8?B?YUdUVkJWY2d0eHN2QnJOc1l1UmtVbDcySFNLMTExWVdENlllaUJxOGZhSm9j?=
 =?utf-8?B?UWMzaXMzN0p5T0hwRThsQzIzQUMyam9TdEZ3Y3g3ZjlWMDlmWkI1Y0VvdmNa?=
 =?utf-8?B?b25LU3NoNi9BL216dXRrVHh1Y3VwQVJCOUU3eEFRT3NveHRDTkN0Y2w3Ty9S?=
 =?utf-8?B?cjJWWG9ocEhkcThJSGZ2VzJaZjduWU5NREwvSTJwNjE5TmxUKythRWo1Yzdk?=
 =?utf-8?B?MnFJdmcrUXh5M2JyVEhLQzRjQVJPWU1hbEJPOEtIUWNRSzR5MDBXUkd6bHJ5?=
 =?utf-8?B?Y3paY0F0ZzRsK2dpNWE1WDJOUEI5N2xyYVh3QTZjcVhCYmhhd0pXZHpXSkRq?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 780a195f-f278-4f84-43e3-08db40ec548f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 15:39:58.0033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPmvnkhhvSLCB9XuC0TDewkdLSuUQl/pS2eUfjEDjU/arVQz134GNbMmt1tlTvqu9KVTAQQ7+hjmW8WA/Cha7vBMAzJ7kFJ0ljtLba3zJ38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918801; x=1713454801;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QE48gwt1fOSgqnOcV8fdHg1dFWrZfN5FibqSGa0vqYk=;
 b=Tp79DeaStQjLrzvYz0yg6GDBK7aqXhbJQU4ChBqHqhKRmrBfpL/NEmp2
 yq8yN5EqMON6MJvPZtmYhgW+4AZ9xpoLwAa5NN8Ceo3U9yg+M7R9Cz7wQ
 VWVjLtNwrdehUlFDtCk7OZioH9p8rDtichWsV8qp0uh8EmLVD6wXBirOL
 /OmcjwaRorHFlgjWwGsNwwxsJHJAxxVEpmLqFLJQRTvhTlBg9KMGRgstS
 ob55fF93Cpt5JrR7/5pIszxHuFazbHYdbSo3vhe/uNdtQchlwG/6RM7MS
 PCovzz8tvHUk3XEdSnx2zP59DQ7/CI4evPBlIItSzggqPqM2V9sE5QvhO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tp79DeaS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/12] ice: Switchdev FDB
 events support
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
Date: Mon, 17 Apr 2023 11:34:05 +0200

> Listen for SWITCHDEV_FDB_{ADD|DEL}_TO_DEVICE events while in switchdev
> mode. Accept these events on both uplink and VF PR ports. Add HW
> rules in newly created workqueue. FDB entries are stored in rhashtable
> for lookup when removing the entry and in the list for cleanup
> purpose. Direction of the HW rule depends on the type of the ports
> on which the FDB event was received:

[...]

> +static int
> +ice_eswitch_br_rule_delete(struct ice_hw *hw, struct ice_rule_query_data *rule)
> +{
> +	int err;
> +
> +	if (!rule)
> +		return -EINVAL;
> +
> +	err = ice_rem_adv_rule_by_id(hw, rule);
> +	kfree(rule);
> +
> +	return err;
> +}
> +
> +static struct ice_rule_query_data *
> +ice_eswitch_br_fwd_rule_create(struct ice_hw *hw, u16 vsi_idx, int port_type,

(no types shorter than u32 on the stack reminder)

> +			       const unsigned char *mac)
> +{
> +	struct ice_adv_rule_info rule_info = { 0 };
> +	struct ice_rule_query_data *rule;
> +	struct ice_adv_lkup_elem *list;
> +	u16 lkups_cnt = 1;

Why have it as variable if it doesn't change? Just embed it into the
ice_add_adv_rule() call and replace kcalloc() with kzalloc().

> +	int err;
> +
> +	rule = kzalloc(sizeof(*rule), GFP_KERNEL);
> +	if (!rule)
> +		return ERR_PTR(-ENOMEM);
> +
> +	list = kcalloc(lkups_cnt, sizeof(*list), GFP_ATOMIC);

[...]

> +	fwd_rule = ice_eswitch_br_fwd_rule_create(hw, vsi_idx, port_type, mac);
> +	if (IS_ERR(fwd_rule)) {
> +		err = PTR_ERR(fwd_rule);
> +		dev_err(dev, "Failed to create eswitch bridge %sgress forward rule, err: %d\n",
> +			port_type == ICE_ESWITCH_BR_UPLINK_PORT ? "e" : "in",
> +			err);
> +		goto err_fwd_rule;

A bit suboptimal. To print errno pointer, you have %pe modifier, so you
can just print err as:

		... forward rule, err: %pe\n", ... : "in", fwd_rule);

Then you don't need @err at all and then below...

> +	}
> +
> +	flow->fwd_rule = fwd_rule;
> +
> +	return flow;
> +
> +err_fwd_rule:
> +	kfree(flow);
> +
> +	return ERR_PTR(err);

...you can return @fwd_rule directly.

> +}
> +
> +static struct ice_esw_br_fdb_entry *
> +ice_eswitch_br_fdb_find(struct ice_esw_br *bridge, const unsigned char *mac,
> +			u16 vid)
> +{
> +	struct ice_esw_br_fdb_data data = {};

(nit: assign `vid` here)

> +
> +	ether_addr_copy(data.addr, mac);
> +	data.vid = vid;
> +	return rhashtable_lookup_fast(&bridge->fdb_ht, &data,
> +				      ice_fdb_ht_params);
> +}

[...]

> +static void
> +ice_eswitch_br_fdb_offload_notify(struct net_device *dev,
> +				  const unsigned char *mac, u16 vid,
> +				  unsigned long val)
> +{
> +	struct switchdev_notifier_fdb_info fdb_info;
> +
> +	fdb_info.addr = mac;
> +	fdb_info.vid = vid;
> +	fdb_info.offloaded = true;

(same for all of them. Declare-time initializer is faster BTW)

> +	call_switchdev_notifiers(val, dev, &fdb_info.info, NULL);
> +}

[...]

> +static int
> +ice_eswitch_br_switchdev_event(struct notifier_block *nb,
> +			       unsigned long event, void *ptr)
> +{
> +	struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
> +	struct ice_esw_br_offloads *br_offloads =
> +		ice_nb_to_br_offloads(nb, switchdev_nb);
> +	struct netlink_ext_ack *extack =
> +		switchdev_notifier_info_to_extack(ptr);

(initialize-later-to-avoid-line-breaks?)

> +	struct switchdev_notifier_fdb_info *fdb_info;
> +	struct switchdev_notifier_info *info = ptr;
> +	struct ice_esw_br_fdb_work *work;
> +	struct net_device *upper;
> +	struct ice_esw_br_port *br_port;

RCT :s

> +
> +	upper = netdev_master_upper_dev_get_rcu(dev);
> +	if (!upper)
> +		return NOTIFY_DONE;
> +
> +	if (!netif_is_bridge_master(upper))
> +		return NOTIFY_DONE;
> +
> +	if (!ice_eswitch_br_is_dev_valid(dev))
> +		return NOTIFY_DONE;
> +
> +	br_port = ice_eswitch_br_netdev_to_port(dev);
> +	if (!br_port)
> +		return NOTIFY_DONE;
> +
> +	switch (event) {
> +	case SWITCHDEV_FDB_ADD_TO_DEVICE:
> +	case SWITCHDEV_FDB_DEL_TO_DEVICE:
> +		fdb_info = container_of(info,
> +					struct switchdev_notifier_fdb_info,

Nit: `typeof(*fdb_info)` is shorter and would probably fit into the prev
line.

> +					info);
> +
> +		work = ice_eswitch_br_fdb_work_alloc(fdb_info, br_port, dev,
> +						     event);

[...]

> +enum {
> +	ICE_ESWITCH_BR_FDB_ADDED_BY_USER = BIT(0),
> +};
> +
> +struct ice_esw_br_fdb_entry {
> +	struct ice_esw_br_fdb_data data;
> +	struct rhash_head ht_node;
> +	struct list_head list;
> +
> +	int flags;

They can't be negative I believe? u32 then? Also I think here's a 4-byte
hole :s But since all of the members here except this one are 8-byte
aligned, you can't avoid it (can be filled anytime later with some other
<= 4-byte field)

> +
> +	struct net_device *dev;
> +	struct ice_esw_br_port *br_port;
> +	struct ice_esw_br_flow *flow;
> +};
[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
