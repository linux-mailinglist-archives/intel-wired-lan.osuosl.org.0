Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9905E7AF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 14:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C6114011C;
	Fri, 23 Sep 2022 12:39:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C6114011C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663936744;
	bh=SvX8o+E4XZdscB3I29ZrrqWh4I2M7qyQJUU4i89VTuw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dgq+dMRWTVWLRzxOqxJPgCo7CA9zoBSMhDaG2CSjPNU2qCIL6V8XazuyKparuB5KY
	 +rhwZ+x7vHEUTZefGOrgG1614qUmAMuF8RdBmW3g/ZudafeRpFeGE+Dv2lk5B62yjh
	 wyB7FEgxH3ZzoG9sMXljULokQ2WEv8MTkHnVv75dulFIvz1plKAf7Xx8/u4FPaGfHs
	 zzJpaMTr4Zgo8221Q4bzEJE6aRygEWY6aANxLY1EZpMJ/sidu/qdqYsMvbbJWeYZAt
	 6oPgxAecT1HxdikGWAEkecy02HPQ652EkEs3FG/1Ux2ZodcJg2cA8kpeGXM6zHd9lN
	 yC2zvR2lGSbzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GT55bVkBE7G8; Fri, 23 Sep 2022 12:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F04D405A9;
	Fri, 23 Sep 2022 12:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F04D405A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAF331BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 12:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 941B0405A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 12:38:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 941B0405A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-SbpMo87YE5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 12:38:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBBEF4011C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBBEF4011C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 12:38:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="362393921"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="362393921"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 05:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="795492289"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 23 Sep 2022 05:38:56 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 05:38:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 05:38:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 05:38:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 05:38:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hU1R595+JLfNCgT2qqCL6+UqKkCl3gWNVNqoyWps2qx8L3QBDyn6cRR+C/XTS9oX5MiOBl9SLdURmpe7/gzINkDdr4zWY716RJ6jJTgHPD0zuEhbK3U7Xu9rT1ASm9VcdygENDx5QgXBqIFCjawPPXADZKcqu7cB1xOpz8UgP2Fz6PGZxhJCyyzcHzFVWSwKbxJTlMBgBvD9jbRjRb4KPT9dC1twYJBJZLRxKrHdO1dEDt8xYf/SEW+5a04kFgpX0/5Mj3mMJ0Zjdwe6xPin9FROLgvmuRX9ahqxErSvvPp5TVa4GJgBJmoIgi2lbXSHpYaXKHNysk1NL8pkxHUEtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pZQKknmxmHfwNmahMJUouJC83icxcYK+fnXzYpMR2Kg=;
 b=dKkTCsbsGtGgrOurW7TDT+e3vqkQYb9RTGxsTHv6Gz/HdecqkckHtlV7f5EIIVgrVdMAkS726F6BjJpLPDcQU4BBs0AGhhgBvvlH6eRCJr5hLMhe7mIIJzJaNsYnxZ9yccoGcKk3cVHjUqUbxfd/wkg4jgYT6yUP9XFr7f2vqJWyEvwxfk8reP6v/DzXRxwJ0j2l2/4cAZgQ0KSgJ3/UTyvuXGW8VOkJFXhCeA/hkx9UdqGHkZCiRkUBY752XZXP8SjC4CMJ3iwhnPn2r0HwSUWwdqHl2TYnAKfcOnkghhyhyfFdqDx87JOIwMs7g/sZqMZ4KDSZVBbxL2bE4zGDYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by DM8PR11MB5605.namprd11.prod.outlook.com (2603:10b6:8:26::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 12:38:53 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::6c59:792:6379:8f9]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::6c59:792:6379:8f9%4]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 12:38:53 +0000
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
Thread-Index: AQHYw3F3SB4gnbAAtU6ukD0kzKh+KK3s7KAAgAAFKgCAAAULAIAADoEg
Date: Fri, 23 Sep 2022 12:38:53 +0000
Message-ID: <CO6PR11MB56033E196070FECB55C3B04FEE519@CO6PR11MB5603.namprd11.prod.outlook.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
 <20220908105427.183225-2-michal.wilczynski@intel.com>
 <BYAPR11MB3367A7B2299CE71A0BB878C1FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
 <CO6PR11MB56032DFE65C714E73E239AA7EE519@CO6PR11MB5603.namprd11.prod.outlook.com>
 <BYAPR11MB3367A0C8B0FFEDECFEC4FDC6FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367A0C8B0FFEDECFEC4FDC6FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5603:EE_|DM8PR11MB5605:EE_
x-ms-office365-filtering-correlation-id: c454681d-ca64-48d2-5774-08da9d6092f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n73mco6qegoExqW35g7LwXv45SJw2UI0LG/AHmEUmM06PAnrxgqYJenXxrULTEdS/xcrcDYMLkC8quCIL+SNGrZj8zEhRhL2uJOYAz9njZQ1o2L4YrCijScPlTVLFSPdBjIfHrwhr+cbEj3PwwSUPAjE6ETvebLRkYnO02zcYcBRNcVAsraZ6UMleaMKOgvaT+mwIO/SQoo/o+cyU+Hq4KocZG3cXGhk4hAHD573AzLDgVJl4YW83yZ8maNUZmnDT6MjWuSo2nb/Yow+kQiZLDsF/Cc32aa8uYA6fKZNT0TWKrjsuAsliq9IXVkYflEp2bze6PtCwJy0vl8qCJIvpLFNgCo/YEQZSt27Y7ihhoqfzEUrWFt6lnT5v2qhjYuQftayvLVI4uYRAVeQDov9UOSSc007BtFfDODyMjy4+wfnTVmVW8Wf+y6vPEXUhFdi6PFRLLGx+ozkGZIl0JivurQyI8QlQ73Mq1A/leKBpxV+IUuo5S3iniTK4HuGQbkc9pI9yDx/DeRSIxy4EPX3LjQFjOkPLcCOI1npEhAe9hPOTA7dcsJiHV7RahjmU5+xYd6+hjeQx3dnXn4JcTwBmzma/qj2YKXBK0+Xd62VezJRT/VLeBfRyoLx7ezNHIKr0sA0mi4O8/LEqn+CirQGzZqqU63ad22K+yrV7jDqrUIqbR2Zyn0txJvKSlKAVxHjWJXFhBOQoZggNSYpk/qasp0KCINibejW8DCCg/9umQFvHE9KCTukVxjuoIrRTUPtD94kf6vXRW7MnxVIEbcM9A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199015)(71200400001)(6506007)(66946007)(8936002)(86362001)(52536014)(107886003)(41300700001)(38070700005)(55016003)(5660300002)(7696005)(110136005)(64756008)(66476007)(53546011)(8676002)(33656002)(4326008)(66446008)(66556008)(316002)(76116006)(186003)(2906002)(478600001)(38100700002)(122000001)(83380400001)(82960400001)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?eobKkT50P6VKGmCOYFdwOO/2LJXM8afUZxhccLKY+EJqkZGJSbvQGdu0Kt?=
 =?iso-8859-2?Q?BvHMxNNNGEyVxhNe9AeUi0ACd3QPKQPd5mnEWg79tR8qou9GIznqzdqNJE?=
 =?iso-8859-2?Q?/ZIjoioVPTpXTsKXPSEqi3eKCIyW2yT3NnlpHWuici4QTvbr4H6zGx8Eoz?=
 =?iso-8859-2?Q?6KBPnvNgft2iqsdr3zG/qNznOxx+hXnvC3dBQFdmZKRQ1odzSGX3OFfTAz?=
 =?iso-8859-2?Q?0RWTkZ6y8r+yk2vr8/9MGCurOwgVv3jpfclhzH6C0uRIgzZjem/R7/5y2z?=
 =?iso-8859-2?Q?6nzX0EP/CijFJzPAFBrrC58S1vORGjrWZkbAZX2Ca7Wov6Ko5oIGSSdNEt?=
 =?iso-8859-2?Q?4trd06iZ+IgQwg0dAqdkxQsIx4SWm/LmDy+jun097cPtPFpfdC1NtQW6x6?=
 =?iso-8859-2?Q?o+dOsYz+L7Ajnx13a3j0TZRwO1c8hmxx6At16miTn+0fTBma/VPhry74La?=
 =?iso-8859-2?Q?cEW6KQ/fPkeX6P3aFTIaCXWKnNgFX9K+U1+44OeWeC+92bh8w/OB8laqQ/?=
 =?iso-8859-2?Q?yYPViG90k6BGHzwY5FdT64nHIMiVSc7V98hqN0wRlDrDW3Ogv0iKBCO9De?=
 =?iso-8859-2?Q?PVpd20Czoohd0gfsKt1I6KzydG6zMlOF/R4wBi+tel8crSEncAj5ug0/sX?=
 =?iso-8859-2?Q?CiEWDnaMJkAl6KHoZepWA6v7+dU805PD7m6wJLrOkST6EEi2gX7l/N5982?=
 =?iso-8859-2?Q?xBL3JB7NF3lj9Cu34dapMioulGhdLFCNtOmwaRdoz113dbxLNrFybDhdQF?=
 =?iso-8859-2?Q?/s9oLOBO6dSXtKsem3Tpm6mVQe4CZA1jgrs4trMsDNdxKcvmybK6zAkn0x?=
 =?iso-8859-2?Q?KjzuP1VbuGoqHs5sBYDDkW5J0ZlmqQf07r8fFdq3QVC/4UGJNetctSed2R?=
 =?iso-8859-2?Q?Czzwm8eaQURHZQc2x6WRGehi9zamKtLPqs6S9Qg7OgpgVgsDTAX6uNbqwO?=
 =?iso-8859-2?Q?NMLN+834dI0H61jhi8O67Sxgq5qicBDTL2xi20Svmbwa01d/Dt3dJqvFSH?=
 =?iso-8859-2?Q?JC1Rush8cVcYe/HtkqFfCJ+wRXi/41xDtVBD0KNl79+RS0VWamm4iwsvaR?=
 =?iso-8859-2?Q?eYF/MPDnc849FhksRRR5DMDCrJXQXgKkVRCiRaecjOiOJo/vItJZLQECRz?=
 =?iso-8859-2?Q?y6Bufm+nid0yBscx4eUlw2MxlonSsSDyABhjjkp+Xx/b5F3qd3/RK6DtKv?=
 =?iso-8859-2?Q?+9sSWvt0r2H/3Y26BJATSlUPBEMWTP5rJBsA/bPwZW1fVU99/yPHoz9URi?=
 =?iso-8859-2?Q?TT4aP8tzMk8/h2JsAdEk9BDYTs2uVyU9eyV2rVR1uZGfnxQgbe9NEPob3G?=
 =?iso-8859-2?Q?5IOQBvB4KU9y1tDVp3MoH1sogfZz7Y8O+R4bdlASph4cTSSS77IISytB61?=
 =?iso-8859-2?Q?Es2AIcQ56rjhm6j2RRQ1vVRDv6mA/u8M9beFZfQ4X9HvY1syPPPWIFuKvJ?=
 =?iso-8859-2?Q?YmEzbRSkH5IMSX7c2b3GWlYKE7jnBlNGROE4/har7s3v2XFLVUjWJ8+Zhh?=
 =?iso-8859-2?Q?4JJPfT3NksaQEF+iLeALW274tuUvksx3TNwo/w720O+g7vFMqy6FUBwgk6?=
 =?iso-8859-2?Q?pg1gNacHy9y+93eYN1j+eKXugLS8h/m+1QVIgXOPO3DmLi9BL4ybsQAMGA?=
 =?iso-8859-2?Q?04R7/2Z0EiruU+sKYu5zqDOOK4KP4hKGpS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c454681d-ca64-48d2-5774-08da9d6092f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 12:38:53.4163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rTKdysIkOHgVqlIsCJshpcC2/qv89fkURbnMq+eeDioRtqioXKA/QBcLKZUjmGev31BlRU77STf1ljLHWKPy5D0xH/J9da/kFVZhVoevNUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5605
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663936736; x=1695472736;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f3oqYnsOgRaNktbO7wB/wE0FSs6O9PA5PDfy9tj4KnA=;
 b=JOySgseVa4bpbhI6kFcSiOsTudksHp2JCsgn9bB1CPh7rzgkXCU53qv5
 NO0wkbwjZa4jJeDXYFZO8Ce/DjVuqil8MRsczCa3pAtp4r/dwGxP7HKMN
 kE4ag7+lEtkpgY5Ya6QWDLqznzEWrbPYQbNgJZ2mqeOhkFi1GgcwnWQW9
 jRcP3UmwCXdFErL91HcBraaGPGNnQ8naIC+BBu7Y2pUuucpoQAlmIGKWu
 2gHf+CK22zQVo35f3fY0Z+aCRDdfzWJIXprg+4kBZlemGYEn75C+/vkGc
 qCc7BkebUM2oL+Vewu/RCDgPv+kTqcKn0RKnGs+ANgfrThU6chq3WSTMD
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JOySgseV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
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
Cc: "Raj, Victor" <victor.raj@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,
It would be good if you provided more specific information. How come the re=
sults are different ? The code didn't change, it's the same
patch that you've been testing before. It would be good if you provided com=
parison between OOT and upstream drivers. =

Also before/after applying the patch. If there is a change for the better a=
fter applying the patch i.e packets are spread more evenly, then there
is no reason to stall this patch any longer. Scheduling algorithm is implem=
ented in the firmware anyway.
If you need any help with debugging I'm here to help.

BR,
Micha=B3 =


-----Original Message-----
From: G, GurucharanX <gurucharanx.g@intel.com> =

Sent: Friday, September 23, 2022 1:23 PM
To: Wilczynski, Michal <michal.wilczynski@intel.com>; intel-wired-lan@lists=
.osuosl.org
Cc: Raj, Victor <victor.raj@intel.com>
Subject: RE: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer=
 topology

Hi Michal,
We have gone through the OOT HSD and set the environment accordingly. We ha=
ve used v4.1 related NVMs. We are observing better results than the earlier=
 but they aren't balanced as specifiec in the patch or observing through CV=
L4.1.


> -----Original Message-----
> From: Wilczynski, Michal <michal.wilczynski@intel.com>
> Sent: Friday, September 23, 2022 4:39 PM
> To: G, GurucharanX <gurucharanx.g@intel.com>; intel-wired- =

> lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 =

> layer topology
> =

> Is it any different than what you observed in OOT ?
> My understanding is that OOT hsd tracker was closed after some discussion.
> Please refer to previous discussion if you don't understand how the =

> spread should look like, and how the testing setup should be configured.
> =

> BR,
> Micha=B3
> =

> =

> -----Original Message-----
> From: G, GurucharanX <gurucharanx.g@intel.com>
> Sent: Friday, September 23, 2022 12:47 PM
> To: Wilczynski, Michal <michal.wilczynski@intel.com>; intel-wired- =

> lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 =

> layer topology
> =

> =

> =

> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf =

> > Of Michal Wilczynski
> > Sent: Thursday, September 8, 2022 4:24 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Raj, Victor <victor.raj@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 =

> > layer topology
> >
> > From: Raj Victor <victor.raj@intel.com>
> >
> > There is a performance issue reported when the number of VSIs are =

> > not multiple of 8. This is caused due to the max children limitation =

> > per
> > node(8) in 9 layer topology. The BW credits are shared evenly among =

> > the children by default. Assume one node has 8 children and the =

> > other has
> 1.
> > The parent of these nodes share the BW credit equally among them.
> > Apparently this causes a problem for the first node which has 8 childre=
n.
> > The 9th VM get more BW credits than the first 8 VMs.
> >
> > Example:
> >
> > 1) With 8 VM's:
> > for x in 0 1 2 3 4 5 6 7;
> > do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> >
> > tx_queue_0_packets: 23283027
> > tx_queue_1_packets: 23292289
> > tx_queue_2_packets: 23276136
> > tx_queue_3_packets: 23279828
> > tx_queue_4_packets: 23279828
> > tx_queue_5_packets: 23279333
> > tx_queue_6_packets: 23277745
> > tx_queue_7_packets: 23279950
> > tx_queue_8_packets: 0
> >
> > 2) With 9 VM's:
> > for x in 0 1 2 3 4 5 6 7 8;
> > do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> >
> > tx_queue_0_packets: 24163396
> > tx_queue_1_packets: 24164623
> > tx_queue_2_packets: 24163188
> > tx_queue_3_packets: 24163701
> > tx_queue_4_packets: 24163683
> > tx_queue_5_packets: 24164668
> > tx_queue_6_packets: 23327200
> > tx_queue_7_packets: 24163853
> > tx_queue_8_packets: 91101417
> >
> > So on average queue 8 statistics show that 3.7 times more packets =

> > were send there than to the other queues.
> >
> > The FW starting with version 3.20, has increased the max number of =

> > children per node by reducing the number of layers from 9 to 5.
> > Reflect this on driver side.
> >
> > Signed-off-by: Raj Victor <victor.raj@intel.com>
> > Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> > Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
> >  drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
> >  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 199 ++++++++++++++++++
> >  .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
> >  drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
> >  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> >  6 files changed, 243 insertions(+), 2 deletions(-)
> >
> =

> We are still observing the performance issue. Its been observed that =

> the packets haven't been spreaded in balance across the processes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
