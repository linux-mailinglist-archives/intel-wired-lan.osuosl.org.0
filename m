Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F43F586E14
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Aug 2022 17:52:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DBF6404EB;
	Mon,  1 Aug 2022 15:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DBF6404EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659369167;
	bh=e657G66PbNiRXw2l+8scFWUvUWb1QygJ1SuxCFg8zX8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bhjju9P6ox+wjQbOXv7ceFudACDSb3zITwZkouie1id4GbGXiFKuhUxKUI80C7JtU
	 mqLB4PouiBNacBCkBE1aoXRraKrqagy7zk8lpsJnrOx12PLa4It1Li6R2edrpoJLhz
	 oPXHzAAEPEGLuBY94i3BhRsI5Btx/vQ2u7IkPvmYRe7B6/gXY8kzmm2u4w8p2NNfX2
	 p1Mj0nJbhO8+VmFbZcVTBZOFXARX07r6FHX8mEjT8MK5eCblR8n7tz8tLXdRcvQa+A
	 cPVvEYMUl86KSddNiBvSqGiROaZgojdjW3hmqKfnCfNF0UEdO8Ebq2HBttqUcRzHvw
	 idNFRmBecPkHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1uQKMYNZkgyK; Mon,  1 Aug 2022 15:52:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AC6B404E5;
	Mon,  1 Aug 2022 15:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AC6B404E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C95A91BF343
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 15:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DD3782423
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 15:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DD3782423
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcS_Y_Oht4Ng for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Aug 2022 15:52:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C37780BE7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C37780BE7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 15:52:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="290389637"
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="290389637"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 08:52:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="847871043"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 01 Aug 2022 08:52:31 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 08:52:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 08:52:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 08:52:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 08:52:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lX+naudiTGwEC1OVEa4tbvfoOEznn1PN8h/UBOyd/sVWOIDjXSa7yYCaBmP6BO0jX41+IJoEjdFNNjgTaSO+M6t994myzPwsax8N3+CG/aReorIN9qVCAB8VifOwXVWnfLHKPsq+SJ7YpQOawWrmaNuoHbV+rAiGHWJRDP0S/VXdPQV59QN/6xjoR5glA8AJmGjVsJvGnP+7sqkvBxsfuct/GznM2ED2DQm51/ME6PLmiTQkGWR1IuFf3bD6N2+hGVD9Jjnad4gqLu/DApCAK/w8A5iUSPzxSSu/FxyLIJEnBbGU3qINrCFsXWDEjOcuDAR3YOx/7M0SMmtQcQ4bBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7bp4Lg2NeFFU0qYwJpCkIAKg0cpN1LqIGQmExWXnZ/E=;
 b=Usee4pbyi4pITK2KErPThyvlrLOhHLR0vLTlEKybqTGV0XbEnz6I91NOG7SJ1BCzmszCn4mBFEICGytIAjFr133izvCjlX2Kh0hrwJND6cXs9MIqp0bRKpcS1Ma6hYsutd8fuMHBJlEyZCuoTUWX4UHqC5lYgV4GigsoUwcBj/VmgfTvw/nrGuglFQstOozA2h1Mncdat+8byOZUcJLENeASCo0CGTLnfyXcrct5m/vHmkACM+JNOs01+Fs7n2xlewePy/fPK0UhObc5M1g5cw60B/+oW09No02K6guZwH6+b17ZtGT1e2WyUlBd1glwYU/w5H2HDqdI/eeZw6CgzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB5873.namprd11.prod.outlook.com (2603:10b6:806:228::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.15; Mon, 1 Aug
 2022 15:52:28 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5482.014; Mon, 1 Aug 2022
 15:52:28 +0000
Message-ID: <9550278f-63b7-ee6a-5e4a-911d9d3202cc@intel.com>
Date: Mon, 1 Aug 2022 08:52:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
 <20220728140426.664140-4-anatolii.gerasymenko@intel.com>
 <5847d865-6959-9ff7-a92a-dffdc503b780@intel.com>
 <398129b2-be77-fe06-b58d-34e53c219d17@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <398129b2-be77-fe06-b58d-34e53c219d17@intel.com>
X-ClientProxiedBy: BYAPR11CA0108.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::49) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98d3b342-0ec2-464a-93f2-08da73d5d5f2
X-MS-TrafficTypeDiagnostic: SA1PR11MB5873:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HElPcvjq0ipreQJkaKKzNaSBTtiNrw/W6TX0CC+arfB15fHGdOWleeX1oIMryLkDUNCcNZEFW/d/Vok5QHUIaF/jIyxDPk7MBIZHQDGBCIaNKE0cR1TzLnMKuo3XlHUm+yUd/YOkyJU36wOHGPf4MNyPiFz9SCYXdThR2YEOzC+ZJJFEwYClVz56lX9Ru0GFCR6eDwsxY5oUJYqRChO3/RgpOn2pxxkNbOAlGBipLtzWdMztYXZfS/TIkbnRu9GafiST6H8xcLoPczOrrH7MGR8shr+66OktXGvTTOPJybbosDkOQSZoylyC8AOyCBMIEGqO0iMrKEF83XLdpbXo6BlvjENmf1T9PH1lZVUT1pMLYB15JBnKzd1LkGzFrSLXvYcEgzvdx6OOg88cKrYIHizgMRZgdsNDI5tR7WplGCkHXOYV7h6tLzytqskLWQo/MuF9KyJvqjm064q9fLeN/IElfJ0Sg60MS7FzltQq/Sd9NFkDLqNB9NuH/Mufs0zsIwPCsvWieQdDJg4t4NRpHkdPjIr2HqQA7KXP0L6YSxtpFH7rhK9NJdLy2CTLaEpu24DxaxxpQyC78F0wLAzSWR9v1FLob0m2n2Adu93RzkG1ebX2Zxnn3Eb/cgh2fIxYlHWbW7oez9oWDLVgozbJoXfysXUNy/pQEqzUnXN5ag7d+/ccdSeBwiQL6mMkDDI+JB88wE7T19X3hEAzT8UYCBmYaSonk+BCsop75gGIP0VIf5gEuwD+q+38J4yPqsA7O7KZaTQo3rMQGZKCg4H/Ird0I/sJ7eK4KQlH5ItqKZpz9mt3Ge2XYHCfuyYdehRisNjzPpQMEMZpqnC3KdhhcANiafAnLQhxLHEN6CmjBoYauyjgg5jxZCN47SgvPPcFXNP3MzGRvdjxCn3/qMK+AQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(39860400002)(136003)(366004)(396003)(31686004)(36756003)(316002)(31696002)(186003)(38100700002)(82960400001)(2616005)(83380400001)(86362001)(966005)(2906002)(478600001)(6486002)(5660300002)(66476007)(8676002)(66946007)(66556008)(41300700001)(6506007)(53546011)(8936002)(26005)(6666004)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGxEWUwrWGM2TVh5OFh0ei9Cd2JNMGF2dUZ2Njl1aGdKek1UdHhoRml2dWVz?=
 =?utf-8?B?NVlnRGxRM0RTRUpSeG1MYjBmZUUyRUM4TFMvQmdldTVscFdHVXpwV1huNmFY?=
 =?utf-8?B?Z1VSMklMOWhWd201dVNuM2ZjdEczU2lrdkVERjl6SjdJcW5EdWJBUElhMzVk?=
 =?utf-8?B?clVrT1hCREFCbGhqdHdqZlZPL1p1Vi9lVEZqVmo4Q1ZNanFqcWxyL1hWaU1G?=
 =?utf-8?B?b2poanFGeCtQbHUyWUpHTXF3Rk04TGJkdDV2aDBhU05QL05qSGp3TXdaOStp?=
 =?utf-8?B?TWo4ckxnRXZaVTBpa2ovck5WUjdtQ3o1WEF5cElYdEJVcW1TSG5Uai9vc3dB?=
 =?utf-8?B?SmczRHFjdlhkajBmMGdMWDBIb2xRalJ3bmdLcGJmVU5VdWZtUXk5aFhmTFhZ?=
 =?utf-8?B?aFl6KzVlNHlvcDdXN1ZvNGoyN2UxRkovdUdIWVA3T3lFK1VoQjFVMmk2bEVj?=
 =?utf-8?B?UWI4TjBIS1Rvckh3TlBZU3NqczVmbXo0RVlkVnNkMGYyeXJRd0hoQUdiOG1h?=
 =?utf-8?B?Ulk3QjZSUXd0NzJVaFoxNGhUbjZzZlVUTTdDQzZJUE9mS3RBWDdYektKS2JK?=
 =?utf-8?B?bVhWS2xkcjFoQnJMTVA2UUNEUXhUS2R4T1Vndkl6ZWVrQmFwWXk0WW9UL0Uy?=
 =?utf-8?B?dzdFdWUyODAxQzVlOG9COTRWcmNJdDdMSkNhU2dhYlFlOHJPY2phL1BMSVIv?=
 =?utf-8?B?ellFbkhsR1F0SWRrcnhsQndtZkVoUW9hNFRWQ2JtTWV3UWUvWFgxbEgyaTZ6?=
 =?utf-8?B?TjJST1RCQ1V2MjRRbFd0cm9sWGxnYi9MRzI4RVVYS1ZWOEM2YlVicmhzVTMr?=
 =?utf-8?B?MVZid1l6NjFMVVl2WHUwL0dtVkpxSnRSUzl1OUdiM1dPaXVQQTBUTUV0MjhX?=
 =?utf-8?B?cEY2eUpZeHRxSVJHTUk2R2w2S1lwaTJFKzVMTER3dFN6S1dMdXFBemdncFJT?=
 =?utf-8?B?OUlPcVhpc1hXcTZCTm83U2pRUW5yWVdKeCtiOUFJZjI0UmlZTUdCZDY5VGdX?=
 =?utf-8?B?K2tmV3VjazdnSWZLU21vZXZPelA1ZGdqUDF3MDFkOVFtdko5bmo2S2lZTXFj?=
 =?utf-8?B?VFZocmUvNkVCQ2VnV3dmSm5nSURSZm5wTmF2RGhBM1ZGek8vdHRNbGY2V0tP?=
 =?utf-8?B?T2dqRVlPc1I3aEpuVW0wREZBNkw1eHd5eFltbTI0S0FtU1dkVStLWkNNTkho?=
 =?utf-8?B?U3Y2ZFRqYXhzYXdvZDgyOXhxd1AxT2ZyWFpEM3ErL05GaHEvMkd1SmR4eXZk?=
 =?utf-8?B?eTZjOUhMM0kxQ2c3THRHZ2VPUjdmN3JFdUpwaVJUVHhrcXZ2bXZaSU1TalR0?=
 =?utf-8?B?YlpNMFhzM2ZOSHpWckpjVDEwNXJ6ZlhsMjJsZFpXWDU0L0I3Nkh1Rmt2Y2hT?=
 =?utf-8?B?cE4zSmVreWtPdVBYN2FOb25CNzhLT085NDE4dUg3NWMzeTYvdEV4Z1YvQW00?=
 =?utf-8?B?T0FjYU1ySG90THNvdkNyMW93MnNlK2Jab1ZhWmlUTHJtay91dUNwRjlmM1pW?=
 =?utf-8?B?QUkwRnZOclRXOHdKbERSeCtNQmh3YXlqcmNCcmVPY1JXVmxMSUpjYmh6VkFx?=
 =?utf-8?B?QjVUcWJuUnNWd2liNTBTdzBMczlNbWJTaFY4MEYySkpnK3dsS0lqb1NmSWNS?=
 =?utf-8?B?WWM3VHRhT3VEazZ3YmVtVUUwOERkdG1FNG9CY0dRWjFBMkt2ZHBqb1RVbHB4?=
 =?utf-8?B?RHM0RndRUjc4RWpPdXlYNEkzems2cHZVU1AwSUhxWm55eDFpejMxOFczQW9Y?=
 =?utf-8?B?aThibCsySlZhMm95akNoaHg0VEdud1l1SW1QM1VKQTVwbjNoSmpQT1dhaGxu?=
 =?utf-8?B?c3NLV2dyMVVCbHlxWFBROXBiRFRXLzFxZzZpbCtUQ1UxVlhyMjVYdkNaeGxD?=
 =?utf-8?B?U1U1YkpzdG4yY1UxcFNnNWtGQWdHQmd5V3JkSFJybzlaSnJ1WlVPQkdDb3Zp?=
 =?utf-8?B?dGwvOU9wSUtIa1A5NkxPQUpQYlBsTHNoNFhvS09aY1Y5U0lWVTVwcXBOMFlu?=
 =?utf-8?B?Z2NWSC9DWFJ6dWNRUjlzZCtXTUQ1MVpxcUE0MisxRXVxY1ZycnoxdnF0VWtI?=
 =?utf-8?B?a1NmVlhub2UyWWEzdUZUd1ZBUGtCWGg1NnFEcE8ySVRCb3lXRE1WNjh6UTMr?=
 =?utf-8?B?ZkxjekNiUkkvbCs0S3FscW5XM2s5QldvTE1CUDVNN2Q1cDZJc3VXaWVtUkwz?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98d3b342-0ec2-464a-93f2-08da73d5d5f2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 15:52:28.3050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pI2LkGUJEOQpio2W24d0IJaSL0u7766ViSstK+p8x8gMXaQ1jYQN8I8TA3rQnWhXN6/GsEEVy+QMAOKpQv7TNFw3BU9ZhKIIlQRuaxghgFE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659369158; x=1690905158;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=q+gX8NJLlEt/i2U3sbYrQn7Ic1hbLJOR8cevS6QWAk4=;
 b=EGOfcgmqeeKo/f0qNCag8hxqYt8RoVdVWXW5vHnbRaB3yGiDOyU7QSvK
 Q0EXgvqt8kzi38mNSRUFwQZ4kC14utsmxldh42PInb9dN3zB2t+G/GWwY
 P5Jm8eZ0alr8sjbBSp7nWQbjg4HUuLX1uASthmHNhKPKDhpvfpvKtjuN9
 MgfoYL0C/O8BQL4X2de141ljyYixl02GvAGIle//mQqnzUjIjqeCx/cqN
 z2POwxwKMSjn7i31jnjApCrbCLtLt3UEPSGKFlBGrpsXpiBPYOtD1+8b6
 KNExEnrkphjqjw0loyAvIlV3B6sVVfTUgAbe/7IR+VAXAypis/eC2F8m2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EGOfcgmq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] ice: Handle LLDP MIB
 Pending change
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA4LzEvMjAyMiAxOjA2IEFNLCBBbmF0b2xpaSBHZXJhc3ltZW5rbyB3cm90ZToKPiBPbiAy
OS4wNy4yMDIyIDIwOjU1LCBUb255IE5ndXllbiB3cm90ZToKPj4KPj4KPj4gT24gNy8yOC8yMDIy
IDc6MDQgQU0sIEFuYXRvbGlpIEdlcmFzeW1lbmtvIHdyb3RlOgo+Pj4gSWYgdGhlIG51bWJlciBv
ZiBUcmFmZmljIENsYXNzZXMgKFRDKSBpcyBkZWNyZWFzZWQsIHRoZSBGVyB3aWxsIG5vCj4+PiBs
b25nZXIgcmVtb3ZlIFRDIG5vZGVzLCBidXQgd2lsbCBzZW5kIGEgcGVuZGluZyBjaGFuZ2Ugbm90
aWZpY2F0aW9uLiBUaGlzCj4+PiB3aWxsIGFsbG93IFJETUEgdG8gZGVzdHJveSBjb3JyZXNwb25k
aW5nIENvbnRyb2wgUVAgbWFya2Vycy4gQWZ0ZXIgUkRNQQo+Pj4gZmluaXNoZXMgb3V0c3RhbmRp
bmcgb3BlcmF0aW9ucywgdGhlIGljZSBkcml2ZXIgd2lsbCBzZW5kIGFuIGV4ZWN1dGUgTUlCCj4+
PiBQZW5kaW5nIGNoYW5nZSBhZG1pbiBxdWV1ZSBjb21tYW5kIHRvIEZXIHRvIGZpbmlzaCBEQ0Ig
Y29uZmlndXJhdGlvbgo+Pj4gY2hhbmdlLgo+Pj4KPj4+IFRoZSBGVyB3aWxsIGJ1ZmZlciBhbGwg
aW5jb21pbmcgUGVuZGluZyBjaGFuZ2VzLCBzbyB0aGVyZSBjYW4gYmUgb25seQo+Pj4gb25lIGFj
dGl2ZSBQZW5kaW5nIGNoYW5nZS4KPj4+Cj4+PiBSRE1BIGRyaXZlciBndWFyYW50ZWVzIHRvIHJl
bW92ZSBDb250cm9sIFFQIG1hcmtlcnMgd2l0aGluIDUwMDAgbXMuCj4+PiBIZW5jZSwgTExEUCBy
ZXNwb25zZSB0aW1lb3V0IHR4VFRMIChkZWZhdWx0IDMwIHNlYykgd2lsbCBiZSBtZXQuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogQW5hdG9saWkgR2VyYXN5bWVua28gPGFuYXRvbGlpLmdlcmFzeW1l
bmtvQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gIMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfZGNiX2xpYi5jIHwgMjUgKysrKysrKysrKysrKysrKysrLS0KPj4+ICDCoCAxIGZp
bGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2JfbGliLmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RjYl9saWIuYwo+Pj4gaW5kZXggMWM1
NGViNjQzYjZmLi5mMTZlNGM1NDQwOWYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2RjYl9saWIuYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9kY2JfbGliLmMKPj4+IEBAIC05MzMsNiArOTMzLDE2IEBAIGljZV90
eF9wcmVwYXJlX3ZsYW5fZmxhZ3NfZGNiKHN0cnVjdCBpY2VfdHhfcmluZyAqdHhfcmluZywKPj4+
ICDCoMKgwqDCoMKgIH0KPj4+ICDCoCB9Cj4+PiAgwqAgKy8qKgo+Pj4gKyAqIGljZV9kY2JfaXNf
bWliX2NoYW5nZV9wZW5kaW5nIC0gQ2hlY2sgaWYgTUlCIGNoYW5nZSBpcyBwZW5kaW5nCj4+PiAr
ICogQHN0YXRlOiBNSUIgY2hhbmdlIHN0YXRlCj4+PiArICovCj4+PiArc3RhdGljIGlubGluZSBi
b29sIGljZV9kY2JfaXNfbWliX2NoYW5nZV9wZW5kaW5nKHU4IHN0YXRlKQo+Pgo+PiBObyAnaW5s
aW5lJyBpbiAuYyBmaWxlcwo+Pgo+IAo+IENhbm5vdCBmaW5kIHN1Y2ggcnVsZSBpbiB0aGUgY29k
aW5nIHN0eWxlLiBJcyB0aGlzIHNvbWUga2luZCBvZiB0YWNpdCBhZ3JlZW1lbnQ/CgpJdCdzIGEg
cmVxdWlyZW1lbnQgb2YgbmV0ZGV2LiBJZiB5b3Ugc2VhcmNoIGFyY2hpdmUgaGlzdG9yeSwgeW91
IGNhbiAKZmluZCBwbGVudHkgb2YgY29tbWVudHMgb24gaXQgKGEgY291cGxlIG9mIGV4YW1wbGVz
IFsxXVsyXSkuIEl0J3MgYWxzbyAKc29tZXRoaW5nIHNwZWNpZmljYWxseSBjaGVja2VkIGZvciBv
biBuZXRkZXYgQ0kgWzNdOyBub3RlIHRoZSAKJ25ldGRldi9zb3VyY2VfaW5saW5lJyBjaGVjay4K
Cj4gU28sIGp1c3QgcmVtb3ZlIGlubGluZSBoaW50IGFuZCBsZWF2ZSB0aGUgZnVuY3Rpb24gc3Rh
dGljPyBPciBtb3ZlIGl0IGFzIHN0YXRpYyBpbmxpbmUgdG8gKi5oPwoKSnVzdCByZW1vdmUgdGhl
IGlubGluZSBoaW50IGFuZCBsZWF2ZSB0aGUgZnVuY3Rpb24gc3RhdGljLgoKPiBUaGUgZnVuY3Rp
b24gaXMgb25seSB1c2VkIGluIHRoaXMgKi5jIGZpbGUgYW5kIGRvZXNuJ3QgbmVlZCB0byBiZSBl
eHBvcnRlZC4KPiAKPj4+ICt7Cj4+PiArwqDCoMKgIHJldHVybiBJQ0VfQVFfTExEUF9NSUJfQ0hB
TkdFX1BFTkRJTkcgPT0KPj4+ICvCoMKgwqDCoMKgwqDCoCBGSUVMRF9HRVQoSUNFX0FRX0xMRFBf
TUlCX0NIQU5HRV9TVEFURV9NLCBzdGF0ZSk7Cj4+PiArfQo+Pj4gKwo+Pgo+PgoKWzFdIApodHRw
czovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMDA3MzEuMTQyNTM4Ljg2ODE5Njk3OTg5Mzky
MDI0Mi5kYXZlbUBkYXZlbWxvZnQubmV0LwpbMl0gCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25l
dGRldi8yMDIwMTAxMTEyMjQyMi41NmJlYWNhYUBraWNpbnNraS1mZWRvcmEtcGMxYzBoam4uZGhj
cC50aGVmYWNlYm9vay5jb20vClszXSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L25ldGRldmJwZi9wYXRjaC8yMDIyMDUxNzA3MzI1OS4yMzQ3Ni0yLWhhcmluaS5rYXRha2Ft
QHhpbGlueC5jb20vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
