Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4F8511C31
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Apr 2022 18:05:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B453860FE8;
	Wed, 27 Apr 2022 16:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tzyROG1F_NdW; Wed, 27 Apr 2022 16:05:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97E6D60F6E;
	Wed, 27 Apr 2022 16:05:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0BB81BF86D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 16:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D0B04017A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 16:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bFbR-BF5ESrN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Apr 2022 16:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 569C94014C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 16:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651075544; x=1682611544;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=tCDkHI9L8vpNPG/Und4MCKzHSdRFQ6x3f0JdniRfbzI=;
 b=GvKf3+MugxOMShuwf0baU9SPX+2Tz1FJEPzte4gVDCezA5HFQPwHOZDm
 Joi9CFhjq51qizvT0eQGn4bJDwEvKepny5fQq+mwuukh27zsK1LBymh5q
 WKb5O5Q2AKErIIapw9Mt+CP8nqipcZ3YgJW2H7vryCXpf1hPFXKEAVP4X
 CeiWZbs+oyjxFzEfxKiQaJGq3vz0eql4uD6VPf/zkxKwKsJliF8Hvw9hB
 qmCZk7CGftnM700X6RAkW9Ns0asRQSkzRyJPBLe4C3hnDx4SxnULNnW6v
 PLqCaPNMF09DpZoSH8qRTiig3yxqbjlBHLpU3srCpYHUkQQ7Yr5rz3lgQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="246541888"
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; 
 d="scan'208,217";a="246541888"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 08:59:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; 
 d="scan'208,217";a="559009977"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 27 Apr 2022 08:59:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 27 Apr 2022 08:59:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 27 Apr 2022 08:59:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 27 Apr 2022 08:59:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IUSpJ+NolDcf/IGRQIWiSbv3Atilvy2TY1LRF64G44VYSU8dqI2WEfBaDxzByPOivCEFfoYylFSfN373FN/CFryTeUSsqUwm08aAiSLkl0d5hrrDQNZaY5UtE6kRyXPBrt3w6SBUL7gAdTczOsXpkn4aNOnCcNgrqlPTGHtFI38hKUb1U74m0Mv0FAAqlqpVQhhQAvLnQnlwSukPraL7aXdXQrTBwHPG/ktFo3O8/2PqIHIJC0NXaFGHiXf07lxp79uTp3mn/rlmFDEz4E9bJIMvWzAS+X3ml9I8Ia0Cj6wZ722kFtZskG08TGleZVavKDnZSVrrNtNlT+YqcAlzAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CoLx/ItSSOyt+NOlw6J+35eZpXOcQa994BXx0UxFI8o=;
 b=gv9CkYTuv8iUOUM1nkwsaQ9wq3Omp6PtTnLhk/WKViPQAvZenv/sqlBqrQ3wYyrPEqWC5+4nLiGr/AZZ+Ti1zwoR72/rSe2KDrkYipLS7Jz3YtFF9OsIlFk1iu3XCC1hNE2A+IqqyyhxBKv0e0hba9u95xxB8OT48es1brqdYzSR9eqKt+Ytgqk32Mm/pizC6s62sU37EDcMQqH/KQwIdi0Pe2iOf7KYifzpEIh9mfFn4dC6y7sXAdBsE18/axpI6ggs/3T0F5eryYPNvCHX1DPbmdAbA4CEQOAg0vsHLPYxMeedImBBhoFeRFtP1tCAU7+4HkIgerfziVF9e1JdLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN8PR11MB3826.namprd11.prod.outlook.com (2603:10b6:408:84::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.17; Wed, 27 Apr
 2022 15:59:18 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5206.013; Wed, 27 Apr 2022
 15:59:18 +0000
Message-ID: <0a59ba51-e87a-9e90-6ef7-710cb6e9e623@intel.com>
Date: Wed, 27 Apr 2022 08:59:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Michal Maloszewski <michal.maloszewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220427115220.163736-1-michal.maloszewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220427115220.163736-1-michal.maloszewski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0084.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b14ce495-f99f-40e8-0e81-08da2866e2b9
X-MS-TrafficTypeDiagnostic: BN8PR11MB3826:EE_
X-Microsoft-Antispam-PRVS: <BN8PR11MB382655A3178A3221ACCA1CDBC6FA9@BN8PR11MB3826.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l7uZxzq2Vf2AhbWjc/PDe2vRylW58OCf6bOas5pO7N3aM+t7IW8H8j9uPle5sH1m/OmxcUuttq4G5MOCPSwHDiwNZRAKFGwFyz3LiOZPVcF2QRv1DIWhqlp+DHE0FBlokMCMEdu5cLe5WTs8H8hB1Ci/CzQ75ZInehaTWlGmCmpOyvJ4najTFbX51gYmEkh2V+DoyOAzOLh2aZGjWW7Qp4yQFkbogim/Z4r5nidiH/SQUowMqa3dvkLd4KbibSQArEDr0kU5/SxHE9H30eZM4kxrVFsTYurertFc9n8BcnUQocWcXrA7U3sVODDedjm5y++oI0SJzS+ReaSj1xJPdg3FY2LGUa2II7o3DNKHVauzCh3UdBySwNMiwev42l6QaEB9WmoGdRFrYMtOHyaUYpkp6UTL0/aY+k2Uoz6qXNYjIeMedU8VY5laOTfK5WInAUmSgXtdn2HNhv1eJxtHhhUdR8p3Q0ZbmS3WGF2MsqkKD/oPGVNIoP3gM0CWQTcz+1xoiqajnwH/KToRdzFpPISIhvi5WlKFO26/cix1b5g3oWfdr7aujEb8txteXyF1Ol8bimneqfgvcNs6buc6PqV2/TyT7nOyyaASZSjufcXm3gjCc3IPYgj+6CgJQWdMKNn2yfy1OqdmNnIvD3g2ltR0aMYGnAJs+vjKD9hbWUGnB4gh4tgkyYOL8hIpzQ9/oelpul8VdFmZlZ7qV+1XkCok6sMgZgUUfZutrd9IC8IQ3SzG/iM1PKFhjBh1pNYUbCd0T0rQV5QoGYjC6ks61mkexTc+ptBYU8gvis6VyZUwsLWsvK+NPFuEpIp3qBOZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(166002)(6506007)(53546011)(33964004)(8676002)(508600001)(82960400001)(66476007)(66556008)(2616005)(107886003)(66946007)(36756003)(26005)(31686004)(4326008)(6512007)(38100700002)(6666004)(316002)(5660300002)(966005)(83380400001)(6486002)(8936002)(31696002)(186003)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGEvSHRKYmVER0pWQ3JsL0ZPWjdYOFlocDkyUkUrYVlvWlBQQkN5eHgrVnRK?=
 =?utf-8?B?VUp5Rk1LOGZjWXBpL0lsdnd2bTNjRzhFbHp1SW9abVIzZm14K3JGcHpkdEpT?=
 =?utf-8?B?OGpPYWhKa1BqdC84UkRxK2g4ZlVPMW4ydEI1bVVBK3YxRVBxQ1dOU3lOdkN0?=
 =?utf-8?B?bVdBWnJ2WUV1U2JkOHlsWU5vUnlnYnlraWNBZFA1cUxGQmFKbTdvdHYvbHRR?=
 =?utf-8?B?c0Z0RjF1bmY1U2xDTzZvOHQvMnZmWGE4akVwSGE1UnE2R0dGcWl6OGVjeitL?=
 =?utf-8?B?dXJ6ZlZuTTRab3ZnQjd0NGJIcUwrcUpsbjJnUG5CTWFjTVpiVWhZTVI4Z20x?=
 =?utf-8?B?TWpIeFBUajNKTHVKTTUvTVlVbmttVWxpQkNkSGw5cDY1bkordzFOTXFpelk4?=
 =?utf-8?B?WUE3RW9PQ0RaZjFEK0VXY3pHTk5tQ2RFeGVhRTJqaFJFN09XSlRNbUozS2dz?=
 =?utf-8?B?Nkh0Y00yVTBKWWt0M2x3K0dIamZ1ZnYyQ2xGVTZWdWhFMVgvYXNsa0lGcWtR?=
 =?utf-8?B?UjhKTEdDNXdyaUs0eGYyc3haOFBVc0piY2lVS1ZTcm5NOG5ieVhVM3J3TFJK?=
 =?utf-8?B?bXdXT0RoRGNLUk5jWEVHdm5laklRaHBGZUhCQitYbmI4WWFiTHZLdVhsT3cv?=
 =?utf-8?B?dTNNRVpPZzUrTHNCakFUT3kxVTYxaXZiQnZWQnVwY3Roa3lFcmY2U3hFcjVj?=
 =?utf-8?B?QU9ESnVDd2RFc1dVRGVTTVR1b3NrVTVXQkJsODN2YXNaNTZITzAzV3N3RFh6?=
 =?utf-8?B?N0NUem85RjRrTTRwK1FnUHhZem1ydWdOcnFDWTJ2Zkpaa0hlWTZPRGI1Zlc4?=
 =?utf-8?B?Q2l0RS9udUZhYzRRL2dUcjZLZXRtdFlYZzEwVlRyYnBXdnNqU0MvYXVFbE1K?=
 =?utf-8?B?NzhzaTBqeGE2T25MVE1hNENENG90bThheUNPMlBFQnphcWJZY2tqVjdRTjBi?=
 =?utf-8?B?VHNTNTN5dk94cnFLNXZLMUhBajZPdUZDK3RwcXVDK2NuRTdCdlRjblE3T0RD?=
 =?utf-8?B?NjB0MHRaNVRGREsvQ05pdDVxZTYyZCs2eGRRZE1pSW9XaTBZMmxjcTZ1bXYv?=
 =?utf-8?B?OExMRExQRW5FWVJsMzRFNE43QitmR0s1S3hZTnFyYm9jbkRYd2hNOWhrN3JB?=
 =?utf-8?B?d0RHY2dZK09wekdLdnZsSTFEN1dNbWNHbVJmNmVMcWRWL3ROVTVDQ2ptVDFC?=
 =?utf-8?B?aWNJMXhZcFQwV3k0bnJZOHRMVGpURlphTnptQktPQWJUaEVvRlowY2ZsR0tJ?=
 =?utf-8?B?WkdJS2xYV2MyVVJvUHVpNTBVZGMvbm0xOXFKYTg2TWNZQ3NRN1ZDVmlXbTA2?=
 =?utf-8?B?RDFkZ0tad1EvNjl3bHhaYk02ZHYwMFJIUEpheHMyMldWU3RlZlRJU1EzWUxY?=
 =?utf-8?B?Z2VXb2Z4d0VFRFdVQTVUMERPN2RnT2lKUmhRQm5sU1U5aUx0RERURk1NQTlm?=
 =?utf-8?B?bDE5TldYWk05c1poRWVXVWJROVFLaUluMXVVMys4R3M2KzNRMzU2bkZXWXdh?=
 =?utf-8?B?aTA2ZzZlYjBya082ZnlicWZ5cVJxM3pGRTBKVlEzMTVjeDkzMmhwZ0wyQ29s?=
 =?utf-8?B?cW9BNm1qTTJweFJpZVlLeXY3dmg2YXVKeDkraGJBTktheXlXdDNWdEVBSHo4?=
 =?utf-8?B?UjNWZ2FYVS9lYUdSQ0E2RjNpMXVxYnViM3hwZ2I2QUxjU3YzU25ZcWEyR2k5?=
 =?utf-8?B?Snk4cmFZREx6ZGpLOXBZTWlDWFgxYTRFTk56dzlOOW9vc0E1bmNWaFgwSXQv?=
 =?utf-8?B?dSs2a1N1UjliWGtJUlkydm51YzZVUFVuM3RZQ0swZ2NZakJWTCtGOEtyM25P?=
 =?utf-8?B?TGJxNjBVUFZpUit2OFhXMEJiRUo0OUxLaXN4aGU0RTJOUGxFRFF1TFdVVWVp?=
 =?utf-8?B?MG85N2Y5MEF1MlVsNWJvdzVyT3BGRS9SKzhMaFkvQy9uWFVJTlE0RVVxNld2?=
 =?utf-8?B?blNkT1F0Y0Z0RVlJcTUrcFpVblFWVWFqOStZM2hRK3pJSkQrTVBNMWxXUFh6?=
 =?utf-8?B?RGNmK2pHRElqdjRlTVhoa1JOeC9TS0JJNFNYZDJYK1FkakpUaEdwckwyQ24v?=
 =?utf-8?B?eUY1UTZOV08weXJGMnNWSER2Q1lRb3RhVlA4MVpvb04wZDJhTlpQRHlESzFV?=
 =?utf-8?B?SVNCVDMvelJwRE1xTHA5cjFaSFB1ajQySHJHMGZzRVk4dUxpUmZyZGNiNzYy?=
 =?utf-8?B?bGZvcnNEaHdtNWsrMk5wak4wNmlDZFQxL3JheVlrb0VzVTJOeTNHM2l3aEwx?=
 =?utf-8?B?MklHeWFHVVFRRzc2b25BY1BqOU9HcmQzQThrWE9uSXpSV1h4Z05jUjVENjNp?=
 =?utf-8?B?TDZxVmx1aDlKelo2cU85ejRDWk4zVlZ2ZENzOXAzc1JpL1cveUZsVS9YcnVD?=
 =?utf-8?Q?gKrhu1WlJTymzVRU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b14ce495-f99f-40e8-0e81-08da2866e2b9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2022 15:59:18.3306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AxWvp0QWOBXkvJ1s6buiSKu/NJNl2blkUrmuCpsAkF5h8htFmb9fExD+2fu/sRYxDBqhk9Lgqs1+w7AdfvPrNxTpU1vp4YpNLUoR2TWfEI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3826
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix error when changing
 ring parameters on ice PF
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
Content-Type: multipart/mixed; boundary="===============1063015701484209905=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1063015701484209905==
Content-Type: multipart/alternative;
	boundary="------------57J3ma3fZMoJEtb0sDFZuAz5"
Content-Language: en-US

--------------57J3ma3fZMoJEtb0sDFZuAz5
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 4/27/2022 4:52 AM, Michal Maloszewski wrote:
> Reset is triggered when ring parameters are being changed through
> ethtool and queues are reconfigured for VF's VSI. If ring is changed
> again immediately, then the next reset could be executed before
> queues could be properly reinitialized on VF's VSI. It caused ice PF
> to mess up the VSI resource tree.
>
> Add a check in iavf_set_ringparam for adapter and VF's queue
> state. If VF is currently resetting or queues are disabled for the VF
> return with EAGAIN error.
>
> Fixes: d732a1844507 ("i40evf: fix crash when changing ring sizes")
> Signed-off-by: Sylwester Dziedziuch<sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Michal Maloszewski<michal.maloszewski@intel.com>
> ---
> v3: Correct patch to be send on right tree
> v2: Changed unnecessary parentheses

As I mentioned in v2, this still does not address any of the comments 
from netdev[1]

- Tony

[1] https://lore.kernel.org/netdev/20220422154752.1fab6496@kernel.org/

> ---
> ---
>   drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 3bb56714beb0..a27df8af5cff 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -631,6 +631,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
>   	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
>   		return -EINVAL;
>   
> +	if (adapter->state == __IAVF_RESETTING ||
> +	    adapter->state == __IAVF_RUNNING &&
> +	     (adapter->flags & IAVF_FLAG_QUEUES_DISABLED))
> +		return -EAGAIN;
> +
>   	if (ring->tx_pending > IAVF_MAX_TXD ||
>   	    ring->tx_pending < IAVF_MIN_TXD ||
>   	    ring->rx_pending > IAVF_MAX_RXD ||
--------------57J3ma3fZMoJEtb0sDFZuAz5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/27/2022 4:52 AM, Michal
      Maloszewski wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20220427115220.163736-1-michal.maloszewski@intel.com">
      <pre class="moz-quote-pre" wrap="">Reset is triggered when ring parameters are being changed through
ethtool and queues are reconfigured for VF's VSI. If ring is changed
again immediately, then the next reset could be executed before
queues could be properly reinitialized on VF's VSI. It caused ice PF
to mess up the VSI resource tree.

Add a check in iavf_set_ringparam for adapter and VF's queue
state. If VF is currently resetting or queues are disabled for the VF
return with EAGAIN error.

Fixes: d732a1844507 (&quot;i40evf: fix crash when changing ring sizes&quot;)
Signed-off-by: Sylwester Dziedziuch <a class="moz-txt-link-rfc2396E" href="mailto:sylwesterx.dziedziuch@intel.com">&lt;sylwesterx.dziedziuch@intel.com&gt;</a>
Signed-off-by: Michal Maloszewski <a class="moz-txt-link-rfc2396E" href="mailto:michal.maloszewski@intel.com">&lt;michal.maloszewski@intel.com&gt;</a>
---
v3: Correct patch to be send on right tree
v2: Changed unnecessary parentheses</pre>
    </blockquote>
    <p>As I mentioned in v2, this still does not address any of the
      comments from netdev[1]</p>
    <p>- Tony<br>
    </p>
    <p class="MsoPlainText">[1]
      <a class="moz-txt-link-freetext" href="https://lore.kernel.org/netdev/20220422154752.1fab6496@kernel.org/">https://lore.kernel.org/netdev/20220422154752.1fab6496@kernel.org/</a></p>
    <p><!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;}
</style>
<![endif]--></p>
    <blockquote type="cite" cite="mid:20220427115220.163736-1-michal.maloszewski@intel.com">
      <pre class="moz-quote-pre" wrap="">
---
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3bb56714beb0..a27df8af5cff 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -631,6 +631,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	if ((ring-&gt;rx_mini_pending) || (ring-&gt;rx_jumbo_pending))
 		return -EINVAL;
 
+	if (adapter-&gt;state == __IAVF_RESETTING ||
+	    adapter-&gt;state == __IAVF_RUNNING &amp;&amp;
+	     (adapter-&gt;flags &amp; IAVF_FLAG_QUEUES_DISABLED))
+		return -EAGAIN;
+
 	if (ring-&gt;tx_pending &gt; IAVF_MAX_TXD ||
 	    ring-&gt;tx_pending &lt; IAVF_MIN_TXD ||
 	    ring-&gt;rx_pending &gt; IAVF_MAX_RXD ||
</pre>
    </blockquote>
  </body>
</html>

--------------57J3ma3fZMoJEtb0sDFZuAz5--

--===============1063015701484209905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1063015701484209905==--
