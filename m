Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0265A02FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Aug 2022 22:50:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F287340BB1;
	Wed, 24 Aug 2022 20:50:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F287340BB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661374232;
	bh=eSWjFZxYHLNPtfR4VeJjFbhjYnTcN56VOZbJhIHJ2Nc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qRoHgaNo3MWtILDxnvLHmiOpdSU3OnxhAWECqwa5TMvF/kq5YE/BtgEnBpuew+ADw
	 1BImljGJ/ErGAI7yE6scP0oTfuA2LWVdaiPivjt1QS4hSx3em4K2Hi0Xgbxt+OXiDI
	 41lf8Dgqgdxty3re5glZhQD/NNnH/+Q9uPUxyLFERuYrBHtc6o+U43T8qjFvrtPTjU
	 qsWLGWf2CTXnU0aGxmfshcAATOCjT7+tF7JLXkQ9dOr0Nop0x5FpnobAQEJYjPnw6v
	 YRRnOzyOPo743HehjFU3yi4NkgPnO6nw7r2FXlD2uxaH6NpCe+f3IYT5iP/GwFy/aR
	 PkV3mATjzxsPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pnyh6PX0-7YR; Wed, 24 Aug 2022 20:50:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C572C404D1;
	Wed, 24 Aug 2022 20:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C572C404D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 92A9C1BF831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 20:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6632B404D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 20:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6632B404D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4a_mrdMLDQq3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Aug 2022 20:50:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9477C40181
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9477C40181
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 20:50:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="273826559"
X-IronPort-AV: E=Sophos;i="5.93,261,1654585200"; d="scan'208";a="273826559"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 13:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,261,1654585200"; d="scan'208";a="639283238"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2022 13:50:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 24 Aug 2022 13:50:17 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 24 Aug 2022 13:50:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 24 Aug 2022 13:50:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 24 Aug 2022 13:50:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XrqAc4icQgALFPR/WrXn5CtCaTtPr3zzirofWY9DoZnbuHQjY3kqDN0uWgQyywW0S3Tty2LswLM11+V7AWiFILxo/vVmKh5xN8H7p4I1rI4u8Tt56+ORE3+ZNmyxpTLHwCcqAfyyX/zUQUGrRq9PwnL3nnRKxLR55oth/bLMh2Z3z6k8Naqrpp49n4hr+JKxAMQE0FKukD/ESzMMradiCZRAxz+uZRt5NJsLYVIAZ8VoNUOKcVcw3cVMhPK8Nl9AD8r2Dkm3Z5i9OPiD9aXO00+FEzgNqXOFsnS4zO04AhiQRik6IbIfq5ZDvYCdOCLczi+yT3RlZ775jw7C62Qung==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yy9YSLe+wJXGnMSpX1CW5nAkNPpNHr/84zMama+O+IM=;
 b=P9Nyq0NIW2nVepDv/6zcsX/TBAjeE0wzw+bL34eqJEYx6lQB3RcGLMIwDGpKIKmxc0CZz9QFmZkSX2tVIXGBpblp1ereKwBFvjWK2z9xubhwVY1AMlvui+3jZvKi4Omusvi55xHdgT5Sy1qRnzYxsokDdt/iR5+o0UyqYQ6hlcA3KH8/sJYyt89/d5vfPzvi5dyP7LS2ej6juA+QfJltrhpFQ6XbLOBfqxi9Dabea9NEi+MfMVef3mdM1M0yaHy+0J+nZaXeMT94GJ59Mmg0h6QPGo3doFODzXLsaQrMlOTzIUtOzDjTL30C1lclrke2WcYMTVOD+/V5VDkmUslMpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY4PR11MB1864.namprd11.prod.outlook.com (2603:10b6:903:11f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Wed, 24 Aug
 2022 20:50:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5566.014; Wed, 24 Aug 2022
 20:50:15 +0000
Message-ID: <61688406-6c2a-bd1b-bc62-638d1d8f65f5@intel.com>
Date: Wed, 24 Aug 2022 13:50:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220824113709.3085878-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220824113709.3085878-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::31) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dd13a0f5-ad09-46ed-4e63-08da86123ef2
X-MS-TrafficTypeDiagnostic: CY4PR11MB1864:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y0MLbUeSTQ/57vN/QGZMGHzhZTybLm0BWu+7oeFDriABaw69fADBuX2mmYcAtaXmRpoVbeRE7DDN8Ax5/KwMtRA37yViFc1/qtINJKR4YejaKacLStGtFY4RVh+S+WB9piUZ+eLCr099f2O2hwxXDz6a+5Najx0ErpwozM6HoiNu5gD8hubCCAIFhgIzj6B60KOCPEFQqUEbiwUClVOquSVZUNK+eopE1MEGAY3n6aPJ8JdGWOZC42Uqpmw5+Frs9zB6wG5aoZJOCwsrSAWFwYdfGs5WFuXw0KDj5TtEgx/dlqE8835oPv1ggTWPmtvLZ6/JViWb5DoGTsyWc99m57JxaT196IQ7diVysIewBTOLfStFmXA/bFB3SDt93KNqySFwQjC0WMDoRzfZCXSVRyzsfwCytFLMuzyUBqiYyUcxT8jsvJAC1jXRt5ahqB+7cgREOK+9zyAFEJT9X5mAhCePLErMxRlTv6ltI09+R9BaPHd21WCQFFQgCfeChV1g9w0GqFSSV5KzmTIxXfzww7s/mvlksVoMBvgqBt6liYqGo8r35gCE2YTG3mIPAPcSDa4V177CSpXOYREJs9tbUapocRQwmYsftscNxMNLmcAWbIgfF+WdjO/gB1CCIW5VXOSqEYgdXCbyMjf+jK8kbJ0VXufwRIo/VMvdNWEx6Raaqe7KekNx6WRCDPyLSUM7yFHXHmJuj2zvGndCAynnrWuIbzTROAUHitNUJP/qHrkVSaoSzrViQSqj25llZSVyyy4V1D5rHIl0JgvvDHcmwXlfMzS+LqMTCc7fpngsZRU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(376002)(136003)(346002)(66946007)(31686004)(8676002)(4326008)(186003)(2616005)(8936002)(2906002)(66476007)(66556008)(5660300002)(36756003)(83380400001)(38100700002)(107886003)(6512007)(26005)(53546011)(6506007)(6666004)(316002)(86362001)(54906003)(6486002)(31696002)(478600001)(41300700001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tm5nbExZbmdxc0ZrZTFDYk50Tnpjb2tIOFJOM05zZmxmZ0lCTDVYOUNFU1FB?=
 =?utf-8?B?NS9xY056ckpzem5NeFdXaEJldTVOVk5vVThneS9rTzZrd2FLNlh2RWVQK2NY?=
 =?utf-8?B?bXhuek1PRzEwWGp2a25mT2JjK0lFRnpodCtra1M4THZobjVHak9BMmh0TTA0?=
 =?utf-8?B?YzljRjNUSnNaM2xXQ2VueHRHMnYvOTI5SThHY2hUTXhMaFljUTNRYkNnSTBy?=
 =?utf-8?B?VG9qR3RrOVpKT09YYWliaFEyZSt1T0prRElLejVYSDI5THNxOWdXMUdwOHpw?=
 =?utf-8?B?akJ3dVFFWkVobW1SUkRjQ1lXdXZ4N2dDTk9rQTJ4OU9yZTFWRk1CYTNWQW5u?=
 =?utf-8?B?K0kzdHM2MkxwS1IyQktQQndXSmpIVVR3ZkJFYXZZSGNwMU5ueVhIblZoT1ZV?=
 =?utf-8?B?N3hRR05KZFlxR0NLOWJCN1liT2k4Q25tNkl0Sjg5QWt4OGFKME5LSS9obVgx?=
 =?utf-8?B?dHdEcUttV282YXNCRHNRejQrZmxaaW9KenplT0JVUmo5T1ZJeXNRRUZsbWRX?=
 =?utf-8?B?WWlKOXpDaG40S1Q0NVltanRQSVVKNk45WTlzVmN0YWdPblNJc0k4ckp1MDhB?=
 =?utf-8?B?QjREVGl1YWRHNDExNkM4NFJzOGZVVjRmZGxESjV5NFNYSjBUSjB4ZHNhNmgw?=
 =?utf-8?B?bWJRaTZVOWpSeituQTFqUWxWbzVnd3NKS05Sd0dPSGkxMEo4T3N4VEZtd0Zw?=
 =?utf-8?B?ZkJhaG1EbWRQYUgzMGNvMHg0L2tQVGVqZUptbVhrcHM5N0FDbTlsMGQ5UnQv?=
 =?utf-8?B?RzMrOWFDUVI5SlMwNVZFUklSVWdkZUx1dHJIVzg5L001SG5hQlZNSlE0Zlh6?=
 =?utf-8?B?OSt4cVdicmcyWC9HZzBtSkw0UGRjbUVyZThDb0wySldOenFwa2swK0h5TUhk?=
 =?utf-8?B?OVUzSXoxVlFqd2JMMjBuR1ZmOUxYWjh1YzVzOXArdnFEN1owS0tYRExJZ01K?=
 =?utf-8?B?VzFtalh0cDUvVkdoVGp2WHJTVmZTUklvazZOcG5UYy9HUU1uYXRZaTFaSVZF?=
 =?utf-8?B?MUVBeXA5ZlVHeWZVRVd3eW5WWUN6UnQvK1FObHN3NUtqZ0FlOVNPclpVV1ZJ?=
 =?utf-8?B?Wk91MHVNOVdwdkdtZEZwM3ErWlZsaDNzVHcxOWVBTlYzc0U1emFMNzRabHIy?=
 =?utf-8?B?U0oyVm4wV20wbk5nd3lES29ZZUsvTjBSQ1BvTTVTd1ZwR0g2K0JBK2Frc2lt?=
 =?utf-8?B?RTJhYjAyYnhIbVJuKy9zTXExcXNqczJLbHROdW1UbCtDUFlSZTNrOFoyTHlG?=
 =?utf-8?B?YjQ1VUpabHNvQU5RNzNuSUR1eXJRdkNNZjlGN1l4NVpQejlVQnVEaG1FRm9J?=
 =?utf-8?B?M1p5YW9VM3RQdGU5dUNMbVp4UUZTWGp1eWcrbWZKVXZ6cTFUZVpRb2crUWlk?=
 =?utf-8?B?OXZuZzhaZEJkeHpmZ21xSFFTV2JDYVZSaXZiRE9MbUV4eXZXakcrYnNxdGtR?=
 =?utf-8?B?ajFvdkkyeDA3QUROMTdlTTgxQXB5VzdWaUI1TXFSUEN3Rk91Y3QrZ09yL1gr?=
 =?utf-8?B?NVlwVUZ4azNOTm5YSXpqajJyNHdHQVhjSVluVWNWc2d3SmNMU29FTHlVdlNs?=
 =?utf-8?B?VHVhWFZHbVNDcExPOGFpL1ExalhqMldibEZnRXFmbkU2M2tvekNmTFkvbzBU?=
 =?utf-8?B?OERwNUVkSkxTek1HOGpPUzhOd0tYd3U5Q0dGQ04zQzRhdzdxSUQ2dnhNa2Jl?=
 =?utf-8?B?WFBCMUh5V1U1UzBaMThlWk92ZjB3WENGNzN0MW9lU2EyWDJNQmExK0RmWW9H?=
 =?utf-8?B?enppYnV6VkxSMitRbVdFNTJ3M2lidnc4SHFuY2RWdHlBalBETmlKUUlHZW5J?=
 =?utf-8?B?ZDFRRnZGRE1FUHJ5RnJwcDRrM2dVZTZubGUxTmZhenpTYVhMVGNyQ0NFem5Z?=
 =?utf-8?B?cGk1V3BMbjVmVWlzMGRla1NTcXg4UmgzWHk4S1VMZ0pVSDJJTnRqOXRSZEE5?=
 =?utf-8?B?bEFJM0tqMlBPY2wyMmpCekluTHRDTDNVMVh3QXBMSlk5MXlKWmRvNW5LekRt?=
 =?utf-8?B?UUx1NFZQekhCTnZpTWpZNW1XMUVwNk1LU0JLOGZ5VWFndWt6eWFZR1ovVWdm?=
 =?utf-8?B?UUN2eUNYS0RnL0g1bUwvREYxK1BCS3FPZjJUVWdYQUZhOFg2c0lGNDBQcXFy?=
 =?utf-8?B?MlhOMkdmUzZUMW5jOFFGaS9HYUNXU05wQnFXS0laMWV3cWwyaFBhZlVkU2Ro?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd13a0f5-ad09-46ed-4e63-08da86123ef2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 20:50:15.1665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fRwM7OSz37id5D0+DXDYg0cgy7aqHFkJcVYbswRiN9CfEHOmza9z/9zHAt/M2IfYN0ESS0L3fIW0sWTA6y/xdd6LaDN24rMs/LrVrSmtxRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1864
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661374223; x=1692910223;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p7qJUgL8UfqVGXBRHjLUPj4dEYJ2LlVxwjAHOL9rx8I=;
 b=DrHCkTAIHwUsBeog7tpM1bYT4spVgRsEOAlcjy/HovVUn1b+n9Z6gSb+
 GyEyaVdN2yTL/Lcsf2Sv9IyfmjgQF7kTAqg6iB2GvCuAgGGbsMkecG+1M
 3110bZknphoIVURBl7AZwjiR8ZcLvJ7MrRr3GQhF02p+QO+4p+yLHJVXw
 PHy3lor1MAP0f4e5VkQT70OJuPgrR1kDQ9lHE92ZqjIa1bP4P/GW1yXI7
 27T0buzfV2wOXaBicZS982DOFYZTPKDDpFTUxcksK4CEcdbpiDxlRzGVI
 fdAt99g8dkxteCACyTgSXsEe/A/i5hXYG4YoNym/l2D1rF3SXfZJ5+7gM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DrHCkTAI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix ethtool rx-flow-hash
 setting for X722
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/24/2022 4:37 AM, Mateusz Palczewski wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> When enabling flow type for RSS hash via ethtool:
> 
> ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d
> 
> the driver would fail to setup this setting on X722
> device since it was using the mask on the register
> dedicated for X710 devices.
> 
> Implement a bitmap to collect the flow pc types that
> shall be applied on the inset and hena registers.

I believe this is no longer here.

> Apply a different mask on the register when setting the
> RSS hash for the X722 device.
> 
> When displaying the flow types enabled via ethtool:
> 
> ethtool -n $pf rx-flow-hash tcp4|tcp6|udp4|udp6
> 
> the driver would print wrong values for X722 device.
> 
> Fix this issue by testing masks for X722 device in
> i40e_get_rss_hash_opts function.

Seems redundant of the first part. I think you could work this into 
first portion and not repeat it here.

> 

Where's the Fixes:?

> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---

<snip>

> @@ -3554,7 +3561,9 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
>    *
>    * Returns value of bits to be set per user request
>    **/
> -static u64 i40e_get_rss_hash_bits(struct ethtool_rxnfc *nfc, u64 i_setc)
> +static u64 i40e_get_rss_hash_bits(struct i40e_hw *hw,
> +				  struct ethtool_rxnfc *nfc,
> +				  u64 i_setc)

Need to update the kdoc.

>   {
>   	u64 i_set = i_setc;
>   	u64 src_l3 = 0, dst_l3 = 0;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
