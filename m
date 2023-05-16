Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D34E7043A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 04:53:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7659284138;
	Tue, 16 May 2023 02:53:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7659284138
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684205602;
	bh=kA5Zih0Xx8LmLJyYpNC/8lf+WSvIlQ30S9amRDzcaaQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VekCVfttP69Ko+q0bbATbntqpcugRxRPy+EVFc+0G6zb+6ppIcZgHK9twrW4ihi4F
	 rtrUd3Rk59t0e/tXHv/KB5E1duC5lsljuphsKsGv8hyp0VAUjR5lMSwKaOySm4qqCT
	 t3UIUpFb0623X9RK1Z+pWJd/Cg33znPuZq6q7o70G0zILHnlPMvJuwc4fQwUROFnpv
	 dM+OOhOhiEheZFTcakBfxi2NC9PbxJNt4krqFaOTqCLN9lppLsJcSzESXZM9ss+l9r
	 0bhHFaCzwuyII7vj00jzO2wo0kmCYRdtEt8GXzMjzCYeR2ckwt3hR9ds/1EQiPvtGS
	 hmzTTMDHW5dhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5xw3qpPeqNN; Tue, 16 May 2023 02:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62E4E84113;
	Tue, 16 May 2023 02:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62E4E84113
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 734491BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 02:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48906402B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 02:53:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48906402B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xwc6TzmmtnzV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 02:53:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F65940290
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F65940290
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 02:53:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="417023965"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="417023965"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 19:53:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="734114240"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="734114240"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 15 May 2023 19:53:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 19:53:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 19:53:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 19:53:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSKAYHqTLDMhh+3nF4jt5zQYRJYOo9Ox7DNC70pYqXl+PRL9YVApu9rA0Hkrmk7E/aiFrkN7CdFM7io4PoRJW03hWm3uyveZWUiCoVKpeI1yv7G2ExCHISAfGIzv2yw7k3uahZeB/hfd+Q+VVQNdD2op1K+8AVaMtipwVwj1x/QHvGhVXiikyb9dUe47diAvhVUBipxrNOS+Y8hAkasO6u1JJdXBp3AWY/ZPjAC5E1iJwo8spsK3oPwNYDbHFWol1zNLp4XkXzKMDJsy0r97iONM+ldYVOQvXGZcIA2s+f8mekIMweCZ5r9m/hY6IPg9d38M2HwnUHSRSEIU4mNz+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5MuFkPn++HpIjoZdSBySlSCStt9aabuIt7g47+Ki8o0=;
 b=BfL4mRPzdUzpnbK6SDFKztmSrfD8mRzJWy3xqsDdDCL+TQ6w7oXazxMvP+N4LtSmalTorzEruGyIekdqxG2MSlP+pDjKPyUXLT/sGGfQjDfKY865ccIkLj1tpRV2OGr8u4YZh3taKo5WJzNesiKme02BOnJjPuESsfkeDCFaI/cTexOsMXeO7sYODSfhlqRwqEXULXeTt1DUJ/vnDNyQ8aS5VAf80mriD2NfEOJ2G4v3JOOLEeR+vE+wkdoe4ljx8s5wIJgoa4QfQQ+h7NA0v8HwwXoToweM4uL73wXfSIJKzPngXBDeqbGf/bguwLu2yFtIikEhhcLAhJp9bjhsPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by MW3PR11MB4572.namprd11.prod.outlook.com (2603:10b6:303:5e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Tue, 16 May
 2023 02:53:08 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::903f:e910:5bb8:a346]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::903f:e910:5bb8:a346%6]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 02:53:08 +0000
Message-ID: <442ce443-a1fb-1cfa-e3df-14927307f9c7@intel.com>
Date: Mon, 15 May 2023 19:53:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Stephen Hemminger <stephen@networkplumber.org>
References: <20230513225710.3898-1-emil.s.tantilov@intel.com>
 <20230513225710.3898-3-emil.s.tantilov@intel.com>
 <20230513184535.1a07c5b3@hermes.local>
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20230513184535.1a07c5b3@hermes.local>
X-ClientProxiedBy: SJ0PR05CA0078.namprd05.prod.outlook.com
 (2603:10b6:a03:332::23) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|MW3PR11MB4572:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d9a231e-ddd7-41f4-f6fb-08db55b8adc0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3ftOpdM+TjrkBxX2lUYQ++o/3x7cya8q5l5J060iYxr38aI7lQNn417UGF4cBsVwEd2XlSohaVHMnc2jljRCnat2bXb5yJNxyaC8c34agDj4HDWc7kSqyAIGukFXoZoe8Sq69eaNtuPNGSjH6OYkG/S68oDT6CFttx7yCZPzySLzPoUH6Vpe+h4yM2iStz8FufpBjNLfLa07dHTh2XtBjMkWUG5AFYfvHXdJeikNUOqvdvAkn7fcXe3RNAtJyf1YDbNlnGitOVKbLAYU3tG1Q85C3SjPbkm7wRmsOev1tL7G4GdqKlQu3QaXl7NHQFuayPyl01m0YGo2TQhqWM3e6NDCuUAZuANh9XZmeJUxEvZ4U98mfG+osdKpvpjs1LgZKDyWFuoYdWD+0/Bhnbfk9FLm9tedFng5uLauK4kIjZOkkNFjmpvXMg+/jCOwSvl+Drq5YSbYoEHcbgU+VC/6TCLWo5muByASMFMjtALf/V9OzgqCchPjS89WMjDaI+orfwAVcBnS3EuWqOpeBlmEEfPUjZ3IzTPaK53dFdAnnWDrHyIQcQHGT5ivm44fi95YtG8Ug7/ik6pCR7yBZrn/ZbDYY0eLzQVqMf3mdD8dX4YGtO1pn4JllLztRklye+hi0fhoC5KXuoyrWIWa87NVGQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(376002)(396003)(39860400002)(451199021)(31686004)(4326008)(66946007)(66556008)(66476007)(478600001)(6916009)(6486002)(86362001)(316002)(54906003)(36756003)(26005)(53546011)(186003)(107886003)(6512007)(6506007)(5660300002)(8936002)(7416002)(8676002)(6666004)(2906002)(2616005)(4744005)(82960400001)(31696002)(38100700002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVl4elpLNUxpanJzS2NxMmxNbzQyUSt6MlBGbk1VNFVWa2tYejMvWUxycUs4?=
 =?utf-8?B?ZktNRWpoYW9ZM0IyTVVYWWMxMHR4R25wcnBBRzRGanlQSWptMFJJbTJrS0h0?=
 =?utf-8?B?Z1V5blRZK2tMcVAxeUFjT2krQlpXZlZ2YlVuU0RTaUhaT091ZXhBLzJpSDl5?=
 =?utf-8?B?T3lwcnoyU0xQeFpDU0tVRnBGY2VKNzdlblN6Nk5Fd2lWTk1PUGY3U0JwdmNa?=
 =?utf-8?B?OWFUWHlUL05yK3JMajFZUWE3TmNSVFRWT3pzbDFTamtzWEZGMFNEa3dUUHoy?=
 =?utf-8?B?OWYzY2JMZkpseVRwOU1xZzZJa09VNUNqeHl2cmc1bXluZUlCdTFYcGVKMUpr?=
 =?utf-8?B?cHluV05mWFNBSWZDVG9MdFdEclB6M0JJOXZ4RkVLNXBkWThSR0tHYUhSb2d6?=
 =?utf-8?B?UWFBOThCb3BaejlxdGpROFRwWVRlN0FXalEvZ21rYXJhUzR6Z2h2bjhCbVJv?=
 =?utf-8?B?MGpZZmR6VmhTYU1aMXhGb0pRRlNQUzVTdDhYcFI1Y2xNejgrcXdCZitIV2ls?=
 =?utf-8?B?OHo0SGUzOUZtR1NUNmdod1dsbmZicFRITzFXYy9PY3pFcjlwaVBhVTl5dHM4?=
 =?utf-8?B?eWZOR29SdDBWK0Zsd3JjUUcwdUM0VW83SXpkT1dSY2xsWEJGeGQzR01xOS9y?=
 =?utf-8?B?ZWdqZlNqQzEvY1dabDhmWitYTXlBSm90WGRYY2xJMXRkTUc1SUhRc3BvZVNG?=
 =?utf-8?B?WVdvcmNLYW9DbjN3OUZLQjgxbHJsNzFjRWtOTWNYRDRNK1NPaUI1QnlBQ0Uy?=
 =?utf-8?B?a2JJRlFOSGRLeEhIUWNUdCtTb0tJSTREd0ZHb2twUThnZ2dEODQ0UTJZdlVX?=
 =?utf-8?B?T1U3WGJkSlNrbmhoUzU4K1VRMFZnaENWd3lyYkYrS3I2OEFCc0JIbnlUYmxV?=
 =?utf-8?B?M2tlVklEOGhBMmFhRjdiS3dQWWVka1N1VFpKaU5QNXhOZ2N0RmtWYjJTQlhq?=
 =?utf-8?B?MWFaSEluYVFLWnFoVXl4c3pMcDFSWlNRNGN0SmpXaUROazZaUE9zSDhMS1B6?=
 =?utf-8?B?UE5FS0o5Z1c4R25DQUd0OE93QkdMZUJ5WHppOFZBV2JvaUtwb3F5Y0tyYmtZ?=
 =?utf-8?B?U3VjZFNFOUkxQ0xoWnpTdGlJR216TmpZcVR6ZlBGUGhkbXFZeFM4SGZrR2t2?=
 =?utf-8?B?WEhpUUNNOUVRK2dXelk0WTR0aHkyR05pMUJaVGlUQWxqYTdKUmlCMS9ranl4?=
 =?utf-8?B?NG40UGFyS0liaUZPc1BBSFYvazRFRnNtV3JLR1A1MmZHUXdNOHVXUnB6YmNK?=
 =?utf-8?B?ZzhENDV0R2NzekpZQys5U2FicDdkQkhQQ2F2OXdNQnhXOVk1TjVWNlB4SXY4?=
 =?utf-8?B?QWx6N1VTZkowNXRvZkNZMWk2bVI4S3RUL05IOFJKTjN1MUh6a29mUmxCYjBh?=
 =?utf-8?B?WFpSUHE2bUlSbmhic2Z1NUd2YzRTUXBnbFcrTTZSc0NZN3VUT29qNGJJdis0?=
 =?utf-8?B?SXg4MC9SSnNkdjkxa3I1UG1kNGozNHBZOWY3U29oRzRMc3liZnRFbHh0NHZB?=
 =?utf-8?B?bFlQN1MyQVF1NzFLaEp5RFhoMlZSSGZaV2laNzJaSkNXMTI1NG42VzVKK3Vv?=
 =?utf-8?B?Umg4bFR5OEJFN0NEdkhsWi8xYTdVWmcveW5wcG5rMUhPc056YUk5cWJ2d0Nx?=
 =?utf-8?B?MmVXd2lxaXh0NUVxY0pZcE5FSWs0RVJDM3dqeWlENmpoSjNQdHJvUE5FTXVu?=
 =?utf-8?B?emJaZDUxaFJnVVdFckFRWmZyVzJJN1NlNFp4MnZnZ0d0RTA5YVJZREdLekFw?=
 =?utf-8?B?eHNIMHdyZ0k5YVpJeGdYYVFpVWVTN0l6N3I5WmFOR1czMXlBRmhLYTZXU0tM?=
 =?utf-8?B?NlVBUFBmSEVMQ1N5bE1PK1BPcWZEc2hxemplbSs4cTR1dDU4VlIzc2ZRQVZT?=
 =?utf-8?B?MjYwRU9DNkwvMENEak1kWjBaVE5SQXQzWSttVmVsdThuRDB4b3UwTkk0RlFr?=
 =?utf-8?B?VkxPRzA1QVduclRSbjFud3ZBbXRLOG44ODNvcmlJL3hOZjVZRVgrMEg1bkpE?=
 =?utf-8?B?NnpEVE85NDhtUzdlL281WDFvNHVHMTlQekpma1drdHlwczdibXdMc3VlTHd2?=
 =?utf-8?B?TmJUek5acTQ2UENyYTVwaEFKanV5VVU2Z2Uva2Z1RFJvSW4vSEdYWXNuTEd0?=
 =?utf-8?B?RWR4NVRkRzNiaXJ3aGxWdmlDaHRhclZ1WjcweGwwajZNR2xuUGNEQzgvWVE3?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d9a231e-ddd7-41f4-f6fb-08db55b8adc0
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 02:53:08.3417 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h73tIEtHO+RpyxOr06/rZu4MrursXnIclkfetpe0G/9SHJzeTV+6c/s8+scSTiYDIezUX6PlEbqdCNE0ZH3X3HY3NA9ZBqiAGPMmNzt9PQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4572
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684205595; x=1715741595;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hiV0K7kZcH179pPT9TZh+g1cElLMxy6ezYmmrs3R+YA=;
 b=HegntIufoaMJ/LShiMzJb8+K8wkYOADivXTzxi6d37d+MpCYr2RP3CH9
 c5ulJ41OUmrW8EhuqiPgfGCvrnX1hbHWBsDmC8NKrbaUxE6NEma4NmYkw
 sYTA0K2eJueFWaYJLxPlZWZrWkgfj7QGTc3Tm2cozZRFes7G3j0Zdb+ul
 Jk4fFFSdKVTL2VP3NdTKCbhfPFXmmvYKc2viYAv7wh2REs2e6jiNr+kVG
 nYHnRzm0AeOYDEKwbg8naYD4euXO11QvXWjJNYKtWZoJzwmldfrB4bb3I
 qOaK80XXCSzsFqbY3Zve3dtqnbRrBzee041GfR5a6Od8cwf0qrrHAoC9d
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HegntIuf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 02/15] idpf: add module
 register and probe functionality
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
Cc: willemb@google.com, pabeni@redhat.com, Shailendra
 Bhatnagar <shailendra.bhatnagar@intel.com>, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/13/2023 6:45 PM, Stephen Hemminger wrote:
> On Sat, 13 May 2023 15:56:57 -0700
> Emil Tantilov <emil.s.tantilov@intel.com> wrote:
> 
>> +struct idpf_hw {
>> +	void __iomem *hw_addr;
>> +	resource_size_t hw_addr_len;
>> +
>> +	void *back;
>> +};
> 
> It is safer to use a typed pointer rather than untyped (void *) for
> the back pointer. This could prevent bugs.

Right. Will convert to typed.

Thanks,
Emil
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
