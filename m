Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3567D542B92
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 11:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E2B383E94;
	Wed,  8 Jun 2022 09:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2wkueSE-y1g; Wed,  8 Jun 2022 09:29:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 599FA83E87;
	Wed,  8 Jun 2022 09:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B70D41BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4DD183E8A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 70hYMWendhfl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 09:29:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8F5183E87
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654680576; x=1686216576;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=r9xKQMj9jHIHq2OWS0n+oirzNsjNxJZ7Vqv4Kexe8RU=;
 b=XiOD+FPNTdRSBIqDsUf3xIQ1x/ZRRM3bCn5p/SGbLrLsJiH48uVF2IQh
 P6b17ChI5DGfWTrbwG2zJWL5O6Vmrzs9oj728/XszbbU/QkSmb83/CrKC
 S9VdEyfkMtvEd5TRbIES2Gj9rCNVLjO/FN+c4cwSDI1cWYbFwXtKt1rUm
 s52h2LUL9yL8+drnrX5zpvM2+/m39F+zaEnE7Qu4yjje84ehO5pap9K1e
 tZBoMGSd0pEYTUpw3jo58J+Z2Mav+dbzWKfraQDqeCdp5vOW4f3xTq9c9
 lkMugw+d8w8l2LTy7vhdsryAuJqSY8JB23bfwGx34PmxYnFHDdZCXYJn6 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="259992543"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="259992543"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 02:29:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="609591816"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 08 Jun 2022 02:29:35 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 02:29:35 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 02:29:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 02:29:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 02:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lgJTZfl7DDSpogLsoVOxo6pj6oJ10zQMeFodI/tgweW9yL/hAh5K4LOI+hh9lDZU78+iFNslOedNc//++9aLYxZ81iY4f5AVXTyahxZfO8ebaMgwgegBGc0kFvqpdFP+YYuAOGs4sy61CznSet2tmcilLIi+Pn044cWlsHHK1zvTSOF5/qxYf+Wch+cOw5gS9d8p1fZaE0gBzCq/iyIB7lAEF0Q5m6B80tP8FxAtjmzsoaMQNZTqMF8eP8UW819/Gy0Wh2eIac52hB6Z+HanvRhSnLvTSbVh0hM9Lv2/KwgT8G38CFEx1xmVCVtuYFso5bc6RlhlmvxbhgFl+WVIEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9xKQMj9jHIHq2OWS0n+oirzNsjNxJZ7Vqv4Kexe8RU=;
 b=ilnyNRQDWQm7rkx73EF/XuWuZXRXoo9GH+070HNKtU3eq4fnL7DzHc6vfsrjtb9dKvT8UhqE0HBIy0jDWR2i1dFzKrE6j0s7mEOCPl5wtIv/ySxmFBTNzTv5h0MnY+lfcPCd+2mCH3sqvMAC/nDN5KFmTKFc356A7N9bbhWTNTXtXAWw8q8zyx6zpwv4ddY3qpG0RS+/ktduQgxfyA4Bux3jZEkI5hq5rfqmjIEcU2M7CsTJVxJurPq+SoaPEPOMJiukq7e1NNm3co6EWKxsxf3a5kj5AUyhrJYA68ml/QzE3S9MjoD5xbY1ivr/kGpXv9IPM3G1M2PeB9Io+d+F+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 BN6PR11MB1476.namprd11.prod.outlook.com (2603:10b6:405:b::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.15; Wed, 8 Jun 2022 09:29:33 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::8024:510c:53ab:2a9b%4]) with mapi id 15.20.5314.020; Wed, 8 Jun 2022
 09:29:33 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 2/2] iavf: Fix call trace during
 removing iavf driver
Thread-Index: AQHYcaFeiMRjRs943UqarV1aFYHeX60y8kgAgBJemUA=
Date: Wed, 8 Jun 2022 09:29:33 +0000
Message-ID: <DM6PR11MB2731157C24333C01B87F6273F0A49@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
 <20220527080919.2370640-2-jedrzej.jagielski@intel.com>
 <04b439d9-2e8f-7c50-3d52-bd6a6880edfd@intel.com>
In-Reply-To: <04b439d9-2e8f-7c50-3d52-bd6a6880edfd@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f143b244-51b1-46dc-a463-08da4931659a
x-ms-traffictypediagnostic: BN6PR11MB1476:EE_
x-microsoft-antispam-prvs: <BN6PR11MB14762000B8739130CB353EF5F0A49@BN6PR11MB1476.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wLivBqIu9uutKeUun9NF5hPTyUHM61wo98F6pKQ/8edg7wBBhvuv5BxvZGinCkZqxZdnkWJwSpHyveX8N3+NMtKdtLV4bcH5SQqRKQv+9qShc49YTGwYdeM2TDrXmi/o+Z/VKCWPf1tysWGzVE7luMnMtRmWf20J3sZRF83O++54iFlb1H1vutAUxGvk96uAx+Bbbh4PR62qA5ziha0UmDhUrYrp+ACYBPQb3EVK8kit0nQIxGBjTg54af53i1bypYMnTm2JnFFutLO5cp1Tmv3QXXz70Z11al84fjC/wsBvzCREgqRbVsWzxCPPf2vKOu9bWiT6IAlS/qN4sYB8DhAPz6THsUo3Q29IDyUAWXSyRxg7/2rPRFnTg8RgajfCUstYdYUphjdb19An0j4EalkZE3m04RRubLakvqy+MwI+c8raKdagheFT2gCmpEMPtPsTO6kH1gqNywoQ/FdZXlhBEJKbHWuRYxiA4hD5kml6mi+K127NjOoJu/aifrQ4ziIeLi89XB08A8p4BH1ShiXiXfiiPvy7m2Sba1K6NgZyzIT8HoFyPuV+87S+qU1WPORCCfCawUVNqSBxo4o6PtNHhbUn/Zlnd42VUTZS7a7sj4DWaRG1hnRc4crZetSvWF63XMnJQSBf6XL+GZKcPMvFmpEQc06svGCCxufv3eQcrnFFIE7mTRy5A7SKlt4IpEjH17Dt7bKRBzxmwJppZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(7696005)(66446008)(38070700005)(76116006)(2906002)(122000001)(5660300002)(9686003)(26005)(66476007)(66556008)(82960400001)(8676002)(71200400001)(6506007)(110136005)(316002)(83380400001)(55016003)(38100700002)(66946007)(186003)(86362001)(508600001)(52536014)(8936002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzgrNHgxQ1pHV0dRY1VJS3FxdkVLZTFUa0Zjb2JoRTZCYm9EbW1jOUtreHUw?=
 =?utf-8?B?Qy8zWDFxcHdNY3p4VEhhWXExS2I1UWZBSm8vK0NHYSs0QlU5SUZUU1JFV1lM?=
 =?utf-8?B?SzN3Y0c1WS9oRW5iaENtL2lubEdIc0xad3Uza2NyTUpUenRsdHlHWncvZW55?=
 =?utf-8?B?b05jMmVTRVFuV08wK3JQRVFWbGRva1Y2aTlIZTdBM2hKNWtYbExjREc2L3ZW?=
 =?utf-8?B?dnF2RlhvZW9JNFMrdWlwdFZvWGdKcjVpREppOXpmQzBuU0N3cEJzZTh3bXFQ?=
 =?utf-8?B?bzhsV05OeXVGV1VaelVSTzBWVnROcFdNZ2VCdG5OcHQxc3lDdkNXQzBKMzBQ?=
 =?utf-8?B?Um8vZnFleUVpNkdhQ05DUmRuQ0Q5UnpSOFkxd3RWdWcwNzNVclcrdHBlSzFL?=
 =?utf-8?B?L29VWUxWRU9nWHo0a3ZNekRQK1QwSFZmcE9xSFdPMW1JdEk5c1pJKzdydjZC?=
 =?utf-8?B?TGZ0RlBBTytpTk1EMnUxNXFYc3JhVEhOMlU2QksyVkxvcTFZVGprYlRxd2Yz?=
 =?utf-8?B?cS91WUJWd0VnbEYzKzVqSFNWbEhIRWNCeVV3dEZJaGNoeG5mcDZjN1FhYnJt?=
 =?utf-8?B?WU1PWHFCUjNINS9jck8rdXZvY2JjdlV4QkV1dkdLRWExajlTVmdJZVkxWGo3?=
 =?utf-8?B?d0xUSzRabkt3QzFBckpVZlNpbVpBQ2FtekREOS90Ukl5OU8zYVVtaGtVUTE4?=
 =?utf-8?B?cFBhMThBbkRPdElKM2RzUG5KSDlqY0c2U0ZtWktRZTBsN0tSd2Z1T3JjZEZT?=
 =?utf-8?B?NnViK29iUFZCZjJRbi9nblZpNEREYmZpVkpNb1VzdjZUdVBmc1NKRk1NWlor?=
 =?utf-8?B?VWhvaWtOOTIxWWlSR0RpTmd6QjJxQ1ByTW5OWEJuLzhjRnJIQ3JuTFBEM3lV?=
 =?utf-8?B?WU9PQXptZC84ZjlaNzZkOStzWTJoQ3lPMDk0YitxRXRQcytTa09QV0MvRjln?=
 =?utf-8?B?TzEyUS9QNytUdDVETzZ2Ujlsdm5BdEFybXg5WHZJMm5kbjJUWk5JRGsrYWdD?=
 =?utf-8?B?akhvTUgxS3lKa0dyd2xRblEzSTJsTlB4U2RBdEhJY3ZqSzFiakdDR1BCZFJC?=
 =?utf-8?B?RlcyaWRTWDRSZy9wQy9GQ2ZBVG52amd0Mm1aak5UVCtVS3BzbTVrd0J0T2l6?=
 =?utf-8?B?TW0vWW5zMEhnaUE2YmJ3VHdqSzBwWi9qRTI0MXc0ZkFoUEN5ZkU0VC9adnFl?=
 =?utf-8?B?U3BVTEYzNEpEMmJ3MkFPVFhOSDMzTkVVd3B2T3dYUHZTanZQTWV2MFVpWkYw?=
 =?utf-8?B?TjlkRUR0QjBhR0xtU1hrejJ5Zi9wQTZ2eHphZ0dJdXorOFlONmRQcTJYZWdp?=
 =?utf-8?B?SGdYcHdjM29QdnJtNnZHKzBxc2ZtMWNSZ2ZEcHIyaklGYXBSSlkrZXc2d2sy?=
 =?utf-8?B?REpkb1IrN0xSUmthL3A3UlJQN1FrSDFuSndSc0U5NE1tcnM1SDRkV1RtY29a?=
 =?utf-8?B?UGx4U2kxckdEMWhxYnJjYXZ5Q0p6TE95SE9kNldBOXNsL01RN0xZcGVaRFBm?=
 =?utf-8?B?aStzK1pMSCtZNFRXRTVDRkIralJrb2Rkc1RDYmpvb1VObmdla0RlTEI5MmYw?=
 =?utf-8?B?aHVTWFJ3L2dYdTdncDczSnFHOVA2UmVtVE9rTno5UFgzNkxic3RFT204eWx4?=
 =?utf-8?B?QUgxZjdOQVdVdG5lYm8yWUo2OXhZaGsxaCtuM2RjOFRzd3RVenlIZnpjYzZ0?=
 =?utf-8?B?Z0FRaU5hTldUNU9TN2YvS1RDL2RVUmNqNWR6bXJ0Z3JDVGRCaXhGTERZVnN6?=
 =?utf-8?B?K0xldVlLZERqYVdFQzkzd3pkZzVvWUhYSzUwWkZUL29kaTg5YzBZWks4Z1RJ?=
 =?utf-8?B?dEM5UC84S2Z3amNNOU43RzI4ZU5Xa1NDS0Q4cnEzd3dDTldMUVpXV3l4emg0?=
 =?utf-8?B?WTBlcVp6TzVzdFpORVM2RjN1NEZaT3FrN09mYUJPbjZBV29FSzZPUFJUY0VD?=
 =?utf-8?B?Yi80K0VXZHFpTUltZEk1R2szaUphdW0wdWVZTy9ibFFiQ1ZRcUZURzZnVEdk?=
 =?utf-8?B?U3QvNWk5MXZPOFNvYjd6L2RPUlpXQWxKaUU1N0lVQi90MFJsZUdXRllQbkhB?=
 =?utf-8?B?M1dWQlZjVzNwRnpHdktiMlNYTTYvSjF4UlRXc2dDcDIvZjFRcnJzV2FSYWpy?=
 =?utf-8?B?Y0NGelhsSXRHcXF3TjA1ZWQ5OEF5bDlCS3g0NnZGSEg5akl1aE1LWEpoUlVH?=
 =?utf-8?B?aHdVb0dERm1HZmpTSlZsbENUUUFYMll3Wm9RaEswL0FIdThsd0FKWWlzbGF1?=
 =?utf-8?B?OTR3blE3NmlKY25yUW5NbGNlUWNsNVMvRDZsc3RQaVI0aVNRZnVPZGgvdkh3?=
 =?utf-8?B?L0FZMUdaaFZCT1BaaXNOUkZTRk1Yc0o1ZzBRaG5yNVlEdVpuczJXMzc2ajVs?=
 =?utf-8?Q?YKpO0G8zA8RiGNtY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f143b244-51b1-46dc-a463-08da4931659a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2022 09:29:33.2892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AsuU0w1Ocuxl4dbeuHXJDjDe11fmhJQzL4pJ1jhI0hwiVeW0IHIAE7mtqmspswkSC/quTnnZmA3J09NnhjXY5IqPQXojshzl45fCLq/F2no=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1476
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>On 5/27/2022 1:09 AM, Jedrzej Jagielski wrote:
>> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>> 
>> If VF has configured tc qdisc with number of queues less than original
>> set and then the driver went in removing process, tc resources are also
>> releasing. Attempt of modify real num tx/rx in this state is causing
>> call trace, because kernel is trying to releasing uninitialized queues.
>> 
>> Fix by not modifying the number of queues when removing a driver.
>> 
>> Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
>> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
>>   1 file changed, 3 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index eec74ee5fc19..1b46a97f4ad6 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -3478,6 +3478,9 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
>>   		}
>>   	}
>>   exit:
>> +	if (iavf_is_remove_in_progress(adapter))
>> +		return 0;
>
>Why do we check this condition at the end of the function after 
>everything is done instead of the beginning?

Because we want the tc resources to be cleared at first - that is
delete queue_channel section which restores the deafult txrx ques values.
Then there is goto jump and after that our check is added. 
Also that check blocks the final txrx update so place it there seems to be
sensible. 

>
>Also, this function from patch 1, is a refactor for checking a bit. 
>Refactors shouldn't be going to net unless necessary. This patch can 
>directly check the bit and the other patch can be sent as a follow on 
>after this patch has been applied.
>

Sure these two patches will be splitted and applied to different trees.


>Thanks,
>Tony
>
>>   	return ret;
>>   }

Thanks,
Jedrzej
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
