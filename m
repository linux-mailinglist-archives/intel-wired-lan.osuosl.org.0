Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A695BA931A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECEF260B07;
	Mon, 29 Sep 2025 12:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rMxqJdGHtayq; Mon, 29 Sep 2025 12:26:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C56F60AFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759148771;
	bh=atTMGU4xQG59VrLn7/xYK2L8fTSTQ6D2loF1CqwmXA4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rp+NLoNnZda4bOfdI6gkO+Hw0SxRKj1t6Sp1uLEvh3jyv8jLmOVZPKENf2/ZeFfvS
	 eUKQtbzUd+4idq/zAhP1sTXW24cwWJhMACbX6L4vshZxxAr0TpQ+XUkW8jkHY4iCvx
	 qzATCqkW0q05Zbejm4diLxkRJY6EzCU2Ni4MR8utMPuJr9rNd0D2sQNnfGItuDBhGt
	 8p1Zx288fEF7SnuGAEXv5gvubnITV6ckrO5YYVabXx6QoLoZTkDeOOsjkJC7Ea/js+
	 FpTLFLSEZMgvv4sEQjcDTTiedgFtsXJrzQyo0u8m+WBohHHreZYk2CVSKn4QaYkBHT
	 bI79wlktQwzqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C56F60AFE;
	Mon, 29 Sep 2025 12:26:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 46E98194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D0DE81131
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DEwn_9ffbiQI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:26:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8041C805D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8041C805D3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8041C805D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:26:09 +0000 (UTC)
X-CSE-ConnectionGUID: bLCWD2BRS7CNVaEpsNKl4A==
X-CSE-MsgGUID: 9o9QW+PNTTes/CXsXzpyiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="61098937"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="61098937"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:26:09 -0700
X-CSE-ConnectionGUID: SfeBCpBmSTafqRnJ+qbtgg==
X-CSE-MsgGUID: ufZugBU7T62g+NeeqUbxqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="178649165"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:26:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:26:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 05:26:07 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:26:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lLkbzobt8EToX8TtWz1sozRfOPYjPxrzG5Zi3SGzIA80FS2pzSKfjjZT/dKiQin5TTvDp83SnG/vdcRVoc/1DoovNNkQCdVbAiT/1FcOtL1Sc0PR9crNU213mRnnPTV7FjfDO/uR7SiIwHYrH3lqeV5XzBpk9+hkv4W+tnl+E0EG8d5dGj9PvtL0d6NA1c+YLVyu9enIbcMUvomF0wmmIbW3tIWD0kGsFuD8Vm2lHdnKhr9Kgp82s4Q1eyQPBadBnTzbfxmodbyKmDx40fdw2CBAQ+wou8j+sIgND+cJWk9Na0AHtmATW/CmDYw0nSB1d+N7bENYKgf/u3XjGeAy7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atTMGU4xQG59VrLn7/xYK2L8fTSTQ6D2loF1CqwmXA4=;
 b=UFnYSidQTUQpYb+t5xMKzEcRcVvJou+w/ZzCHa1H6lrB4P/zFx0ykQBO9XrawW5WlHtelglTjggxFQaqF4aN9Pwq33jkvOVdQkjAUpuDWQA8xikyYNT9ykjlNXlOGGRQ1GJ8a7PLHrB0tP7yYjHSAutwmXkFe7NOaLsf47vfx0uNR/DcOpEj6z3GtsYioMiBvL1wbDzXVlx+Vcc6k2mIdeAiNS6RpkdGqTJMVYKb/BI0K2AwGzzXPlhQvw6wlzyA2ta8mhHyvzg10wpJTI5rNdSMtqhYuMtyuCaAdJEuk3kcsDcBtmBhS+Hk/DNKloM90n+MEFQo+dUu1I465CzTBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CYXPR11MB8729.namprd11.prod.outlook.com (2603:10b6:930:dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 12:26:05 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:26:04 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: ice_init_pf: destroy
 mutexes and xarrays on memory alloc failure
Thread-Index: AQHcI+eauHg/FV7IQ06cQH29h8skf7SqHn1Q
Date: Mon, 29 Sep 2025 12:26:04 +0000
Message-ID: <IA1PR11MB6241411C8F02BD86F01472C68B1BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-5-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-5-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CYXPR11MB8729:EE_
x-ms-office365-filtering-correlation-id: 9829282c-0b32-4b44-49d6-08ddff535c14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Y9QbeCInIUqko06zAhOjagHiDhPdg1alTzuFvKrplWBuMInSuLu1pvUG1TBS?=
 =?us-ascii?Q?dY+Ny/UIHUyRbDPRLk6pAWzTZ9HLmiMpHQ7V0+dLIYAQ5CYOKlfkDSYqOK/g?=
 =?us-ascii?Q?2rhkgkkA6SXMfmwNwY5ZzqQQpOemr+xPcFDHpKJKwPvd56d1noz36MFfv7n9?=
 =?us-ascii?Q?EcFNzhf71cKtrXbFCpaHLIY6pgjYh3L7L3mwQE+lGs6kumOr5zRnuHLQw9MD?=
 =?us-ascii?Q?rp27xBQWQImJir8n7IQb7zbX1cJy6c7XnzxOex3KzqZ65zqDpnrU87PvbZDk?=
 =?us-ascii?Q?+PFMxon+FDVlo5dOl/+ejuPYQQFI/R4wSGanZZgb9lj3pR3blYK25imvV49f?=
 =?us-ascii?Q?NAlVfsv5akqudzMcmY4i5c8sncsjUXpqgBiPO/U7O6B2xiRgkg/0mMyqpKY/?=
 =?us-ascii?Q?nvCudwMfnRGn8EsQ/P4i8nyUTK+JWwgbzJX0lkHpp7aXjvg+na57MleA/Hfb?=
 =?us-ascii?Q?AEKoPL2wqR5uRaHfAQ39HX5P4fpCewq4EfPpeI1EdG802j55VLHrBLNLWKeA?=
 =?us-ascii?Q?fQbxtGKdbj2qC/s6ZzPb8DCe+6+SJMaOqGOC0bdQYUQFL1b+uxP93KCTKyYK?=
 =?us-ascii?Q?RI/LvP1u53sAAZ8yFOVYYFK0Dh49WORIuUwpgcDzzVWd9CYzGf4xt4wCB0iL?=
 =?us-ascii?Q?ejVt+zteeIMJrBM3YTrBz7QLV8umXWqNxbbXQ+NzIlDJAY4+XLYLqjIOCNaD?=
 =?us-ascii?Q?iWTo1V6m/N7KpC+HtCSrrRuTI4C4DNt43Mxj0Zi2PDitFofGt+V46epxNE7h?=
 =?us-ascii?Q?XUNlDNS1MY9ozUzQd1ATpL2aiBZosStymjZWzNHMwxD1AWyo8bQt5AHxXxcf?=
 =?us-ascii?Q?rOHe36Iqu9IxPS9yky6evKx3GVxvNbZlsTwNRdLqEUNM/cl9kop8ExlLmLWa?=
 =?us-ascii?Q?7YgL5dip60YmzMwmMKAKq72Bcg/nnn1+LovdHmgGn02x4SUMV3b9YAPweqvz?=
 =?us-ascii?Q?7APCSwqEsIYom9xST7GR/5do1eemZQRrmo7srCsxkmoGzajPlYJhb19dX+Ua?=
 =?us-ascii?Q?7lZyXPbFRLKxBgzLNeCan9jf9zGWzLW3UaOSzQ30FPUSSwOnEOenXkgyt5+I?=
 =?us-ascii?Q?I+nrMRR18wouHkXkxMHBPqk05ledshJgBlbqTCcxj1wZfcH36O/i/UIc3P7Y?=
 =?us-ascii?Q?jKxlOTUvGKxWW7i1Kv3MkAk7h4vOlmU/7nVrOVXxHNsajinG2/M5InIYtu2O?=
 =?us-ascii?Q?EPQBwHyND++oMlHbu9046rOTklVEhLs0iRw2mYb2vvr5qpUyKaP0u9TrGb59?=
 =?us-ascii?Q?bAsYaI/Ye7gka06lQS+At1dezfK9vgzrG2BrblgrpPrnuda88zncSp4Gzb94?=
 =?us-ascii?Q?8byRt6DBHX1qHySSxiDI2R0GQnoTjSBYwkegfpMA91Ee7boiIcJ/iZSemLnj?=
 =?us-ascii?Q?TcsIowtbSH9Y6gwxRPclQNsWqYRga6sdyV6h1YAlK8vhzMnbL3Pf5R8EWye9?=
 =?us-ascii?Q?dIhWoalJG5GnyeVQ1bWiz2mOpomPNMjdbrojtxqKtuZ033Xcgs31yXuZ8iWC?=
 =?us-ascii?Q?pkJCx/92quEGraD6P7GZujrf6pjehFoYQBtP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fhhug6zAWHg9L72ZWGNtWavYElSSyWS5JNFs4mRhjd6ZBC89qufnkvdT7Zho?=
 =?us-ascii?Q?RCQdqyD7ZGOXK6BZnKYQsbZMLw2qHiF3zYA3N0lNaPuXMBPPi+nYAQhEKLJv?=
 =?us-ascii?Q?NEy7cPJ8m4W0QXlahgXygFm9+M+6HlPGafiVamyvRxZhuo0RlghVVKB94m53?=
 =?us-ascii?Q?HtD2w80lag08CUBOfmWTzphr9WbOEUBFy9kHTIt5gOoCgwlQ++Cjuduzot5b?=
 =?us-ascii?Q?O73V45y52wiipT6QU8HhBh7ohfJLM/pJZwKU3APYz1klp3KeNP1/S3wUMq8t?=
 =?us-ascii?Q?42yM+yqp9DfvJjyy4eop/MT/yiHcnuX+lwwQWCCaZCC4NEDVDauizH9YZLuZ?=
 =?us-ascii?Q?oLBa+5abSoxZAuv1E50KaYtcLLfkWKigndUjuTzsnPYdPCWTv9sDmfnWf8XG?=
 =?us-ascii?Q?O9/JMcukB00A/puKcUZ53o+UiRYqHfUeDLPzCPL2Mmm8lJOoHXL3LKJkEagJ?=
 =?us-ascii?Q?i99Fhimd5QaBXnyQBwbq0h780ZTq9ie79U7c15Cpz8Ki6s2O9pMEGyFq0xgd?=
 =?us-ascii?Q?9qDJ5Q4amZtrxUMtzEqyDnx6Oio3e7/5K32Nwrk6XZqENGjoJsyoZII4Kce2?=
 =?us-ascii?Q?7oCToLjIrHU8zKiQRkTYnus1Bm5t8WzJDBc7O9cXnIZ+NwGxGdcDLJoJDhQr?=
 =?us-ascii?Q?6S/o3au08MA93nDxXv3D5SdU/MfCL3sjVWC733NOw4ojExUpuNENXAMBqgO+?=
 =?us-ascii?Q?YDmqcqzJQJvS0kz+fEx2STynStOwG4TPkV03N3gkkYdvpJBMsdbrZiW4wSnR?=
 =?us-ascii?Q?pOQX4TA6IpNOtDOiS8bfbCx8YgmF776TTnj2IzI7KjmnNoyGLuwaL4ffEkFI?=
 =?us-ascii?Q?YBYXlkH2MQ00AQvmLcQjRtz7vCBusksqXeF1LOrEQhfI3/AStCd1sLgFT/v+?=
 =?us-ascii?Q?9xPIJv601qtaEcNlweySGREiluc/ya2v7DcWAaJYPYc2P/E4xEkzSjfCMTQX?=
 =?us-ascii?Q?/r1GhM2l4XOp7CZbvc6kzzBZydHQdrjewJIqk5qD5jO89oGf/elz4q5oYQbS?=
 =?us-ascii?Q?QNAYtv0niT3jLUZNFUwalOIB84v87g2lsSciyPWtYYuZdGKiTCmj7dp9UdvX?=
 =?us-ascii?Q?xh+3/4GJUPeXeNS2lm4NmFDkwUmBfTwgIoGMuUlOR/sedm6tDBFGxfZ33s2f?=
 =?us-ascii?Q?YQyBWoZ4jNgXKlB6HnpCdPOCZ04b+5teV5Z2lC+cFhpiv7Bqui/xa//wgRJL?=
 =?us-ascii?Q?ynj/qx2D74ugj6GRra/+rYiKH4LrnZZrRkwJ955ySZrd68u4HuB9ly5vggt1?=
 =?us-ascii?Q?oHnK+evCH6GvZymheW4vTc4BQeEpNcAlfsCYTBkADETKayz/lQkNzhoRM3yl?=
 =?us-ascii?Q?/KgE8VjpC9dGc6h9VPzvzk+vVCCXnf71cn2rPwHDEj69X2xWqmrNtOIDbBWL?=
 =?us-ascii?Q?0re1+04rDjdTuOq0zmcRXIzXwpYrsao9fZaRuqAg0+Gzn74DaK+P2ld1k5pr?=
 =?us-ascii?Q?nY6FNAK6I3zRDr+lVL5TIv1JwenEgTRqGCySDvFYqzvmpw9MNloKlU7T2p6Z?=
 =?us-ascii?Q?V373WdXaAbEClvTSAec6Yox6QXHQKLSZam3mCB/ybysq1uHl/dZR2OXFPs4T?=
 =?us-ascii?Q?LUod9wmFTbPC5/HZ4mzDj1CgB52pudUeaBECATgB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9829282c-0b32-4b44-49d6-08ddff535c14
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 12:26:04.7992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zsq69lUOilqP3jKFNJCzr/o5H7HoScw/vFc+zJEprB5m0OnkGJWWvzbQjtSgkV3pkNQdgh2DXJFG+dIDG3jMqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759148770; x=1790684770;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=atTMGU4xQG59VrLn7/xYK2L8fTSTQ6D2loF1CqwmXA4=;
 b=JKDCklAyONT9ueIOVZ9kGtCXY+/QUlNCW0h4W5o4tqYLYmOM6McdBA/e
 r+/e4D/3nqp1kH994uwgXb52YVbsGEDtUF5LpP2cvLKxyDtGLRZkp6zCv
 7Nr37JZY06axhapiVqIrm9l0v4M5NOj3+34icqzJ46A9TSSS1r8rGlAgP
 kf0yMIKZ8SgRbBWD8FvtqeiVdZRC+4aIPLMQGkqMlR2joSNksCRp+DqOt
 UwMZXX4pER50sG/lAG2VJ3rR6G1gb/UhgtwMEm4Mn/bffH69fJASy0Y91
 ENdrVJJZbDshDv6GzxzsZCd96mg+NgAz9zf1NYSbkAb/XP/eWtmKXr/pN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JKDCklAy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: ice_init_pf:
 destroy mutexes and xarrays on memory alloc failure
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 12 September 2025 18:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel, Prz=
emyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: ice_init_pf: destroy=
 mutexes and xarrays on memory alloc failure
>
> Unroll actions of ice_init_pf() when it fails.
> ice_deinit_pf() happens to be perfect to call here.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 21 +++++++++++----------
> 1 file changed, 11 insertions(+), 10 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
