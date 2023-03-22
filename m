Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00D76C5AAC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Mar 2023 00:41:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D98840576;
	Wed, 22 Mar 2023 23:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D98840576
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679528499;
	bh=Ep90T/Jh0a56EkSAVZGpUogYS9QobKqHGw77odw6lEk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XYLbVw+qcHt0/kB3bwN5G6McZ6xyvPdRS4e5qSbUlFX0DHIylnweEG6PqQaev6n0U
	 Qxma/Qztq0RbJNoh33DfXmPqEw8eEkBCWzMt5aHCJsLOEvNdWNvkekhFGZjaQbr2x6
	 270m+QQldeoLagZ6vWjLtOHw7gVAZEtl5a3pbVH/CXVz/IJRk9knWnea2b6v4CkpcM
	 qJZ0IgrOcCKE87eSBwsEQomfI3ucSA0d1PzzbPub1XYzFr5qt9KG701VkIT/Z+FW/a
	 cC30plqHeCwxHbaY421t5Ql4sx25gaHFWvYhdNeHLvFWCnNA/EpIuYqOwDZMg5Z//O
	 NoOvfoUYBqVcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hb-prXBQ1hXC; Wed, 22 Mar 2023 23:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 350D34012B;
	Wed, 22 Mar 2023 23:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 350D34012B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4005B1BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 23:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 213C741C2D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 23:41:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 213C741C2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oiUO96kRQhuz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 23:41:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4787941A2A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4787941A2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 23:41:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="367094593"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="367094593"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 16:41:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="825605052"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="825605052"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2023 16:41:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 16:41:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 16:41:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 16:41:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 16:41:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIiyg6kOjB6DMncRbA3mlo2xZpW8Glmn+fP/IPCjsmK4xJszgsRiSfRvEB/uw8C6HvlYBTEtHh5XnslNGTlEcf9ImpeEwIf8cUM+0mpYTx9pRyVd1YEYcVH/HJ42trlFr1ljGLUdc9JVFGB/4dw7NjWTCLqhHJAAGhfFluyjhfnFqKujhcONqofx1HN39szBuXSZp30lNbkH/V49KbfcuDPM3/4nT4q8TAGwDuBqlB2LK24XPpUq+j7S0HMazvL97zft3L2F4Oq2xI/67wTlYIi3+TFEjKGRlorphaImtVgyCcvW0h+JzFdEaU/kehPn5O3pqqQNgYSgmIXQbJo5OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=42oPmvLDWj61pDFevFw+Abddr2glskQbSio7vutPZMc=;
 b=iHmuYdj6IALgwBesnmobhx1Gv6hy/7QV9ORhS67BWaycEDsAnWC1kiq9/KAyqOy3E8Y44m3Dxf5EutdvN+8ev2HLNJMJD3bGl9luzXPwGHcqgiH8nYcTM4UtLOlu2IgQHAMcnuZRFQbThlobfewgtOgL+Ih7A8YVb1/sT4ggSjdosqWOg71mhphnrtjKBziN4nBo2TT9x1L8x0ldgslD9ZC2KINCiHh5RkJjQaV/2Fus9sAhO8SvaXQMxM8XSQhHw1ubLwXvA/AGl+76J11GpRruwPwRKClT5KWs4FQ4ojvRSaV8/LqZNwtkCLoWpDMD8Pj2rA5/tTE8GIVssJ+M6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN7PR11MB8112.namprd11.prod.outlook.com (2603:10b6:806:2ea::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 23:41:17 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 23:41:17 +0000
Message-ID: <9c65b83a-c26e-172f-87f8-791784229004@intel.com>
Date: Wed, 22 Mar 2023 16:41:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-4-michal.wilczynski@intel.com>
 <a57f2fd4-e412-9643-953d-a41a690a55d9@intel.com>
 <4b194eb2-9944-8594-860c-d77d2b6d3a98@intel.com>
 <910a321e-d545-6eb1-9a9b-58bfa1ac908e@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <910a321e-d545-6eb1-9a9b-58bfa1ac908e@intel.com>
X-ClientProxiedBy: BYAPR02CA0003.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::16) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SN7PR11MB8112:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a0482d7-1632-4feb-fb3e-08db2b2eee7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w8p369aC12bZrh8JJNKH3VObevFrnVzUXjHqhMx3oaDNSy0xkOPSHx7u7jSmRtC2FBd3MxumJZuERtcHJyyWg/7j9ZsCVud1zzW6SbSE28py+5UGBxNGzYQcNEhkzg5rt9Gc1cRsspLOuwTXaqHHOdjwyOa+IFNYG/iSpMdlfMb5Pgb2VZw+YoDS3CxX28DhNaXEwBcO4baXLZdEpHAjZFdaT/3BNGAZena3nDc45RNSWzx3V3rPfnOSk2fQ/TmaFgAVIF1sZk8I2Fsdbh34IDrTM7k2uoeSgKhfYp/hp0e64fp0gOcUH0P18dV8CnOpjwprGtsw2tfZxqna6ofqPFsUm9/p4jyp9a2oz9fwibQgvyXJii5NLl/o9PKOoSju82oQFAeoLu1zH69KFWZSdpowaifNzCLRZkqyYDBcbG5kmCZYAZVpwCA7UOdDq9ljT4XI0gEGQjlWF/MZIFA3Z0PrTsoI/cT9NP1ZznGsRb1tXi47x456lstVWJkU1pMZJM+bbNNXaB+hJxDbgfPOGYoY5T4iGUe+uFXVdyC9YGgLlf6CoADq/0C2uJMgdTE3qHxUKGWm54SIKt2Ud4YA9UZTFPsQtift/mcSf5xhAI5kQ8WPM6ZmdCDDuGD28TwFIzHjNF7GmVoG9MCFc3N2gWImJVElFyhuvFA6gg9GViHAXqVYwveqSbv/WchHqmYtDJrFMx83iwEIHgv0RuXg0pwGkiC8y8wak6AsVP57snM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(136003)(396003)(346002)(451199018)(8936002)(5660300002)(4744005)(41300700001)(36756003)(86362001)(31696002)(2906002)(38100700002)(82960400001)(478600001)(6486002)(6666004)(2616005)(186003)(6506007)(53546011)(31686004)(26005)(6512007)(8676002)(66946007)(66476007)(316002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEdmNk9lTWJSdnRtWjNOYm9oVGZ5V0o5N2ZRRWc0cVRDbWFnNThaUyt5U3Vm?=
 =?utf-8?B?Q3NOQnlxYUtob3lucmJRVThZZ2dVSk9YdmpmMm5ZWTNGZkVPenNhUWI5K0Ra?=
 =?utf-8?B?NlBWYW83aU9tQ21vWmNObzlsM0JNdDJpbHUzRXBYbmN1SEtJbnBoNWRmVlMw?=
 =?utf-8?B?U1lyVlhpOVpoeVloNGEydWltYXVlRXV2dHM5VDNVcnhZcFhaam9uWHk3d0pG?=
 =?utf-8?B?QzVCY3MzQ0dWWmlxb3JGMWdTaVVwR01FeDlNMDgvYzZVbzlWK2RMbEZBWEZl?=
 =?utf-8?B?a09idXhnS3F2eUVNc2VtTlY0dm03eitwTS83NHp1dE9tYTNLbXdEUmY3Y1lO?=
 =?utf-8?B?dHVmSDFmVC9FbVMzYWlpcVh0cEw0WkZmKzRNQkF0dzhCb0xoMDllRHpMd1RQ?=
 =?utf-8?B?eWtTcFFmd0VpTzlPeGtPNmROZHVSS0QzM2pvcEpEUzdBczFSSmRSUTVHZE4x?=
 =?utf-8?B?d2RIeDZJL2JqNE0xYVB5OGZNdGxZM1pNVk9KL09NcUs2amErY1ZSKzBUR0wy?=
 =?utf-8?B?NzdENmNuYjF2dnJ1eU1vaDZqby9FV25GOFgxL25SOHNKWEtaK29pbVo2MXZT?=
 =?utf-8?B?WTZqcW5ySWhQKzNhOUlDNC9pYThON3MrTVFuT29xeUpVcXNqd09IRldwcHZI?=
 =?utf-8?B?SE5NSktTVWYxRDJvQ3FiN0k3bHNIV3VKV1dORU1yaGIxNXNFK3RWc0hPUFlB?=
 =?utf-8?B?Y2d4cHFSTkU3T0J4bkQ3T00wT3ZkNWJwWjFVRUd1TjRhSmZxQURkdWJvM29E?=
 =?utf-8?B?enc3YjQ5UHZCeElMb252YkRST1VxMk1YdXZRM1pqZFNTRjQzbTZzbVJDMGQw?=
 =?utf-8?B?UkRCN2dxUEhxWFdOdXFnSHd1NHlJY3l4cXZ5UWNQYzN5VW9kdWVyQkZsRzgw?=
 =?utf-8?B?cEwvaUNXRkUrVmRUb1htbzYvRFdSOXYvTDFselljTzBDcUV6dDRPZ0Jwelcw?=
 =?utf-8?B?QWVmV1lvN2VwdjJ3c0tUNmlKZzREZzBPUFgwQmgra2cxVVZXSUUycCswRXdl?=
 =?utf-8?B?NXZ6N29UMnV2SEl1VUR4NFJjQTVoWmgyS0dBZ2VINmR0RlRuMkprSmJYYnE4?=
 =?utf-8?B?T0tFYTRKbm96cEV3dlJ0SytMc0F6dzNrWnpDcEtaaXY2Wkl1NStIVEQ1SnZ6?=
 =?utf-8?B?MTVuVm1wWlA2NExBNUZQR20wTkJ4N1drSnFYTUxSRGVwUTAxdVNiWGpIcjdH?=
 =?utf-8?B?WjR3VkN6dFhKcmVHaWdBRmFEdFFpRUtyaHFUS2M4aW9zZHRSaTlzK3gyWjBX?=
 =?utf-8?B?bnlreE14ekNSeTg3aTV1RVlYNFN3aHExc2NjSTJBNHVBM1M0dzBXZkhRQ29z?=
 =?utf-8?B?ZTB4b0J6VXBvTFRBY3lCdzJPV0JTVXJ5anVIclgybGNybmZPLzVwWEQ1MkZN?=
 =?utf-8?B?ZDI3MTg0WDlWenpEOWFSTWp6dER0d28xU2dObk1JMnNHRm9FQ2V5MjlveEFu?=
 =?utf-8?B?NnlUVWdBSTBmanNKUmpsTlE2dVU5aVFtUnk4WVg2LzN6QUlFVEhhLzUwV1dU?=
 =?utf-8?B?VkRLcG5GYjJHYnZlR09pallGZ25hY2lheVJWVU5QUGkxcU1xSS9WMFFCNVNM?=
 =?utf-8?B?dG5SckxDL1ZpMTVsTmU1Z2hIOG5YdUxiT3d1M1prcFMwRjQrQzB0aTR2cnQv?=
 =?utf-8?B?a210NFAvUjdFaW5udFd6T1Y0TjQ5WVpSc2lBUzNUU3hNaWJTSTZuT2NiVXJD?=
 =?utf-8?B?NGlUME1CVC9lV1VmQUNqYmlWbnBRcFdTajRMQ29weS9iQmlDQ3pyRXZiYXp4?=
 =?utf-8?B?THR3WkVQZjFXYmlHbkQ4ZjZJeWd6ZTlOZHJLMS9uc1Y1YTR4M2QzWlZPaDBZ?=
 =?utf-8?B?ODRoZ0hNcHdtbU1JeCt2Z0lKTW5HSWZGMDRoaHRKeDBpV0hXZHV6aGdmaWFk?=
 =?utf-8?B?T2FuWW9WNVRoUWtPQVZZKzcvdWorWUZsTWpFSExoRk80K29ZWktuQk9xQ2ha?=
 =?utf-8?B?M1R5eklTQkUweUtGaytaM3d4OHdkU3dCOHhUNEtzYm5sYWlKcFhiRWJXaW1K?=
 =?utf-8?B?Ykd4cEdoeGxiNGRWOTdyYkMzOW1vNFJMaStpNTBuK2szWWJUR0U1TTE3bys4?=
 =?utf-8?B?WWdzZmdyZjB6OWVoM3VWSnJkTjlXN1grQWlUWFc2WGFic25qUVNsSFkvNDdG?=
 =?utf-8?B?VExqRkN6RDh1NHowRnJyczZpdW1TVTRxWlh4SDB5YWo0YVBBSXFPOWRlSHdH?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a0482d7-1632-4feb-fb3e-08db2b2eee7b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2023 23:41:17.5462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEyZcWJ+L55hptmn/LUKm2wkaOvW5fIf2+GlhiAF5tNsG1W/FwxqxtruUWJpny3FWn556Z6Tw4SZy7qNadFMXFmAmtP2ucbmEFtbAZIAh8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8112
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679528492; x=1711064492;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=42oPmvLDWj61pDFevFw+Abddr2glskQbSio7vutPZMc=;
 b=EK91nLwwcqFRa6favOvaKIFcmTk+5SSxhoSoDpc5Luhdt4IzWM5Z9Kez
 LUaLWFCRIzQWEd/1dEL64VNRbLis5eiVx+jxs1vMcLLWHN7LVQPGJqm0e
 fHgQUq6rn2gPapkdwuw/bIl5km1UHp8+ntU1UrbOq/Hihr/d6KaAnX1bb
 vHlm9zmCIamlcjNtqpFP5Y55Wur03+S9uadeFBm9hMcAhxIt/gBM2iSdS
 bPE5PxbcQy5TFMWhw4hKgnjU6Naim4CBUFgUqcQ/AKHsUmrpwXuKyuXiC
 LUsyPQ4Hb/s+/U9vrpq3S4JUooOUFC6a6sKrpyEFRl8kaJFnyiGSnYJjn
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EK91nLww
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 3/5] ice: Enable
 switching default tx scheduler topology
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

On 3/22/2023 3:52 AM, Wilczynski, Michal wrote:
> Actually I've re-read the function and it seems to me like it needs to return value. The reason for it - it calls ice_init_hw(), if that fails we don't really
> want to go into safe mode. Instead we want to fail the driver load altogether, since it's much more serious fail than simply not being able to load the DDP package.

Sounds good to me; as long as it gets used :)

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
