Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E075624C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 23:03:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D66E409EF;
	Thu, 30 Jun 2022 21:03:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D66E409EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656623011;
	bh=ZV5CovNA1PM36AvF/Ip7Hx2VyUH3/qXgUlPzS4j5mDo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HJbLk0YyLG3w1R2GtEEPLwrhLkni9GcI2EYtvTCiRFr41cBpIZK8ArPe1x4BaA1WB
	 HvkgI7sLd/4NA/RYWNSz/6plwjybkR+NsLkU/+SU20Ch2zEUbntNSr1l4KTH9Y42WQ
	 t0N7/QOUG9XXQH0jq7sdWToHuYIKBwUn3vhVXg0BWPw74J2hfWMTzCfHOWktdxe2V4
	 GEQzq0t1SuSNLmjw5I196R2tq8E3dVtceTgi4ely1GNWRrC5RZeQckKz1dI9A9sGZn
	 ZdMlaQfRaZlB6+abXWhhJTXhVlKewdvKbT7FJH52p9VReLSEoE2lRNlrbi6nbJhkal
	 x+7Z+88/0f6Wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y4VQ4Etlj-sU; Thu, 30 Jun 2022 21:03:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0CF44086B;
	Thu, 30 Jun 2022 21:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0CF44086B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D52D1BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 21:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1415460ABE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 21:03:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1415460ABE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MVhh3gX0hLoD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 21:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA72660F7E
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA72660F7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 21:03:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="344154920"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="344154920"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 14:03:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="694220780"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jun 2022 14:03:21 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 14:03:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 14:03:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 14:03:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=auvZerRe2WIZdIXlSr8+mE+sqIP22VHDkZdtuIRnrBkuzD8SzPYnqqT0WRdIYbg05ZLRlj4KaWK5miS+TTiEDN+qPGnfQrR4zpLt4P4LD40HOAqUhEb7pJhRWNtpHtHIgscIIknY9E8nHyYkDHGREgKh6ekN+t8mDt569em2Ngw5xUjTDIl8qDZLtYcujD8uTGKZQy+9pv4dhLUV9lRvrJU+xr1B4ZSc8069gWmzRw+NMx+PQsQ+MDtyIBBhG3k7PS1vLMP5oKeNt5mLwnfkta6JbMjwnZwumcCHU63/mqctcWqn3XjVOujYYC0/qYWzMeCDpTUKftQWJ4coEWS9fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EiVlpjPz6uhx4anct90MyKRUKge6/EzLVoI0fC6yzz8=;
 b=IfHfaYUL0n+xddSi6GNmX3KtRjydw78ZorQyRmBgnnoi3VLeZ0NLL5YkXzB/qqg+Fa1j6e0LoyZuED3k1JAXVZ/4Ro1xAZRTmwqt7dCzBKxIEP3VTgipZwts8Dh3Hg1tafD0aBqtiE7yWe74JCl7yElaP14pIjljTGldcM56nimG6BAFN2J6oC+yplR2ofSS5uvqQNjXdOYdCYmwtXiO+8quNyhh8cjQKoFsF1Sp/ipCcDPbLXTik0pZcQh2k3D30ZJNRntNAMjMQid3Fz7t20iK99VcPf8h69+xbMKpzQ4b4H0VlkzHHEbFjp3Uqw7jkfvPT9/HyMl1amVviSm5BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB2699.namprd11.prod.outlook.com (2603:10b6:5:ce::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Thu, 30 Jun
 2022 21:03:18 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Thu, 30 Jun 2022
 21:03:18 +0000
Message-ID: <5590231e-3b1d-643f-deec-e966a734d926@intel.com>
Date: Thu, 30 Jun 2022 14:03:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jilin Yuan <yuanjilin@cdjrlc.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>
References: <20220629142952.18664-1-yuanjilin@cdjrlc.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220629142952.18664-1-yuanjilin@cdjrlc.com>
X-ClientProxiedBy: MWHPR14CA0072.namprd14.prod.outlook.com
 (2603:10b6:300:81::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4af7f976-b1a7-40b0-341f-08da5adbf4d3
X-MS-TrafficTypeDiagnostic: DM6PR11MB2699:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1ABoNNZE0p6oH91cTGXztW8c9nNjcTYgsTSVbA7VuEftOOocPw/li444bt5hx+EJVWtK2Ud0KAdf0y3/arAew9hJR0P5yWKTTW3BY2beZ1ODKZSD3I7v9S0obbC03XDRZRzIETXYP7XvSfQlos9ttkpOOac3FC+sk/q9i2pXWSLim34veNzwx5hu3q57063lt24t6QiFN6TA+L8q5RdL6cCttZeAwe4iK1QrTZBeZYtdcjUuWHVHw2F67AF55+1DAGDRKb6YhMUG+B4cAo9fhbJLXj2LkVliFLaTNo+Ye2fNghtt9+3rpIEX6EFZH19/00WJUe0jzUkLOsIo9pnMYlNffBQZoFiIeWYYyuG94hbpgQQtf6NbOz/S7qMQrqsuTbhZxJ4DzPs3qudy4pixqxkm0UqcFhtWcIyKf8XR9s9nPIRgzZEsqQjckjduRFC2xLwpDJYpFhkkBS5bNgSKIn/YAgsnKIMZqExsc7uJdgfX+o+DBP+SaG6+LXIiTtVdz7kLul8Z+xL6n3STXhla4PXnUzDnfU6i/pRwz7csGG+FA4QE6qDwT5LUbTxMHr3BnbqHIpCutzsn39rzyftUwHhKdlVDzjjYQppiB+9rrQd1ID8ln6pcyUy72We/FFjguCvqTf5QetoRNCjyeFFIjJrhjKx92HMsaHaWK/BkfHgbw4mrHBgrW/mPjZlVaggXZIZyJvGprXzlRk8QDtS6eSDY+kiP+N9f0o0DnHHm4gRpAbEscwBtOPUIF3ywZ06B8lL+66neE/NtyplcUXV0Mowu9xtCpbqWpKjCe/YvX67GLQVF/QMboCRjMfQhYHvt6UE+hLCSf787GNT0dQvaJ8r2XTNMbAnRp/nhUUk3jugPpYhIIM8iD6s5ZgsDCp7PgsXU/vy5oN/NU/Pk178ZM3p3RY2NQHHh4gUniIhv98w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(39860400002)(396003)(376002)(346002)(26005)(66476007)(82960400001)(5660300002)(4326008)(316002)(38100700002)(31686004)(8676002)(36756003)(53546011)(86362001)(41300700001)(6506007)(66556008)(966005)(2906002)(83380400001)(478600001)(6486002)(6666004)(31696002)(2616005)(186003)(6512007)(66946007)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDBFeHNPQ2xIVnQzRkhNTy9kN2tRa0pZT0s3blkzTkJmZlVJQURWcVRCTTd6?=
 =?utf-8?B?cVRQU09zSGd4THB2MmI3K3JNUzBsbzJBS3pHZHlXdU1ydldFeGFzOEswaGVj?=
 =?utf-8?B?RGwzTTFFT0IyNngxUWNrbjUxMmMweTFFaUZDSlM3WWpZL3RwWFpRU2d0QVQz?=
 =?utf-8?B?RzcvczRKMWcrc0wrZW9lTTZxZlRDanRObDZMWFBvV1Q3UVY3R2pmSXczL1dE?=
 =?utf-8?B?Snp3WTcxYUVhTDZUS2RURlZJVkl1S04rTmFYM0Zwa2xlMk02ekh1UXFLYWpB?=
 =?utf-8?B?Q0JXVEh2ZVZLUVpOTW1icFVZeEZ0T1g2bG56eHRCYUYvU2ExQzJNYlBYN0Ny?=
 =?utf-8?B?YTQ4NG0rUlBndVRnSXphMmlhMWI1MHdmUWlMeDBpNTZHbUtWZm9wT2h5ME5C?=
 =?utf-8?B?TC9ZN2NQVXUwbEZxMUtjR3lTY09NY2IwcDJmSmVxQ2FMMXZDOUVHa21rSXBo?=
 =?utf-8?B?M0RoYXFwbjdOVFFud28yeXlMaFcwV0VqdlpONWJPZGZGZG5Pa1h0eDh5OTBR?=
 =?utf-8?B?S0tWMlFEbHA3bnRoZ1M4T20rYUVsTFlwNXd6Q2Irb2xNbC9sZTBtK1JidnE0?=
 =?utf-8?B?TEZGdXY3eitLQ3pJV2lZcCt5RDEvSGJoeEN3MGR6U1YxY044SVRYOHZuWE02?=
 =?utf-8?B?dy96R2laTG91Q2RhYXFGTUYybjEzM09NWnZiVldXL25EU3E4SEt1UWdHakVB?=
 =?utf-8?B?bG1sRHdhQjA5L1NDZndOVXkwKzBJRTJvWkFEazdJY2tMN1l2bFhrVENMWTMw?=
 =?utf-8?B?Z2FnSHYzRGlBNVg0Mng3QzFDd2xVeHpaZ0Q1TTRDNFQzcm04dE9pVEkrK2U0?=
 =?utf-8?B?TndGTHJ4YUJsdnRPWGR3a3h0VDhwU2czQWlJRFhSaWJXMVQ1cjQvNmc2a0M0?=
 =?utf-8?B?bld5bUl2dXg0UlFlc3Y4WmU3MVpQcGpFc0E5Q2RtSzArdklMRklCS3N0YTIy?=
 =?utf-8?B?TTVpamxzZWJ6d3lFUHVkRlF5aHNEQzBWT2MzbnRWanNlVzhHSEYvNUF3VVF6?=
 =?utf-8?B?dTNDVVV0K3g0MTgrY3FVZUJreEw0cE5Uc2FtcnI2Smp0a011TFFPdmc5Uk5N?=
 =?utf-8?B?dXoyejBrY2cvV3FPRHduNWVUR0dhdmxreEE1U3VjN3dpeUlqRVZrU2NXcDhO?=
 =?utf-8?B?YkxMRW9CUlk3bUN1ZFc4RTN4VXQraGgrTlQ1Z2dDTkV0ZEptZ1dJNHJIYXlS?=
 =?utf-8?B?Mi8rL1RtTDFsK29kclR1MFBlNGw0ZU5jZnZ5NDdmcGpSZVN0aVR6eTVUMlRq?=
 =?utf-8?B?clRQdno2cWoyb05ONGdqSG1wejd3RWVtd1RmSm5hRnJqYTRlVjhsWTVUUmlG?=
 =?utf-8?B?TEdGTzFSQy9UdEVvWUZQck5ibGpMc0c0WW5xYWIwQysyQXNDZzFpaVNLcEJK?=
 =?utf-8?B?dEpqSThadDZDSEN4R1MySFZoTlNCaXhNNDlvVUhsWnV3Zk5ya1ZoVXNOc0JZ?=
 =?utf-8?B?YkxGd1YvNVpZak9hci9uSWNJdXVBNWNINThTUHErcVA5Vk5IM1AveXVlWkRa?=
 =?utf-8?B?ejcydTlSa0pVL0JtendoRk42WVJkK2ZwR0p1aGVKYS96M1c4ckZoNnhlQ3ha?=
 =?utf-8?B?WUFNUUhNTlE4Zk5XYzhmSkgxRGg1UU9BNTdQL0lMZlR0Qzk0aHBSMWJSaEps?=
 =?utf-8?B?eWJzbnZSVVlXSWJpdUtMdUM2bFFicjVZS1l1bjBNNkp1NUZFU1Q5YWovcnFn?=
 =?utf-8?B?NTh5aFUyNXI3THBXaFdzamsvVW80Si9tdVFiNHFZMGtMNGVEZ1hDSTBiOTda?=
 =?utf-8?B?NDVlenBpdWhjTDVLVzN6SGg2YnNqRStUV3hQZHNMbzhHcGFuNVhKemxMTlV5?=
 =?utf-8?B?MzhKWlduaCswOXlGSFkzeHAySWNvMVM1cmNhMFU3VnJyYWl1djVvNzRRUFlk?=
 =?utf-8?B?a2NnVmxLWGVYNmVSR2M2cEtjTlR1V05CcW1GMHRxVG84ay84R2dhckJ1QktN?=
 =?utf-8?B?Q3NZbUdjZDROYlJQWWVrRXZHQlN4Z09NUjdZMEpIbkFKTE5PczdJQ2c2VXpa?=
 =?utf-8?B?QlduRGIrbGlWKzVWNHZ4M0dpMmJoOGxjVDZjWk11QVpqUmc4eG91a3d6OC9S?=
 =?utf-8?B?am9VSTJ5UENCNDltQ0IzVTlRNEJuQS8rRWQvY08wUTZMNTVCWk1wbkw0cC9O?=
 =?utf-8?B?U2k0SG9HOEZPY3dPeDEvNGhsTFYxSlQzcWlCeUdCSWthV0NLRFRDcmlHcERN?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4af7f976-b1a7-40b0-341f-08da5adbf4d3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 21:03:18.0041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4UNRHgcDY5EMsjN767mjYkt9irHWnuxJjyeVjUY4YyY1AqifdqSxVxiRaO5l/VxzZ/WibuAwKUK3uDnopzTj2unkhfRbVKNze4XQlu6wxkM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2699
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656623002; x=1688159002;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=btLZg/k9vXxs+fnrKc2PLt2pwt3os9H/il1TpH9EGRA=;
 b=a1Esu2IyPgnofiOTa2qHQ8Cx+Ua5YeqFU7axL1k0SoAQ0KgFByomlGGc
 SY8GC9bVV8K1Cigec+qfu+WHO3CL5AnWPM1YzWRseV8KJEehbz4ZFlZBI
 PkkzuTno1f6t3i2ez8Bj7T0bV8Kz0f8WX8Uv48wGnrPLQPpUmSlGdbyxJ
 pCCMh2rxmiDMYFRPWRy6qkR7QpiBeSv80dlULRlIbZic8gW6kKMkXVaWz
 DOF9P4J1YFuV+MGaEhhrPCpM8SCWhqaG424FFpJBVU/xSkBVDsgrZbDES
 0F9l5pB4egOAQjCDgyCCsVN5HbCRCDqWzIr1Ur4d3fc9XhClfRWTUQtUw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a1Esu2Iy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] intel/ixgbe:fix repeated words in
 comments
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/29/2022 7:29 AM, Jilin Yuan wrote:
> Delete the redundant word 'for'.
> Delete the redundant word 'the'.

There are already pending fixes for this [1] [2]. All the still 
applicable fixes/patches have been applied.

Thanks,
Tony

> Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 4 ++--
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 77c2e70b0860..23b7e1d9652e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -5161,7 +5161,7 @@ static int ixgbe_hpbthresh(struct ixgbe_adapter *adapter, int pb)
>   }
>   
>   /**
> - * ixgbe_lpbthresh - calculate low water mark for for flow control
> + * ixgbe_lpbthresh - calculate low water mark for flow control
>    *
>    * @adapter: board private structure to calculate for
>    * @pb: packet buffer to calculate
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index e4b50c7781ff..35c2b9b8bd19 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -1737,7 +1737,7 @@ static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
>    * @speed: link speed
>    * @autoneg_wait_to_complete: unused
>    *
> - * Configure the the integrated PHY for native SFP support.
> + * Configure the integrated PHY for native SFP support.
>    */
>   static s32
>   ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
> @@ -1786,7 +1786,7 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
>    * @speed: link speed
>    * @autoneg_wait_to_complete: unused
>    *
> - * Configure the the integrated PHY for SFP support.
> + * Configure the integrated PHY for SFP support.
>    */
>   static s32
>   ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,

[1] 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220621082554.52380-1-jiangjian@cdjrlc.com/
[2] 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220623104919.49600-1-jiangjian@cdjrlc.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
