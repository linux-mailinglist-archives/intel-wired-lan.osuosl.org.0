Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHLkB0w9sWmAswIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 11:00:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4D02619BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 11:00:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B76B34220B;
	Wed, 11 Mar 2026 10:00:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uNIjk-_alL06; Wed, 11 Mar 2026 10:00:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E48434220C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773223232;
	bh=Uv0v6jMX4C0qPjr1kNxa9wStGWkeqQMSDHT0Wk/8ksE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cf+AvB1wIZiTywmop2kX8LkBtpRPVqVvxUDZJinTNztN8SFioiGc1CGom+zVTmDrK
	 bDMU/8Y5Q2M9AIQjt90++3Tk6GJV9kKJUMM6ggf1jgopx/UKlF5KXsZNuTgo0iNSls
	 o7aE2eFUFXB570OyDoRpSM84IkfM727DIh1NNC/igOhsNvq8exPxaDR5Dhrp7Wy42X
	 BPMsvWP5gecIuQKbeSiVqq9keJkEgAaja2QqTq8PG4rveoaPeu4mHu58yrqGkab3yf
	 T505mYwPmduV3rDzeINQmMx6BkKU/I4U2FUV0nen4lprubLNy7DNI8DnmHguFLot1q
	 LoztDYEuvHEug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E48434220C;
	Wed, 11 Mar 2026 10:00:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 85E27201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 10:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7718D84297
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 10:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijqtBQDAbv_3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 10:00:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 77DC4811AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77DC4811AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77DC4811AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 10:00:29 +0000 (UTC)
X-CSE-ConnectionGUID: g07mkzfgSI2yyTGaJGAyxw==
X-CSE-MsgGUID: I6WD8q5+RPS4+iDctanc1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="78173416"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="78173416"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 03:00:28 -0700
X-CSE-ConnectionGUID: 6Lj0qjJZQcGmqyTAZIl4Mg==
X-CSE-MsgGUID: 5uLWlDT0Qc+IScqNgWqP0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="218298194"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 03:00:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 03:00:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 03:00:27 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 03:00:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H//e2qL1FBBR3g5Fx6MAaJGHN1GzvGoVxNmqtAyPm4A7KThZQxs3dsJbELa76SPU9SsSUiNx4xvXEh0x8YEmzrgX2g9nMo0Y927wl41mKLHuGZlX9trw1fjD+GZlEUCOHQTkzTfV3yVRq8TdwJy+sY/euiUa7+CdfkRGPdKRb8gFQcLkBXJo7fKYGnPBwqZv6HZxSL+oDs+/7v8YOsrCDPo+wy80LY46RjqaocnzUxWWJtOvBhmyj3CYPadytdM1aUMEttqurPUSraBxn4FZqY0I144O/KTyPj8L7r7lUBw5uSjrW1RkSNBI0sc99DFRBhMTnXgIDcQPA6D0W+G6eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uv0v6jMX4C0qPjr1kNxa9wStGWkeqQMSDHT0Wk/8ksE=;
 b=vIucFsCrwmeDP0Z9jLUB8pD64rymaR28qD3j3jNLCpLSLsxUOhI8kaag4gR9CmLujUK4nYAVXy8Gd2Gz36i0SZm9+w1TPzbg/yrzU8s2HvBpWWyaAlu4R5+wxQbp4nvmwyeGkf1tZ5aPEAPRu7vAT4QZl6CnK9WBojHZWLJHw00JXUUYKM0LVlGmdOe68JtNoyC0SZZMCwc6eIJc7NCnbjAsAiAETX9x7d+RuEusxhOHmeW/Mijfmw2SLNSUmHe60jBH0lTmKOQywMWtcLT4Eiol+RMEeAGS5KxutikuEecDKl2JeZVb2ooRjhcNNUTuUOrrUYtdT0Xtue2QiUC7Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by BL4PR11MB8845.namprd11.prod.outlook.com (2603:10b6:208:5aa::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 10:00:24 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 10:00:23 +0000
Message-ID: <0cb2074c-1363-4f4a-87e7-7395fcd24256@intel.com>
Date: Wed, 11 Mar 2026 11:59:50 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sasha Neftin
 <sasha.neftin@intel.com>, <kohei.enju@gmail.com>
References: <20260214194636.295647-1-kohei@enjuk.jp>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260214194636.295647-1-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::7)
 To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|BL4PR11MB8845:EE_
X-MS-Office365-Filtering-Correlation-Id: 67326088-cfe7-4c64-8d93-08de7f550324
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: rhGQv1EZMlDBtaS45vimZ9pTFGh1T9G358D25m58+Lx/oWfLBiRdqZnU9Erys5i0GZAnE44ZtluCp2SyY2IO+hYk/gogTOqVP6rdDQ/N4HojnVoBk9rXMCSyvadX7F5q2jYHt1+oyYn4PuYdvdbuUHmuXWmHTBsB5jSkOxU3iBgTwSRTM/hst7GaJrKn3+wvgwU+4+PafGVBS5ewKJOhjEXV+rw56u+hPVNAJhpbQabNqELfgoiLSCGBXLzP4rTZS/SIrM1v9b3cYpt6ktM+MVD5aJr57jkXokxA6CfK7oSnE92p3FH+DdifV+msyrnMyDWKW1WfIrxitTG+RgyE7K+XBJBRv9XsFMUOnJB/e2VR7lLB7y+q4TsvTB8ZH/vn59Y7nKCirzoDWpxr70L9PgPgtRlNDUm0zt6Z9YLFdxw/9W0kZcH0werhf4bRME+4oi2DtbKZjt+Qkp8EM2iOsl8LTMhpu4vkUSXrmWxHpHotkOej/TaMHyH62uuWJwRqGrBZ+cG/MHf7g7eAtqHQ1eKGxVQHex+zze7VNfo6CRonss4bIYw76D6hfDn/gTyFjjLfgoQkIVAqsmY9RbLigvWZlfsTM4RwTMm8oPR+ll0mHhgG0iKH1a0APLK/9tS3X7DAeAz1YsLGoDB17VQjw6B6s26UMpGwmGZkhQRdYBljKV3lxi3lShN28B1MbdQww53OGt7VvTM8tNlywUlYPnCNBrGB/OwhgWMn/vw6xq4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1VUcHhWalcrSTBwcWtBVGN3YlJKSEpXZEtCcFJBVjE1NjJEMnh2RkpFVWxB?=
 =?utf-8?B?NUhpRlg1ZkthTlZvYW1ZTTFBc05LZkN4VzVuN2hQNU1OUGpmT29tWVhVQlY1?=
 =?utf-8?B?OVNFcm1vczRxVHJCRWtNZTZ1aHZQNVB1YUk1MWdRb3BraDlJek1RN3c0a0Z6?=
 =?utf-8?B?YnF5U2laQUNrM0tiNUdmSnZON3ZrVGdvblBvU3dhL0xibVNabUJYZFl0VXV6?=
 =?utf-8?B?Zm5tUjZTa3JCQkxrZWJvbU9rWWExU3JwSldHdjI4Wms4TS9mWk5odjRBcTBt?=
 =?utf-8?B?U2pEdVRTQTZybjh3VVBObnltZmRSQTZzazRYUzBKUE5ucDNuNnU1cXhrZkpP?=
 =?utf-8?B?MG9ZdlE4T1ZGdkNFOEdUdExMQ1JmeU1GQU91OUEvbUI1Y3FON2RUcGJHelFG?=
 =?utf-8?B?bFBiYlhCbXlodDFyaWRQRGZwekRGQ25EVnRra3FxcjRUaFN5RTByeE42MTB2?=
 =?utf-8?B?VWVuVTdxVTc3M3ZQeDM4UVNEQitvdnhHMkpYZmU5Qk5NaDhLR3FjTjhycDlV?=
 =?utf-8?B?U0JIMUh4MDhZN0xFUk9qVUFGZXpZMnU5VzVXcisvdFdSWWpLU25wNEFmaEVh?=
 =?utf-8?B?UkcwZ3dkN1ovYTdNbXJ4WUVDL01yaktZMm5KL25wSFJkUC9EaU5YcWhCTTdz?=
 =?utf-8?B?ajRWVkJ1aHJiS2VUdzVtU1lFc3dBT0ZpK01wRW1Pbm1JVXkxU1NtUXdsVnJK?=
 =?utf-8?B?UXRNVDBEbUJoMUNUcHNNb2c1T3E3VDJSeXcyVElNelhBVitUZWFWeFd2VGww?=
 =?utf-8?B?aWlteXZGa1RjQmZPd2lkY3Irb21ZeXJlZFlwYWcwZWlhYTRpQU9qOHBqK2JW?=
 =?utf-8?B?K2RQakx6b1M2a0F5dFMrOHlyNDVCS0pLSlRONzVTd3RjNCtkUTB1aGk0Smpj?=
 =?utf-8?B?alJ2VWR5VnA0eUNHTjg1SHhrdnBUYzJGR3cyc0drcHloQ2Q5d0RNSjdlNDZ0?=
 =?utf-8?B?eUFyc2tGLzVZaGxsVEllNU9tT015ZFQ3SUZWYStNNmEwNElqa0w4K0hzUjdW?=
 =?utf-8?B?V29lQlBpQ2t0SkN4UE1DWlZuN2ViaU81UldiNVlkWUFKVk01QVZNUzIzS3dJ?=
 =?utf-8?B?UUE1THdsSHJlQXNFQWZNQXFxQVYwY0hnTWRFM0U2V2hMdzdrN1dhMStMOGJH?=
 =?utf-8?B?dEFNLzFQakJqNTMzN0pxZW1UZzQ0OW1mdFhnaTgvUDdHS2QrM1dVZkFORGRo?=
 =?utf-8?B?U3g3YmtMa0kwSnNMbVpJbkdZR0g1ZGswdllrL3UrRm1SVUMxcXFMYU5MMXdk?=
 =?utf-8?B?Rko0cXZrdDUwNGRjOEwrNG41L3lucnpuZlRRY2tNZXY4U1E3SjBHVnBueXNK?=
 =?utf-8?B?MENYeEVKR1NKYi9STXBBdDNnamh5NzVXSmFYYjBPRzIwcjNncjdYWTVjWlNY?=
 =?utf-8?B?TktCME1yNElhMVBOWmt2a2kzSzBFSEJ3K1FxMVhENlhHazBsTHc1TjROdThv?=
 =?utf-8?B?U05pdmE3VnRJZ3J1Q3d3REZXZVd6T1pvZk5WcXAxSC9UUVB5ZE42R3BIZGs3?=
 =?utf-8?B?emxxZ0hZaHRJVFFQS1ZiZnZjU3N2VC9LWHg0SitnOC9GUW9meUdQYlJTZExP?=
 =?utf-8?B?YlRwZjB6bi9HNStJNTFvUHFDakxUL1JPTXlVQVo2c2FWcUJSS3VPZmRGaEdO?=
 =?utf-8?B?UXJTNlVwVmRMRlJ1TjllbGZLMWx2SUNwNFI4QUs2c0pycVM3M3o0bFRIcHpP?=
 =?utf-8?B?QWVVd1hlbGlKMkViazM0akpuVS9nVkVLcnIxZUlyeE1uWDBhTFJkS2NKN3lR?=
 =?utf-8?B?RkNwSjBDeHp0RXZmT1YvM2ZSVm5NcFIrZ1Bydml1ZEpJdmwxMkFkRWdmVnhS?=
 =?utf-8?B?cU1nZ1NtR1VSZ2pCM1A0M0NRZDA3Mi9VSXVDYk9xaEFqbWN6NklqcVl5R01T?=
 =?utf-8?B?OEQrMyt0V0hHWXFLZnJwYWZSVUJUa3lhQ3VsYURZTG5HdGZJb09zSXZrY3RD?=
 =?utf-8?B?TzBKVjQvdDFnZnp1ZmVSWHJHdHlRamludjA3TVZkcUZZeGhlUHBiNmloK2xZ?=
 =?utf-8?B?Y0x0ZnJXMjBXdVl2eU8yTTRKM2s0ZExTQS93dHZmTUw4TXB5WWdIMmszM3NZ?=
 =?utf-8?B?SFlUVFJtS0NQKzVpNERRTlhkNlFubHd2TDAzczRLR0NBdHkzQjV6SC9TaktQ?=
 =?utf-8?B?RXFGSDJZd0pwengweEEzTGFjUUZGWENrN3V6eE9CZzhiN3hKeCtCSFBUbHR4?=
 =?utf-8?B?YUsyV2Z0bE9XZ2FNMmJ6MHd0K1QwSk1mWElHREF1ck9DQVNQYkJVSzFUbmR4?=
 =?utf-8?B?bXZFZGV6S1BPYko3TjA4MlFJMmpQRHlZazhiT3ErclN2dlM4N3podm1iQjZE?=
 =?utf-8?B?NUdRQXMrVWNlUDljSGNzeFV1WHVnWnV1SnRNZCtObDl1QnpDdEFGRFc1ajNt?=
 =?utf-8?Q?38uok3X/1t32QXGQ=3D?=
X-Exchange-RoutingPolicyChecked: EkwcUHeib9I0VsxH5c35huLKu4BNWuVofE9HHOmX9zQ5TZqPG6N20+jJ0vyDqRtocNz0YTiaPhCmhw3sTe2WfrX63J1HV7NDj2ZvE6qM1RORZDyov4TkRyRilMQEN1FyDOqRRCVKaKTG2y59qQT7ykN5ZV9xCExqDVOJsPJr/TOn6lvZDE468508E0TFaTNTvCzgKmfj8BFUYi/lkjM3SeusBJWCMvUZbvS7/aVvdo6OjOnkQWc0lhzBYBS+IH+ZyB8f3xV74iQHG66exYABtgKcsrTaM73gDEXaDPouHcv1gyRmKY3dQMwZwdqhK0mvabnrar61oEh64rkMzNRQ7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 67326088-cfe7-4c64-8d93-08de7f550324
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 10:00:23.8253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8JZlDDQ5hmbpYEF5dJfwYFxkN/AIuMA1ITpaO38dSvO9T3VeOPJP44hmQrBLTLmpQf4CPzEP9DW78XQCQjDovsfh4id5zwg/WwQtLNsjzAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8845
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773223229; x=1804759229;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZPVSB3uOixFSBC6xcBrHTYNw38mH45nhdIHJ1mXBn5M=;
 b=LOfZe7ZvBUZrgpbNXQxzRbdP3Va7xpc+oBQabE99+fJYPg0UM5VtGNxm
 SrQq++YhqkOqBQUclGAxvestDYcRHTYu0ZCixEr4s0Dq9GPEo38Np/hqy
 diLdszYbZu+D9k2lCTNVGg3rpyhzHK3EaePFZWeXp2pseP5dX8zaIm6OK
 p8fPBApgv7MJIi19U16BpZ/sZozbaJSXHSlBqYQ4YpSxUk9bCZjyohbCf
 pODHN6BfNBo9a0Jpo1ZMLDUvsSzg33mdVW6zcRZjAyiGl0cBKFzm1GMCA
 vqYwm2vItA56FqP0ThX+EnOJe7O37N7wSQtqiXbbfvk3E31GkZ24O/nAn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LOfZe7Zv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: fix missing update of
 skb->tail in igc_xmit_frame()
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
X-Rspamd-Queue-Id: 1D4D02619BA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sasha.neftin@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[avigailx.dahan.intel.com:query timed out];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Action: no action



On 14/02/2026 21:46, Kohei Enju wrote:
> igc_xmit_frame() misses updating skb->tail when the packet size is
> shorter than the minimum one.
> Use skb_put_padto() in alignment with other Intel Ethernet drivers.
> 
> Fixes: 0507ef8a0372 ("igc: Add transmit and receive fastpath and interrupt handlers")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
