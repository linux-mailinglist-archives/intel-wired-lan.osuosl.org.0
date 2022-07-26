Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2A9581BCA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 23:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AC51607B5;
	Tue, 26 Jul 2022 21:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AC51607B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658872152;
	bh=aO5o9l3TjJzAMg0a99Ykjk6zwYXjtLMXrl2sx8brNuk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NfLUTgsm9OP9Zssgekdekuhk2SgZ233+tsB/PsCsX13P4nNyMsEImCkou1KYBU4BW
	 D2X+RTLOY1LGP5/l/ZEzs2t/9GqttYqrZxm4/moSzdsVFwrlobGVdlr30EqZW+rhxP
	 57MjycyC55mslHGEusOoXgQ3M/k600OaK9OdKYrAe7u+/BFUhI3hGheMgttuKnuYad
	 8X5VGac7TaNUWKD35jUSFjcrjrQk4rUOeX58XKKccZkapK2vQSE4WS+KbtS3PgkMul
	 DnMAX49DqiJtWf+DwehpOCBedUQasBa0/UMhGoyqVYBEQzR1UHR3ejb/wWGtjUkaDB
	 oVsI6zsrXz4YQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ne6KpqmpYVvV; Tue, 26 Jul 2022 21:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BF0860671;
	Tue, 26 Jul 2022 21:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BF0860671
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D115F1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB1A080C89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB1A080C89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wO86do6xsrjZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 21:49:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AAC180BBD
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AAC180BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:49:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="286832134"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="286832134"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 14:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="658883360"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2022 14:44:09 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 14:44:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 14:44:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 14:44:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CRQNghL4JGeA5UcHenWM7M2gD70y+avAvb2ufrKBzpkg15ST4GkDEaNSaNvr1RdZN+0Quw9yDDa7R63qgR0EUb51Te+Q5i1EOaLYWLTtMViMIGYI8+jVgv+Nu+TgVukA0ajqEIa6yToZT1Wv5ZAKqerCGwH8nnamlFwM63OcphMw8vS7lEIxd2muGUzrAQjcxLQTxSFxgS4LvXbwYqCWnW0VXAiKrfEqvYULZUTjr9QCNjJbEUZGYH+bHLrwjlP/turFtxO1PzmOIGGFGDo+csFd+IrW+2vHk/Hg56uuutmqrp2CQcFfm0VjggCjVZDdJo7yiOL8jC/pIQki3mZAmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+qviIm0bQ69Wxa/XV0AQt1/uBRo+ruk4Hu4k9WvuYbk=;
 b=cpKiuhaK1QRQBIucUEFARHrOaLDOw+zQluydJwB6d6wX8QqTIyyKkVmvQUCTkyYC0PH7m8kFxtUzsZlmCCuO2/+XpQ50TOX8edyuvkBz5jyzpv8NdX4ibxQ+GD3S87qT0JHC028gIZvU06EwZoLMNkZyWgezFPy3OSlfjNvxKJ7jI5vYXOA3rx+fot0Qaa/NZUaf6DqfpwXj2Tkk0wIWqgmGmV9WrhN3u+MQQ4Ux0MTECUW6JLhflgox2qPhhaBSrg79cT39fG1X+L0WpL4iXnmwK37kR9IEQK8vQzz/vdzBo7/5zzZUpIsGBSlbIYcIiziMLu7nvsaWZpE+N5/MqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BYAPR11MB3654.namprd11.prod.outlook.com (2603:10b6:a03:b2::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.20; Tue, 26 Jul
 2022 21:44:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 21:44:06 +0000
Message-ID: <f87cf7d6-550b-11aa-6823-dea85ddbfb7c@intel.com>
Date: Tue, 26 Jul 2022 14:44:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220726085007.989536-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220726085007.989536-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7fcdbb78-3b27-42ae-607d-08da6f4ff724
X-MS-TrafficTypeDiagnostic: BYAPR11MB3654:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mBY4JTg8GzcCM6A9bMZMygbrCPAKUH4FZ0GJyz1ctHtrEX1tcwfD5fk/c6L5eXvR7THiNSUn4EIlm9Rht3nwphq+wI3K5gYqx8ts2/qOpFZmYTPOhkh1hXNQZzvAIVTek7vGPKK01IejOCZ51rC4ymj14PhTZLKnk2a535QvtvjN0QEB8eOwJp5nt/ruxcpDGX637ML01QSkZuKt1kxgk4IQ+pIurKX832tr/LoDg9a9qj6FCYmAjbA3j+g8Nuls9MSdF+NZedk192RXWERIpxrDugXaMGc4PGymGwsnBD1e7ewtxi/d56uA0bBSbbrvBUlu6N7x3006Yci9L52Z1YuT8Onc7CRygLjSm29Sa7KZehhji6GDsaJY/1ToMHoFx8KDPP4anbYtnevrW23TWRnuETdcPiLUgS+Zv78+ngLvEXXExYhRGcoJ08FJTzra2ev7CLcN0lqwQlNm0xyMpLORDfVz98DETOLyRLf9IAsesCsvm93CF/9TzWrcs28gS/XhhVhHGXbBuGM2lXgL71EzIE2SpiVo2yZp76Myf14QR2vhFlRstCFSf+NXVcQlVmBjs63Sb9R0YzjhpEjUNp4qtotjMwhIHacv/EqLHVT022gDaMwAsMYJMsUQY+47M9boudEw1LpuOULn6DSe0KeX+B2tiVY9o89r6kPxG4mSKOnBK0bJFdP7ED4r1yXut+FR57YZ+X840ZvdBLVKm1pnLMoH+RM8dwlWsLQHYWy/qIsWE9T2HBL2fbcJucmM+04IQMsX1csC09hPyN5YjDWERuwfIJetTE16NboTSDqiLGUJtzv5ZfJfZReDD/8QOthN6weiAQHo1LgciSziXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(346002)(366004)(136003)(376002)(39860400002)(186003)(107886003)(83380400001)(2616005)(36756003)(38100700002)(2906002)(82960400001)(31696002)(316002)(5660300002)(8676002)(6486002)(4326008)(8936002)(66476007)(66556008)(31686004)(41300700001)(66946007)(478600001)(53546011)(6512007)(6666004)(6506007)(86362001)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OW9WOURWdkJtT2tiUFJXR3VsOG9KRk1QMG9UVW1hWVJoWVhLVHVpSWE0QUZp?=
 =?utf-8?B?d1F2QVN3N2NGTWU2d3JXM1drZVU2M2FYZzNaZTgwRkNWZHorMURvRlp2Rlh1?=
 =?utf-8?B?Q1I5a2dFMENYMEd6SmdCMmI1K3YreTNudnJDTHlRSnlPM2pITkRrSGJNWFhV?=
 =?utf-8?B?SlcwcUV5NDd6ekJGMGlhSDBpYngxY2JqQkMxS0l3RTBPSjYwVG1EakZzRDVF?=
 =?utf-8?B?MHdHNWpXc2UwcFZwL3k4aFI2bjBCRU1qUUhMOVNpS08zNkxNRFFxUWx0ZEJt?=
 =?utf-8?B?SjJiUWgwZDlWSXJ0cmE5WWM5NHl3SnVqNEVZdmpMU3VQR1pwS3JkZ2c3Qkho?=
 =?utf-8?B?SHh3clVhb25DQXlhRGxkc3NEMEp3TnBUL2FiWjhoc3hSbGREK2l3NHNHMXVZ?=
 =?utf-8?B?SzdPdzB0dGhKcVlUWTFiMmFxc3NKaEpqRWFsdFZnaW02RkZQQloyYmJBQ3Rs?=
 =?utf-8?B?N0pzMTI1VG5maVoxNC84SUxQZFpGK3h3MW11TG41VTd2M3RMRnFIdUFYQUxH?=
 =?utf-8?B?OTBxcTZwNk91UG1IZmR4WTVhdWhPaEo2UkY5WURJR2lTM0g5S3JobEJCd2xz?=
 =?utf-8?B?OTh0bFpucG13VEh6QzBzWmp6YnR3bmRqNVQwVHdVemVHYTJGbWI0R1JuWnlZ?=
 =?utf-8?B?NDgzUlA3b3RJc2dzcUlvQ0IvQ0ZtSi9ab2FSNEUzcUJDbmpDYUZieVoySFdo?=
 =?utf-8?B?WlVCV2hSZUd3eFg1bytlNHpzaU1Db1JEZnhZM3NzNzZLSlJPVDRSZ3J0c2ZM?=
 =?utf-8?B?WFZ3N0NnSFdhN2E3TXdHR2FveVNySFc2ZVlRWEg5eEdPdXpFaGxPYjhDeThz?=
 =?utf-8?B?NVlZQzdDcThYdGNvVWIveGZKMFF0d1YvNnZMQXZMYld4UVdlNWk4SEpacXVK?=
 =?utf-8?B?cFE1TUt1Ym9Dd2J4aHFkcUc3bXVZYWJZN0xYcUM2dGJ0YVdQZURTSG40S0FL?=
 =?utf-8?B?cHRINDV2ZkU2aTVmZkkzTm1aTjhyZk1XMC92UStkU05qT1RmVlI4Nk95TUND?=
 =?utf-8?B?NHJONEczNmpEejFvelVDajR6Q1hvcm1TZ0tQVzI3L0J4VFdUTjhncnRJbzNu?=
 =?utf-8?B?R3I0RHJqM2ZkT2wwVUhOblcvbk9XVElCY2FwUDBlVTZpQm5BQTVZV3JPWllx?=
 =?utf-8?B?TFBnbXoxektOTFFIMjhDZXJRU1FCeGdRV2E2UEk4eDNGdlFPWCtNMDM1amJn?=
 =?utf-8?B?RnZjc2RqZy9hWDZjNlJUSE9pMGxmRlJYZyszS3hkOTRnZVdIeCtJTk9ZUXRa?=
 =?utf-8?B?eUhEc1o2VFh3bXNJMXNjWlk2OGFkcC9zMUgwbm9BdkdOOGpXZi9HYkZkRDJT?=
 =?utf-8?B?L21LMEtjSitWalkxMUpxTzlVNndJbHpzaThKbDN3dG0wb3krSXBLWUluRDVn?=
 =?utf-8?B?Nk10NkdQTElZS2N5UEx4bjhvNFMvcXNxVzFjZEoxdVRRNXY2VVNnTlp3Y3k3?=
 =?utf-8?B?bjh3VW9GMlQ4SEVVVlNxMjBOa1F3cWIzcGNyMmZsMWVXREN1Y1duK2Z0SFE4?=
 =?utf-8?B?a3BYQ3hhbkdmYXl2TzhoOHBXV1NVYi9KUUNmNVQyVklDb1BsN0lMTSttdTFI?=
 =?utf-8?B?ejR2RUsyYmxIV0NuSE5MRERrU3p1U0F1cDZ3V3RzQ2dBaitrWStKMndXYWJQ?=
 =?utf-8?B?M2NmL2svby9oc0gra2NpdjkyZTUrRjc5cVBTMkloczRXNXR3T08wZ1pSNmts?=
 =?utf-8?B?ME45dG9EK2lnSVJzR0pkZ0hweHY2aE1ZS2RteVFVSFJVRW5WQkVwcjFBVGZo?=
 =?utf-8?B?bGp6OTVzUVNSTXo0dkhmUlV5YXlCNFVkbmR4SFNqUGY0bWtEd3FDcGtYSkVN?=
 =?utf-8?B?c05BTWNiTU0rQzhLdys3cE5vcG9jdnZqVXBYdDZnOUQ1bTYyVTJiM1NGcTg3?=
 =?utf-8?B?UEJPR0lwUXNQRHJGNlBMYmdRZmNUaHdMNHpwMUlmMkdCbi9sSEhRV0R2TlRJ?=
 =?utf-8?B?ZGJOVUdpRmkwSkFoL01paVBKUHd2R2NWSC9ZeE1yY2pLRGZid2RPQ1B2RHJJ?=
 =?utf-8?B?bmc1NG05ZGFKeHBvTWdZeHNFZUVZUFRLUmJxQm9jNCs2ekZGZHI5MS93ekhM?=
 =?utf-8?B?MEt2L0drenlXTTk0eFhRZVc5Yml3bmx0VVpBUTM5NmxDOXBYV1JKQXJRMllv?=
 =?utf-8?B?VmlDZUljTzVHSldCS0dqMTFqMU8zdFgrRUVSVUIya3lJOVVJa2doQ29sRG9l?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fcdbb78-3b27-42ae-607d-08da6f4ff724
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 21:44:06.7208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uHCK5ZAHN6c/IThfMKftcJiTY8O7q0Tr/3DCS5UplL24tmCUwK8Af0eNKBRwHHnYjAVdGHAmAKo3HbN4z0HnjBWegG/XNuUOTlqJqWinrIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3654
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658872144; x=1690408144;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1QoaEdHj+Sc1E8aCIDfaTQG7MTWB0uCwoOSjJhzD4Z8=;
 b=lGtjhMGhY72I5d7PEk0qcCfdrIryQR5AXdSSNgB7CsVuZT/mDxXjw8vy
 jmNTd0CvWqx7sAftr+vJoku1E5Uy/pmfAnlytx9o+FcLLWpYOdwTWh7r0
 texSo1WRR6W9BF3B9GPXcvOLu37PuJGly7B/QnrbZSmqnLOIWcpucqhKi
 1UrHHfDhmOGQELcBVx+eiyH3oDGkr5rJx+G39JfruIt8bHWzeYhEGmwzp
 emrBpUmzAcmL4jGDy4HdXvDtSAo5nCS1HzAwctcSRP+IolF///4/oLuFe
 zc9DxCaiJz0J3UlFChObXu6ZHXCVqXmJSANIUAyexKT8ubrdAa8qxebJY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lGtjhMGh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Remove ucast_shared
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA3LzI2LzIwMjIgMTo1MCBBTSwgSmVkcnplaiBKYWdpZWxza2kgd3JvdGU6Cj4gRnJvbTog
U3lsd2VzdGVyIER6aWVkeml1Y2ggPHN5bHdlc3RlcnguZHppZWR6aXVjaEBpbnRlbC5jb20+Cj4g
Cj4gUmVtb3ZlIHVjYXN0X3NoYXJlZCBhcyBpdCB3YXMgYWx3YXlzIHRydWUuIFJlbW92ZSB0aGUg
Y29kZSBkZXBlbmRpbmcgb24KPiB1Y2FzdF9zaGFyZWQgZnJvbSBpY2VfYWRkX21hYyBhbmQgaWNl
X3JlbW92ZV9tYWMuCj4gUmVtb3ZlIGljZV9maW5kX3VjYXN0X3J1bGVfZW50cnkgZnVuY3Rpb24g
YXMgaXQgd2FzIG9ubHkKPiB1c2VkIHdoZW4gdWNhc3Rfc2hhcmVkIHdhcyBzZXQgdG8gZmFsc2Uu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIER6aWVkeml1Y2ggPHN5bHdlc3RlcnguZHpp
ZWR6aXVjaEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGpl
ZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgfCAgIDIgLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9zd2l0Y2guYyB8IDE2NCArLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eXBlLmggICB8ICAgMiAtCj4gICAzIGZp
bGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTYzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gaW5kZXggNDcwNDZjMGJjOTNl
Li5kYTIxMmZiYmQ5ZDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X21haW4uYwo+IEBAIC00NzQ4LDggKzQ3NDgsNiBAQCBpY2VfcHJvYmUoc3RydWN0IHBjaV9kZXYg
KnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkIF9fYWx3YXlzX3VudXNlZCAqZW50KQo+
ICAgCQlpY2Vfc2V0X3NhZmVfbW9kZV9jYXBzKGh3KTsKPiAgIAl9Cj4gICAKPiAtCWh3LT51Y2Fz
dF9zaGFyZWQgPSB0cnVlOwo+IC0KPiAgIAllcnIgPSBpY2VfaW5pdF9wZihwZik7Cj4gICAJaWYg
KGVycikgewo+ICAgCQlkZXZfZXJyKGRldiwgImljZV9pbml0X3BmIGZhaWxlZDogJWRcbiIsIGVy
cik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dp
dGNoLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jCj4gaW5k
ZXggNjZkMWUxNzg5NmE2Li5iN2U5YjI3MGI2YTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMKPiBAQCAtMzI5NSwzMSArMzI5NSwxNyBAQCBib29s
IGljZV92bGFuX2ZsdHJfZXhpc3Qoc3RydWN0IGljZV9odyAqaHcsIHUxNiB2bGFuX2lkLCB1MTYg
dnNpX2hhbmRsZSkKPiAgICAqIGljZV9hZGRfbWFjIC0gQWRkIGEgTUFDIGFkZHJlc3MgYmFzZWQg
ZmlsdGVyIHJ1bGUKPiAgICAqIEBodzogcG9pbnRlciB0byB0aGUgaGFyZHdhcmUgc3RydWN0dXJl
Cj4gICAgKiBAbV9saXN0OiBsaXN0IG9mIE1BQyBhZGRyZXNzZXMgYW5kIGZvcndhcmRpbmcgaW5m
b3JtYXRpb24KPiAtICoKPiAtICogSU1QT1JUQU5UOiBXaGVuIHRoZSB1Y2FzdF9zaGFyZWQgZmxh
ZyBpcyBzZXQgdG8gZmFsc2UgYW5kIG1fbGlzdCBoYXMKPiAtICogbXVsdGlwbGUgdW5pY2FzdCBh
ZGRyZXNzZXMsIHRoZSBmdW5jdGlvbiBhc3N1bWVzIHRoYXQgYWxsIHRoZQo+IC0gKiBhZGRyZXNz
ZXMgYXJlIHVuaXF1ZSBpbiBhIGdpdmVuIGFkZF9tYWMgY2FsbC4gSXQgZG9lc24ndAo+IC0gKiBj
aGVjayBmb3IgZHVwbGljYXRlcyBpbiB0aGlzIGNhc2UsIHJlbW92aW5nIGR1cGxpY2F0ZXMgZnJv
bSBhIGdpdmVuCj4gLSAqIGxpc3Qgc2hvdWxkIGJlIHRha2VuIGNhcmUgb2YgaW4gdGhlIGNhbGxl
ciBvZiB0aGlzIGZ1bmN0aW9uLgo+ICAgICovCj4gICBpbnQgaWNlX2FkZF9tYWMoc3RydWN0IGlj
ZV9odyAqaHcsIHN0cnVjdCBsaXN0X2hlYWQgKm1fbGlzdCkKPiAgIHsKPiAtCXN0cnVjdCBpY2Vf
c3dfcnVsZV9sa3VwX3J4X3R4ICpzX3J1bGUsICpyX2l0ZXI7Cj4gICAJc3RydWN0IGljZV9mbHRy
X2xpc3RfZW50cnkgKm1fbGlzdF9pdHI7Cj4gLQlzdHJ1Y3QgbGlzdF9oZWFkICpydWxlX2hlYWQ7
Cj4gLQl1MTYgdG90YWxfZWxlbV9sZWZ0LCBzX3J1bGVfc2l6ZTsKPiAgIAlzdHJ1Y3QgaWNlX3N3
aXRjaF9pbmZvICpzdzsKCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dp
dGNoLmM6IEluIGZ1bmN0aW9uIOKAmGljZV9hZGRfbWFj4oCZOgouLi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jOjMzMDI6MjY6IHdhcm5pbmc6IAp2YXJpYWJsZSDi
gJhzd+KAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQogICBz
dHJ1Y3QgaWNlX3N3aXRjaF9pbmZvICpzdzsKICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4K
Cj4gLQlzdHJ1Y3QgbXV0ZXggKnJ1bGVfbG9jazsgLyogTG9jayB0byBwcm90ZWN0IGZpbHRlciBy
dWxlIGxpc3QgKi8KPiAtCXUxNiBudW1fdW5pY2FzdCA9IDA7Cj4gICAJaW50IHN0YXR1cyA9IDA7
Cj4gLQl1OCBlbGVtX3NlbnQ7Cj4gICAKPiAgIAlpZiAoIW1fbGlzdCB8fCAhaHcpCj4gICAJCXJl
dHVybiAtRUlOVkFMOwo+ICAgCj4gLQlzX3J1bGUgPSBOVUxMOwo+ICAgCXN3ID0gaHctPnN3aXRj
aF9pbmZvOwo+IC0JcnVsZV9sb2NrID0gJnN3LT5yZWNwX2xpc3RbSUNFX1NXX0xLVVBfTUFDXS5m
aWx0X3J1bGVfbG9jazsKPiAgIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KG1fbGlzdF9pdHIsIG1fbGlz
dCwgbGlzdF9lbnRyeSkgewo+ICAgCQl1OCAqYWRkID0gJm1fbGlzdF9pdHItPmZsdHJfaW5mby5s
X2RhdGEubWFjLm1hY19hZGRyWzBdOwo+ICAgCQl1MTYgdnNpX2hhbmRsZTsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
