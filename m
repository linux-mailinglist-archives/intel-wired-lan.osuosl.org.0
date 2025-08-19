Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 233F8B2C6F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 16:27:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FD7880D1B;
	Tue, 19 Aug 2025 14:27:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pY8_1WCM5_22; Tue, 19 Aug 2025 14:27:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6616D80D1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755613630;
	bh=vhtn98wnYAa2oMa3N2nbTepR2mi8bx/8MXvEMnEGhgg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G+RBC4E0fX4SI1Uz00E215h/uFVe5A+J016IvgXoXB3qAvjHn2ZIwaNhsAhAbL2ND
	 yo2pmsso+jPNhVwnI2tpTxG3DW3SOXp0H/u8QheeJOHskHupSiCkdb5G33wXrIoqob
	 l5zdhDvmySvS1YxPtWVfUiKpf5W2/htdue5R+xRB/L1rBLYqtFnoXeyjmuhpVf8RbZ
	 lQ39L9WY/e67/dEbwW8QxcohHU1ZElk0D5hYIj2uN4yV0Dpwp3Beyg9wMuEcs7VKTq
	 mm3SSu6NZ2JBnGWlnw6wj211mJpy9kTfvA9Vmw+qunDLn+V4gcFFOPfQqII54RBraH
	 bveah6pMeUFqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6616D80D1E;
	Tue, 19 Aug 2025 14:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DB8BE2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 14:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FC8D40748
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 14:27:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69nkRk0NSQEq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 14:27:07 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 19 Aug 2025 14:27:07 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 468A0400B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 468A0400B0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 468A0400B0
 for <intel-wired-lan@osuosl.org>; Tue, 19 Aug 2025 14:27:07 +0000 (UTC)
X-CSE-ConnectionGUID: jx7iGbJQTMS0jD+iSytmPQ==
X-CSE-MsgGUID: 9szHpAmWQPiH1KzLyDTizQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57784458"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57784458"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 07:20:00 -0700
X-CSE-ConnectionGUID: fqB3klm6RSWRunuVngf+Vw==
X-CSE-MsgGUID: r0e5RTM7SdWofOQmWxcQRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="198875222"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 07:20:00 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 07:19:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 07:19:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.76) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 07:19:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZIePaoHT8aMEy+vzq5MLvmxj8Qd2jBP2OPKKbZAS4SnVYFEx/gM7ODxaBw1H7H502gHCvN6HG1tPIcR3t+LyCSvELMaxYzfj3ASv4u9xqprXQL7dRE/gcm476d2PRUb2lMludkstUvBCZtx5a9+FUGH/LP9nGPZXymG6HDfBu6hPX02cPmZ+0PKMhnU/PGjPuaCE1R1zUVgZkhfT4QYhMeXHZ4hqs/Ey/YfVcxLZFWA0UW1RbC+i21Zm0C5gn0ptR4H8rrgvh3JkzDc8iY7stHeLg11cvY8QGv+j0XYVPUiAI9NlbsknhgJ0q/4jpagq+u5SQtywPMvjsAHM1dhPZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vhtn98wnYAa2oMa3N2nbTepR2mi8bx/8MXvEMnEGhgg=;
 b=fvJf7EnVWEXXRhDPNjSK++vEpJwIUQ6v/lrtoNrnB6q4ml7M3f767Yo7h7Ni/jUJVxym919UDX57q/GXYSfOmQIpUqGFU+pBdDcfLiiNjadXQidg2fPhBL6/8lCv65c4w2rT7HwBiNV4nVFKj+ITQFeXHG+bb4uIj15ld9A8konbizVB+UKQmMAQs4sz4FwWjrY+qUK7oqwm1ZnihYNM6yKJGk/g/MKrXpsO/pEzZZif8JoHB5Ls7bR5/z2lla+PTdUMQO0nmKVOp4Tr3S5NF/h/mpY1MZKYSK9NE2qo9aBwOsRBU6H2G2O/DwI3hV/pPI08ly78c1ZWrI61lHnQjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB9503.namprd11.prod.outlook.com (2603:10b6:8:297::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.13; Tue, 19 Aug
 2025 14:19:57 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 14:19:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: "Wu, Ricky" <en-wei.wu@canonical.com>, "timo.teras@iki.fi"
 <timo.teras@iki.fi>, "marmarek@invisiblethingslab.com"
 <marmarek@invisiblethingslab.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
Thread-Index: AQHcEQbr88+/g0H2CEOrYaVkrOmt4rRqBhyA
Date: Tue, 19 Aug 2025 14:19:56 +0000
Message-ID: <IA3PR11MB8986BE6AD2E729AA68323053E530A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
In-Reply-To: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB9503:EE_
x-ms-office365-filtering-correlation-id: ec437e53-ea5b-4db7-e7bb-08dddf2b7972
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|13003099007|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JxexUtVOnNXHzIfKhfQckYIc6WTFssq/CDswJr6uwgBNHhTjERzt/ae5EESG?=
 =?us-ascii?Q?Ly6vSFdrTEoMFpefGkfPKhaypKksuHBKSl29PmPAXd51/jS3KbEyEo/rC2N/?=
 =?us-ascii?Q?P7Qe4kAqS3eMK9VBaDz5YrCPyZVAGeRLlQUgC58bUVz9CT9wfHb94fMecz8f?=
 =?us-ascii?Q?FVqR16Bm3wo0hUAr/7CKLybGy2E17xCXRhFhMcZlR10MO1NVI7Dx2xONTFkd?=
 =?us-ascii?Q?cP7w2ufM4+m1/Jtyy3Vp2uE2BOYpcZNllSiFDuRQipZXMYsdlotKD0M4Givi?=
 =?us-ascii?Q?sfUcBj7pgOUoOKZ1fiomfg7Eugeupeej8bHzOG+u1ghQ4mBwTvV9pX/7R5xk?=
 =?us-ascii?Q?olsmcOV1SRcrb/Kpgrs2Qk4izD6KyLPZH7fAe7nfXVmVqs6yrmes8utt9daJ?=
 =?us-ascii?Q?h5B6mmDs8jRRuN8VJrhx9eEjDLrvMIj1lvwoggqQ98tNqUpqGI+DO7lsFRih?=
 =?us-ascii?Q?Via+f5yRAM+0fY8xP/Dd/mGvEGlKRHtZDk0PykcfTI6S69BjSppcXDBkcPEq?=
 =?us-ascii?Q?2FGngk6jjwmNuPoeDV4BmXqiTlcWwhKAC2/f4DrmvTj+aGHhfFPbHdBm/ht2?=
 =?us-ascii?Q?hQGvYZ2w+uoD3g3nlWpzOkcZh1zJtjPwJqZQF7GsHw8+4l0s5x0W0hNzn8s5?=
 =?us-ascii?Q?JMmDu1JXlsEuPGcfBgNvNYzP7SbBm0PdwLNtDcWHZzKSBTwvfIBVX185dlAF?=
 =?us-ascii?Q?MWPWuxE/7c6Xy+ZwFF/frawVMchHfxRho8NcvksuuMjHqi+2qFN5j//D8WuN?=
 =?us-ascii?Q?JP+Uktmevcu4UwM1VSxekvsMfRWMAUhnpH1HxbUdwNiZs+/Gmd+/usxAqBOw?=
 =?us-ascii?Q?w2gM345VMyd5jvmlH48LQQIPs+/ulH24ffYdwKDwqlZJQpzXvQaGnoGqEs29?=
 =?us-ascii?Q?Zup9OJaWPCi4dclAtDBymf/ryq0JZX0wYzMFqf3piqj48klhcOtZLx5itxdD?=
 =?us-ascii?Q?wcjqVEuNDUQBsfZ25UV8f/OLtnNMJlVFXv7lNjj0+ACp5Qn+QoJEIggf0SyW?=
 =?us-ascii?Q?djrKJ/Zz4jG691bbdEKxp4EZaazCfqddpI5ar050JOvz+wr73J/MuPTNTpui?=
 =?us-ascii?Q?Eh/Jx+zqYPX11LiU5i9S9S1c9xLqQ0gYehi6FDz/hRRSWZWXvlSgJkzZEePF?=
 =?us-ascii?Q?KtBJnHi/4nwDsTajI0QotQyOFfcNQXeIzN5aldloiojFWUlAvWigYsSaSjJ3?=
 =?us-ascii?Q?RVROK2Yn8pYtAF/XfXTwVv/DZcUWLLDDd7XU/dBrTktFtpvWnIELYVeY7OX/?=
 =?us-ascii?Q?b5p5sjVzsn7Z3hIMZRockaZqytaCX/CKSHZikliLlxY4rKVI6nW9C/s58CyI?=
 =?us-ascii?Q?++rVJXdASN6Spd/CmsMEHdBNANnFB8x3RP1acyZoXF04zFympnfAbKwMcrsz?=
 =?us-ascii?Q?52Kq44AT4DaxUcbsLCPTuTDYzq4XE3sx3KVC7ooNlQ7++qppRT0ngvykCJ7h?=
 =?us-ascii?Q?U0IRn2b7tq/+7vwpjzNNzkTKV9Y/xu1p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p+F+Q2m4uIl+NMPE5RNzqMjDJIy/zptPD9pLcPEYStS5homA6kV55Cezns1f?=
 =?us-ascii?Q?OqzgFLCobeRdGNKie1a2y2cH8NW1EljUQQLeQDZgPrv0imPRxvJyjoB0MWeV?=
 =?us-ascii?Q?sRVpPoJn7hQfoA2V5NZlylTHzyYMMwYiZ+Ar7jFs/97RxH0a+UuC+nI7C7Zp?=
 =?us-ascii?Q?9+gypNkVdKfqt6RLkby5TeSBGFNkDuj+qHURBR3TKYvkW+qmlLntsmOLUW2i?=
 =?us-ascii?Q?sc0aCXBiLsSFQYjlFcJxEVBAk40K6xJhTkl+QTCLVGbU6boBxVr7uJI7tQz2?=
 =?us-ascii?Q?ECpZEJ6D3peG6m5ZNGp30ZjWv5sxAzeswQAx/GhGg/dr/rm4XW9v638ZWpAm?=
 =?us-ascii?Q?2OFL8KbkI6HUieSUniQ5vY/G8mR/GCqLVJEZM5+zzqADJX0uVzarBMOgUiEy?=
 =?us-ascii?Q?/Vn2dKw/XhRzFd2pJ0D/YoK3HKSZ49qTXU5W5osQSMwmUKa78q0V6oBVX1Kb?=
 =?us-ascii?Q?B7Xh3AX3lBqxfOgl19pUq7QqmAc+WMXjcnZNQS9zQRrtxEVId6R//RrfPUWy?=
 =?us-ascii?Q?zCKhjk9Zl+k4fOnE7hcO5WhIYIJPAAgkAaaGoqObERqrbxoAv3tMb/xaIY+Y?=
 =?us-ascii?Q?gSVgInCuhFhcaJRtChAJO0aJeQ2nsG3nsPzExLhu6Qd8e17tImuaFagO5Ffs?=
 =?us-ascii?Q?OivnCwfa03fu5d2z97cbmHkfePPKA+Waelgck2XC7sRLKY8FYLF5fqyTY33N?=
 =?us-ascii?Q?d+ySAgic+s2avehhe1aCFBfWwXfHc9J1m885sV/OXAizjij5TxFIpusofRpu?=
 =?us-ascii?Q?RSP0y9ADdKuKBYXwrMOLjmZmJcaPe3nfDXQZ6zD7t7gOtTlTwSLuGOsThoYa?=
 =?us-ascii?Q?qUWxXMbStpsSksXQVTRfSNK/ijrQAnX1/hRxZDXUnUiYth1Qcu4VfYsK/OYA?=
 =?us-ascii?Q?zm9taV9Q034IVme9NxrXM+d0aUw23wocX22Zjql+wFaARDtxJBT5jAqTk2Bm?=
 =?us-ascii?Q?6PnMBOe1EDAuNmGZbKBdJAgs6qhBXRETpQD/InP0bPiw9IjW4XXHsjnoIIEa?=
 =?us-ascii?Q?2ltQogVXgEswXE9vnEE71Arbs5OZosk4911kZoC+gjiBnEZWoVfK1vfsuhU8?=
 =?us-ascii?Q?StBAAo4d44ZtP9v+Pn6E3+WOjgO1MDCVCxWx+a4feIBbwyjOolrBNd61JLfj?=
 =?us-ascii?Q?gtqE1yUAL4YJUdRd3zRxJQr0PO7x+WBnPpiKNI8Z4xGt2yw5jItwDJSsYuGA?=
 =?us-ascii?Q?IZ7fIFKxohMtxnW+0WsB42/wEZDtWYOZw/p4IcOXK0gIQp/j5gtfsVEC4wj+?=
 =?us-ascii?Q?w230i8exDOVtfQTfTiZYX5dIFXi3KKFM2BmH3lKtZf6vO0Qg614mpi9aidHW?=
 =?us-ascii?Q?fYahVbI4JJqNpydLoiQNcoAU7+voSXUlZ0//jOf9mMHrOGQqUslD+Mwdnhyp?=
 =?us-ascii?Q?U/XCHPcK77RUJlG9X3n4nM/mrrHaxkqA98fFEMMTNgeNI1tKSyS9OJgjOx5M?=
 =?us-ascii?Q?XfW+6LkJSTXGnJhfKSQgnv3MN7C604bBz2YWwFInmCXoQVyV241810F4JS4A?=
 =?us-ascii?Q?qYvVtCwNEWaj6qSJx0puGazIIZEMRAKCUswvhPeKiwx/hxzQFP04czqGgj30?=
 =?us-ascii?Q?cCF7c8ZWPNSxIFIx/TVQrnflfuDjDQ0g/A2xp5PSyTZjONN6ajdTw6OtvwbO?=
 =?us-ascii?Q?2g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec437e53-ea5b-4db7-e7bb-08dddf2b7972
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 14:19:57.0283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XvCQDwGsPdoAZ5Y5g1lTvb3hds2A0DCQk6m3jxHcUXCYH62QLbKwmh+zllIK1jOtWQxfmmlxyf/xkS/ZwptAdVfCEYv/52fGRl0k7O2BfZo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9503
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755613627; x=1787149627;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W/iEcQgE6V42YYnoEg/U3gUErVh41QdPEaQ2N0wYEzc=;
 b=TmHrZjRBLOPVDfpgDRW987+nl2iGrd+KlisUBki7Ndu3nD87Qd17dord
 sTGkwiTGCjtdFKVKLN80pAC8e7IodieKfZV4/QCI1gC4UGMKHCdPN3qfm
 0AfaY9xTFI5ZrBL1Fh4E/YBfoulitjVT3bd+bt7TWndPpiOSkkunhMfyD
 2YlNGvo5P/1Y8IC+hQVa8NdIvqwkdHqVyjwSDAkufc5Df3XOsty0JXJ4Z
 XGSJMV89pkx1JBcpobeaIkwqbqheuR86dBAcqxTPLDanGWoJPn/H48LE+
 qVJbc74P1lvItG47CnXWXfqI7o6yipUxnTW8FuMW3Ais80AhOGHopUfI3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TmHrZjRB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
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
> Of Vitaly Lifshits
> Sent: Tuesday, August 19, 2025 2:43 PM
> To: intel-wired-lan@osuosl.org
> Cc: Wu, Ricky <en-wei.wu@canonical.com>; timo.teras@iki.fi;
> marmarek@invisiblethingslab.com; Lifshits, Vitaly
> <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
> private flag to disable K1
>=20
> The K1 state reduces power consumption on ICH family network
> controllers
> during idle periods, similarly to L1 state on PCI Express NICs.
> Therefore,
> it is recommended and enabled by default.
> However, on some systems it has been observed to have adverse side
> effects, such as packet loss. It has been established through debug
> that
> the problem may be due to firmware misconfiguration of specific
> systems,
> interoperability with certain link partners, or marginal electrical
> conditions of specific units.
>=20
> These problems typically cannot be fixed in the field, and generic
> workarounds to resolve the side effects on all systems, while keeping
> K1
> enabled, were found infeasible.
> Therefore, add the option for users to globally disable K1 idle state
> on
> the adapter.
>=20
> Link: https://lore.kernel.org/intel-wired-
> lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com
> /
> Link: https://lore.kernel.org/intel-wired-
> lan/20250626153544.1853d106@onyx.my.domain/
> Link: https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-
> itl/
>=20
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 29 ++++++++++++++--
>  drivers/net/ethernet/intel/e1000e/hw.h      |  1 +
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 38 +++++++++++---------
> -
>  drivers/net/ethernet/intel/e1000e/ich8lan.h |  2 ++
>  drivers/net/ethernet/intel/e1000e/netdev.c  |  5 +++
>  6 files changed, 55 insertions(+), 21 deletions(-)
>=20

...

> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -5267,6 +5267,11 @@ static void e1000_watchdog_task(struct
> work_struct *work)
>  						  &adapter->link_duplex);
>  			e1000_print_link_info(adapter);
>=20
> +			if (adapter->flags2 & FLAG2_DISABLE_K1) {
> +				adapter->hw.dev_spec.ich8lan.disable_k1 =3D
> true;
> +				e1000_reconfigure_k1_params(&adapter->hw);
> +			}
> +
You changed the function header comment to require the PHY sem.=20
Good - but. You already correctly hold the lock in other call sites (e.g., =
init paths).
Are you sure watchdog still consistent?=20

>  			/* check if SmartSpeed worked */
>  			e1000e_check_downshift(hw);
>  			if (phy->speed_downgraded)
> --
> 2.34.1

