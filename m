Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB922797264
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 14:42:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12E2B60EFF;
	Thu,  7 Sep 2023 12:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12E2B60EFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694090559;
	bh=26Dok5s/C6YwU6hIz+qHupmNXa1QyBNNiN2AVSKOJPE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q0sxrJL9OVUUVuf+BS7CE9C/8XHUaq9czOb2mQumccziaz1/BNBu/TaEG35Nex8YP
	 rjV4sj6sUZJwZl9mojxdfW7T26tlgrbWY7dkfdkvgbvUVwZ2k2I82P/lPqMtZ4bOxf
	 b7HFeLf71k7Lkq/AaxQGYkIvQgQYPYMWsyxJr437H/2zkJYoYaVag7bISqnyBZlcil
	 oH7i5sdHpf4tp5Z//bF3tKHzLjrOxR4dXbQzgq19UJ/cGH9PLcbvBvYoSuHhRQbYJs
	 eQtsv1Ji1rhAW3Iw+IYeRnxYZ5TIvec/ar70C035EJhciBlhCv7Qmvq9A4Ras2CaiX
	 6W7VHCaYto3GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aBHgZpZTOtVi; Thu,  7 Sep 2023 12:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D638C60DCA;
	Thu,  7 Sep 2023 12:42:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D638C60DCA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB69B1BF337
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 12:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B003660DCA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 12:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B003660DCA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDHaEzyz6278 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 12:42:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1661660C07
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 12:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1661660C07
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="380061969"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="380061969"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 05:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="832150751"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="832150751"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 05:42:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 05:42:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 05:42:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 05:42:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJ5bp9vl+enxV3V0e3So/zpY5phpppfYUrVPgJU+cyWUW3YLq6O1AHRTyvWBHCR1zcuGRMg5jUQ6Jx3+U59Uib90Vskezw3ScNof0Jr4PQYkjzzSlaNaXDQ2ZZ7jkyrHFXc133Yi2bildzlQGX96WRwKmAwglav4scZUDCDKkXwmHspEopLARdp/WjgtfOMHniyU12AqH9X1p2hMWVUPyX4Va60gVL0eiy3i40mNpgOxDUajWf/smlvCpA6MyN6ZrDZXKOnbxRsZnxSalps/ywGdRBMoydDdZ6wuruZDF4JndG0yzkfb1m5dYlRRnm4llNlLllhDzRf+lxQ3NJp3lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R9cm6eYZWUJSD9mzkvQALkKAwbtYcl43t0aSOo8uWoU=;
 b=adL5W4f6M93+q4YyjrXPmRhpfOwvmBT5SD1nICBRlkQKiSEg52KlyAh/o4WO8CWBOg8Vnsqxvg4O07/24XpQVpaU7zByzxr8sLT3ezjsKbPhAvkUIoTSXWJ5Abte5o2dpbSm2ay5GUZjxVdYa4YWGPzKkjQQN2BfJJUGO4rCcZltD8Jr59tKkWuUSCzcpB39hcMos3QjkJZE3864ZjDaH+Fmycfl/eNH6l8BD03ljTP1sq8h5PGGM5jD9kIOngOOQlbnqKmKVpa1BtVE591PnqGbLAYsX3CAj8aOzFzk/kEI0LSijDQy0ID9vKJX1GBLkY05JYAV0gPu3pkHx2k3/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by LV2PR11MB6000.namprd11.prod.outlook.com (2603:10b6:408:17c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.32; Thu, 7 Sep
 2023 12:42:25 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6745.030; Thu, 7 Sep 2023
 12:42:25 +0000
Message-ID: <c4838e77-5688-10a0-8a3e-cf1dda12237c@intel.com>
Date: Thu, 7 Sep 2023 06:42:17 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20230906141411.121142-1-poros@redhat.com>
 <bbb51ddd-ceb1-63a8-a06a-f365da5ac4b7@intel.com>
 <e461ea2d6134c0f3cfd765d53d6a2228c1bb3677.camel@redhat.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <e461ea2d6134c0f3cfd765d53d6a2228c1bb3677.camel@redhat.com>
X-ClientProxiedBy: FR3P281CA0103.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::19) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|LV2PR11MB6000:EE_
X-MS-Office365-Filtering-Correlation-Id: 59e127c9-3a7f-4175-c545-08dbaf9fe393
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BbauTf2XGMpbmCsTF41WcpX6haMo7nSBNSr2c44EU9bEqmKNARcQ7XdgL5TcFF83Wl+vLYLnzzuGLCeikmhNDQuw1gHnNciNxUe5R0HHu/1JvQ2zMZ6C3hAFNoUN3nfKeXIzZ8sEgZTtp1MfXNV2rSN0B0eGAkIAOP+6nWBm1wJK83bjxTGZdU7ZGwtRBhmRSLmhVgjvbetrR42L/Bff+H/DWs6IfJSl+RxE2Vn0xZ+yodLs8JHU1Dyc1S9kcc+yzV9/olaWjU35akkSRbKonHh4J6n0dKdDH4AemIfP8AybUZcIafEV4Rs2WOe2e/ezev959so2nzRWSlsy7qqD6y3zoukAcqnxEMtOXoabyyb77XfVROXZbWMU/OCfVgRTXGte/UbraclzT5DVd5kr1Q+2qcICSwMXcyBqSjr1xXxDXglv4BUKc3OB4NPIl/z8QaapOwN9fyJmR+r/OVXJGGPJdoDXmlr1QJoguAkTZqVi+0KOpWu/hmfPo8k1RBHmF13r7t2H13vb/+VFJMLJdZNFCZ9rfPLh8CRY3bw7zyjdsr3Q2G44uilz7GgCCjKx3HGVZJvSmxX8bNMeL6uZM4SxCM3s5qs2rxZWb3eXnL8wSeLNsSp6v5XEXKW0a9jGNHNutu0zVR2tuORBNVn7KA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(39860400002)(136003)(346002)(1800799009)(186009)(451199024)(41300700001)(6486002)(53546011)(6666004)(6506007)(82960400001)(83380400001)(38100700002)(2616005)(6512007)(26005)(31696002)(66556008)(2906002)(36756003)(86362001)(316002)(66476007)(66946007)(478600001)(31686004)(44832011)(5660300002)(8676002)(4326008)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFQ1MTA2NktrVXl2QkJPbjVKZ3dUKzBSTzUzbURHUEdVSDlMTGM5OUlKU2hm?=
 =?utf-8?B?YW0yTGFza1NCRzRaRDc5cmhSejg1bEl0TXBqa0w1cmFWQWprb3lPeTQvZHpG?=
 =?utf-8?B?b0g0aWQxZlQ2RGg1eWVvbE5UQWJIdUY2TTFRUGo3b0N2UnFRaFlwbytvOGtR?=
 =?utf-8?B?eTBWTVMzblFZcE91QkthK3l3TWNqc1djU0dMVUx1TTNxcFo0SDlkNitDZDQx?=
 =?utf-8?B?aFZ6dVJkSDRDTVN2cXFlc0hyZm8vYU1nK1ZxMGx4ZEdXSUJsY2I4TEVkTlFW?=
 =?utf-8?B?SEN3cGVMNEhjNzdubTB2L1NvTzhBUU5vVDZWM3hqc0VlL0FOMnpCM3JjUDZs?=
 =?utf-8?B?aEJvUDk0VUtuQTkxd1h1WmdLaWxzaFQ2bXVuRVBZN0MzL1gvR21EWEhIUlc3?=
 =?utf-8?B?RVlMa01vY1V0UlZFc1RNMjhJUGtpbFpRdjlSUTZoMk1HcTJRSVpJajA2VHZ0?=
 =?utf-8?B?am10ZURFbUpseUFuV3J3NlhINFNhSmpLZzRnUk04RDM2MkVmbzdjMzRoa3Ar?=
 =?utf-8?B?S0RWeDJiUjRES3IyWXhxeitGMGt6YWJNZlF3OEhzWFlKNHlLN0oxZDc5R3Bj?=
 =?utf-8?B?ZEpRVHY5alVGU0hXWmRYTGVTM2Z6VnBHcnNFeXBXTUpTbWZ1dnMvMnc1WWxR?=
 =?utf-8?B?cDZNRGlrd284dVoyQW80cERPLy9uVzMxRFJuL0I5Z0QwOERXK0RqR1VhaWJv?=
 =?utf-8?B?dFIzZzk3a1JsOGRZdVN5WkZlc2hOZnFpN2ViNUpxUW8rN0pLK25mWkpVS0pz?=
 =?utf-8?B?STFUWW1SMVMyNzdMY0lqdXVFeDJtNzlvelpORXVpUlBvWFZPTDc2UVlFL2Qy?=
 =?utf-8?B?QWhQY2pXQXhPQ2RWeU04VDAyQkNJc0xzWjFTRzlMRlhnZlg3Z05oUThwSGtB?=
 =?utf-8?B?UTNGeFpTZHVURzE4YWlyUTZaL0Q0NmQ3WnhMSEFrVlJOWXcrd1hIc1FKWkkz?=
 =?utf-8?B?RUdyV29yUGlKa21ybFJYdUdTL1VEUjRlcjhwRjkxa2ZnT0Y0OEVEV1ZxZE0y?=
 =?utf-8?B?Tzk3V1pNYTdrTDQwTzRHTUFSazNUK0F1QmF0Rm1OZGZjVmJueUtJRkl3SHZq?=
 =?utf-8?B?VWJ1aWVtSFIxYlpGclU3UmpPbXd3RURMLzZYWnFPL3ErOG9iUmlBNTNOM3Q4?=
 =?utf-8?B?eEZvUk56NENuS1ZLTG1WWW9SK2d0L3JJK1RqRWdZK3dwSVhVMEJLcXFUVEgx?=
 =?utf-8?B?Sk5YSVg5ZWpaK0lzMTFqSElUTUZqMTBPblBZSkVDdGcxMncyOXN6RjRsZTht?=
 =?utf-8?B?d2VlVms3ZnRJLzhEQjJXTk1hNWlLMjRmS01WRU90TlhMRTVjTWVCWXlueUxF?=
 =?utf-8?B?QmMyc0wxSlpRTCtva1FoWEFUZFdzaDlsNVhjQnVFNGdvTmUxNEtWUnpIaDdZ?=
 =?utf-8?B?cVJSMGp2S2RoY0xJbm1xUUJxZVJzUHJjVGF6UnREaGVuK2tncURRY3JNSkZE?=
 =?utf-8?B?UWUzYVNPRm54Nk40aUQ5OEFTT25ESWJIdDgwdG1jSmtYdkpaUGw3NjZwclFq?=
 =?utf-8?B?Umpiakd6NVdhWmRvUkJCYmFUWFZ6MEpJZmdQbjRVUzNic2pZS3FzZ0pXYmlB?=
 =?utf-8?B?eTVaeGxLeDd6T0k2SVl0UmhoeVVhMFhmUm9WNzNzZ0NFdG1rNGpQQ3psOUxP?=
 =?utf-8?B?WkgxSHl1ZjdCNHY0amJ4WStCcFFFTTlrZnpseUw5dXBMa29UeUZrNWlkRWJm?=
 =?utf-8?B?ZWs5Rm5QSHZ4eG5VU3lsUG5INnlRcjF5RmpMNlNod0RoQlRacjZmeGd2WTBO?=
 =?utf-8?B?dkVycUdzRHFaUnFMaERJUk9VM3VFNTl5WjZRSWZEWlF1cTJWVFBBd2FjblFQ?=
 =?utf-8?B?bnB3SXJiemNSYzhpVTRwVjBYcFhlTVlzb3RSb3h6dXptd1dhSHZkZmdaTXN0?=
 =?utf-8?B?K3IyZjRTdG1jdUdDU3A5WVZRSzFwa1FPRnJSdUw2aWkxMTJtL1U0UUJSRlZh?=
 =?utf-8?B?cWtiUG1sdVJ5NEJaQ1g2RlBmeEo1SzhqN3VRN1dHS3NHMjgycFNzZXVQM2pr?=
 =?utf-8?B?WHN5bUJ1YlJkTStJUUFCV2ZVa0IxdGtGcml0N0ZRSTA0SEdGV0lrWlJxTFR6?=
 =?utf-8?B?bnN6ek9RL1JLbGNYc0hIT1N1ejhpQUlGU2hCWlp4NXR2ak51aSs2bWJKaFpx?=
 =?utf-8?B?MXdoWjgvbHA3Zi9WOXd2VTBJVzd0bi9qN1JUY0JBQ2lUTE9ndEpTMTJQcm9Y?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59e127c9-3a7f-4175-c545-08dbaf9fe393
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 12:42:25.8249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tVZx/3FJQVMRS+irRv/qnTAiyazPIn0n2rXk9+IpvNNeMVHFnHW1MR1UmDBmdFDZlNdcNF8jpzjykABIkqdpdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6000
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694090551; x=1725626551;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m1P2baN8nZyjCiL3ndEL0JEwwmsFBewjlIFZhg/7h2g=;
 b=F2jK0KjkMustqHxe3lYmhR5qiXaCdgfIryJYs7k+cMsW45ql1UoZoMtb
 mRjWvETrTy53jxq8KogttP6R2tGbdF8qrJjhErMGi8kfTPiihTKTUCyny
 0bJMs0ltVBZn7SjHrYGRBBmkDpuyJEQcRdq7jdV7cxkFs5xdfWNS4iXI7
 zR8myde7HmOw9uNEENeLLhxjMCO4JEYxVQqtEk3AgGeou+5Fy+A/n1Xen
 VwGuOUR8fSwe8F2La2hzEc3PjT1b69xQY6JkYV8dkk/TXUhzcIWiS2Thl
 +FGiUW5M18cANLKCJm4Nde2S9bETo988vXHo/C6cxoJPSXpEwhq1Ab6yC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F2jK0Kjk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] iavf: add
 iavf_schedule_aq_request() helper
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
Cc: ivecera@redhat.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDktMDcgMDE6MDEsIFBldHIgT3JvcyB3cm90ZToKPiBBaG1lZCBaYWtpIHDDrcWh
ZSB2IFN0IDA2LiAwOS4gMjAyMyB2IDA5OjMyIC0wNjAwOgo+PiBPbiAyMDIzLTA5LTA2IDA4OjE0
LCBQZXRyIE9yb3Mgd3JvdGU6Cj4+PiBBZGQgaGVscGVyIGZvciBzZXQgaWF2ZiBhcSByZXF1ZXN0
IEFWRl9GTEFHX0FRXyogYW5kIGltZWRpYXRlbHkKPj4+IHNjaGVkdWxlIHdhdGNoZG9nX3Rhc2su
IEhlbHBlciB3aWxsIGJlIHVzZWQgaW4gY2FzZXMgd2hlcmUgaXQgaXMKPj4+IG5lY2Vzc2FyeSB0
byBydW4gYXEgcmVxdWVzdHMgYXNhcAo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFBldHIgT3JvcyA8
cG9yb3NAcmVkaGF0LmNvbT4KPj4+IENvLWRldmVsb3BlZC1ieTogTWljaGFsIFNjaG1pZHQgPG1z
Y2htaWR0QHJlZGhhdC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU2NobWlkdCA8bXNj
aG1pZHRAcmVkaGF0LmNvbT4KPj4+IENvLWRldmVsb3BlZC1ieTogSXZhbiBWZWNlcmEgPGl2ZWNl
cmFAcmVkaGF0LmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEl2YW4gVmVjZXJhIDxpdmVjZXJhQHJl
ZGhhdC5jb20+Cj4+PiAtLS0KPj4+ICDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZm
L2lhdmYuaMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+ICDCoCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jIHzCoCAyICstCj4+PiAgwqAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uY8KgwqDCoCB8IDEwICsrKystLS0tLS0K
Pj4+ICDCoCAzIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
LmgKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmLmgKPj4+IGluZGV4
IDg1ZmJhODVmYmIyMzJiLi5lMTEwYmEzNDYxODU3YiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmYuaAo+Pj4gQEAgLTUyMSw3ICs1MjEsNyBAQCB2b2lkIGlhdmZf
ZG93bihzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsKPj4+ICDCoCBpbnQgaWF2Zl9wcm9j
ZXNzX2NvbmZpZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsKPj4+ICDCoCBpbnQgaWF2
Zl9wYXJzZV92Zl9yZXNvdXJjZV9tc2coc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7Cj4+
PiAgwqAgdm9pZCBpYXZmX3NjaGVkdWxlX3Jlc2V0KHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0
ZXIsIHU2NAo+Pj4gZmxhZ3MpOwo+Pj4gLXZvaWQgaWF2Zl9zY2hlZHVsZV9yZXF1ZXN0X3N0YXRz
KHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpOwo+Pj4gK3ZvaWQgaWF2Zl9zY2hlZHVsZV9h
cV9yZXF1ZXN0KHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIsIHU2NAo+Pj4gZmxhZ3MpOwo+
Pj4gIMKgIHZvaWQgaWF2Zl9zY2hlZHVsZV9maW5pc2hfY29uZmlnKHN0cnVjdCBpYXZmX2FkYXB0
ZXIgKmFkYXB0ZXIpOwo+Pj4gIMKgIHZvaWQgaWF2Zl9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVy
ICphZGFwdGVyKTsKPj4+ICDCoCB2b2lkIGlhdmZfc2V0X2V0aHRvb2xfb3BzKHN0cnVjdCBuZXRf
ZGV2aWNlICpuZXRkZXYpOwo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmX2V0aHRvb2wuYwo+Pj4gaW5kZXggYTM0MzAzYWQwNTdkMDAuLjkwMzk3MjkzNTI1
ZjcxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X2V0aHRvb2wuYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X2V0aHRvb2wuYwo+Pj4gQEAgLTM2Miw3ICszNjIsNyBAQCBzdGF0aWMgdm9pZCBpYXZmX2dldF9l
dGh0b29sX3N0YXRzKHN0cnVjdAo+Pj4gbmV0X2RldmljZSAqbmV0ZGV2LAo+Pj4gIMKgwqDCoMKg
wqDCoMKgwqB1bnNpZ25lZCBpbnQgaTsKPj4+ICAgIAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAvKiBF
eHBsaWNpdGx5IHJlcXVlc3Qgc3RhdHMgcmVmcmVzaCAqLwo+Pj4gLcKgwqDCoMKgwqDCoMKgaWF2
Zl9zY2hlZHVsZV9yZXF1ZXN0X3N0YXRzKGFkYXB0ZXIpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgaWF2
Zl9zY2hlZHVsZV9hcV9yZXF1ZXN0KGFkYXB0ZXIsCj4+PiBJQVZGX0ZMQUdfQVFfUkVRVUVTVF9T
VEFUUyk7Cj4+PiAgICAKPj4+ICDCoMKgwqDCoMKgwqDCoMKgaWF2Zl9hZGRfZXRodG9vbF9zdGF0
cygmZGF0YSwgYWRhcHRlciwKPj4+IGlhdmZfZ3N0cmluZ3Nfc3RhdHMpOwo+Pj4gICAgCj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYwo+
Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4+PiBpbmRl
eCA3YjMwMGM4NmNlZGE3My4uODZkNDcyZGZkYmMxMGMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4+PiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4+PiBAQCAtMzE0LDE1ICszMTQsMTMg
QEAgdm9pZCBpYXZmX3NjaGVkdWxlX3Jlc2V0KHN0cnVjdCBpYXZmX2FkYXB0ZXIKPj4+ICphZGFw
dGVyLCB1NjQgZmxhZ3MpCj4+PiAgwqAgfQo+Pj4gICAgCj4+PiAgwqAgLyoqCj4+PiAtICogaWF2
Zl9zY2hlZHVsZV9yZXF1ZXN0X3N0YXRzIC0gU2V0IHRoZSBmbGFncyBhbmQgc2NoZWR1bGUKPj4+
IHN0YXRpc3RpY3MgcmVxdWVzdAo+Pj4gKyAqIGlhdmZfc2NoZWR1bGVfYXFfcmVxdWVzdCAtIFNl
dCB0aGUgZmxhZ3MgYW5kIHNjaGVkdWxlIGFxCj4+PiByZXF1ZXN0Cj4+PiAgwqDCoCAqIEBhZGFw
dGVyOiBib2FyZCBwcml2YXRlIHN0cnVjdHVyZQo+Pj4gLSAqCj4+PiAtICogU2V0cyBJQVZGX0ZM
QUdfQVFfUkVRVUVTVF9TVEFUUyBmbGFnIHNvIGlhdmZfd2F0Y2hkb2dfdGFzaygpCj4+PiB3aWxs
IGV4cGxpY2l0bHkKPj4+IC0gKiByZXF1ZXN0IGFuZCByZWZyZXNoIGV0aHRvb2wgc3RhdHMKPj4+
ICsgKiBAZmxhZ3M6IHJlcXVlc3RlZCBhcSBmbGFncwo+Pj4gIMKgwqAgKiovCj4+PiAtdm9pZCBp
YXZmX3NjaGVkdWxlX3JlcXVlc3Rfc3RhdHMoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcikK
Pj4+ICt2b2lkIGlhdmZfc2NoZWR1bGVfYXFfcmVxdWVzdChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICph
ZGFwdGVyLCB1NjQKPj4+IGZsYWdzKQo+Pj4gIMKgIHsKPj4+IC3CoMKgwqDCoMKgwqDCoGFkYXB0
ZXItPmFxX3JlcXVpcmVkIHw9IElBVkZfRkxBR19BUV9SRVFVRVNUX1NUQVRTOwo+Pj4gK8KgwqDC
oMKgwqDCoMKgYWRhcHRlci0+YXFfcmVxdWlyZWQgfD0gZmxhZ3M7Cj4+PiAgwqDCoMKgwqDCoMKg
wqDCoG1vZF9kZWxheWVkX3dvcmsoYWRhcHRlci0+d3EsICZhZGFwdGVyLT53YXRjaGRvZ190YXNr
LCAwKTsKPj4+ICDCoCB9Cj4+PiAgICAKPj4gVGhlcmUgYXJlIG90aGVyIHBsYWNlcyB3aGVyZSB0
aGUgaGVscGVyIGNhbiBiZSB1c2VkIHdpdGhvdXQKPj4gZnVuY3Rpb25hbAo+PiBjaGFuZ2VzLCBl
LmcuIGlhdmZfYWRkX2ZkaXJfZXRodG9vbCgpICwgaWF2Zl9yZXBsYWNlX3ByaW1hcnlfbWFjKCkK
Pj4gYW5kCj4+IGNvdXBsZSBvZiBvdGhlciBwbGFjZXMuIEluIGFsbCBvZiB0aGVtLCBtb2RfZGVs
YXllZF93b3JrKCkgaXMgY2FsbGVkCj4+IGFmdGVyIHNldHRpbmcgdGhlIEFRIGZsYWcuIEZvciB0
aGUgc2FrZSBvZiBjb25zaXN0ZW5jeSwgY2FuIHlvdSB1c2UKPj4gdGhlCj4+IGhlbHBlciB0aGVy
ZSB0b28/Cj4gVGhlc2UgdHdvIGNvbW1pdHMgaXMgZml4ZXMgZm9yIGlzc3VlIC0+IG5ldC4gQnV0
IG9uCj4gaWF2Zl9hZGRfZmRpcl9ldGh0b29sIGFuZCBpYXZmX3JlcGxhY2VfcHJpbWFyeV9tYWMg
aXMgbW9kX2RlbGF5ZWRfd29yawo+IGNhbGxlZCBhZnRlciBzcGluX3VubG9ja19iaCAtPgo+IGxv
b2tzIGxpa2Ugbm8gZnVuY3Rpb25hbCBjaGFnZXMgYnV0IGkgd291bGQgbGlrZSBiZSBzdXJlIGFu
ZCBiZXR0ZXIKPiB3aWxsIHNlbmQgdGhpcyB0byBuZXQtbmV4dC4gQXJlIHlvdSBvayB3aXRoIHRo
aXM/Cj4KSXQgaXMgdXN1YWxseSBiZXR0ZXIgdG8gdXNlIHRoZSBoZWxwZXIgaW4gdGhlIHNhbWUg
Y29tbWl0IHRoYXQgCmludHJvZHVjZXMgaXQsIGJ1dCBubyBwcm9ibGVtLiBJIGFtIE9LIHdpdGgg
c2VuZGluZyB0aGlzIGxhdGVyIHRvIG5leHQuCgpUaGFua3MsCgpBaG1lZAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
