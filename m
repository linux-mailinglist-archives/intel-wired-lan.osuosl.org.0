Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D5CD02D32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 14:03:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1066F8246F;
	Thu,  8 Jan 2026 13:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R64L4Jj3tQIF; Thu,  8 Jan 2026 13:03:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C8EB826A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767877401;
	bh=z3sgDHNushMitGKD5PLRMkYtNYhH3xSHadlS3BGOFl0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hsdw+AfoTpCYR+XlOlMHDcPnX/vZEy77rDoheKe8QDG0oYwoXrg/IAgRO8uQKPgOO
	 RBfxc4Yt72wAugZzXkjpfuts5RQ0ClFicFDNfgn9p8Ak15BKvEOVFwWjLk0Dxlapm+
	 J9gGs2ea7B7HTF4udESyEnOtC1QGM4H8hXpVOxSCrkFodnzpOKTXWD8eWnb7hF4LPA
	 2F23OsotLpIrbSCdaWuX/s/FoR2tjuqcBjCvkFG/gXQvb1DxheQ9mcZ+1GZ9B4stKb
	 yO+k7aOErK+uM77pT+v8aWAWug9FuwB55Dc5hy8BNFs4SD7bzmg/XcYQPEL3gqSvy5
	 IPhcz+8Z8sYEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8EB826A4;
	Thu,  8 Jan 2026 13:03:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9ACCC237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 13:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D1A081FD0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 13:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oEjwXCh6j7Go for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 13:03:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9063081BC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9063081BC5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9063081BC5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 13:03:18 +0000 (UTC)
X-CSE-ConnectionGUID: n2Q/keAuRc+eEZu7g19NBw==
X-CSE-MsgGUID: huh7IZwrSNWQ9tkH7e/Z7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="73100343"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="73100343"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 05:03:17 -0800
X-CSE-ConnectionGUID: Dbnb7L8pRa6HSsfBiGrqHw==
X-CSE-MsgGUID: uKi7VOQGQ4+E58xuWzvqgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="204063292"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 05:03:17 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 05:03:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 05:03:16 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 05:03:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ut7wjUsFnJstEq0kQ7JF9ogBTh0R9zWA+GsVOKHbgV/Br2yhJ1Yf8ZJohs8iNMMzfn6pXcdYY1T4L0WtQ3mXxti1IT6MkAz/etdOx4m4Jftn2GiFeBZ3o5XVTVghKRXYed2NO4WRl+EbU9NB9RNFg5gui1iVmm4DejOYoaANoF799aOnzcrAn0HmDPhLB+TkPxwGTp47wLIK4R8P2XksuV4TFf6lfD/aIw4EOWt0d2AkigdoS7NYfP9e/HuzQXCY8M267Ct24rdB/wR7cF7bSMcfYHtST2NjpabZX/PbiGZjg0StFBUT31NBU7BR4XQRUfQffNm5WPtNXh6XLyCNMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3sgDHNushMitGKD5PLRMkYtNYhH3xSHadlS3BGOFl0=;
 b=EsfT7RMysYT2GTpmQ0NOuNdB4IwJ+3GRD4TSY9+MXnb3PuCt+hMTmM3boNTC8n98zLL3/X48pTeLFrMlh1d2eVDUxm3w4wuIE1v2JKd0bbsS14US8BliP/u0scHXmawT3AJC9MEoaIZS83hBZBVCjDI1RNRm5RZfrO9UB8O1VQ9HzoBcc+ITxU51bvQ9Em9wCpX5/QmGE2HV9hVhQKRTCR960fV3SB74AO3T4e+5qp0C1U1izUGLpZ+7Cq19sFUkrqQoFIKutES9kS19RizsNxb6tAf+V8f7mMFi6t9/bbaJDb1+byx0QXDihXwV4PyHS1d85FT17A67TiZqoMiquQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB5888.namprd11.prod.outlook.com (2603:10b6:510:137::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 13:03:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.002; Thu, 8 Jan 2026
 13:03:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <enjuk@amazon.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "takkozu@amazon.com"
 <takkozu@amazon.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow configuring
 RSS key via ethtool set_rxfh
Thread-Index: AQHcgJ8k9vHGX72mPka01XsYQeTHAQ==
Date: Thu, 8 Jan 2026 13:03:12 +0000
Message-ID: <IA3PR11MB898612B0CDA9C5A5448733EEE585A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986D6E9C30B7FFBCEF64394E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260108120400.75859-1-enjuk@amazon.com>
 <IA3PR11MB89865D0189D37BB3393B57F5E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89865D0189D37BB3393B57F5E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB5888:EE_
x-ms-office365-filtering-correlation-id: 1ff8532e-db35-4f24-db46-08de4eb64770
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hRrP3xZ+reGsYcHL58ZxNDEzZL3vWXQK21KXOBzo2dT24+SZh3Vfl1DK68Jj?=
 =?us-ascii?Q?xpieat3j31HISix4zC8aang6PV/0E+o0EUdO6MTDjinlxzOlCUnVRMqI7qbm?=
 =?us-ascii?Q?IjIsv6z3G6bbU1Ls/vwQNbNzaQ7JzUakISERfRlpdzLQmr/vpifod3o+0SZ2?=
 =?us-ascii?Q?k03SYABt0vjTLt8Xmw2EistSjS6wuNr94ksTHESKAr92ela3QLImWbVd3UoF?=
 =?us-ascii?Q?AgZ+p10VtQ5YZtEAf+FqLoi+833VsvUPwC4rnCsptkqDfeaWI3UNqZBDCafl?=
 =?us-ascii?Q?dBAhJuTvxVdYSJea4jl+X1KFSsUYo6rnE6aTItsJLMfJROQfb/VZj9KSj51W?=
 =?us-ascii?Q?auuVbf0tYSuuL9gI1b10n7+nEkjM9U+AgOlsA2VDTzRl8W/VvIdpkV7KeE9b?=
 =?us-ascii?Q?ow1yh5NbBeYcS3QQbTH940N150lzuIS2h5WG4YZBMK4zjem8Kuch/93PwdBR?=
 =?us-ascii?Q?AdyM4uidzYxgDRO/+aQKkGV0y6GsGHWy4ZyLWESJcBnvVbuVT08OTWeEMyFA?=
 =?us-ascii?Q?pwGRBVzYPmgE7cf18ZU2kd6RsyMrjX89G8Fz+DKf/D7G+2ss9MA7+EvnakMN?=
 =?us-ascii?Q?/pGWPnY3zUxYnzrPu6Ss3gmrVGiKNBFd/vqR5mNSsnZN3VMLoBPfLTzjKzYP?=
 =?us-ascii?Q?UtqBMm7+1jWQq5cgcq3HhKHQ+OK/ltCOJhVS5ewa1ttxph6PsgLy9voXW51o?=
 =?us-ascii?Q?ausmlUYcAiNcxOH/vTFThqGjHNJAhF3sCjAiSdcK/6cXceZpSLlZp2zlfgFc?=
 =?us-ascii?Q?ijdgN5Vmr8iZm+dufP73ScHrM23YRicT74nM7UTM24zTd1sB3foT1R1vIK73?=
 =?us-ascii?Q?Rs4wdnIK+2Rv8LTU9U3/FmN3GioMKx967/rtoGiC5FXDuG0PCqqIWtkLcM/P?=
 =?us-ascii?Q?0YOLC6+AN96XVMfnI1s/x4cdajij1oMi2aJy42lV34XfADzQHaENZiX920go?=
 =?us-ascii?Q?89IjxCdg8xmNzeATBRNKLU9hdAvLmh7xmEqqZDLLLyD9ikbxquNlrwNbQPFZ?=
 =?us-ascii?Q?JNRliIxOpNgkRqtjfvAviyftsEKJWVLVG/01vo/82vnxaoZyh4+C+e1uWmOh?=
 =?us-ascii?Q?9igrB5+nL5EwHb/5mZ4g51a9fpAHaVftbvZakRG7EywX18Da/9bKbiqrho30?=
 =?us-ascii?Q?fmwPk17ARF21xCHKAMtyeW1gwR1RoLBPg9nwmcp3JRfMPnsk9FY02pMcLS7p?=
 =?us-ascii?Q?Ko371QZaa3mkByZYCtpbWfU209SSRBQUBHgMFlis+jpojKj42ozn55zk0G1u?=
 =?us-ascii?Q?MMhPAl8n+ujB4lKAaxEuAiuMqGqB6N5S6agu8Sv58LsmuNbUcbLr4F5cKQDV?=
 =?us-ascii?Q?gi4zWSCCJFoppdZvE3nho0yZXESKox7E/z/4ArGUIyW7kDrRmCkoVcDrJ6Va?=
 =?us-ascii?Q?UA0rXFVadIZ/m/xh9n55zS0ELKeSbD4B4QQ3vpQ9/6BStyqvKbrkiMYmzlhW?=
 =?us-ascii?Q?XR6d9uerRXNxTygy4Shbhx6v48AUAh6kbiBDsZovYd0DdCNohNCjxpovzWs1?=
 =?us-ascii?Q?zbMGmIFMZol+C540FUUCa7/TihR9PGa5mhEt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tAdp8yb5+/8OMs/EUIbK6BtDWRG3fCOWdn7pwJsFWO43WnM9AcS9wq3PbnN9?=
 =?us-ascii?Q?2gp0Cyv6MlejcOFzeAlUq/cusXgEI8Z5vTOOqOPAzhYzrzsaQV9MT2as8VNb?=
 =?us-ascii?Q?GZHaKGlJ8MX5OECocqrmeLf1aXyfyhFyFkt2n2mFQhJgLAeALVSSLIAjZjpe?=
 =?us-ascii?Q?QROpsT+UffOCWEIRu6A5SWUVR7Ud/bh74hSyo72NaKPL039qM6I4P80kLYZb?=
 =?us-ascii?Q?ExJbSe3spOI89FeR66uHbt64K6Lw9v2AtZgy0H5fXjFIeP5vLbUtDGtKtA0k?=
 =?us-ascii?Q?kN+RtxbyJBu19k+rf6ujJ0vUZjgxmfi5i/SdlVYvcRdw7H/DEP6jjsAutkMT?=
 =?us-ascii?Q?VnqwHpVSOWiluZUFXQRjIjCflg7IS8ThXnX5kRX4ZySxYSK+PHU9/QDiHg/e?=
 =?us-ascii?Q?lBMdXoti76Zw68+x5KPAqeJAAsHnXHuFhHIdAWK6oqVxHjwh6ucght268iV9?=
 =?us-ascii?Q?Gyad/Bzu6jzVVIYB7JttBuLtb7h3pF6rcg6PZdZGiKcNNx+R4aK28JaOrm4P?=
 =?us-ascii?Q?xsHYkD2lozs3sJrfjOvsf/1YM25TFAFtdl0DHG9pjKXJx12N+AWq4Tm31Awa?=
 =?us-ascii?Q?s9RjrOOEtJfZsaTYUQXcEfEM3XxHuBr29l7LGGA+kmRx/uY5hl52sasIl61Z?=
 =?us-ascii?Q?zLA7R4OEI611HkHfeAhfeDak4PQ0zg0P4avqugpv+DBcP1NyH0H46hyBCHht?=
 =?us-ascii?Q?RvwWwpzfIEk+vHcvQYu4B18qHvE6vRnhyjGFVy4o9h/s18BDlpQ64CnyESW4?=
 =?us-ascii?Q?3h+nR7/hyAdiLK143foYWGDeehV0gcW5Uckn1WfT0wCFGv/qTk4ndz3EPtgQ?=
 =?us-ascii?Q?P9uLso8sT+a635Iiwn8lKo4hEFpQm6fsD9l953abWkgNJ/tN6awb9GQVvS5D?=
 =?us-ascii?Q?nXmrjaIqHzjV/hmxyUO3hkrjpHy1OegqeKex/TAqehg3oVTtzTSsGDSZYT+l?=
 =?us-ascii?Q?6278gKq1Sf321NAHXxVoOCWMN1FDOdVpdrSgokeP9phe0y57XS/TPToP55Uo?=
 =?us-ascii?Q?uO6ddWcvcUj98W/gLHUg2B6ZdRXrIvf4+FKR5yvZwg3Ea7zcjGc0PcXjgA7c?=
 =?us-ascii?Q?tav2R0xFZBUwYNDPighf1Q/BFPjmRWkTfKkzu3GcMmsQkEz1Sqm6D4B44Xu3?=
 =?us-ascii?Q?Qj7jq5LVlvJPtAH3lzcqKljcA0fz8+uSR6VekaNPES92qSyZQUqbNa6lwAVD?=
 =?us-ascii?Q?lXxsCdrBsSIJl1V7H/lHpO8Vg4TTkNvMgZZkuvqbVPXz9e2Q3YrRrSMYrCH8?=
 =?us-ascii?Q?QXaxfHHKv6s1hiHvA0lVyNbtK+utaqs977BEjnfc0fzfnBPdCmqpRJi72+ri?=
 =?us-ascii?Q?w1L1ySc5FtSqRflFM4/yRGoSdPAD502hH2I2zUyKEmuhqD2EN9FtFqdtnWE+?=
 =?us-ascii?Q?F8x9JPhUxWfS/FLrRP8ViYQTBndXtDGmzG/soibi1wdx2/SNf1DYQFEbldhH?=
 =?us-ascii?Q?bfEOxq7IIZi7U3vxgQxUS8KM+hinSeyrwwu2zvhfhmSeo4DiElS8ai2qDW3h?=
 =?us-ascii?Q?XeOuprzPO5XKZXdBpACKdUmvfSfxe23Ttfdeo2lsYhCYkmJKeBsIiPjbzgs1?=
 =?us-ascii?Q?V+4hJN2pZUTsrO083+yGUekiKz4alk+BHxAGY/BxcX5kmN3qZhnSmXr593xb?=
 =?us-ascii?Q?jej3P0WSgl6NMld0d7ZOGID9xpon1gwoQOHT5UY3YNXVT+NtXA62HTmGpn0I?=
 =?us-ascii?Q?eJPG+9hevN4fMiFIEBQ1oxOcXRUT2vs3fMGIEzAK4bAD8m8+xXBzmN6lEFuX?=
 =?us-ascii?Q?0tc5BdFEDqRfrFw3v9YeT6PejnVT6yU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ff8532e-db35-4f24-db46-08de4eb64770
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 13:03:12.2532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aCBoKL0Kqu7eCvPstIaP2hyj2s5lDtgdO6IhB7xZNQSR8vcJp85TJlKy57gGgYsiTucCAKillLTZYzvO7uVwBg50syjJccYMzTQBAy0Lrhg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5888
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767877398; x=1799413398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UTko86HWVIi4Gfdv2RQACsdz5XQ0nqZC8Hr5ZlgcSc8=;
 b=DhFMoBu9YfnLAegeDjlVARa1O/AKAuRl+OvWMhc9G683AojHbLt6iJun
 Jqfx91Js8kzVfTthsLpYH7nmK/j+MYxrbPzSw9yZ4U/Crb04EP3IPx9St
 lTc3UeHyo0Rwb8TL4kduRhzEm8+059FCfmJvQrrKNcgcIMVWMkJbmC0UE
 WH7BTSKskBv2hKyEhqKnFqBkqXAJtqtmSaGzq21dVSshFsyhILnJ2tFuA
 33Lmr2uWKXNYcgaIamaQMOUDD4Z8+b2GwJEThkP4lTjrroMvA9GpuqF0p
 fFcWp3n6QWA/EqpBYoIZEkumOla1ay5wnIt5wPq8W1fo8IpjiZ8mlYgms
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DhFMoBu9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Loktionov, Aleksandr
> Sent: Thursday, January 8, 2026 1:28 PM
> To: Kohei Enju <enjuk@amazon.com>
> Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; intel-wired-lan@lists.osuosl.org;
> kuba@kernel.org; netdev@vger.kernel.org; pabeni@redhat.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; takkozu@amazon.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
> configuring RSS key via ethtool set_rxfh
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kohei Enju <enjuk@amazon.com>
> > Sent: Thursday, January 8, 2026 1:04 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> > edumazet@google.com; enjuk@amazon.com; intel-wired-
> > lan@lists.osuosl.org; kuba@kernel.org; netdev@vger.kernel.org;
> > pabeni@redhat.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>;
> > takkozu@amazon.com
> > Subject: Re: RE: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb:
> allow
> > configuring RSS key via ethtool set_rxfh
> >
> > On Thu, 8 Jan 2026 07:29:19 +0000, Loktionov, Aleksandr wrote:
> >
> > >>
> > >> -	igb_write_rss_indir_tbl(adapter);
> > >> +	if (rxfh->key) {
> > >> +		adapter->has_user_rss_key =3D true;
> > >> +		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter-
> > >> >rss_key));
> > >> +		igb_write_rss_key(adapter);
> > >It leads to race between ethtool RSS update and concurrent resets.
> > >Because igb_setup_mrqc() (called during resets) also calls
> > igb_write_rss_key(adapter).
> > >Non-fatal but breaks RSS configuration guarantees.
> >
> > At my first glance, rtnl lock serializes those operation, so it
> > doesn't seem to be racy as long as they are under the rtnl lock.
> >
> > As far as I skimmed the codes, functions such as igb_open()/
> > igb_up()/igb_reset_task(), which finally call igb_write_rss_key()
> are
> > serialized by rtnl lock or serializes igb_write_rss_key() call by
> > locking rtnl.
> >
> > Please let me know if I'm missing something and it's truly racy.
> I think you're right, and I've missed that missing rtnl_lock was added
> in upstream.
>=20
> Thank you for clarification
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20

Afterthought, I think it could be nice to place ASSERT_RTNL() to show it ex=
plicitly.
What do you think about this idea?
