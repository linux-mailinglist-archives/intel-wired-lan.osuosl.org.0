Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aP24LDEpmGlqBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:28:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9B6166397
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:28:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A02244186B;
	Fri, 20 Feb 2026 09:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R1jlMuOshEcb; Fri, 20 Feb 2026 09:28:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 796EF41868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771579694;
	bh=9O7Iq5lSpj34QsthmyM2oB8tVUlEn4OghdxbcsMbuKg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xa1jfTFIid48fvPiSTidcxl/2JIH6ikJrAOw0+LK/XzAUhjPTz5cDBdH9qyYzBTQ8
	 lv325Y/bqE302ZZy3bvCuccbqVbxWu9J6GaOrs7Nzb3npp5z9ers/OD4QwvQCSRbbL
	 CY+pFy9mWIDpsnWvTmS/yHHqRsXEvLcRDwGTRUYHaNx3NV5bXRhKDHWdCvLDJMshxS
	 li+Xfoq8u6tbgBVK4nGdk+277H47WQIttFFQc9u08ve27n+wvxqir/Tuj935xIZnsx
	 oD3XXZ5ORElCD4/NDcUNzMTmaLOuAD1qMYmsr6YNh2pgN8O1F5RJ9++ODGkYcb3DSy
	 vvBtrowM49gdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 796EF41868;
	Fri, 20 Feb 2026 09:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CD1EE1CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1FB0404F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xqem5XfagWTp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 09:28:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 10B13401CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10B13401CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10B13401CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:11 +0000 (UTC)
X-CSE-ConnectionGUID: rI8Ak0RNRkmoYDpcMwBs0Q==
X-CSE-MsgGUID: QjMA5jlHRtacUYHa5AMctw==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="98136172"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="98136172"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:28:11 -0800
X-CSE-ConnectionGUID: zGXB+p+VThSpeEikDp90jA==
X-CSE-MsgGUID: HJHKjXLURhueSXbQgBaikA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="213909507"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:28:11 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:28:10 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 01:28:10 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.48) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:28:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a5goyqzqP3tvVCPgDNgLcfSAOxjs+K8ZTBo3wcARgfjquC7Oj8IRPdKQ92SO06vKdC88cu4byy39KPQzSrxkNYex9Uh5fBuc7XjM2YSR32mbDxEyEKqFU1Usfzq3yx44y6IyuSwF0nkmBLGkHOuD7zHWkMULnUniApegp6IUUw5AdmNW1L7m0DGNFLR7H9QwRXYNttizCHgicMAuLemW5wltCcKez5gg1Kfq0RAmryyf1WrmGojwze6RguQfhdT+RTyRo5XBoQE7f7gFH9QHbfjEaLcUIe5/Bk5i4XNVIeGBQNDmMik/iouIORwLlHZZessGv5XTSnk9bwLOJBARhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9O7Iq5lSpj34QsthmyM2oB8tVUlEn4OghdxbcsMbuKg=;
 b=UeOqBB30kBVxMC40g6QkXs4+6LSLVZwiTPOuf2k5id0sXYRxQLkeYg0mBE7A0wZ7qbS4z1mLgRkCkDq2xoBh5D178NhCL03MZlMaQ/mpYr7o6YtPWivKnHMbsjG0gA+kS3yxAHnakjzy50PKhBPnEmfLd3A/5Qcdmlzt73T5eCQhJWbz+8vvHZXoTP5GXP8Fe6Re/DVtpRQYibSfzc9OOR0PCGtSil5Wfj0TwdHujXSqGaSrAypQyB3iaIIkmMRMJ9rGvzsuntzmcsd7do+dBVCFCp2TrcvZMk6Ql8lcve1OdA7D2zq4IQ4NLyi64ZyotMb9i7Rdv0IWSWOawynhfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL3PR11MB6484.namprd11.prod.outlook.com (2603:10b6:208:3bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 20 Feb
 2026 09:28:07 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Fri, 20 Feb 2026
 09:28:07 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Nowlin, Dan" <dan.nowlin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v3 1/5] ice: add flow parsing for GTP and new
 protocol field support
Thread-Index: AQHcokq17GOhBlEfmEuMntQVVmhes7WLUcRw
Date: Fri, 20 Feb 2026 09:28:07 +0000
Message-ID: <IA3PR11MB8986D3A080CE8504CFFF4B82E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260220092409.718632-1-aleksandr.loktionov@intel.com>
 <20260220092409.718632-2-aleksandr.loktionov@intel.com>
In-Reply-To: <20260220092409.718632-2-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL3PR11MB6484:EE_
x-ms-office365-filtering-correlation-id: ff9b0fca-9c8f-4ce9-348d-08de70625b33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EiYLInURjhGqkEIb8hu3qfv0wQLV5/bArdKlhTfnEc78OxB9BC2YemsCCyar?=
 =?us-ascii?Q?IJdqP9FX3eSqsyuRwImqFq5ThLTN/yMcQ7wVuJ88qmcgv+gVEO3fo9gLx+aK?=
 =?us-ascii?Q?a4qpU25K8kUC6hMaEG32G7YZtyxhgXUBv+YIg6CYASVgcV7CgOYnMgu7Z8Q1?=
 =?us-ascii?Q?8KBqAFIP+tRCBfBai7xpK3oxa3jqxQaAZEvdLC//3gr6WKJibwb5TyyBs7NW?=
 =?us-ascii?Q?5tXz2zxrqoHYteyAL5laukzQu+HijbrvmJlafOVr9K6adOQvNaGe1gAjSZNj?=
 =?us-ascii?Q?wHe07YmF0nhDd3dLLLPh0Jq6lEOqfbV8bXy+nzzEMdT9/gj2S6W1oj+Cfgnk?=
 =?us-ascii?Q?nzLUAh9UCsSGeBHYYOs/vHFncAnJFbXfPm9rietwbEVeH0hR2TVLxBI5iMnz?=
 =?us-ascii?Q?KDne8gW8UVYCUkFsFE8p1dh4PB4hDMDMaHTpXIMhe7A2AfV5vdkvmLsqnN7t?=
 =?us-ascii?Q?FzXQrrZxZIpsfxY6AhFccZPn7fcYnHynTV6utm9m3mXk1bVM5onlUaCIXcSq?=
 =?us-ascii?Q?982uvpCnKDAoYhBdUTJc3Fp87pSdPvq4giS4NB2pdBb6OOzgficEh25/wtE/?=
 =?us-ascii?Q?4flTU8yFc+7f4T0e4chrrLoJq3XZgOMbOpfUsQQxo2PDoWF1fWuAFRaVOCDV?=
 =?us-ascii?Q?8SyO+1gv9E/1KPGcBUjZyUASUMuVYeAHfOY4xKaiVD3nC4uC1YoXFtHjGlN8?=
 =?us-ascii?Q?AdRuFLM12EW1qfXIVevtvKa0xSnV8Q1KhM3x7W2p5ThAPhC6JPbvjA+GIufC?=
 =?us-ascii?Q?iQd/mshCyfY7kKoNUrHDQyxUE6NrhkDMuzEEFYho5rYnvTlajHPXl29glT+y?=
 =?us-ascii?Q?cF5BtQRPPOj7a3kqSz/j3nz5sFjJ13RJyaRugN1ldpAlGvSUKZ5hPuJ27fIi?=
 =?us-ascii?Q?zrhl7ASsam6rmhDHPyesMlj28gNRh/9w2Mbpvgulq9rnUEhGu1VIgd/kztPN?=
 =?us-ascii?Q?gVGE6x0Lf0BppkJzV/7F9B+EwPiz3fotIAlEZzDmizuSkmuiz2+VIzv9TQna?=
 =?us-ascii?Q?TWLgvaFOWzJblaLHVV9kQlFswYLh66yUMwSRF/Kn4oKef8RQNv69NGxAHGob?=
 =?us-ascii?Q?zpHq8nIFUHpcX3SPQmyzMXEXjJhpiPFcHfcfotjE74qbnpU3IMoKtezr9DC+?=
 =?us-ascii?Q?KijjVO5bWEoKjP0e+vFuDbyOIhQOvk4L4H5BP0+u6FzuyxKP6jJKB4lcI0ya?=
 =?us-ascii?Q?RM02IF5+luV5hA9Ldmsmxx3f2Kqz04hLrEjottOxPOkTfLgS7hxj+Qvo+Cfq?=
 =?us-ascii?Q?h5Smvbhqxlp7Hf5Nw5TmjcUvAooRn76DGmEuz/lKXLw2S4hOL4oGn7FHfqWc?=
 =?us-ascii?Q?rrHqAZx8XcAdDYQvBidiPVKZLRY2v8Lbk81EUjP+ZjUx3GvyNApGT1+xoAfE?=
 =?us-ascii?Q?Cb9enhiHLPrWKhKPqIUQ02cOXowTd26zFgl37frOwqHzohfu2NUEkEF96mmT?=
 =?us-ascii?Q?D9zE8MF1VWsgmokMHLdUM4K0JdPeS2dbIt7gRkeHkQ3NJQ+LLfYlIlfmN/03?=
 =?us-ascii?Q?Hj9BGSrbnLLgQmgT+G/fvzw8jiS6lrkAnrIR4rUpaCgrKQOJ7Owyi5k/ouks?=
 =?us-ascii?Q?BOa9ZTZ4qN3cfOBlecWX4y9gY3u+8mIq2m+Wh1/XUqUSX7n5cYSwtXghqbXh?=
 =?us-ascii?Q?CDXkVHdawa/+QhLDD5q0ITw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fXyWzLzXfGdmWHV+/slcHpH2GIg8DjbZ96zQxoNntO3qdUfrFWCBQWW/przc?=
 =?us-ascii?Q?3DC5U911a2fIpLJrlG5QHACXDSSWijaHyNHkxXr5NMa9kVzDtao+aZVc3B7u?=
 =?us-ascii?Q?bDU1gF940VbXEp62qaQTowkuSq/nQj2CZHJAXGSnlyJ5y0OhDwf2JMaOtbqQ?=
 =?us-ascii?Q?x6xRx7GMannllY+pX5MkL1L5gcVRzBl4eHJkSA1A6/76uS4bBT3ynjXoUgXy?=
 =?us-ascii?Q?KPGAKHqF9SWZhxt0m2Bl5JGvVnVpfn95HDChYpTgRwo1TYANaNQqVUZm/9p8?=
 =?us-ascii?Q?CGHuPHf9q90nxXtPSBVfYijaUC+0w4FtN08dwgI5GwqKhck0oyxiPVJSDDNV?=
 =?us-ascii?Q?b8EGKkLV10CPP41DgVrIvFUoHTjFdsDkzl3yJjKxCYuBsGQpP5yDq9UW4ZAU?=
 =?us-ascii?Q?bkSTqSUs0TQiOHFuBvDktkOub4mt9bCtDBswo4XVAy+6z9AHAPR2VI3bFJCc?=
 =?us-ascii?Q?00HjrTaO4cePJMmvw8mcw1NY3IJAwkBa+o0r4ViA/9E6zIL/YCZNlrPwhhMu?=
 =?us-ascii?Q?FHem4wRd2TYhaBl/VVleWNaEIX+qJJjoxU4NqV+D3oUjTQGvKa0ulSBzJb9q?=
 =?us-ascii?Q?qm64HcClGCXMpzoDCSiSdmE62TMwHYOZd5P4get7EEnL10xVRtgY+bSMEZN5?=
 =?us-ascii?Q?7T6N7o6lsu6ADChb5LpoUaf3p5nYtgxVRaSkG4O4XFVqRkbbgIqpnDmoZUdN?=
 =?us-ascii?Q?Yq/2pcWRXETyuqnISIsKMN/EizzSwb9o6PcTXocoU6ix0lt1TRxA4dzpv0pl?=
 =?us-ascii?Q?aIUgrc81P7tVRLVpaJ9/o7GGVapVJrVEy145+wuAsa1bAsMs+dnVKV/FaIpH?=
 =?us-ascii?Q?l287/C1qsRHkx50LG1JSmTzVQLgF6HlB3+x+lcQdt/2EOPqpfROcv/cQmDD2?=
 =?us-ascii?Q?f9TBYl9Vvf2vNUUFrTckPe9BX56v7Roi478CFLVoVrXAHl46Q4YbtvLNwaZI?=
 =?us-ascii?Q?E1qiLO0P7MJ4ueiAJBlXqWYUgm2Jel5aagLyc1GxljShj5W60qc7mNFkEklZ?=
 =?us-ascii?Q?mFF4dFTziqm802FCWv7Apx5YMW+Z4ooFnnjaJVidnT43k5DIkeTO3Xv0JF3N?=
 =?us-ascii?Q?mL5CwsGIc+BoKL7UsPT/usooFOUN+ITIZv7M6zf38yCOnamPYGR7V8XRuzaP?=
 =?us-ascii?Q?8GBEW/uk+pzl/jGbJ02ldKSn0e4Zd1QgeCCtcsgvl4p2FBd/zciupe7vyc8Z?=
 =?us-ascii?Q?egktfpI5OQPj0yQ79PxSw/lhmmRjryoSctLp/JfggzvoxWZF1Inf5mckKu5n?=
 =?us-ascii?Q?342PVmeWHUnuz4Bt6hw9/v4L3ZZiGtoyJvl0DWRJehjaRcB02zt8ETRi7SrX?=
 =?us-ascii?Q?Rz8OGEOLAt/YuWD+mtAvtgJKHbngGlrPVOqUNBeZdmOY+nazonyClNk6aJ+Y?=
 =?us-ascii?Q?G2DfMoE3mCgx9gTqBEjrfvw0myR0YSVh6k3Z3bkM/FgRwN2yF/KywUHdQt/e?=
 =?us-ascii?Q?zE37DRsOmjCeBorbmWuavvdaNaKobzXva5nCmSAqi6lUxjP2YMrZsjsY5gJ5?=
 =?us-ascii?Q?2oSxUzasWdZeLLWGSZZJvPlZOMIq2Jhlm7O+8rbF2o+HOLPPELISuA+5sAd9?=
 =?us-ascii?Q?looXYyjJlP1D/TMAHsBCVhRWYlspEQeT4Pu5bhkAQgGIbwCQvnKRxIlU4YgW?=
 =?us-ascii?Q?YaBCjwKMOobniv/keUzxGE+v5Go5nTv8VUK88p+4unROS1rhijqUY8VRlodA?=
 =?us-ascii?Q?uX1FPLcGyVPqZ6hfuGdf/AUobFtvVwDfCIZCFSMmzNVAaYCZIpRr75YQ+oL+?=
 =?us-ascii?Q?vj2Yrtu+3g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff9b0fca-9c8f-4ce9-348d-08de70625b33
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 09:28:07.2078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tk4JqCBkFQKHPIZWyBWQ99ozDUyKK0U5cwoAl6hw393d8Rr/MWbsblhBcsaK652yepEVZeHm1k7sfBJ/a8kaNeorBB1vR7ozKtRltW/dZPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6484
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771579692; x=1803115692;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9O7Iq5lSpj34QsthmyM2oB8tVUlEn4OghdxbcsMbuKg=;
 b=hRmNW0Xzm3Ba+XFwBZuVPjA4HeaUsbooY5sAjRfyAxUKvA1OPzXfjuif
 yApN4uPrm0NFesWbBJiQdUMdrmHvmp3dHoQPYtlGgML4+gVgmPLircyB9
 89zdF03iUsWI/cRkd0y0DEDaHMiUXqvq/+X66aIdYzYJsun6WWAVJ/xEn
 c8pb8NQfMqnyyA25l2mwfDtBgkJK9QhnM4QN5SIVj2Pi7IQT6UvmO9JK1
 F7Eizz3yCT7HoqzZwkp6R8KmTINQmF/AVzIUY26400iXME9j4rksFZ78w
 0CneYxrfXcE9Cpu5iVvA+unzuNzHYMCXx95ZdAt5SZqzhQe6yjZXX8Dtq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hRmNW0Xz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/5] ice: add flow parsing
 for GTP and new protocol field support
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.979];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Queue-Id: 0D9B6166397
X-Rspamd-Action: no action

Please ignore this email.
I had personal e-mail issue.

> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, February 20, 2026 10:24 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [PATCH iwl-next v3 1/5] ice: add flow parsing for GTP and new
> protocol field support
>=20
> Introduce new protocol header types and field sizes to support GTPU,
> GTPC tunneling protocols.


...
