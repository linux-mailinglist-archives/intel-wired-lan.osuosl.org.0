Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 918007A492F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 14:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83B7A40868;
	Mon, 18 Sep 2023 12:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83B7A40868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695038797;
	bh=BSFNP6dUgU1boyvCrymvh8EKTUsNA5YWIaMkIKf9zrQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=60gBLDYP+1Afjl09novSBlyfuYfDqTkU2CO0af9fiK3gZaxq7qjqiENBWTyj0nHv8
	 /azB30ia1NvD0yuwwJ20e7ZUab6fajufK2vudySsKb7CNj1eHAZdUZZd7jI9I2zSu4
	 ir9B4pGajl4vqFvaO2npFmIeFAQSzRZH84eUgbWnbZnNinsRAnLqsVhibTfeIF8De/
	 qAPW9BgD9WNHLERKSVIS6y6sg/BFEmHB25/sWbTukuurgaP5CgtXCBAjnXBW0zZwAb
	 rN8eqxSAGFFQwtyjXKwLExahYtheYZuDhFQ4D3vM2w1RaCclGOMKb5S8JkLYQu3Ix5
	 bCLo4VQLI2wYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y08FD59L7JGM; Mon, 18 Sep 2023 12:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C740418B6;
	Mon, 18 Sep 2023 12:06:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C740418B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4391BF294
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 12:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E50BA8202D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 12:06:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E50BA8202D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HkUu2WSxLz3k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 12:06:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1B8F82028
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 12:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1B8F82028
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="364679353"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="364679353"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 05:06:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="869520303"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="869520303"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2023 05:06:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 05:06:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 18 Sep 2023 05:06:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 18 Sep 2023 05:06:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZtALCPuAPsqRGRY/09ftvVvAp8byb0FHLVnQudmO1NnsDzLwykCQr6Fou2p9rkBSLgVEUqsevoxKQ+MwDjOixIm/zFHtsiCSlsg48OQD+mELGSfUVNknw7s85yXMO34fL5hMlZ8+djxbIowJeDJs48xvDWFxcPyVvYekLoGgEP5CMaJIsuhC8EgNO2BZ5WQMvE+ycb217VasWJlebuSqJERxk1hPHh1NMfwGRIZaeFc1Pgtui9j2rNJrRYbpkKFZtzlr8YcWKi2dU7RXm/7goYUNQVRsxs1UywA4B1eV40yIQ2/P72MLJcaQrq8JewjMqNpLz8fVf6r6J62lSBchtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qg6luBGse7cWASLuU4YmoD8MP8MH5aKoSRtGoEEKnTY=;
 b=grAcb4qIl45Jmm+CoWy2vYLW9AqLnaOGoOINXxyb5PbQ1XmfqUgXF18x9B1WyB24azlf/lxseT2VG0VmwA8K6J7vBaQ2vU3ea0bl8JCOTE4evI1d83ibrS2bzBa2SxsxlhV0I2caOB2AMmKwBonEOiD/FAQBsd7ZX9daEGWIq5kuRZr2LrZq1osooe6tur1PiYxBrdnEscBJLrdl4rPRzwaDzXvRvUwYEyDtu1gM9P/y4Sp8oOtzwdlHckK3SYyUp5rqKklUgL67XgqBZK/1TTI2rnkcaOD3aWt+9LvpEipslDlcH2k0V+kOL4vR5A+Cw8tD+nE22X+80lgRR0GFwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DM4PR11MB7400.namprd11.prod.outlook.com (2603:10b6:8:100::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Mon, 18 Sep
 2023 12:06:25 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6792.026; Mon, 18 Sep 2023
 12:06:25 +0000
Message-ID: <9c21cd7f-a797-0cbf-162b-d1902bee1b8e@intel.com>
Date: Mon, 18 Sep 2023 14:06:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Pawel Chmielewski <pawel.chmielewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230915145522.586365-1-pawel.chmielewski@intel.com>
 <20230915145522.586365-2-pawel.chmielewski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230915145522.586365-2-pawel.chmielewski@intel.com>
X-ClientProxiedBy: FR0P281CA0066.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::12) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DM4PR11MB7400:EE_
X-MS-Office365-Filtering-Correlation-Id: 05d65309-4bb9-42e5-fef8-08dbb83fae2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mKfvsHuYklV/Wmg9nckfjTMvmImYDxB2pTNlHlaacAWSCp3P88l1BAddd5cQbGtgirQYG8GmK5xYFHTDAdivUkFSWRYRsRAm8ig/c7u9mlq1kzpqybV/ex8lBP2aX9Yf7za48SB7vv5u1LDibEvumMcDxH73OkZBIXXxR2+95AmpCOZh0+JfTtVtFmNwHnRqcXIQNd2HDwCZY50pmyz73aVa9TbkKQsHAiw+gWiUzQjbqUhdf4uzIEnbi6u1r0V6910rpHtGI62Dd6BVZpSp+2HUkgkiXUCs8+FgvUY9ConBYWb/jWjRzUzg+91Hv1qYCSZnzAGvVPpUhpn73yWx3RqegTcjoXFTfGqmbzUsaRZJ1WhRmKLggxjJXUnnRw8u7e4RjKPaNzvE5Fw6G1zsqAptG7NkGosgIP8QU9mQTwdMsK8/DB7Y1HptVKCTlaY9FZ734R76I4dMB1iEmxElALrcEHJwYarWWA4qZ7kGRiaBpMC+9JsOyDvyEMFeB8mYUIbYuNOlH3q9VWDKcCyAxgR2n9lWk7g5MSiOYqIZ1DCUeKpyh0HCSm+vEmII54xcnVRKwnJ9vRW184IE98kYsUwg49y81zuQ5aUMX/5Ki40YG0j+Fm3juywS9m6Ot4zrlLATGqApkkibJMssgRjVYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(376002)(39860400002)(346002)(1800799009)(186009)(451199024)(26005)(82960400001)(2616005)(8936002)(8676002)(4326008)(66899024)(83380400001)(2906002)(36756003)(31696002)(5660300002)(86362001)(53546011)(6506007)(6486002)(478600001)(31686004)(6666004)(316002)(6512007)(66946007)(66476007)(41300700001)(66556008)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NS9ua004aW1ZOHhacDY1V3VCb2JCT0ZtVk5lZjlUTTdsZFp0amxRRnFaMFk4?=
 =?utf-8?B?MzJlMm41cHU5eTJNT2YzRXJKTnRHTGdxOTIxSllqYUlWUmtEK0M4T3VvL3J5?=
 =?utf-8?B?dEVuYjVpR0hub0FGUU83OWFSdnRqZDZ1a1Z6cGgvRUI3QUNGR1JLb05DUjI5?=
 =?utf-8?B?QStVRERneGFXWjBBV0RMODNTSWFTNG5RMG9ORUx4SmFLZmNIc21zcXdmSjBx?=
 =?utf-8?B?NTZyU005cWUrc1VqN0s0eVdaQ1RNdHBsOHJzZnZCdnI1RVlvUHdyZlR1TXZ2?=
 =?utf-8?B?TkFkZFkvQlRwbGh1NllsTW1EVHk0QnpibHRHczN4a1RKYkM2YzFrenlsNjJD?=
 =?utf-8?B?ZmpFRCtxNDlscTNpUFhHK0NZeHB5dnRibWFaS25ZYUdQWVZNNTd5SUErNmpD?=
 =?utf-8?B?eWs4dVlqaWYyVzgreDVwTDJLS3g4bWZWdnV3eEg2Y0hUc3lTaFlQa1JJb3FB?=
 =?utf-8?B?M25UME1PZFhZdnNtN3FrTzV2N1F5YURUdFNlK25scjRJOHgyY0pUWllPcUU4?=
 =?utf-8?B?c0VXaGpzNTl2YUN1UURJY3paRXRkNjFqc0Rka0w1eFFCc2ZOdlFlZHhxZHY0?=
 =?utf-8?B?Mklab0Qzak9VZWp1cTU0ZW52NGVhMzBzMFZ4ZTRFTUhtS0RhSkZlRHhPNWYx?=
 =?utf-8?B?dGs5cEhPZ2tRdlpsS2dZaTRCOWVMZm1CdkR3VEQzZmxOQ3N5UC92ZFlZMUsz?=
 =?utf-8?B?NmVXeDJPeXlGUjF2Q1J3NDhXTDZMZ1E0SUF5bVZWSGVsT1JuZ0l2QzdqS0x5?=
 =?utf-8?B?aUFYZXUzVGVmeFNVdUhQUTF4SldwaDV3ZXlKQkt2cTFodGtwUjlsZVZWVTlo?=
 =?utf-8?B?S2o1MnF5Y0hyM3dqa0tZUXl0alAvalMwMnVJQTZJbnN0aE8yM3pzMG5JNjNq?=
 =?utf-8?B?VVVTTWhoTWV5OWRZM2JmQ21OR2x6eGVnS2ZlWmZuWUhMTFRLT3lXL0EzQXRG?=
 =?utf-8?B?WUtnL25Xa2RFOGJzVjZiaXRYRzg2OW9CbjRxclZodGlhZ09tMDlmT29jR1Bm?=
 =?utf-8?B?M2MyVnU5RGxSVXFoWWVySG1NeU9qcmowQ1Bqa1NyN0RVbU5GWllWeVYyRzQr?=
 =?utf-8?B?WUhjeSsxdGQ0SDdpeWEvMDdDOS9jY29JVDlkUE40VVlHL1RoaHdwUlg4UFVL?=
 =?utf-8?B?T1dXZlJnbGdDMTAwbjNRTmtzb1ZNdjlLZHdIYkgrNHJBdkRGLzdOT1luQ0Fi?=
 =?utf-8?B?VHpiQnpackRLb3VWOW1hTXBrV1hqOXpKT212ZEk0WVVzWUNqYThpV0x3THUx?=
 =?utf-8?B?VXlaQWVkWE5uYUYrU3B6UHdldmVSeDFkRk8vWkNHYjI5TkpqSVNkdVhrNERU?=
 =?utf-8?B?Yko1VG9DQU84ekN6TmNzdHU3NFF6aEhhY1lkSzFRVnRvbG54dm1YMXhsLzdu?=
 =?utf-8?B?QlVDeXppZVk5bmdxcjZ0R0FlSDdVSnRqdmViOERzZ1ZPME1VVGkxdnNFNHNy?=
 =?utf-8?B?QkRqVTc2SkN0UkZ0eGt4eUNaRGV5Ri9JVUV3KzhmVTBkeTg0TEFkd2tSTk50?=
 =?utf-8?B?bGRzWUt0U3NtWFc3VXVWZ1pZOVNrOVlEbHhBYllmQzY1NHd4bmpTeFF6cjN0?=
 =?utf-8?B?azVEbjRxNHNpRmttR00zNi92OEdONjBuU0JWT3Z2TVJwN3ppcGpJRXpLSWRR?=
 =?utf-8?B?UU9rRHNKMm5ZdFhqazVvUUNHR1NtU3hJZjFmWnZGRUo3Mi9Td2pIMHVFcXl4?=
 =?utf-8?B?cE5OUlhaeXpodDRJd0ErQmswcm9tV3krSm55TzdWOUh1OHBMOXFEc2tqVElG?=
 =?utf-8?B?cmdNLzIrbDZFaml2eTRBdnNKZktpS0s2M2NuR3IrUVNBb0pJZEwxNjFLQm96?=
 =?utf-8?B?QnJjaW9vNlRXb0JwMUZwakNwL21Xak9OdWVXUXN2V0FSV3AzalVxWUducW5n?=
 =?utf-8?B?U3hQdHc0UzZkY0poN0NEUnJzZjVZaEEvRStxMm5veGxvYzM4K0dmWEg1UDdK?=
 =?utf-8?B?eENHd1pvbkRtS2pROWtNblNsRmhRMjNTMnZPNWZzckM4a1BFdFcxakRQVWVs?=
 =?utf-8?B?NUx6VUloeGgraUVwYUxOOFR6WjNBM2s3MWNWRUtOWGJVbWhzVU5Qd3ZYL3NB?=
 =?utf-8?B?c1g5RCtJNURGZldkUERzNnJBZ2dGUHk4bjZPckordHFpNE50VTJ0SG9KLzRt?=
 =?utf-8?B?bHdWVmRaeE5mSWVDZngrcDROSkd3WWllN2kwNEdCcG0rL2V4VGhmeTdVWDdX?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05d65309-4bb9-42e5-fef8-08dbb83fae2f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2023 12:06:25.0397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u95IgixpDKzIKZgZE85J2CBUCXwwPpXPW/M1fW+/0t3nYWCHNApJ379NKlfehMTqv/gkfas696DO6ns73RriWyGDASkQpg05yOWtnPl2nvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7400
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695038789; x=1726574789;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B6hyCVqHpBwrmxDwnkubDdDZilSpRFOShig3Slbu9/I=;
 b=QygJIo7F5wJzObRJxEQ9GD4LsSOxeZLFsGSbJuBXibpBmXiWSO1ZKUIe
 1MH1jJzUJz5L/TMDC7sHxB+BtSPbQSy4Sg80pnThv57x1dQ8919BWSXSX
 VYOOmx5wqYCunBhw0761onvaeFXvKMPTmbKRKtSQb9FfZfccIfwxHOlHj
 uNmm/QbJ8oRP67XexAcQEAHKOIr+fKb0zC4PQklikWR6STM/w9Ku8zSV2
 HSOCyZD2ER/A30NGQjpgziNfRH2JMmQsuSxCAIeevYCd0FPNAxysOfpJW
 I/sWQbT8T6R67niyZZuHv1SZd5qTyfIIpoiVzbOJg7bxtRCeXmor1N1h9
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QygJIo7F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ethtool: Add forced
 speed to supported link modes maps
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
Cc: netdev@vger.kernel.org, aelior@marvell.com,
 Paul Greenwalt <paul.greenwalt@intel.com>, manishc@marvell.com, andrew@lunn.ch
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/15/23 16:55, Pawel Chmielewski wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> The need to map Ethtool forced speeds to Ethtool supported link modes is
> common among drivers. To support this, add a common structure for forced
> speed maps and a function to init them.  This is solution was originally
> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
> maps on module init") for qede driver.
> 
> ethtool_forced_speed_maps_init() should be called during driver init
> with an array of struct ethtool_forced_speed_map to populate the mapping.
> 
> Definitions for maps themselves are left in the driver code, as the sets
> of supported link modes may vary betwen the devices.
> 
> The qede driver was compile tested only.
> 
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

You have to sign-off too.

This series should be directed TO netdev, with CC IWL; and it would be 
best to have at least one Intel RB before posting next version anyway :)

> ---
>   .../net/ethernet/qlogic/qede/qede_ethtool.c   | 24 ++++---------------
>   include/linux/ethtool.h                       | 20 ++++++++++++++++
>   net/ethtool/ioctl.c                           | 15 ++++++++++++
>   3 files changed, 39 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
> index 95820cf1cd6c..9e0e73602abe 100644
> --- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
> +++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
> @@ -201,14 +201,6 @@ static const char qede_tests_str_arr[QEDE_ETHTOOL_TEST_MAX][ETH_GSTRING_LEN] = {
>   
>   /* Forced speed capabilities maps */
>   
> -struct qede_forced_speed_map {
> -	u32		speed;
> -	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
> -
> -	const u32	*cap_arr;
> -	u32		arr_size;
> -};
> -
>   #define QEDE_FORCED_SPEED_MAP(value)					\
>   {									\
>   	.speed		= SPEED_##value,				\
> @@ -263,7 +255,7 @@ static const u32 qede_forced_speed_100000[] __initconst = {
>   	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
>   };
>   
> -static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
> +static struct ethtool_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {

here you go past 80 chars, perhaps not big deal

>   	QEDE_FORCED_SPEED_MAP(1000),
>   	QEDE_FORCED_SPEED_MAP(10000),
>   	QEDE_FORCED_SPEED_MAP(20000),
> @@ -275,16 +267,8 @@ static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
>   
>   void __init qede_forced_speed_maps_init(void)
>   {
> -	struct qede_forced_speed_map *map;
> -	u32 i;
> -
> -	for (i = 0; i < ARRAY_SIZE(qede_forced_speed_maps); i++) {
> -		map = qede_forced_speed_maps + i;
> -
> -		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
> -		map->cap_arr = NULL;
> -		map->arr_size = 0;
> -	}
> +	ethtool_forced_speed_maps_init(qede_forced_speed_maps,
> +				       ARRAY_SIZE(qede_forced_speed_maps));
>   }
>   
>   /* Ethtool callbacks */
> @@ -565,7 +549,7 @@ static int qede_set_link_ksettings(struct net_device *dev,
>   {
>   	const struct ethtool_link_settings *base = &cmd->base;
>   	struct qede_dev *edev = netdev_priv(dev);
> -	const struct qede_forced_speed_map *map;
> +	const struct ethtool_forced_speed_map *map;

RCT violated

>   	struct qed_link_output current_link;
>   	struct qed_link_params params;
>   	u32 i;
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index 62b61527bcc4..3d23a8d78c9b 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -1052,4 +1052,24 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
>    * next string.
>    */
>   extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
> +
> +/* Link mode to forced speed capabilities maps */
> +struct ethtool_forced_speed_map {
> +	u32		speed;
> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
> +
> +	const u32	*cap_arr;
> +	u32		arr_size;
> +};
> +
> +/**
> + * ethtool_forced_speed_maps_init
> + * @maps: Pointer to an array of Ethtool forced speed map
> + * @size: Array size
> + *
> + * Initialize an array of Ethtool forced speed map to Ethtool link modes. This
> + * should be called during driver module init.
> + */
> +void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> +				   u32 size);

looks like formatting is off by one space (u32 should be directly under 
struct (ofc, in editor, not quoted email reply)).

>   #endif /* _LINUX_ETHTOOL_H */
> diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
> index 0b0ce4f81c01..1ba437eff764 100644
> --- a/net/ethtool/ioctl.c
> +++ b/net/ethtool/ioctl.c
> @@ -3388,3 +3388,18 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
>   	kfree(flow);
>   }
>   EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
> +
> +void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
> +				   u32 size)
> +{
> +	u32 i;
> +
> +	for (i = 0; i < size; i++) {

we are in C11 already, so @i declaration could be placed into loop line.

> +		struct ethtool_forced_speed_map *map = &maps[i];
> +
> +		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
> +		map->cap_arr = NULL;
> +		map->arr_size = 0;
> +	}
> +}
> +EXPORT_SYMBOL(ethtool_forced_speed_maps_init);
> \ No newline at end of file

:)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
