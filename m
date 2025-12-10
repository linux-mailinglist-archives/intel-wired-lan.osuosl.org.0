Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E776FCB22C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 08:16:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D9CE610D3;
	Wed, 10 Dec 2025 07:16:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vG21rvID8yxo; Wed, 10 Dec 2025 07:16:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F46761198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765351000;
	bh=RPWUmsnxyrdXnS6Ah6ZmJTjNHRCUT9vSXdNs/MA0t5U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yH1NMeq5/EsDjJm3pQM0IjNDKD6yMX3nyi44p5ER3l6OUO9X2oZv2fAgdpheteFr8
	 KIqOSoSZOXQrQETywhwbsA05qNxpLJ8A+dMbOVjKnlOw5DFkyCX56Gu9XI39UAxOaK
	 rk78YRUMRg+bMiIW+1mL0wi947UGqknVgyVxLuZlj7Zj+i5NX9B5zDuQT2bqII6iwU
	 ca/AE1K9LtexIm9OWCT7b/c+W1LU/NAoBndBitxsfBiVxCrrUb0gFgBPvJvmdgNIME
	 BcKW3pZc4/PIAsYZi5gdP2+ogYKXNxCBitRyh+8z4RIPibcqVICqCD14+MpEegMCMQ
	 7zKqpyBBkaaCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F46761198;
	Wed, 10 Dec 2025 07:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1807D2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09700842ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:16:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XMy_jGtylun3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 07:16:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E938C842E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E938C842E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E938C842E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:16:37 +0000 (UTC)
X-CSE-ConnectionGUID: gQ10DveCSKyMifGS742bpQ==
X-CSE-MsgGUID: m+moE8qAQbyts4G/vtBKHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78679356"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="78679356"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 23:16:37 -0800
X-CSE-ConnectionGUID: IiLIjY3GT6acDdnJUJItnQ==
X-CSE-MsgGUID: O8V/2sIrS7OVtZ5Jbk4TRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="195513360"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 23:16:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 23:16:36 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 23:16:36 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.32) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 23:16:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wh/ck5QoOJXD3LL3wGf7qt/AFWTBjKDvlSwwiAwzk1i+BpEm0gLSc0LjTz96PJVNh3FP42ZTfN4X/7auogdRqP5uFb9gqOTC3XbdkpLxIc0Yb5c5ic0jl3DnNBZFZViLS04yoFAVIyNaP3juU5sncigl0b05pFlIVakywrKugARMGnCtT6N5U8zmKX0OylXMN5RmOp07DBqWsN9NfMyjT0SWU4EPEDTP9QEoYnTGPJkYW3sA+HoCi1BMYf5mFYSrfRebH3JNVZrQJLRuIg6nse0oL37AkwGNs6R5jChLkBQt1aYB0kqWTm+7U0UN89HyJp2KNo0CgDgOyJxWw3X/DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RPWUmsnxyrdXnS6Ah6ZmJTjNHRCUT9vSXdNs/MA0t5U=;
 b=u0t/zricmFxL1X8CIuP8RpO5L9uDT5cQgIv8BSom8neRAJ7nafe1pvInJ7V9izl74MJlT4MREKrIkICi5EQ8ZGTzlHzY2h1uNLmGbzbYu3r4h47Vo7qWzse2AMmFS67LF6/WRhAmjoCLQZ9lWDZUtELSNbdH0XRogB2/PPxth04mzgP9vSt+BsL4Ei/hobb+afWy3wqu3wnnVzvugiQSWLBap2l0xxtkFuQ4lyWhYAzoSBuYTLvgCfbfv5S6eGGk2BhySLx9X1ODRrFpPGRQBH/n3uxLm2RJQw7/vz2kaCNRyI/aTeLYKqegdB1jaFmbxrnE0Z7UWD9tii704BBGtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB4974.namprd11.prod.outlook.com (2603:10b6:a03:2d6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 07:16:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Wed, 10 Dec 2025
 07:16:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Behera, Vivek"
 <vivek.behera@siemens.com>, "Behera, Vivek" <vivek.behera@siemens.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3 iwl-net] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHcaNeruO58TIwXOEizi3OoSKBnvLUY83cQgAGEWNA=
Date: Wed, 10 Dec 2025 07:16:30 +0000
Message-ID: <IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d3ac5aa8-3a96-4e14-95c7-b25deb848df8;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-09T05:54:50Z; 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB4974:EE_
x-ms-office365-filtering-correlation-id: 6429441e-96bc-4307-5858-08de37bc0a66
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RExKRGVFYy8ycEJzdHJnYUVlb3RkcVJ4K2kyaTVjTUxjNmhqRTRKQ0lTR1p2?=
 =?utf-8?B?QWI5VnFMUng1bkROOERGT3AyUTNKMVFkeUJlY3JhMlVLKzVIUjMvQklyRkt0?=
 =?utf-8?B?eDRrZzU4SXRMN2hqQzIyRmhTQmxZaVJwc2NtckU2WDdNZmE0YTAxOXVsL0JU?=
 =?utf-8?B?RDhFTSs1dTE3RVBWL1JXc1c2UjdPUnBsL2wzU21ETHhZYW9ZOGtPd20yVUts?=
 =?utf-8?B?MlhKSzBzbXdJSHl5ZndEVVhGR0N3cGhLMHNrdUZIdzFVVTFRNHVEUGtkRE4r?=
 =?utf-8?B?aEkrVDZWOUVXUmprdHl5Z1Z0NjAzd0hGamFDU01KY1hobGxNQkNZZFBJOGJm?=
 =?utf-8?B?QTR5bHA3d0pWNlRJM3VlRHJnOTI0cFZFdXFtYkNFa0NCRGkrU1dwVmJLNEYw?=
 =?utf-8?B?cmc2ajc2b0ZVdVZhdkRuc2xiRVhOZE1PZ1JUVGkwZXBXZ1pkNURmTWE3UWR0?=
 =?utf-8?B?QStQMk9tSFJnbHFwTUVIeWJMQWtJZDd6YnZBakdINksrNncvdlpRZ2JlVXJN?=
 =?utf-8?B?SGpHaGtaSjNJSFlCMjZLTVpoNFY0Qm9PY2RDb1JRam5JNUk1UDRSYkVNMHlw?=
 =?utf-8?B?NUxmeFJvUmhOMUhRTjRrQUdWMFRpaTVubXhQUlVpYWZSRWxSRWNQSlpTSDRB?=
 =?utf-8?B?NHlSTk1MU0I2MzY2cXpYS0RwSkRpYmsvTmFacTVBdGxkTFN5MFBNNi9iZHNv?=
 =?utf-8?B?OXFXZ28zdHVESXQvNGhsYTVKdFY2RGxmMzNERFN6WFVONnV4KzFMbjVETG9s?=
 =?utf-8?B?RjZTN2ZMcEdWT1BiaUpKYjc1MGZCa3g0YzE0RG9CeWs2NWs5elpSWURJK1U4?=
 =?utf-8?B?OEJhamdnVXN4bXhOQnM2QkErM3l6d2JTRWg4bGViWWFOd21pQ0pzK3p0NFpW?=
 =?utf-8?B?Q3dxZzVKeW1iVm1GdmFxV1ZtaXpJZm9BWFh0NG9CbzYvRUpzUmpJWktGbmlZ?=
 =?utf-8?B?M2k1dUdhM2hhcURWTkdsb2tiZzZVYVhYd2tXMjlMU1NQVGlsNk5uamhIUThQ?=
 =?utf-8?B?MVROc3p5U1pjeEtwcVJ3Z1lZNG1vZ1pkUVNFLzM4K0UxV2dsQ2NLTzhkVXRl?=
 =?utf-8?B?MklqT3VKbWozcURKSlF0ZzNlRWhEZFNSdE9RREVDY0hqWVAxR0lMbW15MlQr?=
 =?utf-8?B?USs4aFg3Y3JnRUFENVliaGNFYXZBUkVDenM5NGxGTGhkNVZjT3JkUEpRQlM3?=
 =?utf-8?B?UnVLVUdHNzB4VW9PQStRblVSVlNnNzkwOGlEWGFqZmlNYitWRHdyTGJSSGFx?=
 =?utf-8?B?ak9TdGUyd0VJcFhONkM3Tlk1bWpialRabjlkRXV3U004TWsxYUZiWk1qNFhI?=
 =?utf-8?B?cnRlQnZuZElmMCtKQ0ZXS09zeDNIUEZDNFBZcEtra3JjdGZqVnUwRTEyK0xW?=
 =?utf-8?B?NnJvdXVxdDQ5b0NaMWFRMFF1THpDNkppaDlUNFhrM05ibDVlU1hsQndQZVJ5?=
 =?utf-8?B?OWo4MHdtS1BxY3A1aThRTzVFRGhlT3VvS00wdENPR2kreDRTMGlrTjhMOHla?=
 =?utf-8?B?L3gzazg1QWRONFlkVTMzdEsvVjFJNWU4ZVBqQjZKYm1GRWcxbENsUUNjSWdD?=
 =?utf-8?B?eU1IalZ3TWU4QlgvdDFMaG9yYmh6dFN3aDJveGg0RVVaT0ZOSVdxbk9GTFlx?=
 =?utf-8?B?S1JUMXowSWprNnZSYVkzMFNrUThuYWdVa1A5ZW9qaUtvN2hDT3ovNGRrZk4z?=
 =?utf-8?B?RGYvSUlFODlmSXByci9OczZaaWdGQ0w2N3hkM0tORmVhNU42dUJFQmYxRkwy?=
 =?utf-8?B?RzAzRHVjR0J4UUM0TUE3ejRyL0NrWSthckRLa0ZUZm9oWVJERjRTVVNuQ0V0?=
 =?utf-8?B?dTIxV1pnRXpYMmI0ekpsTEI4OEFFanJ0N3hJRDVvUkdSdVNaR2FtTEExakxM?=
 =?utf-8?B?eTZvSnNNajZ5TEdCVTVaU0ludzJvYkpvdVNweks3MmhEcVZlWWVQTEdkbWZt?=
 =?utf-8?B?NmVCZTJmckFhdHgzSm5HYXBYbHc4aG01UEZkRUNIZFJGaEt6MWs3S2lXY0c5?=
 =?utf-8?B?dmYvQ3lLenF1NDVGTFVpTVN5d29iVFZkcjJYem5wQlhjTWg5YUZPTXNEM3dN?=
 =?utf-8?B?emw3RWpaZ2dZYnBNbW5UdXRlZUF3SXlMODRqdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0Z6b0hyOWtSd1JlMElqd0k3QlR5bEZnNmRsNncvMUhMUVhNNmc3WStvWXlR?=
 =?utf-8?B?WkJpN0NIcWxEa2s1ZkFlQmF6SEpHQkdhVmYwcWN3TllyK0FoKzU0OWNCRkNP?=
 =?utf-8?B?SWJmckRMUmVIS3pzalM0aE9oU2tMY2ZNRDhUVUJVcHdwRDJCNEN1aEwyL0Rr?=
 =?utf-8?B?Sjc5bVdtNXNlaGF0ZGt5NWsxektLZ28yN1hRY3kzYmx0aWVDT0NodVZmQjIx?=
 =?utf-8?B?VmZHMXVpZlNsMC92SngwMW03QUlOelNBTlBPd0JhZ1ZtaDJWQ25WcGZEbENi?=
 =?utf-8?B?cTUyZUNHT3BOek1DUmZxSlVUWnFBT1YxMnlKK29ZbWRSNnRtWlFSQ3RYcGRI?=
 =?utf-8?B?ZUk3YlhKMXNMWGdERkxZWkhXbzVxWUpYalRsNnE3N0daNDdxdml1VXZEamVM?=
 =?utf-8?B?bVplODM3U1l5cGdmcXo2cEVOUkJNTzMwRXZxOWxvMERrNVdjU0dOTm1IK1JF?=
 =?utf-8?B?SmZ4ZGxFajRLekhmSmR2RVB1R29YNk5iUzIyY2NGZHlDT0RVZnNuS1BuMDZ2?=
 =?utf-8?B?bEE5ZHA2SGVpbE5kZGtaSWtLVGh0LytBVXhrVTArNXZ4T3hzZEdlMXgweFNh?=
 =?utf-8?B?Z0MvRjZ1L3ZnRGJwcW1EV0NZN0g0cEpVUGgwdGdhLzg4OE1FZytDaTd2eTUr?=
 =?utf-8?B?N2VRMjRndStkblNhZ2VkN3VQUjlvcHFpcmIybSsrMU1JZXRXN1B5OTh0ZHE3?=
 =?utf-8?B?S2tnRTVJc3hycmN1bGdqS245dE45eGN2YkJXMTYvYjNSVmYzVmhKNVFYNW00?=
 =?utf-8?B?L0tnc0NFMk9LOFE4MzF6L0lJZi9lZUR6NnhPS2JZV1d5QmxMRDMweWo3OGlK?=
 =?utf-8?B?a2lMeDZPYVorZGd5MzVMc05NZitwUXdCdithdC9ybSt0SXJSdXZHKzQwUWVk?=
 =?utf-8?B?MVYySXFOdE1Hc3Ria0tKcVlScmh6dUt0RSt5bHdwSGE5bDNLNVkxRGEwUVJJ?=
 =?utf-8?B?Slhjc3B3UEVaenZuRUZEaTE2d24wV1g1Ty9aSVFWQWc5eVhOQ0E2TkY0M1I4?=
 =?utf-8?B?SUlCbUdyY000cVVTbTY5UkpmSWRBd0xTSVZvOExIaUVOTTkxQXB3WW9MOFdz?=
 =?utf-8?B?R1pDa2IwTkZkVEowU0xvVUNoMm5XeFJZSFJ5cTYvM1JPRGUrQjl2aHIzRTZy?=
 =?utf-8?B?S0RTVG1VOG9FNGtGU3oxV0xFcVpmdmI5dEk1UnUwZWpMMGpNM1ZRU002cmlx?=
 =?utf-8?B?OURFbmhlSS9WS3Q1OVR4ZUtFSGRiSjFVQ0J1K1pkd1VORkRoTFRINGhKYU4x?=
 =?utf-8?B?N0xQMXBDVGtBWklrQlRPZUJnanE5WWFMZmZzYlljQjcreVZaNDM2Z1ZxcHN5?=
 =?utf-8?B?WElVSlZsdTBxQTRTdDR3U2tvRlNsdTlNRGFvbjd3OHVhQUxzQThVZmUvbHl0?=
 =?utf-8?B?dlhUeGtWVTBkeTV3YnlIVUluSEVQaWhvTjl6ditEV1NjZkQ3ZFM2UnFEL05i?=
 =?utf-8?B?QmY3TW01SzJHTVhvaFpQWDR0N05LYmNYSk9BT0pPNWhOekIvLzlVSm9VTENn?=
 =?utf-8?B?cFp4QU85UEl3cTlwZnJvcWQ2dTdPY1NwN0tXV0xJZWpaMnpiQXV6YlB1RjJp?=
 =?utf-8?B?NTUzQThVMjFleVRxOHIzMjQyNHltNElvbDdTQWY0WC9NeUVKcnJ3bGtNVlFt?=
 =?utf-8?B?OTFTOHRQVnRiYVNQSVJXeEU5ZExqR3BJVmdCNmF6MU40dTZyOGJqKzR6bDh0?=
 =?utf-8?B?TllwUDA0T2lneXVKV2dpZGxIdXF1UGMvZVhFN0ZUQ2t3dGQ0Zjh4d1lJekpT?=
 =?utf-8?B?Q2duQ1R1YVh0dFRZaFdmZmVSQkErbWlUSkFLOGFIdGxRZjUzbkFkYzBqa1ZV?=
 =?utf-8?B?L3Y2aTc4ZjZYUjFjSFRhZVVxTWFSYzNTZ3BPV0dIdHphQzUzMStnWXJtOFFk?=
 =?utf-8?B?YkY5QTgxc1ozSHlhNUlaUFVTMnZKTS92bVhtRE9iYlYxUW1Ya3dya09FdG9T?=
 =?utf-8?B?eURrVG5RY3BiVEZrNklNeDlnR0w1SS9XbGgwMnUyQjFTamxNSjJMRUMzUkhl?=
 =?utf-8?B?L3YxdE9oV0RYR2Rsa2FaSWwvTGhCNWJwb0g5SFlSU2x4Q1RNSk5VUlBnenpv?=
 =?utf-8?B?QktrMENKc1NyMU00dDhDNWEvTElRWWhpTzZUUEdCWmpSOStlZ0hqTHhRdjVj?=
 =?utf-8?B?N0FGbEFxVWJQZUxUQTU5eEhPRCt6Q0dCdDJPMWlTNXpLSzVLaVF4bDg3TWxw?=
 =?utf-8?B?b1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6429441e-96bc-4307-5858-08de37bc0a66
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 07:16:30.0849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G3+AXEb1PQXnDuogysiTXq3YlP/VHoSYdgJHkcYLM0pUby3n/O3JprD1SJnIcgjSntqbi1v568pDgg9MBbd5mdUWaC6Plhj/Id0BJCkgYgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765350998; x=1796886998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RPWUmsnxyrdXnS6Ah6ZmJTjNHRCUT9vSXdNs/MA0t5U=;
 b=JI0dP0ks1r6Jqo4s2FlLrYSVa9EmbF5SKzuIdUbVTUHabM17wWib/go2
 0Y718noU+3Sh6vujOdKO7bbJ95HoRdG8Mp1DamRptEomy/PFx7fPCNFeF
 /Gf7N9SoM5RpflzYlztsOfh+PotfmG4WV+2AkQGPWm2YUF3FsyxBHTpXG
 /zmo55AXl0DQYEJeLA7eKq/EKS7CYFxuXStvuQdiVEWJ1vOqkij3TpKRN
 sL3X7Wjs6NsY74AJEGvGygX5jj/jbO7TFWTPOgmpA/vfBq4jOigh42oLV
 PFBCvRxA2WkLv4gt0H2JBpJUImWx/o27OXKYSj9W8LjGTyRFMYZ7SiyJV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JI0dP0ks
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogVHVlc2RheSwgRGVjZW1iZXIgOSwgMjAyNSA5OjA2
IEFNDQo+IFRvOiBCZWhlcmEsIFZpdmVrIDx2aXZlay5iZWhlcmFAc2llbWVucy5jb20+OyBCZWhl
cmEsIFZpdmVrDQo+IDx2aXZlay5iZWhlcmFAc2llbWVucy5jb20+OyBLZWxsZXIsIEphY29iIEUN
Cj4gPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNs
YXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNo
PjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0
DQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9y
Zz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0LmNvbT4NCj4gQ2M6IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4g
a2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0g
W1BBVENIIHYzIGl3bC1uZXRdIGlnYzogRml4IHRyaWdnZXIgb2YNCj4gaW5jb3JyZWN0IGlycSBp
biBpZ2NfeHNrX3dha2V1cCBmdW5jdGlvbg0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4t
Ym91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gPiBPZiBCZWhlcmEsIFZJVkVLDQo+ID4g
U2VudDogVHVlc2RheSwgRGVjZW1iZXIgOSwgMjAyNSA3OjQ3IEFNDQo+ID4gVG86IEJlaGVyYSwg
Vml2ZWsgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT47IEtlbGxlciwgSmFjb2IgRQ0KPiA+IDxq
YWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA+IDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPiA8cHJ6ZW15c2xh
dy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+
Ow0KPiA+IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMgRHVtYXpl
dA0KPiA+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVs
Lm9yZz47IFBhb2xvIEFiZW5pDQo+ID4gPHBhYmVuaUByZWRoYXQuY29tPg0KPiA+IENjOiBpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGlu
dXgtDQo+ID4ga2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiA+IFN1YmplY3Q6IFtJbnRlbC13aXJl
ZC1sYW5dIFtQQVRDSCB2MyBpd2wtbmV0XSBpZ2M6IEZpeCB0cmlnZ2VyIG9mDQo+ID4gaW5jb3Jy
ZWN0IGlycSBpbiBpZ2NfeHNrX3dha2V1cCBmdW5jdGlvbg0KPiA+DQo+ID4gQ2hhbmdlcyBpbiB2
MzoNCj4gPiAtIEFkZGVkICdGaXhlczonIHRhZ3MgZm9yIHRoZSByZWxldmFudCBjb21taXRzLg0K
PiA+IC0gQWRkZWQgJ1Jldmlld2VkLWJ5OicgdGFnIGZyb20gSmFjb2IgS2VsbGVyLg0KPiA+IC0g
VXBkYXRlZCBzdWJqZWN0IGxpbmUgd2l0aCAnW2l3bC1uZXRdJyBwcmVmaXguDQo+ID4NCj4gPiBG
cm9tIDMyNDIyNTg4MzU4YTUzN2VmNzlkZTRmZjYzMGU0NDE0ZTJjNmI5MzQgTW9uIFNlcCAxNyAw
MDowMDowMA0KPiAyMDAxDQo+ID4gRnJvbTogVml2ZWsgQmVoZXJhIDx2aXZlay5iZWhlcmFAc2ll
bWVucy5jb20+DQo+ID4gRGF0ZTogRnJpLCA1IERlYyAyMDI1IDEwOjI2OjA1ICswMTAwDQo+ID4g
U3ViamVjdDogW1BBVENIIHYzIGl3bC1uZXRdIGlnYzogRml4IHRyaWdnZXIgb2YgaW5jb3JyZWN0
IGlycSBpbg0KPiA+IGlnY194c2tfd2FrZXVwIGZ1bmN0aW9uDQo+ID4NCj4gPiBUaGlzIHBhdGNo
IGFkZHJlc3NlcyB0aGUgaXNzdWUgd2hlcmUgdGhlIGlnY194c2tfd2FrZXVwIGZ1bmN0aW9uIHdh
cw0KPiA+IHRyaWdnZXJpbmcgYW4gaW5jb3JyZWN0IElSUSBmb3IgdHgtMCB3aGVuIHRoZSBpMjI2
IGlzIGNvbmZpZ3VyZWQNCj4gd2l0aA0KPiA+IG9ubHkgMiBjb21iaW5lZCBxdWV1ZXMgb3IgaW4g
YW4gZW52aXJvbm1lbnQgd2l0aCAyIGFjdGl2ZSBDUFUgY29yZXMuDQo+ID4gVGhpcyBwcmV2ZW50
ZWQgWERQIFplcm8tY29weSBzZW5kIGZ1bmN0aW9uYWxpdHkgaW4gc3VjaCBzcGxpdCBJUlENCj4g
PiBjb25maWd1cmF0aW9ucy4NCj4gPg0KPiA+IFRoZSBmaXggaW1wbGVtZW50cyB0aGUgY29ycmVj
dCBsb2dpYyBmb3IgZXh0cmFjdGluZyBxX3ZlY3RvcnMgc2F2ZWQNCj4gPiBkdXJpbmcgcnggYW5k
IHR4IHJpbmcgYWxsb2NhdGlvbiBhbmQgdXRpbGl6ZXMgZmxhZ3MgcHJvdmlkZWQgYnkgdGhlDQo+
ID4gbmRvX3hza193YWtldXAgQVBJIHRvIHRyaWdnZXIgdGhlIGFwcHJvcHJpYXRlIElSUS4NCj4g
Pg0KPiA+IEZpeGVzOiBmYzlkZjJhMGI1MjBkN2Q0MzllY2Y0NjQ3OTRkNTNlOTFiZTc0YjkzICgi
aWdjOiBFbmFibGUgUlggdmlhDQo+ID4gQUZfWERQIHplcm8tY29weSIpDQo+ID4gRml4ZXM6IDE1
ZmQwMjFiYzQyNzAyNzNkOGY0YjdmNThmZGRhOGExNjIxNGEzNzcgKCJpZ2M6IEFkZCBUeA0KPiBo
YXJkd2FyZQ0KPiA+IHRpbWVzdGFtcCByZXF1ZXN0IGZvciBBRl9YRFAgemVyby1jb3B5IHBhY2tl
dCIpDQo+ID4gU2lnbmVkLW9mZi1ieTogVml2ZWsgQmVoZXJhIDx2aXZlay5iZWhlcmFAc2llbWVu
cy5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2Iua2VsbGVyQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMgfCA4MSArKysrKysrKysrKysrKysrKystLQ0KPiAtLQ0KPiA+IC0gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMgIHwgIDIgKy0NCj4gPiAgMiBmaWxlcyBjaGFu
Z2VkLCA2NCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiA+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gPiBpbmRleCA3YWFmYTYw
YmEwYzguLmExMzBjZGY0YjQ1YiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfbWFpbi5jDQo+ID4gQEAgLTY5MDgsMjEgKzY5MDgsMTMgQEAgc3RhdGljIGlu
dCBpZ2NfeGRwX3htaXQoc3RydWN0IG5ldF9kZXZpY2UNCj4gPiAqZGV2LCBpbnQgbnVtX2ZyYW1l
cywNCj4gPiAgCXJldHVybiBueG1pdDsNCj4gPiAgfQ0KPiA+DQo+ID4gLXN0YXRpYyB2b2lkIGln
Y190cmlnZ2VyX3J4dHhxX2ludGVycnVwdChzdHJ1Y3QgaWdjX2FkYXB0ZXINCj4gKmFkYXB0ZXIs
DQo+ID4gLQkJCQkJc3RydWN0IGlnY19xX3ZlY3RvciAqcV92ZWN0b3IpDQo+ID4gLXsNCj4gPiAt
CXN0cnVjdCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiA+IC0JdTMyIGVpY3MgPSAwOw0K
PiA+IC0NCj4gPiAtCWVpY3MgfD0gcV92ZWN0b3ItPmVpbXNfdmFsdWU7DQo+ID4gLQl3cjMyKElH
Q19FSUNTLCBlaWNzKTsNCj4gPiAtfQ0KPiA+IC0NCj4gPiAgaW50IGlnY194c2tfd2FrZXVwKHN0
cnVjdCBuZXRfZGV2aWNlICpkZXYsIHUzMiBxdWV1ZV9pZCwgdTMyIGZsYWdzKQ0KPiB7DQo+ID4g
IAlzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihkZXYpOw0KPiA+ICsJ
c3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+ID4gIAlzdHJ1Y3QgaWdjX3FfdmVj
dG9yICpxX3ZlY3RvcjsNCj4gPiAgCXN0cnVjdCBpZ2NfcmluZyAqcmluZzsNCj4gPiArCXUzMiBl
aWNzID0gMDsNCj4gPg0KPiA+ICAJaWYgKHRlc3RfYml0KF9fSUdDX0RPV04sICZhZGFwdGVyLT5z
dGF0ZSkpDQo+ID4gIAkJcmV0dXJuIC1FTkVURE9XTjsNCj4gPiBAQCAtNjkzMCwxOCArNjkyMiw3
MSBAQCBpbnQgaWdjX3hza193YWtldXAoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwNCj4gdTMyDQo+
ID4gcXVldWVfaWQsIHUzMiBmbGFncykNCj4gPiAgCWlmICghaWdjX3hkcF9pc19lbmFibGVkKGFk
YXB0ZXIpKQ0KPiA+ICAJCXJldHVybiAtRU5YSU87DQo+ID4NCj4gPiAtCWlmIChxdWV1ZV9pZCA+
PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiA+IC0JCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJ
aWYgKChmbGFncyAmIFhEUF9XQUtFVVBfUlgpICYmIChmbGFncyAmIFhEUF9XQUtFVVBfVFgpKSB7
DQo+ID4gKwkJLyogSWYgYm90aCBUWCBhbmQgUlggbmVlZCB0byBiZSB3b2tlbiB1cCwgKi8NCj4g
PiArCQkvKiBjaGVjayBpZiBxdWV1ZSBwYWlycyBhcmUgYWN0aXZlLiAqLw0KPiA+ICsJCWlmICgo
YWRhcHRlci0+ZmxhZ3MgJiBJR0NfRkxBR19RVUVVRV9QQUlSUykpIHsNCj4gPiArCQkJLyogSnVz
dCBnZXQgdGhlIHJpbmcgcGFyYW1zIGZyb20gUnggKi8NCj4gPiArCQkJaWYgKHF1ZXVlX2lkID49
IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+ID4gKwkJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiAr
CQkJcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0KPiA+ICsJCX0gZWxzZSB7DQo+
ID4gKwkJCS8qKipUd28gaXJxcyBmb3IgUnggQU5EIFR4IG5lZWQgdG8gYmUNCj4gPiB0cmlnZ2Vy
ZWQqKiovDQo+ID4gKwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0K
PiA+ICsJCQkJcmV0dXJuIC1FSU5WQUw7IC8qKnF1ZXVlX2lkIGludmFsaWQqKi8NCj4gPg0KPiA+
IC0JcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0KPiA+ICsJCQlpZiAocXVldWVf
aWQgPj0gYWRhcHRlci0+bnVtX3R4X3F1ZXVlcykNCj4gPiArCQkJCXJldHVybiAtRUlOVkFMOyAv
KipxdWV1ZV9pZCBpbnZhbGlkKiovDQo+ID4NCj4gPiAtCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+
ID4gLQkJcmV0dXJuIC1FTlhJTzsNCj4gPiArCQkJLyoqSVJRIHRyaWdnZXIgcHJlcGFyYXRpb24g
Zm9yIFJ4KiovDQo+ID4gKwkJCXJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCj4g
PiArCQkJaWYgKCFyaW5nLT54c2tfcG9vbCkNCj4gPiArCQkJCXJldHVybiAtRU5YSU87DQo+ID4N
Cj4gPiAtCXFfdmVjdG9yID0gYWRhcHRlci0+cV92ZWN0b3JbcXVldWVfaWRdOw0KPiA+IC0JaWYg
KCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3ItPm5hcGkpKQ0KPiA+IC0J
CWlnY190cmlnZ2VyX3J4dHhxX2ludGVycnVwdChhZGFwdGVyLCBxX3ZlY3Rvcik7DQo+ID4gKwkJ
CS8qIFJldHJpZXZlIHRoZSBxX3ZlY3RvciBzYXZlZCBpbiB0aGUgcmluZyAqLw0KPiA+ICsJCQlx
X3ZlY3RvciA9IHJpbmctPnFfdmVjdG9yOw0KPiA+ICsJCQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVk
X21hcmtfbWlzc2VkKCZxX3ZlY3Rvci0NCj4gPiA+bmFwaSkpDQo+ID4gKwkJCQllaWNzIHw9IHFf
dmVjdG9yLT5laW1zX3ZhbHVlOw0KPiA+ICsJCQkvKipJUlEgdHJpZ2dlciBwcmVwYXJhdGlvbiBm
b3IgVHggKi8NCj4gPiArCQkJcmluZyA9IGFkYXB0ZXItPnR4X3JpbmdbcXVldWVfaWRdOw0KPiA+
DQo+ID4gKwkJCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+ID4gKwkJCQlyZXR1cm4gLUVOWElPOw0K
PiA+ICsNCj4gPiArCQkJLyogUmV0cmlldmUgdGhlIHFfdmVjdG9yIHNhdmVkIGluIHRoZSByaW5n
ICovDQo+ID4gKwkJCXFfdmVjdG9yID0gcmluZy0+cV92ZWN0b3I7DQo+ID4gKwkJCWlmICghbmFw
aV9pZl9zY2hlZHVsZWRfbWFya19taXNzZWQoJnFfdmVjdG9yLQ0KPiA+ID5uYXBpKSkNCj4gPiAr
CQkJCWVpY3MgfD0gcV92ZWN0b3ItPmVpbXNfdmFsdWU7IC8qKkV4dGVuZCB0aGUNCj4gPiBCSVQg
bWFzayBmb3IgZWljcyoqLw0KPiA+ICsNCj4gPiArCQkJLyoqKk5vdyB3ZSB0cmlnZ2VyIHRoZSBz
cGxpdCBpcnFzIGZvciBSeCBhbmQgVHgNCj4gPiBvdmVyIGVpY3MqKiovDQpKdXN0IGEgbml0LCBJ
IHRoaW5rIGl0IGNvdWxkIGJlIG5pY2UgaWYgeW91IGNoYW5nZSBtdWx0aS1zdGFyIHRvIHN0YW5k
YXJkIGxpbnV4IGNvbW1lbnRzIC8qICovDQoNCldpdGggdGhlIGJlc3QgcmVnYXJkcw0KQWxleA0K
DQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gDQo+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlv
bm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
