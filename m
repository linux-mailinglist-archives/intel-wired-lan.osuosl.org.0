Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0A2616FBC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 22:28:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CF2681E7B;
	Wed,  2 Nov 2022 21:28:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CF2681E7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667424480;
	bh=ig0VrWvV/Qn8Eo3d5d7wH5MZHoBg33bt4FLr5t6a0XA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3SMhybwvy73q9wHTUi22orC+jO1Bdycf/5B5TM/BBvEmdg3Oi/2edzI5kFZEeXS+N
	 Xzy78xxRaomzWyYZ/8/U2nu0uMZjxkp0UGwMmeJwmh/892mXIBNlWw/Rba1fHdPoBZ
	 B0Numza6jCXFVtXXlctZ1n2WB2Qrjr+4IQEQB5Ly/Pcd9i8yb7A1N29Q51VJ+HZsvl
	 Ohj1duqQN9Bc4ISTAOBdmiU/moaWGfkPfopGd9BtdYfTDumagM5nkO6Pz9iKkyPpgm
	 8Bpr+9l1/dcdKSE75narxHUzmlKzghbiMuXGLmxw+Puie9qjSyYo91BdR1wHXfcVcu
	 KlnLAcVfkJuhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cnVFOlcR9Jjt; Wed,  2 Nov 2022 21:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2333F81E78;
	Wed,  2 Nov 2022 21:27:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2333F81E78
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EBF71BF2FA
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15427408E3
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15427408E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N0LnFZRUnn4u for <intel-wired-lan@osuosl.org>;
 Wed,  2 Nov 2022 21:27:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC861400D0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC861400D0
 for <intel-wired-lan@osuosl.org>; Wed,  2 Nov 2022 21:27:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309521701"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="309521701"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 14:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="723707737"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="723707737"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Nov 2022 14:27:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 14:27:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 14:27:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 14:27:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 14:27:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VsewRk+rif9dYiOvuIt12xHbWhgYxYNkJu0APGlNiz1DuOxdeD/43ba4QuTaBynEAoDZ62IEpWwwWpLO9YzqRd9gG4qk/4vkW4HYdLvn+6I+pB8U4H8eLNbOr6uoTWwah6hVFiij8eb3mU8Q48lsryxGwKIqQcWB62TOrNrNz3upvyQU2skyna9zomKfgK8dWFybSMrScpOjuBInPw9Inv4WzsDzRgPUq9m1bC5RmHXC3F+rWJnb4P6AF12j8l00MCPrYj+XTmyJb5ZRsYx7hb6c8uw1OWxVZ/o5axNnCU9vUoOoC0cQ4VSBshesMDrBJIIPHt6l2jfy02pVYYsy4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AbqH9lR3OXnQ7/773QUF/FEQUL5Zq3n9CvQ3rlbbqN4=;
 b=PAneUcIenU3kfcNvcibHHCsxH/EG7al4M2ZnBfFcc46ALSGyUPjvhohbhxNfmPf4mTWIhgLl3ydgliGHX/75WB8+C8Vbr1AyxZLzbuNJVOwG1Yewk8Fc74nML/h2nTnrDfEdOKP5Puewhoeb8q4cJ5YB2oww5QYEah0QWPrmuzUQxyDw/V9475rjITfePjV2JZOpjcFJrN/7q+h0MmseZr6IKdUs33h3pBChOj+qItC968I3Q3weo0m8x8sFx1FNxlBIp8NlxeVYLR/QgsR1grZlLdXsNdLjm1Os8HHvNIl1cIRi+b5Qmsa12iuK5lvmRJzi3T3JGnTbJJBeghzUcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by PH0PR11MB4853.namprd11.prod.outlook.com (2603:10b6:510:40::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Wed, 2 Nov
 2022 21:27:49 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::9933:80d3:4e4:c627]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::9933:80d3:4e4:c627%7]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 21:27:49 +0000
Message-ID: <c665240a-3cfa-4eb8-4308-63fd98492faf@intel.com>
Date: Wed, 2 Nov 2022 14:27:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20221020145316.1543-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221020145316.1543-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR05CA0150.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::35) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3224:EE_|PH0PR11MB4853:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e8f195e-2e30-44da-76f9-08dabd1917a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xdSgnhuUbwO5IDdXJ/N6jnH0T4V2L1xKT4PUYSEKffTE4+Ps1fv/+8MuajUhdtbbUm+85gnH95dthW6A+pmg9U7//sJ1SJhADIggyh8lM16Ruh2oJY+dMJya9M8yoWT93cJST8Wom+iZ8X1kCpOQhs8vrTh+K9mRo8T8xIRGGasF1C4somoGRAxpouibvOwxWk0M3cxRW2SSdzxjnO4bp/27q68WmJIo5xKHaNuvfoCGBlh4jF/Z1gjvjJ4G9nLI2uAHKIxwSCU4AkMVJIgDrHfxKFNM8FNQX2LMbqb8F9+EvQDGlqACKXKxpJs+quKZ7EJz/QdIV3F7NkdKaotDTgeSXaMCFx2ojTlzTpC7NJUQj7RAiSjayCZ9MywM2wx0mGoBX0LxzA7TkNPTbELLNdIhvzColrG8vfUw2qylMR6mBiLOEjphjiOCai+3ak9u0o/4JYdSMQe6DjKGsejILFYn8g9tS/ZBQxAPqNg7Zp5WJSOmLq1mfEZeAAqTK8QvwMOovjDLwsBBtL1SXio0rDPk0PcQVYK/9/qm4H54J84X1nzh+rRnCGlcQPl5zMylv0lABoAXddj9SWcWD2bU+BhPOIkeutTF8TAozfbBhgcGiA88x8NC/rlM/x/eOiz/AxHewjNpSOX5c8VVaFIXtTrsF4BaeYgvi8imAEGW0y4aELqMt+vRgo9QhPzo8RrF7DWUnB7IVTKHelyhMYi4Atsr4ArGdCwR0BdXejEITE+gglaB8nYuDOrhlWGf9v9Xzyx4tOziv25iyktHitojedeYFWFjBGPhj5+ifbnTboo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(39860400002)(396003)(376002)(451199015)(8936002)(82960400001)(31686004)(6486002)(478600001)(316002)(107886003)(36756003)(186003)(4326008)(26005)(86362001)(30864003)(41300700001)(38100700002)(6506007)(2906002)(8676002)(66556008)(66476007)(66946007)(53546011)(6512007)(5660300002)(31696002)(2616005)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDhrZ0t2QURrUE1TYmJQSE52SnNRQ3JNcEU4OFNnQWhGYmxNVUtRczRMVUVI?=
 =?utf-8?B?VGRTcExwUHNjOUhjZ0hrWTMrVm1OZ3NURGtJZFhBV3RiVkZUc1czRWRodDVK?=
 =?utf-8?B?WTJwbWtDellnMVhLK1JzcXhjS1hCc0pDRUtyNDRCMW84RS80Tzk1enVLWVdO?=
 =?utf-8?B?ekVVcFF5VnhyKzY0TXVnQ1czQ2tySHNrVWxnSTFSQXM3RW41WTBTMzA1Um4y?=
 =?utf-8?B?SmRrdnIzczVHdGorVUdsZ1RjTzNlUnBrQjEydFNwTDNIWWtVNXZsNjNUU1Vp?=
 =?utf-8?B?ZW1udnAvd2J4VDl5MlJmclpaelVZaThaMDd2TFZhS2dvdlIwd1MreGdmbHc1?=
 =?utf-8?B?eUlVMjZHczNnZ0VXK0p4eFpJT1YwU1ZUNHRCdzdubmhiMVIwU1VQclg1VENO?=
 =?utf-8?B?VWUxY2czdXg1akdJVU9SSzlCMk56cmVoMGYwZ0NqeXVQcC9DWlRvMEVBaFlo?=
 =?utf-8?B?aEFFZEVEM1ZVMlR3Z2liclZZTEQ5UVdueDRpQ1RCUm9XZHZPTFRxUkNTU3J1?=
 =?utf-8?B?WjRyVkRPUTFlc1ZvK0RLdHY2c2NTV242TW96MkJ2clN4WVdyN2prNzJXam5B?=
 =?utf-8?B?SVMxaUthMUJsUUtFVWgzNkdHRy9LTGx6Y0N3UUtTOWtRNUE5d2NFMkd4Z2Ju?=
 =?utf-8?B?WUFrRGsvQno2cE1MS0t2U21zc1FTdU5WaURwVU9CSEZuODF4Ujd3cjY1Wno3?=
 =?utf-8?B?THZ6OFdtbXFaN00yWkVGalZwcU5kNDJWWE1BempxRGdyQ25TVE0rdzdkR1Vs?=
 =?utf-8?B?NlR5clBoTmJDR3UxK2RUbHI0WjRuejJiZGtORVZKSjBrWHFYdkF4c3dwQ0V6?=
 =?utf-8?B?WGxNdjNvM0JJUHpYQU9LWlhiYngyc25NVlBxSGxTbVJoZFU2VGRYV2NwampU?=
 =?utf-8?B?bHYvcGdmZm8vcVM4RWp0cFNpeDlFc3VERTN6NnZuMDNpYitFNUlueWFYWWVX?=
 =?utf-8?B?R2NWQWY4aGhleTBVa3NqSVh4ditmbDB0NG5Fc0JjNlBmSmdWTGRobXZrcmdh?=
 =?utf-8?B?SEdyMWFFTTJxLzd5NTZiakI3KzI4aG9wZ1hlS3FSTDFiWkdvZEFxNGFjTHBW?=
 =?utf-8?B?WVo3OUhQTE1mVCtISUlwbXZnNjFXOTY5N3duQ1JLSWxOcVM0bnI5cEt0cWdz?=
 =?utf-8?B?NHBGUm1JTG5lN3BSalNBNGRZQTl0TnZ3NURyVEY2ZHdZeEtmQXpjQ3hUdElJ?=
 =?utf-8?B?eUN2TEFGQ2ZyR2p6U0k4aHo0QWVIUTBSYkpPTEZXSHpqTk0xM0JSaG81eUJR?=
 =?utf-8?B?bkFLQ3d4QktmQnBKODhCeWIyMmtzZElFNnlSdXBlYkttVi9vclBBeUlqZW5W?=
 =?utf-8?B?N214L3BHZ05Jc3g3OW80cUpOblgwMjhqRVRsaXhTZitVckJyVXpHaXlwS0Iv?=
 =?utf-8?B?cHlEdlhycm5RclNkcE4zeEpXMDZEZldJejJlakNrSzJObXlLdzIrK3pJOSsv?=
 =?utf-8?B?MTVGNllvWGNtSXp0NnVUdzdUVHRadlRON0E5TjJlSkZvRzZ3ZkZucktpaWZC?=
 =?utf-8?B?cmxHTTg4bGsxNjJ0S21jWDB1M0F3bE5lMHNtdW1wVk9DUk1BYnFoYURzd045?=
 =?utf-8?B?bC9pajhkKysyOEFEWTdKUitQb3ZTTGI3V0xDY2dCRFBVNmsvY3kwN2tQT2xt?=
 =?utf-8?B?SXFVRUp5QXVoUko2Ti9naWRhY0hQQThzTDNndGxzYzI0MFdmMXcyUGhEUEhL?=
 =?utf-8?B?aTVJa1V4Sis4UXNoQ0JmRzgvWW9kNWdUejFEVUFOUWxhQTFwV2VXNDJGaFdY?=
 =?utf-8?B?cERMWnpaak1YQkErN1dlZGxsMWNObUROM2JTektrQktmSTYvYjRHR3MyckFK?=
 =?utf-8?B?eFhYZCtPNXdzT3pIQXYxZUdRbWZqZnJIZ3gwTkdjMjRyZGFJaUNjdjVvK0Rr?=
 =?utf-8?B?SVF1aHljN0w1SDdZTEYzaW8zWlovSFZNeVZhRnJtQ1J6NVRpblN5aVhMK3hB?=
 =?utf-8?B?dWV6L29iL2R5blN4QXlsVWVPWWNVUVNQVGNsZ0QyNllubkNuaktwaGpSc2lj?=
 =?utf-8?B?dmgxWmFOVHJVMzFmd1JFYmpzbDYwMWtJMld2bFZIdXpydDJJd0JPb2xTM2I1?=
 =?utf-8?B?YXZwSlY1VnJzeXB5VGpYNTR2TGtWSVMxTitTaUU0THF5RmtPOW1mZ3ZxWXQx?=
 =?utf-8?B?dm9HVmJiRG9lSmp2WEdGa1FoNWxwZUxPUVYweUFoQ3pEUXZGN3V2MDJ1TDVQ?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e8f195e-2e30-44da-76f9-08dabd1917a5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 21:27:49.5992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xvXfDEj4m/m6XAarJz6NWiZK02DGqDFRs07SxmaaUKajMtpU63AYEzf+dBvp1NjNJsAIFP1Uphn1mQK5k1ai9hSGVdJfTg4kbnpGwjL7Ovo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4853
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667424472; x=1698960472;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gTDwA919rwuqgZRRm9EBJl0zTMYaVk4cKcRjYeVZdKM=;
 b=O2piJ9FOnRtLSOx6WOxaYH7S3LcplZZYf+O5LwWau4iIbVLneYY8swxB
 Zo+ceZf0UKXNh0SuMUiYjeY56xnkBBhsJ5I+HOkXCDFEhp5PtyFqpD2vZ
 uGC24UJhEErG4WDyiSaNRxbpT388L22IIXkT1TP058pvpdkzVJYHqP4Yp
 XW22OXnQeCxhgwVfG+H7ah+6rGlDKBzBe6s58uaKzU3QsBGOTYEYKiksi
 27wJxYdsAQtq2if1r+r9u8CieS8tmEbgXCCfX95Gmj+08U00GzDH7e3PS
 lUbQpd7FfUOT3kJgVoyVff+oy0PeGkEhzLPvetD6AJf3RvOTxmYGM6rKi
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O2piJ9FO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Qbv scheduling enchancement
 using frst flag bit
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
Cc: mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/20/2022 7:53 AM, Muhammad Husaini Zulkifli wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> The I225 hardware has a limitation that packets can only be scheduled
> in the [0, cycle-time] interval. So, scheduling a packet to the start
> of the next cycle doesn't usually work.
> 
> To overcome this, we use the Transmit Descriptor frst flag to indicates
> that a packet should be the first packet (from a queue) in a cycle
> according to the section 7.5.2.9.3.4 The First Packet on Each QBV Cycle
> in Intel Discrete I225/6 User Manual.
> 
> But this only works if there was any packet from that queue during the
> current cycle, to avoid this issue, we issue an empty packet if that's
> not the case. Also require one more descriptor to be available, to take
> into account the empty packet that might be issued.
> 
> Test Setup:
> 
> Talker: Use l2_tai to generate the launchtime into packet load.
> 
> Listener: Use timedump.c to compute the delta between packet arrival
> and LaunchTime packet payload.
> 
> Test Result:
> 
> Before:
> 
> 1666000610127300000,1666000610127300096,96,621273
> 1666000610127400000,1666000610127400192,192,621274
> 1666000610127500000,1666000610127500032,32,621275
> 1666000610127600000,1666000610127600128,128,621276
> 1666000610127700000,1666000610127700224,224,621277
> 1666000610127800000,1666000610127800064,64,621278
> 1666000610127900000,1666000610127900160,160,621279
> 1666000610128000000,1666000610128000000,0,621280
> 1666000610128100000,1666000610128100096,96,621281
> 1666000610128200000,1666000610128200192,192,621282
> 1666000610128300000,1666000610128300032,32,621283
> 1666000610128400000,1666000610128301056,-98944,621284
> 1666000610128500000,1666000610128302080,-197920,621285
> 1666000610128600000,1666000610128302848,-297152,621286
> 1666000610128700000,1666000610128303872,-396128,621287
> 1666000610128800000,1666000610128304896,-495104,621288
> 1666000610128900000,1666000610128305664,-594336,621289
> 1666000610129000000,1666000610128306688,-693312,621290
> 1666000610129100000,1666000610128307712,-792288,621291
> 1666000610129200000,1666000610128308480,-891520,621292
> 1666000610129300000,1666000610128309504,-990496,621293
> 1666000610129400000,1666000610128310528,-1089472,621294
> 1666000610129500000,1666000610128311296,-1188704,621295
> 1666000610129600000,1666000610128312320,-1287680,621296
> 1666000610129700000,1666000610128313344,-1386656,621297
> 1666000610129800000,1666000610128314112,-1485888,621298
> 1666000610129900000,1666000610128315136,-1584864,621299
> 1666000610130000000,1666000610128316160,-1683840,621300
> 1666000610130100000,1666000610128316928,-1783072,621301
> 1666000610130200000,1666000610128317952,-1882048,621302
> 1666000610130300000,1666000610128318976,-1981024,621303
> 1666000610130400000,1666000610128319744,-2080256,621304
> 1666000610130500000,1666000610128320768,-2179232,621305
> 1666000610130600000,1666000610128321792,-2278208,621306
> 1666000610130700000,1666000610128322816,-2377184,621307
> 1666000610130800000,1666000610128323584,-2476416,621308
> 1666000610130900000,1666000610128324608,-2575392,621309
> 1666000610131000000,1666000610128325632,-2674368,621310
> 1666000610131100000,1666000610128326400,-2773600,621311
> 1666000610131200000,1666000610128327424,-2872576,621312
> 1666000610131300000,1666000610128328448,-2971552,621313
> 1666000610131400000,1666000610128329216,-3070784,621314
> 1666000610131500000,1666000610131500032,32,621315
> 1666000610131600000,1666000610131600128,128,621316
> 1666000610131700000,1666000610131700224,224,621317
> 
> After:
> 
> 1666073510646200000,1666073510646200064,64,2676462
> 1666073510646300000,1666073510646300160,160,2676463
> 1666073510646400000,1666073510646400256,256,2676464
> 1666073510646500000,1666073510646500096,96,2676465
> 1666073510646600000,1666073510646600192,192,2676466
> 1666073510646700000,1666073510646700032,32,2676467
> 1666073510646800000,1666073510646800128,128,2676468
> 1666073510646900000,1666073510646900224,224,2676469
> 1666073510647000000,1666073510647000064,64,2676470
> 1666073510647100000,1666073510647100160,160,2676471
> 1666073510647200000,1666073510647200256,256,2676472
> 1666073510647300000,1666073510647300096,96,2676473
> 1666073510647400000,1666073510647400192,192,2676474
> 1666073510647500000,1666073510647500032,32,2676475
> 1666073510647600000,1666073510647600128,128,2676476
> 1666073510647700000,1666073510647700224,224,2676477
> 1666073510647800000,1666073510647800064,64,2676478
> 1666073510647900000,1666073510647900160,160,2676479
> 1666073510648000000,1666073510648000000,0,2676480
> 1666073510648100000,1666073510648100096,96,2676481
> 1666073510648200000,1666073510648200192,192,2676482
> 1666073510648300000,1666073510648300032,32,2676483
> 1666073510648400000,1666073510648400128,128,2676484
> 1666073510648500000,1666073510648500224,224,2676485
> 1666073510648600000,1666073510648600064,64,2676486
> 1666073510648700000,1666073510648700160,160,2676487
> 1666073510648800000,1666073510648800000,0,2676488
> 1666073510648900000,1666073510648900096,96,2676489
> 1666073510649000000,1666073510649000192,192,2676490
> 1666073510649100000,1666073510649100032,32,2676491
> 1666073510649200000,1666073510649200128,128,2676492
> 1666073510649300000,1666073510649300224,224,2676493
> 1666073510649400000,1666073510649400064,64,2676494
> 1666073510649500000,1666073510649500160,160,2676495
> 1666073510649600000,1666073510649600000,0,2676496
> 1666073510649700000,1666073510649700096,96,2676497
> 1666073510649800000,1666073510649800192,192,2676498
> 1666073510649900000,1666073510649900032,32,2676499
> 1666073510650000000,1666073510650000128,128,2676500
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Co-developed-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Co-developed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Malli C <mallikarjuna.chilakala@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

Your sign off is on here twice

> ---
>   drivers/net/ethernet/intel/igc/igc.h         |   2 +
>   drivers/net/ethernet/intel/igc/igc_defines.h |   2 +
>   drivers/net/ethernet/intel/igc/igc_main.c    | 185 ++++++++++++++++---
>   3 files changed, 159 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 1e7e7071f64d..66a57636d329 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -94,6 +94,8 @@ struct igc_ring {
>   	u8 queue_index;                 /* logical index of the ring*/
>   	u8 reg_idx;                     /* physical index of the ring */
>   	bool launchtime_enable;         /* true if LaunchTime is enabled */
> +	ktime_t last_tx_cycle;          /* end of the cycle with a launchtime transmission */
> +	ktime_t last_ff_cycle;          /* Last cycle with an active first flag */
>   
>   	u32 start_time;
>   	u32 end_time;
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index f7311aeb293b..a7b22639cfcd 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -321,6 +321,8 @@
>   #define IGC_ADVTXD_L4LEN_SHIFT	8  /* Adv ctxt L4LEN shift */
>   #define IGC_ADVTXD_MSS_SHIFT	16 /* Adv ctxt MSS shift */
>   
> +#define IGC_ADVTXD_TSN_CNTX_FIRST	0x00000080
> +
>   /* Transmit Control */
>   #define IGC_TCTL_EN		0x00000002 /* enable Tx */
>   #define IGC_TCTL_PSP		0x00000008 /* pad short packets */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 671255edf3c2..28cc395c6fff 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1000,31 +1000,122 @@ static int igc_write_mc_addr_list(struct net_device *netdev)
>   	return netdev_mc_count(netdev);
>   }
>   
> -static __le32 igc_tx_launchtime(struct igc_adapter *adapter, ktime_t txtime)
> +static __le32 igc_tx_launchtime(struct igc_ring *ring, ktime_t txtime,
> +				bool *first_flag, bool *insert_empty)
>   {
> +	struct igc_adapter *adapter = netdev_priv(ring->netdev);
>   	ktime_t cycle_time = adapter->cycle_time;
>   	ktime_t base_time = adapter->base_time;
> -	u32 launchtime;
> +	ktime_t now = ktime_get_clocktai();
> +	ktime_t baset_est, end_of_cycle;
> +	s64 n;
>   
> -	/* FIXME: when using ETF together with taprio, we may have a
> -	 * case where 'delta' is larger than the cycle_time, this may
> -	 * cause problems if we don't read the current value of
> -	 * IGC_BASET, as the value writen into the launchtime
> -	 * descriptor field may be misinterpreted.
> +	n = div64_s64(ktime_sub_ns(now, base_time), cycle_time);
> +
> +	baset_est = ktime_add_ns(base_time, cycle_time * (n));
> +	end_of_cycle = ktime_add_ns(baset_est, cycle_time);
> +
> +	if (ktime_compare(txtime, end_of_cycle) >= 0) {
> +		if (baset_est != ring->last_ff_cycle) {
> +			*first_flag = true;
> +			ring->last_ff_cycle = baset_est;
> +
> +			if (ktime_compare(txtime, ring->last_tx_cycle) > 0)
> +				*insert_empty = true;
> +		}
> +	}
> +
> +	/* Introducing a window at end of cycle on which packets
> +	 * potentially not honor launchtime. Window of 5us chosen
> +	 * considering software update the tail pointer and packets
> +	 * are dma'ed to packet buffer.
>   	 */
> -	div_s64_rem(ktime_sub_ns(txtime, base_time), cycle_time, &launchtime);
> +	if ((ktime_sub_ns(end_of_cycle, now) < 5 * NSEC_PER_USEC)) {
> +		netdev_warn(ring->netdev, "Packet with txtime=%llu may not be honoured\n",
> +			    txtime);
> +	}

nit: These braces aren't needed

> +
> +	ring->last_tx_cycle = end_of_cycle;
> +
> +	txtime = ktime_sub_ns(txtime, baset_est);
> +	txtime = (txtime > 0 ? txtime % cycle_time : 0);

The parentheses as well I believe

> +
> +	return cpu_to_le32(txtime);
> +}
> +
> +static int igc_init_empty_frame(struct igc_ring *ring,
> +				struct igc_tx_buffer *buffer,
> +				struct sk_buff *skb)
> +{
> +	dma_addr_t dma;
> +	unsigned int size;

Please reorder to be RCT

> +
> +	size = skb_headlen(skb);
> +
> +	dma = dma_map_single(ring->dev, skb->data, size, DMA_TO_DEVICE);
> +	if (dma_mapping_error(ring->dev, dma)) {
> +		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
> +		return -ENOMEM;
> +	}
> +
> +	buffer->skb = skb;
> +	buffer->protocol = 0;
> +	buffer->bytecount = skb->len;
> +	buffer->gso_segs = 1;
> +	buffer->time_stamp = jiffies;
> +	dma_unmap_len_set(buffer, len, skb->len);
> +	dma_unmap_addr_set(buffer, dma, dma);
> +
> +	return 0;
> +}
> +
> +static int igc_init_tx_empty_descriptor(struct igc_ring *ring,
> +					struct sk_buff *skb,
> +					struct igc_tx_buffer *first)
> +{
> +	union igc_adv_tx_desc *desc;
> +	u32 cmd_type, olinfo_status;
> +	int err;
> +
> +	if (!igc_desc_unused(ring))
> +		return -EBUSY;
>   
> -	return cpu_to_le32(launchtime);
> +	err = igc_init_empty_frame(ring, first, skb);
> +	if (err)
> +		return err;
> +
> +	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> +		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
> +		   first->bytecount;
> +	olinfo_status = first->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
> +
> +	desc = IGC_TX_DESC(ring, ring->next_to_use);
> +	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> +	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(first, dma));
> +
> +	netdev_tx_sent_queue(txring_txq(ring), skb->len);
> +
> +	first->next_to_watch = desc;
> +
> +	ring->next_to_use++;
> +	if (ring->next_to_use == ring->count)
> +		ring->next_to_use = 0;
> +
> +	return 0;
>   }
>   
> +#define IGC_EMPTY_FRAME_SIZE 60
> +
>   static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
> -			    struct igc_tx_buffer *first,
> +			    __le32 launch_time, bool first_flag,
>   			    u32 vlan_macip_lens, u32 type_tucmd,
>   			    u32 mss_l4len_idx)
>   {
>   	struct igc_adv_tx_context_desc *context_desc;
> -	u16 i = tx_ring->next_to_use;
> +	u16 i;
>   
> +	i = tx_ring->next_to_use;

What's the reason for this change?

>   	context_desc = IGC_TX_CTXTDESC(tx_ring, i);
>   
>   	i++;

>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
