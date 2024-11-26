Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 730F29D9A1F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 16:03:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFC464ECC9;
	Tue, 26 Nov 2024 15:03:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XzdJyzu3VEJN; Tue, 26 Nov 2024 15:03:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4A344ECBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732633381;
	bh=XqEe35iObQRMP5T2Q0owbHigAXSIB3feO5lN/8OTKEc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KPqNOd+K+SFFitDIKVooW89dpKVK0BJ0imoA2uN24td8hTOXp3Aw6kzzhnjNY6J4A
	 v8G7kwAPyLP300n0owZ2ll291N7XXWXrMjfsHAeomhSxLjwyzCMvdCQpUdwEZT8nJo
	 Wvw+s3ojdMGNNv9/o0ILG4c9/G46MknLgt5kLNqJwYz+Di9nTIAGikjG0+lZem8omM
	 xOoYL0DkmHpn3HihZtPSFUKlNqKcs69AB2d66o0XfML1bnpDKiHUHwk6wTudqqrHfQ
	 4fFgwKMbDS84AWXrkefX8S8RDj9MNidst+T0vuRVBjjJtInDLHUqwNNVgFy+8mh6cC
	 vtameYSJw1x8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4A344ECBD;
	Tue, 26 Nov 2024 15:03:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CC674961
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 15:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DE696FA82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 15:03:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hA-osfnxacPq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 15:02:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 516406FA73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 516406FA73
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 516406FA73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 15:02:58 +0000 (UTC)
X-CSE-ConnectionGUID: /XtjfLCvTNiTjn/jOjVkBg==
X-CSE-MsgGUID: 54NSS4eISj2EhDFyhY7Ghw==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="32928260"
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="32928260"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 07:02:58 -0800
X-CSE-ConnectionGUID: nF6gF1HPSkmZnEL7S/QMcg==
X-CSE-MsgGUID: +UBHAA6WTHCM1ysX55LwUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="122490453"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 07:02:58 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 07:02:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 07:02:57 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 07:02:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D6Y2FVv0NcWi4JELGWDMi+uSeV3SbgtkVuYAYcs6BPXXYekT7YI2wXrPgP/nK3WUohz2qc5VsLiAY1jLPsl/Uo+9+H4I+MRC1xM9nwl60mtc/uWqFy94GG6e6TbgMH18Ymc0Nvhn/ZiISopYSctsGle1b5PgEl3dDf3HhEzt7YnGYTypC0frL38IRvhdD+bI3qi2W73ZKJGsvSSCRSh/gSD1R6c7uuWhE1UdC79Ld89iY07CI59dJ6/xiHI1nh4bzrfFdW/+8Z6IbhB1vTvy8jknCN0eh0LtJChVEXGoaJYLaLP3q/qzkdu3Tir1S75n5g7vY1Cp9oJvwB4JJsRx/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XqEe35iObQRMP5T2Q0owbHigAXSIB3feO5lN/8OTKEc=;
 b=TCINKx4XphNMXm1V2jCYrbKMK/cuS88LzdODSlgtaaX/a0u2TQ0eiNDGsb+xVH2//zNQv6jfthSwL/SADB/6snIUAt/qPtssW3sKveMmSLKxJdnDutEQkJT+MSVOJHuAyhpRivnMQexgr4j+CPj5rT/H9L7A8+kR/KYszmLh6+eO6Vnh0Oiv5RCEOxDC2bZC9SZBQGOXCJ2VswKC8IQ6ccr3XlV29mM+vt0uOMAO2/+oCUL3j6hYcul5j4wIZZ3FPzRWuk0gP5kAv3Pv6BMatXoJ9sF8riqaQU9ncyeG+yJwCaDqZeqkdtk9osVGUytytuY1zXVz/WZwfEcpyT9cEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS0PR11MB6424.namprd11.prod.outlook.com (2603:10b6:8:c4::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8182.18; Tue, 26 Nov 2024 15:02:51 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%7]) with mapi id 15.20.8182.019; Tue, 26 Nov 2024
 15:02:51 +0000
Message-ID: <e95977e0-d080-45a1-a82e-e11ee85ce794@intel.com>
Date: Tue, 26 Nov 2024 16:02:32 +0100
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <przemyslaw.kitszel@intel.com>,
 <michal.kubiak@intel.com>, <madhu.chittim@intel.com>,
 <netdev@vger.kernel.org>
References: <20241125235855.64850-1-joshua.a.hay@intel.com>
 <20241125235855.64850-3-joshua.a.hay@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20241125235855.64850-3-joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0006.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::14) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS0PR11MB6424:EE_
X-MS-Office365-Filtering-Correlation-Id: ca5007a4-778d-43ce-04b3-08dd0e2b65f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2ZBUldLOW1VRE9iU2haZUJHWTNEOVJabUh3bElzV3BDc3hMcmoreDI3S05i?=
 =?utf-8?B?Z1R3bVpUVkUxOTF3NlRHRG9IclE3OURsU1lZNXdOWWIrUmhJREx3Qkhya21s?=
 =?utf-8?B?Qnh5SXhUMDJOM0ppSkFZTGJId2RzaGhUQ1BYbVh1WVgwSlNhSnBpQnkvU3Aw?=
 =?utf-8?B?eTJEc0djM3gvMkhmUVRHcXVBaVQ5SGJKdXJQT096N3F5Skg2dUYwSVY5Wnd5?=
 =?utf-8?B?c3ZXY3NTQ0FOcUpqUlpjcDNvaXYwZnlOa0pmRHRiTm5FZjgvNjlLZDRCUUE4?=
 =?utf-8?B?NUpsTVFEZkh2RzRGeGwwZTh1eStDSkVrRVFpRnFCYVRCaFVaYUgxRmRkZDJp?=
 =?utf-8?B?MEpOd1dVaElQelpXdGwzNnRYY2RnOVc0YlVEODNlYXk2NUljbUZScmkyYUJr?=
 =?utf-8?B?VklpeTNtYXNNb3c3clBUREdiMVY3YUd6a1M3NTA3WmYwTjgvdUNJdnl0QURR?=
 =?utf-8?B?MUtiL2wxSmF4MmRTTnYxd0VldXFkMC8yYVhUT21HTE1JZDN4Q1dGR24xNGZo?=
 =?utf-8?B?S3RQaDVLRkNsUjVlaHY1UEdKeUpvR0NWMVRLQUZteWQ0TXErT3M3Ym5MbjFG?=
 =?utf-8?B?TERzM0hqNkdKMDlHMGoxSkI4U2FxRWV4cEpzVFNzTmJwMEsrSm5CSHNqbXhR?=
 =?utf-8?B?WUFWc0I5WXlKa24wMUtyRHRFQTVGdUhuNVVlV3JRT2M2MDlKUHJ2WlBxSXg2?=
 =?utf-8?B?UUVvdjFJaDJrNFJzaU56UWdoR2tBYklmK2ZlTWYwSWFXR0lLQ09JNC9sU2lP?=
 =?utf-8?B?TGRqK1BwZHVYSlhBaDdCbHpwd0RNQnk4TmJZalljTFRyT0xPREM5Sy83SDlB?=
 =?utf-8?B?d1VMUnlLVHJDZjhud0FGSTVFM1F3RmtES1NOaWlsUlNUdDkrd0p0aFFNaGh1?=
 =?utf-8?B?TkhCTmI2VUJpNTNCcDRsQytESlpkNlRMQTE2MXh2YS8ydGJLQ0RIdW9Md2xi?=
 =?utf-8?B?b2JuRVVPY1JRRE1oQkJDTkRUR1dJMVRRREQrSHFjaVJENStuWU1OMmhpaU1h?=
 =?utf-8?B?NFQ1Uks4YjVJRnZRdFlRc2g3bkpKdGNiemJnMk1JWDJza0FwM0FlbmwrWXVn?=
 =?utf-8?B?OXVDNUJMQkg3NW1GRGJxaEx2S3N2NGRtWkl4Z2locnBZRVhPLzFqNHhPSjgx?=
 =?utf-8?B?ektub0NkalFRNFMzWExqdisyTGJ0ODBudFRHZEZQenBkMVlKRzBrWTBmSW1U?=
 =?utf-8?B?TkRjOVhzWmprUmgrTkd0TkhObElJL0dXY3lha1N4bmNudnMxZ2RPM1ROM0FS?=
 =?utf-8?B?dkF5ekZUWTdBSEZqMlhyNE5PMStZK1E3cGUvWVAyRXBmQkdjcnVCU3NnUVpa?=
 =?utf-8?B?UzJCY0JxVnQ3K1k5UkRmcEpqUTR1OENxbUVzVkwzV1hwQnRBeXprak4yUFVB?=
 =?utf-8?B?eGN3d3huNkxNb1BVTWFSV00rczYrR21KcWVtWmpUQW1sWms0Y0xZalZBeWNx?=
 =?utf-8?B?cllQTmlIUlFjL1Jnd1VkVEFSQmltNHJNNHVoYUxWeTJhZTZIbkx3eXRPQ0Zz?=
 =?utf-8?B?b2tpK29qV0xPSG0wc1Q4K3daRi9XNXNlZUorK0FJcXdSTGVQSFFkZTZJejNZ?=
 =?utf-8?B?T0NBRlRIQnZkMzRYQTZYSklpK1RabVBoZ1ZuR1VzcTNoL2ZsMGR6Y214WUNE?=
 =?utf-8?B?NnY0OVhOcEJqTEpZVmo4S0ZjQzBUMmFyNjJXTnVZOHFkL2ltVXlvbitzMDQ1?=
 =?utf-8?B?Q3VvWS9GNU1nQUhJQytiYkRWcXE5M2xmeVptK1pFdGtma1VXZUhXY0p1YWRP?=
 =?utf-8?B?QWtIcmk2RHBkQTNCWWRqdUd0QitDbkova0VpcU9BcnJtR3VXVkkydUNoOWJw?=
 =?utf-8?B?RDREc3lDbldTZGkzWUs5QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sk9YR0V6Q3FPU3ZiOWk0dm5mYmpCSlc4QkNPMkcwM0MvclNxbnpUMTlEZ2g0?=
 =?utf-8?B?Z2d3NmJUdVlJNnI4YnJmVVlLZVorcDd4VUJEYWJoU3VrZXBIY1VCclEwaURs?=
 =?utf-8?B?WUNoZlNCd3F3VDIxaFRIY2V4eHB2OTllclhFZEluMHhCM2x0UkVCdjRLSHo0?=
 =?utf-8?B?YmdMN2p4UkpJTmxmWEZVOTZ2bThaSkp3a2lVTWVST0JpNFlrd3E0VEt1RGpQ?=
 =?utf-8?B?eW5HQ0Z4TnY5ckRsZGNRcUdsKzZiaFhGUW95OHVyamZGT2RhY0loWUtOckRv?=
 =?utf-8?B?Q3dXNStTV2FmOG9ZWldmbGJiOTFOckFKNjEyMU9LYi9jQVplbE5RSUNmUDhn?=
 =?utf-8?B?T3haZjhoTzRocmkxQy9hN0grcFFoWU01ek53Ymc0Ky9nMDFDbXB3cjFnVHFq?=
 =?utf-8?B?eUUyaFNkSWZySnNuNnl6MVdNRVZ4ZmF3T2xsQk9MTmNnRnQ5Rm9OSkoreCtu?=
 =?utf-8?B?OHFaV3BQMVcyNUdoNW43cVBnU1pTM0pRb0pHRlFQdFhldGVhQnNsRGpkNDR3?=
 =?utf-8?B?d1FidU9lNHprN21MeHhuVXhOekhTRzBMaUVmSzgxZ3NON1FJaXhwc2dPdmpl?=
 =?utf-8?B?QklYSDJFY0R3VFU0VzdCVzJyWGhscDFkVGh0aXNnWGVSSmRwamF6d1dKSTVT?=
 =?utf-8?B?MWpmQTBYcENhSlFqVXFGYUJIRDZ0VXRrVDVVZWVaNFFxODlwNlRqVEtFMU84?=
 =?utf-8?B?eHpWNG5rRTZpTVVEc2VkbEduV3dBU2JoelRFdkppblVxTkIxdk1sOVBYNlFv?=
 =?utf-8?B?bm1XMTNsVnl6bWs3L2VpR0ZQaUx6ZjhCWDV3RkJUc2tvbFNYRHQ1djR6N3Nn?=
 =?utf-8?B?SXVmWldsOGVFRkVKdXp2R1NmMXoxNWlhZ3VTZXlmVVNiQVZ4eEd5L1FDSEQr?=
 =?utf-8?B?a1ZKaS9IdnNPVDlESTNZblE5RVVGeUNkRGRkZFNDaFpYam0vWEttZERvbzRE?=
 =?utf-8?B?K1JLNjBsSFE1N0NsMmsxREhJcWM4eDl2dWJxcTNESmR2VlVJVEhhQ0diQWl5?=
 =?utf-8?B?Y1ZWZ3JWRXN6UDhPd3FKV1JtbDhWUFdmdklFa2d4eGNVdEZWUkJkNHZ1TVNK?=
 =?utf-8?B?bHc5bVBqZTBaTjIvb1FMdk1zc3FlanEzOVVLZWplbDhzeU9GalRNRUVTSU1Y?=
 =?utf-8?B?MStYbENsUlRxNHpwWDN2VUxGWUtPWXpQd1BPR21TVW1zT2VZTXN1Z0R4cE52?=
 =?utf-8?B?U1JiRmxJMnZQdXFZcUpnOWFPdmpkVkpLbVoyUmFaNjN2SElmS1J3SDlkeHRq?=
 =?utf-8?B?dzJKcGc3WHArcTZwY2dCUWVsRDhwbTR0WndjblhsRTN6WUZMZHgxN3hZME5X?=
 =?utf-8?B?bFFtK3VkSXRuUVI2b1p4cndscld6RWJ0d0h6NHVWR2YyQ3MyZW45MTFaQVE5?=
 =?utf-8?B?R2dPRys1bTNPb2Rtc0luSUswOFd5ejQzUCtwd25GWmsrNjFUSTZna1pDWHFk?=
 =?utf-8?B?SmZ3NzY5YjBjenV4NlphMDJTWmovNWs4V1ZpRmZlOW43QzlNZ2JlK0lSVXRk?=
 =?utf-8?B?RUFxK0hTQ3FVY2kzOWU2TWM2b2o3K0FwYW5VOFA1WEF2ckFCTTV5bXJ1bDgy?=
 =?utf-8?B?a0c2UVRnTnowc1NEeE5XZ2xXV0YrSXBTdFcyUElDc0dVeWtQMDdscGM4enFO?=
 =?utf-8?B?SGllajJDZXBkOVM1L2FGRlEreWNWT2hQYi9RRUJzcTFrR2dSSStBR3ZVNjln?=
 =?utf-8?B?ZmphOVhPRkpLUWRJUGV5cWVyVytZMmd6WFQveTNMYmpSVG83cEY5UElMVDEr?=
 =?utf-8?B?QU9sWDJMTDFETlMwTno3MU5Cakl2YmdBQzlGWXB6cnNBNmM1RUJmRWN3ZVNl?=
 =?utf-8?B?SUNZYys5dmJEeC9zNENkRTJlcmVtblVZclVCYzFRcTBzUFNCS3AwU1l2Z0E4?=
 =?utf-8?B?Sm1QUlZLUmhEcTd3SUMvbWgzT0VBeTdjd2laYy9wQS8zdXBkcEk0ZTJzQXVB?=
 =?utf-8?B?cXN3NDlCNDFQT1E0dkVaUzRqa2JMRDBOcnFWVUlWMHhZNXlKWWpGUUxrakJ1?=
 =?utf-8?B?d00wZm1xWG9vNytYNUFUZkVxRTJpR3dJNitKR2VVKy9kRHFlM2k2cFlYTGlW?=
 =?utf-8?B?NWJwZHFyYW8vZ3Q1eVVrMUZWc0FWSmE0VGtYekh5Y3c4RlJGTDBtbC9Xb0dS?=
 =?utf-8?B?WCtzNnV0TG1WUUVHWDNFRVF2eDZIcUpoUzgzdWgwRVE0NC9Bak93bDFoempU?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5007a4-778d-43ce-04b3-08dd0e2b65f5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2024 15:02:51.6286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5OaiiyND3+IIorYpLrbcEnzWJNC4Ff6RX1UbFopCuUWr0lijOIb3rvFUMgCiko8aIFGMq94p6EWFF3soGTrXpJGuswHvViHuivO/8U0iNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6424
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732633379; x=1764169379;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cRJfB1Foe8iJCGUBC6mLj9tMh3bmi1wI6RgLI7F992A=;
 b=Xq7Bx/YfiB4gW6wBaqHxrTEIYz32erGSXA3zYYPJuqaIZQjQCyR/8nO3
 KJwVq64eDYNUk5kJMO7Ru8DAOcbOUKdbiL3PnSu82/itqUk9X7TsmNAyD
 QnsHNyNZjQGBg3irXaZq9XrcK8/jYCbSwK+EUajpxL1uq4JW/lK+ry657
 PQUAkQuwzVKDRZJ50mTEF4vfd/ziFas6Uyxqr9i6sIOVn1U17dtYCz5uO
 A09lTBbBo/VDkMJVqVYfokpRmDt8ru9Sb429q2s534uQ0UluDqjzQEFIl
 mmRXB+JDkltGeUgLGR54JyqYxyotqxg5FqST//kWC6pidzyDaJ6c2ewAZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xq7Bx/Yf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: trigger SW
 interrupt when exiting wb_on_itr mode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>
Date: Mon, 25 Nov 2024 15:58:55 -0800

> There is a race condition between exiting wb_on_itr and completion write
> backs. For example, we are in wb_on_itr mode and a Tx completion is
> generated by HW, ready to be written back, as we are re-enabling
> interrupts:
> 
> 	HW                      SW
> 	|                       |
> 	|			| idpf_tx_splitq_clean_all
> 	|                       | napi_complete_done
> 	|			|
> 	| tx_completion_wb 	| idpf_vport_intr_update_itr_ena_irq
> 
> That tx_completion_wb happens before the vector is fully re-enabled.
> Continuing with this example, it is a UDP stream and the
> tx_completion_wb is the last one in the flow (there are no rx packets).
> Because the HW generated the completion before the interrupt is fully
> enabled, the HW will not fire the interrupt once the timer expires and
> the write back will not happen. NAPI poll won't be called.  We have
> indicated we're back in interrupt mode but nothing else will trigger the
> interrupt. Therefore, the completion goes unprocessed, triggering a Tx
> timeout.
> 
> To mitigate this, fire a SW triggered interrupt upon exiting wb_on_itr.
> This interrupt will catch the rogue completion and avoid the timeout.
> Add logic to set the appropriate bits in the vector's dyn_ctl register.
> 
> Fixes: 9c4a27da0ecc ("idpf: enable WB_ON_ITR")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 ++++++++++++++-------
>  1 file changed, 20 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index a8989dd98272..9558b90469c8 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3604,21 +3604,32 @@ static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
>  /**
>   * idpf_vport_intr_buildreg_itr - Enable default interrupt generation settings
>   * @q_vector: pointer to q_vector
> - * @type: itr index
> - * @itr: itr value
>   */
> -static u32 idpf_vport_intr_buildreg_itr(struct idpf_q_vector *q_vector,
> -					const int type, u16 itr)
> +static u32 idpf_vport_intr_buildreg_itr(struct idpf_q_vector *q_vector)
>  {
> -	u32 itr_val;
> +	u32 itr_val = q_vector->intr_reg.dyn_ctl_intena_m;
> +	int type = IDPF_NO_ITR_UPDATE_IDX;
> +	u16 itr = 0;
> +
> +	if (q_vector->wb_on_itr) {
> +		/*
> +		 * Trigger a software interrupt when exiting wb_on_itr, to make
> +		 * sure we catch any pending write backs that might have been
> +		 * missed due to interrupt state transition.
> +		 */
> +

This empty newline is not needed I'd say.

> +		itr_val |= q_vector->intr_reg.dyn_ctl_swint_trig_m |
> +			   q_vector->intr_reg.dyn_ctl_sw_itridx_ena_m;
> +		type = IDPF_SW_ITR_UPDATE_IDX;
> +		itr = IDPF_ITR_20K;
> +	}
>  
>  	itr &= IDPF_ITR_MASK;
>  	/* Don't clear PBA because that can cause lost interrupts that
>  	 * came in while we were cleaning/polling
>  	 */
> -	itr_val = q_vector->intr_reg.dyn_ctl_intena_m |
> -		  (type << q_vector->intr_reg.dyn_ctl_itridx_s) |
> -		  (itr << (q_vector->intr_reg.dyn_ctl_intrvl_s - 1));
> +	itr_val |= (type << q_vector->intr_reg.dyn_ctl_itridx_s) |
> +		   (itr << (q_vector->intr_reg.dyn_ctl_intrvl_s - 1));
>  
>  	return itr_val;
>  }
> @@ -3716,9 +3727,8 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
>  	/* net_dim() updates ITR out-of-band using a work item */
>  	idpf_net_dim(q_vector);
>  
> +	intval = idpf_vport_intr_buildreg_itr(q_vector);
>  	q_vector->wb_on_itr = false;
> -	intval = idpf_vport_intr_buildreg_itr(q_vector,
> -					      IDPF_NO_ITR_UPDATE_IDX, 0);

Is there a reason for changing the order of these two?

>  
>  	writel(intval, q_vector->intr_reg.dyn_ctl);
>  }

Thanks,
Olek
