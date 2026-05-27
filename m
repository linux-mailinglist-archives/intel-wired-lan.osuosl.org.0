Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANIqCKoeF2rw5AcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:41:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE945E7E7B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:41:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC46C40294;
	Wed, 27 May 2026 16:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wD05nHC0do2E; Wed, 27 May 2026 16:41:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 597CD40430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779900071;
	bh=deU37qf+Lwj0jnnn5TFcUovNbkurbcwkgqG2GF16Ggs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lAjZ8VMNC0oUfLHRP2/sA6pmJXzW75hgxDxhctd5dh4mqpbaU2Wg+SG12FS2caatp
	 R2WUUnrt8b4VA5hPrCv52Eq7LPQ00YtTdtN7HdKL9v2jR0yb/lpsDC2BCj798SQabz
	 RJiOr42js3k7P7y4JSylnEMfBmUxDNY2XWKdH08Tk/Vo2ahQX3ajqfs8oQ6celW3o0
	 uPUjBiuNX1g/UiIz4YtOW6zjwQppsgxhK2ytRP8B97vZGq7c7gmFtVKmjdoU1lmBBE
	 mAyeZ0ZHCW7v1EjimN2nNnquy95hJ87Lrjbze55f0A0T20GMU27qoKyq3etd+Azp1o
	 zj0jgd5ArhDDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 597CD40430;
	Wed, 27 May 2026 16:41:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 14D2BCC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1245261443
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMSFLB_E2e8C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 16:41:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 560266143F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 560266143F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 560266143F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:41:09 +0000 (UTC)
X-CSE-ConnectionGUID: zvhQeYEQSWeifqf3L+sBjQ==
X-CSE-MsgGUID: dJXmP18KRHCovrO4W9Rn4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91844197"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="91844197"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:41:09 -0700
X-CSE-ConnectionGUID: 02VLHLcwTr67Ce4nXn/IuQ==
X-CSE-MsgGUID: w2k8rtk9Q9+s49NBZxJgdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="239286707"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:41:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:41:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 09:41:07 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.3) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:41:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hhGX042HLzpdpJg8qGFJ0bwoO8lmTH/WokHkHTnK7p71706A4u+VEbuNyf7UwlUCzg/Mz2utotVjK3/uUsCzsjcxZycVYvR+xQU8kEH1AJp9uhjRaAC7B4gEPxaCfRFKUPbbgZvza2QZ176FPxnl9Z6ihSZWNSR8b93Il7vLIHeHLRNNj6t/wDoUbkIAz5d7vAiw++K00mKN8o5ahkvNQrMzGIDPyUZunJX2dmP6/1lt1NabP8qU2jEg4T4B5VdV0cx71K8yPP3jOEbHvvJW5/d3Pxdl+SGpsKT1WEzri1q2y8XEJKU5RU7nI48RhyO3mHL7434zDlkXKP+zzCV1mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=deU37qf+Lwj0jnnn5TFcUovNbkurbcwkgqG2GF16Ggs=;
 b=rD6rsji9bxi/ZEF4cwDGthqs5mY4JOt/Ic8Z91iyOO/lfc+ca1OQ+JFvUAUDFAIWs9BpV8PpJ6HFiQ6vUZF2d99u0G1JhbuHnJtsrkz3bhW+E8q0y1HCxEAF9vBIV8WlYwNHAFs9rg7pG2UfkBXPE//dFMA+ZCloDGbqRh005e+lyLikUtjcy+RVvDHoOtrjy5xJC6Nfx7e/TjWtFY5R/+95CSYZbN9cALwA+nM9xMeaiBef3pEC5pZelppDu/DAX4ImzWhT0QcMjUFqyzUwCnbVM3ljh0vlSkDdnU8OS84Xn0Fs4HxyBOelrjXjo2YCCQ1DCEvNYASkKCwGPR4IKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SA2PR11MB5100.namprd11.prod.outlook.com (2603:10b6:806:119::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Wed, 27 May
 2026 16:41:03 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 16:41:03 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 7/8] ixgbe: use GFP_KERNEL
 in ixgbe_fcoe_ddp_setup()
Thread-Index: AQHcx1lvCFa+NX7RHk+f6J/sewNXirYiYErQ
Date: Wed, 27 May 2026 16:41:03 +0000
Message-ID: <LV1PR11MB8790DAAF5A5CC6570109CBA290082@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
 <20260408131216.2662245-8-aleksandr.loktionov@intel.com>
In-Reply-To: <20260408131216.2662245-8-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SA2PR11MB5100:EE_
x-ms-office365-filtering-correlation-id: 06a2d18e-5c41-4c94-bcbd-08debc0ebdf6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|11063799006|4143699003|18002099003|22082099003|6133799003|56012099006;
x-microsoft-antispam-message-info: NfetMD4RdvYNHyxpYAouyCT48XBiWmJ2wm/ywkHuZHjMipAnxCFlskjlzkUa2zEg631CdmsZCyqG7JZPW0g3arX1193YTsZRvyblIReEJwrz8MgG7uO7YCMorGshUr171FZ+zP2V9CQJux2zEGJXU7ntGziQ4aZDicotMjhRdC63Z7hBlfRFbOy8CH4O9wPnh0yQIK2aH1NVzHNJyPpH4c9WHtIpo3nlOWRmLB32nVToC43jvickfTF5GWqKIEViLLHCnpRX9DqMOUuXh9BSlPQdgmkhNI6PlWmFCohs/smYZ4ok1NWVfk8TymfGrV/8ICjAzdOloqLdL3xqaHgRSm/aV1sQ6UNu7h/mQHSzokzcHVC7zuoY/SLmejRqdkTZJamkAh5tc4ZVjIslubUtW2E609+LBB5QoUxPUZr12cu+RX/SH0qagXy5TflmItKzRVG0iwKwJWJwRqlD/TuDtzsMHoHiNrQVYe16TVfbmDEf3/HiqV9MxphcYGXz7WNF1Qa4CzGhUixFUFTggwnK7OI/0ChKQC0pAJVsxyMUhZriCmhUwREEVM9+US6KnphBtOx6XQzr0X5eCzFYz3FnrZi6ba4yqrpJT4m9EErxdZdMKvNLLy8wh7Onu/0w/Fo+ESwcBEMqwO5CS0B1gZj6ZhX9OPAC2Ip0BSVFmhg4DFpCKXEn5l9MJi/CCkQ3hszh2jCU5KLcvY1Ua4haHacGNegwj2XLJeT/IMjO9rCbYf5bKrqoBDpBfddMZgO64jf6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(11063799006)(4143699003)(18002099003)(22082099003)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EwBms8mJWsWfn+xm5N6cFL3gFBBdkS9ZCfgjg0z6ABAjHemSsjiPo5ATX12b?=
 =?us-ascii?Q?loghL/WDHY7S77Is6F0Ca1FCyokvsOl8/wEJ1YMikUI+Jg4cbM3uxuHL9YaK?=
 =?us-ascii?Q?4aXyDeW7UjS46XsuzGsZ0/S/ALwrIYCQIXyvqROIWjJtQVsLsr/qfk2+riKq?=
 =?us-ascii?Q?CNCgrb12Z03Jvh6VAkc9I9svTGCaNjidqnof3SAzfFKqmls85jp9g162+feI?=
 =?us-ascii?Q?8zHmRC4KOLzQzdy3hQwezlCV+N35VtmRro0cADdzV3MnPyuHa56YUdW182eo?=
 =?us-ascii?Q?TH0mUsKeyUQdZeqveGzoAOJ2Quv1zUISCEkSrHoy+8CIiH1Zqb2k7cENWIt6?=
 =?us-ascii?Q?3sC4EbmhMrvm238b8StRS7TUBX0CQvHSwE8N9zr2idjaKGKpN4GKA6CO09+4?=
 =?us-ascii?Q?bNMClTWAEeUtIkjYmuYm6FH9Psjl0bIAf5ZTZ2KqKN3zCiO1KG5FZlxf7wmC?=
 =?us-ascii?Q?43f3DhgGSv7CcdcEPCh59VTBNm9Su046/Pa9ilwH3aLDTaRJ5AT9AdlyRgA2?=
 =?us-ascii?Q?34L5aeZBgJQPpcuCRKP0WmkPChwh/zQLq2FUMgTP/iEVmL/WxTtQtIaYJ/ju?=
 =?us-ascii?Q?tOw9/NQwuBN1MRoDg6RF57skEdrSbujjKXG/EF2uIa4Bj4bgfY4gJYz1nSRB?=
 =?us-ascii?Q?bssoycm06Cg9WmSVwdAk6HEJYtquF5s4eoXE/r74pQSOXTIqMaabZdHBQY+3?=
 =?us-ascii?Q?whgae1g+6U6JJ+pFv/2i6vK3F4+oJ+YqFJocque+u3kCStq7Qbh38ohYfD8u?=
 =?us-ascii?Q?2tOn8S7Mn73sIbqQq3RtF+lbmw8Hf0YTPa4sgSRJ+WKNIkJPSO6dUcRdD3ec?=
 =?us-ascii?Q?C3Z2ulHBzOx14lptreNLqN5ukTKD3US2CpNSRMofVwWdXXR91yvCiGadN+gA?=
 =?us-ascii?Q?rsQF4g/ZQIK+bvblXHHw1uNfbwN6yInqXE9TW0msUKwZ1fNosa728LpTAQNU?=
 =?us-ascii?Q?SpzsGn/5VCWx9pcaoulWPYUzEj9vIiRpRFZUSgQdgtcV2qYhZPqESsH63Ayp?=
 =?us-ascii?Q?l9MI+lvE+mY5B3BW53sXEOpuTTtgHaYBPI89Q/7FKj9Cq/VsU52IwG4EnUEe?=
 =?us-ascii?Q?FHmuRKFCn1vcoPgJnClVzU8DX0rHOX20TW3qZk/ZtupoeNwc5tuDOqliFijD?=
 =?us-ascii?Q?/+Yzjc4HEyYgegv7+4XLZl8qpIuN1hQHrnzdhGMCFQv59583GTVJSc/fW2jg?=
 =?us-ascii?Q?dQwQ75lRtfTgtslxQHQXURXhw6duZrf0M3yd27xrnwMFZ+0VeGMbrTunqhjl?=
 =?us-ascii?Q?5oIsFU08Gry3/CXFZEwaJVlU+1eBghGirlZo1fsVgOHwQMmlDxCC3RvYE+mY?=
 =?us-ascii?Q?eyNpvM4QKvUDqJOoOaWSlepaTdtPbJflm/DUjw7NIARb5dfn6oQfq+1c6qTb?=
 =?us-ascii?Q?IaaGo+9nKVcyK/F9tL1hV29xMB2HYlYcvxsWAVA70Pkx69GfNBjSOeZQfEzu?=
 =?us-ascii?Q?9l+YDoQVLwpx4+ZwwO8cGfTgnawDgR+ET6IkqL6hXEzGY4mm0Z5acNnmjmBj?=
 =?us-ascii?Q?Jicc5JBc3/ZpqexmuRipCpxNMGHxFWSaUcnGUV4chpbUUar7vW0xq/yfEXLA?=
 =?us-ascii?Q?sRlsYEyvF967LNgL5k/I1kErVIjcWLfgoGbxUtwCKBH6OImizUBG0BK6afRd?=
 =?us-ascii?Q?86w9VRdKsTUVhjOK3PlYvDWcf2yVJi6NcVZn+eKlIHwgtSUSLT5reNOu3Aqs?=
 =?us-ascii?Q?DFcCj965z4JNAAW1DSrb6UOrg35RNsiXAXTOL9LQOeW00Or1SNqb86USCITh?=
 =?us-ascii?Q?LlYqyzfmtw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QRoQ5gI0U+lkYR7LrDTpGdQVUXBIHesozGGBjcLsyRVSusfmCY4vCgApYRueXWYZaA91x3oMrEmUfFI7qaHEaDig+9L3bKCrit0Iztlxdg0cPUKGLcLN96JeezdRWioriztVcgmtK/TlelMs7Lx7kmMQn4jZP1Cu7AB2wnon0ixmzrtBU+ujj3LBgrZp+JnVW10OswYygaGlGy7SqckOGcxLwY+mAUZsOGNXjF2l3j33Kb3MT6N6Sj07wgKDDIKlpTW2RRt3fQ06upS+aJT61v2N0Sy8ASUgOWVTMCyiXyG5nz5RC3XVqfhVFG77Gz8mpsBLjhLLCn5U8xmQbV64tw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06a2d18e-5c41-4c94-bcbd-08debc0ebdf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 16:41:03.5305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f01ecxm29E93HqTS/a8wjvMfmKUUB7lsUZQagROVO7F3ZxU3yz0EBA3l6EEtwzMXYtK5qQ0nWj4qKPnyg5XxCxW2AOJTCsxKDdBi6E6udL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779900069; x=1811436069;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NudF6quqY76A/IlCRZ5vyLJRwXlyet/RuiNkUfV1k7M=;
 b=cAuMcnY/lDa0CdQAemApBixZlVBZK1ZT2ElB7Yexkdbn3wQP9XVL09W8
 Nk3h+bRNMzoTD0JrB3PY2pPj4ac2RmI8ADiJoLDlF+BxDJbLLMvbEedS0
 S3P/lyW6czYbQfV/xTyhDEMjUkvr9tIKr1jxntGxV2wztwjcGqKQ02iq2
 zZXGT6VwPlvH7LTik7hkw8XmkfTJBNr+IfnPs/JDRLVLmK9Fdb8Q8Uhs2
 9KciR1vvdTb3kl49NxdDQ1X73Qcv/DeeC0cvq8lQPpReg14J54vJelrS1
 p3qSDkse9ht3jtCthQ4vyefwcJJbvn0OPGp+45MM9zlD8idrgIl/8tC2d
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cAuMcnY/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 7/8] ixgbe: use GFP_KERNEL
 in ixgbe_fcoe_ddp_setup()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 6AE945E7E7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Wednesday, April 8, 2026 6:12 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 7/8] ixgbe: use GFP_KERNEL =
in ixgbe_fcoe_ddp_setup()
>=20
> ixgbe_fcoe_ddp_setup() is always called from process context (FCoE offloa=
d setup paths) and never from an atomic context.  Using GFP_ATOMIC is there=
fore unnecessarily restrictive and wastes memory=20
> allocator headroom reserved for genuine atomic callers.
>=20
> The previous attempt to change this to GFP_KERNEL placed the allocation i=
nside the get_cpu()/put_cpu() section, which disables preemption.
> GFP_KERNEL can sleep under direct reclaim regardless of whether the calle=
r is in process context, which triggers a BUG() with preemption disabled.
>=20
> Restructure the function to split the get_cpu()/put_cpu() usage into two =
narrow critical sections:
>=20
> 1. A short initial section that reads the per-CPU pool pointer and
>    validates it, then immediately calls put_cpu() before any allocation.
>    The pool pointer is saved in a local variable for use after the pin
>    is dropped.
>=20
> 2. A second section after the allocation that re-pins the CPU solely to
>    update per-CPU counters (noddp, noddp_ext_buff) inside the SG loop.
>=20
> The DMA mapping and pool allocation sit between these two sections with p=
reemption enabled, making GFP_KERNEL safe.  The pool pointer saved from sec=
tion 1 remains valid because per-CPU DMA pools are > only destroyed during =
interface teardown under RTNL, not during normal operation.
>=20
> Suggested-by: Sebastian Basierski <sebastianx.basierski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Move dma_pool_alloc() outside the get_cpu()/put_cpu() section;
>    split into two narrow preempt-off regions so GFP_KERNEL is safe.
>=20
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 51 +++++++++++---------
>  1 file changed, 35 insertions(+), 18 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
