Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C819F4475
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 07:54:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC96C610EC;
	Tue, 17 Dec 2024 06:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TSbm1TsKIS7M; Tue, 17 Dec 2024 06:54:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC7F260F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734418483;
	bh=vnc+PpYlXte67QuXY+S7hT3qegkHWmtLFc5vIOrWyBs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nEJqL487bQ+a0dqAHXWpB8pTtbfj9+4igtFxiM5LAXYAoIOr+NNnDs3ajFEtK/LS+
	 eRM3PNJoxIWszVee348CDMM3416PBnE/YF5A5wvwAuNULMNaRIBSddpax+MVCA2BaS
	 oBMENuzJx13n30Mwah867cB43vxE76AL0zqjygQ1JQkADnlWRk6ceJWLku+O9ctQi0
	 fbpVaZFD48TFfNAzK5+0MH0Dm/tXSUa+kwB+F/GgfC3L0ZubWQEbhL9b6OdbM1qBH9
	 PgB3OZQUmz2hFluCPY3Tqdy5+lnFQEqetP3Ej93xcb4nXtyaXnvNlC0Of4Xm/r23d6
	 JoisBwTdHqqFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC7F260F7B;
	Tue, 17 Dec 2024 06:54:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 63B3BE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 06:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C11C408E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 06:54:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AenQLIa9emTb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 06:54:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0433B408A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0433B408A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0433B408A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 06:54:39 +0000 (UTC)
X-CSE-ConnectionGUID: IQ/4n90JQLq2AItquKRWqw==
X-CSE-MsgGUID: xwRn0diKQKeaHO06+riquw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34979684"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34979684"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 22:54:39 -0800
X-CSE-ConnectionGUID: MSrOqdHUQrGKZ7lrBIBs8w==
X-CSE-MsgGUID: 0xwclEK+RIi916k7e2t/lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="97480895"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 22:54:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 22:54:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 22:54:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 22:54:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U10EgB5b9dYpqXPuqnFdZ9GebeqjswQ+N05qSUVsUXh5CdBtbfp/v/alXKPCq+JiCghHeq5gEKgnuHZK2Kk270d0CuZnv8oChqI52uG++MMDSAlGujaqRvdDzm+lTOXfvCPMwNUioLsG+I1PlBglYRZ14LQfoso0W22HhJkLB3khGs1hhI765SgvtENNtfEsqT8SYLOWMdojFAk6QVbmeeEO3loP69neEGPqMO53Y5y/Y3ooYPy9Nu0Supfe1MopUKJw5p4ZI81hFyXMHfqV6mj7Wsib6E3eeRlW80WpsE7n0TlBnXQEJj6vh/NaOHOgyWmVowNUAbD9OYM757pyDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnc+PpYlXte67QuXY+S7hT3qegkHWmtLFc5vIOrWyBs=;
 b=xQGmpudS/a7dfwd9Nkh1FgODkxGmxDV36eq362OGUmfvrXxc+7WnH2MobZ/CgR193Tr3gzVKLwjnirmKA8RhQDg6dq/V1Ebd6USmO3MKdlVkxN/8tAhbiZskwqvRUD1hnEHtdT6E8AqwMcJrCK+/dDn6X54QzvBloHl176BSMiUjmE/5fvLynfieYFc/D+Q1boEIRWx8OY2XAozfbAO2Hu5/KnlNK1BbxtDt0X8FDeu7YDl0PXH+dRQYjg0HLHWmwsFHFGwymuPoHBOuPtrqdWvdlBifJMMYnPwd8qJRAE3UyUf83uZf+pq4vXeofaN55oreYb+iRT9n1jpKYFbK2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by DS7PR11MB7952.namprd11.prod.outlook.com (2603:10b6:8:eb::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8251.21; Tue, 17 Dec 2024 06:54:30 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 06:54:30 +0000
Message-ID: <afb768ff-4c1f-4bf6-889e-b602170296b2@intel.com>
Date: Tue, 17 Dec 2024 08:54:23 +0200
User-Agent: Mozilla Thunderbird
To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20241216051430.1606770-1-acelan.kao@canonical.com>
 <a1c44976-9e88-4d58-bad8-34fd397ba626@intel.com>
 <o6u6fr4znqfcznzq47jlqojdf34vdhardfypw3kl5y76pxjk6n@cxcp2mlsv62k>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <o6u6fr4znqfcznzq47jlqojdf34vdhardfypw3kl5y76pxjk6n@cxcp2mlsv62k>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::19) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|DS7PR11MB7952:EE_
X-MS-Office365-Filtering-Correlation-Id: afd0d436-7124-449b-7c15-08dd1e67a77f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Uy93TmVEU3oyOTZTbm1SbmxaYm9BWkVkNFlMdjBHVnhOZW5KQnljaFR3Nloz?=
 =?utf-8?B?YXJJUlo3ZXdsUGNkeEdQd1pvN3YvdHcyd3NvaHVpb3IxWEw4ejE5YVFYSXlP?=
 =?utf-8?B?bmlxelNHSXBnQ0xGeWRvSkIySHlSS3dYVnBaeERjT0F5RFJ4U0pRdmpYUUFj?=
 =?utf-8?B?OExLNVI0bnFBQmRoUlM2VUMxZis2cWY1SXcvOGpTODI4RTZqQlJpUjV2OHJW?=
 =?utf-8?B?dXRHS2RlaGE1ZlVVeWRFVkJ0WFFpRU4vd3lSZHRlMGQ0RUtXK3htNXZmejI1?=
 =?utf-8?B?SEpIdkdYM2V5Ym5BZ3lRTjVnUDNzREFPQUZUMXRXTXlCNUt1VVdRRlRKNWZl?=
 =?utf-8?B?SjlPKysxZ2FxNUZWNnEyQXVBMTF5RXBCVm9ydzR3WS9BSUVUWSs4VmhuQUYz?=
 =?utf-8?B?dmJDbmNyMXErQkVMTVI4Vkd3T3VvSEpCMit2UXFOYXdMUWw1SDk5dnZ2Sjhh?=
 =?utf-8?B?K3NTQzF5cUoyVTNjVDVvb2V0ditlcWtBTkkxeUdmQlRzV2xQckUxaE8vMW1l?=
 =?utf-8?B?RzhCWHM0ZGd5a2xZMW55ZDNFOXZKTUtyVWxCZlhLbjJTTzcrNmI2Q0x3aEJT?=
 =?utf-8?B?Z2JRbXZJN0FhTTBkVUtPM0pCQVNpaTBHN2hBK0hXNnVpMmtpQXcwK29mWHU5?=
 =?utf-8?B?VWpZdWNrR2wrSU1PQ09xeGl4ZXJUSFN1TlZ2anhubGUxVTdqeXJSbGRTM3Iv?=
 =?utf-8?B?L3RZbEkzdm0xRTJia0hrSDJOMUJCdkF2Y2xPZWhxejRxcktBYUxOTkhYWW12?=
 =?utf-8?B?eVg0TnBoYktIVHRualh0ekRJdGRpYk1aQnIya3V0VEVVRU5VY0lCenRkcmE1?=
 =?utf-8?B?NDhId3hnRkkzMk5UT29oNmpkTzNmSkd0aFdFelZhWGg2aHpkYmEwUHhMRkV6?=
 =?utf-8?B?Z3hBeTk0ZnVHM1JjQ2l3VkNTVDNVbVNWUnV4M01pNzZKN1EwRmgvdEdiT3FO?=
 =?utf-8?B?eFlhMUtEZW10Sjh3WEtQcVFQSUpYczhLRFFva0h1RVcrd0xXMnJLcmptN2Jm?=
 =?utf-8?B?dHpyV0IzL1JlVFpCTE03dlNvY0xabW1ieVhMSjNBSFR2ZEdtUUw5dGRTS0tI?=
 =?utf-8?B?RmowK216L2dicUhPRnNwZFdLOTdORENUaGZvQW1OU0xNelZyNTB4VzdNOXJH?=
 =?utf-8?B?Ni8zOElIUm9HNzZicHBqOFhnS1R3QzVOUEVlbXk3UlhsVFFOVmYzL0VnZFNU?=
 =?utf-8?B?eEIyblZ5dGxIbzhmS1ZkenFEQlQ3K3BpYTFXNFNBRUNmdnJmeEhMMWZIVXdQ?=
 =?utf-8?B?TU1Zd0FHbkZ2SExDZzB5SkZjZUtxM0hSZDBPaktQRHhVWm84OStLSDNwK2k3?=
 =?utf-8?B?ejAxTlluY2FLWUJhVGd4ODVMc0RCT0lURDNYdXViSXYvbEwzMWRpUUZvTWw0?=
 =?utf-8?B?MzdCdzVVWGtIa2NrZlFXTm5RalBFQktTYkEweWtoUG56bVdiSFlPRUdqc1Z3?=
 =?utf-8?B?SmRzbjJyVVJKQjU5UGV0VlpOd0R1OUVHa1dud3BNMmoyVVUwZDd4Z2FoaUdw?=
 =?utf-8?B?amJNd0x5TkFhS2tVRDlyazZUOVViRTVRNE15SUEvVWJ4RjdpbCt1R05Tbi84?=
 =?utf-8?B?QXhsL0tUWFczYkNXMTB0M3RDWmo4bEx1Um9YNmQ0S1FTTnZmZkVvRlFhbHo1?=
 =?utf-8?B?UlZEbUczVzZHRkUxMDNldWtDb2xna3NBZDlzR1NuNzNrdmhXREQ5cDUya0VV?=
 =?utf-8?B?c0FhUm55ZkU1WHJaSWRmbmJVaStpdFo2M0V1T0YwZ2l0TnBkdnF5Nnh4WXpS?=
 =?utf-8?B?OFlNSERac2RVWlQ3OHNzMWxOT3lKZjNxc3FIdkFqNUQ0MXNNZTVZblJLMk9n?=
 =?utf-8?B?ZmkxcUJmVHRTazdlNzRoK3c3eG1UTU1hYXl5aHhQcXd6NldjNXRNdmNDTmhS?=
 =?utf-8?B?VlVhVER6OStqbXlNdElSdjVHZXkvUUxrVnhaL1I1NVp2b09DMVdwWm9RUEJM?=
 =?utf-8?Q?k5HqnxkUQqg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmYzZG96ODE5TUVYcytGcGtnMHZhbEE3aVdoK25KZ3YydXZjVWNxSFpNL29z?=
 =?utf-8?B?SWtCM3c0V0hBdnJCNlVWdmZSa0tJajFOK2ZtSU44OFRrVzRnY0JFdHNxcjRk?=
 =?utf-8?B?c0JoaXNGdFNNbCtnckREWUJuOFhJYXZzNlVZa1AxdzRHTmgzMU1oYTl6QVNM?=
 =?utf-8?B?VjRyKy92SE15Y0MvcVliRU1iTENkL3NjWHkvU0IyTnMyallGU3RVMWxnZ1Jy?=
 =?utf-8?B?WVgwMkVsUHhXTUpBd3BLVVZVaGtIWVVJM1RTclU0UWRHMW9walZDMHV4VHB0?=
 =?utf-8?B?RVExM3JtNmlQR0pNZ0pBZ0NnQnNWMlAwc09DZ0JBSzlDcDhLcXNHeFpDTnBS?=
 =?utf-8?B?SE5nSFRqODdpUCtXQnljVUR6VEE1eS9qeDc5b0lhSlFMWFhHVUJXWHNWUUhi?=
 =?utf-8?B?aDIxbG1vZUZDeGlKYzZuVEtpK0JpYVNlUkNtRFlmZ3ZVUjZxWWx6YkowYkVB?=
 =?utf-8?B?dUpDcUNQemlyeGVoc1FlbkEvTXZQNWJUU2UydnIxL3Avc2VtQ2d1dEZBYTVB?=
 =?utf-8?B?VFRhcEovS2JPZkNzYmdJS2taWVlFNGhzRnEwTFBCRldDc0JzN1BVcWlNejFR?=
 =?utf-8?B?Mm5HSmdKQlUxM2FpL2VDbjBWaXAvMHU5b3A3MG1oYURjZGE4S25pT0lKUU1h?=
 =?utf-8?B?Ny9RN296U2VIVExHOEpTZFE0Q2RKbVlWWkJjN211SldZb3dMVytaK0NMYnJB?=
 =?utf-8?B?eC9STlBzVVhhT3RqdlJzSWxKbWpCaW1aN3E2NkhORkk0N2hKczlhTmRkY0tN?=
 =?utf-8?B?bjVnWHhZZEo1RnlZRm80UjRsK2RLaCtxWkZtb2pOckVwOCtRczJSOVBXSVB3?=
 =?utf-8?B?c2R6ekFaRnIzVlRNL2RqRE1LYmtIMGRMZGhKSEZucTJyTkxYNDh6SVJvZ0ZW?=
 =?utf-8?B?UUJzVyt0OVJMcjVSeVNwUmszaUl6RU9UcS9ZOVZTaGxDeGRqUWpkeXh4dCt2?=
 =?utf-8?B?TEh2c1lSaXBVdUNWSXEzdHpnTVRGYkxtNDlES3JXTlVSUGs5N3M1VUJLTlFJ?=
 =?utf-8?B?d29lQmp1MkU2a3ZLVGlRUXRFckJRdEdiOEVyWGtPWHNoUTg4WUxUZVV1OWJR?=
 =?utf-8?B?REZMdU5Vdk9oMWN2Q3d6R2NORkNZRUJqeEhCSm9tcnA5YXIrKzJsUVFnLy9K?=
 =?utf-8?B?Q3Nnb2o1USs2SWFVMFpkYnQvR1VpNkhYTjhKTmdvOW1OM0R2OUdnQ1NKZkdC?=
 =?utf-8?B?cjhIRUFwei94Njk4QWxLTU1sSmNOSWR0UlprVDlCQVo0YVVnVFFaY1VCaURo?=
 =?utf-8?B?STZHUWNxa0NpcXRSMzhSREZvTnlTL0VjOUZrb0x4UGJBdi9aZ3R2MWlhSzZW?=
 =?utf-8?B?NHVaRXVBZU9BZjNSV3pCOWJFZDRKMC9FdHNzQnEzaCtMMDM2TmovNHEvSEhh?=
 =?utf-8?B?OEt5OUJDRDJaN3VWcDdHdlNPdkpzVnpXdSswbG52RmpBZjZmNFZtV0RtaWo4?=
 =?utf-8?B?Qi9UM0JTZTVpbmIycUFKZHBnTVFtSXJ5MVBXZWxldXVVaXB3SzMrdU9yTFZq?=
 =?utf-8?B?MURXMEY0c0IreERqbmZ4R1VlMU0rakNSbmY4VXhBN0hPZWZkR3hJbEg4ckZs?=
 =?utf-8?B?R0JpamF0bDBXbTBlQzdsak1mNEVOWEJCRTFDd0JlOEZuVkFhRng0T2g2ek1o?=
 =?utf-8?B?aVhmQmswc2FiQ2txKzMzMGFlMVZNZUFxd3ZNdFB0RmlmaTBKRUlvZ2VoQkVl?=
 =?utf-8?B?NEpVVG9MT0tkZXMybkQ1Qkw4WW1qS0ZvQTRmU08zd3hTMmFabEU2ZUF0ZVN2?=
 =?utf-8?B?QTZkeGRoaW1sUCtTcGF3Y0NTL3NFaGRyWURBekg5Um9NYkdKNFlsanF3RG1E?=
 =?utf-8?B?OTBIRFNxMys5NnNOcURHaE9xR2kyM215bHVXUDRGMHdXTVJqMkhnZnB0Tnc3?=
 =?utf-8?B?TmpWaHkya1ZhNTNlWDJ1MXZvQk55WFhwU3ByWG5KNkpMdFhGYXhiUXAyd2c5?=
 =?utf-8?B?ZENCZG5LQ013SGlOeXMza2xkYTU4Rm5HWDRTcFFTYXczYVFkM0llUzJ3ME1K?=
 =?utf-8?B?MFppeXBiSGNERzlsTVFjS05PSEpnWXlwdmdHOEZBSVlkNXRWRzJBdTA1S3pp?=
 =?utf-8?B?cHRhZmhlTEhpL2tHVzI5bG5QS05aZXRES2JILzR2WnVQUEVkZmFKVGlUMm9M?=
 =?utf-8?B?OVQ1MlFNTkNKSzdZdFZvYzN1ZlVOQjBmSEpuVzU1RjA5V25NaXFRT1hiRVVv?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afd0d436-7124-449b-7c15-08dd1e67a77f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2024 06:54:30.0310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WBr6/OKzq5Rd57Ao5MqSpmnPXKbnGf4xnD0yE8icLH8lA7wmLVhUe8IfMHZBsAnmDD/2e6Viu8UNRu8iXTalePjvBv6AwIeHvJKr0KOnDTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734418480; x=1765954480;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZggECrQob9zEzJGut5rbOECsfez7lNaAWwU8HyCigpQ=;
 b=J8kLwzbs0iV13n496s5AIh3i/3CtCYThg2mT8ed/R5xZ0ghMa0KS1coH
 dFIDx77+YJgmoNhFDSIyHlIl5iGXWJQJsesU+X1DRXAECTasSB6O46QEq
 YeM6AVdeCco68mEVztynOTaE1DfU4nlkIENzIXoML0hoiuL3NSQq6QIDn
 TxQhUI4zcYUV8rfk9+6K/j9f3bNFCxvt9/nwbr2J4DMhhjHGtPclHthbo
 VTYxait+hKmasjDCToe6lZ2l7KiTJ3scXEtYwTejUYV6wl49wIt4Gadlg
 X/sItCiHpB4dFKaehPTTnpWCA2/lrikvPL+LbryBaGbvrTJCOODMYQpTK
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J8kLwzbs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Return early when failing to
 read EECD register
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



On 12/17/2024 3:23 AM, Chia-Lin Kao (AceLan) wrote:
> On Mon, Dec 16, 2024 at 06:53:10AM +0100, Przemek Kitszel wrote:
>> On 12/16/24 06:14, Chia-Lin Kao (AceLan) wrote:
>>> When booting with a dock connected, the igc driver can get stuck for ~40
>>> seconds if PCIe link is lost during initialization.
>>>
>>> This happens because the driver access device after EECD register reads
>>> return all F's, indicating failed reads. Consequently, hw->hw_addr is set
>>> to NULL, which impacts subsequent rd32() reads. This leads to the driver
>>> hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
>>> prevents retrieving the expected value.
>>
>> Than you very much for the patch and the analysis!
>>
>>>
>>> To address this, a validation check is added for the EECD register read
>>> result. If all F's are returned, indicating PCIe link loss, the driver
>>> will return -ENXIO immediately. This avoids the 40-second hang and
>>
>> It is not clear from the patch what part of the driver will return
>> -ENXIO, you have put -ENODEV in the patch, but it's ignored anyway.
> I was thinking of using -ENODEV or -ENXIO, and I forgot to generate
> the patch again after I changed it to -ENXIO in the commit message.
> I'll fix this in v2.
>>
>>> significantly improves boot time when using a dock with an igc NIC.
>>>
>>> [    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
>>> [    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
>>> [    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
>>> [   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
>>> [   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
>>> [   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
>>> [   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity
>>>
>>
>> Would be best if you could also attach the sequence after your fix.
> Sure
> 
>> Please add a Fixes: tag.
> I'm not sure which commit should I add Fixes to.
> 
>> Please make [PATCH iwl-net] as a subject prefix. Please CC Vitaly.
> igc is an ethernet driver, should I also add iwl-net tag?
> 
>> (But please also wait a day prior to sending v2 for more feedback).
>>
>>> Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
>>> ---
>>>    drivers/net/ethernet/intel/igc/igc_base.c | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
>>> index 9fae8bdec2a7..54ce60280765 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_base.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_base.c
>>> @@ -68,6 +68,10 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
>>
>> This function is used only in igc_get_invariants_base(), which ignores
>> the return value you have added. I would expect it to propagate instead.
> You are right, looks like the patch fixes the issue accidentally.
> Return earlier in igc_get_invariants_base() skipping the rest of the
> settings. The part impacts the behavior is nvm->word_size will be 0.
> And then in igc_get_hw_semaphore_i225() the timeout value will become
> 1. So that we won't hang for 40 seconds to wait for the timeout.
> 
> This patch is not perfect, I need to figure out another way to address
> the issue better.
> Please let me know if you got any ideas.
> Thanks.


I like your approach to this bug fix.

However, it seems that without another change in igc_get_invariants_base 
the failure won't cause an early return with an error status.
You will need to add something like:
	ret_val = igc_init_nvm_params_base(hw);
+       if (ret_val)
+		return -ENODEV;
	switch (hw->mac.type) {


>>
>>>    	u32 eecd = rd32(IGC_EECD);
>>>    	u16 size;
>>> +	/* failed to read reg and got all F's */
>>> +	if (!(~eecd))
>>> +		return -ENODEV;
>>> +
>>>    	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
>>>    	/* Added to a constant, "size" becomes the left-shift value
>>

