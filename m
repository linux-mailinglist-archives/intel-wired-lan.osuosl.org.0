Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2981780AC9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 13:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E6CA4196D;
	Fri, 18 Aug 2023 11:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E6CA4196D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692357042;
	bh=8Ut5rwYWvUfkkPPLWj5pUMUunQo9IAekpGm86rn1cqc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1G6MrGWNsl/Nr04RhVfHh94yaclTnXf4JmRvOnDFfu6nfL+YzfkRponpWCz3e0GZ9
	 c7opz1X2f/SLog/Kk5KZcMEY1CvOpTlbS0u2Ot7gacbnHC1o1YJKW9PS4B9R4VxqFm
	 7AwGqqJbGCrKtuQaPN7Jn30g/kcPgVVidWeHlvQEFBfzSHij9v3AltoP4RHXApdp3e
	 jZ/Sr8uS1RBkTDR53SRFU8iSynh9nfhcvxOmbiJu5GKA5w2LgipmHEZdDHGgjPILYy
	 Dy0DujyeUWkAZE3g/rILNioY5jDlOD1vM2qqFJBcuCJZUcIFHUPPVb62JOymyzGWic
	 SYPS57CI+1H0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DQqrh3qprdlY; Fri, 18 Aug 2023 11:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 231E14196F;
	Fri, 18 Aug 2023 11:10:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 231E14196F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B82341BF36E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F5F783C2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F5F783C2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7HvIjIJF1Uid for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 11:10:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01EB983C28
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 11:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01EB983C28
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="436987965"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="436987965"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="764530361"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="764530361"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 18 Aug 2023 04:10:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 04:10:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 04:10:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 04:10:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 04:10:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NajI25kUWxxEzP2gGXa6JJNjrTbum7tsxFJCnsycNYRammsFIWLdk35foFFX9gI+HHamQQU3+NwmYVaR64eYrWunRnpPqfHoDptw7aLbzAAACE/HuaQ39e/QPP1vu/8DXQnLZIL6A+ftBt5OdOG4q/HHxdb/gvNesLfrGgrqd/LHuwtDr9m7rgXcWfqrKFwmXEVhs0IcpIPAk2JMIiihA5nHWxjCyoggJpaU58yojYTElRQWeQqZVL+QDspN3mmyv9Y0amCOn7JSnzTnzc39SCmFl135QwjX+OVUt30rIISYRFZoO/kxcIIG2mZX/TOTgVZCz1VgopPs2M6fAXGedg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gKtCJJkjNtBwdWJ30M+TWoiGYW9fjpNDZgTncpn2q3E=;
 b=BTx5gVC8VInRfn9Yppn7jpEpQBh58uFUmQIK8M6XaLEtJ+SZtJ9JmyJIjYgrw3gNABonPG8o6yd82kqLwbFAVcMq/S7K6VuhdKXFDELYWvm+aZtqz62MhdEZnJODqZcLw+BboNwUGw84YxbG1S5GQKhJUqZQm4GrZrBmUYfs7V2zRJ2BtXy0e7VlqXhxTYjh3iTwatdB7YVCgS4dSCAiHfQyvID3q7Uqcm851J3enR+umbgB6vLO5rHC8h5toMHSm7Hzkm8EUH3d18YyrB6k6p0Z2rt/+wuSj1RlVQ8lzTrnNdWUYAJHoKr7wnVd4bHBBfO6KK21JUPE2kc7kUV90A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DM4PR11MB6020.namprd11.prod.outlook.com (2603:10b6:8:61::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Fri, 18 Aug
 2023 11:10:30 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6678.031; Fri, 18 Aug 2023
 11:10:29 +0000
Message-ID: <8b4d4028-4141-085a-9375-d170fc98ad31@intel.com>
Date: Fri, 18 Aug 2023 13:10:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230817141746.18726-2-karol.kolacinski@intel.com>
X-ClientProxiedBy: FR2P281CA0080.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::13) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DM4PR11MB6020:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d8946d1-2f7a-46f1-47d2-08db9fdbbb63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KR7OlX0C2QZKmwY5ZPajT+wFqBkyzhuHqq5LC5YoDLM0p8x66EZUmbNO7n3WXX03Pw8745oZQPh1DgXABYtuVjLFtP4/RI2mTXqwN/C44bASDsWblJAfL362/Iw3/nN4HHAnMyInX7mPnx9gPVg56o/ApRLNF4aovWL7ZneCO743rc6NXDcAoBtkAvZyYaJxMCC37+1NtqyTZFB4wfIsvwDr/hY9wPz5kV3Il7LZAtqYpUbYZskp4V+kjytHKR4PIo5x8W6diSiGHop46564UAAEzu2RofQrM3UiiBT6hR0InnUtJRYNvguaIEXFRh6L4Inng2FckbGE/CfFdyuUW/yW7l8jzTaH1jP+6e7tRpyuubdjplBwp1zY5GiQF/Y/lX7bUU7mH+PEiUSVsXVD62lThbyaMeBjUS3ELKobnQ5FmT5ZuEcPRSe+bhvDn3fFG42/++Ky6eRvFf+fEe+h61dv46kGyw6k7AOwyxYCDS/lbScxGQTB4N/KfUyjkz2Mho9bxwKO7FxWKzyWxpcoMCZoNUrX2i+L2cZTpF37H0XJeUf9kmO7qBDgQzUAF9jJZoI1HqRWeGsNBuqJ0Fj/tK0EiBRbQzmohcd4xKkan2f5R+dfSlJ5UODscNLcTgwY02hJwILqkj7vvvzkH5e8rQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(366004)(376002)(396003)(186009)(1800799009)(451199024)(6666004)(6486002)(6506007)(38100700002)(6512007)(53546011)(82960400001)(86362001)(31696002)(107886003)(26005)(83380400001)(36756003)(2616005)(2906002)(66946007)(66476007)(66556008)(316002)(41300700001)(5660300002)(31686004)(8676002)(4326008)(8936002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cml5N0RWZHFxYTJNUUY1cVAzU3BuaCswVlBRNVkzZ2pHdlp4NVpydVViOGtQ?=
 =?utf-8?B?NndvdVNyN2xaYWVJbExCNzJvQmIrRGQrWUFPR010dlducVVjUzVjTFJYcjJj?=
 =?utf-8?B?Mm4rc2lmOENWRGsxa3Z5Z3hHd1ZMc3IrNTNvcmZITitrM1M5Q3pGZzZMekM1?=
 =?utf-8?B?UEF5eFBKR1FMWHhCMnpMa0hCN24yM2Y1MGhwM2NTOUNxQWQyRVlYcEl2MlQ1?=
 =?utf-8?B?TVVtMW9WRWRldXVubWtRSUNhMDlYTjcvSC9ROE9SZEllb3BiaVptTUV4MS94?=
 =?utf-8?B?YktBdGFFR2VnRFQ1NHpBZHgzcmh1andDTzdmTTRSMjF2TjRCeW9Eakg0SDdZ?=
 =?utf-8?B?RGtxM2tFZy9vMDhwWTRWQVlwREVkUXQrQjBJSjhNYzlkYVRVWXdJRUVLdWox?=
 =?utf-8?B?RGoxUTlUeUk1RWtVZXBIdmlpemtEVzllWG5Penk2WUJmV2h2VjB2ek5aeWwx?=
 =?utf-8?B?OTUvVDg1UWsvQnM3UmFCdmhSYWkvS3RjelpsSFJac2ppOUZIdXVaMzRUTDc4?=
 =?utf-8?B?VXBVb25RUUJ1bEg3T3lKbzVDb054aUFEYlkrSVI1OGZ6bUJVZkhjdTM0OEhC?=
 =?utf-8?B?eHpCSEFyVGYyMDNvcXFOWlI5ait4SkVsQjY4YnpVbzhJaXF3UkMxdVhoazhi?=
 =?utf-8?B?UlJVdThnbXczcm4xbG1xTnBIK2dqWFpqL1lZbktQako3MFVpaktFRmJMZllN?=
 =?utf-8?B?L05PemZROHBpeEY2VGdHckdKL2NDWjZzN3VkeUYzOW44eXB4ejBKUGVIYVd2?=
 =?utf-8?B?YkwwemRseHdDazhEdm1aUVdLU2JkWVpaaU9KdjV3TVlvVmNiZTgzdTM0K0F5?=
 =?utf-8?B?MVFrQU9VaUJqZU5XRTB1NjVQYWoyYWFlQkl2YzYzT241RldJS0Q2LytrWnhU?=
 =?utf-8?B?cmZzai9lRG5rTHlQT084TUtwOGxydzF5YjFyVFU5WTB3NHVSOGlzRTA2RTZa?=
 =?utf-8?B?UENRWDFEdEh5UTVGbVNpamYvZ0hHNHZZeHlxWnkzU29obUkrZElCbTVlOHF3?=
 =?utf-8?B?YnJGd05nMENPbmp5ZGUwa0JhMmFLbGFmbnA0eU1ZdW0xbjFLSjVsM25nZUE3?=
 =?utf-8?B?clVMNUdnSUllMEp3YjB6SkJIU1Exdyt4Qko1a3ZQVDR1bUNGRitpT2RVejhN?=
 =?utf-8?B?MGRSOGdHbnFUT3FnWjhTbU9meEtCandVMGIzSStGWWJTeUp5UWMwTXVpSCtI?=
 =?utf-8?B?Qk8xOWFpbmZYMzV5UkRQeHZWYmdyblJ6TS9PSUd2ZGZIU1FJcHgwR2NEUWhC?=
 =?utf-8?B?dmtzWjVmenRwTVhBNmpUYWhFL2RwUytkeWRPY0MzUWpxQSsrMHdMc1NwYnhp?=
 =?utf-8?B?R1V6UTBOYU9pcWRFdHk3NGJRTzF3cEFIVWtURmlVWlVrKzNJSHQvaGVoNlhO?=
 =?utf-8?B?NGM2WlNpa2ZNUCsxeU5SMVRjbjkrTEJkQXQ0cnVQUlo1KzVVcllZMkowcmFR?=
 =?utf-8?B?VTBRcUYrVEhEWFNXZzRSVFpnU1Y2ZUoyMnorditUaExiN0NiQ0NkQU5IR20x?=
 =?utf-8?B?Wjh3SVFGWlQyaUhTcU0rbkZsWEZoVUFPOWhPTDMwRFhGTTdHc2dJeDRLZCth?=
 =?utf-8?B?YVNuS0pycVJ3bm1aSk9KeVI3TEpqaUdicjNFT1dVcTRvVGpnMW1qNHRTMldQ?=
 =?utf-8?B?MGtFVmxFU011MitKSmFDTGtHTjEvQXl0alZHZWtOeEVIVlFjOStyTWNTS0xm?=
 =?utf-8?B?RTJSSHRMVE04bG1tekM0bVRYaFlXYXpQOW5jNlBoa1k4eitCUUNEcDhuOHJT?=
 =?utf-8?B?b3I2M2RZY2d5Ry95bWo2dXViZmtzaG1VdWxpQjA5TWJoRGl0eU90R3lNWVRL?=
 =?utf-8?B?eFJiVjZ1RHNLTzJ5d1J1c1dXZ0FBMmdlbzg5VEo1OW9PTHcxeWV1R3puRWNE?=
 =?utf-8?B?VXNORXh6NmY5NDlUa3p4Rng4dW5RN1lDMVFEWmRiUUpBbGU3dW9KYURnSFNt?=
 =?utf-8?B?YTJaVjI1NnJ4d011R0hVODlobUpydFdteDFIV0NzMEFKNHRReWpxbTZFc2Zm?=
 =?utf-8?B?S2JGL2pFYzVxYUdobzJxZGdOQmcycFJpbkdPdmJVSG1yVmRPNkxtY2JLSU0y?=
 =?utf-8?B?amd4UmRNV3NubE9yZitIc0NFby9oSlJKdXliSjFra3ovOENTS3V6SG5XUG1t?=
 =?utf-8?B?NVlpQzZRSDV1ZVMyWXcvM2hxazF1dUEydWJlRGxjNU0yZGVadUxLRHNYKzkr?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d8946d1-2f7a-46f1-47d2-08db9fdbbb63
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 11:10:29.6738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v8r6qbM5XiHSECc+fMr2oA2oFF4ZOOxlaR3R0puB4+heFqamtjtxq5Es5H6YDnkhpymyW431bA5zgpyrCjs8RSkz3ZA2R5OWRy8GXX3LYn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6020
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692357034; x=1723893034;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=paPFInAqr3t53okWk+RsG9EV+oQLrK/tEsSViWzc1gQ=;
 b=WlDlTAnurQoLwlogSeNqTFSVaLE59OjlDx1YcYt8fd+DY7W4/crSxdEh
 45J0ymJUVga5Cjusw9VXs0aBJkwVFyoISgaMOKWjLjJjOI7Z9bmPt+wXs
 TNjgOQNs+PH/yOM09s7gDiL8rpCZsC6Dq8xJSXqMEuDniy7YB2hd2uyMx
 8I8AouXzUNSubL+j6v5aAP95dTnFSQalBuuWllV4Jgf55lRntLizRU1Mj
 P/aCwkmBU/A0U8xesnVNrTputVdQQBg+/iqca3LDTvU4MAW0GzNUEXAqc
 aWpTJuhDIFwOkUTHQjZSgCJHTUCbNOhZMbfD5ugqf+RJu10aVgyvD4+pN
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WlDlTAnu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/9] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/17/23 16:17, Karol Kolacinski wrote:
> The ice_pf_src_tmr_owned() macro exists to check the function capability

This patch is send with you as an author.
There should be a "From: Jacob Keller <jacob.e.keller@intel.com>" as 
first line.


(git-send-email should do it for yourself,
for testing: git log prior to sending should report Jake too)

I remember that codewise v1 of this series was (about? :D) fine for me, 
will double check with v3.

> bit indicating if the current function owns the PTP hardware clock.
> 
> This is slightly shorter than the more verbose access via
> hw.func_caps.ts_func_info.src_tmr_owned. Be consistent and use this
> where possible rather than open coding its equivalent.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c  | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a6dd336d2500..b6858f04152c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3185,7 +3185,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>   
>   		ena_mask &= ~PFINT_OICR_TSYN_EVNT_M;
>   
> -		if (hw->func_caps.ts_func_info.src_tmr_owned) {
> +		if (ice_pf_src_tmr_owned(pf)) {
>   			/* Save EVENTs from GLTSYN register */
>   			pf->ptp.ext_ts_irq |= gltsyn_stat &
>   					      (GLTSYN_STAT_EVENT0_M |
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 97b8581ae931..0669ca905c46 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2447,7 +2447,7 @@ void ice_ptp_reset(struct ice_pf *pf)
>   	if (test_bit(ICE_PFR_REQ, pf->state))
>   		goto pfr;
>   
> -	if (!hw->func_caps.ts_func_info.src_tmr_owned)
> +	if (!ice_pf_src_tmr_owned(pf))
>   		goto reset_ts;
>   
>   	err = ice_ptp_init_phc(hw);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
