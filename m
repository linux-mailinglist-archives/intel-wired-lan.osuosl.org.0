Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF981B8A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 14:49:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ED33615BC;
	Thu, 21 Dec 2023 13:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ED33615BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703166566;
	bh=7og2hylGEPStD7JcgKlZUzjJhF73QJ2jqDKGoJIfpPw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZgPjanW8fJd5hlRH42ny6YnJsj6hvyjn8qiZxaOKcZ79dAoDL+3yUU4fnfTFwoTls
	 krVGZNLwCLZ48FfwaZKhBxMVkewEHY2iOp7EKBxNNnVf00JkHVTg4v7ptbxi4hg7NK
	 23OvZfaY54bDRt6Ks/KrIADy0mpiH2Ap1gOuiovgw1yycbvn6dnsFc7flOZCsGVMdM
	 rEWMIh1eO2Plnz8vyEoDfkZfAQmJLA4i6iraPMJxaa8zWEBWIqssJDhUDpEpFsoYZ2
	 tZbB+3qAG32YYrAkFDSLQPgNpS84BNCooTqOc6sWE65E2quugo854ejJNvAG4QYYXJ
	 lW3GQ6F0HsvDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id muzsjjaB8f_Z; Thu, 21 Dec 2023 13:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBBBF60A81;
	Thu, 21 Dec 2023 13:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBBBF60A81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7C81BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7182F403F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7182F403F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WkHVFmbvv9Pn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 13:49:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C542D40382
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C542D40382
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="2810177"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="2810177"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 05:49:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="867315461"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="867315461"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 05:49:16 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 05:49:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 05:49:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 05:49:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 05:49:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PV2gyk4/I/h2wR3TH7qO4kxPPJ4rwUAPeu9+ToUqSCw0KxyiXI/jLwVUrxmdkq+M+5hPMpDRFPac7JhsoGv1GU5jKkn0jxQpqhvqZOeloMnI3tQ8dy7LVUN14XNrp+dHQ/LQuwtbnU+VyuRlG4YmNFtomskmIrkKIguczcWpSTq4s6nM2S2AjAli0+24DbnBJI+n/sI2/NIF9AZWNCTsvkPoLD5TEPGBhT/ZXcRBd7zaehr2p0PgAEeyF0rCSJB0w7jjSk93hN9C62jEA8VqOhaNNRhW46uIwS/x492g9n772N2ouWWKfdJMcvqRS7CccJQ7jY/i62kUpq51OmMnrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h792ApsFTr1eUnG9jsGL5z21HOQk0iGvZ6x+fkyKSMM=;
 b=N+1ABXVxnC4+pKKoqBDQ2cu6eUZqMuuCfXZWYDC3KXO2NSPGx2CIjDDppecTJqeReBUx2vgI0nHRY1xGclkSQfVDjF7WhoiFot0HvbgUAJ80grHYJlGL5aYR/gPfy6DBJ7FzpQ77pQogT9sSR8rqeMYLOkvjJX0po4QaFcX3oEuTlCWsp3Kv08Bb1yx5eF1ThXoDAXyjwpCR80ZZYLqmJWZZ7Q1qmJ0l9UvMJwPkpOet53oGfYjbYsla86x+3TY9MYGBLsGGTnFW1+yiPNBgs8ytNR9IXPWJmayqaUKZqEJT0pyoDdOqE25S3QcoJlVnpSHVOwhoV77o+hr5BRC7iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH7PR11MB7570.namprd11.prod.outlook.com (2603:10b6:510:27a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Thu, 21 Dec
 2023 13:49:12 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7113.019; Thu, 21 Dec 2023
 13:49:12 +0000
Message-ID: <958b65b3-202b-fa73-8a0e-1f886d55df2f@intel.com>
Date: Thu, 21 Dec 2023 14:49:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231221132735.1246164-1-andrii.staikov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231221132735.1246164-1-andrii.staikov@intel.com>
X-ClientProxiedBy: FR4P281CA0220.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e4::15) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH7PR11MB7570:EE_
X-MS-Office365-Filtering-Correlation-Id: a1681bbe-bf6e-4530-ce8e-08dc022b9d0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aZy/MncgB3DB9I1OJrPwPp2owowS+h/lC/oQspDIg2YRJcKFCL7Zo9J8scQioQWaWO6snTrvz8RXeS0RCzO7M8a3g1YqXU9KvhE1Z5Lv7jEo02xjZDXGHXayWQcATxpII62LagIJa6UWfo2SdwBTinoXVt2VfCieEpau8eDf4MN8pbtE6JbBK14oTGeF2mIOr+xcio2eRujYuFyH8lJG5qJK9DZRReCrUq9oIYeSn5AsvoVs0WIGC67ilf0jGusMWKjoWPoIzf4rVE1HV0Mnp8jpzxbXO2TLmOMiKcB048Vre3USc3nyp4r7mU+QwCQbCY/UzCyzAZFOvsGfxqUc4Oe/F8ISq376aLEnByKzoDGpNYYyJt3f/g7RqmZ8rEALI0Sn6H7p6+2a+am8OtehDv65HJDVq1YqnvMdCaQJVpyPyWjKOfuTkt0LFaJ+BKKF/V3FvuNo5OjqGhyWmg8C1T80nTziFbPRWIjBjdXCm6zoehMPX+Zsqw0+uNdJ8ApR7Td7+3Fa9Rp800UqaliK90VGqaUPOfLKmPKxCZhdnRavV1QhwAXTY8LfrzXeq2sZ5fvXWXdO8xSspVZ1scAQMhKH4c+t120vuTPLyai4s1OO9FFXvK9gpSIrLblVsKhj2Jz+/wTpmV5P+O7ptmMz7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(39860400002)(376002)(136003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(31696002)(86362001)(66899024)(31686004)(36756003)(53546011)(6486002)(41300700001)(82960400001)(6506007)(6512007)(6666004)(66946007)(966005)(2616005)(66476007)(38100700002)(83380400001)(107886003)(26005)(2906002)(4326008)(8676002)(5660300002)(478600001)(54906003)(8936002)(316002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckE4SFRiNEVDc2gvK0s3cjEyUk1sNFAzaWhPaDk1cjh6WFNhRmE5VEdyRkJU?=
 =?utf-8?B?YU4ydU5jbi9SZW1TWkNmQ1JycEZtcHFxbXNXMHBHUEZ5U1JIVFV6S2l5bjlO?=
 =?utf-8?B?aEFHVTlqWFhUakMxTFphTmtPK0YvbUwrdGJGcEtwbS96b3A5YnlIRktubklV?=
 =?utf-8?B?eGdZZm5QRjliWkFWUis5ZmpPelpFWkx5SHJ6MTE1VEMxTC9nczR2T0lGbTY5?=
 =?utf-8?B?SnNxQk9wTGlpWEJDOEpxcmdWUmxpVnVkbEVOQUVEWmorWXpRMzA5eGszZ2Yy?=
 =?utf-8?B?UmRrNm1WWmtVbkxZbFlRQ3ppRFBSUWhrSWVCdG5meTVwcmhVaEJUUE9aSUVY?=
 =?utf-8?B?ck90SVBCalNKTVVYU3hSZEVSOGRxK0FhTzY3RHN0YlNvT3FJRGtPaUxxQlpj?=
 =?utf-8?B?TWZNZDBHMjFLVTEweFR5em9oQjkwM0Q4akJVamI4Vk14Z0J4c2d5T1JiU1ZO?=
 =?utf-8?B?YllzMXY3UjJZL2RRaU9lamthRjBXclc3K3F4emF6U1poUVM4VS81c0hOdkdm?=
 =?utf-8?B?NXJOZXQxOWMrSE8xQVhEZGY4OExWa045anliN09xZGVhYlNnTTl1Z1B5QTFS?=
 =?utf-8?B?dEZsUnE0dFcrNUJ4SmRBSUJ0KzVaNkNmRnNCVG5hQkppdzZYdGtzR1I3UVdO?=
 =?utf-8?B?MmJCQ25ab3d3dTBXandLRDNaSTdlZjljSExEL2F5bTF6K1AvU1hvdFhteHpF?=
 =?utf-8?B?NUU5elJSYUxNajl0MGhDRStSL290OHBJNDJnQXhaeisydnN0SWxPL1Z2QVBp?=
 =?utf-8?B?K2ZaTTBJNVJNZ3lncklOSHIwcUp2dVlZN0t4RlpFMmdMK0FwY1JmaFYrWFJz?=
 =?utf-8?B?aW9EdkVobmhtRGU2Q3loNmxNYVd2VmZZbGZHK1ZiV0J3ckZ3SEtNRWdUSWVt?=
 =?utf-8?B?eVZxS3RoTysvZEJ2anhlYktxNjR4RWVvb0MxaDJjcWh2WEF1dm1DNWtBUThI?=
 =?utf-8?B?ZmRlOXVlS25DRXBnOXVGMnVuK1dZTHJGb0l4ekViU0YvemRWNzlqU2tJaWVU?=
 =?utf-8?B?U1hvSmFNYUo4WCtFNGcwMUExdFBHY21wc2NtN2pMVlBZU2RJUW0yOUhYQW9p?=
 =?utf-8?B?ejM4Ulp5OHAvOG9NakQ2NEVPb2g4WmJOdkdmM3JJTFRQVFcwcUJRVndoZnJ5?=
 =?utf-8?B?aENRQjNXSlJIejc3L3RvZWhveklRWXpCcWJVL0E3d1h2M3lPS3RUYk1DbTBY?=
 =?utf-8?B?VVEvdnpxbmF2ZDkrWk95Mko3ZHBNajRYOGo3cVhjRTdzVisrYkptNWxuem5O?=
 =?utf-8?B?QVFQUVZzQ1pKMWp5WVJ1T0xmdGR4NzJMTTRQSlo3NDJabEI5OElDZk1leE9T?=
 =?utf-8?B?UWQ2TGRrMnFwVnVyUUk0Yk5zNkF1NG1VK1pKVjVrS1ludXVCbjVKNzZRQ0hv?=
 =?utf-8?B?ME5IL3FIeEZ1T1J6VzJhL2Q1c29QbTRkQjF5Ym9VOGJmZG9vaXJEZG5VZm5L?=
 =?utf-8?B?L3J1WUw3cU1pL2ZpbjRqa2NSTG1EZ0pSeDg4ZWJYTUpWaWJlcUtFSUF0eEpo?=
 =?utf-8?B?VlN2MVNNTDBBRUMzQzZVRWpYT3REMVBPSURXRnZGNUVEQUVJNVdHU2RhbXpa?=
 =?utf-8?B?NHFyMWVWNytWNFE0ejdibEJ6OXphVnZEQkpyQlBZNlBGbElCTjMwSmFDa0ox?=
 =?utf-8?B?Ly9scDRiU2FuN2JZZm1POHFyMFR6S2JJbElqa0cwYWFlR29wWncwazUrcmp2?=
 =?utf-8?B?SEFKdkora2YwblhnVW5teFNJd0pYS0xScG5yRnlCTWhJM0VZT2dPb1RVYks5?=
 =?utf-8?B?VGpMUzM1Z3lKL1ZiNkk5RXQ4cWUyQVZMeS9yc1I0c0JOTTFrNEQ5TmN0NVpW?=
 =?utf-8?B?Q0RzR3VpaDBKbEwra3d4eElES2JNNTRNM2Q3SE5jczgvTWg3M2RaRmdoZUNG?=
 =?utf-8?B?Q1pWYURzcXdETCtSWGdJaFhNQXE0ZjBEd2NIVWtsQkJmWDNuNnAyYmdYLzJk?=
 =?utf-8?B?bnIyaGovYndUUUtheEZMN1NiYjFLQ1o0SGMvaEZkTXAxTzhYNWdoRkR1Tlhx?=
 =?utf-8?B?SEQ3WXFTVXQ1V1hYSFhsbTB0SWhpK0JuZlRwSXBxOVdNZ0RhcDZhc25SZmpC?=
 =?utf-8?B?U2xSQm5mS1dRWUVzK3RjeGhMZ2NFSlgyQ25pYzdTQUF3NmNnU2ttRDBqSGU3?=
 =?utf-8?B?WFdnekNDK1hGaVVEcUxlaTBLaUZkN1dYZ0poM3ROcVc0WElrcks2SWl5QXQz?=
 =?utf-8?Q?8EJUH3kvcJq232m6QPnJIKQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1681bbe-bf6e-4530-ce8e-08dc022b9d0a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2023 13:49:12.4722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zwr9a2lNYHWHzVKwVcLGdKN0IdGBIih3RjbHvdQae6uEdMXtLwnSAMOKaY76vZmcwZYoZgv7eFdxlyWUm1Bk9OQxLiuYynvwOuIX3biC09k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703166558; x=1734702558;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SoflEcc806wC+4rG2qp+Jow9RUH/PuoNv+SNdMNuSqc=;
 b=NfmHH18HFs+wLeq9HWhndDz6KYOXdUWeo6ymgHvrpoZ+VzYIr7ZGHWv2
 RHReAIAZaZ8o/0tcGopB9xoLk7IHdtxQAtlOMLvH3Ktj688Sv2e9zW+Zk
 8Zn/XyOw6hgHm/kPdrTirSHEYmb2PeHXwn1SmTjf38JuFO4cLFjMBkMRj
 ujmHz2P/R8sHNCdc/Gzy6zDckyeJpYOJeGsC/LL+H0bfHLPDHFTQG6nKB
 ftNUuuwEKsMGUlXqD6jS6mED85AxLEkRm03Orft6zNc/IHwLKQ0KQuIdd
 oexk43CxLz4fLkuWJgGk2cswh0J7ibPsFBxYfHRWzqR46XXKQuhMyUTEx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NfmHH18H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] i40e: Restore VF MSI-X
 state during PCI reset
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/21/23 14:27, Andrii Staikov wrote:
> During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
> register will be cleared. This can lead to issues when a VF is
> assigned to a VM because in these cases the VF driver receives no
> indication of the PF PCI error/reset and additionally it is incapable
> of restoring the cleared flag in the hypervisor configuration space
> without fully reinitializing the driver interrupt functionality.
> 
> Since the VF driver is unable to easily resolve this condition on its own,
> restore the VF MSI-X flag during the PF PCI reset handling.
> 
> Fixes: 19b7960b2da1 ("i40e: implement split PCI error reset handler")
> Co-developed-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>

should be "Przemek", but no need to send next version for that
(but pls promise it's last time ;))

> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v1 -> v2: Fix signed-off tags
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231204131041.3369693-1-andrii.staikov@intel.com/
> 
> v2 -> v3: use @vf_dev in pci_get_device() instead of NULL and remove unnecessary call
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231206125127.218350-1-andrii.staikov@intel.com/
> 
> v3 -> v4: wrap the added functionality into the CONFIG_PCI_IOV define as
> this is VF-related functionality
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231212122452.3250691-1-andrii.staikov@intel.com/
> 
> v4 -> v5: fix RB tags

there was a question in v4 from Jake to "perhaps do it like in ice",
but I think that for a bug fix it's better to keep this patch as-is
(review always welcomed through).

> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |  3 +++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 26 +++++++++++++++++++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  3 +++
>   3 files changed, 32 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 7bb1f64833eb..bbe2d115fb15 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16513,6 +16513,9 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
>   		return;
>   
>   	i40e_reset_and_rebuild(pf, false, false);
> +#ifdef CONFIG_PCI_IOV
> +	i40e_restore_all_vfs_msi_state(pdev);
> +#endif /* CONFIG_PCI_IOV */
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 3f99eb198245..d60f5419d6bd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -154,6 +154,32 @@ void i40e_vc_notify_reset(struct i40e_pf *pf)
>   			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
>   }
>   
> +#ifdef CONFIG_PCI_IOV
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
> +{
> +	u16 vf_id;

nit: scope of @vf_id could be local to the last if
(but I guess it's too late for such)

> +	u16 pos;
> +
> +	/* Continue only if this is a PF */
> +	if (!pdev->is_physfn)
> +		return;
> +
> +	if (!pci_num_vf(pdev))
> +		return;
> +
> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> +	if (pos) {
> +		struct pci_dev *vf_dev = NULL;
> +
> +		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
> +		while ((vf_dev = pci_get_device(pdev->vendor, vf_id, vf_dev))) {
> +			if (vf_dev->is_virtfn && vf_dev->physfn == pdev)
> +				pci_restore_msi_state(vf_dev);
> +		}
> +	}
> +}
> +#endif /* CONFIG_PCI_IOV */
> +
>   /**
>    * i40e_vc_notify_vf_reset
>    * @vf: pointer to the VF structure
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 2ee0f8a23248..5fd607c0de0a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -137,6 +137,9 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable);
>   
>   void i40e_vc_notify_link_state(struct i40e_pf *pf);
>   void i40e_vc_notify_reset(struct i40e_pf *pf);
> +#ifdef CONFIG_PCI_IOV
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev);
> +#endif /* CONFIG_PCI_IOV */
>   int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
>   		      struct ifla_vf_stats *vf_stats);
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
