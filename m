Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 168EB4DE254
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 21:19:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6C8760ADD;
	Fri, 18 Mar 2022 20:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C6Eir_uC7Ukj; Fri, 18 Mar 2022 20:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA60B60758;
	Fri, 18 Mar 2022 20:19:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 478AF1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 20:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3421E60758
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 20:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwtcOLe4iZww for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 20:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11D1C60757
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 20:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647634774; x=1679170774;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=46pTc4zDfv+jg9RBAX2934pp8W6m1i0u8zkXQm5yp5Y=;
 b=WvNdOu5W1yA9V9FmefcALj5PxUtI+WDWEoFlmpD+cDQKXydpgN63JWO/
 XxKDla9FPk8qckt+iBaE5phmqgMOWO3/FsTZanTW1RfIA9TINrcpsuY2l
 I0nNdEe+jbacnjPYB8cp6gbU2qlzMeZCNq+3lpNXQrkSPMtGNe2DP/1Xx
 zfF1jg8Yx+A2ur3fpE1kjLO/n202W+EM3Kxl65tF7og7Kl+F8l9vsNYv4
 O4BRcj0x0lrvvIqNVsKGvKrOFERy6sIxAC6Os1V9uw5OBnGjFK3yrOhni
 hdgtTOK/J+0c0n5R45D15LGyk1BXbyLfsBuMWcWq7NEd4lGyci6NEgKe/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="282028879"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="282028879"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 13:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="550879392"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 18 Mar 2022 13:19:32 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 18 Mar 2022 13:19:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 18 Mar 2022 13:19:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 18 Mar 2022 13:19:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MgYUMZVHJPrvxl5SiQbEylt07SLrwhJpepL78J88dw21Y1P4d1FUP59qWn3NGqWU69GjQr8pvYE8qXoshejQ1/+n6M20/4DU6wFpf7htmVVeFhrxuXZQ2SeU9fxz0C46/P7sEB9U8qRbCw2I2gpVSqSS3zwTrMYDTg0ELjzacHi9clNAIWSNshGFF5bWzsHzGjiJlR7JC2Pqxg/cUF8WotLfUG+84AE3sWeMWDWB341MKFapWPcsOl9xFE9UCIUfgCMNPsmD/ZefhZzGu7kSJpGuWgfQXG4UjdtLe1BSF4UTHhme+zcLyPJiQv4oj3+k8p5RKmlhDNNdnC3ewGeBkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yTBT9DnraoZWPBSn9KJhwIOpWIbPV4+nT/uvuNcw+zY=;
 b=HSCAcsL68LCi5X0Cn0dO71jTa3zcncWQYXFvereVJ9mm75yl6p5qm9JXdoBsRm8k9vLiRHcYj6jgZAPK6BYN9vNM9w8jmecJA0O7d8saLWnlUGKjoq2Re2ddYQSyQB9PGyihaibWNEnYXleTLxZCSqaeuEZE9Ur3mBRKHZW/Pw8tJq3p9ecDWKWgn1RhfQKPPWGJ+/39EVSdVmqijGzQhFoIGEQsQg/ZitO49MGn1w5HVJn9hisCSNvs+79+2aqvtn65pTl68YMJh36tnAOJRHHZ0ub2ER/0NaG7M6SxianNFKKE7iJU/t7RHdcwOqhkmc00vgzR/2IVTjLfV7BrQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4767.namprd11.prod.outlook.com (2603:10b6:806:97::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Fri, 18 Mar
 2022 20:19:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5081.018; Fri, 18 Mar 2022
 20:19:30 +0000
Message-ID: <8822dfa2-bdb8-fceb-e920-94afb50881e8@intel.com>
Date: Fri, 18 Mar 2022 13:19:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Wan Jiabing <wanjiabing@vivo.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, "David S. Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20220318094629.526321-1-wanjiabing@vivo.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220318094629.526321-1-wanjiabing@vivo.com>
X-ClientProxiedBy: CO1PR15CA0073.namprd15.prod.outlook.com
 (2603:10b6:101:20::17) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b29b8c40-7de5-4e7b-7fb6-08da091c9b78
X-MS-TrafficTypeDiagnostic: SA0PR11MB4767:EE_
X-Microsoft-Antispam-PRVS: <SA0PR11MB47678B3C4698605517B88A61C6139@SA0PR11MB4767.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FNmg/3qcdhQzxP8Epbwch44Az5O93YKmj1JwQEvXNHkrKxddEnj2mk4ayc4mVPyw3TVQf85pXYZ0fGjUyOvnHNPKlUX7YhyIEx88Z8ibVyzcpmyJ+eck7FZx/YXnqg2XOHL5AD7ONBJxAdeDKH4WjFdDiD7CY1qBq4GQHlF6IRV3Zxd9Ag5+0wUniqpB94Vvjzppz9CrdR8KqpPwuZh1zhIgBTrjqyxviLaj8+sjMqxsK+4Md2Kf875HShBJyNX+kOL36v8vsrmXmsEJ5IQkIg64NTpdedd9QxwhnT6+KtooXorbuN2ZRVX+ukwsVky7hy5L2hEZgTNQmfEmB4WgrSQdABc0LSOZ7AAMZAdVhDyGF8dSaV0JNgRz4UrND1HOF73gJcp3mb28ZzktDKIpn6qtHcN1trtLIo/xsLpnaLtAMtMTN5+NyYJ3bb+8hBwiyc0MrycZuMiKyJuazc3HcZxRG9w5ZNerY591L3cHMeouAO6WBrz4TexoENG1S1f9osONKjKbXM5O+fuVJLKA8eDN8Lkqqosm+3i4UTgHSuI67qYKnckgapW9iEOX0+Z5UsSCiO4wOYsO0H3YwhvYae/RVjymFinsQ2u0Il8uoikh02aUzs5XqNsKpTnolgg+84jODKzGdPKH2nbDc6amIue7hxRtMIEoDLXXyJBZOOqs7+Vut+aJcMRie3TVx32VyXtkdE/11wLQNDaSGe9NijdyDNQtCDHqD4QTj4MdPX8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(8936002)(5660300002)(31686004)(316002)(31696002)(66476007)(66556008)(66946007)(86362001)(110136005)(8676002)(508600001)(82960400001)(6666004)(6486002)(6506007)(53546011)(6512007)(2616005)(38100700002)(186003)(26005)(83380400001)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NStrdlZWZytPV254VjZtOURiWVpGdlRqekwrWVpVZVFDbGZvM2RBNUNCVEVO?=
 =?utf-8?B?amJRdWtPOU82UEc4Tzh3U1VXNkcrWGJzT1RxS0p0TXU2NzNmUHNCc3Fab1lY?=
 =?utf-8?B?a2VrQUJKRWhsTUZzRENyTFJnYmYrbTVaSGVISVFGamg1Sll0OXVLaFB4NFRE?=
 =?utf-8?B?Q2wwb205WUo0ZEhMazVOOFZuN0t5b3lNM2t1NGoySDQ2dk9GYXNMS0UzNk5Q?=
 =?utf-8?B?K05CL2JDSnNEbkN3MVVPNjJ0WnpKeG0ycDUxWFNPVlZEUEZuZFhsY2JXUFNk?=
 =?utf-8?B?UytZNW9ockRBNUlYbUx5N3RnWTZwWStJemtUbEwxQTFhdXdmT0ZaazdVNVdz?=
 =?utf-8?B?a09xTElQZXl3V3NBR29iSTk1VDFWb1o5Y3F3MHNtdGpIT1pDNWhmM2p4b0FX?=
 =?utf-8?B?TzBMNVg3cmpKaUswZE43eDRyTDZQT29TdUs2cWJneE9IZmFIUm5ONHRqRFhH?=
 =?utf-8?B?TUhuK291ZWI3eGdiK1BvcXNJRVRzVVd4cytSWHdaT3VpODZiUDgzQURUR2xX?=
 =?utf-8?B?QmUvS0MvUmRaVnRZd1lJL3M0R1hPbjZOT0lXRXVwekZXNWc0b2Q5eWRUUkVx?=
 =?utf-8?B?SitWVDZxYlBJWGhzWC9oN2grUjJoWmNJbVJsM0NoZG9mVDVyQTVVaFhJWXNV?=
 =?utf-8?B?S211a3Q2K0pPNjlRRkl2WG93UmZpc2UyOHNiZFNuTjR2ZDY3TTk1YnYrS2ty?=
 =?utf-8?B?MnVYUnYySTUyOWNRU3Fnc3FHWGVYZmdxOE1vMkYxTi9IZExtSVdQaGdLUHFO?=
 =?utf-8?B?NU9rRElSWW1zWEdkeUdnU2xiZ2ZOSjQxUVN2M0dsWUllK2NMRWFJZm9DcTdw?=
 =?utf-8?B?WTV2eVljWjBEeWg5czJ1bG5VWXVSeVI4MmxGYlAyVzZaNmowQy81Q09aOE9K?=
 =?utf-8?B?cDV5c2ppVWRJcGxwZ0pyWUJLSGdYc1haV2ljNUI3b3djeE9ENUJ1U0daTVpx?=
 =?utf-8?B?ekxNcU1NdmYrUitEaXVIdGlmUDltOTVWVmgzaEI2Z081RjJkQ2htanJ2c1M5?=
 =?utf-8?B?T0MzdjBGMUh3eVZ3cUxWaStueUlnKy9yN0pZOEJ3Q0FIajBnc3UyZllsV2Qx?=
 =?utf-8?B?WUw2SEtDamxjMTBmak9xUHZxWUxQQzBjbTdCSWpWRUhpZzVvZTg3VFcxbzVl?=
 =?utf-8?B?S2hPdk5mZDkzc0wzWXk3VmtURm54QmorVFhxd2lmckFGbk1RL1ozemxiQmNL?=
 =?utf-8?B?Nm1XdjI4WUJTeTExc29tVzIwQVFSRGVIL01vaG9Qdm5hZ1NwcW5IZXlLZUI5?=
 =?utf-8?B?QVVqSDE0aENkNThIVkFjY1FqY2Y2YUJxclBwZmkyYnc1cUVOdGpQUUh6K1BK?=
 =?utf-8?B?M3J1QmVlTklrY3BxSExQNDNaY3M2M0Y5cnc2dEkyNEUxWVRRZEJYZDByKzh5?=
 =?utf-8?B?bUFub3dJNjUwZFI1TEtlclpUK0U3VVBRWEtaUWQ4cDVTNURlRTBvZ2dOSEFj?=
 =?utf-8?B?TXVkK1N5VDM3NHJlWEhyZ1haWE1aUWZmUHBweFJ1U2lXcG9VV0VmSFhGaEpk?=
 =?utf-8?B?dU5IYWN2SzJTaFQ5emFlZ2VLeGo1WFdVNjJTdHBjU21LMUpWVTJxYWxYVklH?=
 =?utf-8?B?SlRDQkN4SGpsejlUalhGaTdoZ0MybkIyZGJEb1UzSEZjNTgxMTl4MXNTaVk0?=
 =?utf-8?B?cUtQRWlsNjJJQnBJVUVMV0drWkxBRFVzcTdIa0JqeUtSNFFKQjVCaGxHMmFP?=
 =?utf-8?B?YlhSUjRpcXhDVHl4bzQ1dUVXNzB0RkVLZnB5aDhRNUNYTmptSGtEcWxyM1NV?=
 =?utf-8?B?d2JLUWJBR0l6cTVXR1pPRlpaSjQ3Rlc5Q2pwd1p0UjlGOWtLSGU0N2h0U1hK?=
 =?utf-8?B?bGJ6Mk1SeTRJdkJJU2xOMFFGaDBDa3Z4eXNicXE2MUtKcnl2aDFYYUJBeEFM?=
 =?utf-8?B?OCtRekNXZTFETGUvN3QxejdzYURNbDh6TVpseHg0NGlNcnpGWmdUcnhiZGRI?=
 =?utf-8?B?U0lKV0h5cmthRlpMdEVjTkNPQVBMa2tXUXFsRWltU3k3ekRDQlZHL0NOM0pz?=
 =?utf-8?B?VnRkeG5WeWRBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b29b8c40-7de5-4e7b-7fb6-08da091c9b78
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2022 20:19:30.0946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: krk32ua7J8Ckk0Hz4RDB1TrAlGkP5YhBNPyDh+r+Mtq7yGuWIWMmqoVoFCI+03dPsGL8z/PJhv27anVJ80INeMKaB147GeJ59s1y/XkQV+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4767
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: use min() to make code cleaner
 in ice_gnss
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

Ck9uIDMvMTgvMjAyMiAyOjQ2IEFNLCBXYW4gSmlhYmluZyB3cm90ZToKPiBGaXggdGhlIGZvbGxv
d2luZyBjb2NjaWNoZWNrIHdhcm5pbmc6Cj4gLi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2duc3MuYzo3OToyNi0yNzogV0FSTklORyBvcHBvcnR1bml0eSBmb3IgbWluKCkKPgo+
IFVzZSBtaW4oKSB0byBtYWtlIGNvZGUgY2xlYW5lci4KPgo+IFNpZ25lZC1vZmYtYnk6IFdhbiBK
aWFiaW5nIDx3YW5qaWFiaW5nQHZpdm8uY29tPgoKVGhlcmUgYXJlIGJ1aWxkIGlzc3VlcyB3aXRo
IHRoaXMgcGF0Y2g6CgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2tlcm5l
bC5oOjI2LAogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmg6OSwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmM6NDoK
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmM6IEluIGZ1bmN0aW9uIOKA
mGljZV9nbnNzX3JlYWTigJk6Ci4vaW5jbHVkZS9saW51eC9taW5tYXguaDoyMDozNTogZXJyb3I6
IGNvbXBhcmlzb24gb2YgZGlzdGluY3QgcG9pbnRlciAKdHlwZXMgbGFja3MgYSBjYXN0IFstV2Vy
cm9yXQogwqDCoCAyMCB8wqDCoMKgwqDCoMKgwqDCoCAoISEoc2l6ZW9mKCh0eXBlb2YoeCkgKikx
ID09ICh0eXBlb2YoeSkgKikxKSkpCiDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBefgouL2luY2x1
ZGUvbGludXgvbWlubWF4Lmg6MjY6MTg6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhf
X3R5cGVjaGVja+KAmQogwqDCoCAyNiB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KF9fdHlwZWNoZWNrKHgsIHkpICYmIF9fbm9fc2lkZV9lZmZlY3RzKHgsIHkpKQogwqDCoMKgwqDC
oCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBefn5+fn5+fn5+fgouL2luY2x1
ZGUvbGludXgvbWlubWF4Lmg6MzY6MzE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhf
X3NhZmVfY21w4oCZCiDCoMKgIDM2IHzCoMKgwqDCoMKgwqDCoMKgIF9fYnVpbHRpbl9jaG9vc2Vf
ZXhwcihfX3NhZmVfY21wKHgsIHkpLCBcCiDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXn5+fn5+fn5+fgouL2lu
Y2x1ZGUvbGludXgvbWlubWF4Lmg6NDU6MjU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDi
gJhfX2NhcmVmdWxfY21w4oCZCiDCoMKgIDQ1IHwgI2RlZmluZSBtaW4oeCwgeSnCoMKgwqDCoMKg
wqAgX19jYXJlZnVsX2NtcCh4LCB5LCA8KQogwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+fn5+fn5+fn4KZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9nbnNzLmM6Nzk6MzA6IG5vdGU6IGluIGV4cGFuc2lvbiBv
ZiAKbWFjcm8g4oCYbWlu4oCZCiDCoMKgIDc5IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBieXRlc19yZWFkID0gbWluKGJ5dGVzX2xlZnQsIApJQ0VfTUFYX0kyQ19EQVRBX1NJWkUp
OwogwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBefn4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBl
cnJvcnMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
