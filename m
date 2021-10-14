Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9542E42E236
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Oct 2021 21:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE25740467;
	Thu, 14 Oct 2021 19:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0jheSxdn5mi3; Thu, 14 Oct 2021 19:52:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD0304028E;
	Thu, 14 Oct 2021 19:52:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0FE51BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 19:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E7E04028E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 19:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QtBMWEaJAbu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Oct 2021 19:52:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D90A40125
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 19:52:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="226548428"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="226548428"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 12:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="571523287"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 14 Oct 2021 12:52:21 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 12:52:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 12:52:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 14 Oct 2021 12:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PM+AHzISanzdRkQXBxPFtAiUcBl0basypvaHeJO81wfPNLmPAH8PoL81kznsuRQGv8VxYqwn/EDSTc79vi/EMl85+gS7jp+aTyOgocd9iCOIQQ8G0lp+WwKIFBqK3oDo0VQjvIJHlk99ccb7Ug3kxYeAe0fQVb9UeXLxhcMfl+Jj8TOTHinMce72G8fl93+y0eZje3+Y3nzlQAhQ7aUy07DMc6lS3wFRQUh+qSejVoZD+ZqNywahBFl4GJLi8PyXgWz+Jh/oHtA0RgC43VHFVhF8/KeY+TQzaJTJFH9FdOKQ1FQuNJQJgzW0wtDdw5Z+ffjItY6PGtaWQWRO/SZJdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/VX4cqb4dJNzCwZ288cMCJXx8QeULNE7V651wXsvT8=;
 b=HZS+AoRztF/rDJs68Z4uUc56AtDxup/t/aK/PO3+Lkh+roU4Ta9RsEigkUtrrRHm5X7mh86lfaf3U+9LcP7sMYx565bjVz9g3FmFfzQr+W6h09pWqr8okj/2KEVAPjSOgEu16lKnWkWYTCeXU6a0wa0+WE+DutHh40UC2/OjHoHDxQqrzOXB8HVBW1/lFagbnz1oQHVqZMCeXzXZvXUoiijNVG3J5Vd7Hqs0yNJjQtT8RNqJBnhkqHphrwDolkP8wBS3KrXu0ydS8842fkJoNBNH+fyU7G9dMhInMssUhAiRMViG1iFeC4t0vbQrQWpeayROyR/WU/zLVNQpa2XqWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/VX4cqb4dJNzCwZ288cMCJXx8QeULNE7V651wXsvT8=;
 b=liGPVR5D8W01UGWHlt//RViaAAyPWZAs4OER0ZuHd+KVJ3t7moZGNsDiX86vkdHQNgC+LbaKpofQEIhiCzkAsCvb5jjC8TwsEBXiIMgQlDX/io4QKwnbV1HAueMO6FCKai1KsB7UTX+q3k5FiRxLPiiGbyNfJkic4LRUo0t4tJ8=
Authentication-Results: kvack.org; dkim=none (message not signed)
 header.d=none;kvack.org; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Thu, 14 Oct
 2021 19:52:20 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3%9]) with mapi id 15.20.4587.026; Thu, 14 Oct 2021
 19:52:19 +0000
Message-ID: <6bb0f7d2-1d25-0d0a-7141-ebd277082994@intel.com>
Date: Thu, 14 Oct 2021 12:52:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Benjamin LaHaise <bcrl@kvack.org>, <intel-wired-lan@lists.osuosl.org>
References: <20211011222800.GA17234@kvack.org>
 <55127ee0-e85c-9dba-4086-31516a843d27@intel.com>
In-Reply-To: <55127ee0-e85c-9dba-4086-31516a843d27@intel.com>
X-ClientProxiedBy: MW4PR04CA0076.namprd04.prod.outlook.com
 (2603:10b6:303:6b::21) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MW4PR04CA0076.namprd04.prod.outlook.com (2603:10b6:303:6b::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.16 via Frontend Transport; Thu, 14 Oct 2021 19:52:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 03422635-ade4-4906-405f-08d98f4c21e0
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: <CO1PR11MB4867B3B41E18091B193C5F7597B89@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jLEg+PXbzmDabWMwaEqPvVXF7HQ0T7GEIfV4KM9upLRVMc1o/Q7V+q97FZpH/xpuNbC3gnn0Ez20EM0gVwp0vKMONjZJxxKQs3kKfV/RybZOBFM4GtO1M1GetXr9xDYr0B0JJwI4iodbb7AyMtCBa2fxlXi6j9MMxwZ9PKMxKYfStP8reImp0lzRMKkId5/NznEHiUw66mh6NvLcpD5HckSYFuhH5Z2tkwuvbC2BVsoKNhshFBB3dNO05Q2DhESLtXhGBcDgudxOjkXWGGcmvEGEnrIQnukByFFJZvQZplBy3Xv6bsZdAfMVRTYP2YYxgUHlB9pg75My5IbABTZhFttE9f6QJgcoh0w9CZpO2u5Tq7bqEYixAchtzlGSMArsEQR7UlCglL4WiQqiDNfrMwduvgm8bzj+DYnOlIh3MMc1tK7lEHtsblCIubh5UkGUAWzsRPs+2ewL8ywzdn8Kj57d4sUwnwB+ah3Wj2lhwetM3DPP1Lixq7c4GMLcQYed8AuVa3UHyq+V1lb2V32kfLL+BVjTvlbTzQVbNLZu8hOVvXF57ekmKvf85Zxu0oj9H7iT6AlvWMCQAHlGZmpBBmf2kU1lNenRAWbKYDkm7DweEJAczgPJugs1UO5bk3WndK5BA1Nd/5gWXyCgFUJjNBam0Ebw9b5alb3XMdwm3LSkqdStGr/FAHH73pdd1DRUsOvE4QK0svHEjNw6nmFUreHk8M3aQyiGGTz6EFL43F4xo0qeAFSlH543lTbu/hjSUcNA8oFMCyF2/b+VkYNVYC289VDWYfx0Zp+uAHWmfBl3fT5oGg6Fa6mWc1x/bmw9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(956004)(38100700002)(2616005)(966005)(8936002)(83380400001)(6486002)(86362001)(82960400001)(44832011)(8676002)(5660300002)(66556008)(36756003)(66476007)(31696002)(31686004)(26005)(66946007)(53546011)(2906002)(16576012)(508600001)(186003)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3ZsaU94dndxcktmMHJGQndaYVFiTVAvTWo3K3pzaG1kZ2lVc21jZHpWTjdo?=
 =?utf-8?B?WFV6Um8yS3JMSDdac0MrNmVSV3BvMWxpSlVWTFdDR0JQdTBwZDZhbndESUhk?=
 =?utf-8?B?OFZ5UFY3V1J5QnA4Yk5vb3B2WkxaYzhMSGNCSlFYK3pBdFp2WUFoS0l6aUlX?=
 =?utf-8?B?d1B3TVdDL2trY25heS9pdVdZLy9pKytwamQvNi9VWEM5cktFeDM0bUFOczdq?=
 =?utf-8?B?cis2dGMyeWVZRkk3a3JXek81T1JLUjBJNEZsVXdJNnYySDBzMGtzTVpNYUlG?=
 =?utf-8?B?Ky96NGRyR05TTVBITFY5SVhWWGEvbkl3d2ZMVUlpT2tlb0pkeGxvVDFFcTZE?=
 =?utf-8?B?OVRTeUt0WmNaZzE5WFdaaUsxeFNJNms5S2JOdlZHRzN5UXk4bG9HQ1J6Q1NY?=
 =?utf-8?B?NlFmMUlTVjVOemw4eVBiQmd6TDhzWEdnNmVGMVNCc3VZYWRlTDhSZzJEc3Nm?=
 =?utf-8?B?ZjNFV3hqd21uVm03U2l2cndyVG1lYmlScjFvMVhsNzcwdzM2QXBnL0VlcGFP?=
 =?utf-8?B?anEwcU9QU0V2Qzk0a1dXbHFyWTJIZ3I3Zmk0SFpNRWdKeWQ4M0RLZjViR0Zj?=
 =?utf-8?B?RFM2Q1BWMk9UOHZScVdaNnJKczFmYStmd0wvK1RBNUtjbTQ4SEhtNHovaHU3?=
 =?utf-8?B?Wk5WWklGUHVuRWFQL2QybUpQQzhaSnZSd2kyTU5EcU1aN2JldGllVEJ1ZkNq?=
 =?utf-8?B?Z0hMMk94V1N5amZDUGZDVnc1Qm9CTG8xeUhyaW1mSUVCdFRwcjIzN09oWjB1?=
 =?utf-8?B?VWdFN280TXYrOVFnK2pubWZEQTlTbDFVRHJwNkJZVzd4RytYSUZyaDRIQTU4?=
 =?utf-8?B?SlVCaGMvdGw5NHZCYXVFU1hWSnhjd1p3ZzZIa003ZzFWNG1oTnU0Z0RVS0JB?=
 =?utf-8?B?NDgrN2RXcDNPaGdDUVRoRFNhU2kzNmM1b0FxSG9YMjFueGl1N0JIVlY4clNw?=
 =?utf-8?B?eXlsL3NHSmVBLzFUY0VZUkUrUGJ3RFpXUlZISXBSU29jejRleExsTlRNeE00?=
 =?utf-8?B?MjUyN25RMmxpSUl0a3JkTVh0V2pJQndwOGorT2hzRUFRN1BOL3JReFh3UWNL?=
 =?utf-8?B?ZnhFSHJiVjhFRlNUY2xjZklUdXZiMkorR2szNk0rSmJIV2ZReVVabUJPMU5x?=
 =?utf-8?B?cWJ5OWhXZTVjY3hEUEdTeWVuOXpYYUF5djIzSFZlK0xoNUF5UW0rYlhQL0Ni?=
 =?utf-8?B?ZTZ3dWdFeUtrZE1HbEEwaklLTzJTeWx0Z3kxd24xVmkwNUVDQTlZT1VXQ3dJ?=
 =?utf-8?B?cDFYdkVVZW82c0VDY3BsZVJWNEEzSWdJK2ppMXdOU0ZmRmNPS3hJRDl3dTF6?=
 =?utf-8?B?elZvVjJ6UitPMTFWL2pPeTBWTlY3c242S252K2lFVHFQYnNzWCt4bmZ5bzNS?=
 =?utf-8?B?c0NyWklXVFNNd3hQYkN5d3lnKytYY1plNnBTS0xsbkYybjdqcVFZbUdkMm1Y?=
 =?utf-8?B?Wlkvd3Z3YXd2ekh2YnZodThkZVpnUGp2aFBFZXBscHp1TXM1elRBU21jZ2Q1?=
 =?utf-8?B?eHkvcTNYRWxST21JSzZIWk5ibFk4NlRiUWJMOXhYbzdQMndmcDNYMk1kdUxG?=
 =?utf-8?B?ZThWZGM3enhNcmFKZklSMmVldDRFOTBENm4rVGtnL2g0WHJ6ZE5oSWV4UEZ0?=
 =?utf-8?B?M0JrK2hVMTcxQWRudWZDcVVhb0xPdHhhL0YzWEhFQmQxV0RxMExVUGluakhY?=
 =?utf-8?B?bGp1UWR2TVFyOWZiRUlwMWd1THl4Tm1ZOHpKTGRmZGdld1lBWXliYUJ4WXNn?=
 =?utf-8?Q?kLuRW1Z7ctXH48vQc7r1cQ2AO7YWjBuVk4tBIxN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03422635-ade4-4906-405f-08d98f4c21e0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 19:52:19.9093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DW0ma3m3/8W+Q5IaL3jwZ9eDYKfOEgWC+QEJCdTjgyOIHibjKHyPuv58txBaEoUVeBYJXC7VHXMcFrLV23lm3m66ZmNzq3mryCWyPOzvP6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e pppoe rss
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMTIvMjAyMSAxMjoyOCBQTSwgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPiBPbiAxMC8x
MS8yMDIxIDM6MjggUE0sIEJlbmphbWluIExhSGFpc2Ugd3JvdGU6Cj4+IEkgaGF2ZSBiZWVuIHRy
eWluZyB0byBnZXQgUlNTIHdvcmtpbmcgZm9yIGluY29taW5nIFBQUG9FIHBhY2tldHMgd2l0aCB0
aGUKPj4gTGludXggaTQwZSBkcml2ZXIuwqAgQWZ0ZXIgbG9hZGluZyB0aGUgRERQIC5wa2dvIGZp
bGUgZm9yIFBQUG9FIHVzaW5nCj4+ICJldGh0b29sIC1mIGVucDQzczBmMCBwcHAtb2Utb2wydHB2
Mi5wa2dvIDEwMCIsIHBhY2tldHMgc3RpbGwgY29tZSBpbiAKPj4gb24gYQo+PiBzaW5nbGUgcXVl
dWUuwqAgQ2hhbmdpbmcgZGVzdGluYXRpb24gSVAgYWRkcmVzc2VzIG9yIHBvcnQgbnVtYmVycyBp
biBVRFAKPj4gcGFja2V0cyBkb2VzIG5vdCByZXN1bHQgaW4gYW55IGNoYW5nZSBpbiB0aGUgaW5n
cmVzcyBxdWV1ZS7CoCBBcmUgdGhlCj4+IGV0aHRvb2wgY29tbWFuZHMgcmVxdWlyZWQgdG8gZW5h
YmxlIFJTUyB3aXRoIFBQUG9FIGRvY3VtZW50ZWQgYW55d2hlcmU/Cj4+IFRoZSBvbmx5IGRvY3Vt
ZW50YXRpb24gc2VlbXMgdG8gcmVseSBvbiB0ZXN0LXBtZCB3aXRoIERQREssIGJ1dCBJIGFtIAo+
PiB1c2luZwo+PiB0aGUgbmF0aXZlIExpbnV4IGRyaXZlcnMgYW5kIFhEUC4KPiAKPiBIaSBCZW4s
IHRoaXMgd2FzIGEga25vd24gaXNzdWUgb24gYW4gb2xkZXIgcGFja2FnZSB2ZXJzaW9uLCBhbmQg
c2luY2UgCj4geW91IGFza2VkLCB3ZSByZWFsaXplZCB0aGF0IHRoZSB2ZXJzaW9uIG9uIGludGVs
LmNvbSBoYXNuJ3QgYmVlbiB1cGRhdGVkIAo+IGluIGEgbG9uZyB0aW1lLCBhbmQgc28gZG9lc24n
dCBoYXZlIHRoZSBmaXguCj4gCj4gV2UgYXJlIHdvcmtpbmcgdG8gY29ycmVjdCB0aGUgaW50ZXJu
YWwgaXNzdWVzIHRoYXQgbGVhZCB0byB0aGlzIHN0YWxlIAo+IHBhY2thZ2UgYmVpbmcgbGVmdCB0
aGVyZSBhbmQgbm90IHVwZGF0ZWQsIGFuZCBhcmUgZ3JhdGVmdWwgeW91IHBvaW50ZWQgCj4gdXMg
dG8gdGhlIGlzc3VlIQo+IAo+IFBsZWFzZSBrZWVwIGFuIGV5ZSBvdXQgZm9yIHRoZSBpbnRlbC5j
b20gZG93bmxvYWQgcGFnZSB0byBiZSB1cGRhdGVkIAo+IHdpdGggdGhlIGxhdGVzdCBQUFBvRSBw
YWNrYWdlLiBPbmNlIHlvdSBoYXZlIHRoYXQsIFJTUyBzaG91bGQgc3RhcnQgCj4gd29ya2luZyBj
b3JyZWN0bHkgYWZ0ZXIgbG9hZGluZyB0aGUgbmV3ZXIgcGFja2FnZS4KPiAKPiBUaGFua3MgZm9y
IHlvdXIgcGF0aWVuY2UsIEkgZG9uJ3QgaGF2ZSBhIGRpcmVjdCBFVEEgb24gdGhpcywgYnV0IEkg
ZGlkIAo+IHN0YXJ0IHRoZSBiYWxsIHJvbGxpbmcgaW50ZXJuYWxseS4KClRoZSBsYXRlc3QgcGFj
a2FnZSBoYXMgYmVlbiB1cGxvYWRlZCwgZmVlZGJhY2sgaXMgYXBwcmVjaWF0ZWQuCmh0dHBzOi8v
ZG93bmxvYWRjZW50ZXIuaW50ZWwuY29tL2Rvd25sb2FkLzI4MDQwCgpKZXNzZQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
