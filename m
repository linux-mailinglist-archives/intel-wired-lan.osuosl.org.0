Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E479433FBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 22:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87728832E8;
	Tue, 19 Oct 2021 20:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mDPVngbql6tC; Tue, 19 Oct 2021 20:24:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96A8E832E7;
	Tue, 19 Oct 2021 20:24:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F53F1BF476
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 20:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 783FB4016A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 20:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zCNut47cKiTC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 20:23:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46C3F400E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 20:23:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228895286"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="228895286"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 13:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="551348417"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 19 Oct 2021 13:23:55 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 13:23:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 19 Oct 2021 13:23:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 19 Oct 2021 13:23:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HLzJVoc3L+JHtQwaetS+CkaR0B6r048LgzGJTJLpk0epWTv3gEPepuLND2vm5AfgsBB2idMocRQ1Ek1JEt/SAyHPdWOUJZ544rL+tISFsYZ7iqH6wwqkHudgWhw/hf+ReIaGhPCo1Z0UV4IfqvnQkF87UGXItid6cFXUaRsLAQiTLFwy+YMWdIZrpxIk8N0F61smnBz2+AUEpLsY+TuC/On0aYowhHmOzhbKYQtA4rnR5lI0qj/HqofaP1CzIs29mGFCAoO1BifYeOf3wMLzclh0pVrHZHRleEaPHAZKUcx9G+jJf+ODu8YiYRH0RVp+EgjOib/Odl4C3YYUVGdH4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VDKsMmG3i52F6TUGkV6e1D2mJmLjIEqZIieH4wXymPk=;
 b=DB5bBdk8F4Pmzof6LAGAVPQYpGxXGk1HN72DaOBaCmEPXKjIEQjPNHB961J39cxo0ZYHWrINoYWYT12a7CE6Iw+ihnyQwu8qqSaj4nE1iqCmQuvTHgff1mnPcOV2l7vflFN/b/8BIyU8dhomeerW1dZrweTXGu2JxMtuzuGRy8VKdvtaEl7TN+eHS4oO4sHRyUbIMfFLPq4pS1wNpWHn5H7eLzjv1V2c74luMqg4gvZBjOmUqmASCZIQ38DQRmpx2k5e1jYRfkJ7alLdwUbn5+ryF6XkPDwjTMX49hlBB5Ajm7Mo/cIpAAKDFdsePmlR9qIntXyH28A8Cf0+nSMPPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VDKsMmG3i52F6TUGkV6e1D2mJmLjIEqZIieH4wXymPk=;
 b=oK2TNv0oaZVq8dfrm5edrRHbQFa62EqpxuaVGTyQq6Y5otZinWIYMVmsqCdqfLs1O+rgsO+OjCf5WaLby+BMFX2wpoy/1FddaC4thqQGaQC6Hp3/meGrMOhSIiH+IMwndWN3cMQnWNlTrfmtm6m3qi0Cs1HfQBL89hslPYWoyZc=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CO1PR11MB4993.namprd11.prod.outlook.com (2603:10b6:303:6c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Tue, 19 Oct
 2021 20:23:54 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304%3]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 20:23:54 +0000
Message-ID: <f8940010-8e21-206b-c1c2-05ff51f86b83@intel.com>
Date: Tue, 19 Oct 2021 13:23:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20211019200416.59880-1-anthony.l.nguyen@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211019200416.59880-1-anthony.l.nguyen@intel.com>
X-ClientProxiedBy: MWHPR11CA0005.namprd11.prod.outlook.com
 (2603:10b6:301:1::15) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MWHPR11CA0005.namprd11.prod.outlook.com (2603:10b6:301:1::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.15 via Frontend Transport; Tue, 19 Oct 2021 20:23:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cd08ea39-e56d-489f-15de-08d9933e5ec4
X-MS-TrafficTypeDiagnostic: CO1PR11MB4993:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR11MB4993535D69C2A8EA0C12421697BD9@CO1PR11MB4993.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jJlzz7BDb7sXDvkZpaxa+uhBlfHkn9Phaxqx85L2hcdq+q3N2m8KVBQwtbqGps4kBvMuh7aBQK5pobST0ddrGs7mM9FgTckAMa2/+yEwwF4FBXLe9VrwG5BF2rLYFCSQfopu7lzo2KkkH6tfJzhAMZlmpgD8GSSPhEtkodwHRRZuzqoxTkLcDq8oO8QACza5V/0a3QviSlKsTfxv/yJ9KHsyIaj6/KU2hHaJUq0HQyGZU9uan5/cAeBDbm9c5ZGHyE7injtdoNuctCExNG4LLKrfsbTFpA7Y6/suS2ysG6XSY3SpgL6PMPvnF+gEtsbTNIoKWTlunXCTAXwJ+RILbSBt+skatMt8p+0nj1IornbNGdQuVKHpIYgJArvKzMU+WY/bI7SK6q3N+5B0+l83jiywQ9qyEkCM/LfF8rrYBivHFRCqIDS+9YwAghxYoz+t9NcjLqqH/0qYvrfynt1xKd6pjDJQtWKEfnIa7US9X/vto2OJx19zmy2Mh2gvDtKpzs1aH8CRGCdm62ozj5VoYPGs3BCD6sdPdHU2rh6WmCUA67LV2uYgtOT+Dpc4lZrdfN3yoaQ4Q+Wa0wDS2LFORku3RuEiYQR34GIhCCpExZRRgul9URprnYlHCL5MpQZv6XRg+n9Gaa1qeXsypQvCwxyh3atEXbKyTKojiwht7l7DNXsFCppzDndXVPy9dKUiXKv237ZE9Er4kJx7U9c39AK47NNO+AjHm5qnlnhxo769CNFJI3gfXRd9Pm0c7rQI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(5660300002)(2906002)(44832011)(66556008)(4744005)(8676002)(26005)(82960400001)(16576012)(66476007)(31686004)(53546011)(508600001)(8936002)(6486002)(186003)(36756003)(316002)(66946007)(956004)(2616005)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dG9sQnFZZGFGc3c0K3hpc1I2c2NaRWdEWkNsaVJHS05oVG5raDNEcGtjSGlG?=
 =?utf-8?B?UW1zb2t0NnNDT2ZIbjkyUkN5UzhXWTlMdnlsdzZJbkF3ZjRONklBMWVjSUJ4?=
 =?utf-8?B?d3IzMXNTOGQ0b2RMQ3hPb2dHbXp1dkZCWCtVRFAvei9kYTIwblY0d0xNem14?=
 =?utf-8?B?dk9iOVBLSElBYWM3OVIrTSs0b0krTHFiNEQ2djVneVQ0NEZ2TjhDSUtYeUEz?=
 =?utf-8?B?Ryt1QTJHUGVvOHJMVEFrNGVNZWt5bGU0RWRPQ0hhUVVBMzcydll3dnpsNWk0?=
 =?utf-8?B?TlFqV0wrY2hxNlhPaWNOWWpvamEvNFJIQXFETDlxZUdXWlk3UlF6SWN4T3FP?=
 =?utf-8?B?eU82eGlNRHVpOEFKNG9wNmFmcU1FaHRKVFUrWVdsWFFETG5SaEEreVltc2RJ?=
 =?utf-8?B?QlRjVXpSMnhCT2wwVmNycHpkMnBFSEFQckVWNW1pVVlDS3o2eUdrTzVveUdy?=
 =?utf-8?B?emFrZ2h2TStEcVJMYjl0aU1GYk1uQjdJZktlMCttalV2cWpxZlVZdXNMRkI1?=
 =?utf-8?B?Z1licHhyLzVwcUV2VHZtRFBUR1JzbFA0eXYyK1h5U0JlZFZQVFF5OU9ybFZ2?=
 =?utf-8?B?OGxQUnRNY3ZKelZhTFZ5S3ZrV1BvNmlSRng1MzBkb05kQlVmMnh3YnpQamI5?=
 =?utf-8?B?Q1A2RWJpNFBuWHcxc2JvVko4ZWR4RHR2UUhRRkYrVjFwWnNabkQ5RUNkTnJ5?=
 =?utf-8?B?b1FIVEIrZmlPTUxCN01TSTFlczVBbFExR1VBSW1UWDdvdW1HajFSdVFod0ds?=
 =?utf-8?B?aHBJMEhQams1dDdPOERjaXcrb216cnB3cFRzdVJUckJYTW5IOEpDd2VVaUMy?=
 =?utf-8?B?eHlRMnN2dFJjeElqL3ZOcW1RSUdaTlZKdlZadmU1SHhxRlk4ay82dEgvTDVr?=
 =?utf-8?B?anNqQnFBem1NYXc3TXNnZGtwbTFDM3FPRHAybTdqNjQwK2xFemFvRnFrOHht?=
 =?utf-8?B?RmVwMDNJYWdiMERBRGU3QXRNTFdXS0ZGU1o4VDBoYXgvVFlrSWVwektkNk9S?=
 =?utf-8?B?VUwyb3NPZlBXQk15Y21zb2FPNkJSMldEMjhNK2hCOFh5YUVXNW5MQVJDcmMw?=
 =?utf-8?B?TDJuckdLTHB1UkgzMzRkbW5pbkhPUFlmSk9Kbm5GdE9ieHBWa2RxSkRwQy9S?=
 =?utf-8?B?bEx3WkRBTlcyK0FUSEY1MGZrMW1MRVB5b3EwbWZEMmRJMzZJQnoyakVPYlFG?=
 =?utf-8?B?OFpSdkRJejM5NTVaVTlwV1FsZHIwTVJHZG1mVUNDV1Z5K0JXWTJXZW9EWUpY?=
 =?utf-8?B?bnJGRzVRcHQrUkZ3N1NrOStqOFByczF2WnhEdUJZdXhtSHljVFZzSm5PYWIw?=
 =?utf-8?B?M1RnRkhIMkVhVEJ5NkpqQ3pBdzN3OHJPMVJKeExSOG1EY1dpblpUM3VzU3NX?=
 =?utf-8?B?S2E0dlRiN0ZuY2NnUllXVVUzMGpxcVlSbTNabkVyQTNRV0JpU201cnl3ZjBX?=
 =?utf-8?B?d2RBelY4L2JSL0NUaU9OTkhTeHdMVStDUXhLSWowWWlScDZiZmJQOXNFV1Yz?=
 =?utf-8?B?YXdJTFJoTVI0ZWI2cHRqYml1Y1ROTFF1SVV2SzZkV0g3eVZIR2pLZWFRWXRu?=
 =?utf-8?B?Qm1MRnpvaHYySGFKYXhZWVBlRnY5cjhTM25RWXFUZlJPN2l2MlVwVWRtK2ZE?=
 =?utf-8?B?Y1NmUzV0ZW5oZG1ObHIwTXBMeTk1Z1VsRkFkRktvSmg0VVFLa2hkb2xpanpq?=
 =?utf-8?B?RlZhNUkyYm50NkpibWQwNEV0YkZ6SXEyK0Y2THJJc1NtN1FhUmJSWGk4T21G?=
 =?utf-8?Q?g5E/wETeVtnr6uoj3CgVe/AhrtlrngDvZxvu8to?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd08ea39-e56d-489f-15de-08d9933e5ec4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2021 20:23:53.9418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GkUlLu2ogwawflmMA/uJglhgySMM0YA6unitStREysgeAoA/2ZXUJzg5H01xUcDsqeRJgFn9UGX5LMJQSZSTTzMdVPZnuD5sf0cgMwJpogI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4993
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Add missing E810 device
 ids
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

On 10/19/2021 1:04 PM, Tony Nguyen wrote:
> As part of support for E810 XXV devices, some device ids were
> inadvertently left out. Add those missing ids.
> 
> Fixes: 195fb97766da ("ice: add additional E810 device id")
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
