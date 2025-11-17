Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 624D9C64B29
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 15:48:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE02A8264C;
	Mon, 17 Nov 2025 14:48:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jnnFG9-JQiLT; Mon, 17 Nov 2025 14:48:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18A6182668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763390893;
	bh=mhXOB7Or+FpghyQmp7aC2tt3Q0ppfDEuxCYW2mf9NT0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZbEGsAuPg+tGLDH6BAuHuLuJBcFiJm+YGLx/z4YxrxhPTJcauho9AV0v+SsSjt4OB
	 ZYsSVf38+sXs1WNo0tLMmLS/a1+pLV2zQC/w4uStdY+rMKeV896vwL7WL5ve6qx30Z
	 73Y4+IwwJ5TwTrCPy99DCAavuJz+wescTaePrit2ogm8v9mxKOr0ZATVFSjoJJ/pb7
	 BYpnk+bB4LCCIBtU9zjDcTjK4+CYkY98oIN0LBTO1R7CaxRfrsCF8si+cpQq2avFXb
	 po3PMC/2LMIurUGWieXEt3yhOyHjaqD3uqlc4230i6Gli12Rt0VjWQ5e5xL9twRN0D
	 G4xFV9i5QIkpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18A6182668;
	Mon, 17 Nov 2025 14:48:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EBD1158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F06740514
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:48:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U5wlw0L97ixw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 14:48:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2357404EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2357404EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2357404EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:48:10 +0000 (UTC)
X-CSE-ConnectionGUID: 6hhG/jN0Sb+E1pmveB5uOQ==
X-CSE-MsgGUID: KBXJlCEjScOaeS6eF4Vh/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65483433"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="65483433"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:47:58 -0800
X-CSE-ConnectionGUID: gD69LfjUTYuPH+iDdgkqeQ==
X-CSE-MsgGUID: o4zDyWPvTd+uj+jeornB7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190271782"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:47:58 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:47:58 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 06:47:58 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.31) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:47:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZWBBiReVRtZlEMGAmQfWRiAqF9xFTZ/SNPbMi0aZl1cTMPRpXaTHLrV9QfzCqRk9Q1tNYDEXhfXMBjZyJgeRtywqanb5uTY8paoB+KgnkXDr9VrXsn8PAxwQvL9UA0j+sj0PzQrxuUnpmytAgeZlDH0BYUlZzqqJClqSpwbJDBfcRUQDAuUThrgRtjzy9U3BJVPA2+xBiyTrzPBFB6L98viwrYQc4lZh353AvPFEN6MXNVz0170UNEWf6YhvDeLKXmzO2IUCIvRo/TRDYVFZ4mj9RPeh/UNfuENn0dQn0Ryx0KPWDqv7CN7eUNWosCWeS4NVU/RpFCMipkTPUh8fow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mhXOB7Or+FpghyQmp7aC2tt3Q0ppfDEuxCYW2mf9NT0=;
 b=TW2JHCdR2ldHfiL5K+bBDzyPMuvc8ceTDSZr//DxqLulFElDlQdIHLzxDP2V7ywkEokh1Kls/nhz7rsDAPofWHBCnUe8Ygaxu6MQ32iiArbcy9cicZFdp+o/XnjRyMrAvdO7ShPVTFWe0DZz3mhKQmLCcDF7fjX1vaR3ypnaGE5rLCDyiC4zqoPLSwkDOmx2HhdsW7nXN7tixCZNQBK8M/bR1fgtevio0zQ9iNShlNjQjWAqld45q4y5Yo0Yp+m7pST4FuXts2sGJnpP1uz6XZfsYttqB+0zRfpG7yLZEc9QZh8oeuoXSzmyMEXenF5HAfd/8Bd1ADmR9ROtKijQMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by SJ1PR11MB6082.namprd11.prod.outlook.com
 (2603:10b6:a03:48b::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Mon, 17 Nov
 2025 14:47:54 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 14:47:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset
 checks and initialize the mailbox
Thread-Index: AQHcV8kj9CQiYmcEUESD0EXZgpLxK7T26tMQgAAGfoCAAADq0A==
Date: Mon, 17 Nov 2025 14:47:54 +0000
Message-ID: <DS4PPF7551E6552F1D516F4C85E7870520DE5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-14-larysa.zaremba@intel.com>
 <DS4PPF7551E65522C74552DC2ADB1887607E5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
 <aRs0aeCUYLxPbwTd@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aRs0aeCUYLxPbwTd@soc-5CG4396X81.clients.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|SJ1PR11MB6082:EE_
x-ms-office365-filtering-correlation-id: fad8877c-1e53-421d-87a6-08de25e84a4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PYl3fLB/1Oqp+RoBQP8ujfNY5VWiiuDpIOcYIqnIpM7QBAh08Igv0LhalPGk?=
 =?us-ascii?Q?AnJd/M3Z+AF7AsnlBkmLsdCpZSL1gU+UXwar1y467eEO8Mxq4duHUvzw+EI6?=
 =?us-ascii?Q?9DBUxFHwh2JYS5coI/17VkTXFJAcz1qzdAYC7mriLxnAvo2AmN0I3LF8ZFbo?=
 =?us-ascii?Q?QJh7osw/iLde1gP8Zo7OKd9zRXOtNe9bvkl9NdUPrsuhvKtzv211ijdtg1SS?=
 =?us-ascii?Q?gitvnaFjz0755dC2ebpxxxCRXTwJSCke1RhIEB5WEJ63x8ImpCDp7fVlOEr7?=
 =?us-ascii?Q?nl/voUCzqfHjdjvNZSdWVCnE+Vig0d7Yu9z0GRbL0Tu3xpSmQSFdQkR96vdV?=
 =?us-ascii?Q?YT0OHeTv9SKFdMS1YwbdRtWtZWgsEkCMaysS9IrSawgC4cicH2mSbC8db/Cm?=
 =?us-ascii?Q?tmUo6hVINoL4leOy7uU1CoBVNJCs+SZ4Ywfz45ItTUlS1yEbHuK+qGYX5glX?=
 =?us-ascii?Q?KqAPhGKlKrDQ6wBZkWpG/lvfIjW+ZSPSBAm16XkCPJ9udhuqcyMvciMmJDqX?=
 =?us-ascii?Q?E/dlLZBIYHNEXBHYPFqy40UF24DOXit1kY28z9Fg9ls3VTMDnn/ijkdgbUmw?=
 =?us-ascii?Q?snXkM5VgPOBY7PtIP4iUBBeG3s9K8RqbunctTpMdk8H15YXVBTMz/v8FHJWb?=
 =?us-ascii?Q?YOjqJHRthkDr/tSVNDKX9AzhUEHYpQNbUmJaeqvozZoQgsDPKhgK03Sax9An?=
 =?us-ascii?Q?wCR06xEXRbyGtrX3AksIddL72rn5d7nmevEnVN4FqB3n1WzZZ63PfrQ/S5rZ?=
 =?us-ascii?Q?DBC6W3YR4NLcTjWJ/Yurh4pZmIVSZntZQRMvY64hxB3XeiVjHWz0OfZXRIrU?=
 =?us-ascii?Q?GQjd+V3Uw5fPo0I21FBZnnPlba/cgsRV8EOJNoKygFXjDOsfh2w+vcGQpKnM?=
 =?us-ascii?Q?UzITWn01MToFNquGE8WXTySA+UTjtjIEJeHgeHvrRPvkgE3Ysv5CvW6OIquv?=
 =?us-ascii?Q?c4PCDS0wA9wHVDObV5E2s0KM7FeZ2otLvbaNxw6y7CAzO1WhbhZWdnEdWXDn?=
 =?us-ascii?Q?bUpFT9cmtVITb6A+1bwEuQtiQlt6QhSRulLfkccG1E0Csc/xRgTe8tvGSxPU?=
 =?us-ascii?Q?z1wj5bJ3yIqMU54t4FjZf3Vnkn8KbjI8Zpw9vKHNMvl31qPabA24VcI4BouI?=
 =?us-ascii?Q?Mx30K7aYKzJIY0znaa6kYwMotL9nMUHQpx7fnPC9peBSzUw81E44XPDxlskQ?=
 =?us-ascii?Q?8Q1wR8iHUCcDoY02nk7jVSfdsGPzMD7t9cqbWLdcbrEsOxHK+gb/deG1VOI4?=
 =?us-ascii?Q?o6PNGgtzTyxEvOeiDtDqwJrtXI5Coqq6ncJVn3V1bo2+E8ST3SXER9eZGJLi?=
 =?us-ascii?Q?avolf9ZhnI8fmpnFgZIydRuXusQBIY7awrk1WRrolZ4XVLZUVU/VYKSDsNmF?=
 =?us-ascii?Q?1Kwpj6tpCUbHurhXdQ1tnfHUrrFQpOV5OXfKaesoswc4g35ekzFOXGAHJyxx?=
 =?us-ascii?Q?RbpZevSXX2BIA5PU8SLFXqGG59ABCDeXl+ZbfqelTZWor6cUAnQ4Q8junmLP?=
 =?us-ascii?Q?z6CA8e5/mc7WknsKy4tyORZUyADXSh9usTkv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7K59Z22ai5+HrO9GFcY9cwtUzJqSZeDGMYGqLJRoH1etQDPBQf2cqzH4GMn1?=
 =?us-ascii?Q?A+xSuoR6R1BtMuRmTrk/1jk4+N3we+9TTBB7DzZrTLMYVEufR/hPXP8+BCuZ?=
 =?us-ascii?Q?qRf/J1FPulSAwJZ4ovKGHTuBiZCqOXWfIqUtw9Vc7ZPkSCiTXaNEvGxmotUN?=
 =?us-ascii?Q?S+N7fX1lk6pgbihx0MFa5lmitNSQ9akv++AvjILo3H6VG58I4fq6jcUwDKlD?=
 =?us-ascii?Q?M9TNt+HMAVPVD583U3PE3RJ715SbM8DBbf6f08sy9+oc6PLUM0xFf2gZuLwW?=
 =?us-ascii?Q?J5v1ENdLQ97QBRH1K67ondTXGvxuPclGHl24B/R/X8zzZu367yvb2580YlBg?=
 =?us-ascii?Q?C7nI5U6ZdLNrfivrGeHz0B+2zOb1sh/2t+xDYlcZjdXRxzWffO3s4/7UgFke?=
 =?us-ascii?Q?7pA34I/i2b5yq/CNyiFGsn+wZKCKS+bimb9XFNFbUQ9yzm5ylST+D90HnIFO?=
 =?us-ascii?Q?ChTONQWF+AJMVOyeqGhUar5fVkYU2vBgEoaw0BrSoEJz8KFBpYOpenXctEtK?=
 =?us-ascii?Q?pbO/SCUQUZ7S2PlQEC6y1kI+EJeUWkmHPyBTR/gBOdilhxnv4MCGEU0do7LJ?=
 =?us-ascii?Q?/lpAaWuxcN/KL4yQsOocW+yOSdmFRP1+nLxFC2sH3DhfdHz83L8EedtvFjes?=
 =?us-ascii?Q?is/IjdEq6y9cqDhUKYUPtjMzl8onS3ke1j1Y+Uccsp9VCqSxWJS6FkrzffNg?=
 =?us-ascii?Q?qF/q0t1Fs5bsAeScYSAZthUWm7sQubTfmM2COav5JczQAgpzR7LceO3xt4lN?=
 =?us-ascii?Q?6VpYClUUpL3Bu9hcqlj1eslkrZfooK7cnGzVdMsQqdQNdcNwtp0k5cxasor7?=
 =?us-ascii?Q?tnHYTNZi7l7dFDDna5j2wFt+7kuEPNsPXRdDmj4Z0w5KiDhhlmVwFDPJMu+M?=
 =?us-ascii?Q?1H69mUw9bV6Mt4mCcfwbGX/iZC+KzvTYGt/Kqp4HTqtM2hgdDWSVGPrnf5Eo?=
 =?us-ascii?Q?6UP6cnHuEU2I8jUsOYeyzY+GaaYSKMDOjDIV1qStbv8BLSVjaJeXj1eDhP3u?=
 =?us-ascii?Q?zoN0L7ZS75OZf74QbPub5JkZ0ezSI0HpNP5eUlyDX/C7UVRfuah43OZdsEA/?=
 =?us-ascii?Q?ji6T25OrzwxLyF2lDjbp2gEsIbHdaq7ZECWXcCDEFwlTbJBkUbFHB1vF39m2?=
 =?us-ascii?Q?zE29iqFH0BjVJDLZs4kYEj2LluTPgDC/BYMfqTkFQaVzx5jsAC1QRpJujCKd?=
 =?us-ascii?Q?lcZ4ShGuKAOIXHVOdkI0PSQ6U7Who9LQbZAcWuiYgnOJBIUKHLTEKlbq0jfo?=
 =?us-ascii?Q?wPlhY54IHrHIJ2bsiVkpwboHZ1wSRTm2hZvogSJVGmK3Bz919OZIfFQ70dbH?=
 =?us-ascii?Q?s6JW2Lu+kMYmC7JeQO+sHUdbzYeNY7IFYzB+EyDuL6Mdjpgl+jPFhASSwWOP?=
 =?us-ascii?Q?3LlyySaqXIyy53LhLwbv4NtwPFS6UlGwwuSI0yE/9KpzVJ4wtYyjbeO29+3C?=
 =?us-ascii?Q?IHsEdW2oIO0dknZSwJv2eqzwKqD5qxQt3GEo6NUrQyWZVFJ5G25uzg3Pp9ck?=
 =?us-ascii?Q?xCQUMM2GoJwVv3ZInbJcUAvPD08TFD7tjKb6rqBQzkvrSq0MyxZ5j/EpkCpJ?=
 =?us-ascii?Q?GEi8ORjghnJi2bzjExuLzt+ISfinTKVsRAG5WhcAzIPZyyD0uFUdgbC7crCS?=
 =?us-ascii?Q?+Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fad8877c-1e53-421d-87a6-08de25e84a4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 14:47:54.1892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IAhrnZtHfY5LjtWqC3tzuTPGRnefokMNP2VZ4PNTKcvoJ0ggxdfKcXTUqXVtIIK/LLRB/NtPPMRpkuQmNX8iOWBMN3bIj1A1GSM8UjPnfZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763390891; x=1794926891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oTqoYBwnDy/XU7iPC3qFYQamc5NSU8g0jcspCJM+f/s=;
 b=jslI3fbqdU29zKPyc8Qy7OBawU4spYHFDP9jtBd169WjDVBcm3cIDawN
 gEJzRtUbHUgPhrlka5hmY21WOG90cCn2N0LhltGHTMSmdn9bFXGHc4rfV
 ZdJxEFx7atDRnWnQdOJzboAVJX1a/J3sCBjpOgT/psn/2QZApJqjiWvdd
 M75IpCCjE0Q3hBwx3aYQp7Acy6LBcoLBOs1w3xGZ2yuLlzv7SRLhCNCRd
 xKPLNM0eCzr5z/idaGDCWkeZMMQPKQzfp8Hn8h7/jqswD2gZUv59S70iS
 D5db82QgEciIh1Cxy85S00vYeJMu7LUvHcHDwdgj2hWblStY/lMb/FChC
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jslI3fbq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add reset
 checks and initialize the mailbox
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
> From: Zaremba, Larysa <larysa.zaremba@intel.com>
> Sent: Monday, November 17, 2025 3:43 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
> <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David S.
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Simon Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>;
> Richard Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add
> reset checks and initialize the mailbox
>=20
> On Mon, Nov 17, 2025 at 03:21:06PM +0100, Loktionov, Aleksandr wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> Behalf
> > > Of Larysa Zaremba
> > > Sent: Monday, November 17, 2025 2:49 PM
> > > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>
> > > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> > > Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> > > <anjali.singhai@intel.com>; Michal Swiatkowski
> > > <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> > > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > > <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> > > <emil.s.tantilov@intel.com>; Chittim, Madhu
> > > <madhu.chittim@intel.com>; Hay, Joshua A <joshua.a.hay@intel.com>;
> > > Keller, Jacob E <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> > > <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
> > > <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David
> S.
> > > Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> > > Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > > Simon Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>;
> > > Richard Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
> > > <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>;
> > > netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> > > kernel@vger.kernel.org
> > > Subject: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ixd: add
> reset
> > > checks and initialize the mailbox
> > >
> > > At the end of the probe, trigger hard reset, initialize and
> schedule
> > > the after-reset task. If the reset is complete in a pre-determined
> > > time, initialize the default mailbox, through which other
> resources
> > > will be negotiated.
> > >
> > > Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> > > Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> > > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ixd/Kconfig        |   1 +
> > >  drivers/net/ethernet/intel/ixd/Makefile       |   2 +
> > >  drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++-
> > >  drivers/net/ethernet/intel/ixd/ixd_dev.c      |  89 +++++++++++
> > >  drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  40 +++++
> > >  drivers/net/ethernet/intel/ixd/ixd_lib.c      | 143
> > > ++++++++++++++++++
> > >  drivers/net/ethernet/intel/ixd/ixd_main.c     |  32 +++-
> > >  7 files changed, 326 insertions(+), 9 deletions(-)  create mode
> > > 100644 drivers/net/ethernet/intel/ixd/ixd_dev.c
> > >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lib.c
> > >
> > > diff --git a/drivers/net/ethernet/intel/ixd/Kconfig
> > > b/drivers/net/ethernet/intel/ixd/Kconfig
> > > index f5594efe292c..24510c50070e 100644
> > > --- a/drivers/net/ethernet/intel/ixd/Kconfig
> > > +++ b/drivers/net/ethernet/intel/ixd/Kconfig
> > > @@ -5,6 +5,7 @@ config IXD
> > >  	tristate "Intel(R) Control Plane Function Support"
> > >  	depends on PCI_MSI
> > >  	select LIBETH
> > > +	select LIBIE_CP
> > >  	select LIBIE_PCI
> > >  	help
> > >  	  This driver supports Intel(R) Control Plane PCI Function diff
> >
> > ...
> >
> > > +/**
> > > + * ixd_check_reset_complete - Check if the PFR reset is completed
> > > + * @adapter: CPF being reset
> > > + *
> > > + * Return: %true if the register read indicates reset has been
> > > finished,
> > > + *	   %false otherwise
> > > + */
> > > +bool ixd_check_reset_complete(struct ixd_adapter *adapter) {
> > > +	u32 reg_val, reset_status;
> > > +	void __iomem *addr;
> > > +
> > > +	addr =3D libie_pci_get_mmio_addr(&adapter->cp_ctx.mmio_info,
> > > +				       ixd_reset_reg.rstat);
> > > +	reg_val =3D readl(addr);
> > > +	reset_status =3D reg_val & ixd_reset_reg.rstat_m;
> > > +
> > > +	/* 0xFFFFFFFF might be read if the other side hasn't cleared
> > > +	 * the register for us yet.
> > > +	 */
> > > +	if (reg_val !=3D 0xFFFFFFFF &&
> > > +	    reset_status =3D=3D ixd_reset_reg.rstat_ok_v)
> > Magic number, I think 0xFFFFFFFF should be ~0U per kernel style.
>=20
> I believe ~0U depends on the int size, but GENMASK() could work.
>=20
If you want clarity for 32bits, of course GENMASK() is the best.
With GENMASK() you can have my
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> >
> > > +		return true;
> > > +
> > > +	return false;
> > > +}
> >
> > ...
> >
> > > --
> > > 2.47.0
> >
