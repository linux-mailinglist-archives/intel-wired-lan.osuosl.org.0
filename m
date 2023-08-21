Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E897835D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 00:36:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0846A403CA;
	Mon, 21 Aug 2023 22:36:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0846A403CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692657371;
	bh=dBfdPJcLpLoIist3lnlQ0DBRl9QEbcTuV/0HObAWL5A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xQm6N+QAAUQvSxk6RRs8I5Tai1ftlmjYyP8BKWx3Qo4sa20/Wsb1I9tbZE8Xe9vvw
	 qi7dcbbmktwWlmMRLv4/6kATE8PqSVvC0NM3i1mjiLOOlrbNzj7anfrQh8N0FQn8Ig
	 y6NhttpO5EixcrV1JZT+k60/YQe0zV6RIYoS3KADbMbo7pf+vr/Fivb2tBAPg1z4S1
	 JhLEFWdRCC1xAlOgaqpsAEpGt0z/CDPYAXKTREO7OHOUBckxGt2RNJ8SiwCLT8n4gi
	 ReDEmKyrThwJ0TBecvJ0DWB84ZbJzBz/2sHnGsQ2avpjfon/sfg5Lvn5i9R+tJD6wL
	 8E4EZ4uPsFKxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fmq3UjgZVSoN; Mon, 21 Aug 2023 22:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB984403A4;
	Mon, 21 Aug 2023 22:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB984403A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 921E41BF35B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66065403A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66065403A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lglhqAuhMInN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 22:36:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C01D940142
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 22:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C01D940142
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="363886633"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="363886633"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 15:36:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="909868806"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="909868806"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 21 Aug 2023 15:36:01 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 15:36:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 15:36:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 15:36:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 15:36:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SP8OgShxpVyKbAmyOVAS4+qqbH/oGv+BQIggb3UD6/aANy0wZpIsPf2FYd2XeaN9aeJOG27QRDhi2k5x2QeO4+58ow0Yh3TF4GT9jmmKysY5OSDAcnOp4hUS2SJO3waXW+NGL802xeVmsEdwEvzWvFCMOSqSVTonAjZl2q/XONhbJKoHhd/xXST4yUDDETJ0ISePecVsr+QL79mr0KpZUmwj+1Mhaq/+s+kJNsyALMdaXy0voVZ4DV3SJWAck95FTGD0htNcTtA4IDPckETQmMJBRknW82r8WoRZvzhi5jCQO3BBTjC8DXWDXsxuYs+B7qIWMRJgiUyG5p4vnZAouA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iGd4m0qMBhiK6w80ZppcFEswn5dFwAv0fLtpvdl9Cjk=;
 b=JmEo3h5MXz6lBhD4LWZCHJlrOrK/bgL4VQdTLmHtXkdVMGKRcxSkEDPKjQmSEZ3w7YT99+6PVi9mh/n7SHFj5hDcL9JZhxWztPT8lcHg9EoZIGEwQOjcFGe+2E4hWw+U6DYIKduoCNplFi6w+mF4VfPZcKyQJEryFqx99GAIaRqqqyZBHFf7CL76iOpXu403/Wtb+naNUl1Rj5w2pMZg0yd9Xz/+ey16/RseInvarQohuSzwaZYA6LtCaMrzsS2l05omypOYoqpDEFVaY16w+tkGJjYHQGzI+YpbPsDk0l6dqJhzYZsLD50N5T+W8d3StgTqLIRdndYZNUhouOsvQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ0PR11MB5038.namprd11.prod.outlook.com (2603:10b6:a03:2d8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 22:35:59 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 22:35:58 +0000
Message-ID: <a934455a-b94f-8d92-f2c1-e1776509d5c3@intel.com>
Date: Mon, 21 Aug 2023 15:35:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ahmed Zaki <ahmed.zaki@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230818150558.638998-1-ahmed.zaki@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230818150558.638998-1-ahmed.zaki@intel.com>
X-ClientProxiedBy: MW4P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::25) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ0PR11MB5038:EE_
X-MS-Office365-Filtering-Correlation-Id: 44095354-39e1-4876-43a2-08dba296fd83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cNX7wzRl5LV46GWUtCTKouNOsuYeIPoJUHAcB3UbGKRslU7zOZVuYduWr07hGjR5WaxpEn7ZhGXuZbHmLlymnmVkoxtBr6au4y2nBgd8qcxBRDVIU+l4l4B322B0lwHjzsht5EsKzAsZdb2PtUnNrJlCrO76czwPiMyMVPFl8Nfx1xGQfU3IBTP9b9gtluMJFtkQusRbOilM3v85xYwbz7GKiO8QYXTChsiMEYrG6azDT3fEknZfj6ugRuLt9PHjiYUKTkBC7Cq2LWnvZxKW1kIGrKwdvs0OYM+qDjBiwStFGr71MWL5tMU2hEdgpF3vO9UKLAtbOv3ZKERff22I3FcVVOVcgwgHr1wfMjFdXY9YZhikrZdjRTJ8ZDiRB2+gtxIergvEu3m4pPXQty+wPZQdmeIgq/x16BvCKzvtjFb+LoRt//I8vegGZbUxYBaO4zoYvaQY20FBMkm6+3aNItnK6njCYd3MZ1ceoKR/nNN+FvTT7NKHFyvqhk10IQSaylIUCYSsHk3Y2hONSroBWAuuOiLdNtCcHZWihPBAzAOnht3nr4dil8J/lIR9NzOqA6IyuVh9Yzg/1lRuQgY/n0Y9W8RHmFEVrpN6K0h3OEFzRKHB6WvOAF++17+pu1bjCyyrCDqkCIvJedjDfPyzBg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(346002)(39860400002)(1800799009)(186009)(451199024)(66476007)(66946007)(6512007)(316002)(66556008)(82960400001)(8676002)(2616005)(8936002)(41300700001)(36756003)(478600001)(6666004)(38100700002)(53546011)(6486002)(6506007)(4744005)(2906002)(83380400001)(86362001)(31696002)(31686004)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHlSbWRQTmh0Yk5XaWlWOW5waEljMmZMbEVxSmVORmJVcHYrV25IYkNFUGpv?=
 =?utf-8?B?TURpZUpnQTFQNlJ4eEo2bTdicnU5RDBQUFpMclNkSUlrcTBFV1lrS09Ec25H?=
 =?utf-8?B?UVMwa2hoZ0Z4OFJ4TUYwMmFmeEovaDFrcUhWRkFrbHM2aExpOU4xT050Qk9m?=
 =?utf-8?B?dE1aR1pvcG9wNGVMaHRUbjM0SzdOSlJrRnJPQlFqR202VUVRdnQ3Q0p0anNl?=
 =?utf-8?B?VDl1TGsycVNYMkVJb3gvemszWVY0c29GY0w1aTBRQm1sNElFdnFPdHhIM0tT?=
 =?utf-8?B?blNGKzJJeEZRODF5V2hPcDY2TTVnZmowMkRMV0NTSVBocUpKa1A0b2FsRmpx?=
 =?utf-8?B?OEdKVXh5TWIwK1F5cFIvbXA1MTlBMXVBSE15ejhsL3V6NFhqcTJHRzdwTzN3?=
 =?utf-8?B?L3Z4bmFQSnJoT0pVMjAvSVU1Wk1TbzhBanlld09tYzJKeVNvL2NVTUJBQWhD?=
 =?utf-8?B?SjVjdVdNb3NKTUdVN3M1U0Y1cFZxbHVvUmZhaGFRYnJRTFQ1MVJ4Z1U5RlAw?=
 =?utf-8?B?ZEJrMk9pT21ORVVhTmxqQkl0b3dRellFOUZISjFhQ3QyNDUzREI2OUdWZm5D?=
 =?utf-8?B?Q0lzVVU4bEQ1dGZaT1BFTmVLdTlKT0x3YUhoYnZ6S1k0TFNwOS82UEhJQ2Zv?=
 =?utf-8?B?TWFWa1kzQkhuelFwc01yM3JTbFNLZHFMaWtMcnVUY214UzVnUlNsb2FQMEli?=
 =?utf-8?B?dFM0Y284TVVuSGp3UzFCUmpSdW5RbzRaWjZWZDJJeVlKZndsbER0WWs5UDNl?=
 =?utf-8?B?dVAveUFjSGZCdlZXQlBPMTVUNkxNNERIK1lOdHIrZU42NmJVd1pFaWVqU05V?=
 =?utf-8?B?L0RLL3ZkU0pNaENvVTJiVnV2c1hlcVcvMmR4SHNjQnp5UjU5Z2U1NjhTM0lG?=
 =?utf-8?B?NTFiU0UrUzY1Sm50cnlTZ0orUXJDQXEzWWVLS3Nyak5TQ2NtWWJ2Nzc2YVdt?=
 =?utf-8?B?Z0JIclo2K1Q1cGlyZ08raHIrcTlOY0ZtNlFtQ1dXSi9wSEczY1NsT0pGYnAz?=
 =?utf-8?B?SmIwWkNxbXJHQWpLb3pnS0MrTitMTG55TXpzQmY4S0w4aUltd1ZLdUQ5NkJN?=
 =?utf-8?B?NTdxRWF6WHgySUdPcmhmYWZYaUlRcXRnbTE1c3YzN1lYb0JEOSt0TzFmNThQ?=
 =?utf-8?B?c0RJVVpZK1l0aktzWTcvQ25jSmJkdTNBUlgzajUvcTNnMDZSTGFOMEt4c2da?=
 =?utf-8?B?VnpyT01GWnA1QWRSYVI0NjRtb2hrRzhpd0lCVlhnOU1ZbmZ1VzJjc3p5bUNI?=
 =?utf-8?B?YXNtOWp3dVp2d3lOekFJRC81bVdkd1dObmduRWJFQTRvQnVXbkFaUHY5WVh6?=
 =?utf-8?B?bDFVYk9waE1TUVpHbWh4RHAvdVQ1b25IK0JnMXNGd2VtcCtBbDNiWTMxbWw3?=
 =?utf-8?B?SlJ1cU53N2cxcmVzSU0vcGZqejNGUGRjdlp3WVhxb3RMVHhFSFNBNVZmUmk3?=
 =?utf-8?B?dUlicUgwMnFsZjFJcFVvclV5NElIOEVkelREVmRTbmVuMGlRRUJvVWhKM0Vj?=
 =?utf-8?B?VXFXYWZFU1pld1A1UFdLZ29JMnlEVEE0U0hQaDNES2xmNE5zK3N1UGdmVitM?=
 =?utf-8?B?MStkdTZRSk5KeWdjNndHL1V5MDhRbFp3SEc4L0FFektuYjZ5UGNPMWRTZWMw?=
 =?utf-8?B?MHF3dUx5eXZ2SVV0akg0d1UydHF2ekJhck9EdUlMeG5DcVhVZlFQbVZ4TDlS?=
 =?utf-8?B?WFlhNnlxYWR2V0k3Ymdvc3o3alV2UFVKNmh2dmdXSEdQNzVoMlBTRVplL2tE?=
 =?utf-8?B?VUJKOFJxdVVDTXVRK2QxbVd0RFZzN3k0VWpRVUFBbG1XY0NXUWdXWEpnOVI5?=
 =?utf-8?B?TUx4UEZadFlmRHMxMkQyN09BeGRtbE0vYzBHbXdEaXdtT3laQThQM2QxR1Rl?=
 =?utf-8?B?MUNJRVhWOEYycmVGeG1pTU52R2g3dUdXMzBiNWpPYmVFRm1sUGxDK0dYdE1q?=
 =?utf-8?B?Z3ZGU01HN0loOE4rRHVINVFrcGJXeTl6L2xmWW51SkJoY0M0aERGM095Ry92?=
 =?utf-8?B?TTZlVGduUmtTYjdMbDNGc3lTWVl3YkRRMUJiZ1ZqaEJLQVR3aXZKL212b01R?=
 =?utf-8?B?MDNxd3lnMEpiVmRHMmlUemxzZE1lYy8wSzFiaUxHejczRTFOdGVOY3JuU3Zv?=
 =?utf-8?B?U1NkOVoxOFJ3NVplaEpNVnF4a2NydElsOVV4RDJhc0lhRDUyb21RYitPT1No?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44095354-39e1-4876-43a2-08dba296fd83
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 22:35:58.8653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GuhhbZnKzCiGufw+SHU2VHlT16QG5EO+oPyPHM5w/Us6Ya00zmA117/4TRtymfJSGw2RulQkaPlbabOeNdndcyl1Aoy5B79kDFa266IKAr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692657362; x=1724193362;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iMTEuOLCNpSKyyzd7uCiYUFVEYtb6bN4mBhnRPkhLUM=;
 b=IGWkUCvab5nRAsFBi6Pjr1iyEEhPydCn7tRXAU8ZYMiHOghj4sYjWL99
 X4visHbU8NHqmOG5Z/LKWnaqL8+aBQ6XE47Y1qUGyTjUrJ3pAvNhvRKhs
 gIGkpNOrQEDKIogQKYn7fvNkEQ46Op+zfhLaKjJjvLVxLSDkCJ3MVBcW8
 0VfUcTp8TdjCNIItQp9Fd9y9bY2Kd5veFvy0cmWtxBrcSomfVIEHhFl3G
 1ygHLUzbqMYpMpDNp4bU/DmzCToc8cwR0A4CPEMtI2VQFSkkihBYRAaKc
 LgcrMZWrBl3DBz/pW21UKJWRzt4gzI9UxqbzUao49V1hQCfGx1tM4ZYUd
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IGWkUCva
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: Fix promiscuous mode
 configuration flow messages
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



On 8/18/2023 8:05 AM, Ahmed Zaki wrote:

I believe the author of this is Brett? If so, I think you need to 
adjust/change the author of this; I'm not seeing From: Brett... here.

> Currently when configuring promiscuous mode on the AVF we detect a
> change in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to
> determine whether or not we need to request/release promiscuous mode
> and/or multicast promiscuous mode. The problem is that the AQ calls for
> setting/clearing promiscuous/multicast mode are treated separately. This
> leads to a case where we can trigger two promiscuous mode AQ calls in
> a row with the incorrect state. To fix this make a few changes.

...

> Fixes: 47d3483988f6 ("i40evf: Add driver support for promiscuous mode")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
