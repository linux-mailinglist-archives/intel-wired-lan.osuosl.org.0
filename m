Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FMcOgCFlGlBFQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 16:10:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E2114D720
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 16:10:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D524D411FE;
	Tue, 17 Feb 2026 15:10:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3KDF6Qs7lgM2; Tue, 17 Feb 2026 15:10:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33F14411F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771341054;
	bh=tUECKbxfLVShPe5UMD7qWJDr5GoPfGTRH3PgXTW4NW4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xDg3sMBKLaD0/CQ7AXJqQsVXNhEZS5cuAPjI2jwbmdlF7MSt0UOX8HoYIm2XACmgC
	 DdMRgYoERvFIuPmKpEZoGcKCb/cyLGhwhXPoIXENg6PAPBolcVWnUii/pTf+AFGN3E
	 F/sbMfdfS36V6LSzeZLR64qTosY4rvADxS2X+jLbaUs9Cvf/PUOFRbsAbtJUTsxEhd
	 EeL0pfnvZq4Vl8hroG6rKBsqKBb0BHWicxAMMPWJxVCKQifnkOqol+anz4vDgTI3MX
	 sxvdBPy7uJ8YXpon1Cq5Do/CXN65NXfOOBUuo2Pv3w7APo2mT8pYz/CBFEE6ODIyJq
	 TpuVBlR0BwzYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33F14411F6;
	Tue, 17 Feb 2026 15:10:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F351D270
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E47A34144C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UCspNQhSFLq9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 15:10:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1AB0C40F9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AB0C40F9A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AB0C40F9A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:10:51 +0000 (UTC)
X-CSE-ConnectionGUID: gCVHh8gxQDSZmkJOOa/Iag==
X-CSE-MsgGUID: 7oM4bhNKR8y7asd/Lm6U/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="83131117"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="83131117"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 07:10:51 -0800
X-CSE-ConnectionGUID: 7+xKaTJ+R2uxhZ4TwawBQg==
X-CSE-MsgGUID: YTONUtceSqms1DPcN34kDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="242878413"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 07:10:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 07:10:50 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 07:10:50 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 07:10:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UoK5A/tVaDkLRFKNyvV1jXUPDkzo6kmNICsPYCyyrGm1wCmd6lBvSyAFOzn6qHPkaPEA3ToiuUJPPw5AQ3DThbAt2Dp/2H73gxxnSRhgRGevyLC/6kT31zU8tN1XqwLbdKCxMXBHAl8i2/DxOr/IPiLxkgrugsiI+/lwz1BthbcFtKDsubCQFvFQ7AEs3/lSnWRzUzMbDYrdsctMd9+LSfXG2xVpup7yEo4cajsAlEW8OaRoCPGoGQpoqA9jsEZCRBKoQR5nqw8L2mxk8zKeTxEJfGBeCppRHWOUg3IEiKm7BXWa4ap36djrTIR0G670Ad4iDqAzcUb0N/7G2edvog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tUECKbxfLVShPe5UMD7qWJDr5GoPfGTRH3PgXTW4NW4=;
 b=gr7JJbmDdIMqhjs92bw/M/RbsPqS82Mi8boSAV//NiJ0OSETVRRMLuH7mT4QiBwdFzZR3rCiufSHs23O0BxyaSyb5DOYfZksq5DjtrwSH9Qzc59HwhZB5nnIZu2ajP3sHxn/nzIsZvDT6RFBBiPPF7DDFEAEsOLTi2HTSLrBMrftjQllIHn7qo31acGXFcwg8e6ptP9qZnUpQOuN9QoZCGgxteGUaVOHC9wEj7guEzHCnvZyZ90GdB/u8iG/ifTbFKi+8egXZp3lltq42u80QY6ml53HxZuEibLtW0rXlSl2hbKYsrfDic7hnYZ84XPDdet037cTlbhvu+SB1Zznag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 15:10:45 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Tue, 17 Feb 2026
 15:10:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
CC: Claudiu Manoil <claudiu.manoil@nxp.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song Liu
 <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP Singh
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Simon Horman <horms@kernel.org>, Shuah Khan
 <shuah@kernel.org>, "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Bastien Curutchet
 (eBPF Foundation)" <bastien.curutchet@bootlin.com>, "Vyavahare, Tushar"
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?iso-8859-1?Q?Ricardo_B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, "imx@lists.linux.dev"
 <imx@lists.linux.dev>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "Dragos
 Tatulea" <dtatulea@nvidia.com>
Thread-Topic: [PATCH bpf v3 1/9] xdp: use modulo operation to calculate XDP
 frag tailroom
Thread-Index: AQHcoBT5voqJlm2/pUKrZXpypf8UjrWG/vHA
Date: Tue, 17 Feb 2026 15:10:45 +0000
Message-ID: <IA3PR11MB8986E32FECA1E2C5129B8509E56DA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-2-larysa.zaremba@intel.com>
In-Reply-To: <20260217132450.1936200-2-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7300:EE_
x-ms-office365-filtering-correlation-id: 56a6c49d-cc39-4d40-ee62-08de6e36b9d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?n5lJh3DkW27Mi8Hbk8Vzj14o6S9s37ZMzbwPwqbpGdWg1swUicQGfjSScH?=
 =?iso-8859-1?Q?HfBNy0j/uymg1WgheQOXntgyXKHqwmAbDneLWwygEe3LRhl0tCS7XgHzAd?=
 =?iso-8859-1?Q?BmYxTAsE5UsGl0+mrdGfqedXJ8DUmbErLMfHmKy867XISsP+WMHhoXYAgt?=
 =?iso-8859-1?Q?lXY398xBNXlf/DLe9AhpXebaoJnOiYRJC1LMPjRQ5fvkhBN9aR3buNIIaS?=
 =?iso-8859-1?Q?mCnbraVbJNntjy6rrbwkhvuWVVF6z620Lf2gx7FNZmn3wpM4+LNiS+Em6D?=
 =?iso-8859-1?Q?X8/Fck8J5oo2xCUEJSFU2govrwCPIqmYqmS/aJ9MQ5/xhdl7mNrHL0ohGV?=
 =?iso-8859-1?Q?jA1JOEN2sMf07TUj0HgSFZwerfbJHlpr7s6f/u46+qw74gIPUcfePU942P?=
 =?iso-8859-1?Q?ADSRu1YbyZYeNlx4g6bjfuaP5WeiZmC31IGW3anDAaE/rK2izUqZt2HV6X?=
 =?iso-8859-1?Q?fWBct8cCLRASsYTIHA0EfXKS02gMzkojDQkaVdfpH9Z5qJqXxvm7tBSOGD?=
 =?iso-8859-1?Q?Rvo1fc+n3W8WSq0FWK7/cAu9oIjydMHIdwbZrzAnUq0nmOxONSG9BJRIZS?=
 =?iso-8859-1?Q?gNEsCs6m/884hOsUwrOj87oH7AG2cuIIu31189gRNGdsfM31VCHG1yDEDt?=
 =?iso-8859-1?Q?fh+4BouiYixjlQwG8MH8QrJJzS9Se1DNballExWR29M937atjkymBnwh+b?=
 =?iso-8859-1?Q?YQPANx1uyAcGmLqwFGT3wKn9gCY3/D4wLCBmLnaN71UUdfIA4wOv318X7w?=
 =?iso-8859-1?Q?iFr4gu1bjKdqYcYDnPQbVzmioXzoSZx3w4rMlM4/om34ZNL+BLn6OjQpKy?=
 =?iso-8859-1?Q?7OQnaR2wXc6o/Z/fNsk8vnHB9OeBkfPrCqdjRN/ktIESbU7ukwVeATRcZg?=
 =?iso-8859-1?Q?yr6yDK87HU8q69ki/XVfNxhI5+O0ost6cJ+orAs4YXWXQjjlyTAq8ayqrL?=
 =?iso-8859-1?Q?bQxYSkcSBt6muCHZ1/B1oDpg9qcrObdKif4yyaf0xbV1aYPCXiCKTxt2h8?=
 =?iso-8859-1?Q?StoXZ1QNf6KHMFgbNVtIP9+uwXeT9nojo+kx+6+kBqg9NiD0RijLQm4cJS?=
 =?iso-8859-1?Q?pSP5cq2f6zk5AXvJO7RV+OZUC988m6PKMM0xEXfEXqittQ8otLmtzPCZ0U?=
 =?iso-8859-1?Q?VHIPUYY8ahs/KKMRwQmugGG+Q6gh23pfripICG9hhIKc/yTzTOytS9t0Cx?=
 =?iso-8859-1?Q?wClpUHtTA6QOemkg+cO1l1CGhuCwc53MFotFzWQAgV1y9A3Y/zdrpHE/am?=
 =?iso-8859-1?Q?NjS3Mum6NYt5EK7vwotWxCGf/F6JgRcjUS1TInHwrCvCZA+Mh0QQBQIkjO?=
 =?iso-8859-1?Q?P0ilRW0h2BGxqQFa9DLYxQbDjPMXAjHFLBSVNHTnOGeho0JEaR1fKI/evM?=
 =?iso-8859-1?Q?XDqgznB8rxXfMd5YMAwdUmyMXgEcN9cWYifqApFtlMhSjBpy7ATxcYhniv?=
 =?iso-8859-1?Q?z+IflQE0TF7kyW8EPjDTjupau9yxpznYNS/3Re5j/VvxS3eT4EO/BociVx?=
 =?iso-8859-1?Q?90z8jBofG1Jh19yeg6MopbR9VZz4/d3bcmkcR5fkOcgmqEnwZXdRWv5Kmd?=
 =?iso-8859-1?Q?NouYvmrlCGSiQvCkaY2888cdlTcjCU2R6OYj9993O1G3T5OK8pqrKOkQGd?=
 =?iso-8859-1?Q?oX95DsBPrfw9xXRbWdVsWsc1tVT+TgYrl0XH5VFOoD7LipH/jB2qRbwZMh?=
 =?iso-8859-1?Q?wV9zhqckeCzdkAGYDjw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?UorK7wz2Y6uZAA0B+wA5vZXczEKzPi8SfFovmcBN2945WWwTMzO/DkwY5q?=
 =?iso-8859-1?Q?WsgqlGLSw54/dWLJo+Zj6+mkxV4m7a8ScnVs4dPa2oMXm/i9z2ed6yYVZ/?=
 =?iso-8859-1?Q?snPEI4ngiU/CeG12g7QMDWIaZGKuHw00lHBOrBlVif8B7S/Z1PYxjciPc+?=
 =?iso-8859-1?Q?LvcSz/Z0REwY1b/5gk5rL80yCu72lA9FbC6qulABGKHp+dXiy8X3zV90X4?=
 =?iso-8859-1?Q?LiviWA8iIEfemTBod9le3psKr/cqUeN3/1lISjm2JFrhUdVLBn45AroVep?=
 =?iso-8859-1?Q?JtKspYSQAKuPp9TT+lj+7d44FvCZAZ70JUN6C/rMuoUMbyBAbG19QrQ7Ks?=
 =?iso-8859-1?Q?D4OTG9HRlqBitJCZKmkxuwuzB34zPDWzKUmFcCY4Ltkq9r++KJrFE4VVCY?=
 =?iso-8859-1?Q?b4VbbiKJYlH86egvlAbVAUkqd3q2w0MOxMVG9F5nEWmOw5t2LY09MzBGjI?=
 =?iso-8859-1?Q?ZtJQ/ZNWQxxQoO9hz8VODBCl2uUh6LB2L6jmhRh/5QixYWi9xB94W39Tmf?=
 =?iso-8859-1?Q?CH5LCCD7Tcv3/PDzUqrlzDKDpm9X0awsdD4YM6itkoCJZmnTnVOyFYy6+t?=
 =?iso-8859-1?Q?7BWsXa334uxPxzbVj6uanImSsThTMBtvVeKgCLnwmOCcffbAj/bPSnqEtr?=
 =?iso-8859-1?Q?qWLPxjzIGiBe907rEncmRav+PoseUT3o6IHR0Z7RIElJqlHxQNZ6mHxur3?=
 =?iso-8859-1?Q?a7cqZPYPwidZA5M+G2KIT5W1op6ka+3P0oe+VdAgeI8QMYaxFKpu7pA+Jt?=
 =?iso-8859-1?Q?JQGXQH+6B2V2u7Ot8smqum09o1NN5ooEabnBU2XjcFDvJ0Rel7Yn2joM0J?=
 =?iso-8859-1?Q?dpV4NblXzvSgVKs7tkrr1BEoau5q0nKTyYWxnbk9Q43c2oBD2YWLr70pQQ?=
 =?iso-8859-1?Q?bSPodQ97QUTwbT//OUp7KtPdBPtAA11L1GYIBSF9IdF885ylPF8Lg7s/mg?=
 =?iso-8859-1?Q?VjdmSxtDaTf3kvxD6tRxrcYUV8+KD+pag5AOciMtpE5hZgd+FcCB6epGFi?=
 =?iso-8859-1?Q?RND1pujFB9Hxu+YaF75u6l8uPfKPm2vVdwiph+nhAS3167c8nfo6EqHEjI?=
 =?iso-8859-1?Q?cmq9AyWVmYdOIK6cD+GuKoTl1CBZyP4XujoGR7HDnlTJGOlrx2HQ5y0K9U?=
 =?iso-8859-1?Q?MLQ0geSBBedkjjZR6mepKgEPJ1RFfprpdL6fW40qW3oZ7A+/PklC6sLhLZ?=
 =?iso-8859-1?Q?w12bDd70TFbCiZ8ZgCyCIyVgoH5Xl3bx6VjZvKEtiXg3Q36DgH7XCtRwYY?=
 =?iso-8859-1?Q?+5hPtIm+TNUQodxcUyc4si/faV9TZPM3bvSzs9PflhPl8k94bWCQF2doI4?=
 =?iso-8859-1?Q?JlAMHmm6HhK06YKbePBkdKctNLbSelR3Os1RhRJaSoySH5yo20nFcxhOKI?=
 =?iso-8859-1?Q?Gjaf+ak7UlzsTMJvEmWdkbt2G4xBzkk62r4bWf5P48nxyshg8Kzv8pIXRI?=
 =?iso-8859-1?Q?BpbNoPt+h7UtIEA0lMxFalVWxIpznmG0BY35SVfJWRkBmA2AdLN9Sir3D5?=
 =?iso-8859-1?Q?uCn44yfh2Z/xZ2VbTGXDnWLGLEPysOYhPUJwQ+kWzTrTr45ldZu/3aDzlJ?=
 =?iso-8859-1?Q?6wV7H9dp7GcYaY6jBKBnGyBCA1thYLllgOansJJaCmrnn0WVXqk8bwjmj8?=
 =?iso-8859-1?Q?28jlH4xojuefITYq7rX2S1dsFkekmGEbFT6szDmAYuUxdy7vh06R9eX1Hq?=
 =?iso-8859-1?Q?TTLc86XNiJjRLGVnTuS2uCDLj7AN7SPn/K8Z7D30NzuNSW4namA8TXc97u?=
 =?iso-8859-1?Q?9Wv1xRw1RCPWBZoIi6F/spYObf0/XvHYjm5ZHH1a1a7nnyk2s9ZUdOEyI6?=
 =?iso-8859-1?Q?OCrJelS0FgN6DBKHpe2L9Ml3cxYHEn4=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a6c49d-cc39-4d40-ee62-08de6e36b9d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 15:10:45.7485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3z8fyGgvPq7Yg8J1wtgMMx7+9aOz/SrdQ5i7wl8rg2vLw6451uPoGYtXqFkWw5x8LseOOApV3nhjQkSoRePAMZzNeFntxLFeQUSQfnzkRMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771341052; x=1802877052;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aNsK+yG22F/fe7sn057D7yyWl4LrkeTg3l66ag5C/GI=;
 b=BqoYNelb/JvFsObYVkJZz1za8R1ChmS4m0SXkNe6gGW7hAESM2dLurMJ
 44DL5vnrre9+rAnwoDSGR81/kvpXoGZ+yXR/2d1kg/BcWCmKuqcdQ+0kJ
 fJAHzmXBXKH8MwW5oZEUvpheLwsZ0VaC2zDelBx1+dFHla0Fu6cFfrJPQ
 nlPMXG4OwzxfRSNvWApx8rC1oBL9my42fcSwOrWH9gmWLMRF6qQXmI9Uz
 CI4Y+dbOIf2KHTumw6UDpHbUAd48xtRwzZcmRvbjyPS1X+64N8QtDj0wk
 gdUtBt5lET1VAfjmDBro4IW8b4ZIZwem7qMH8OIifnXGx2IGoew7oXjY0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BqoYNelb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 1/9] xdp: use modulo operation
 to calculate XDP frag tailroom
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:dtatulea@nvidia.co
 m,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 39E2114D720
X-Rspamd-Action: no action



> -----Original Message-----
> From: Zaremba, Larysa <larysa.zaremba@intel.com>
> Sent: Tuesday, February 17, 2026 2:25 PM
> To: bpf@vger.kernel.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Claudiu Manoil
> <claudiu.manoil@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>;
> Wei Fang <wei.fang@nxp.com>; Clark Wang <xiaoning.wang@nxp.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Alexei Starovoitov <ast@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>;
> Stanislav Fomichev <sdf@fomichev.me>; Andrii Nakryiko
> <andrii@kernel.org>; Martin KaFai Lau <martin.lau@linux.dev>; Eduard
> Zingerman <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong
> Song <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao Luo
> <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Simon Horman
> <horms@kernel.org>; Shuah Khan <shuah@kernel.org>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Bastien Curutchet (eBPF Foundation)
> <bastien.curutchet@bootlin.com>; Vyavahare, Tushar
> <tushar.vyavahare@intel.com>; Jason Xing <kernelxing@tencent.com>;
> Ricardo B. Marli=E8re <rbm@suse.com>; Eelco Chaudron
> <echaudro@redhat.com>; Lorenzo Bianconi <lorenzo@kernel.org>; Toke
> Hoiland-Jorgensen <toke@redhat.com>; imx@lists.linux.dev;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-kselftest@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Dragos Tatulea
> <dtatulea@nvidia.com>
> Subject: [PATCH bpf v3 1/9] xdp: use modulo operation to calculate XDP
> frag tailroom
>=20
> The current formula for calculating XDP tailroom in mbuf packets works
> only if each frag has its own page (if rxq->frag_size is PAGE_SIZE),
> this defeats the purpose of the parameter overall and without any
> indication leads to negative calculated tailroom on at least half of
> frags, if shared pages are used.
>=20
> There are not many drivers that set rxq->frag_size. Among them:
> * i40e and enetc always split page uniformly between frags, use shared
>   pages
> * ice uses page_pool frags via libeth, those are power-of-2 and
> uniformly
>   distributed across page
> * idpf has variable frag_size with XDP on, so current API is not
> applicable
> * mlx5, mtk and mvneta use PAGE_SIZE or 0 as frag_size for page_pool
>=20
> As for AF_XDP ZC, only ice, i40e and idpf declare frag_size for it.
> Modulo operation yields good results for aligned chunks, they are all
> power-of-2, between 2K and PAGE_SIZE. Formula without modulo fails
> when chunk_size is 2K. Buffers in unaligned mode are not distributed
> uniformly, so modulo operation would not work.
>=20
> To accommodate unaligned buffers, we could define frag_size as data +
> tailroom, and hence do not subtract offset when calculating tailroom,
> but this would necessitate more changes in the drivers.
>=20
> Define rxq->frag_size as an even portion of a page that fully belongs
> to a single frag. When calculating tailroom, locate the data start
> within such portion by performing a modulo operation on page offset.
>=20
> Fixes: bf25146a5595 ("bpf: add frags support to the
> bpf_xdp_adjust_tail() API")
> Acked-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  net/core/filter.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/net/core/filter.c b/net/core/filter.c index
> ba019ded773d..5f5489665c58 100644
> --- a/net/core/filter.c
> +++ b/net/core/filter.c
> @@ -4156,7 +4156,8 @@ static int bpf_xdp_frags_increase_tail(struct
> xdp_buff *xdp, int offset)
>  	if (!rxq->frag_size || rxq->frag_size > xdp->frame_sz)
>  		return -EOPNOTSUPP;
>=20
> -	tailroom =3D rxq->frag_size - skb_frag_size(frag) -
> skb_frag_off(frag);
> +	tailroom =3D rxq->frag_size - skb_frag_size(frag) -
> +		   skb_frag_off(frag) % rxq->frag_size;
>  	if (unlikely(offset > tailroom))
>  		return -EINVAL;
>=20
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
