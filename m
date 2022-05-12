Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EAC525344
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 19:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E5B082F0F;
	Thu, 12 May 2022 17:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKzw-_NN4fGC; Thu, 12 May 2022 17:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70E3282C89;
	Thu, 12 May 2022 17:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC6141BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D87C960761
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8xU4_1SJDKx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 17:11:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E68D6076A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652375471; x=1683911471;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fcdlyP2kuFpzW7hLhH+3vUlXjpccRbyNO0cjsXgGVJs=;
 b=flMQMnqeeuo3n113Y2oUmMYOCxnm5z1YRTU+JxvwHTRpN/CtkpUBUVjN
 vDFqHgNVTe7WtiRhp9XppLo0L1JcDGxjylNm/6z/IkZqtEDQdHHxmBgHO
 9m29/denpNFdzE8H4CMVuL2+B2WJlaQtCLWvXRG7wY4GsvGsPqX9lhkIr
 huY0XAnI9IuxHFln922urKj5FQOEYMQR72XdxsreppBSsE3ULEj/32kGF
 FtJFdlC+V3iyX9QWd4FecNOfmYgc3gLh7sE2I1/T1Umq63wc0puzBqGoj
 duemOR+wcXanbo92hd3KCflRFW34nksQV/ll4LN2Ij2qfGWRY4NvkoDj+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="267656797"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="267656797"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 10:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="624487664"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 12 May 2022 10:09:14 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 12 May 2022 10:09:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 12 May 2022 10:09:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 12 May 2022 10:09:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 12 May 2022 10:09:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GaRl3RtrhRDeIjAxxQT3zTDm47yvSNSOglPzYa5i3QPXAAJ+jGq7Dr+LXhhmls6upfUn6whtkwntC9lRUBDxjoNSEIqGQB4MEwIdunEorSjvQfdErlMIt5K0Ga44fqXvPDezDCBe3LEr+Gl4jzfcfAZ7Ls6MBmXQdPGmgTn7E326y459zFj/MQAp1g/Evr5vZqqwhTbUuVjhjtt+u0JLLA7Oc5MpBTQlGP1AJTV+VPH6F/9VLrRzKqwPYCXTxArMbHJ6TrwngXHGgL8FGcslIIUucNRmkidGooHKcX0IZ6ytxN/7Kouv7ilUB3q9ZoX5Dkvz3PRGE9lOnBgA2Fgslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vRqqT2wP728GnuqcYKrW7PN86wRk5EcL2IW7Vg5zbQ0=;
 b=lrCdLgXRBn11RKtmICCNQJxBypIDkd2PQyhw7ZLn02KWgfTjGUcdOQibuKxY2ForFCNCIAFcO6TL7TVGZo3iuiz0UueUZ1KKJFx0v7oLRbnye9bYcOrTQVAugxXA43tvXoH+b8OMwlZ23iYij5xD0N/7Ox0K3+SGKfun8HtsgPhmoeAbvv4PAfi13m0KYvFTOa0bxKnZ5OddanoJqiz8exhbkPqsnuaiuui0b1RJdhvvb3eO5KoN3jWlPBUGpsP4idgtCAMpg4hvi/p8BjY0D2u2bP3bHByDaRfps8T/KHgS2Gp/2ZzZzcZ6hew3Ww5e2euUCIhYqLVUXAfo3ODyLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by MW3PR11MB4602.namprd11.prod.outlook.com (2603:10b6:303:52::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Thu, 12 May
 2022 17:09:12 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::99e4:a24a:d119:5660]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::99e4:a24a:d119:5660%7]) with mapi id 15.20.5227.023; Thu, 12 May 2022
 17:09:12 +0000
Message-ID: <51308ed3-09c1-6bf2-190b-306abd42f3da@intel.com>
Date: Thu, 12 May 2022 10:09:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Jeff Daly <jeffd@silicom-usa.com>, <intel-wired-lan@lists.osuosl.org>,
 "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
References: <20220316192710.9947-1-jeffd@silicom-usa.com>
 <56cd0dde-600d-1bb0-1555-e66de8c37236@intel.com>
In-Reply-To: <56cd0dde-600d-1bb0-1555-e66de8c37236@intel.com>
X-ClientProxiedBy: BYAPR07CA0073.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::14) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19495779-6842-43d4-5c32-08da343a2288
X-MS-TrafficTypeDiagnostic: MW3PR11MB4602:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MW3PR11MB460299C900A8B9083CCEBDA2C6CB9@MW3PR11MB4602.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uRtWM7xUCfNIsGs1uuZWeuGcjlL2dY3WnOBeObLzOGnBsqbH5azpi4xJCqlOzXX+oCU/Qd+AuhVjaGy7R9TIrGI9Eolsnw4wWwKlm5mdI/Tpg9wRHelBQSi9GUOsMb5JvaZkBweaaq6QAGZ3IWWD8VjBVxNCsh4yCL5rY4f2ep2fPFOjLbq2AsluFkPKwc0bVDA3FWoxs1+/OZQzRIa66sfL2cy13q1d3rkO3RGcj9HMJ3wQ3wettNfp6B3ilpltatbY9bmw680L3DH0SfCTHGc92nRUckYjOgow8aT/nVhWlXvwRbbalXllQ7VMhpbvTxcXR9fOUSUjfjn6++tPDBp+ttBkAdaIhfI0PCG0tTcO+j3hhOCiVcjmiw4K3C9ymzCBJzk6iRIxFw9xhAZIj6j4OHAAHxkJUIrGEDWhTcnvmgdh0/6HA7NOtxn8UeSscdOW5zS2mWseVpf56hw793aKzLGKQxRv9mV4LfLh6yMyemIQSd+bWuKEGaaSuwauZeV5rGmhN/9Wu/PaicBNMiwcXArxve0l4VOrFp9WVp0a3xy2qb4gijoomXixyUktGA8f7TgBajsQWoYVuOJHWOiHUq/X0LWY8dceClYXjPLijEP7jOmNiD0U40kV2PBLa6HiREh+yfe1rEa0srrN8viyAurXp1vV8y8Okb9QspiryHeSHRhALRMkoIIS4LFFuuxGUf3eoUvNEZu8thcoYHxhZkYBu2yWZ7u3IDKEgjqjWxBee/IJQJzPrMXPXjdioD0ZRX6QU4+F5WJFphTE/YtrXXXp0FK/zlBxKhIKjgXDIJSpxsOhcRMR4ATAYjIt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6666004)(2616005)(6512007)(53546011)(6506007)(26005)(5660300002)(2906002)(8936002)(31686004)(36756003)(82960400001)(54906003)(66946007)(31696002)(6486002)(966005)(508600001)(66476007)(66556008)(8676002)(4326008)(110136005)(316002)(86362001)(83380400001)(186003)(38100700002)(6636002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUJ1S2d1K3ZKd3VUTk55WTBYL25qSUo2aEU3S1hnV3ROTVlVa0ovN0F0Yi81?=
 =?utf-8?B?RC91RDM3MGZXRU00TkE4ZXpPaURzL1RQNldsTVZOeEhCaW5ubTkyMmhVRjMr?=
 =?utf-8?B?aENncUQ3bGJwZStnMm9paGtNUjBjQjJMalV1MnV3MFA3UTd0WVJUU0QybFR1?=
 =?utf-8?B?ZE9PWjQ3Y3pna3g3eExaWnRHam45RlJCd0o2OEdGNnc5anEvTzkwbXMyOGtI?=
 =?utf-8?B?ZUhKZGNIb0FmWTVHY2dLdmZTMUZvMUkrRk5zM09WZjNBa21BSVJkTnBCeEpO?=
 =?utf-8?B?b3pabk84cVloemRWWFdwU1piaUVOeTdLUzhoV0tXN0xzc2ticDlrL0Q4UkdP?=
 =?utf-8?B?bDh2b2ZlZXJYVlYvbDhYcnppMzQrR21FdzRvYzIxeWk2T0FJZXJPYTFxaVBz?=
 =?utf-8?B?K1NEWnVwb3l1a0tKNHNKMHhlRE9ZY3pXTkpVTXEySy85bjlrQldxS0pUekpj?=
 =?utf-8?B?WlpUcDNGazFZTS9ieEI1dUx0eU1CYzcvQS9Wd2tkNGtTRHdCUFM5dm5Tc21t?=
 =?utf-8?B?a3pzNjQyZ01IbXhHcFY0RHk4UnFMdU9Qby82VmJudUpXbHpTa3VQT29jeGJ2?=
 =?utf-8?B?ajArc1pOK2cwNlY5dW84REx0SmZwWEYzOUJ1eGpsVWxDMTlXRVpMaEVEYUZS?=
 =?utf-8?B?dHRYeTFtSTM2aVNvQkU1bzRud1JYclhOajBHeTViRXdCNWQ5anNjWGpoeC95?=
 =?utf-8?B?MHNpeWlvYmhIN0xaVmptSjJrRnp0RGJVdUJiTVFRY1ZQeW1zR3hBQnQvNFZq?=
 =?utf-8?B?Qkh0RFJMNEJFVmloTXd6cGxLeFA0NkhDVEdVZ1paRmJ1dDBPWXpia2JBL0g3?=
 =?utf-8?B?cDh1cWEwbFRPaFFOd090ajk3MTFVdXJuYXhVYkNoVlVTb0NTeE1ZUmFYV2VD?=
 =?utf-8?B?Z2YxMHFTQllBY0VnWkhBOXBYK2hFamlPNnBITmtTUC92NTRXczF3eThZRlZs?=
 =?utf-8?B?YmpGamlqM3VnbHJ4cVNmL0NyTWlneFIyL2p5eVdoMVhnT0MzdktkWkYyRksv?=
 =?utf-8?B?bzhWYkZ2ZzlMekRtdWo3V2h4WjJBWHdtbk9XR1ZPUko5Mlh3MzlpdDVvbTAx?=
 =?utf-8?B?aS9HbjNKRTdKOE95ZHZPTDZ4eDczVjVSNmgwaW1uVXM3Wm1Gd3prREt1eWJB?=
 =?utf-8?B?QkwrTTk1eml6Q3RoekxScThadEh2b2U4MUhYUW9ncjBVcGM5VmVnTFpnSWVS?=
 =?utf-8?B?cE9uUDdDSU1QMmllTXBaOU8rS1VLNXN6SGEwZWY4cXN6bFdOZ0N1bitpWlk3?=
 =?utf-8?B?eFhlWER1cy9iK0I2RW1QZHdVV0FXQVFDQkNqWFRlS1cxS05KK1NrYmdLVVdK?=
 =?utf-8?B?VjZMMnpsZmt2TVplVytzWTNNcFJrMDJDNTQyQ1RzUGlGYWZ6UmcrTFc5N1Qx?=
 =?utf-8?B?TTB1Wmp0eUIxaUVWRWZpMDFMNVlodFR1NldVUGhqWnZnUHo3VFEzKzU0N3pX?=
 =?utf-8?B?UVkvNDg2WjZmdXdzTlhXZWl1TjZKNEZvcnBpUWY4eTRwd2NzU2pnNytLV0Ur?=
 =?utf-8?B?TjJkS1BYL29ncjYvSmRjMjlxUkFHN2hNRWI5K2NOU3p4ZUZCZkR6bFdlM1l2?=
 =?utf-8?B?MzVoUCttK0M3eEVTSFIvcVQrZGQ4WWMyeVd3MGs1YVRGaG90WFcxMjZoTmJT?=
 =?utf-8?B?K1lpb0JxWTFaU2hhRnR3dGd3R3JoZHdUZTNPUVQ1VE9IVkYrR2FPam1nd1JR?=
 =?utf-8?B?L1lyVzk3QzBVb0NET2RCMUUzZmZtVkFib1llcmZsOG1IV3FTZE95aEpmT05P?=
 =?utf-8?B?T2pGbkxUd2xuME9DSjRqVlJCRWVsQm1wTUV2NDB0REJqS3NEYUZhdUVKZ2VB?=
 =?utf-8?B?WDlpMTNkYnNlSWg5TW1SaGdIMlpSSVNyZ01JZTB5d0p4SnRzbHpLZHM0NElk?=
 =?utf-8?B?M3JGOVJxVi9EY2JISTVlTy9zRksxV254TXlLRHFHbXpRczlsV0lIck50S3Zj?=
 =?utf-8?B?WHluVkxFdWI2QVk4MmR2VW1SNDdleXdFQ1lFOHJVRWpMeGJzYVRMaU52SjQy?=
 =?utf-8?B?WS81QU13V1BnSnNHUzgxaURZMHdkV0oxRWZkWGczK2JUYXg4dHhHRndBUzRx?=
 =?utf-8?B?UFZnTE5KRHhHTHI4N1loUHRZWU9QWU4xNk9NcUp2Nk8vZTg4M0RpRzhoa1Ax?=
 =?utf-8?B?RFV1Yk1oOGVNM0dQdFc3SDR3MDE1SE56SzRYeWoraXJHQk1Pd2NTTVZEcm92?=
 =?utf-8?B?QTYwSGp1QXAwN2ZuZzV4aVlua3pSYThKOEdBWE9IUGhUaE8zY0dXemU1bXl6?=
 =?utf-8?B?SkR1d0ZOV1I1Z1dnc0pMM0RPYzR4N2U4ZCttdW5MQzB4cmZlNThNUjVhT1ZT?=
 =?utf-8?B?dXd5NHkwUWlMblQ1b0hsdmMxUHgxd0xkbEJXTm50V3hlRHl1VkRiUjlsMDhO?=
 =?utf-8?Q?eqKQRD8NXUVd0ako=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19495779-6842-43d4-5c32-08da343a2288
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 17:09:12.0174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kWnYFUG4xn6OcDjz6unlsri7mppN7VHXrfXDgWn3oIcoi6lMuEgzHeoSvK9/DtwB0ZRt66SfozcY35iaRaO9dzU7dYIBhVdQ0u6+VyJ7Ses=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4602
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Cc: Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, open list <linux-kernel@vger.kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAzLzE4LzIwMjIgNDo0NyBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gCj4gT24gMy8xNi8y
MDIyIDEyOjI3IFBNLCBKZWZmIERhbHkgd3JvdGU6Cj4+IFNvbWUgKEp1bmlwZXIgTVg1KSBTRlAg
bGluayBwYXJ0bmVycyBleGhpYml0IGEgZGlzaW5jbGluYXRpb24gdG8KPj4gYXV0b25lZ290aWF0
ZSB3aXRoIFg1NTAgY29uZmlndXJlZCBpbiBTRkkgbW9kZS7CoCBUaGlzIHBhdGNoIGVuYWJsZXMK
Pj4gYSBtYW51YWwgQU4tMzcgcmVzdGFydCB0byB3b3JrIGFyb3VuZCB0aGUgcHJvYmxlbS4KPiAK
PiBIaSBKZWZmLAo+IAo+IEkgdGFsa2VkIHRvIHRoZSBpeGdiZSB0ZWFtIGFib3V0IHRoaXMgYW5k
IHdlIG5lZWQgYSBiaXQgbW9yZSB0aW1lIHRvIAo+IGxvb2sgdGhpcyBvdmVyLiBXaWxsIGtlZXAg
eW91IHVwZGF0ZWQuCgpIaSBKZWZmLAoKT3VyIGRldmVsb3BlciBpcyBoYXZpbmcgc29tZSBpc3N1
ZXMgcmVzcG9uZGluZyB0byB0aGlzIGJ1dCB0aGlzIHBhdGNoIApsb29rIG9rLiBIb3dldmVyLCBj
YW4geW91IHBsZWFzZSBhZGRyZXNzIHRoZSB1bm5lZWRlZCBzdGF0dXMgCmFzc2lnbm1lbnRzLiBB
bHNvLCByZXBsYWNlIHRoZSBtYWdpYyBudW1iZXJzIGZvciB0aGUgcmVnaXN0ZXIgd3JpdGVzIAp3
aXRoIG1lYW5pbmdmdWwgZGVmaW5lIG5hbWVzLgoKVGhhbmtzLApUb255Cgo+IAo+PiBTaWduZWQt
b2ZmLWJ5OiBKZWZmIERhbHkgPGplZmZkQHNpbGljb20tdXNhLmNvbT4KPj4gLS0tCj4+IMKgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGUuaCB8wqAgMyArKwo+PiDC
oCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMgfCA1MCArKysr
KysrKysrKysrKysrKysrCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
dHlwZS5oIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGUu
aAo+PiBpbmRleCAyNjQ3OTM3ZjdmNGQuLmRjOGEyNTlmZGE1ZiAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oCj4+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGUuaAo+PiBAQCAtMzcwNSw3ICsz
NzA1LDkgQEAgc3RydWN0IGl4Z2JlX2luZm8gewo+PiDCoCAjZGVmaW5lIElYR0JFX0tSTV9MSU5L
X1MxKFApwqDCoMKgwqDCoMKgwqAgKChQKSA/IDB4ODIwMCA6IDB4NDIwMCkKPj4gwqAgI2RlZmlu
ZSBJWEdCRV9LUk1fTElOS19DVFJMXzEoUCnCoMKgwqAgKChQKSA/IDB4ODIwQyA6IDB4NDIwQykK
Pj4gwqAgI2RlZmluZSBJWEdCRV9LUk1fQU5fQ05UTF8xKFApwqDCoMKgwqDCoMKgwqAgKChQKSA/
IDB4ODIyQyA6IDB4NDIyQykKPj4gKyNkZWZpbmUgSVhHQkVfS1JNX0FOX0NOVExfNChQKcKgwqDC
oMKgwqDCoMKgICgoUCkgPyAweDgyMzggOiAweDQyMzgpCj4+IMKgICNkZWZpbmUgSVhHQkVfS1JN
X0FOX0NOVExfOChQKcKgwqDCoMKgwqDCoMKgICgoUCkgPyAweDgyNDggOiAweDQyNDgpCj4+ICsj
ZGVmaW5lIElYR0JFX0tSTV9QQ1NfS1hfQU4oUCnCoMKgwqDCoMKgwqDCoCAoKFApID8gMHg5OTE4
IDogMHg1OTE4KQo+PiDCoCAjZGVmaW5lIElYR0JFX0tSTV9TR01JSV9DVFJMKFApwqDCoMKgwqDC
oMKgwqAgKChQKSA/IDB4ODJBMCA6IDB4NDJBMCkKPj4gwqAgI2RlZmluZSBJWEdCRV9LUk1fTFBf
QkFTRV9QQUdFX0hJR0goUCnCoMKgwqAgKChQKSA/IDB4ODM2QyA6IDB4NDM2QykKPj4gwqAgI2Rl
ZmluZSBJWEdCRV9LUk1fRFNQX1RYRkZFX1NUQVRFXzQoUCnCoMKgwqAgKChQKSA/IDB4ODYzNCA6
IDB4NDYzNCkKPj4gQEAgLTM3MTUsNiArMzcxNyw3IEBAIHN0cnVjdCBpeGdiZV9pbmZvIHsKPj4g
wqAgI2RlZmluZSBJWEdCRV9LUk1fUE1EX0ZMWF9NQVNLX1NUMjAoUCnCoMKgwqAgKChQKSA/IDB4
OTA1NCA6IDB4NTA1NCkKPj4gwqAgI2RlZmluZSBJWEdCRV9LUk1fVFhfQ09FRkZfQ1RSTF8xKFAp
wqDCoMKgICgoUCkgPyAweDk1MjAgOiAweDU1MjApCj4+IMKgICNkZWZpbmUgSVhHQkVfS1JNX1JY
X0FOQV9DVEwoUCnCoMKgwqDCoMKgwqDCoCAoKFApID8gMHg5QTAwIDogMHg1QTAwKQo+PiArI2Rl
ZmluZSBJWEdCRV9LUk1fRkxYX1RNUlNfQ1RSTF9TVDMxKFApwqDCoMKgICgoUCkgPyAweDkxODAg
OiAweDUxODApCj4+IMKgICNkZWZpbmUgSVhHQkVfS1JNX1BNRF9GTFhfTUFTS19TVDIwX1NGSV8x
MEdfREHCoMKgwqDCoMKgwqDCoCB+KDB4MyA8PCAyMCkKPj4gwqAgI2RlZmluZSBJWEdCRV9LUk1f
UE1EX0ZMWF9NQVNLX1NUMjBfU0ZJXzEwR19TUsKgwqDCoMKgwqDCoMKgIEJJVCgyMCkKPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1NTAuYyAK
Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMKPj4gaW5k
ZXggZTRiNTBjNzc4MWZmLi5mNDhhNDIyYWU4M2YgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1NTAuYwo+PiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMKPj4gQEAgLTE3MjUsNiArMTcyNSw1NiBA
QCBzdGF0aWMgczMyIGl4Z2JlX3NldHVwX3NmaV94NTUwYShzdHJ1Y3QgCj4+IGl4Z2JlX2h3ICpo
dywgaXhnYmVfbGlua19zcGVlZCAqc3BlZWQpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgSVhHQkVfS1JNX1BNRF9GTFhfTUFTS19TVDIwKGh3LT5idXMubGFuX2lkKSwKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJWEdCRV9TQl9JT1NGX1RBUkdFVF9L
Ul9QSFksIHJlZ192YWwpOwo+PiArwqDCoMKgIC8qIGNoYW5nZSBtb2RlIGVuZm9yY2VtZW50IHJ1
bGVzIHRvIGh5YnJpZCAqLwo+PiArwqDCoMKgIHN0YXR1cyA9IG1hYy0+b3BzLnJlYWRfaW9zZl9z
Yl9yZWcoaHcsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVhHQkVfS1JNX0ZM
WF9UTVJTX0NUUkxfU1QzMShody0+YnVzLmxhbl9pZCksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgSVhHQkVfU0JfSU9TRl9UQVJHRVRfS1JfUEhZLCAmcmVnX3ZhbCk7Cj4+ICvC
oMKgwqAgcmVnX3ZhbCB8PSAweDA0MDA7Cj4+ICsKPj4gK8KgwqDCoCBzdGF0dXMgPSBtYWMtPm9w
cy53cml0ZV9pb3NmX3NiX3JlZyhodywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBJWEdCRV9LUk1fRkxYX1RNUlNfQ1RSTF9TVDMxKGh3LT5idXMubGFuX2lkKSwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJWEdCRV9TQl9JT1NGX1RBUkdFVF9LUl9QSFksIHJl
Z192YWwpOwo+IAo+IEkgZG9uJ3Qgc2VlIGEgbmVlZCBmb3IgYWxsIHRoZSBzdGF0dXMgYXNzaWdu
bWVudHMsIHRoZXkncmUgbm90IGJlaW5nIAo+IHVzZWQgYmVmb3JlIGJlaW5nIG92ZXJ3cml0dGVu
Lgo+IAo+IFRoYW5rcywKPiAKPiBUb255Cj4gCj4+ICvCoMKgwqAgLyogbWFudWFsbHkgY29udHJv
bCB0aGUgY29uZmlnICovCj4+ICvCoMKgwqAgc3RhdHVzID0gbWFjLT5vcHMucmVhZF9pb3NmX3Ni
X3JlZyhodywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJWEdCRV9LUk1fTElO
S19DVFJMXzEoaHctPmJ1cy5sYW5faWQpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgJnJlZ192YWwpOwo+PiArwqDCoMKgIHJl
Z192YWwgfD0gMHgyMDAwMjI0MDsKPj4gKwo+PiArwqDCoMKgIHN0YXR1cyA9IG1hYy0+b3BzLndy
aXRlX2lvc2Zfc2JfcmVnKGh3LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElY
R0JFX0tSTV9MSU5LX0NUUkxfMShody0+YnVzLmxhbl9pZCksCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgSVhHQkVfU0JfSU9TRl9UQVJHRVRfS1JfUEhZLCByZWdfdmFsKTsKPj4g
Kwo+PiArwqDCoMKgIC8qIG1vdmUgdGhlIEFOIGJhc2UgcGFnZSB2YWx1ZXMgKi8KPj4gK8KgwqDC
oCBzdGF0dXMgPSBtYWMtPm9wcy5yZWFkX2lvc2Zfc2JfcmVnKGh3LAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIElYR0JFX0tSTV9QQ1NfS1hfQU4oaHctPmJ1cy5sYW5faWQpLAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tS
X1BIWSwgJnJlZ192YWwpOwo+PiArwqDCoMKgIHJlZ192YWwgfD0gMHgxOwo+PiArCj4+ICvCoMKg
wqAgc3RhdHVzID0gbWFjLT5vcHMud3JpdGVfaW9zZl9zYl9yZWcoaHcsCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgSVhHQkVfS1JNX1BDU19LWF9BTihody0+YnVzLmxhbl9pZCks
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVhHQkVfU0JfSU9TRl9UQVJHRVRf
S1JfUEhZLCByZWdfdmFsKTsKPj4gKwo+PiArwqDCoMKgIC8qIHNldCB0aGUgQU4zNyBvdmVyIENC
IG1vZGUgKi8KPj4gK8KgwqDCoCBzdGF0dXMgPSBtYWMtPm9wcy5yZWFkX2lvc2Zfc2JfcmVnKGh3
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElYR0JFX0tSTV9BTl9DTlRMXzQo
aHctPmJ1cy5sYW5faWQpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElYR0JF
X1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgJnJlZ192YWwpOwo+PiArwqDCoMKgIHJlZ192YWwgfD0g
MHgyMDAwMDAwMDsKPj4gKwo+PiArwqDCoMKgIHN0YXR1cyA9IG1hYy0+b3BzLndyaXRlX2lvc2Zf
c2JfcmVnKGh3LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElYR0JFX0tSTV9B
Tl9DTlRMXzQoaHctPmJ1cy5sYW5faWQpLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgcmVnX3ZhbCk7Cj4+ICsKPj4gK8KgwqDC
oCAvKiByZXN0YXJ0IEFOIG1hbnVhbGx5ICovCj4+ICvCoMKgwqAgc3RhdHVzID0gbWFjLT5vcHMu
cmVhZF9pb3NmX3NiX3JlZyhodywKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJ
WEdCRV9LUk1fTElOS19DVFJMXzEoaHctPmJ1cy5sYW5faWQpLAo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgJnJlZ192YWwpOwo+
PiArwqDCoMKgIHJlZ192YWwgfD0gSVhHQkVfS1JNX0xJTktfQ1RSTF8xX1RFVEhfQU5fUkVTVEFS
VDsKPj4gKwo+PiArwqDCoMKgIHN0YXR1cyA9IG1hYy0+b3BzLndyaXRlX2lvc2Zfc2JfcmVnKGh3
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElYR0JFX0tSTV9MSU5LX0NUUkxf
MShody0+YnVzLmxhbl9pZCksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVhH
QkVfU0JfSU9TRl9UQVJHRVRfS1JfUEhZLCByZWdfdmFsKTsKPj4gKwo+PiDCoMKgwqDCoMKgIC8q
IFRvZ2dsZSBwb3J0IFNXIHJlc2V0IGJ5IEFOIHJlc2V0LiAqLwo+PiDCoMKgwqDCoMKgIHN0YXR1
cyA9IGl4Z2JlX3Jlc3RhcnRfYW5faW50ZXJuYWxfcGh5X3g1NTBlbShodyk7Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
