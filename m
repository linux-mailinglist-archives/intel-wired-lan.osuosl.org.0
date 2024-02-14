Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2F3855369
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 20:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FC438267F;
	Wed, 14 Feb 2024 19:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2zLGWN9zbcJ; Wed, 14 Feb 2024 19:45:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3558482681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707939939;
	bh=PC9FnUjr9wite95+5ob6l2FZyM2nxyTGRUl9eAVz1Vc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2HLI0jbwtys4ytFz8ZzOF6z91gwHJziejAe4BFdcLGCRphdBlUIN+++4LJKtFSqp0
	 lcdWD/ZrdZ3ei3jLVsDJdI2BXqszOyQ6bYtfYN87zs6abUVirKQMpHUqQERW4v2o0a
	 tTCQ3VJfTiRw+53LF4PgLxfbOw4fd1aOyJecrLZoqHthF2yxdR+REjqIaeW/y8/CcY
	 1Mg62nN0X5ptyNc2Yt3HmTOJkUXc3umUBj7EIdgVo9tKhFeKcG0hTxxkT+7Znfip1J
	 baAoPKrQAWEENBpNIwABBDAhEevOQGmQwLH+sZcb+EvMDl0XdkT63+RlXOeT32ENZc
	 JTvioa5M0yjkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3558482681;
	Wed, 14 Feb 2024 19:45:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE9A91BF296
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 19:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D728F417CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 19:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id otpldkKk7QGW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 19:45:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 908CA41723
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 908CA41723
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 908CA41723
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 19:45:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5781339"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="5781339"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 11:45:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="7906769"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 11:45:35 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 11:45:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 11:45:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 11:45:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gdaqto0feVNMCmYmbIrlJwaUsJdEAsU3sC6HA97qDcjCtKv1XmEi9dqDphtNnAn4NOlSIuR9Rx+/WYDsW4R+UC7sVvb/+oa4PjDtRl6n6oD4o4NTJik2etyVlCCAoFFRISaHJ1qAG/El5RoTo5HFQKW9aTcPIF2Oe/kjQTi4cZYwuf1IOrGxOB0opYsVeznZY5t3q/OLYR9OyOnPvNcTnqSCCUcad9pDP5x6GmjGrqU5y9qK31BuD7kvSyGfJzCcoQjhyx6CkbDkDztEV0gtu6+aWHF1AcbWoBKF6hpeqSGMSf0tITFx4h0nGIeZOxlu/z9wxF4V0vLk4l9iRWWp1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PC9FnUjr9wite95+5ob6l2FZyM2nxyTGRUl9eAVz1Vc=;
 b=CkaBX7YhTfe7J4DIsCAi8f4CicJGK9YilTE+nyxAde3DZINdgKU4EWX5KhLff95oT4FydKYK7rHhBO9nU/wc5T4fxUBO0JH6FZ5VY3UGl2RmWoEGxO7bZqIe0pJMAbEM8pOI3rMX2E76W8mq+R2I1xZuifPL6w2XjLdXbZ18i6RabPLxU4uqHlxaiJxhdNo6PN25YpGPdX0SAci9oqyDefI+PCcx+GRSmnXAYfyqB8lsOeMCKnkhHnUyhaSYOwebbl8B/2/tw7dPPOXUg3EjeYF1j2iiNi576Uw88jeHsBtftCCjDpbEW0kjFxerovJaXOcMPUkwZsj4mIaYCEMFug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB7616.namprd11.prod.outlook.com (2603:10b6:510:26d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Wed, 14 Feb
 2024 19:45:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 19:45:31 +0000
Message-ID: <91f97e78-8b2b-45e4-b687-ee6a19db8644@intel.com>
Date: Wed, 14 Feb 2024 11:45:28 -0800
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-5-michal.swiatkowski@linux.intel.com>
 <ZcsueJ1tr-GdseIt@nanopsycho>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZcsueJ1tr-GdseIt@nanopsycho>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0223.namprd04.prod.outlook.com
 (2603:10b6:303:87::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB7616:EE_
X-MS-Office365-Filtering-Correlation-Id: 89bcd5e2-70b3-4b6b-a934-08dc2d9580d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y53ACDpPQEOqJO9tYICNxaR//NmYc1XfF/ktLq4z1tIwPZl5i3S18P1GI+2OU8nqPCyC0U3potlmYWz1ySe4XhhXMpBqO4/DYwbqo3q2LapcdLpbk3BMBawmGtQRE2nPzL4VBCifNx4M111plWbT4pxYvN/NCLmDmPQIaAONZr8OAgYvhF2cBzNRK8655Fuu89ZlAqsoMaEJAfuP7sdXf+YOwqIIBfEc89Euzcy6MgnVMsmo9UNkZHCV+YWWtLgnmiPRzjMy1jlD30YOlMh5wL0gmKFfhWrCduesr2JMGfPygKOImLwyvgrWlYEC7x30843A9XnhWAdZwvb19IPZiynS2Ch6aKFSYCvgUJ4FYmNlRalYeNy0t9wtdU+Zz+nXnlzRvlcs2MUitXpZ6dwVLlL/A6MmjLYsJTGt9nZL4D/1jVlrk80n4kouAOGMqoXNzt0LdY6MVOoWU7ojVUr5jNImx7h2fQDwIOJoJis0CmQuiF8zMhDDD6rTtNDLidqvfZz6aEQgKXTfRuggrEa/y6CgoPLUro1H33tObD0UvzMKOqJtCm2fCoJyPxDNjleY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(366004)(136003)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(2906002)(5660300002)(8936002)(6666004)(6506007)(478600001)(6486002)(53546011)(6512007)(36756003)(38100700002)(26005)(82960400001)(83380400001)(4326008)(31696002)(86362001)(8676002)(2616005)(66946007)(316002)(66556008)(66476007)(31686004)(110136005)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEQyVzMxR0JsTnRpajJBNnJybC8zN3ZVRjIxNlFOVjdpaDBLcGh1eEZiZWRC?=
 =?utf-8?B?ODBaVXpHUVpxV05QV1Y1U1RZWWc3YWtjOCtFa29FQ1M3cC82dDFiNmJieWVB?=
 =?utf-8?B?b0UvU3drTlprQngrM2tIdDFyc29YNkxvZHBPOVVCc2NnemhUN2YwUURRT0tz?=
 =?utf-8?B?TGRvcXJQaG5KVkQ5ZCttSEpJRDh4K0xOWFlINHU2Sm1sL3JMOXk4NnVVb2Rw?=
 =?utf-8?B?SWtkRjY4REZRR3dpTEZvT3NwSFRoOGVDakFzbUJONlhFS3BqNWVtc1QzT0Q2?=
 =?utf-8?B?WVM0QVpicldhZVl1b1lBY1B5aUtLRjZ6ajJWN2NPUzhUdDB5UDFCckJsckRW?=
 =?utf-8?B?aFRnYVk2N0VmeEVxVlQvZlNiK05yZzVIa0NMQ0crTFIvSitMeGNnQ2FoYVEy?=
 =?utf-8?B?RGRNWGRSb0FrMmhIY3pnbGtTOXh6eWwxQXJUSU5kVjc5M2xFQ3RYSVFERWVU?=
 =?utf-8?B?UCtSZ0RUTVhYWitvU3B6NEw2VGNRU1JrRlNIZHptaFU2SzJBRDdKQ0FXbVdZ?=
 =?utf-8?B?ZWhJL1VEMVJkWDRyeGgvWHRRQXJmeTlYM2FjVlZKeDVwK2QrWXVqMVhmeHhS?=
 =?utf-8?B?MERkaEt5aGpFZkNzRHRlSlA3bk5jcmduK3diRTMvUUR1Um4xelZmZE1RUUc2?=
 =?utf-8?B?U0Qva1lpTlFZUHYzS1lqYkVUZWVWZXJYVHlOcUpTZVRZYytldHJwMTJRNU11?=
 =?utf-8?B?cmJycG96M3dNNzBja0NweVNjSS83NlBpUkNSZGpud0k1VlhrYUFSSTQyd05m?=
 =?utf-8?B?V0lGdDhMT1YyK1Vja3hpMElTbG8xVEIzL1I4allqVU1IS0ZwaThGcktKRUZw?=
 =?utf-8?B?VVdaRCtFQVZjRGdDK2RvdnJKclpLeXArUU9IMnZ2N0VKRURvWmVVclNXV3Ns?=
 =?utf-8?B?UTBsMzcyVHozWGVveERtejNwTW9wVnM0NXNPY05tUEMwOFFSRUQyR0V1RmJE?=
 =?utf-8?B?bERONFVadlQrTXRkWmFBZnBWTVpEUE9RUzQrYjJ5ZThNdVhneWtxM25aNXFW?=
 =?utf-8?B?U21VQUNxcGJadUVTZTNTMjRZek81WGVoaWtEc1JzVXFOTHJHNnJoZFJxVDJD?=
 =?utf-8?B?UUh1M3cvMXFYb0VmMUZZcFp6QVVWRnpyZ0UxQmY0S0ZrWnVVVGN2L0E2YUZh?=
 =?utf-8?B?Tmo3WGV5WGx2TzhZRzZyWEF6N2VnNEhnN1ZNK2t4V2VSZzIzZ2x6b05PYkJE?=
 =?utf-8?B?aVNNRlBwWkNsMzV4d2pQVCtnT1AxM1BlN2VNQnIrUWV4ZmFDNytOMFFjTHpG?=
 =?utf-8?B?SzRPbWxzOHFBOFg4d0lHdW85MEhYUnFBaS9HcEUrMXplS01ZcDBoVHJQWldL?=
 =?utf-8?B?djJOZHljdHczMVV3bTNTa2JmQzhxdE1odHZHRm1RQTByTi9wLzBKNkljbW9a?=
 =?utf-8?B?WGxLQ0pFa00zc0dnbHdPdlE2VzNiK3RYY250alQ3L0dJcngyQXRCblVRUXU5?=
 =?utf-8?B?SEx2R2FMbC93ODhWa2h0QkZsRDFCODJEN3Jzc1YzOFdhem5PWnZyd01sNTli?=
 =?utf-8?B?cm1zR0ZWTUxGd1AwS1NyUjEzTlNRM0tzSk1LUmRrM2d0TE9YeGJnS3hJZ2lh?=
 =?utf-8?B?MFlQYm02WG94a1JKVy8renlXdHhFNHpOaU1Db25TSXlDZlJUcG9KUEp0cEpw?=
 =?utf-8?B?cFhraTRpbzV1dHJqNk1LczZWeG5FaytQdHkvL3NTdXdWZnVla29mRlFkcXhR?=
 =?utf-8?B?VUhyeUdiVXQ5QnpxZThPdzFVM0huLzBlUTVQU0lKY2drVXJlbTMraGpNNGVk?=
 =?utf-8?B?Y2xLd2g3ZldiQ0Y5VnpOWTVHWXdJdVR1ekc2cTU1Y2k2U080RklmS1RVdEtt?=
 =?utf-8?B?VzV4MGpQK2Ixang1NjRkclR6Uk1WZDVYV0ZjREF0YXEvU1hnQWVRQ05WaTU2?=
 =?utf-8?B?eG82OVo5Vlp2N1FOTmYxVjY1Qm5ad2IxckRqMUVmSk45T29pbEJDNG9nZlpL?=
 =?utf-8?B?dnBtSjBpekVqY0J1Vk1maGNtQ2I1emYzK2YvanRMWWhMOWNhMlNCN2hTeHRl?=
 =?utf-8?B?NDBOTTNkZXdkOWVNOUtSZzFEajJrNnA0ci96NmEvaFVURjlySHBTYnM4RnhE?=
 =?utf-8?B?aUUwQVpKUnRXcFRxSDdhRkp0RCtWYjFBS1dKVEkzK29aQXByV20zOEp4QjRT?=
 =?utf-8?B?TWJHWjZIa1IvT0M1ZTNYVWJkVXJ1NnZFSGRrN0hWRURPV2ZKTmk0TGg4WXBx?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89bcd5e2-70b3-4b6b-a934-08dc2d9580d9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 19:45:31.6619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F8n8b674sVuDwwyAfSJLI+ttudqwd8Nz3VjS/o4YMl36zVpfwepJp1dLpY/uzihhdEsB7jyfodZFrvbhJWwsAnChBlc0qv9XBtQ5VXYY1Pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7616
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707939936; x=1739475936;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/EsFNUh1yuCmcysR/DDsy+GdhlW0pspLLceFS4yyV1s=;
 b=HU+d0bcwKbSclb1hasAh7a5i0T46eN/8EIM1KCM+OeHjqW6/VU0iOzG1
 U7JQ1JdI3zNR7mIl1tWjxYOkWpubr1T0shMHTzagVneRhfS5SJrCHvOvE
 bq/77tZ2+jcSIdPQUuUJQ0YwY3lTLJpAzeekYqIk0X/OP5ULFW3mplUG+
 rg0I/K0OjoiP3t6qTE2krhMzmnoht4jLwR0Um6fGaukLlOhPgrhCeTr/f
 NxE2DcYJpNQrTleaOafa6DEx8hYeHDnVKv/kIDnEU3M+/Xd5Cfolmnvxh
 6sok67Pme51uPf1gaBlpqWIs7ViCUtZDGNt1eTYnR4m+fmknfYW8M3lZP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HU+d0bcw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 04/15] ice: add basic devlink
 subfunctions support
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 przemyslaw.kitszel@intel.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 netdev@vger.kernel.org, wojciech.drewek@intel.com,
 Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/13/2024 12:55 AM, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 08:27:13AM CET, michal.swiatkowski@linux.intel.com wrote:
>> From: Piotr Raczynski <piotr.raczynski@intel.com>
>>
>> Implement devlink port handlers responsible for ethernet type devlink
>> subfunctions. Create subfunction devlink port and setup all resources
>> needed for a subfunction netdev to operate. Configure new VSI for each
>> new subfunction, initialize and configure interrupts and Tx/Rx resources.
>> Set correct MAC filters and create new netdev.
>>
>> For now, subfunction is limited to only one Tx/Rx queue pair.
>>
>> Only allocate new subfunction VSI with devlink port new command.
>> This makes sure that real resources are configured only when a new
>> subfunction gets activated. Allocate and free subfunction MSIX
>> interrupt vectors using new API calls with pci_msix_alloc_irq_at
>> and pci_msix_free_irq.
>>
>> Temporarily, before adding auxiliary bus driver for subfunctions,
>> configure subfunction netdev directly for the created devlink
>> port. This will be modified in the next patch to properly that handle
>> devlink port as the port representor.
>>
>> Support both automatic and manual subfunction numbers. If no subfunction
>> number is provided, use xa_alloc to pick a number automatically. This
>> will find the first free index and use that as the number. This reduces
>> burden on users in the simple case where a specific number is not
>> required. It may also be slightly faster to check that a number exists
>> since xarray lookup should be faster than a linear scan of the dyn_ports
>> xarray.
>>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> ---
>> drivers/net/ethernet/intel/ice/Makefile       |   1 +
>> .../intel/ice/devlink/ice_devlink_port.c      | 508 ++++++++++++++++++
>> .../intel/ice/devlink/ice_devlink_port.h      |  30 ++
>> drivers/net/ethernet/intel/ice/ice.h          |   4 +
>> drivers/net/ethernet/intel/ice/ice_devlink.c  |   3 +
>> drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
>> drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
>> drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
>> drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 138 +++++
>> drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  15 +
>> 10 files changed, 716 insertions(+), 4 deletions(-)
>> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
>>
>> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>> index cd4ab46d72a7..d56a7165df95 100644
>> --- a/drivers/net/ethernet/intel/ice/Makefile
>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>> @@ -31,6 +31,7 @@ ice-y := ice_main.o	\
>> 	 ice_idc.o	\
>> 	 ice_devlink.o	\
>> 	 devlink/ice_devlink_port.o	\
>> +	 ice_sf_eth.o	\
>> 	 ice_ddp.o	\
>> 	 ice_fw_update.o \
>> 	 ice_lag.o	\
>> diff --git a/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c
>> index c8c823467fcf..90efceaddb02 100644
>> --- a/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c
>> +++ b/drivers/net/ethernet/intel/ice/devlink/ice_devlink_port.c
>> @@ -10,6 +10,8 @@
>> #include "ice_eswitch.h"
>> #include "ice_fw_update.h"
>> #include "ice_dcb_lib.h"
>> +#include "ice_sf_eth.h"
>> +#include "ice_fltr.h"
>>
>> static int ice_active_port_option = -1;
>>
>> @@ -432,3 +434,509 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
>> 	devlink_port_unregister(&vf->devlink_port);
>> }
>>
>> +/**
>> + * ice_activate_dynamic_port - Activate a dynamic port
>> + * @dyn_port: dynamic port instance to activate
>> + * @extack: extack for reporting error messages
>> + *
>> + * Activate the dynamic port based on its flavour.
>> + *
>> + * Return: zero on success or an error code on failure.
>> + */
>> +static int
>> +ice_activate_dynamic_port(struct ice_dynamic_port *dyn_port,
>> +			  struct netlink_ext_ack *extack)
>> +{
>> +	int err;
>> +
>> +	switch (dyn_port->devlink_port.attrs.flavour) {
>> +	case DEVLINK_PORT_FLAVOUR_PCI_SF:
> 
> Pointless switch case.
> 
> It looks like you have odd habbit of checking things that cannot happen
> all over this patch :) See more below...
> 
> 

I remember asking for this kind of split because I have some work for
supporting dynamic creation of Scalable IOV VFs which create a VF port
instead of a SF port. Since it only makes sense in that context, it
makes sense to remove it from this series and add it when its actually
necessary.

That's where the whole "dynamic_port" stuff comes from rather than just
calling it all "sf_port".
