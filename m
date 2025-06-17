Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F8DADC9CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jun 2025 13:46:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0D1B8208E;
	Tue, 17 Jun 2025 11:46:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lo3112JdigCG; Tue, 17 Jun 2025 11:46:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40F188207C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750160794;
	bh=lq+jO3A6TRtI9Ppk16hOGHRaMWt0TNA7Cs4LaHj/ARE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0ZxT6DMzHqsz2RYy6gRqPTlNjUaRL3B7gk+MjMgtc7vj7jLS+ZhFYo8Nxa/vYYOaJ
	 e1rCZX+79rvdTOeN09Cb+ppAHwNOCV/7LvkNC30qzfx2p7l4TQUfp0U+I5SGam1cbw
	 /+imNPnzsMZ5OwA27puA4YIg5yKhlaZvSDY0C5lUwqShzUzXrwqPWBvAn2h/uA36mJ
	 29pipHA+GKcMP54dGS0pBU3cbDz1NAENR8z4UeKQFRnFd/dnybMruzs8V8DtyzmOPj
	 PW56MnkOHeiKf1vBQJr9S/TLa1n2tbrQMebC1edgx29yB4VFDpkiKzxZ3/XGY0mBxa
	 ixm+vnlvpV18w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40F188207C;
	Tue, 17 Jun 2025 11:46:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D025D79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 11:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1C86607D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 11:46:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AXdYxjvAupVD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jun 2025 11:46:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20A5960723
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20A5960723
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20A5960723
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 11:46:31 +0000 (UTC)
X-CSE-ConnectionGUID: /yOigH50S0yjxsh+WS+ouA==
X-CSE-MsgGUID: X1JxEw8+QPytBkCaN2fQ5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51560518"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="51560518"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 04:46:31 -0700
X-CSE-ConnectionGUID: 4yC/bZ4YQeCEMEtByVCP7w==
X-CSE-MsgGUID: 4rJV9I8mSTCznFPOP8Qb5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="171999847"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 04:46:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 04:46:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 04:46:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.42)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 04:46:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ts6K/L+c5PdHJiAMCUq8BWhwsZbbs8B6UY+gEtxE8yp4LbY3Ra82X6Ls6GBqQ90RgkBsS6FlVF1iGrOjChUPTboP5p35mVcL/IV4KXet4MzeF9gK41xzprwQm3iXgIUIYVt7ZQXOYyaI3XNnGndvq/9oEzQZxkPJ1SarljxHtJ2c1tsCTDnHH78q7BKrXgLQ1olB8nLKfOydSMD+Hc7bqP3SxBiR2Gvh8Wrl8w7/nDZFvIDOmI5bTilH92o3e8OH7/jpK6tM59JY9a6uavrwCst9LaT6Z8nwWB1WMk298aImMF8YaOKXwH9Q2KvsR0kbat2Nt7MFXm+24NVuWOcBJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lq+jO3A6TRtI9Ppk16hOGHRaMWt0TNA7Cs4LaHj/ARE=;
 b=bQbAGyDxi9TQw8Kvm06kGkwsukdD/nQEP+OmfTwWmIgq2usInjqIHf9giLs37fhQvPxYYCqqy2Ghcf79n6x6YiL0cdQl8BuHoGhBTb8EzPnExUOR6XiP7l984Lq5jS9TqjmyKUUUGFefG0YyF0dewwWboFnTEc4DYutHVbvtphHMoC4G3pTG96IytVb/UeVpVHhqGQ1F3kt/dT8zqqn3EwFwLiF+bmC37LS1bOZ9jz3DnwT2tEHD/z+qzW2faQg4+bY0uEGmF75/EjdWDUteHoL4Sq6EBzuFZdCYb9sTwIkwiBCZGgBPaumItd4+QlIgBEPui/d28epHB0mOhnu7Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by LV2PR11MB6071.namprd11.prod.outlook.com (2603:10b6:408:178::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Tue, 17 Jun
 2025 11:46:15 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8835.027; Tue, 17 Jun 2025
 11:46:14 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: add recovery clock and
 clock 1588 control for E825c
Thread-Index: AQHbvmpJOPEcAP6YGEuwZGoZPCZSMrPKy9QAgDywARA=
Date: Tue, 17 Jun 2025 11:46:14 +0000
Message-ID: <IA1PR11MB6219AD0507E93B975DC4689B9273A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250506093506.3136225-1-przemyslaw.korba@intel.com>
 <f6033421-e1b6-40ca-8d40-0c09fa65642f@intel.com>
In-Reply-To: <f6033421-e1b6-40ca-8d40-0c09fa65642f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|LV2PR11MB6071:EE_
x-ms-office365-filtering-correlation-id: c2f12591-6d73-4768-30ae-08ddad949089
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cWpZYlFHdFUzVlBuY0U3R1RzVXp5Z0ZMTTMyUVR1OEVBSmpMc2NiSTFwcW5n?=
 =?utf-8?B?c0lMV1NVeTJxTGk5Ym80ZWphQUZCcDlZQmhCWFpQWktkblVpdnFrcUozOFBN?=
 =?utf-8?B?Ry9NUU41Nmx5cjFyY2ZReERkUXJzRmZOT0NXeUovZGhQOXFVc2FnR2duTFo1?=
 =?utf-8?B?cGVvNnVJUitpdWRtdG44dHNTZWU2NC9oNzhkRHQ1dGFGb3JHYnlzZnIzTVhw?=
 =?utf-8?B?SGltbG54RWQ2RDFsRFNDc0VxdTFlVS9FRGRSSElqUmN4MHE0N2VzbDBvV3hq?=
 =?utf-8?B?bVFTL2kxK3VrSUYzOGg4d0dFTWpBcForRDJKNkpidlpPRFEwbFhueEZXcTU5?=
 =?utf-8?B?VXFjWm9Oc0dMMklOSTJSN2J5aGxzak1kbzRGQWNMMkJpNVhBZWFkc3BJakt5?=
 =?utf-8?B?bGhCUVJiOVRuMXNVQTErYkEyZXQ3RCt1a1pYd0VPbzFJVHoydjBpSHR2eWx2?=
 =?utf-8?B?NEYwK3EwV1FqRTJtbS9FMmc4K3ZScHpPeXN2dVFEeGxjbkNTaCtadlYwSHVK?=
 =?utf-8?B?bk9xZUhPOXBmSEFPaFUzQlBDa2VpRGFocWxRQ2hvWnJkNktWOTh5Ymh1c25P?=
 =?utf-8?B?bGk0L2hkS1RPa0VUbzNFQk01RzlTcXB0QndWTi92a1VacmZLb0RBVkVOalJZ?=
 =?utf-8?B?Tkt0R1hZMnJpU05IY2NKNDZ0UWRDcGlEN25GcGlaMDdCZGRoRDZ3OFZQSjJ5?=
 =?utf-8?B?b3BDdXBUWjhURjZVUGFDeHBaZXRWVVZjZzVkS0F6UEdiVU9Lb2ZVV3E2V0Yw?=
 =?utf-8?B?T040eHRVb05uRncveW0xdGxsQlpEcmo3S0hPZllpVzJxb0dQV0F6VHBuL21r?=
 =?utf-8?B?NFNTWGNVRHE5c0h1MmpvbkgrQkhlNk1LeExOdGpzVFlBMElaOFVqY2JTMXBq?=
 =?utf-8?B?eklzbzR2ZS80akNtclpnUzRSRHpxVk9udm9IZzlZSyt2bXVPaU9lT1ZkS1pX?=
 =?utf-8?B?dmhvNnpaWTl4VU43cithYWxFVUhWTU9MR1AwOWpPNXBkek5lLzFMelFURjZI?=
 =?utf-8?B?RnUxeWE2dS9xeFJpaTZUOEJFOHpoOEtrSXRsMUd2TmdVbnNrV3pmdENRZ1h3?=
 =?utf-8?B?OVcyeTA1TkpqRzcyV0s4L3FSMmc5ZkVWUkkxUWRxVTR0RmxMdHBoMzVuempF?=
 =?utf-8?B?RmNHQnVWV0FjNlJqTTBtYlpPYVkzNjRpbzdtT0NkODU1R0pzY2dDVHFORWFH?=
 =?utf-8?B?azI2WlkvV2kyK2dSOUlPUGtyNDV5UGNtZWY5aGgzQVB3NG5mbXpPZzFhMTBJ?=
 =?utf-8?B?Nk5GMyttL2E1azB4b2owZGxoMjRMV1h6ZEdFTnU1R0R3NTBoVXcyOThGRS85?=
 =?utf-8?B?elRQVTZmL1RSMThqbVV3ek9wRWRiY0cvY1hGVUVuQ2FxbGdyWnR3a1AxM003?=
 =?utf-8?B?cWkwa3MxR2xhY0MzTFp2bDdTU0l5RmxNTmx5dEhLRmZ4OWtJTnhKVmNlSW02?=
 =?utf-8?B?R1I5ZGt5NU9tRXlLaGpQdUp2VW5wbmVvS0N3THp6OHk4U1BiWVAwaTRTcUlp?=
 =?utf-8?B?eDdsN05xZjhxWXYwaGl1dWRvRWt1cTBDQ3Y0NEJqN3NEYVU2UHc5M3FpOEpF?=
 =?utf-8?B?elRZL0ExT3BoeUU5Z1BpbkNzNU5DaGFXcm9VSk1EdEpUcUVRR3orUHEzVkFQ?=
 =?utf-8?B?Sm5PNmplSDhRT0hlNndINUVQR20rOFdaZCtoTU9tWFNsQW55SnYzbnNPT3BF?=
 =?utf-8?B?VTVrTzBBWU82eXp0ZXNqSlZJZmlDcTltNmZiVnYwQ1dydW13cmFsVUVUczZl?=
 =?utf-8?B?QzM5U0s2MmVndnlnOW5XWVhQc01oVTBrUnVoc0FWelJjSVFaaXV5MDRwWjcr?=
 =?utf-8?B?TEdBbTc1MkdFby8zSFlDSnVlc1IxK2FkR2JRbDVOb1NUdXc2MXVLdFBWQklY?=
 =?utf-8?B?ZkpIQjJBOENRaGs1Z1BEM2drUks1Z3dxeFpxMmsyM0hJZDUzdlJUemUxdVlJ?=
 =?utf-8?B?eHR0K08rZWlWWTYxZGtEbGZveXI5Y2JOYWdzT1dkRExIbEVwZlRQb04walQ1?=
 =?utf-8?B?bjF3ejJoQVJ3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXJkYjJiWHVVdUFxZ1RIY2RHUWsxTXRLU0MzLzRVdm1NSEpvbUdVUVhDZ1Ix?=
 =?utf-8?B?TDhKS0ZGaEpCR0tJNTBUOXFNWS9hUmcwTTVqWEpiSnRQeWxzTWZoTTByNlZX?=
 =?utf-8?B?dU9GbTZ5MnpleW1rdFZBQmhOaExVOGNrRG0rdy9PbGozV3I4bEtabWFjZFIz?=
 =?utf-8?B?NW01R2VtOTRVRUprS0g2SFpBT0FwLzhBRE14aHZzSmdRL2JpbVdNUU1ESGtj?=
 =?utf-8?B?eG9CcUgzWllPWXdiWHJFU1ZtYnZTSTJ1K0RFSWFFWjQ2d0t6QnozNkJFQ2o1?=
 =?utf-8?B?OUNpVm9hK1dpeGlCRmJ0WUE1MGhPWWVEM2ZVRisyODR6WGs5ak1raFJNQy95?=
 =?utf-8?B?cDQ1ZUVMSy8xK0JYbXpxV1JOT2RNK1Y1ZWd6emtpNVJwNWpTWTVHREU5M2tW?=
 =?utf-8?B?dHdKdjFOeC9aU1dhUGZmc2h0YXpCa0M1UTY3L2twcS9PSU9CZlh0ZCtVekRx?=
 =?utf-8?B?NTlVcXZqUjg5T2JPUkMvcW1LYitINzgxVXV2MGVmVGkxZUc2bkVDSlRhci9p?=
 =?utf-8?B?VkhoOW05ZGt2cXFFS05Xc2J1NmRscGNJdGxGeEloM2ZVa1ZoNCtQblp3UWo2?=
 =?utf-8?B?bExjN3lmbC9BUzNheFI5eUQzN0NzQTJaUWlJbHBVV0pXT2pUUnUwUWJVNWY4?=
 =?utf-8?B?YTU2dkZNaFdsblBhbnBBSTFRcW5YZ04rU0tCa3ZQM3RneHB2eXRwbnFKM2dn?=
 =?utf-8?B?TjVMeEtTc2k2YjN2QVdaMWlGc3J3OXcrNVluK0J3bWpxSGFIam8vRU4raUhL?=
 =?utf-8?B?RDJNZ3NERXFhczM0ck83THJlbE43cCtueURnSWJZcDhOZXBpa1BWeGVMU1JM?=
 =?utf-8?B?dkxONlNqQSt2ckdXZTlTWDY5TFgycXJZRWZEL3UxNFM5V0hqNUNRV0hqOEpy?=
 =?utf-8?B?WDZ3QkRhd2RyVFpCTzFGdnY0am9FVTBlTVVaTkwwVkdkQkxKUWp2bjNpRENP?=
 =?utf-8?B?SGd3eU1lNWxaNGNCL3ZPVStWSTZKRzRZMFlwc2EyZUpWdnQyaUVSWXZHcUJP?=
 =?utf-8?B?bHNLNWhqYnkrYkxYaUJpcUpTWXlDcXpHTVhRaXlzRkkydnhhZS9MOSswTWpk?=
 =?utf-8?B?N0I4WXNvMGxUbEtETlBaUExhdExTNHpNQ0RBS3NMY01DekJZWHVvU1ZJb2F0?=
 =?utf-8?B?b0xWWW9DRndtNDM2OGhHZEhHTHA3NmJnYVBVWU5hendrMUpQZU9RZ3Y0NUxW?=
 =?utf-8?B?N1ZCeWFDcG50MU03ZVJFSEc1SHFxd2RUU2hkZXQ3Y3BJVHFsc1dlekFWbGhk?=
 =?utf-8?B?VGFiQ1ZsemJlMVNTSmJ0bmttTWdqMmp1eC94bnZlRFJZWjhFY2hyOUhtL3J6?=
 =?utf-8?B?NVVLSUNmNHVVWjB1cnVmOGc1V3NCbWEwZ0VqR2lLRlZpNkJ3QkZnVU5ibVor?=
 =?utf-8?B?UThWMzZiRVc5aHV3VTVzemZOM1cxVWJzd0RqVWprd2dNL3pmQVU3bnpHR1gw?=
 =?utf-8?B?YUpsZll3UGpqRWFTTkhOcmRDR1A3Um9xYWdsQThjVmJGdXlNeWx3ZC84ZS9K?=
 =?utf-8?B?d0NwTTdtekpDeUp3M004aHFDQ2RycEVuNHBlSHd3NkUrbmdiT1I2MW1HWFNj?=
 =?utf-8?B?Y1RPWFdDMytWS1QzOGFHRFRpVU1DTkRlWk1HZUF1S21WUjNvN1JtR0JQalRk?=
 =?utf-8?B?SWVmdUVjbG5TR21PSk9mL01SVVA1b3BLYWZ6bTRBNUM0UFc3b1cyaWwwRWtU?=
 =?utf-8?B?cll0TjB3czR4SDlLVE4wS3hSWmFLWTJrVlVCQjNzSS9DSDZtR2hHTGc2cklZ?=
 =?utf-8?B?VGN1amhLT2l0MVdSMlBDUXJ2U2diSWUyOStOZjE5Q3NtR2w4bVNlTEpReUsr?=
 =?utf-8?B?YUR6S2oreVNPaTJwUnJja1hoZGxRcmVMRzhsbTRpZmMwNzF3My9KZHY3QWZE?=
 =?utf-8?B?V0tSeDJpUVNacVpXdzFaN2FvcHZpSkRLSFQxRjZtZjFqZ3NaMDVpSVF1YUVG?=
 =?utf-8?B?eG8yVmdtUFZoRkZUUVJRZFM0Q1BTYVRNUWNYZHB5NmwvbExaWmdhNFkva0sx?=
 =?utf-8?B?NEc3a2RDdkFrTXZXNFVZaExTV2Rza0poTnNIZnpwK1doN3dNOVRjeWlsQTNR?=
 =?utf-8?B?Z29hdkxaUGt3RjFpUzJVVnErS2dISitEOWNBeWRDblFGM1RQbWlvRzBsVFRV?=
 =?utf-8?Q?n/15SsB+C0mLDV4L6DNTY/nZC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f12591-6d73-4768-30ae-08ddad949089
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 11:46:14.7870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IDkGvQZWjVUxkvyItbEBtlUbwTXt+ZZ5JMYVPMS4MWzyfJjaIV/AJO+1C3z+bxo/EStvucxPxItyvDnugLmXMEtFAEx9Q98nDCQq+23jkKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6071
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750160792; x=1781696792;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lq+jO3A6TRtI9Ppk16hOGHRaMWt0TNA7Cs4LaHj/ARE=;
 b=GSucyEpdKXr0SXXnBVNUaiK1ENqPMNbCYFox/Ytg4Jc2tRw8lDzDfLnZ
 VHrrgAuoBnto3b0hxiggO0DaaD/JLf4NkjUT5gveQ2O6JeTWPOLYx3+Ax
 lO/j1+dKoDgjFz/ZLMuZpFe21zoPMknIxN39heXYxJIRN0n6tfb7Ech7l
 wNH8Y0GqA8aSLyDZAdtBr6YJQxfU2NDhkyOmv6PO8mGvNVj8igJctfjTC
 Xp2Wcc+8rCP1WJNOhIJHxEMsosv1F6hrpxMbhHhi6rhYPtuc2baH2IBjB
 gfUbSqVItm86dEouotHQucMZTmTLdwtSZR7tiDyweTfBIrzNSnHXSlMvB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GSucyEpd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add recovery clock and
 clock 1588 control for E825c
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mDQo+IFRvbnkg
Tmd1eWVuDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDksIDIwMjUgMTA6NTMgUE0NCj4gVG86IEtvcmJh
LCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT47IGludGVsLXdpcmVkLQ0K
PiBsYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgS2l0
c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IE9sZWNo
LCBNaWxlbmEgPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHRdIGljZTogYWRkIHJlY292ZXJ5IGNsb2NrIGFuZA0K
PiBjbG9jayAxNTg4IGNvbnRyb2wgZm9yIEU4MjVjDQo+IA0KPiANCj4gDQo+IE9uIDUvNi8yMDI1
IDI6MzUgQU0sIFByemVteXNsYXcgS29yYmEgd3JvdGU6DQo+ID4gQWRkIGNvbnRyb2wgZm9yIEU4
MjUgaW5wdXQgcGluczogcGh5IGNsb2NrIHJlY292ZXJ5IGFuZCBjbG9jayAxNTg4Lg0KPiA+IEU4
MjUgZG9lcyBub3QgcHJvdmlkZSBjb250cm9sIG92ZXIgcGxhdGZvcm0gbGV2ZWwgRFBMTCBidXQg
aXQNCj4gPiBwcm92aWRlcyBjb250cm9sIG92ZXIgUEhZIGNsb2NrIHJlY292ZXJ5LCBhbmQgUFRQ
L3RpbWVzdGFtcCBkcml2ZW4NCj4gPiBpbnB1dHMgZm9yIHBsYXRmb3JtIGxldmVsIERQTEwuDQo+
ID4NCj4gPiBJbnRyb2R1Y2UgYSBzb2Z0d2FyZSBjb250cm9sbGVkIGxheWVyIG9mIGFic3RyYWN0
aW9uIHRvOg0KPiA+IC0gY3JlYXRlIGEgRFBMTCBvZiB0eXBlIEVFQyBmb3IgRTgyNWMsDQo+ID4g
LSBjcmVhdGUgcmVjb3ZlcmVkIGNsb2NrIHBpbiBmb3IgZWFjaCBQRiwgYW5kIGNvbnRyb2wgdGhl
bSB0aHJvdWdoDQo+ID4gd3JpdGluZyB0byByZWdpc3RlcnMsDQo+ID4gLSBjcmVhdGUgcGluIHRv
IGNvbnRyb2wgY2xvY2sgMTU4OCBmb3IgUEYwLCBhbmQgY29udHJvbCBpdCB0aHJvdWdoDQo+ID4g
d3JpdGluZyB0byByZWdpc3RlcnMuDQo+ID4NCj4gPiBSZXZpZXdlZC1ieTogTWlsZW5hIE9sZWNo
IDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFByemVteXNsYXcg
S29yYmEgPHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kcGxsLmMgICB8IDg1NiArKysrKysrKysrKysr
KysrKystLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kcGxsLmgg
ICB8ICAyNCArLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWlu
LmMgICB8ICAgMyArLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9w
dHBfaHcuYyB8ICA0MCArLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wdHBfaHcuaCB8ICAgMiArDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3RzcGxsLmggIHwgICA3ICsNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfdHlwZS5oICAgfCAgIDYgKw0KPiA+ICAgNyBmaWxlcyBjaGFuZ2VkLCA4NjUgaW5zZXJ0
aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pDQo+ID4NCg0KQXBvbG9naWVzIGZvciBsYXRlIGZlZWRi
YWNrIGFuZCBub3QgYW5zd2VyaW5nIGRpcmVjdGx5IHRvIG9yaWdpbmFsIG1lc3NhZ2UgKEkgbG9z
dCBpdCBzb21laG93KQ0KVGhpcyBwYXRjaCByZXF1aXJlcyB0d28gbW9yZSBjaGFuZ2VzOg0KDQox
KSBmdW5jdGlvbmFsLCB3ZSBjYW4ndCB1c2UgcGZfaWQgZm9yIHJjbGsgcGlucyBpbml0aWFsaXph
dGlvbiBpbiBjYXNlIG9mIEU4MjVDIGRldmljZXMuDQpJdCBhcHBsaWVzIHRvIDJYTkMgbW9kZSB2
YXJpYW50cyBzcGVjaWZpY2FsbHkuIFRoZXJlIGlzIGEgbWFwcGluZyBuZWVkZWQgdG8gYWNoaWV2
ZQ0KdW5pcXVlIHBpbiBpbmRleGVzIGZvciBQRnMgZnJvbSBib3RoIE5BQyAodGhlcmUgaXMgYSBm
dW5jdGlvbg0KaWNlX2dldF9waHlfbGFuZV9udW1iZXIgd2hpY2ggY292ZXJzIHRoYXQgYW5kIGlz
IHN1aXRhYmxlIGZvciBvdGhlciBFODAwIHByb2R1Y3RzKS4NCg0KMikgYWZ0ZXIgb25lIG1vcmUg
YW5hbHlzaXMgb2YgdGhlIHBhdGNoLCB3ZSB0aGluayB0aGF0IENMS19PVVQgcGluIGRlZmluaXRp
b24NCmlzIHJlZHVuZGFudCAobm90IHVzZWQpIGFuZCBpdCB3b3VsZCBiZSBnb29kIHRvIHJlbW92
ZSBpdCBmcm9tIHRoZSBwYXRjaC4NCg0KVGhhbmtzDQoNCkdyemVnb3J6DQoNCg==
