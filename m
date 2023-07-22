Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E6D75DDD1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jul 2023 19:30:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B45E941DBF;
	Sat, 22 Jul 2023 17:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B45E941DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690047050;
	bh=D8afTqRXreB0wOq4eR0gT3CuZAKJGwpBk1nTaNobG9E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gESfY/ey6Uw4MzCPsIH8QHV4QiWooQ59w5SlVXacjiurkG16lxvAe71ruYiwUFwLv
	 FUrW1P6hK54Jr2qeWZZEzLeI7tsEyCTFC+u6XsJdOHp5d5PoolfpFxzg3FDiOO3+U0
	 6hY2pXqgdFa/Uql3Spc3kT6PqDpud2KQPTU0ojyhVgHv1LOg7O7cwfmBmVFWRl16TX
	 +UC81z2tyD1WAGI/BltKjg2JG4sxAtRYlC42waX1ngMN1K0XHFlJUvVdUSTYqnte7H
	 Hhk8e0tFSexn5YLjZRapDnCwLRb7Lcf+uorO0e8m+WRE6VpzOex52BikdCTGvtIlbR
	 BBBtUbULOqZ3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BPZ-SnzCO_SP; Sat, 22 Jul 2023 17:30:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7A2F41DB5;
	Sat, 22 Jul 2023 17:30:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7A2F41DB5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F78E1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 17:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13A2640540
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 17:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13A2640540
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p9WEy-GWQqYt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jul 2023 17:30:42 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 22 Jul 2023 17:30:42 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02D56400FF
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02D56400FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 17:30:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10779"; a="364673048"
X-IronPort-AV: E=Sophos;i="6.01,224,1684825200"; d="scan'208";a="364673048"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2023 10:23:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10779"; a="849160495"
X-IronPort-AV: E=Sophos;i="6.01,224,1684825200"; d="scan'208";a="849160495"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2023 10:23:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 22 Jul 2023 10:23:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sat, 22 Jul 2023 10:23:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sat, 22 Jul 2023 10:23:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VsduBaaGvqMI+yjYvrnbQG0MMkNH48jbRD0du+VWZ1ClfeNtvhFwD1WkdvYnuXLrv3lmhRpXAobdU6xy4rXESTCARwa8dTRyMVMgBqJ3v2QXHl9iA0R300i7bimmbGxAr+CoqczvPXY4hxM1arBYE7lpw7zjjSZ/DtuaIocb8nqoWDj0goHZs43e4dW5L5IqcpufyoAIq2608kLTSqWCBSn++Z7VdIlb0Mw9X7T8WYH7Q9yM60vkIEPyV5wQi7BTnWeZ53QX2/8RwnvVmeMXiVC+5i7UwIRWH5SUy0yRp79k+4+UHf3obmes0ZDQmN2L1W2Ql6wz+eeFevplbGmG0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wx0np2fgvunnVeW3M/rnBEWFnCImdFgmaH3Xrg3qcNk=;
 b=h1h6luKawvGTV8MLrIfgExCmVcKuYXypNMCUulRUFArnoHtBVbkEhhfXP7T28FgXm1XFU1a6B96hsxjtrrR+xW/yeAn2IGMvhPJ41zB1O4scdDx2XlbUmvYJw2BzFMDjKXc2sKGGIpVXHXB2y0zn1rjtBUWmj+mS7MGnCNGWpTU9JeMHVaXIOdX2tYuZ1tWbFa3WLZY1g6iFFB/L2qgML4/mmKP3WB+VR9bili+UyUbVAOK75MLNbwEe3AQGBW3UeR+vsSp5h3zWP6cJC65Brle11AtJuFuw0vdimuOo3VWE5OZTyPo/T8LzacsFdkFZu5wC0WfopitleJrlf/d9+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CY8PR11MB7194.namprd11.prod.outlook.com (2603:10b6:930:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Sat, 22 Jul
 2023 17:23:25 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3d4e:c4ae:f083:de21]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3d4e:c4ae:f083:de21%7]) with mapi id 15.20.6609.026; Sat, 22 Jul 2023
 17:23:25 +0000
Message-ID: <56278d5e-4999-e421-75f4-c591873a899b@intel.com>
Date: Sat, 22 Jul 2023 20:23:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: "Eason Lin (3383)" <easonl@portwell.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <484b485adfa8430bb1436479d915bb81@APTEXCH01.APT.local>
 <4472b54e-79bf-8c1c-485b-88fc8bcb1e00@intel.com>
 <6a59df5ae6e346c3979dc7645c018ab5@APTEXCH01.APT.local>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <6a59df5ae6e346c3979dc7645c018ab5@APTEXCH01.APT.local>
X-ClientProxiedBy: FR3P281CA0140.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::12) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CY8PR11MB7194:EE_
X-MS-Office365-Filtering-Correlation-Id: 29355a29-0b64-42c6-980a-08db8ad85b0d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I8XBEYpKggwdCu3+71UqNVv6UvI13L9PfeybrtFmNl/OUOSUDbrjfHJi/QwJiZ4n/DZH5HDtECVaDdncFMzP66ciqw/btjgWiATti2hbBhn7xBgfT2Tds9HhT9ByJnfjA6rbJijvnzBP4EPgf4229dZD8WbX++lYNIqEpQbtJHE+UBmznSNZfX5IVT0/68gTywMDVbuOLcO35hdw7Uqd12HTiXrUIokz1OnagxTeloJWOii7cUnC2WeUD5AKdo3WuoLdxg02kzzqADc/CX8CVfqrnzrvo5zQaj6dRgMnfpz39lyOiQJhWp1I1Le05KRPMPhUdySo9omDDkDSow5Kan9IOxJz1w8pL8WCaTGesbrQobZH35Le+SqPNP/HgitE/TqAHwwI+6/wqhBLp0A/U1I6WWGB6RSp2psEynjs0RizvrA4bd0d2r25NviCMxFiHcKl8mfF1CIv+0uSDXDJpo3NpWFvw7sBTYQtsdZv7U/wJXK9Q1UmzjQ1DIzCbM8z9aGz5E16QWB1UUWsng9LMrcJDJmK+lstcr8zs1ejdLnqMsB8I/zpzfAJR3LUu2YksaYunKvxjseY4a1zFhl77Qn3Iqau/ChxakmJPL5m1qLRNaHKXKe9YwUWvzw39XvpeqT43rxUDKEI8bfQmsx5Gw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(346002)(396003)(39860400002)(451199021)(66476007)(186003)(6512007)(6666004)(4326008)(66946007)(26005)(316002)(66556008)(6486002)(966005)(53546011)(6506007)(41300700001)(107886003)(5660300002)(54906003)(31686004)(110136005)(8936002)(8676002)(478600001)(2616005)(83380400001)(2906002)(38100700002)(31696002)(82960400001)(86362001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VndaMFlGMGw2OHdWYXEzMHhDMGdoUHRSS2xCSGh5bEREZWNTeVZHZlczMGdl?=
 =?utf-8?B?RkJnamNoVks1MC9yYmQ4VjluTFhhR3cvbVRqK1h1SHRqNEFIbW5SSEVTMFV1?=
 =?utf-8?B?cWFCWEsraGNqQm9sU2cwLzRjWm9RV1BtbDdGQ0l0b3RQSS9COGtTUE1kT2g4?=
 =?utf-8?B?LzBLYmJyMjF5L2xWUmxmRGFQOFFLcUVGdURyaXNXdzRDV2dQTFBpZWZpT0Za?=
 =?utf-8?B?cjYwRUZSYk1xUlNvS2hXNUpOMDRJUFFyKzRMS0hBVjU2ekw1dlVtQ0QvTVgz?=
 =?utf-8?B?NE5lZERJbG5wNkZMTFVGT0xjUFFTZkpZVHE2YVA2cmJqZ3ZKYkpxY1pYMWxx?=
 =?utf-8?B?OHh0bzlFK2trNzl6L0hndWN5QXdyYWloeFJsdWk1cU5sYVpMc0tnaE9yYlV5?=
 =?utf-8?B?T1g2emxQcldOeVlKQXVubk9rRFU0WEpwazlFeVpuSlN0eGtBVVFsTkpRckQv?=
 =?utf-8?B?Q01iQk5iWU5wZHMrZmN5WHJKR1lNZDRGMURwRGp4MzFhS3J4UHozRW1mU1Ba?=
 =?utf-8?B?MENPOWJvMTRxK1MraWdqM0labVpsODJuT0haZE5nTWJhbXY2Y0RCbGNObkZa?=
 =?utf-8?B?QXdla2N2R2pGdm5XUStSOFNLQm5ZMi83OHFVZHVQRmMvMjVoNDhnOXpaZmpW?=
 =?utf-8?B?ODM2eXhXQUlnRndERlVuOUgrbWYrWEc0RUcyTnFQYjRsMzQ2TzBDdmJadlBT?=
 =?utf-8?B?R293MVowU2JNZWpvUDVtc09ua1VvN1g1WHRqYU1wekRoS0RYZUNsQVVYdzM5?=
 =?utf-8?B?VUliK1c0V0tzM05kdWFqTmlTNDdmSGo4QWZnNm5EcjFxMnlrSlhpNjdDOVBw?=
 =?utf-8?B?LzQ5TmZLb01wYzVJaWZQOUx6Q29IcUp1Ym9EMXRkaHV3b1NVSDgxdDNVRzdF?=
 =?utf-8?B?Vm9QSUgvNitnZUxKMWI1ZG9xVUV0dlJicUpzTkdtRVVyaHhCR3VLeStTZ3F1?=
 =?utf-8?B?OGZ2cGpnQ1VocmVXbWpQeEdHbWZJSFRxY3o0d1Y3OFA0OXdsalJUbkx6RXR6?=
 =?utf-8?B?bVNxdEMwblcyZzNKTzcvZHBsSHE4dytZeHFkQjl2WlVhUksyTGZtQnNHUFNK?=
 =?utf-8?B?LzJwb0ZxUDNRWGhCdm00czVEUmx5SGp4ZTJpdHBYR1BFb0hvWkFzUUNCVmxC?=
 =?utf-8?B?RE9rK2c2VG9mN3BBRXN0cjF1d1k3TkdraHBTY0Fuckd4RzdzelhnVVRZQ3Aw?=
 =?utf-8?B?VzFxZ3BBN2s5NUdGaTBDMFlZV0VlVzJOQWJmQWp6STdhSzBjeWszZ0tzTzdn?=
 =?utf-8?B?dkhTSlUyU09kaCtWQjNZVDJlSnJkdHNja2pMM2dOUlA2bUgvOXRUSXhKOWY4?=
 =?utf-8?B?NWRTMHdkb2xCYUhCU3BLRk1IeE5KeWxzcXZZeUkwU1dXNnlvcTF6dCtINnNW?=
 =?utf-8?B?UlFZQVBjeks4RmtjWU1ScXNGQU9DaXB4eDBObFBCcFhmTUdpazVHZnBMNUpv?=
 =?utf-8?B?SWw3TklzdTZuYmxuUHZMenB6M2tIUmFwUVlGVjg5Y2grZnBUbm9yVnhVOHRl?=
 =?utf-8?B?MUJlWmdyak4zQ2RaZDJxTmJKdjB3Y1g0cFdNSzVZdFNrQXVpOU51aGpNemdq?=
 =?utf-8?B?cXMrR2dJYzhEd3FMekprK0FDdzl2Z1hFMmtHTlZpazY0VnB4cWlzUnBTN1M3?=
 =?utf-8?B?TXR4LzlYVjZLTDZOaDVUYklMS3hqYS9jb1IzTDV6dE1XNGgrdVlhbkRseEhv?=
 =?utf-8?B?MFZMYlliMHlqMXBqVmhrMWU3djF5aGVvbUk3UDlUc25ZbWE2SXk3cHJpeWZZ?=
 =?utf-8?B?dHVXQjF1SFNMajUrV2tlU1d1bGRHVFJLQlkweXBhV01HcmVwYlRJYzdSdGNL?=
 =?utf-8?B?M2ZOZEw5UkpTOGcrbmpONzRPcVk4SVhxck9iRVJyQ25WTmMwOHNHRDBOWTlC?=
 =?utf-8?B?QWhOMnltcjdrOHZWeHNXaVh2a1BOdXVvT2NnTHBlL3o2eng4VmFDYUo1OWlO?=
 =?utf-8?B?aDJEMFV3TmJCdWpiN3lCVVlNMW1ESi9IZkFnekFsNThoemFxSHVRYWcrUWcv?=
 =?utf-8?B?NG5iYVRTM2dRUDJpQXZFMUhuT1ZBdW90eitTa2FsS3A5cVJlOEJTZmNxejBs?=
 =?utf-8?B?b0VXZWx1Y3JZOGpOdXlkd0JRU1prUGtLaDV4YXU3U24zV1NHejRHTXBRTzJ3?=
 =?utf-8?Q?NbIjn4oQPxgncIYsoZMKlx/IC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29355a29-0b64-42c6-980a-08db8ad85b0d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2023 17:23:25.3281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NX9B7w6JJqCbn4vyl4uFyBH9gkIEpn2gDabptEgk+bT6xdlAhZqfVwBM3sEJvIT+qm3aGXvGHVjKwTOg7mLLmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7194
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690047042; x=1721583042;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CE+ciO3HXv7coIDw3uo2Ole3gvSY3bpjmYlzGiAgUJU=;
 b=TbY8/hrPufEn0RSCNxa/ubDgtOcV1wsZiDjCNZPeTe+LnHm0dFEza08Z
 ZMc8obN7zIoTRkZbIjMgVZ1K37Lv759ilWQq/w4Eh728IlPoIfAu2UY3A
 xtRnewqvjV2lLIvEg2sSVNbcMN9JdqOnBWvS2xLdawRHt9JlHk2iy0l2h
 i79xcvuzROkcL7mYoVWSM0AZBcZe4O3JKvC4m+/TPwQPA2YTjuCZaVG3o
 5fr9USWkaLUtLueG8Zueq1INIDLdV6ozCn4bUsL7X4RYFBQl5apGgcRiQ
 at/rAH63GlzCoGJy0R5LUU8sHtJa1ZSncIMddt7xJxSfii30t1Onc6/ou
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TbY8/hrP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Ubuntu Kernel 5.4 to support Intel I225
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
Cc: "Avivi, Amir" <amir.avivi@intel.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/21/2023 20:57, Eason Lin (3383) wrote:
> Hi Tony,
> Thank you for quick response.
> Let's put Ubuntu aside and focus on i225 driver. Is it possible that you can help to write a i225 driver to support Linux Kernel version 5.4? Thank you again.
> 
> Best regards,
> Eason
> 
> -----Original Message-----
> From: Tony Nguyen <anthony.l.nguyen@intel.com>
> Sent: Friday, July 21, 2023 10:13 AM
> To: Eason Lin (3383) <easonl@portwell.com>; intel-wired-lan@lists.osuosl.org; Neftin, Sasha <sasha.neftin@intel.com>
> Cc: jesse.brandeburg@intel.com
> Subject: Re: Ubuntu Kernel 5.4 to support Intel I225
> 
> On 7/20/2023 5:07 PM, Eason Lin (3383) wrote:
>> Hi Intel Ethernet Driver team,
>>
>> Hope this note finds you well. This is Eason, a Technical Project
>> Manager from American Portwell, and here is our website in case you
>> want to refer. https://portwell.com/ <https://portwell.com/>
>>
>> We know starting from _Kernel 5.8_ Intel i225 can be supported.
>> However, is it possible that you can make _Kernel 5.4_ to support i225 as well?
>> We have such request from certain customers, so would like to see any
>> possibility.

Eason,
If I recall correctly, i225 parts are supported partially in kernel 5.4.
What exactly feature/device are you looking for?
Anyway, the right place for this discussion (off the intel-wired-lan 
list) will be with our PAE. I'll forward your question and cc' you.
My recommendation will align with the upstream kernel (where are almost 
all features set).
Thanks,
Sasha

>>
>> Are you able to consider it? If yes, of course we can discuss about
>> term and condition, plus any fee incurred. Thank you so much and any
>> of your response will be appreciated!
> 
> Hi Eason,
> 
> The Ubuntu kernel is not something under our control. I would advise you check with Canonical/Ubuntu about enabling i225 support in their kernel.
> 
> Thanks,
> Tony
> 
>> Best regards,
>>
>> Eason
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
