Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIHlBf0B4GltbgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 23:24:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0E0408235
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 23:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92B38605C6;
	Wed, 15 Apr 2026 21:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ll68Fcsc9yl7; Wed, 15 Apr 2026 21:24:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F879605C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776288246;
	bh=4aeY6KNeuZkjQ86ehcQ577perAhKwLIgsVl3aRyb2Yw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h+zdKzx70TLwumko9ykuRXwMQYsK8Gp0Lk/PDlv3bDdHkFGsQ3YC/jFQ50ile+EiY
	 Rao63Cc0WEwOwrVMgxvTVvF9kEs5jIYckOyZ3YLy09lDhv51l6YSLh+70V/HErTrri
	 hlPovHFS0Efuf8YpeVDIpD8fZ0eLMzTBYeXF/5N1NZcvlqtAW2+Ttl6OUVIZZCP95r
	 x/8gu5MLw6ZvuLfqBRa8kLGYQGr3phZSr7PghOp+sB+WM7GKS1hRCOmWig0FgH4Mek
	 HwrqQfPapybUf2D8gajsDGW4z9I4WUTvPYSs/ZES2ElOSfbEFeJdS5ghjWF8X4vHQb
	 puFhpDqd7mrMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F879605C7;
	Wed, 15 Apr 2026 21:24:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F8FA2CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 21:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10F0A605C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 21:24:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gd9mG0xmIkkh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 21:24:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D9C09605C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9C09605C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9C09605C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 21:24:02 +0000 (UTC)
X-CSE-ConnectionGUID: hKQBpOvTTGqB2oF2JK3GDw==
X-CSE-MsgGUID: qbIvYBvSRi2d+lCJwD+Uyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="81152424"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="81152424"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:24:02 -0700
X-CSE-ConnectionGUID: GPI58w7DRcei/tfUEhK4JA==
X-CSE-MsgGUID: zYDc6/gtRVW7TCU/LGF+9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="230777224"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:24:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 14:24:01 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 14:24:01 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 14:24:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IoFCYkptTsc0SerPlYXY1/nqWKoWuB72IHXXwt26/6plR+yHIuRHOuJ2l0QSEHkKf09Ae7DnkMBBtWUTAar4/H0jb2WK034o3179yZLg2AMlOH1egpdtjKnGYzEbE2kAcgA1jMd9nYc+Gqu+FI+pM9wQhcIqIdiwQSmnWoSGfqX/IXCqowTPmjTqNkeO53bUJ5o6tKGAfeXNmgtFJubV3XaniOIp74JdfjOLITiMY1HMSZPQRza0yz43w44IxVC+ubDc7hu7iscCESaslE1asTDHO/R/BtxifOiE0rIomiOIbLTfC5hHkleSdmdDW9s8RXFSTpJQk0+s6Gc32tPRWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4aeY6KNeuZkjQ86ehcQ577perAhKwLIgsVl3aRyb2Yw=;
 b=Imyvia/G4wJCdQUe6cWST7hOh9R3ydsbdDT8U+qw0DCWCDc/OTGRCHGY9WVjoIY9gT/2Z/bEjUB7J4oVgy/Xp2yVlxDUdkdlxHCNmEpgfQacy5HhackY31IwnBqR1Gl6sMnXoj9Td49bdr6wSHSR7aJiTnjQesB/DFg7BVAW8KJguSfpvpn5UgrZvfJW8cQ+wAH82/gh4IfTrshfeE+xbrFetU/+jND97ntXRrd+4Kcgd27B8aymx1T89Nxhwqud21O8BaWTljyijXHU+sGyieXceAayt6m7smDuBkcUpZzbg7+Rgl1INn5gyYkGQQxsIrLtLnCbCbY7ypa4rDVMOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.17; Wed, 15 Apr
 2026 21:23:56 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Wed, 15 Apr 2026
 21:23:56 +0000
Message-ID: <363a062f-4e73-4492-adef-98687b53f5b1@intel.com>
Date: Wed, 15 Apr 2026 14:23:52 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>, Petr Oros <poros@redhat.com>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Daniel Zahka
 <daniel.zahka@gmail.com>, Paul Greenwalt <paul.greenwalt@intel.com>, "Dave
 Ertman" <david.m.ertman@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>
References: <20260413191420.3524013-1-poros@redhat.com>
 <20260415163003.GP772670@horms.kernel.org>
 <f30ad78e-1eb9-4c9d-9034-c8873966de66@intel.com>
Content-Language: en-US
In-Reply-To: <f30ad78e-1eb9-4c9d-9034-c8873966de66@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0195.namprd04.prod.outlook.com
 (2603:10b6:303:86::20) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|IA1PR11MB6097:EE_
X-MS-Office365-Filtering-Correlation-Id: b2b85555-e6f9-40e9-1587-08de9b354cd7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: ZXeAnMaH7g5Gk6F0lWXdO0EX0YPaKPnIQB3B7h8a4PKChYXzRO19wYs8EBzTZlekQV7N7btGuCu5QHTKv91H4BRJdubKITQHAvgioJYYYVmBO8hNEQcLT0vmJLX6byU2nB4+FIxpk4ClEUyxdZbxOkUCvl840kkJU3cke6wleX8qndfdH19lPp0czAisWlW9c2E/68GX3cUMOpv+R5kOC9HeqY68CFYMlZi3gqpJhdR6RFjlFIm17yLmpCp+giKcOUvJ1Y/5ApYYj4PxXRkgzxmvBWBgAQc+igCsqbOE2kFgKHFkx+Zkyc+aA0bVNgkGZZnblzmmqCHxtJG4pbL1y4vJaTdAomy6Zb+/Ae3GMX9V/RBCArwyqIASmP746li4mLgy388zLLi+/rYz6+onlMytmnfBqRqVjjVmoKwqde9xnQa7PvpjkIRNJAK/eeQeFlD45PkUwHuaRuFsZ6Lynv9b6AAAQ0Y9zNbdG9JTIoqr+miJQ2NffZY0MQT+1igvWMkoh8Gl6e6QDZNMBeQOFDM7gkdeWp4mAQhMIJT+OtRcA98akp57680Hx/DFVDm9+oZ3mzc3XBp+5EYaN/E27KNjXUbWq3tzf7WSLuqZ7D+MlMfeTkObC+hKLjeSDl0n8R5N2sBZqOqEi4PFiszUs840uRkhrMkV5xZvZ2r6VQ+9HbXx2mD0DElJoR5nZdG1FXzdHiT+ZrCLXq24cNbtRDRuNVajWcklLQsu0JEX9W8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OE40dW5IREZJRUV3VVNnZ242a0gwcXlLNFN3a2hkaERLdmdpM1FOcEZYU3Zh?=
 =?utf-8?B?REVabkxpQS9hY0xrNDAydFVlSmtQbVlFcndVVGFzNXBnL3lqbGw1bDJ5ck9X?=
 =?utf-8?B?eUZtTVU3aUZBWVkyOUNkS0p6Vko0bjRWSUo0cGRQVnBHSmVjeHVwOGcrMkgy?=
 =?utf-8?B?QmdUUzlHUlZvUjJRTHZsOUN0OS8ycmYyVERLWEllVHFKTENDcjU4eFQzV3Bu?=
 =?utf-8?B?RWVxOFJxRU5qbzBOYmduZTZuSGJFUlJjbWZCRWtIYnNDbTVSb3hsaXBVUXlq?=
 =?utf-8?B?T3NqRHFVdFFwN2RHamFWcHRlYyt0bE1hQXFjSDc0OFF4TFkwTVR1c0xIZXVn?=
 =?utf-8?B?b0k0ZG13U1BDK201aHBBNVRYT04zdEIzTmxEYmZkWE9ncnV2MUpJdzM5UlRC?=
 =?utf-8?B?Z2xEWjJuR3NxUkpsUXpXTlkvVXNZSDBIalcva3dJNHh5UC85UUYxUkFjQ2I0?=
 =?utf-8?B?SkY2a0pCbUYzcTJSbmwya3RPdEpkN0NENVhsejJUQ1ZFWXB1Ti9rbXJuK0dv?=
 =?utf-8?B?ZHdzZFAzMHJPL1RDVE9uRGNMb3VwU3RXWUt3SXFlSmpicnpmc2V2eFV4MEtU?=
 =?utf-8?B?K2dQZ2phbDJtTUhta2JOVURjcUpCRWdsakFkYWtPTTFRM25TR212NlVFWjE2?=
 =?utf-8?B?K0hJUEZsTUM0N2VJdDl6TXZWOHZHYzJuTTF6OW5KUjA4VThHR1ZQUytYVGt5?=
 =?utf-8?B?d3hSd0dERjJaTFFCVFFranAvZm1tZjZOMmZFclhrMVNLN0ptbkxaMlRybitS?=
 =?utf-8?B?b0EraUZlVGx6WXhCdlZ1RFAzQ0lCbTBneGV3R0dheER6MUZRRkI0SWx3N05F?=
 =?utf-8?B?VERSWW5rR2RFV3VpSkloSHJuK1Jlc1pwVE15RDZJNmgzZEtnTkxQQ01YbUNj?=
 =?utf-8?B?YlNXUmRLbytCSk1EY0o5UWFVcUVPdHhTb2hLcWJLdlN5dWFnTW9KZlVvNWZQ?=
 =?utf-8?B?eDBFWmFBOTR0TlJDbnI4MTlmUjhtZ1RXanBTUW14MmJpN3BkekNvSjg4MmRi?=
 =?utf-8?B?QUxKUEtGWnFBYnpPWURjcHltdWtJZ0ZBemJycXFkb202bG5qazBoUTYzWnNr?=
 =?utf-8?B?UXpaZTZJRG13Ym4vU1ExbERFdDJleUs5MWhmM0VTUllleFdRSE4wTzhDT1BK?=
 =?utf-8?B?cStXTUZXaWVqQjVYeXRTTW1VY2Q4dDhqc3U5bVRjK2V5Y0ZRcmNwaFdWQ1NH?=
 =?utf-8?B?eWt2VlpYejEyemRyVWRpUHRqb0M4dk5xODlLdDVLUFZDblB3K0RqVTQzcmNl?=
 =?utf-8?B?Y2QzMW9LRFlUcUI0NkFyNUsyNlo5U3dUTEl0K0ZzVzUwdzgzSlBTS1J2U0V6?=
 =?utf-8?B?T0VXUkJhYVhTcndvb3d4M084RDVWRytzTzdWUGVNbTFkellxUloxTTE4dFh1?=
 =?utf-8?B?MFptYjVUZnRDQ2FwbmVRZVJhSW9qTmJPdU9OWnc4Mmt6ekFYdlQ5ZWhIS3A4?=
 =?utf-8?B?eHZvTmNIWTZ6bVFJdzh0aE9IWlg1WVFzK256ODgzK29rWXRqMEdaTS83ajhy?=
 =?utf-8?B?K05yS0xNSFJtWUxlTnB2K2kxRDkrUUEvZzQyZi9tU1Q1a0NES0FKQ0JNWFYx?=
 =?utf-8?B?Mkw4MVNRVmR5aHFPeG1LNVppRjFoV3V2SVFxR085U1ZlUllVaUh2aHFhTmFm?=
 =?utf-8?B?V2czVTJ1VCtmWmhqZDhNeS9jcUdLaWtPYkludlZ2Zmg1Zk50S1JUK0ZTSXNn?=
 =?utf-8?B?Tkk2NE16YlNPTHFvNnBZNSs3R0s4MFRlQ1JHZzI3OUdBcytkRE1IWWtjSGZn?=
 =?utf-8?B?RXRaRjU3ZEdYRS82S1hlR3lEV0k2L01zYXZsanJiZ0RiN0lBWC95NkVRKzQr?=
 =?utf-8?B?bll4Wm55a0FhQTdjTzJwVllZSXYvczMxSm1HbWU3VVRsb0ZtUVByUng2ZUJI?=
 =?utf-8?B?K1JQMUZhejg3ZzRJYzVNZDI2N3E1dThQZE9pOG4xUEtCQkVrVzd4cG1lckhB?=
 =?utf-8?B?LytQdElPVEs2amdaUmdycjdIU1JFM1RrVHRDaTJPVmttdmpEMUc0NjV0dmlt?=
 =?utf-8?B?Y1Y0TmJTL1pKcmgvMWJNcGh5SWEvRndFTXZFTDFDMzI0Z2U0d2JXeTViS0Q4?=
 =?utf-8?B?SFhRdFhWYi9TUmF2RHdhRit1aVV3ckZ6cTB3N2kzdytoM2paQ200Y1gySlBs?=
 =?utf-8?B?TG5JT1MyZE9BWmdtUTdEOHkwQU9DZ0tOTnNybXA1dTVxRWxOSldYWUtrNXFh?=
 =?utf-8?B?NmhBd1VXaDVZdkdENUREOG51Q01tVm5FdlFFekUrMko4aWJxL1dJL2luR1Jr?=
 =?utf-8?B?aHVYRms1S0o2YnFobEU4cnp1WmNDWkdvNmtRS1Rjb2dyZVI5Q29GcXZJTUpB?=
 =?utf-8?B?VU1OcDBrWk1BTmRpUitqcmlwR2habzl6Y1c0WVNVZ2cxUEd5c1d0Qi8zck5F?=
 =?utf-8?Q?JGdVEJwZHyTI36DA=3D?=
X-Exchange-RoutingPolicyChecked: T3roxbFIWS62CFG+SyUDFEwxUY+b6m24IlXc8RDb1eQfT2xMWyeC7LA8ImGaBkAwYNcUXmTIBOL85L2hw7KABEetGkZJI14gDEB1qOZJabdyUoMYxC16K+KOUju4S964jHdofUnOQDnF0adQXcZBFix9Vsi8xy2YBrkUjUk30/bHJldY905V8U0+ztmpA75axG/f/mvGzDJLiwLFf6nsXKXonRBvFcAk3+QOpkmZ9naXUPE8vno/eRWERnPqP9spLuCdsRHsw2llhlpiFGJpF3omn1V3EywWi8yDPLzv2rn4pLAGuFeiq9b4z9l2Bn5LF63Ft0H087YLmSjfBHi+LQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: b2b85555-e6f9-40e9-1587-08de9b354cd7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:23:55.9634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xJ4f++2aM6TtKY2fqPtVM13ihrfHF/lBl2B55GveakwWPEPonh4d6BtubwImCXJ8EM4GRY+8qtT6hTQYbZZ+x4vp7pgjNhcz928DZqBJlVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6097
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776288243; x=1807824243;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x6u0aG0d1yadygxVcRtRmsGrmT+rIuIgWc5+l+gSzm0=;
 b=aMjSR2NPG/DXGJf0oTftoyZddJRA6G6FqZzJhIgDZW4WN8XPtvcfsC2Z
 +Q21VXrGlPDWbHBroDsT4XpVY2NS6kzRSdPyb+xiLQ+Fnn/eNACjKDPCi
 QKq1aef3ru+NTyj/SLZv+n2Ukb1ApYlIrHZV/62ZRUFEjVlfr17c+vHEg
 kt4TwA27KDTs6XK2FqdbHB6doTi36c7t/ACjFu++fzp0fm6a1O4K3jvfK
 agfdn7wqP0ok4GRSZnnczI65ARKTsItq65Hjh6tJfjiTfoIOvllyz94Yi
 A4TXBnNxQ2NygNJtveYt0A5bmv65+PCo1tIg9SMQbB25LlHaxaOJPhmVS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aMjSR2NP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion
 in ice_cfg_tx_topo via ice_init_dev_hw
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:razor@blackwall.org,m:daniel.zahka@gmail.com,m:paul.greenwalt@intel.com,m:david.m.ertman@intel.com,m:michal.swiatkowski@linux.intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,blackwall.org,gmail.com,linux.intel.com,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.991];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 7B0E0408235
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/15/2026 2:22 PM, Jacob Keller wrote:
> I'll take a look as well. I recently included this fix in Intel Wired
> LAN update last night, so hopefully nothing too problematic...
> 

Correction, and I need more caffeine: I think I had considered including
this fix but didn't quite make the cut last night when sending.
