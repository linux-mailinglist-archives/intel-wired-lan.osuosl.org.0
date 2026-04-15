Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJ08Oi4k32ngPAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 07:37:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0B5400813
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 07:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B83956F6F3;
	Wed, 15 Apr 2026 05:37:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KfUJKZqamnjI; Wed, 15 Apr 2026 05:37:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0C7A6F6F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776231467;
	bh=8zDSG9nLNcI1lfOqvBjcDv4QXYxPuGsIQIASUpC4qqY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VgNuzsR+wOS3sTthfc5sl4neFX94eGDupdzTI0sbpP3j0sxtEFQUOnMSpVLNifFPx
	 iNvteFXLII/nKXod4TQ2tV3/6kawxsfTL/KGYLtuW8LmG1BGsc5/l8OAugvwj7kAAR
	 +04fQaLfUhkqJsfDGynr0dlq+X24f3bxxIrdVeyx5Fn4bH0PtSReJjvtRH8bwaCUPM
	 6nZqTH+WjG0xQSMlykmp4cjACChuixchxSzcmXwWIZNXw4zP40x52d6Vi/iRRk0M2W
	 T7/jNOc4QJoDuXoZfyHD95NsP96kUj1/6qYMB7QRdRJbyW6DORkk7BZ1b3Ik9xBRAd
	 F8I0+ihv9lCCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0C7A6F6F5;
	Wed, 15 Apr 2026 05:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F519283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 05:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55195447BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 05:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WSYXliSJ0rXs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 05:37:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F30F44352
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F30F44352
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F30F44352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 05:37:43 +0000 (UTC)
X-CSE-ConnectionGUID: fUpvSLOqTfeUf/9VPOfxLA==
X-CSE-MsgGUID: gLzJbjh6Tge/035srLd2Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88278185"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88278185"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 22:37:43 -0700
X-CSE-ConnectionGUID: I6oQ9m/wRZy8v9wF/TjXbw==
X-CSE-MsgGUID: M3V1HlQ6S5qQA1kGURwEZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227128653"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 22:37:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 22:37:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 22:37:42 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 22:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CLemUKm7MUiEiM0V9eZxIiG4sVj2tM0z+E7Uz/yNKDY3FgIhjZLV9fyylVaTARXEWHbsUtRTOAqX2QB6Qr7K2LCT2UIVXi+is1CYSZapWtrU1s4ZoEJm1esdnMba2SQkaR4ktNVF++rHdO602qoKJLbGZ62dVaumCp6dKDZh3OeHbF1jcvRLOP3FLbJw5+R55dAQdTg5qvafRhc7ejIbN78CO4PZe3n2fQFUxP+OPLxag/AT8/Gor7H4rjzR6t3Uc/1A00ZSV8vUQ0Dp+8K4oUjb0r+3GVnNjVb3eOJFSS6OdypAgmrm+D3p8ZsOPCklhdn37KorpLsAgfPfaKlYbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8zDSG9nLNcI1lfOqvBjcDv4QXYxPuGsIQIASUpC4qqY=;
 b=bLz/yk6+9ptoEi4wmdkGe0851EilHINYVyLt1Wd2eF/XgFBAQ2p12MlPxXH+lfHo5JA9/XqZTqvnsVkrJ2ki6L7Z1kq50ps3xs6OjTxZt5GKNxgeYaaXDCgvNoiX+hSO40rJJz0tLwd6pSSVH8kHgS6hH2eOYcT7G7p8YGYlafG02PtBtnWv10lfEtK784hqo3rqRKvOLZLPlp5je/BBpFaaFY9Tt5QUAfIB2+u3NpS4GtRQ9FQ+md7dCBCox8MDYGvyZs9cDL9oip1W/QYLGICG3+Lhcb5FTUvG7qC16fnQnkjGdP7epCXFU8iljsCm3kUuq2CQwbvJGc5Ra49c+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DM4PR11MB6165.namprd11.prod.outlook.com (2603:10b6:8:ae::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9791.34; Wed, 15 Apr 2026 05:37:38 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Wed, 15 Apr 2026
 05:37:38 +0000
Message-ID: <143881d9-02d5-42be-bf77-9fe9e8353c06@intel.com>
Date: Tue, 14 Apr 2026 22:37:35 -0700
User-Agent: Mozilla Thunderbird
To: Guangshuo Li <lgs201920130244@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Joshua Hay
 <joshua.a.hay@intel.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <stable@vger.kernel.org>
References: <20260413112030.2694563-1-lgs201920130244@gmail.com>
 <5da15f31-e9af-4f8d-82fd-eac29a6d98f6@intel.com>
 <CANUHTR8uNVWR48xs90s+MtGQ6J-1j5R0+64MKVGin0cf-FjRWA@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CANUHTR8uNVWR48xs90s+MtGQ6J-1j5R0+64MKVGin0cf-FjRWA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:303:8f::13) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DM4PR11MB6165:EE_
X-MS-Office365-Filtering-Correlation-Id: c516553c-d5aa-490c-030c-08de9ab11ae1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: bRvWixvwUCyTo/q/9+Uz25lMUR4fXUHvjdGlBq7a9gJGTKKcjbuBKe3kbvCUEbvADOm63J3EYysiWub0k+LLCEFBO66b0jNktk/tICKYS5YIlULkO0maOkDA/1RcDbUAWhk0af0MMwIwcYP8H+DpVU2lAk6k6lQgRbCZ8HSo0hq/xtMHPQFWZlk2dKxWdJGmJPPq5GGTZNHDOM9To5DCpRIs01QHLG8TX7WDLUhz7KgZakf+22jWfnfCg3RKsL9fVoRpg8WP0dIXXk4vnFPkCDon3MuNn0yibDIFx1q4rusYNhhTW3GPGQ/UpgCv0czH1o/oQM/DFcGE2VzkdTCnG+af5OBlsRuIAO7CmZNiIRMObEvVlm/nDJx6zf3Vh/2qc5cy0NoVNX/IaRiR6ERQV22EdHgtmBSpjH/8GxUZLxZCtyfw9FfMBIiJBsdIuZyuhZSdm5H5kBQO7CoSdH93ASJbN2wT1W9JppCNp7CZflVwKM/FvNJwYsB2Yw0a8FWdVVBGIay1pLIO45IWDUnH/Jbr2XmTm3rvMWF7KEqim/NlhMgHNgEdLm1f6fD8/RP9hB3Joi+H3Qa84Vpy9wx/JHA296/Hl+H05Qmza4I+3HO5rYMNRRnZ1g0N+OEqmnqgCS9wCPinxNDQVg7RKFSp7JwA/2BgYlGgDhmAsTcvSX51cYl6ttw1Bg/oIjg8qFLw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzZ3MTJMc3hPOTdCajNjOTd0RlVPRFNMRFVyUGlJd0p1VUhXaTlsRWIvMUJl?=
 =?utf-8?B?TXl5OERGSmc0WDE2T1ZZa2oxTUJVSkVJd3FwT2pzK1Jmd1RIU0xMbFdnZzVo?=
 =?utf-8?B?U0pEM3BJQUh1MTEvT2xaU3N3TjdPNGZMMnQ4ck42cmRkZG13TklvMEhpYm5L?=
 =?utf-8?B?Q25PaFF5L3dNVmU3OU9EYnpDdTdhMlB1NFNtVnFReVpNWndTL0Fxd0IrYk5h?=
 =?utf-8?B?RjlXaEQ3cEFvMnFQbGJYazdHR1NSTVZpR0lSNjdnZnNYZC9OckIvS01Cd1Vs?=
 =?utf-8?B?WE02MDQ3bGdBQUloRVZ0ZlRIcmtkb2I3K2w4ZUVVMC85ZnQ5OEZzSSsrZ2ZS?=
 =?utf-8?B?SE0rZVh1TGJmN3dwMGpqdGxVRlozUWNpbTVBWDdKK2NFckR2YlhxWXQzSzVx?=
 =?utf-8?B?M3lqZlh0RlBHTUFXZWNnQ3d1TlFrRjNtMnhuYU4xUXVRdVQ4a1RYOEtqOWND?=
 =?utf-8?B?SU5BN0tLOVdOYkRkQ1NZeENqZHZaSGNUdnk0YzRtZGg3dHNuMkkrdlk5MVhM?=
 =?utf-8?B?TXB0cEtRTDRRamhpK3ZWbGdQakVhMDZWRnRHOExYQ1J2SUlnZG1rWk5zTEZx?=
 =?utf-8?B?OGpLQys0S1FoN1JqRWNrbWw0K0l5RFM4RkVJTk91d0tacFY0SFoyRnpOckRG?=
 =?utf-8?B?T0FVNDErdzlHclVSMk1IVlovM2hrNFhHN3N6Umd5Q2VMM0ZhVEs1ZkVROTAr?=
 =?utf-8?B?b0VjdWl1Wm5qTU01MVBqckpDbncwS1dRM0tUd1hqZUY2bVlla3MzNXZQYVZ0?=
 =?utf-8?B?bVRlc2lQRXlQd29pME91cXpuU09tdTg2eVlFVGNSQTluSHZ4UnQzRjlsVkJ5?=
 =?utf-8?B?NE13MXRKQTF2TjB6cmsrWlp0NFBMVXVUeUFGcEtuTS9hTWhyMVhJc0xTMmVZ?=
 =?utf-8?B?NWdZcCs2dnNINTg5aHYydkc1cDFpNE9Ray84VlBWdWEvbGVwMzVrMWdhYm03?=
 =?utf-8?B?OXg5UE9mOXkwaHpFU3RHVEdwV3pUbXFsUnFGejFHeEdpd2RvckN6OWJIR25o?=
 =?utf-8?B?L09iYlQ5TVBWOXd1ZHFVTHJ2TVdDVFhsU21qVEpoVm5NTCtiZk80NU1FM3Bj?=
 =?utf-8?B?c3F3Y29QWldGZXNLZFIrT3kwemFEdTdVdXp0KzA5TStBN3NhOFFUWCt3V2Y2?=
 =?utf-8?B?aTRscWVGendPTXYvdG9tTG1zVzJXNm0vMGFQRjZubG5MSmQ1S3FLbkJpVDVx?=
 =?utf-8?B?MW5RYXdlSmJSUDJhU0V6QTZwUEdpcWhWVk91Mk1rSVVoQ2tUZzh5cC9XdHhD?=
 =?utf-8?B?UVhmTkdFNzVPY2Ywcmd3MDYzeG5ocGpKVDFDTFk3SXRFN0plRThTdG0vRzA3?=
 =?utf-8?B?RncySGdhYi9ZMzZJSVhRck9pYzI3amxvcEtid1RiMmE3bTRrVVMzdk42TFhm?=
 =?utf-8?B?VHgzc1F6QzErekpuOEtOTVFKWGwzWDhoU0x4cGx5OHhrd3pjMGtuRzJqc2xy?=
 =?utf-8?B?bTVvbkxoY21iQmpRU2V1SUZWV21QeVM1WDN0eFVSbG4yU2RWaWtiY0M5dnl3?=
 =?utf-8?B?UTIvSGhSU1dibTAyUFBXMHM3c1ZaSUNYV050OUh1ajJxY01tTXZEVmRDdjBK?=
 =?utf-8?B?UnRHUmZ3ODhhNXYxVlNEcmdaL3U0VStpUkk2QlRHL1hBZDhIUDRXZU9GaEVS?=
 =?utf-8?B?dXE3RFdHc0lMSFFyV04zUVZJSjhWblNCTGZDcFhld2pvM3BzWWRhbUM1NGd2?=
 =?utf-8?B?M28ySEpjM2J2QlJNLzhTWlV5QVExZ1FObytkeUIrdlJnb1U4emR3eWZHYzVz?=
 =?utf-8?B?VitQVnlpaTVvQ1F1QUNnOWtxUUFUZ2hqZ1N0QUFTeHZ3LzBpUWw3MGpLNzBx?=
 =?utf-8?B?SmlGZ1pxaitvTHJmdVUxUm1KWkRUQlhmcCt6eGl4U0JPd3lUUnVsUEhkN2Zp?=
 =?utf-8?B?a3Y1RjVzMVA5NDBqc2VVREszRWJJYXNuMUU0SzhYWnpGcmpaMDdyOWMrK3Fq?=
 =?utf-8?B?V2kxVHJtNVluRm00dGlLK1dGSGMvR0VTS1B1YVJmZVpZcHB0TUdmcnpmVlhJ?=
 =?utf-8?B?cHo1UmsxVkZxNkdpSXhucHpZdDdvTFQzWnBNK1VnNW55QXFIbGxKUHpLbTVv?=
 =?utf-8?B?MUhCdlJFMmxXVEovZ2QvK3IzenMwNUlyanVpZVNxOEwxeEJyeWFjblRGemVV?=
 =?utf-8?B?Q080THIzeTJ4L0hXNHI0MEs5S2EyUitmbXE2SlFzeXp2QSthS2lLVDUrL25l?=
 =?utf-8?B?SDNsK2hKRVNOZkFqeG40ekNBOHlJUVBWaW1xYTV4MERuLzVtT2V4bStZekgz?=
 =?utf-8?B?RjJxNmIrdm9JMG5jZWpnbmFTbHFVTnpua1dKS3hsdHNhL3NzSXYxSHNKM2hy?=
 =?utf-8?B?SjVxL0ljNXhYdDdKRzU0QmpyQkhra1QrQlJ1Q2V6ZWNXZnhvc2REQT09?=
X-Exchange-RoutingPolicyChecked: t9DiD0Uygu8XXll8UIxHZ3lrgyQdkGPDFBoHTpSdKA+1Lmckn2bQgoQstwG0umcs7VTF60CdyCpq8e5G/fI5nHuV+rfwRdIziH5Kr5d9xYt9Pq0K8C9gqBXAUSpnZYxnrmbMTbS2V+5Dg9dJTJPXWF4mReMr2/bdNldXDuWF9MIiUh+Db7IOuOhiOWnrW2iUEkBvv1ThDkdx4kp40hit0U7kb3zcd1v8TwlIDhVxM6Npu54W/WfYXNKc6Dy31uIwSJDb2/kVfN2153ryxnpMECZ0LIL8Nz5Irf3icwCieSSytG9F7JzljANzNRc/HPZMibRQ7I2o3vo3CSycoRZ/qQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c516553c-d5aa-490c-030c-08de9ab11ae1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 05:37:38.5738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Dz7dExczYf2AaMAlTLYqeB2Enx+7e9v4Qhkye2DHSjA3/u2/G+LbVPHaeRjnymuyC6IMJFY223eLrA+0L8AmgYjZEy8CJjSLMNDPZdggu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776231464; x=1807767464;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FnFUR3OLejkPf7awXM9eia4WuNBl1W5um2jrCCW6mPc=;
 b=ef7teomWk5v1b7FkQoFGtLP8qQf8aeWVlmCKxD/pcjwf5gqScpf8wMzO
 c4dUFLnUFNs91p1bkELBv0HvyEY8qLxPsotznAEE5+xkmup6a7vIR3jeY
 OWYpS7foxWb9xHF7dvg2ndWE5bt2mLVce98nK82A39Jv69qLXjD9V5bBu
 X9wUjjWg+cnsbfsCsWJuO1H9urqz2xE7cVBP2JnX0BPj+4ymMoeZM0z3f
 475oJEyVoUTsHHXyYamh5BYd/VQDvR1pMSBLfxTX5EN0CpWbMcuThv/79
 /4oQ8ufPd7WnwheIAlxJsMiibnW/SLDYqc3eyCNJPheNfcnzboYEyIr5w
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ef7teomW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] dpf: fix UAF and double free in
 idpf_plug_vport_aux_dev() error path
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lgs201920130244@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:madhu.chittim@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:gregkh@linuxfoundation.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: AA0B5400813
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/14/2026 6:47 PM, Guangshuo Li wrote:
> Hi Jacob,
> 
> Thanks for reviewing.
> 
> On Wed, 15 Apr 2026 at 05:03, Jacob Keller <jacob.e.keller@intel.com> wrote:
>>
>>
>> This doesn't look right. The commit message analysis seems to match this
>> fix from Greg KH:
>>
>> https://lore.kernel.org/intel-wired-lan/2026041432-tapestry-condition-22ff@gregkh/
>>
>> But the changes do not make any sense to me. It looks like a poorly done
>> AI-generated "fix" which is not correct. Greg's version does look like
>> it properly resolves this.
>>
>>> v2:
>>>   - note that the issue was identified by my static analysis tool
>>>   - and confirmed by manual review
>>>
>>
>> What even is this change log?? I see that version was sent and everyone
>> else was sane enough to just silently reject or ignore the v1...
>>
>>>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 6 +++++-
>>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
>>> index 6dad0593f7f2..2a18907643fc 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
>>> @@ -59,6 +59,7 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
>>>       char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
>>>       struct auxiliary_device *adev;
>>>       int ret;
>>> +     int adev_id;
>>>
>>
>> You create a local variable here...
>>
>>>       iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
>>>       if (!iadev)
>>> @@ -74,11 +75,14 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
>>>               goto err_ida_alloc;
>>>       }
>>>       adev->id = ret;
>>> +     adev->id = adev_id;
>>
>> adev_is is never initialized, so you assign a random garbage
>> uninitialized value. This is obviously wrong and will lead to worse
>> errors than the failed cleanup.
>>
>> I'm rejecting this patch in favor of the clearly appropriate fix from Greg.
>>
>>>       adev->dev.release = idpf_vport_adev_release;
>>>       adev->dev.parent = &cdev_info->pdev->dev;
>>>       sprintf(name, "%04x.rdma.vdev", cdev_info->pdev->vendor);
>>>       adev->name = name;
>>>
>>> +     /* iadev is owned by the auxiliary device */
>>> +     iadev = NULL;>          ret = auxiliary_device_init(adev);
>>>       if (ret)
>>>               goto err_aux_dev_init;
>>> @@ -92,7 +96,7 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
>>>  err_aux_dev_add:
>>>       auxiliary_device_uninit(adev);
>>>  err_aux_dev_init:
>>> -     ida_free(&idpf_idc_ida, adev->id);
>>> +     ida_free(&idpf_idc_ida, adev_id);
>>>  err_ida_alloc:
>>>       vdev_info->adev = NULL;
>>>       kfree(iadev);
>>
> 
> You are right that the v2 patch as sent is incomplete. That was my
> mistake when preparing/sending v2: it accidentally dropped the adev_id
> = ret; assignment, which made that version incorrect.
> 
> For reference, the original v1 patch is here:
> 
> https://lkml.org/lkml/2026/3/21/421
> 
> In v1, adev_id was assigned from ret before use, so I believe that
> particular uninitialized-variable issue was introduced in the v2
> posting.
> 
> Sorry for the confusion caused by the broken v2 posting.

No problem. I had missed the other version, which explains my confusion.
Still, to my eyes, the fix looks to be an equivalent fix as one
submitted by GregKH:

https://lore.kernel.org/intel-wired-lan/2026041116-retail-bagginess-250f@gregkh/

Do you agree this is effectively a different fix for the same problem?
Or is there really two different double-free issues here that both need
patching? I haven't been able to fully convince my self either way, but
I am leaning on this being one problem, and I think Gregs solution feels
simpler to understand.

Thanks,
Jake

> 
> Thanks,
> Guangshuo

