Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97AE77C36E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 00:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DB52408C0;
	Mon, 14 Aug 2023 22:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DB52408C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692052139;
	bh=Y/309p/twqGcCyMLm5v7p3pGG7gAB7z6FOfjNfZZc2Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DiygdS5ufzsNhLL2JVoKZk5JmD7KRNMBQEUqcBcKJN1C9vNJZ/KNo/mPZCVHwpiAd
	 CKw4CxuqIin7JHrVqWj7++s6QApfyC0Xs7jvzF7E7bIbmPpIrTAyeIUCL0K7JzFkUs
	 EobuJgdwO0Ufxqba0Z+gLYQbaFx5FTAh1FuD4h/zhaNCE9jTqm7t2+FTqCG0oWgU7l
	 Q00wfbiWLrs3cnEqMxIaZ9Uxype0ShXNDcaFyZyJRmx91VlMqTajHTkNeyvcpqPp1S
	 DVaE3xBNjMo5qfTVp3WmfHHGopZlxCdWbejLW3KEtUiinU2zgrN3esO2mKP9b9AeuU
	 xZqTsukezLg+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s_6VSNXpLYmR; Mon, 14 Aug 2023 22:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A336C40223;
	Mon, 14 Aug 2023 22:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A336C40223
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FAD01BF36C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15E1580E41
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15E1580E41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xcz_oBWro_P4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Aug 2023 22:28:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CBF0380E13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBF0380E13
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="438487588"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="438487588"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 15:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="768605151"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="768605151"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 14 Aug 2023 15:28:51 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 15:28:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 15:28:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 15:28:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K77SjZ17TaOtbX9cPkDxiuQzTwlmztLqcFiaYKTVhBS6qvKRAy/U8JuyEVOGQa5fCzLOD+OvbABxDpoP1BQpmRWuAJUsn1H31iakCd6Ox/TxK201zwMyuhJyJn5hmEYQfGLG5qVckPybtY/qVGUGmvmLn39txOewtmPqkQw5mV9P0ZljzqPf4+3XcuDoFdIjd9L6ZrleM5TPw/hyruUyp3zK+g5Viv5SpoCk7sKzS0A0IRyMGUHM03X8sKEABVxUMIG4CBs9vW+Ihk9i7/vVmb5bnw629JKdA3/hYtHQd3B6SjVUiuVmjvCktH2Qjtx4hBewt0kONJlyMWfBUjr6MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9gavBmOnsuOl7iBUp+z1X5rnO4+Sgi4tWCTmt+BJfg=;
 b=mzAwEdkWFb0oRrrLj1CczCnqZkGQ9ulAF79pQY/5juU/aFjketktCmPsj2VY/zUb5NVU9fu33ThdIPFHufJPGrKrxoK/c/hQ8qI+B3VXDv8qvSueiWWmDqtjN6Q5KmX80TWyxVN+XijSfkVs1vZq5TyUSkEcPzttQMErZPY/cS+D8LWNDHrCs0aSzh7iTY/a04gNQxXHHuIpc32/vaRfXM62eCEIScn0yV4+EbnTDg503XBAwj6xSM0cN6nmeerX4CcJ3u8wkanoTHoeWek9cPVkhUjJTeSdImBGiJERiMEaKxAyMGI2kPOgGn7oKZGwzbCbKkk9H+3DS28/L6EXUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN7PR11MB7065.namprd11.prod.outlook.com (2603:10b6:806:298::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 22:28:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 22:28:48 +0000
Message-ID: <56dd5b1e-8991-c401-f888-236c50bd8bae@intel.com>
Date: Mon, 14 Aug 2023 15:28:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230811124648.3368659-1-jan.sokolowski@intel.com>
 <20230811124648.3368659-2-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230811124648.3368659-2-jan.sokolowski@intel.com>
X-ClientProxiedBy: MW4PR04CA0037.namprd04.prod.outlook.com
 (2603:10b6:303:6a::12) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SN7PR11MB7065:EE_
X-MS-Office365-Filtering-Correlation-Id: e0c45544-5db0-4e24-5b2c-08db9d15d43f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3+gM1jM+aeg3BuziIweIfrHj3DRJ1eaJQJHCWeOPq+7APjeA2vOhNO0dS+HZwT6NltesQzCFXMxyNtE9GJ57jLcmHvBwp3xuqOTDBeU2uHS21EgyWwqnYbrmhpKo/FMFKA/El0djHbRZ2nxBDcevjVp4uB/nM4D6ezjd/HKvgKwELw97mZY51VLT2+8o4beuUA2wEtHhbzVX5yOP69fYwcJRHkPo9YX/IciIxgL7z6G74pScqhppGH9EVpaqf+j3switjc5oadLHwLjamRMCaDjoXrafReV2AJgmRmpCI/8a5mTBDPfjSQ45DTUVJBg3T/5jB4zKuKygOkCCEe1gGWXit4eGbXG0Hxsn9eV9dguIsJz86nZt2wNJ4j7ySepKHvXk4pLd0vDVF47Y3eX1jIxff1GeBsxO6ucCF73aEynvdyyuuEBYGYKiU6CA4EBXKjwqCw/s8quf5exHFoZGbYormRKzRH8t8S7FxzrK/GEps+kMQDinBaBqvazEcMQTp2QxDOAukoA39bqBO5piWPLCZ4zI7rD+7YhN/2r4aveVrD87LKQ+GJl5oknIFbQyUX6DpacGoqsG+Qc2HuwEtQyz2+HK2tISENMJcLPPK+zXRBBtXuugU/X3Or/ug6Q8j5Y5I/WnmGtihtCxOtnqZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(366004)(136003)(396003)(186006)(1800799006)(451199021)(83380400001)(36756003)(31686004)(31696002)(86362001)(41300700001)(478600001)(66946007)(66476007)(6512007)(66556008)(316002)(8676002)(5660300002)(8936002)(82960400001)(38100700002)(2616005)(26005)(6486002)(6666004)(2906002)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U08yWlZrYXp0WWVBMk1iT1BZWjJ4UXBuUjdsZzlCS2lzY255d1YwRGU0UDk2?=
 =?utf-8?B?S2dzTVVZT0l0UnkvNC9MRVlaSFdvcFRTT3dvQTI0UFpaT3FzTVR0SE1mUnpt?=
 =?utf-8?B?bmpqYnFyd1J2M3AzTjh3L0RLY0VBbnJWaWVjTDJYVTlxeS96dHplRjZQbUxR?=
 =?utf-8?B?NjYwUHVpVGxrU1grM2R4cUpMWkJ6MXBKMWtlY0hyeGMySzU3TnhZTFBJWFlX?=
 =?utf-8?B?QzllQlA1S0FvM1NXNkxPOG9XcGorb2tJM0d3THlYK0xCbVI4Y0VhQm5PMHlQ?=
 =?utf-8?B?YUZaRkkyWEptcUY3emNqYS9PY2RyNCt5SXpHWVdaUGYxRytCN0NQcHhmOWJW?=
 =?utf-8?B?NWZvSHVTd1NnWWZVS3UxdFdZMlZ5Tnp2aFVsT2Y4aHMyMzl5Q252c1IwS3px?=
 =?utf-8?B?S2ttbkVJNlJHdHZZbmpJaWxrUEpkY2o3cFB2VHB4SExLRnhzM3FtRWdwS0Vu?=
 =?utf-8?B?M2Q5WkJwcUE4Nm9xdldJSmowNTdmSFlra2orNldrbDMvSnRzS1lJQysxQXI0?=
 =?utf-8?B?ZXFBTVM3b2p1QVFiZEl1ZWVpMXlXbWxDTm1KcTJoeEVZOFBJcm5SNWsxN3pk?=
 =?utf-8?B?UmhUYkpBZDc2aEptVEpUTVgxNUtxQ2dVTkw0ekV2ZE50U0ZnNVNDcFhHblhy?=
 =?utf-8?B?RDhZOXh4NmV4cW1UMmlHQmtRUEc4WXljNXhNZEQwYVFNR0RFZWk1VDQ1NUg0?=
 =?utf-8?B?Y0QvL1VybEovWXF2Ky8xY1QrVHpINGgrdDcwUmtFSWkvY3YyQWJTTjdmUUlu?=
 =?utf-8?B?M053NmNLd1J4aW5hUWdRa1JTNGQ3bFhUcnhyVXhDSHZKRmE0SW9Mb0c1TzA5?=
 =?utf-8?B?amZzcXZ3RlBoQ0tDM1pkMDNSV3lwS1hsUGVyY3ljdmYvRmVtaUptNC9PNnZL?=
 =?utf-8?B?SnA4ZjVNS0VOZlJKc1grZFVJUG5pY0lRU3hENEo1L01VbGRQNWRMOXJSRXVU?=
 =?utf-8?B?TG9QdExIc2VrN1Q0VFp1NGRFUXRKMmM0ejdPTW52VFVQRzZibDdKUlR0QmUw?=
 =?utf-8?B?Q2hYVXZHeU5XMElwOWVXVVVNSThtMk0vTXhQQi9CSG12TjcwcGxaaVpkSWUw?=
 =?utf-8?B?VURTc1hSZ3ByMUNCb1RDZWE4dE9vMnRsL1E4VUoxazcxcmNkcmtKWTlMdzh5?=
 =?utf-8?B?NDdmSXRvb290cVZ6STRqSEhhc043ai9BV3NIV2R4cXArVVdTbXh1aGpqNDFR?=
 =?utf-8?B?Z0M1ZWZLQXpFc25CN0lWMVkydGgvZWFhQ0x4NzRXM2ZPM1ZDKzV4OFlCMk56?=
 =?utf-8?B?U2hGN203dlJjZjJrMTV3RU9ObXl1QzZSOHQxeGkrOVRyRFJXTXNYcGs2Q0Fk?=
 =?utf-8?B?MzhQTzA3OEJmQlFjTTlVR2ROcHlFNnR2bW44QndaalYvYUhXMFNIdTl3NUJn?=
 =?utf-8?B?UjdHSE9XZWQwWXBjdnkrR1YwMXpYWHhETjZUTEtJdjNiRklJT2VJQ1grMUt5?=
 =?utf-8?B?TFptdUdhaG8vK0traUxHTkRUL2hkVkc3WHBKb0hhUjhHcnlsVXlUMmExTEc5?=
 =?utf-8?B?THZNL1ZCa3RSdU0wZ1FpRDBwbmExSDd6UExQWFJMK3JqTEZ6ZlRSTGdlRjB1?=
 =?utf-8?B?UXhjenk0NlA1S1gyYkxGM0RjZmVCd0MyR2NyL0tFcTRxWGFxTUc3aDYxM0ow?=
 =?utf-8?B?UUdmNUs0bGhUTG5ZYWEzZ3dhRTBsSzFQZkpVWWNXV2puWmo5d3RIMjF6K3hS?=
 =?utf-8?B?aU1vM3JLVEdXaVd5ODJ5d3luVXZwV1lDREJlSXo3RWFQYnV3aTNSZysyZWFh?=
 =?utf-8?B?NHhrcHFnaW1sUG9SME13YXBPVDYyL0FwaGFsQnhZdmRkV3d4d21HMnJNbGNB?=
 =?utf-8?B?bEZNbG1qb2FLMHdsUEtiYXBDQXJzQTZWOTk3ZXozMmYrck1NZ29aU2RoZ0h3?=
 =?utf-8?B?V2I5SnNVdW9hY0lsZWg3Zm1BT24wcjg2TGdUYTBPaXZoSXg4ZXpFbnZDY3pR?=
 =?utf-8?B?M25EYjlHNGdiMEMxRG1sTUtTckVjUHJCYmM4L1hBczNkMXZMWnRFaGdBbGVw?=
 =?utf-8?B?YXBGMzYzdUJETVNIL0F6M2w5UUdZcDBmSE1JRWNlQVVMYUdKazg2c1RsWm91?=
 =?utf-8?B?dG9tMXlTeExTSU10Wi9NejZHK0hUWURuZ3g5aFNXOEY0QkFzR3gxZWFLQ2My?=
 =?utf-8?B?UC9yem1TaTdQOVRFSW1jQTJBRW42aFBjT3FHc1R0SFIxWTI3dGVwOUt3TnFL?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0c45544-5db0-4e24-5b2c-08db9d15d43f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 22:28:48.6010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f72u/a+ftR4V3mYfkuENBWxUVDXvsJFNvs6kPnGdFVIEmomi+fpU3Bk0H9HCeLhTUryH/HiHQ7hMAA47Brb/iB/VXWiUibUdnGknHhRlnv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7065
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692052131; x=1723588131;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8tt3BJpVZSjQWPk0zYpqgpwU88j685L38piZNsby55s=;
 b=UOd3UGO8euVBjkTjQtBiyW1743qBVR/gqJ5hVRg5mE1VTjTbQKwrbfQt
 bQ/qMld1n+pJVypFzPkJ1/UxJC+095vWOmPVAw/8x6qGveIHM+avCaFwD
 dcuXvkcixVUTW0h8oqZGPfDW0ChTO+njn1mRz2g2gr4URlVdjK+cOazBS
 qStKLYX6sWqhjabNKNdnio3ybwpayaxKMrI5a10LdBn88K5TAZbW61BYY
 jBGF4UXSrJucJzTl0kQYvd3V/i+T4kxIgtbGnaOwjMfXtm6Fq6O8Secj9
 rBCPUKGVeB9pCQMDFUvxyqgA4WjhG5NlsPffUJowstnytg7ZbTCL1rBfH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UOd3UGO8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] i40e: add
 mdd-auto-reset-vf private flag
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



On 8/11/2023 5:46 AM, Jan Sokolowski wrote:

#1 these patches are missing a cover letter.

> Since VF RX MDD events should disable the queue, add ethtool
> private flag mdd-auto-reset-vf to configure VF reset
> to re-enable the queue. This can be used by a system's administrator
> to select the desired level of security in running VF's.

#2 private flags are no longer allowed and/or highly discouraged. This 
should be RFC'd to netdev first to see if they are open to accepting 
this private flag.

> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 75 ++++++++++++++++---
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
>   4 files changed, 70 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 6e310a539467..72bd45c4f9ba 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -603,7 +603,7 @@ struct i40e_pf {
>    *   in abilities field of i40e_aq_set_phy_config structure
>    */
>   #define I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(27)
> -
> +#define I40E_FLAG_MDD_AUTO_RESET_VF		BIT(28)
>   	struct i40e_client_instance *cinst;
>   	bool stat_offsets_loaded;
>   	struct i40e_hw_port_stats stats;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index afc4fa8c66af..54bdf477bcd6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -457,6 +457,7 @@ static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
>   	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
>   	I40E_PRIV_FLAG("vf-vlan-pruning",
>   		       I40E_FLAG_VF_VLAN_PRUNING, 0),
> +	I40E_PRIV_FLAG("mdd-auto-reset-vf", I40E_FLAG_MDD_AUTO_RESET_VF, 0),
>   };
>   
>   #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index f346ba6ef7bf..6c483f7dd279 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -11153,6 +11153,52 @@ static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired)
>   	i40e_reset_and_rebuild(pf, false, lock_acquired);
>   }
>   
> +/**
> + * i40e_print_vf_rx_mdd_event - print VF Rx malicious driver detect event
> + * @vf: pointer to the VF structure
> + */
> +static void i40e_print_vf_rx_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf)
> +{
> +	dev_err_ratelimited(&pf->pdev->dev, "%lld Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",
> +		vf->mdd_rx_events.count,
> +		pf->hw.pf_id,
> +		vf->vf_id,
> +		vf->default_lan_addr.addr,
> +		(I40E_FLAG_MDD_AUTO_RESET_VF & pf->flags) ? "on" : "off");
> +}
> +
> +/**
> + * i40e_print_vfs_mdd_events - print VFs malicious driver detect event
> + * @pf: pointer to the PF structure
> + *
> + * Called from i40e_handle_mdd_event to rate limit and print VFs MDD events.
> + */
> +static void i40e_print_vfs_mdd_events(struct i40e_pf *pf)
> +{
> +	struct i40e_vf *vf;
> +	unsigned int i;
> +
> +	for (i = 0; i < pf->num_alloc_vfs; i++) {
> +		vf = &pf->vf[i];
> +		/* only print Rx MDD event message if there are new events */
> +		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
> +			vf->mdd_rx_events.last_printed = vf->mdd_rx_events.count;
> +			i40e_print_vf_rx_mdd_event(pf, vf);
> +		}
> +
> +		/* only print Tx MDD event message if there are new events */
> +		if (vf->mdd_tx_events.count != vf->mdd_tx_events.last_printed) {
> +			vf->mdd_tx_events.last_printed = vf->mdd_tx_events.count;
> +			dev_err_ratelimited(&pf->pdev->dev, "%lld Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM.\n",
> +				vf->mdd_tx_events.count,
> +				pf->hw.pf_id,
> +				vf->vf_id,
> +				vf->default_lan_addr.addr);
> +		}
> +	}
> +}
> +
> +
>   /**
>    * i40e_handle_mdd_event
>    * @pf: pointer to the PF structure
> @@ -11167,8 +11213,13 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
>   	u32 reg;
>   	int i;
>   
> -	if (!test_bit(__I40E_MDD_EVENT_PENDING, pf->state))
> +	if (!test_and_clear_bit(__I40E_MDD_EVENT_PENDING, pf->state)) {
> +		/* Since the VF MDD event logging is rate limited, check if
> +		 * there are pending MDD events.
> +		 */
> +		i40e_print_vfs_mdd_events(pf);
>   		return;
> +	}
>   
>   	/* find what triggered the MDD event */
>   	reg = rd32(hw, I40E_GL_MDET_TX);
> @@ -11224,10 +11275,6 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
>   		if (reg & I40E_VP_MDET_TX_VALID_MASK) {
>   			wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
>   			vf->mdd_tx_events.count++;
> -			dev_info(&pf->pdev->dev, "TX driver issue detected on VF %d\n",
> -				 i);
> -			dev_info(&pf->pdev->dev,
> -				 "Use PF Control I/F to re-enable the VF\n");
>   			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
>   		}
>   
> @@ -11235,11 +11282,19 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
>   		if (reg & I40E_VP_MDET_RX_VALID_MASK) {
>   			wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
>   			vf->mdd_rx_events.count++;
> -			dev_info(&pf->pdev->dev, "RX driver issue detected on VF %d\n",
> -				 i);
> -			dev_info(&pf->pdev->dev,
> -				 "Use PF Control I/F to re-enable the VF\n");
>   			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
> +
> +			if (pf->flags & I40E_FLAG_MDD_AUTO_RESET_VF) {
> +				/* VF MDD event counters will be cleared by
> +				 * reset, so print the event prior to reset.
> +				 */
> +				i40e_print_vf_rx_mdd_event(pf, vf);
> +				i40e_vc_notify_vf_reset(vf);
> +				/* Allow VF to process pending reset notification */
> +				msleep(20);
> +
> +				i40e_reset_vf(vf, false);
> +			}
>   		}
>   	}
>   
> @@ -11249,6 +11304,8 @@ static void i40e_handle_mdd_event(struct i40e_pf *pf)
>   	reg |=  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
>   	wr32(hw, I40E_PFINT_ICR0_ENA, reg);
>   	i40e_flush(hw);
> +
> +	i40e_print_vfs_mdd_events(pf);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index d75ba0a03169..dc127400ff1e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -64,6 +64,8 @@ struct i40evf_channel {
>   
>   struct i40e_mdd_vf_events {
>   	u64 count; /* total count of Rx|Tx events */
> +	/* count number of the last printed event */
> +	u64 last_printed;
>   };
>   
>   /* VF information structure */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
