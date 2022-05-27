Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB0D536633
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 18:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3D18405F5;
	Fri, 27 May 2022 16:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BPg_vjyEib7x; Fri, 27 May 2022 16:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EDB8D40116;
	Fri, 27 May 2022 16:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B3131BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 592A561714
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y7C9AanSuTdj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 16:57:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5F4460BC6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653670623; x=1685206623;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6NqNtIMpcUp9nH22WYVCwj/3nQ5wYLaMN2akAjPWG2A=;
 b=YRI5Ux0kOAc0BpOhYWgzii9gwlW+XH0zXKkPTX3XAwUeKEYbDdVRlWjR
 BYYWJngSTugWjcKnQ3/HRiJ4rynWQpdhg5l7DFpi0+05foUNhWWKiIp7U
 Vvf3fUkAPuyeSTFH9eJXso65hkJwJ0HPMKZuUCR6jti/4CMuMeTzNC9JW
 CRLrwNwzHM8qpMsfRihEpMCIBzlXx80VCWW5Gy4mIGTcjhmLfmjpAQQGB
 e9Xv84FKLRS8YOfZ5unJ7X2Nsw+Sb1Eq6zyL23tv4p5mEKmEeQKkj0L7N
 n1CBGLAZ/BJYJVNJTEEwmax3Ps1Icp//eXEGSOI3/yMlvEcAZmr7NPqY5 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="274255183"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="274255183"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="610399863"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 27 May 2022 09:57:02 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 09:57:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 09:57:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 09:57:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mx1teZjLGSaCxnqWQupTMZj9Sj21TCon6bA4rWPqYmA7029u+ZNmN6QMzlZVkSC4Iw+NTgh28Eb+X1UFTdZCpuQ8/uFpCIIwZWG3ppszu1EiuAi87qELyKeLet9Oa+a5UxLUMLRrW7EsMPVxWxPoFYP5vjEvhWdZdKtNiVZojsIuV8w+EoHvcO2j48piQWYB3HKrZAfx88P/KczEbOyXU/IQL4Z9AdFU3uEUTjp8pJcJK0VsXcOQkKjxw91D8ksdBNZMJlWrqMDN+dykmyUrM3TIOeRLCViojbtiW5OeKex889uex/nwdAIq/eT0tekHvatronTJuE1+I4yLhT9Z1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p37AfJpTsN5TfVlVn57dJX8S4SLAvjA/SOVAkWEMOgA=;
 b=Cy4Up449ZgL7Jlsk7TOzPDvNs2qZ1wogQrggAg4E7MNGlQtQs1Byel6ifpnJ0C9a2pFw1EmtEnIXK6JKGjwwkfhHiAed7r9rLVl7obJvzgbGc79tZ22MWhwR9CMhDWY4iq69eq/zg6D5+PR6Kom7RAdKBsyWJuUq8Vox959RJ+NwyOACP4rBo4i3cc0QLS6qQ+5orSzjqJSQmtMS3Miglr/1HjYRNgpLwdnABkJND4UmDkctvbi3rRvSbabMyGwqtcmHbQkNFRY25rjFKHt2vN9rQYIYmZy0f5zNn+dzehcxaKYVBmya6dXoPryKYWEe1YAWdsxCVpNSifmZSKFIKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB3934.namprd11.prod.outlook.com (2603:10b6:208:152::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Fri, 27 May
 2022 16:57:00 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 16:57:00 +0000
Message-ID: <04b439d9-2e8f-7c50-3d52-bd6a6880edfd@intel.com>
Date: Fri, 27 May 2022 09:56:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
 <20220527080919.2370640-2-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220527080919.2370640-2-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MWHPR1601CA0010.namprd16.prod.outlook.com
 (2603:10b6:300:da::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4135513e-837a-4e98-d65a-08da4001ea86
X-MS-TrafficTypeDiagnostic: MN2PR11MB3934:EE_
X-Microsoft-Antispam-PRVS: <MN2PR11MB3934B776A964A5949BAD2E32C6D89@MN2PR11MB3934.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aI2XPRA+mZtCS66nVehiYRRPYHZ0qPK9LYpJNIyEKVzUnXHqp5vaiBkVLMbC/NpjU+YcOIHFEAEX6ymD6/qTijmReGvJooK4BN0HmZalnv9/uX4SyRuLbLNAIK8Nq0PcbSuVFgybnujRb6Xw30W6TONhOJdq0Ji5OaeB+MwvEacu2RdkDnEopA3Ws9G/okqsucyshpE8+j+Fw017xcn3dkcMvzkSlsebFrgNpqRq4ywmzx7IWQttNis010ezmuTt4ijX0J6kznM7Zyt4Vsegi+T6WfNykCyuJqyJzMzPIt2vAZAMFn26Snxq582rJTu82DZSc7BVXLMyX4iz4kpuePuL9u2uiSQ42YQ3g5hxPbV5VOpJxYRNIqOgUhPPamj5SF1DPqFs78xybOyMHDE+UlmVzMtNpHkOoffiSQoAANbj1+5R1GCYGKwsIi2lTMqveRrw+TTKevspsjLhJ1oiAvSptaDofExLOQCznuBLlT7zIAx7XGnzC/iPaR1maE0FIqOGNhbb3fmCKQFxeF+imIo58LUDY3HuhX73NvzjkoOkebsVICriOxEFNk4kmQjZk8a00cvQZJWZdFkiHMAxMjDndQ1c2ipluf8CEnlHyzALq3wZziMwzAijimgfjONueChtWQ+GEhh2xrZoQtu3/FgwmgGq88Hma1ZMxb6ZGT0UZ+FhjA3UpBl/CGPK+8x2SWVylQUmzn/YXduCKbLIWgJj4IN47vBWEFdDU43pV0q2IZKLSPv4vbPKSHuwykui
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(316002)(2616005)(6512007)(186003)(5660300002)(53546011)(6506007)(6666004)(6486002)(26005)(66946007)(86362001)(8936002)(31696002)(31686004)(8676002)(36756003)(66476007)(66556008)(2906002)(38100700002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VElzbzlZVE55cHd6eGdIem5PeTBzaVRVbWhMZkRkaHNYRHpQTUpacGdoNWFK?=
 =?utf-8?B?UlJoYXRBSHl0QXBGU1pVZ0lxdTFmWThqMktlcURQWjdDWTlFME9aazlrOHYy?=
 =?utf-8?B?YkZVcmNwM2NHS09CdW85cmtlUEJHVnpaL1AxVFZPMVNsWWJKd1VQRm1ORkU2?=
 =?utf-8?B?b2JCNk13M2V1cjdmd3RGS0VxWmtYdkg4VWpaYkhmSTFuTVY1QWhxNkR0dWxi?=
 =?utf-8?B?LzA5RnlVMmJGeEZETUE4Z01XY3VBckU4K0dzeFNhbmR4TXI5S1NnM0x6MmNr?=
 =?utf-8?B?cURyTjhuQ3h6NlVMZ0RuUlUxRjBKT2NLcXJqUHJLczFEcXloOHEyN0lNb1pV?=
 =?utf-8?B?L1cvd0NIT3dValJtenltWGRxSytWalFjeFZXN3FsdVM1c2RzUHUwL0xiUkV6?=
 =?utf-8?B?eEczbXQ0R2lEQkFxM1E5cG45MU9sRlArVnVZQlRKNC9iN3ZHRXB6ZkxvQkZu?=
 =?utf-8?B?enlPRmRBazB4TU5JWTVLUDk2TnUyczVJd3EwOGRpSzhob3JiVkppNjI4aGhF?=
 =?utf-8?B?TkF1aVlsTDdTUlQxeEtMN0JPZW9zOVhvWUpXdEtVeWZwSDlKbytVRDM0Y2wy?=
 =?utf-8?B?ZjZVZFdKZ3hTa1RHNTlaR2xKb01PMWU3dGxIdGdOVW4raUlmR0IwMTU1ZjM2?=
 =?utf-8?B?U2VtY2RtQWp6cGROYnFPbFZ3ZHpGWUtxTUpNaHZ6WkNoMHUrOFM5OVZ3QlRX?=
 =?utf-8?B?T2dkQytpNzhSY2Y4YzZqc2xLSzY4b2d4WjN5ZGVwUVVzTFlDRDNJZWhycDFH?=
 =?utf-8?B?enZyOXpaSGh0eUFiUFZzN3pqckhTTjBOOHlzL2dLMWttY2FtTU1vc1B4UmpG?=
 =?utf-8?B?Y0RJOU5JNmxDVjh3eG5iYlpCeHNuSEFzb0NGNmlra3pWU2srRVZqMWNoVjlV?=
 =?utf-8?B?TitJTXVnTVExYmRCV3JVN1BQbmM0bVFSMEJFdmFKbzlWUU51cTBUV21aM0xw?=
 =?utf-8?B?UWVta1VVU2o0S2E4YTRoZDlXY3ppaENGK3hsNlNvVFVmMEp4MVFYWlVhVHE4?=
 =?utf-8?B?RFgrZkxEWjlLckVHQ01UL3BZWW1JUlJzN0hrL2pJcC9zeXlkQ3VReDlpZTlC?=
 =?utf-8?B?ekloYUdveDhDV2lkdjVVRnFLREZmYkI2MDNjV2h6eUNsSGtOZXdpYTRUNmJV?=
 =?utf-8?B?NUV4NDFEWkxzbjFNZHZxWVNNY2EveEsvWkwwWEd3NHBiSWh0cXdELzhEUy9p?=
 =?utf-8?B?eVJPZ0IzYXlUaFRVNVBqOWxMZmc2WmxFSGZFNURVZjVESjV3Ull1Uk1UbGdB?=
 =?utf-8?B?bFpYbnplUUc2aUlIOFlNVnJQMjl1UUJEL1dMY00xOXR1SUN6SldoMlROQWly?=
 =?utf-8?B?Ti9OU0lEeFo5bVBRMkM3UkxsVDN2MjNDWWQzcDBOaFV2TzVFaVFvTVRSYlVI?=
 =?utf-8?B?VVNreVV6QXVLNWpITUxJKy84WmsyQ05BR2EzOHJnUmdkMEd2bHZvRGJSVFFk?=
 =?utf-8?B?bG1idi81QTRldWl4ek5EUFVKbWpnQWF4eGJCQTExRFdWeVkvZ2U0SWkwd0VV?=
 =?utf-8?B?UzN4Y1ZmMk9mOXpwMWluWms3NHpZNysvS25WOG9DU0NkQ3FhV2gyWGZ1d3pJ?=
 =?utf-8?B?QTF3NXVhWmpJclM4YnVXak8yMUpwVmZ4YWIvWnJRaytwVjZaVXVYUjk4RVYy?=
 =?utf-8?B?TlpTNmprbzYzYUxHMWxxVXNrL082eXRReFEzV2FyKy84b01xamJKLzFYMDRq?=
 =?utf-8?B?MGtaMUd3VVBMUHF5OVV4UWlGdEVnRk5CTllNTWcwODY1YlhJb2pYMlh5ZG1D?=
 =?utf-8?B?RXduUEJaMGRzamRwYXNpOGNDeDB5aHVLcWZZS2FQeUFFMjBlN001eGdoekFi?=
 =?utf-8?B?YWRIZkIvWXVjWXVMdk5UNXJWODJyUFI4Z0ZrTCtRcmRpZG80Z0FHU0NHYzRz?=
 =?utf-8?B?ME9oZlBHWU9wdUVYSERnME5SUmYzcEkzZDEvQUtqS2xrTE1FNnVrMnljeWUz?=
 =?utf-8?B?WG9jYXNEQ1g3QkJxVlZXQ2twUHUzL1dFME1yTFJBdVdyd2VXektlV3hDeVJu?=
 =?utf-8?B?OFNPRUJmZXlBcVdLU1hqQnRMU0hNL0xBeXQ5eksrNFUwcHBvNE52U1R1MUoz?=
 =?utf-8?B?di94dGY1dGFVY1BOTXFpd3pqek83S1U2bjJVMlpvdmx1clg4VDlsTDdlcjZx?=
 =?utf-8?B?bmxhUHdhQ0V3M3d3SkFwb2RYNkZKVUZFWTdqTTdCWnZNYW5ZV2JxNEJWTS9H?=
 =?utf-8?B?eUpyRFQ0R0VQZklyMGFlZFNIMUdpSUp3SERvZytvTnljb0RmKzJsd2Q4cWNy?=
 =?utf-8?B?OXlSYlFzV29IRUs4Mks3QXZlckpHN3VFa051Y2syZTBYZFJqSlNWeEdjbkNE?=
 =?utf-8?B?UHBFZDJiSGVzUXF1elNrdlkwYjJ1RHNHcUl4TWp0VzhiNGNjM1YzTFk3SUky?=
 =?utf-8?Q?Qr6k6EuJIIVyOFJU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4135513e-837a-4e98-d65a-08da4001ea86
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 16:57:00.0977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JXLp8jm2KSKRl7uzR+NjoUmzyUyqMxlgbRUb334k+nPRifvTROMi7TkLpzNQ0OsBcguZ3IGS0dYYipJstt9zEwFd1CfcMmwLuzJo81l6xaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/2] iavf: Fix call trace
 during removing iavf driver
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



On 5/27/2022 1:09 AM, Jedrzej Jagielski wrote:
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> If VF has configured tc qdisc with number of queues less than original
> set and then the driver went in removing process, tc resources are also
> releasing. Attempt of modify real num tx/rx in this state is causing
> call trace, because kernel is trying to releasing uninitialized queues.
> 
> Fix by not modifying the number of queues when removing a driver.
> 
> Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index eec74ee5fc19..1b46a97f4ad6 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3478,6 +3478,9 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
>   		}
>   	}
>   exit:
> +	if (iavf_is_remove_in_progress(adapter))
> +		return 0;

Why do we check this condition at the end of the function after 
everything is done instead of the beginning?

Also, this function from patch 1, is a refactor for checking a bit. 
Refactors shouldn't be going to net unless necessary. This patch can 
directly check the bit and the other patch can be sent as a follow on 
after this patch has been applied.

Thanks,
Tony

>   	return ret;
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
