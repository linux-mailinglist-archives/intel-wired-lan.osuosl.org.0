Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE88B4131F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 05:50:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AF9984728;
	Wed,  3 Sep 2025 03:50:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cJvSW_pr9iXI; Wed,  3 Sep 2025 03:50:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04C0684737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756871457;
	bh=zblCTIdmlGUGb/oy+BvBrba5jLlWGtjKBKpBowB8qz4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mZzJ+UpQdfHdv9sbFc4MJAJ/BAUbMTSw4ltgMeeWYH6KfO6F7wXYLb90umcrmC3CX
	 ZqMnqsGOZDBZGaP0EUOHPVGFHAp+gUJSn5CMBWsm0+vI6Vqc7dctdZyLoF4DtcYSO4
	 jLmjuWqifn4xEVTm3jWFlQaCz53opY+wyagheaBP+xKWQ7mVC/yxe24jhcI5ksHypW
	 VNJEF4U61lNBxNIlnsoFShuGcVRYrjP6qGSafOY7tPQsArGL8+LGeW6UhNxUncwoOV
	 mLHPgcg6ZsYEHgvmky0qHSMwB1MgtQvYhsMUUgI5Ckf5s4snnZAy2dw7jaHMu1OPc1
	 NoTqO7KU8sFBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04C0684737;
	Wed,  3 Sep 2025 03:50:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 356E9439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 266AC421EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:50:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1c1kROCy-y0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 03:50:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 85BC8421E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85BC8421E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85BC8421E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:50:54 +0000 (UTC)
X-CSE-ConnectionGUID: sx1rl0wyRkywvrY8Zn9teg==
X-CSE-MsgGUID: TUGpt9zcSkuTKSlp5om8Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59287844"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="59287844"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 20:50:54 -0700
X-CSE-ConnectionGUID: awj8ZCOGTk+DMXcgwfHH7Q==
X-CSE-MsgGUID: cc0OxhkJQjW0FYRFb1amUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="176757019"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 20:50:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 20:50:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 20:50:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 20:50:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NTzQw1vYvd01d7ahEGlqNc2AQ8UmBsqjxTrc/FOuTPogQCZD6PhTe1JpaAT6aGRW3BXXFBHOhq6T0YA+0s+S+0RMGu4bww+KTJNMmDRPYPM8ZLbN+05rV5jPPHkdJH494ZmbsKLdyA/pDMtaSdi6m9O/2gm9vwCrBfWV1+Nde50VC4OYfgaVI75hdupP+ESE7xak96L1VvFyTOG5KAeSjaW85OWr5vU8qSUDBWbtjjDph0h9TEyzejWqkdUNF+fqBuI2zslyPaxrhITpD/oobK+THsiWiuQmaDAHPig/r2YkM8gfnHMrXbtX6wx49ImbTNeb4HMyFJ3Lv9Rpi3ixdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zblCTIdmlGUGb/oy+BvBrba5jLlWGtjKBKpBowB8qz4=;
 b=KIFtR/A6I2JutieLdCmy9bZNfwJO8mTEZWJmmM9TfLDaRutKVEWvSrpHQC8HFYNXCSawF4A2zIxvtd4S6t8cFiiz6wKiFjYM/VT1TaKjhPRPyt3GgUh8XauOK92g+MEDohTLRegMghS46PDLMq8tLtEyd6jzFa5/2nfm7Z/gcdKvlZsZJlMfffEkcvTwxVYmZeEMWApEtVr/U4XQoI0pM3LaG0hL6zJJYZsfz90FJJo1d2ri3BO1H9y/thGxWNQoJT9Taz7RfsHT6pTEoUkrVa+qF2qx5s9dH8iozlkPF5tzY4GWcFEXLKcvXuHMusZVxfC8/duZIsEAoMRiSjL8ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV3PR11MB8579.namprd11.prod.outlook.com (2603:10b6:408:1b6::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 03:50:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Wed, 3 Sep 2025
 03:50:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexander Duyck
 <alexander.h.duyck@intel.com>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-net] igb: fix link test skipping
 when interface is admin down
Thread-Index: AQHcDa2nhko1Wx7jxkad43i2VGmbOLSA77mg
Date: Wed, 3 Sep 2025 03:50:43 +0000
Message-ID: <IA1PR11MB6241BC2E510C794CD17EDED38B01A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250815062645.93732-2-enjuk@amazon.com>
In-Reply-To: <20250815062645.93732-2-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV3PR11MB8579:EE_
x-ms-office365-filtering-correlation-id: 40847037-de66-4d5f-290a-08ddea9d0f18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?iKgKIZEOE5+4bONoM5Qklf0KJUk0jSjQlYeIbPsvIxlGA3JJLvkvrfgv1Oc3?=
 =?us-ascii?Q?GJnt4DENEmF0itOGV3IT6Ro1EAoiLnTrVKzQ3rq13q0Z1IVel3QwQ4DdSWSW?=
 =?us-ascii?Q?PxzxA1Sq0y6rpWivVuVnKVo6+k6xRrGxgFSIRZmyl8fB2YGzW4BiEpwmvrpG?=
 =?us-ascii?Q?W+aexaY4ZmD1aQqgu+OMaUE7bWkDwBrTiDDwgzr9/EHYT2Uu9VlY6WRTjnVk?=
 =?us-ascii?Q?qtUyfoRDZ4mUU5StYyoiQr87Nj8nZrxm9ZBGe0tT4/jWuaVSGMar/HnjBGBm?=
 =?us-ascii?Q?neRJqkOwzsgtcuAVgPT450e2hJcJRCnqTdFaAIk245VEcsVXDk1dNqe21d/f?=
 =?us-ascii?Q?LCTTwAwDaS7FzIFEZNfGTFz/9qaMb/wwElgL4aSVXzqmffJtX4wiO4t+Wihs?=
 =?us-ascii?Q?B0z5xApp+Zpg8Vgt2fR/jBNM2agHtF1hv6nNTqNic9WwTOtlfKeRojs0RyAJ?=
 =?us-ascii?Q?t20ShhyvyzrgNw08z4jfPU1qopLYWDNDcg2ZGlPSONlWwq/TIc0AbIykYF9u?=
 =?us-ascii?Q?jDVVjNbxa3OVp5nDOKGRZIi23Uxh7CxocqyZdEBG4LlcMDQ2Dpm4cddYeBLT?=
 =?us-ascii?Q?xBgQ2aVGHMgjVZLL3MfebJCJl3kmgDjbN1lxqppRKVTUQ5fEeVtXUWzdDcO8?=
 =?us-ascii?Q?b7RU8RBYbz6NsTLvbv6dbRRpx7inmA68cWLxxNvcd5i1rXrBjJK83rTEVO9z?=
 =?us-ascii?Q?6LuPjQN5TnG1gOCLr14KHJxZI1PQp8K0GeILS+Gv0hjVGR6kCZk1DRp3MxlE?=
 =?us-ascii?Q?12utDhIWvWqV5v5mk4p1NY0SzU2a0RlkpN266nYPK6VKmzmLwHYHMMMhdtBV?=
 =?us-ascii?Q?K+lFj8WNSgqjMImRai5aPNsoPp5lOBA+ZIfPBswFkk0BxkIb/G/CLd8eBiGA?=
 =?us-ascii?Q?JIRC+NRlOTCHI/APXBv2tpHqfxX9kzrDctydzavoUzSsWtInnsmqSfnRDIaq?=
 =?us-ascii?Q?HY28OW62Xx2g78zMqBl2Oqdb6i97RG6utIf9NHtOFOwDternB7TM8XKqWwbZ?=
 =?us-ascii?Q?Nhd2sMTzHmoaInDGikqFnF5StFbvIyb1x0uTPGbiM3sZ+ddLQC9S/P1BwaVd?=
 =?us-ascii?Q?cNT6sX8hTLua9FjFKqOjSjFE5cPzYY51KQYF7NaxJrzeJVIs9Vi96OVtsrv9?=
 =?us-ascii?Q?qvj6E+Q0t6gfASSs+laSu+F8teBTcCHPMFhSixsJ5kGSVsIcgaMRxTtSQ22t?=
 =?us-ascii?Q?wcBN2mwvvzsnXKa1ljswNzmRbkdnhJKN0nnPDLfiJ5IyuWPgw3T2Zf7rPxJo?=
 =?us-ascii?Q?1RYmjy6ETP4pS+RrKKTv7x6ye3fw+Eu3iz4PjKxJVaNQpiYsoIQiNU09gap5?=
 =?us-ascii?Q?yLKzHX/qYJ1GE+w3qRNi5tC06SdITV6Scg5jgRH3y4V2gankoOre5Jg4pFKz?=
 =?us-ascii?Q?71V1Euf5y7oTvTDN8lgf7hb1LRMEXRC1ayMejColkpO3YXQULw1ou8Oa9gwB?=
 =?us-ascii?Q?8hT08XW01x/Dav5mVsbMpKFbqZW/M1JilXgUBmpibHGcRFpPiuLWfA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DdxtGSCAeiklKGdOpGh/zVTSqY3j0R+fjoeNTdZQjOOHoGZK32+DVNnTo+5/?=
 =?us-ascii?Q?QRy8aIA9MEKGki1ankQlwPd58AJrkgBKfDSvJMdubFrNlsXt561Hd8HwGHKj?=
 =?us-ascii?Q?HHb2qnffRrEVfhwrgefGCSpp+stP2ulc4ODdxUyg3tLtNSQZJdgEypo4RsM6?=
 =?us-ascii?Q?QnBAvSY+mxRne6+B5/ZAD5GDQVOkodQ3I+wLVcZyhu5TuS7Cgk+0mbuWEQtF?=
 =?us-ascii?Q?aYCpVBbV+PxX4QmcKnY5M9MygTrCxqbWKB0g2whr4m9vx41XPH9BZjV/7vid?=
 =?us-ascii?Q?OhnZXC+PV7WXQGsqgHDLHoTo57fHyFyeCK/v07UoAp+TBkACLT/hWyN2dQcx?=
 =?us-ascii?Q?JbVDKoCeCSUNpuG+X6RyWFoseybdq+iUzu8bOvdDVMyTvkfYMU2lL4UNHCNF?=
 =?us-ascii?Q?xvw6t7GTpH4uvgQYzN0Z9VlFIba/TvhlLo2wXIXMeyCB9A59EMdRh2yM3Zj6?=
 =?us-ascii?Q?YZqdb5ZBZPowDlurMtSwrZl2gpC2C78wqbq/Yobuw6AFrtB894a/AVc5oV0j?=
 =?us-ascii?Q?hmt/TcalN9Fr3gLMKwojEVVsgcuB2s7LJBPlwxDY7Z9+DIHo77q4I3V43ae/?=
 =?us-ascii?Q?Ga+1vu6c6ytE4evWlz5sEqCrYYRr/YCFhlin4IArQfZ0D0L2Q40TxuNnFSoM?=
 =?us-ascii?Q?0cT9mQQUHyvR6njoFad1/du8pzSWYtvflEdaIX3x6oxptAsjH7MTyu94Kjr2?=
 =?us-ascii?Q?iH+rbXRWFHl5B05Krf76L4EQfSpC4jdo5/yr3gZhKUaWRZQ/NrBQ5bc3uNok?=
 =?us-ascii?Q?bbA3RUwv5Guy64ICP+RDmW8iyragHgEref9UmZXMfJuXYNR+5V8pmjekOa53?=
 =?us-ascii?Q?UZ5Nh6+GQ+BWXbsVFNK9E1SKMt8wb2UI1kJOJyaEr5FcT7lN1sD+/WU/HK2l?=
 =?us-ascii?Q?d4SuByIkyKgILHjfta5ZydEsTXqvj3imWdcsyki0127ld3oR1GssjofiOd5o?=
 =?us-ascii?Q?81koXlOpcv+iEJaFpZk8ix0fWkx7D/6KOeYVf4iJ9HT/i7ggLbezQGQgjVP5?=
 =?us-ascii?Q?T0SCBNtKbAdt/UKB1LDKd6S/66NbhqfpT6cuz/cwrr4MmkpsEFry9bQ1wMSv?=
 =?us-ascii?Q?kCh77+6oPtcjah+zknHM/V7TQuZF2QjRGxdWseZFrbg5XkJci4D2pV7c536k?=
 =?us-ascii?Q?CC/vJthMpe8LVOrJDsuww+pNiSQ3XezH9U9VvyD0wHjPdz0TZnpMsUG3PK9k?=
 =?us-ascii?Q?rZzf9lmQY+A1Ya5c0Ag8cneOnnVidqHh00Ofj9BuQ+6Y4cp1o5qISBwxxNxU?=
 =?us-ascii?Q?eY+QJNL+gIRwvdIFeKFA4ubguwJlFtRSx+9ns4LWADs8tV0L5nNxRu7D4PfD?=
 =?us-ascii?Q?7o7EodU5RR2iqzxD90VKQN0X76Q6vV0hZ91Df2X5Gow1gkhmIe1F7aEP78TX?=
 =?us-ascii?Q?9M9mrZh8Nj0Lri5lzyWCHREetH5qKCnFXkMjPipt5lih7Gx1xtIIlkpjJTlr?=
 =?us-ascii?Q?7hFT+u2R0Z0oAqYc2VnWFePdu8NNprALyBmswNfYeg39iBTTfUHUjtVSjZxd?=
 =?us-ascii?Q?K/W0iS+FPC8cPEF1gR1cpgasu66KhSziOFOaIFpg51mF/IYR48FZlQDn3MAr?=
 =?us-ascii?Q?TKDYybVRyAWqzgAbiS1kjzF4hAwTgi7RPPEZtaZb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40847037-de66-4d5f-290a-08ddea9d0f18
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 03:50:44.0398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f1e7WnXXQqjKeokLIUWwExTrXnzTjf9vdcVIMv78yBT+63Spw6snhX93m9ru0MmvlgqDgfbcfzXuTXsH4nAPnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8579
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756871455; x=1788407455;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zblCTIdmlGUGb/oy+BvBrba5jLlWGtjKBKpBowB8qz4=;
 b=Hi2CO+keHHgPTDrj07kJRQPN28p4eTyYtoxZL1CJGmD4DP91YxUvzt0B
 6ZhQq2fh+rhTPmtJ7Ti7X2tcufooYOkNdFCEQ3EDSNYTs8zrzhDhpMva1
 j/TEWFklJh7OAYsTLB38m1VBZ2jvSWVSjj/2itfyAChuyPn4WcQHIB2NR
 V32SHUQCOwXRbuw5VJq9T1Uj7j4aP3pTQgZ80LLwQOGjWFIA0HVsAE+7D
 +jkey8m3XaXNk96yNtaPOJNNHrVaPsjTEkyay7H63UlZKYrZligjA6rOg
 9FYgOxXld5IqJt/Z8kxdzJ2MzrXUNfzuRb22xR2hN/a0i6QOpE4E/Zx0s
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hi2CO+ke
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igb: fix link test
 skipping when interface is admin down
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
ohei Enju
> Sent: 15 August 2025 11:57
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Alexander Duyck=
 <alexander.h.duyck@intel.com>; kohei.enju@gmail.com; Kohei Enju <enjuk@ama=
zon.com>
> Subject: [Intel-wired-lan] [PATCH v1 iwl-net] igb: fix link test skipping=
 when interface is admin down
>
> The igb driver incorrectly skips the link test when the network interface=
 is admin down (if_running =3D=3D false), causing the test to always report=
 PASS regardless of the actual physical link state.
>
> This behavior is inconsistent with other drivers (e.g. i40e, ice, ixgbe,
etc.) which correctly test the physical link state regardless of admin stat=
e.
> Remove the if_running check to ensure link test always reflects the physi=
cal link state.
>
> Fixes: 8d420a1b3ea6 ("igb: correct link test not being run when link is d=
own")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> drivers/net/ethernet/intel/igb/igb_ethtool.c | 5 +----
> 1 file changed, 1 insertion(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
