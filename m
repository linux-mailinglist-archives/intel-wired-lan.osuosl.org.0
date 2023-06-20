Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2972736A51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 13:06:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 385AF418D6;
	Tue, 20 Jun 2023 11:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 385AF418D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687259174;
	bh=GEUd6dLf42t7a8YSl02+/NVdTHtniPwPR5iZHZVNB+U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z9aM6cKyYhHzfDv70dbR71xBOUlvHamiJyCa+Cm7+yQ5LRWwC3dcS/+rlUPYpk5SR
	 Oj/IxSZvpJkCaSbC7uxHJFZKh/0f4hfCQYVM85cLckv69Er5QF+RfJo814z8FV+GZz
	 l3ph3WETR+yqGTHUHyrbZaVsXe1bQ56y5mUXENv0LcDMgDK3RjyvQnh2OMGmFnynNx
	 1JkfFwhDFSEjcn2Bl2qtVNWZoTrFpXl0qeFRIu3p34D+jN09uieSWH1BbnBIwckag9
	 2Ih0KxlDcUGnTqdUnkkn+Z3z/QcJ9ZnF/zImS8Kvmzc3162F8yH/um9hVheX7r5uY0
	 QdNMwCdX4oU1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WRaZGRzEMXS4; Tue, 20 Jun 2023 11:06:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76913418AD;
	Tue, 20 Jun 2023 11:06:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76913418AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 423651BF417
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 11:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19AA440364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 11:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19AA440364
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFsFgXo18UyZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 11:06:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C9A6401B7
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C9A6401B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 11:06:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="357317283"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="357317283"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 04:05:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="858541098"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="858541098"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2023 04:05:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 04:05:50 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 04:05:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 04:05:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 04:05:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QbA3GDDWpDTCUQ9e3Soz5PYHZSe2tqM8jnm+4+Z6KExiqDjPyA1g+aJJJFJ5Ft7sdvMqF+X2CjSdp1gYSC1OAnFlcwtzefY+B86i+7Luz8TrLVLpgXsMw4yMkMwzNVooIIM86vR4y7KZRwx40uhPyNZAF89L0mBsQBcHYKqRcaJ7eEI26BLJAWMQoOtHc8W0n+MR/CiqnLM+WUa9lcQdaIK2Beb2mi19yUChrvckAVHV3zt1H8Go2tdqmA37vsYffmQnFQ7g3wudaDkAVyQMa+batMe3vI+bG0bBZY6vURYdmE9ykXo1RfpPYUHd/DV/ieH1Ju3jZxOyuqtRz/hLxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6Kw8EyX/nWPemGKz33QphlxW6490cUUivyO0jfki1Y=;
 b=lvnnpIGoNSdG4EM/hDvKatSCTO8gkWKcK+K6Gn7G4F+mGpAl5qaIu6d/BH88vnE8c9qbg/Qzgtek1+oIEhZ2m+eEfVyM4/RJ+UGPssMsbnTrdNLk+G7vafaJ+s5GE1OfsK5lRrPGA4OjYDRnAfEfbOgixByfsHKVhqkyggZwa3srxuXlM3G+QBcAHge7sPrxtcn+0S1ZzDmd2xdFYoTOgfhazwcc2S2tTyqi6vpC5Id/EOfstCwBD0IM807pJpOtAI3Uz08GUGIlTYR28iOBJg2LWJU/KcKeSANe0xRD9ZydjrECHZ4CqWXDsszS7ycL6oashcopzWVj6xipNU4AeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CO6PR11MB5572.namprd11.prod.outlook.com (2603:10b6:303:13c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 11:05:48 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%5]) with mapi id 15.20.6521.020; Tue, 20 Jun 2023
 11:05:47 +0000
Message-ID: <85ae556e-4038-2618-c8be-7ca035daa024@intel.com>
Date: Tue, 20 Jun 2023 13:05:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Lingyu Liu <lingyu.liu@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
 <20230620100001.5331-2-lingyu.liu@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230620100001.5331-2-lingyu.liu@intel.com>
X-ClientProxiedBy: FR0P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::20) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CO6PR11MB5572:EE_
X-MS-Office365-Filtering-Correlation-Id: 01aca821-189d-41d5-bdfc-08db717e4ce1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pY9ev62NCis0mAA0H+E8770Z6u/pDXbzWSXVTkv+UPbOmkVseyCy8IShJ9pO/EGQ4DfLB3m9dM4rfIiRpm2OwNKw3Kzh9DgeCgLxA8A3CbPsnmTjpdZmo8oVLiY9PTM56nfrcYTquPZwFKvnyzWr1fIT/wUyUbH/mxtW55aLwJlUEKgIXMXRNP0cZERZYlzns3asi33hBEMrOQTWX37y+s3Pa2aAB11OGNCTcenKPnxUsA/41JX+2BYigHQWac1xVj529NFbRMaKEMmWW1XEtSRavYNwwMIG+2gbrKaLPAXPIE2Zc9qXwMx+B2wld7XzgCy0NRf3nJuk8fg1O/EcyvPrwzRXwwnUC6pEnrMdRP3XRc6zMx8z268woksLGcEqFZxoVZ8BKmxV3qwMfnP7b2KFro10nhIqhLGevYdpRtnT6tyoODseCJF3V1ttxXOPkf74bNznLeBRBo4FIUCXwD8WPWtQHMvgxCWYkv92pYVdC8sSIpzXS9/amTH4rJL4oFI5puUKmqK7ywNliXJt990WlPKF6N73lWd2j7mzyHX6KclPb0cZO6uli/3bOxiZfIEKPlwKK447kkEb3HgAi78OiGTiS/a4qa/hqk0h9cq+bCgH+XOnUz/wjZrM7vG0Vn+ygeh/8yghg2l1yQBHRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199021)(8676002)(8936002)(82960400001)(38100700002)(5660300002)(26005)(53546011)(6506007)(107886003)(6512007)(186003)(6486002)(86362001)(31696002)(2616005)(6666004)(83380400001)(478600001)(36756003)(316002)(41300700001)(4326008)(66476007)(66556008)(66946007)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0ZHenFnMFljNHc1ajUyQThjUENUOFBhZllrcnJsa2dQVEFHcHJFbUxKWHNZ?=
 =?utf-8?B?dFZONVJORFRDQXFic25ZR0lHVlQ5OUFZZDNTemQvVVVaanFwRWhQd0JIRVRu?=
 =?utf-8?B?M0NVV0hIZ1h0aGp3VGZQeTRGRytucXFhL3hjV1BGSzVnZytRUDQwZHFwbW5P?=
 =?utf-8?B?ajFQN3lRM3A1MEhoZVdOYVBqZmFqVXpiOVp1SlN5azc5REgwZjFveEl6bkIz?=
 =?utf-8?B?TmpkR2E4bHlweExWbnUyUXRNd3Bhcjc0R1phL0g2VU5KZElPcDJVdFQ0d2Fy?=
 =?utf-8?B?U0xmSUx5cGkybGV1TWYrdlFPL0FkNTZiWG9kWlViT2w1QzJsWnhMenRGOXpk?=
 =?utf-8?B?RVZvaXZoeUF4QStCemJOakpQcW9EZGRScXhqUTQ0ckwrUkM0cVIzaFA4bE5J?=
 =?utf-8?B?VHdjK2c1cEZ3RlArajVNSjFsU1NxVHBsaDlwZ1F2KzM2SVByQ3Qzd0gwRTcy?=
 =?utf-8?B?eGd5WWVYaHVaUnYwN25jbVVMeGRHNjNTY0JwUGpMWmVWQUZ0dnd3TERPRURP?=
 =?utf-8?B?Z2ZIdnp6T0RzbktpcmxHdFI2YmdqengvUTFCUnVMdXYyV1htVERadlYwb1l4?=
 =?utf-8?B?bXcvK1lMU3lwUWFCSkdtazdVSTNLQ2N1RGZ5cTB1dGpJQm10VlliUitMREdo?=
 =?utf-8?B?M3o4b3FhWmtvWTNxYnhXS0ZVcUorSHY2SFRZcEF6dzZyT1VjVGVCWWJtTjNX?=
 =?utf-8?B?N3hXbUs4OUptcmYxK3puQ2kzczVxTVZrc3A2dlJidktwd1VPOW9WY2Zic0M3?=
 =?utf-8?B?RXlYUVZvSmZxdDNvT3UzMERTM1NpNDlQcTRtMXQ2M0FEbXVYSlhSNXRjRnoz?=
 =?utf-8?B?ckVFalhRNWVwdFdCaXFXais1ZWh3WEZ6TWNuWkNSYVRxZjlQMSt3ZTBXK2VU?=
 =?utf-8?B?Ukl1VThtWWhUM0pQMklsU09aUEE3aDRLUHBBR3JvTDBWU3RURFhHZkhvMlMz?=
 =?utf-8?B?VFJLYzdSTkpXWW1aSzV3NUpIRE1EdEN0bHVRclh1SWQ3NGpMb2hiWmhHM1E5?=
 =?utf-8?B?Tm9nZ2o4S1h0YXFQT1puU2FUSWxZOEdrMzEwMUYxUSt5cTFRcG4vZk94WG84?=
 =?utf-8?B?Z2ZSYTErcFdUTW5RWEZHLytPR0RhVkJXSzF1dVlrZEo1Ylh5T05wUEhGQVBa?=
 =?utf-8?B?aGRMSlFPT3hXQkl2Mi9DMDF3ajFmSWxvMGZGMHVydWE4dGVjZHZmWFJUWjVU?=
 =?utf-8?B?N1k0NS90UjNZelQyOUE3ZmZTRGFDSXh4TzE3VUNTNVpoeit1SnBONjdDd2pv?=
 =?utf-8?B?c2YvVzg4cFBYcmZKT1FtQ1lEWk0vdVFjSUU2SmtvSG1nMCs0WTlsVms2Szhr?=
 =?utf-8?B?aExsUmJ1bDNRejNCVHJtOGlzY1J4YU9oQ1hNbitLWFlIRTJRZCs0RDUzOTl6?=
 =?utf-8?B?YXhvR2dmcEIrVlNmZ1FVU2VUNEI5dWxHOFRxbDEyWW11dU93VWhSUjVPUU9X?=
 =?utf-8?B?WjByWE5YTUhXdjEycTMvSkt1eGY2U3Vnc0F5dVVtMjAvWDBJRGxLd0RDQ3dI?=
 =?utf-8?B?WFBDOG5uRkcwTHZsR2loa2FXWnZ2a285Z1p1Tk9ETmloa3J0NTZxVnpSeXls?=
 =?utf-8?B?QWR3TC9CM0tmSkp1dDREQmQzRWE5cG16OGttZ1RHU1NPbkVid3NzTlhnQkYz?=
 =?utf-8?B?cTFYYWRza2JtRHZPSjZVKzA2c0I0WmxLR2k2dUF3cnRzRm9FVHR6VkZXNVFv?=
 =?utf-8?B?SXg1L202NWw5UDZ6aUp0S3QyNlVKVGlkZ25FZlZ5ajVoSzBwZkUwTEJQZlRn?=
 =?utf-8?B?RmZBOEtxc1NVVU1PLzVVcHpRYkRnMDdWODR5VytVbkIwZCtBakwwZDF3K0xX?=
 =?utf-8?B?Ykl3SW1kU2pnR0pZUEw3KzRlcUJxYXIwOGJBZFk3anAzUWF0eUlMZ3pSelBS?=
 =?utf-8?B?c1ppSkd2eWJKK0ZyaFdVN2xQL2FWajFrbUE3d015cHZ2ZUU3QzBCYldRRjl2?=
 =?utf-8?B?dWhZOFJaZkxJUjhmajJKTncxMEhXbFo5WFpWT00vaHZCNE9QNDM2WDZHU0hF?=
 =?utf-8?B?d1VmcWEvVXplcTh4WFdOS2Zkd1hkbHh1YzRJTXd1cldvcDBHNnJ5R08wQi9r?=
 =?utf-8?B?dWp6aDR1RENXNTZGSXExOGhqbmJlZlRkckw0V25MYytBT2VBMGtseWhmalhN?=
 =?utf-8?B?QWZiaW5FN3F3a0c0Zk92OVltSzAyMkMzVGZodzEwTjZjRnpLdHQ1cURXTVl1?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01aca821-189d-41d5-bdfc-08db717e4ce1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 11:05:47.4886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a2ViBaYsHs+37aJF45NdE0jkRIzW6zoQ67u4oD5WXNS/V8S5zoWBlzbfTxED+2mQFFD5hw36WuMoogSAeCM0H7Gxk0n8DXNG+raJojqrdiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5572
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687259166; x=1718795166;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kj8XB+XpzjcS2FkitM2KmkL9pLFYDFAiro4rVnVlwSg=;
 b=eOZMc2SKZ9qjXHbdsBz86ilBv//txIEzwknZcCHfVrzjTfOtQVboyPMQ
 C6XNMB/Lv5URLFnTZz5A3NZsmAXwVNi/1R7w6gTTe2xfI7hN+QMoIsvqx
 OwN5hshJhvDQ7vR7RrCfBgSl4U6PP7Pcfl4KwmkmZTGfVXtqYIos8Il9h
 uLKrjVQTOkEgzUTPKug244or6ppkPZOKiY1ceyWKdu8Gpm9V3UIEljwMg
 kNAvolGHkg1uhfBf0NxdVWdsOnYa06VdiYV7uMLGEj0nSbfj2FebAH0JB
 9Zk2RRAF3JEXZhTh8S8OWgPcf/dy+EeMC8Hh4QgkNlj4MzrUy8jac4eVC
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eOZMc2SK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V1 01/15] ice: Fix missing
 legacy 32byte RXDID in the supported bitmap
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com,
 Xu Ting <ting.xu@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/20/23 11:59, Lingyu Liu wrote:
> From: Xu Ting <ting.xu@intel.com>
> 
> 32byte legacy descriptor format is preassigned.
> Commit e753df8fbca5 ("ice: Add support Flex RXD") created a
> supported RXDIDs bitmap according to DDP package. But it missed
> the legacy 32byte RXDID since it is not listed in the package.
> This patch adds this RXDID to the bitmap.

Please reword into imperative mood, perhaps staring with "Mark 32byte 
legacy descriptor format as supported int the supported RXDIDs flags", 
or similar.

> 
> Signed-off-by: Xu Ting <ting.xu@intel.com>
> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++++-----
>   1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 92490fe655ea..ae1e09f0875b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -2615,12 +2615,14 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
>   		goto err;
>   	}
>   
> -	/* Read flexiflag registers to determine whether the
> -	 * corresponding RXDID is configured and supported or not.

This part of the comment was valuable too (esp given all the bit 
twiddling in the loop). Perhaps you could bring it back?

> -	 * Since Legacy 16byte descriptor format is not supported,
> -	 * start from Legacy 32byte descriptor.
> +	/* RXDIDs supported by DDP package can be read from the register
> +	 * to get the supported RXDID bitmap. But the legacy 32byte RXDID
> +	 * is not listed in DDP package, add it in the bitmap manually.

I had to grep defines of ICE_RXDID_FLEX_NIC and ICE_RXDID_LEGACY_1 to 
ensure that the code is correct (it is), comment above has certainly 
helped me. Perhaps you could add "(and skip check for it in the loop)" 
at the end of the above sentence (after "manually")?

> +	 * Legacy 16byte descriptor is not supported.
>   	 */
> -	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
> +	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
> +
> +	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
>   		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
>   		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
>   			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)

Codewise it's ok!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
