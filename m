Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9603A797C61
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 20:53:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 461C040258;
	Thu,  7 Sep 2023 18:53:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 461C040258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694112780;
	bh=3anLe9hq3J1XjBJIdNHIcDPT/ItK6EW6f/xIPmjbHJU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SvWyMvPjUsZfTElcpIgBBM7E8eRKF4IlbLxXp8fI3VWIcL3xj7JYqJW8axp/rZ7tc
	 wOFmPhNBkS6OgfPyFvEPA5zg5Ij5kenwtVq7rV0reWn84QrwujElZ4lUyd+MzYVwFt
	 kgPxTL9IOszC6dhtAMi4DrsW2/RObhiBY5NwpccEeIpUXJZU6qiUTiKiv0lsuaatXl
	 ifQFUzdja9/bO0ovYBwJcDoqYbcSKYRRv/Yy2Cdf6f/yN/hw90XHe5rluHQFwT30nC
	 AxFvp7Ua/Ul2RyreLejl0hTVQaomj4RWGyvJOKfACf569qlGGoZrPDVuJSoZ8uiwPI
	 3lIhCJq1EpWiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6P0tsvMcpcm; Thu,  7 Sep 2023 18:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9F184024E;
	Thu,  7 Sep 2023 18:52:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9F184024E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39D891BF368
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 18:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 116A040584
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 18:52:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 116A040584
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1b5nuq5TgHHn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 18:52:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE455400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 18:52:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE455400D1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="374833263"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="374833263"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 11:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="807644643"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="807644643"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 11:52:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 11:52:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 11:52:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 11:52:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 11:52:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyL5J2s9cjw+2wSq7QQXuXtEkJ/hhTPEY3KkCYHhDedvjYOBLhVv9Jh0BwhxtInRw5hKOffr4FKK44WT92A/84n1vG5vJTMpR0PUj0j68i+xu4hNimFaM8NnFn3G0vdZv4VpFUFkop10mVUAz7xRi2I7ASI5z0YXlwDavJTxieCv3wFOONjwEs61aR98/uKwlXuG9LF0iyhJW7t8uyjw8is+Qho+nNqructHWUjz/G8H7IXwZ8urVUFFoC+j9mCM7vG5Nxw76/q1YFbacij3rAsyrtRc/5jPrINJdKPLnJknt3HWASm5NIDuLq5oQEdklebP3xpvB9Tshtb1C8UMIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JeXehmi69gtQVjehD/5yJT7LUwdR4668Mx20GnhBo0g=;
 b=GaKhA/KpoRP3AJD1Mh2AX1dDq/Yme2Ns5/b5vAZqSgZOTYc2w3ydf5h9Wedn5Ks8TcV58TE85UVn/BLgq6e07tPfEVxJ8y7hJZVoew1ml3s/EAVbZup4r2QbnoXCAp0YBe9BKcmnl+79UgZpjUWBjBdyexOGTTRTpB/rUly6UXKM3nFxb7VtC21rr6fq5OHx7iCTmiJt3eP2zGWm5wGGZtoH+V6fN0tR9rg7CvddEY2evbQnTG/GS2AQwmuwkKDtfU/Z4KGxQLzhqbKQ9sccfCPx2ukE6e33rTnCg7JsT2XMYRg1xb24qRmT8R8ZP6Cyp71Yo0gTG1UlK5JJxTl1JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by IA1PR11MB6516.namprd11.prod.outlook.com (2603:10b6:208:3a0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36; Thu, 7 Sep
 2023 18:52:42 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 18:52:42 +0000
Message-ID: <26c81971-70eb-ed0d-749f-6d910ad786f8@intel.com>
Date: Thu, 7 Sep 2023 11:52:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.0
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20230907154457.3861711-1-ivecera@redhat.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230907154457.3861711-1-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR03CA0339.namprd03.prod.outlook.com
 (2603:10b6:303:dc::14) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|IA1PR11MB6516:EE_
X-MS-Office365-Filtering-Correlation-Id: a41b2c36-86ad-4b94-8d4b-08dbafd39d8f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3iMU0QYKr6MOpfk5YEabElbkU+GlwPy9BEtANorx6I3Ly+Tl7riN5LeiB6+L8UZ58557ycUwUVgook6ITenfjv0uzZFc2fYZOqEjO/jXi9KllrZrJehNMz81I9ufvDz4cmHYO1ArLEoBG8F4cvJ9Ih5Fa34RtFMUsqC8JrmeD6GDfBXp2xnW68fZomEmw/L4gCV15Nkkb+Znq8D7DJw6TPZbOO7jJQltCKFd9TABabhe6ZXKXiYt9tElllr7ypHlHrIRiBA1bH3hwF1xBv4GeFCY5SprpHn4fRK3P2qK4VxoWfkqLOvQx6Lrw+MPEt1ksHrg4+ocQdJUAeaGupoFbtcXnS5HtxcP+Vv63OdSGPY65JDJsJ3T7lcNRzNz0iMqMiPAFVtJZrlQl4+tyDguVlho9AOuDKEFp7Z3IvrtCu0JtJ3w8xlBLmP80+GzQBX89h38UIw4TISrBTm1UlT/SYbvLnNRzKjpokv61BBY0uKA5mnATVrhVH7m0M81cPn0fSNgyb0V8pdKC/ReqbQuWCp3KJCfDI/syX1SXiUDefcxVs8KFFxdbuhuE68ZMkL772WxSVEYa5Z/Euelc53EE8/yJIK0WQ4B40+TuoloUqPsnMg+UbA+ErXp8+SEmSUSmF4zFigfnISH/18hy8Xoxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(366004)(346002)(136003)(451199024)(186009)(1800799009)(83380400001)(8936002)(4326008)(8676002)(53546011)(6506007)(6486002)(41300700001)(36756003)(6512007)(2906002)(44832011)(5660300002)(26005)(38100700002)(86362001)(2616005)(107886003)(31686004)(478600001)(31696002)(82960400001)(66946007)(316002)(54906003)(66556008)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzZyeUllaDIrckJ2aEt1RTR4UjNmazZ0ZWt3c1d4TWhDcDRNS0NweFNDTnZo?=
 =?utf-8?B?Qktkck1KWnRtN3ViVzdMZ05JSjd4T1NSRDF1aWxuV0JOL2J6b2lTWmYxVGVv?=
 =?utf-8?B?WFh5c2V2eXJOWWQ4ZkRiRWg5YzhxQjl3UVMvWUhncSsyV2pzYkxYTG04ZVcr?=
 =?utf-8?B?VW9VUk85OFR0NlNTVEk1YjlsSTBUU204cWNTL1dqTE5TMmc5Q3dQUXNHRWpK?=
 =?utf-8?B?eHUyK1RxMkJYWDhsU0NsN3gvYzhPbGlScTR3ZkNWT1dOdU0rU3ZURFNYbTZx?=
 =?utf-8?B?eVFOVFZSSC9Qbm80Q1RReEVPRytmcjNxajJDMEs5ZkF1UGtBY2pCS0ZUWFRW?=
 =?utf-8?B?SVRxK1J0dWo5VlFCeWVVd0lRajk1UFIxdU9scjBqcmZXQVRhT1E0bmhKRnN4?=
 =?utf-8?B?R3UwSUZZSXdHN1p4cFlTWVJNbXgvUEh1dGQvSGl0SHlNemFBOWdDQWExNW9n?=
 =?utf-8?B?dGM4RkVIV1drTzBPdjE5R1d5ak5JMzJ6a3lPcnFLdmFoRU1lRFBSR1UzUDQ5?=
 =?utf-8?B?L0s1UUFIN2Ywc0lNWWF1NUM4SEdjcHRuM1pWOGJXdWhtaHJ5MHo0VUo0amk5?=
 =?utf-8?B?V1Nnby8rZWtMaWZSV0RCUlhyRiszcDhWODRmbnF2SWhTdXBmNHpLcmJxbnZy?=
 =?utf-8?B?TGVmbG8zV3lqQUhLZ2N0eHZTblFEeVkzeHVNMWFldnRtckNpNEp1TEpkMWFo?=
 =?utf-8?B?WnBoYlM2ck4vMlVwZWk1T2lkdDdHVHBOdzhzbUdhWlRqaERhMnpWNDdrRmRS?=
 =?utf-8?B?ZkJHMTJOektjRFZKektrSjdQYUx4eWd2UGFZd29Rd0xWQnBvVWJkTFRuZmd6?=
 =?utf-8?B?T2U5Uytvdiswak9teGZrMS9zMUQyOS9jamlqNEs2Kzk2dGdZWHVwdndTdlpB?=
 =?utf-8?B?cThJREQ2WkFucC8rRmk1TmZrR1d0d1pWaG9JT2pnelMxWW1qZk1UMGt2Qnls?=
 =?utf-8?B?c2hrMlg2UG9KRjY1RzR5cEhrVXVpU0t5YUQrdnhRTTl3SUJzT3JtOVE5OFFk?=
 =?utf-8?B?Z1V0VlNTU2dINlRMSUFxWDZGK3NLL0pvazVKYlZ2R25qMEI5MkNOaExSV0J3?=
 =?utf-8?B?ekwrV3ZwUmRZMFAzNkw3ckQ5YXZTTXhUOGhYQjQwY0xHamVJL3NzMjZzSTNu?=
 =?utf-8?B?QTg3cGNWUmQxb1BNSzh4dUhHYXZTdTBrb2tuQ2pNQjMwVDV4OWNFclN5VzZ6?=
 =?utf-8?B?NmRlMnhETXUxaXNmMytxdU81R25pR2d4N2QzZUdxR2RoKyt5NTVVSGM5TlMz?=
 =?utf-8?B?ZG0wYmRsQkJuU0tIaDk1WmdqS0lvOWhROGlJOUJEVEI5WWcwSDBOeXZNNUox?=
 =?utf-8?B?anJXeFlKVGhOMEdBV0c4c2JCL3lueWhFNmtKR3Nra0puWUVHeWtWM3dNcUpw?=
 =?utf-8?B?UkRnUER0dUcvWkp2OER3S29HM3Z0TjczWVJ3R0hNTXErdnZ6cHVSMktrRlhZ?=
 =?utf-8?B?OTVvTDFZdE5EaFNhUEt1ZzIwZ2lnK1ZQcVhTVFN4L3lFUXM5ay9jNlFtZ29T?=
 =?utf-8?B?QzVDVlI0UGZ0MFlNRDZ5TUV1eWdSWUxteEdVVkVZYXBxTXNZYXMxMktMOHRZ?=
 =?utf-8?B?RUh2TjBCeDk4UzNyMWt3c1VmZFc3dVJJL1dJMi8rNXVkUFgzOEtHQW1tYlhB?=
 =?utf-8?B?K0EzRlY3WnlvQnFEeThXdmdpTEp5WExZeUVKOGR2OUNWMnYxUTJwWVhZOEE3?=
 =?utf-8?B?NXB6cm9YMElwUExPOWp4aGZibmlGbnNZOTQxR2MyYm4xcWxJejZHZnVzVEpH?=
 =?utf-8?B?WkprN3N0MjNZT0ZFUXphaUt4MkVJVCs5dnNoTFErM0QxOWZXQVhSdlJhQzhN?=
 =?utf-8?B?N0QveEZ2RnRiQ20yUkR0Y2UyM2J3MEg0MTJpUWpDYzRRK3RhR3JvODNzREQ2?=
 =?utf-8?B?VHdtWUlZS0FxcEpERHNTUjZ5RGE5OWtkY0V0NHM5SFNSb3JUaGF2SHBHaHRn?=
 =?utf-8?B?TFJyTGRqOFZOdVdlNHNMOHAxd242ekdCTmlsc0o3emkwSXNuSVJVMDRvVVJM?=
 =?utf-8?B?OEJyUURlWmYwaFlxeDZJbDlTTHVJY2g5Tk8rS1lUUVZkOXY1VVZQTU1PNUMr?=
 =?utf-8?B?ZklGVitoSWlreGlkOFVLcXBjOURlbVZta04xSmRZenJuTElYN2pROTdSS3FS?=
 =?utf-8?B?Mk9VYjE2Ti9qTEVTZjhrY0N6c0FKeWtsSWFYWjcvY3FZWTRiVENTSWRPbEYz?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a41b2c36-86ad-4b94-8d4b-08dbafd39d8f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 18:52:42.1001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NRf96R0fizTYFJeRwnPWxPAYyA7IT10iMU8X5AkMLL7Zwy7orMIFAaKKkTwymjN23QFFkXxtZc3F5YLw9Po8HvwyjkH+trz7S3sWjUVtNq0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6516
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694112771; x=1725648771;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7a5Mi+ztDJilI9dt2Dp6MEwJ8oXaLCvp4cLWyWO2d0Q=;
 b=kmNQOXQrs7kdGZn87cm70NHH6HSh3AZNgbIDyV9yrJI2mDMAk2rtGd+R
 iqzbGdjiRGmk4T16QBxlb75vgRO6fxM3pU3xmqHMyf43tSxNBqZVbHZko
 /GohFzXMIYWTjvan4gX2Cf76PVpJhvUYhEdtEjhpqTLJdhQJQFYupyzCw
 GnQNgdBtLqkcFy0cUdZ+pbKMA4eIv7etHtSXFPzQNuAK1J8syxMW4rFDi
 w2Ia5Ds6H8yA08JFF8QaSu6su+XTU73JvFZzxFB+0mch91WXd4EQJ4PcQ
 9EmphgcsaEvfkA+r3ldRGEmWgXN4UCXhgZ3ObMkvWwc1NBg59lSJeujz8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kmNQOXQr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix VF VLAN offloading when
 port VLAN is configured
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
Cc: Catherine Sullivan <catherine.sullivan@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, Greg Rose <gregory.v.rose@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/7/2023 8:44 AM, Ivan Vecera wrote:
> If port VLAN is configured on a VF then any other VLANs on top of this VF
> are broken.
> 
> During i40e_ndo_set_vf_port_vlan() call the i40e driver reset the VF and
> iavf driver asks PF (using VIRTCHNL_OP_GET_VF_RESOURCES) for VF capabilities
> but this reset occurs too early, prior setting of vf->info.pvid field
> and because this field can be zero during i40e_vc_get_vf_resources_msg()
> then VIRTCHNL_VF_OFFLOAD_VLAN capability is reported to iavf driver.
> 
> This is wrong because iavf driver should not report VLAN offloading
> capability when port VLAN is configured as i40e does not support QinQ
> offloading.
> 
> Fix the issue by moving VF reset after setting of vf->port_vlan_id
> field.
> 
> Without this patch:
> $ echo 1 > /sys/class/net/enp2s0f0/device/sriov_numvfs
> $ ip link set enp2s0f0 vf 0 vlan 3
> $ ip link set enp2s0f0v0 up
> $ ip link add link enp2s0f0v0 name vlan4 type vlan id 4
> $ ip link set vlan4 up
> ...
> $ ethtool -k enp2s0f0v0 | grep vlan-offload
> rx-vlan-offload: on
> tx-vlan-offload: on
> $ dmesg -l err | grep iavf
> [1292500.742914] iavf 0000:02:02.0: Failed to add VLAN filter, error IAVF_ERR_INVALID_QP_ID
> 
> With this patch:
> $ echo 1 > /sys/class/net/enp2s0f0/device/sriov_numvfs
> $ ip link set enp2s0f0 vf 0 vlan 3
> $ ip link set enp2s0f0v0 up
> $ ip link add link enp2s0f0v0 name vlan4 type vlan id 4
> $ ip link set vlan4 up
> ...
> $ ethtool -k enp2s0f0v0 | grep vlan-offload
> rx-vlan-offload: off [requested on]
> tx-vlan-offload: off [requested on]
> $ dmesg -l err | grep iavf
> 
> Fixes: f9b4b6278d51ff ("i40e: Reset the VF upon conflicting VLAN configuration")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Change looks reasonable to me and since it fixes your reproducer above,
then excellent! Thank you!

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
