Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41E06839C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 23:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C60E40533;
	Tue, 31 Jan 2023 22:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C60E40533
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675205858;
	bh=N0REA6EsU36VQKw2YFxG61ehEwGPXodLTqxea1ImbK4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YsPhdQ8VPp2Ad0V4jEdvKeiM5MH11HLss8UKEW4CX5dNZ8P2hRwBXlIhO7T8bKcP1
	 Ye2kf/T7dmmXcgfMlVEPmzGkhZ6TpKjUxCwlRWDNccsJCuIPLi7HygLVZkU2hPWvx/
	 WsFbSAv9j25AdKM8v+GHHttoyQbVz52XU7c5NYmo7MZASyqEiwBNYa66ADtqqb2AaD
	 r4POr8sOCp+SUNVshtD/6IS7VWBdIy1a9lpeYvQ88AZ84aMcr6Ix/ZX6pNTiBX/1mQ
	 JDeJtO5XwlU5hJx/olmF7JdwmvVr1dvbs706XPUhd+3nOFEVTiANEO9gJWNVurASdf
	 5JzvRiIa7SDdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d42YJ9wodOG2; Tue, 31 Jan 2023 22:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2DB5404FE;
	Tue, 31 Jan 2023 22:57:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2DB5404FE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6996D1BF380
 for <intel-wired-lan@osuosl.org>; Tue, 31 Jan 2023 22:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3CDDE41814
 for <intel-wired-lan@osuosl.org>; Tue, 31 Jan 2023 22:57:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CDDE41814
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8w7wfV9vG-5y for <intel-wired-lan@osuosl.org>;
 Tue, 31 Jan 2023 22:57:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F76941805
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F76941805
 for <intel-wired-lan@osuosl.org>; Tue, 31 Jan 2023 22:57:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="315953557"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="315953557"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 14:57:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="664659240"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="664659240"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 31 Jan 2023 14:57:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 31 Jan 2023 14:57:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 31 Jan 2023 14:57:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 31 Jan 2023 14:57:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 31 Jan 2023 14:57:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZeYqI0g6gnGGSv1Q8Y0wnBkBLOKkiQMH+9KVmyvPIpGdJPzrsyCVxkh/QS+3yILY8LqfL3XO6+vvJdQyJiyPoUtXV8bqKItquY33F6woJRLlqpuZbXhS4XxkapaTqkg4ABunz6YZGUA7CzMPSZij6Tc05wmAQQ5yKcISVA1vmnTQo1smx34KkTGSOy/tA0a2A3px5hY3CxZjfqb/xXQLOP+g+kGepwN5xZXBAcDNJYiXvhCkp19Yx2IqP7vN8/Ec3SGVWENySII6M04foG5B+oioctkL/GsTxf9PDsbxrTokib35UHglrO8Fmi5HFrCslC3S8mr43AD1ivTthFWnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQV1P++3Gr2y6NRSN+bjmrtBMq8O/2kO5TBY4xNqllA=;
 b=MbfrO9q6/LrAI1mJk+a3CEsuert7m9YrEBFwWBF0n1937wP1NpRvr6dUPKCBfDoS/mnvySKctFBL8gm33dpOcTfJEq43AKk0stpA8U6+8kf5TTlBV+0m4aBNki1VdOVMMhEsid4SRzMHBLcKiwnLzqUhQIh/zNdX9D/fNKfcyaWtbokN6HiYQVW6Vb7UcGTXsOhvEJYMsoHW9ISLJv4RVWl5lhnZcWLZX4kW+SCJZTDL/WS24N6mfQSpuf/azrw/bUqNp+eMSnTy6KfnwSD4DMkwozIP2HXWrXfsmX5irvYcupwXwZ8iHubG/DK+yj/RoQkJE5LUkwuD/uW7idX/Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Tue, 31 Jan
 2023 22:57:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6043.038; Tue, 31 Jan 2023
 22:57:25 +0000
Message-ID: <7a40c936-ce1b-d6d7-34f8-2ca9590b1b67@intel.com>
Date: Tue, 31 Jan 2023 14:57:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>, <mustafa.ismail@intel.com>,
 <david.m.ertman@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-6-jacob.e.keller@intel.com>
 <83d3f5c1-1f3f-a08e-1632-df8bc7b8ab7b@intel.com>
 <PH0PR11MB5095133D185FFC8E81B06558D6D39@PH0PR11MB5095.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <PH0PR11MB5095133D185FFC8E81B06558D6D39@PH0PR11MB5095.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0134.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7083:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d2d4b67-b04c-48ec-90f0-08db03de84bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gRGKqBKFI1hSOiDt7V2jrE+LJrx+lGvVylvtHbrUXh3XTfN0cvu2JZt9mBkbr9akBULg6ucJGefeP5SOPFxKeLahWUvAf9Ut072Ox4tDzj57prPuT5zQxqwtTl3b50+AIOOzlsom1N79YyOLll5zEluTc0BesAvl6WU9nCB224TLvQJVIlLlYiAyaT5lF2C91F5FrS4gO+tMbQYJJ2dYOBr4PTMjOIiN1IuRhQuXF1FrpkiF9YMer7rZ+86YhR7FD7ALQ1A2geu0TmcSJy0d3VpcyqwiYrEjR0jx2UzwfRYeYApMeAyVAZHNnvrM5n9vL/FjSqwleFEVrYemo6FjaYmAyi6VHHY7mq2xQJiSzifB3lVnvazINJYtnvHEOlfoz2qnOLGY20MbmKWxtLZ7Bwr/OMItiYmOUClXK6pJXQVJHPEOXa39QFht1oDAZAIQwu7d8BzLTBBIASsZk6WR+5b/7PbQ7CqhIYS70e8NPTv1lUnqNSdl9PRSRoLUUX5ZR25zDafcUUr69oelC+q6b48IJrmSVi/q1KnIX0A26tZw+rGdq0oU/vmq5RmeksdQOHEvqmS39GwkGn6JTwxK/3qdymZVN2aARDbSE5V18rntdKkMIqIbrI5XAuuEF9yIZRonbpF2NKW7ofY1rqG5VnJqnJOnet5um6flp52dfnVw2bGg3ULSVwem0ZFszGFgkJwn8re6xisN7Lym3if+0WgxtKDX+gl1jj38EGLzN+U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(136003)(346002)(396003)(376002)(84040400005)(451199018)(31686004)(316002)(8936002)(6636002)(8676002)(41300700001)(66946007)(66476007)(38100700002)(31696002)(36756003)(86362001)(82960400001)(66556008)(6506007)(53546011)(6512007)(6486002)(26005)(186003)(2906002)(83380400001)(478600001)(2616005)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVprYi9ycnpaQ2RjMGh5WEQvN2VJVHF0YnFzeHJ1T3QxSlIrcGpwUkk5SW5R?=
 =?utf-8?B?V25XMml6dEl0OUVoMHFEMTYxQ3phNjA2Uy9rZVBBZE1mRG9uVDA3SUExSE8w?=
 =?utf-8?B?a3NUZFFrTkdVSUdTVEhMWGF2T3RqZVBJZndTVFNQdnJlMVhtZG54cEZWZTFO?=
 =?utf-8?B?QmdZcFp0bHgvYnZ1T2g2NTVZTldzTXdMYnNBbmx1ZTBobVg5eXBINytQcHBu?=
 =?utf-8?B?dGhyOWtES0VJaFVOeXNWbXl5RUlEUWhKSyt5OVhMd2RIVVJza1Y3OFRwYmkr?=
 =?utf-8?B?c0dsWjRvOXVCcnJIYVUvSlVHNGMrMVNwOHk5NkxSSXJabW1CU29ONlZUZjFp?=
 =?utf-8?B?TDdrSXpkMnlxYWFySU5HR011MmxlVmFTQzBOQ0ZxLzZ0a0NINUhhZ1FkU1BO?=
 =?utf-8?B?WnZPOW14aDB0N2JhSks0N091SkJvUzRWbXVNV0l5SGRoSmZoRlZHSllCUHRi?=
 =?utf-8?B?cXp5QmlPUVowYmViM0JDQmlxWFdFMUJNbEN5a0JpTXJLaktMTm1QV0ZrSlVV?=
 =?utf-8?B?YlRhUG1PTDNzWXFPMDRyTmRKNThrSWFvZHc0NktOaG1yMHBCS1JubGEwNGFS?=
 =?utf-8?B?eWtON1oxYU02STNiSlBOZllIQkQwa2t5SXNWV0E3RlNsMDdhNERsMkhPZ3Qr?=
 =?utf-8?B?WWw1UmticnpxazRZbmVKblk5cFBwRi9FM3FTZFdsbUM2VE5uajU4K0E5QjBK?=
 =?utf-8?B?OEg4TTZIdmJxUHlaUW43Y1JsWUFNTUFsalVKZksybWFlWjk5TTBFYXBYbSt5?=
 =?utf-8?B?R21Yalp5a08xdVI1RTZySUx0RlBwczdydU9qUnFRZTZlcTd3RTUxaFBKTGpR?=
 =?utf-8?B?Vi9XdzFzQWpicjRYN05WMXN2S25kSFZXSEV0MmJ5ZVFWZU5CdXduSjg1Yy9E?=
 =?utf-8?B?cW9FVzhGUEVuTFFBa1JGU212UFU2YlpJaWlIUy84MkxscUhzNTNXZXlFTlZL?=
 =?utf-8?B?Ui9ldGNHczU1OE9TRWR3R0lDWDExNWViaHB5alJvSmNuUzNDZFlwMXVvUGJy?=
 =?utf-8?B?WjhPSFUzbmNzUkxvVzJRQi9mMmFRR2UrK281bG1GR3hiNnlKV01SbGhBa1NM?=
 =?utf-8?B?cVQraVgzcGF1b210SjU0MlVaWFNwMGM3ck01aldVTkJYQlM2QlpUN08wN200?=
 =?utf-8?B?cU9kVFRvTHZvUVIzSDA3M2VuZUtWWG04bkJUVlBXZVlzRkRmZ2xMbzcvcVp6?=
 =?utf-8?B?OFlhc3dJdFBTaVVtUTExeXFKUTdCUmJrTmYvTXhkZHFsYmJZQ3JxWTlPUzZ4?=
 =?utf-8?B?bEkyRVVkUEdpS3NWN0pxc244OUwzQWNYb3lNbitIOG9pR1g0eWNQRFY1VUIz?=
 =?utf-8?B?Mm5LZWZ0WTB6SHd5S09mNTVYSFdDRXE5UjBRaUR5aEdhKzJZNGJTQlB2NmFh?=
 =?utf-8?B?WFJ0MGN0WHpmRW4xa21teFZaTWQ2MWlUMnZmU1pKeGd1bWpabTV3TS9scHFr?=
 =?utf-8?B?YWM3Yk8zNlhzeU9KT2NmbG1MQkFhVWFqd2llNkw2SVRaR3YxK01rUmJGMmho?=
 =?utf-8?B?b0lta2hqV3FjbDNwQS9vSzZPcHdDcVRHcGcrdHFVTDVhWnRla2YxdWRxTEZ6?=
 =?utf-8?B?UWRwWjAxTW9oQmJrNm9wYTJLdmZJSWJaUHREV0poVFFzeTFqWDNtUmhETVY0?=
 =?utf-8?B?cjBSQWh3N29NeW1PVGdIWnR3OER1S3NwdWZqZnBqamxwZ295cWtBM1RpNm1p?=
 =?utf-8?B?MnBmYjhLMWpUaklENmFMTUFxaTVkcnd2L04yMFlCcURUNytRcTdBbVNUR0Vi?=
 =?utf-8?B?eVQzQS9yYlpCWE9lT1lZRVhxekg4RDRsbXZRL1BwK2VKbE1oaFFiOGdIcFBX?=
 =?utf-8?B?VExSRTFpWnlEWWo5UW5iMGJJNEdiU3BiNDFGWFZtN24xTTR5WE8vKzBPbTVQ?=
 =?utf-8?B?VXFvMXpXZHpsbVlvT2kwQ3hCRG9wc2hTWEVSNnBpME4wR0pYNkpMK0ZXNjYv?=
 =?utf-8?B?NWFxb0tVYlgza0VKY05wUFQveUFqcHlzaXZuaUpNbGFIT1BVMHluZVlyOHIy?=
 =?utf-8?B?c1UrZjZLVXQ5UHpHWVVRZ0QvY3djbytZT3Z3R0JSTFZYVnMybDdlWUwzSmd3?=
 =?utf-8?B?aUtaNEtlN2lsMDdmSVgzR3pJajI2c1lZaTlrYWU2WStKTXYrU1cyd0d1NWwr?=
 =?utf-8?B?ZmY2dmpKcU1UdE43QnhJNlh1SUVBQjU2Y1FFdFRIb1I2TzdOSVBVeFNCNnR3?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d2d4b67-b04c-48ec-90f0-08db03de84bb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 22:57:25.0376 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: plo21wNXuiNiowyvL4uQteL/4cjdvNUD0Ae7/B0vbERBf6bQUNTZALuWBv4jo1cKOB2ZxHvAha84/QXfSNgA3DMl4BVVhShhX9FfNHQ83Us=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675205849; x=1706741849;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZJ1nNc1H42FFcgbPj3dhdunzYKpdF7Udox1Plvs83t0=;
 b=hUYSNVHyCwkJMp3V+PbPRrFCMk/4S6QkAYp32iKn0GQQLkkyllZYcgq3
 DaKGM3u7vUqp+AD7TRBuruP5jwxQIkI6OUOYc6i6ztIhTj1waNf+JbsYH
 QXWkRA21JrV4bSEoKj0gxRJVLonIsYGk+YzG0kRTkK5lLEOLSQ+s+c3RP
 lvEhLPOlChY9ERk7YFr5tQprpA//2xTUY4/L1V2SaCAwiy2c7uyfQFyt7
 b7uJmulcUsfmL1yDi1h/qjN7qIRS8iVbWDIw1SRoP4jIRN+cqmGQ1gVOA
 WA3uHQrFEl3YzYq1Au1Ph2gglcjMqm+hGsjQ/knk5Mz9cCWAYCRpBnYNg
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hUYSNVHy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA
 latency issue by allowing write-combining
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/30/2023 3:34 PM, Keller, Jacob E wrote:
> 
> 
>> -----Original Message-----
>> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
>> Sent: Monday, January 30, 2023 2:03 AM
>> To: Keller, Jacob E <jacob.e.keller@intel.com>
>> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Linga, Pavan Kumar
>> <pavan.kumar.linga@intel.com>; netdev@vger.kernel.org
>> Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA latency
>> issue by allowing write-combining
>>
>> From: Jacob Keller <jacob.e.keller@intel.com>
>> Date: Wed, 18 Jan 2023 17:16:45 -0800
>>
>>> The current method of mapping the entire BAR region as a single uncacheable
>>> region does not allow RDMA to use write combining (WC). This results in
>>> increased latency with RDMA.
>>>
>>> To fix this, we initially planned to reduce the size of the map made by the
>>> PF driver to include only up to the beginning of the RDMA space.
>>> Unfortunately this will not work in the future as there are some hardware
>>> features which use registers beyond the RDMA area. This includes Scalable
>>> IOV, a virtualization feature being worked on currently.
>>>
>>> Instead of simply reducing the size of the map, we need a solution which
>>> will allow access to all areas of the address space while leaving the RDMA
>>> area open to be mapped with write combining.
>>>
>>> To allow for this, and fix the RMDA latency issue without blocking the
>>> higher areas of the BAR, we need to create multiple separate memory maps.
>>> Doing so will create a sparse mapping rather than a contiguous single area.
>>>
>>> Replace the void *hw_addr with a special ice_hw_addr structure which
>>> represents the multiple mappings as a flexible array.
>>>
>>> Based on the available BAR size, map up to 3 regions:
>>>
>>>  * The space before the RDMA section
>>>  * The RDMA section which wants write combining behavior
>>>  * The space after the RDMA section
>>
>> Please don't.
>>
>> You have[0]:
>>
>> * io_mapping_init_wc() (+ io_mapping_fini());
>> * io_mapping_create_wc() (+ io_mapping_free());
>>
>> ^ they do the same (the second just allocates a struct ad-hoc, but it
>>   can be allocated manually or embedded into a driver structure),
>>
>> * arch_phys_wc_add() (+ arch_phys_wc_del())[1];
>>
>> ^ optional to make MTRR happy
>>
>> -- precisely for the case when you need to remap *a part* of BAR in a
>> different mode.
>>
>> Splitting BARs, dropping pcim_iomap_regions() and so on, is very wrong.
>> Not speaking of that it's PCI driver which must own and map all the
>> memory the device advertises in its PCI config space, and in case of
>> ice, PCI driver is combined with Ethernet, so it's ice which must own
>> and map all the memory.
>> Not speaking of that using a structure with a flex array and creating a
>> static inline to calculate the pointer each time you need to read/write
>> a register, hurts performance and looks properly ugly.
>>
>> The interfaces above must be used by the RDMA driver, right before
>> mapping its part in WC mode. PCI driver has no idea that someone else
>> wants to remap its memory differently, so the code doesn't belong here.
>> I'd drop the patch and let the RDMA team fix/improve their driver.
>>
> 
> Appreciate the review! I proposed this option after the original change was to simply reduce the initial size of our bar mapping, resulting in losing access to the registers beyond the RDMA section, which was a non-starter for us once we finish implementing Scalable IOV support.
> 
> Searching for io_mapping_init_wc and io_mapping_create_wc there are only a handful of users and not much documentation so no wonder I had trouble locating it! Thanks for helping me learn about it.
> 
> @Dave.Ertman@intel.com, @Saleem, Shiraz it looks like we need to drop this patch and modify the iRDMA driver's method of requesting write combined regions to use these new interfaces.
> 
> @Nguyen, Anthony L Can you drop this patch from the series on IWL or should I send a v3?
> 
> Thanks,
> Jake 

Mustafa,

It looks like Shiraz is on vacation and you're his coverage. Can you
help investigate this and the proposed io_mapping solution from Olek?

Dave,

I tried to add you on the original thread above but it got lost due to
an incorrect email.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
