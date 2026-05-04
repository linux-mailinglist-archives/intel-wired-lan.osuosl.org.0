Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKeJDfMZ+Wmb5gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 00:13:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 869C64C4534
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 00:13:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 132E560678;
	Mon,  4 May 2026 22:13:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vg9WvR9LTzCD; Mon,  4 May 2026 22:13:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81ED16067E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777932784;
	bh=p1+jIK3Gq9wjEhi0f7m6B2HoDXSqYyhiHgG8M1JD0Pg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=geNjyDxCqUp+7wNpPVQuukG7G3/V4IlqU32Xa2HddttuBXn4HnO9UO9q/1nCvzKU3
	 RPAA/0BKhBCGQjlk0KEdKYpHHAXUMR7/Tuewv/jmG46DiYkHWg8LxdCH+D+yOL7Q9l
	 oq7Q2kGxafSt9PlRLOr8WlFcZCMXdZ6ncBHmiS723hAwJGW0wd9s/6xmhTLItZcH2y
	 ENlaWBOMlZBlIbHzuwSjVuwtfCNHcGp6uxJj0HeGxENGopzpE0Eh0QmmfNhmZK0N/s
	 75y91LTRGl1zRY3Vg9Yd/L/lFkkxFqXrRiMNYQmxeMFe4MTQt5oH+t1QlvleBh3l7Q
	 Ph+i/l6ksvxSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81ED16067E;
	Mon,  4 May 2026 22:13:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6793C280
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:13:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4D70F4008D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:13:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWDELOxf_IOS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 22:13:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A134E40010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A134E40010
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A134E40010
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:13:02 +0000 (UTC)
X-CSE-ConnectionGUID: WEop27acT7qKgmE1TLrM3g==
X-CSE-MsgGUID: Ut4L+4oGQN6XF8lUwwc2VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77954087"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="77954087"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:13:02 -0700
X-CSE-ConnectionGUID: P0h6SJVgToCKR4K0IBQWlQ==
X-CSE-MsgGUID: x3tWSfbGT76dllHOOBYRfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="239606367"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:13:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 15:13:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 15:13:00 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 15:13:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PrqzIL0wQSKtZdVX5Uoc5DoKFUiSj51DzgWdkmFagYDbC5S2p58JIYnlROkaqaomzRBHh5Se14ygdQdGPccml8xrIq7kBAbIHsFqy6CfTjFbAXvMUOxo1+TJrX12UvOEvapp/IWGcUEcwUv6QrVD3/2a7bIGE7Q34As3j3AL+mkq/e58hGeVBy6UlSjYwM/NIbG5NI/VlVHO2ZuMVab/2+X1JTw+WcqufT/+KaJ6Wc7AtbyiyQiQtKZF8vrSKVeG7YuEHerOMQYf6OuWV1iPeNmUuHLTaxsjBnJqxV2Fy9/XdFsKF15IlKyLule55WMWkKclNxDKy5No2a31fI64hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p1+jIK3Gq9wjEhi0f7m6B2HoDXSqYyhiHgG8M1JD0Pg=;
 b=H8/xxWBK77XhaYNQi/ZQ/jzQ0wrFuIRY2CO4Inl/dQFc6O4snEV9HTsuC+D4HDcnV8wPu3djc/S5WLZkhMYDdkhE8Gs9ODUrLb6Ug3q86hZoO5XLEu1ukWdYdGfafsLZbrCtJDhhuIgkVcLN7L0OjoxnjrM0f4ewRNO+kvj5PA6Zxjzdeet7jiXimtcu/eMWWMkoYGIVlJau7iv+zTIKoG03I5tIImRwkYn6xy0n0W8hgscLAHn13U67+qoxpyY8vDZPEJThCz9o74Stx3OWTP7hKAaVou4nHjKkPPIV/2Pap8OkhplO/9X1xCpNBmux+AfmFI+uO7nLD4ebgoUlpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by IA0PR11MB7211.namprd11.prod.outlook.com (2603:10b6:208:43f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 22:12:57 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 22:12:57 +0000
Message-ID: <92b40e66-3f68-4d4a-b0cf-47b8aea5c72b@intel.com>
Date: Mon, 4 May 2026 15:12:53 -0700
User-Agent: Mozilla Thunderbird
To: David CARLIER <devnexen@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jedrzej
 Jagielski" <jedrzej.jagielski@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260504062257.77460-1-devnexen@gmail.com>
 <2e4cc698-70da-4305-ad0c-b5258f029daf@lunn.ch>
 <CA+XhMqxjWOXVJXGUx5BE+U0S0SOOoSwaKu8eWigS=J5EfFejcQ@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CA+XhMqxjWOXVJXGUx5BE+U0S0SOOoSwaKu8eWigS=J5EfFejcQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:303:8f::26) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|IA0PR11MB7211:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aad3cd5-4703-4e4b-08e6-08deaa2a4bd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: yn0kA1PTtUeWwJyl852HzO0qJLRzuqhdO3ncoh/tYPD5uL+6NhF0M06+67apkmrWLMnF132p/inH/EKl9DlGX2hO5gTjN8S34I3LLfLtZRQGUuB0Ome/A8Bfya7nVryZz+XkMNkt+vwNau2A7uN7qytv2Hyb4qfUWDkAt2jkTti2rhmhqgRUV/sg6hWkq604Tt62HNpShlaqPXTUlEziuAmX1mBW9YHldVIcXZ8I9TvTaEC4J52ACsb9HpcQuEBU0gVs48pD5J740xcev4aNQDYXQo4pLnb/9V+8NkawpB215ZnhafSivEP/9jn1IbhddEAfhVuLRRe6UGxV738IurutYC6+m96AW2YM+mfW7cfeRr/ElLRxAy+qlUGo9EXd33nVgZ7T2p6vhOrOw2h6h9SjMtEFleO05mQBdxV3VPkozmdp/l6dW/6UjQ0CuU4IRJv/XNr8PoNBH430cmejzjYr5r6AtgmkZwJElXNHoqs0QO9B+2nTE5eXqiUsS2/IX8cWwiSe7Omsps9ca4OYn4SErYDE06T0cwCVYoimzQCMFc7nDSAdx8z0PFQFSav3k7eH0PSRr4xya/hdyBudA5P7czZcQ7nB0EjjbG2zb0cXFsaRccewKxpYHdmoIA2JsuH0v8cvyRY+vt+V+ZDASzxtHGBquYCQNwF5oVCRdZphbKaAApaa+tykXXG/jQ2b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1hLNncrWS9EQzlxRG5ENzlhTWFQMkZVV2JDUWRrVU1YTXExNi85MmNyMG5X?=
 =?utf-8?B?ck55bGtUUW1kUTgzdlhLQlBBSUtmOVpWdnJGUWJ2N3F5aDNhZmRiQms2WWlG?=
 =?utf-8?B?dGZ5Q20wZzU5RVFIMnpvMzFXZC9wWnZhdEc2SmdibnRiYWk3cGNoemJaOGkz?=
 =?utf-8?B?elhLQlNNcisyQ3dkS3RVZkxTU0pqMFJJUTM5VnVMdi9Bd1ZWVXh2SW8vNXVi?=
 =?utf-8?B?TVptZU9za2ZucWZXSWZ3Z2NOVXp6STNtZnZyUXFwenl3cHNFNjZWZzhXSDIx?=
 =?utf-8?B?UXZZdzB4dlRCS3ZCRjVRUWtqWmtkN2gzZ0VPd1N0NDZDdWF3dE9TdWVjMms1?=
 =?utf-8?B?MnZyMjZLeHJSR2srZndYcU9rNkw5VnJPaUxWZzlSSjdNcUVvNDhsM1dyUkRu?=
 =?utf-8?B?WVJJczdTaGRKNWRRMURWdTZGaC91TTJkTG1hQUZKUkMvU25WdjNCN25XZFAw?=
 =?utf-8?B?ampTZVVKUERjNWg2K3MvV0NLSlE4OStqeW9JK3dsa0Z3U3NtNkRJMHgyQ2NT?=
 =?utf-8?B?blJweVI3UEJBNXdhYWlXbWJITW00Z0VkUjM3WHU0ZURuQndRVHh0Mk44VENn?=
 =?utf-8?B?UDhtQTBKak1McHd3dWNpZ0krcWN0SjQ5UXBDSGcyaDdKdkcwT0UyTDdqVjdK?=
 =?utf-8?B?YTFoZEluQmE5S2V3SXF6LzJSLzNnZnpCV2VQVWpHelI0cDk0ZG14UHptTjUw?=
 =?utf-8?B?azFkN1NrNXRTZjdyTzhoNW12SU0zN2VIOUNYc3NRL0RoWWFzV1dLTUMwVVRl?=
 =?utf-8?B?alBpK25XeE8xL2RRSVN4TTNrZStOZGdVcVdVK0haT2xaUXNyVTJpSXU0OUJM?=
 =?utf-8?B?YVVnd1F5cWFxbXZEMU4zSGxiOWxLckdHWGxQYklzU0ErNWhxTWhLT2V3N1la?=
 =?utf-8?B?TUxSeVpkaUZVRTRnYWpxVURNQmtpcjFJZWVlRCt0WEhieXU3L2FkTFZlRGZh?=
 =?utf-8?B?SFE3TXJRWTQzSkF5Q3N1d1ROS1RBY2tSOGswbStCcnlKSUVOdXpuekNNZysz?=
 =?utf-8?B?WXBiNEhvUzM2TGlTREtVRXdmMGxHQ2JiUDUrYXg3ZzdRMTJGME9LY0xYMitH?=
 =?utf-8?B?aVVJT2VjNHVlL3doNWNNTFJINk9zcURzMGJ3MWdjb2RuQXpFeGtwMTdybEVY?=
 =?utf-8?B?LzJNM1JmS3crNk9ZQ3hBTWdqTFd1dWdOYVNZS2FKZjhZRUtIbWorMTRzRVl5?=
 =?utf-8?B?M1JzOWpLQ1ZKTmVha0p0YU5qdkIxTWcwa3k3Mk1MYkVaWDEwbzlDMlRhNVVS?=
 =?utf-8?B?UXdoUm5XM0h6TVFLalRrYTZrSUozb2FVcUZVR0lTZTliMUVUOENGSTMveUpD?=
 =?utf-8?B?enZ0OVg5NHlYczM2aHZHMzZib1UvMTlNUnJzZkpWQ3Q4SXJJeWZrWnNZNmN1?=
 =?utf-8?B?R1lvU1IyNldoWkFKRkZ6NytIQkVKTlJLWHJqZFFBR2ptVUR2dU1WVHRGbmlw?=
 =?utf-8?B?Z0pDRDBraEcxZ212QzhES3FkaTkxRFF3YS93eHh2b2RlVk52eHVZYWt0RE03?=
 =?utf-8?B?SklNK1dlYXFnOFZjMXZqWXl1dC9haW5Ea0twU05HUmtVMGR0S2RYb0dmSUFT?=
 =?utf-8?B?M0grTW05QUR3Q0xWOUJGN3VoUHBoT25WcFkzTmRhOVlvSFVlOWVLMGNTMjB0?=
 =?utf-8?B?bjlnbFQrUGE4a2gxN3JnSnJJWm1Cd2daRWZ6bzhmS2gwVW9TZEpucFhwZ25v?=
 =?utf-8?B?SG1HOHJ2UmY0aW01MVJHUmlScTFDVFF6cHZYL2FSMmZ4bTlUc051bEFQeCtR?=
 =?utf-8?B?NWYyalRZSzBzS05lWGlTY0FwajJLT3QyUXpCS2N6ODJ4ZnMxV0hBb3g3eXdY?=
 =?utf-8?B?N1F1WDFHS0JYMFhscVhRR0d0aHVTMjI2a1kzKzM2TDgybXMxVTdqd21MR2dS?=
 =?utf-8?B?R09FS21EL3JNU0xOYzd1aG5jclhxNXhIWWkyeE5jQ0ZkUi85Z1F2VUtmV215?=
 =?utf-8?B?eGJEVHdkcUJDNGdaOG1yNHFoWXJvZlgrYjU0WDFXdG9TQnNhcHJ1SGJQMUV6?=
 =?utf-8?B?U2d3Yko0RFdyT0NaeTFDVlRqd2c4cCtJcDZNU1Bta3J2M1FrbkNwalRJamN5?=
 =?utf-8?B?SDVtSzQ0Mm9tdXFieUU2WGIwNXlyNmFsa2VqeDRUWTlvR2pRcjhvR3RqbXE5?=
 =?utf-8?B?amtNaEdiV2tnWEtRME5ZM0dqZnoyc1dQSVZlVkg4NkZhcTlVZGxDVXJCNUlj?=
 =?utf-8?B?MVA1c3NMazdSK01ld0x1YlQ0QXRZWnFGSlhoTWtrZElqcVd3V3ZsWFVaTXZv?=
 =?utf-8?B?NDRONXdJMHNwaFFYRmRxRTJSOWplMGdPbDR2WHUzdkNueFJ4Ni9Va3kzOXkx?=
 =?utf-8?B?RUtyQ0FZWU1kb0N4Mm13MlBhbEFwcG81WUxMZU1RZTI5UW1QdW5Idz09?=
X-Exchange-RoutingPolicyChecked: QuzV4ITlpFQoUioJDaX5eCT9lM+AVDf/zrPqf0t9K5v8CDdJhESoQF23T6OrIN0X0FiLNFQwVBJrGklKaB9SZuRwZfY1qLHnLjjGLcp2lsxVXS01UAWFXyTIKqrdHlVdmh6ZieQNEllvADBhr5kJdwBV8lXizZOvf5UhCPepQVETNOUijjKgPg1K6FXGhfo8lzNtI1ZZD+BicupcnG63jbNGwuldMCvmJBQSqq5r70FXjtkIc2kKN6vOCyvCew6lebzOFFZLECEDAqItXL0btxCB1eu8lM8O6qmI2OJzxE5XErRZ2BVxkdTbBx2ccbLOJq3OIvlpqOxVIKHjDTzhzQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aad3cd5-4703-4e4b-08e6-08deaa2a4bd6
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 22:12:57.2655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eB3Pyo3t8Im/2cMYTl9Q5b2OvXbnkKUKveoyiR74+uW04NldKw+mcZYQdKIkE6r3shSwUZ5c/DcnQ1GOsBGxJ0lZys3rhNBRtHLWV+vXusk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7211
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777932783; x=1809468783;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZSgNWjSjLFDqR5Ojj4tN9hegFWLtcMgsoa0khO+8oPU=;
 b=eCYqg0FyKbS/PH7tW64nWwN3PaRZCPePQ88vEoVz62xFPy+ng53PRXbi
 zQbCVK/2kVwrnkJImgMa9JZhPRgPfmBExp78rs2s5rdEtGx1E1K7jQ2mt
 1wKIWXnJCqSfcrwXBnEDraQH2d5DJAVuGF5P0c0uh+ivjTfgLfyJyQk+V
 jZYgi0iNDFMSPMP2Okmbi5PqJ2E1wC33bmWBHLVOX0vOFx6TycJdAVvVM
 HQkXmvGaYh4vn9gqJKv95V0bl8kMJAQuHGyDr1eqO/OY7OSaoj8+AbikR
 qcM1DEaAnpc8QGuagno5FzJ/at/76on7OH3vlj4OtER3SDswVib02ES9x
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eCYqg0Fy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: E610: do not fill EEE
 lp_advertised from local PHY caps
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
X-Rspamd-Queue-Id: 869C64C4534
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:andrew@lunn.ch,m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,lunn.ch,intel.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]

On 5/4/2026 7:05 AM, David CARLIER wrote:
> Hi Andrew,
> 
>   No E610 here, found it by reading the code - the X550 path
>   (ixgbe_get_eee_fw) uses a separate FW_PHY_ACT_UD_2 activity and
>   ixgbe_lp_map[] for partner data, the E610 path just feeds
>   pcaps.eee_cap from REPORT_ACTIVE_CFG into lp_advertised. None of
>   the IXGBE_ACI_REPORT_* modes return partner info so that field
>   can't be right.
> 
>   The set path goes hw->mac.ops.setup_eee() ->
> ixgbe_aci_set_phy_cfg(),
>   so negotiation is in the firmware. eee_active / eee_enabled come
>   from link.eee_status from the same FW, if those bits are right then
>   negotiation works. Can't say more without hardware, Jedrzej or
>   Aleksandr would know.
> 
> Cheers

Hi David,

Thanks for the report and possible patch. The EEE support just merged,
and I believe the series has undergone testing. It is possible E610 is
significantly different from X550.

@Jedrzej,

Could you please look at this patch and the report from David and
confirm if we need this (or a different?) fix or if the code is correct
for E610 and explain why in that case?

Thanks,
Jake
