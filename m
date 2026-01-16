Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9BFD2C31A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 06:54:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 751276F67C;
	Fri, 16 Jan 2026 05:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ZsJos3kUgBn; Fri, 16 Jan 2026 05:54:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15ACC6F676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768542840;
	bh=NUQp+076jqc5ErOyxbQy694cYoj7G1/coZT9NZDn3IU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9iwDQK5rZtjbyluKCGq89yBQOroNQdUX3bVwLz+bEl5k4G4zi2Vbr1gBxWbtl35cQ
	 8pWzLRJSic6Mtqk/z1Au8yFL2+xz8Pv1k97sYGkiW4cZVnda4unYJP/Q4SsdDtPwZP
	 Oz+qIpW33xsli2WalA2BDoy0ov43U86RhNYCdBoSwN7LAEAwTeIY5wvpSuPpD+L+qC
	 lhMtVprCpVMNtGq24Hr64T1Yc7m7/9E9JZZzUelwVJa7VMovjfMhM7WqYpgh8rd1mZ
	 c1WLzffhgCu8ePeqhIxaYpDcfDnsnMqXxkwHFdJQ82MhFUd5wQO6fllvabnYld+LIW
	 +kcqLeCHO+Kpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15ACC6F676;
	Fri, 16 Jan 2026 05:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7688F160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 05:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6725C42B45
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 05:53:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DloS90wdz_41 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 05:53:56 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 16 Jan 2026 05:53:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9EE3842B43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EE3842B43
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EE3842B43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 05:53:56 +0000 (UTC)
X-CSE-ConnectionGUID: H4cJ25AxROu4z16m8oD8Ew==
X-CSE-MsgGUID: ajjHmw93TumnvuYPq345iQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="72443384"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="72443384"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 21:46:48 -0800
X-CSE-ConnectionGUID: meWHz1JvRmC7bLKfwLdKrQ==
X-CSE-MsgGUID: zceOWOBmTV+OsL/+0B5tzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="210189290"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 21:46:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 21:46:47 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 21:46:47 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 21:46:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZXKYcm/z7J0behclr+9uJdGQB4up/9Dl8YQxR2y2EcL0TwqSWtKJvSWI60N3rOE4Y8s1xaljffeGMm860GRg6E1MoA8I3XRhrE0rvhZ/7Nv4EwxwTkL0xYqkCRPBb24TvTw/1BvJ7r8jXUu2lAl6EyhXwVIvJwWCXUPEYbX5VI+/brJKbSMfRbPlibSZiAn1fVnwkmYwe4ti/a5si00abese4aiooPu4cf7fnzjm0Qmt5dciqdIjBR80KkMscLSW9uZhIyiX7jpJx4RnR6s2l7mdCkLXjF892NH92alsMlqqKSYmcSpDlZU+GnQ9t4HoYNtwJYNL4q0BkW2ZWl9mFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NUQp+076jqc5ErOyxbQy694cYoj7G1/coZT9NZDn3IU=;
 b=Uv8IOS6f8tWyanVe+IjSXDURvUyezMRJ8BlY4dG2AYL/xTMl4tD0aUpOfnInjYQA/MvQ8+QHtPQuW10jeOD5g2a9ro+/pO9HmiLRAEi1tNzLjfcBC4HmWM7rPtfy//DLCOV2gri3c352LOavV6VQ56zQAozCsCH3AsPF4j8LxAE7Cr2b+IG9vGxqtF/lnW0lABsi3fQ4btijfN7VZ4TMaPPQ0zmDXjzBo5tuS99MNXQDlg280G077hMPyYw+AEQzUpoDZqjfrJqvzdGeDetApOKaxHIPS6do9poX4WMhaACQ1Z+NafG2B7nxuUaOIdGh9sEZUwcRfEuDMqmhnzt/1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM4PR11MB5311.namprd11.prod.outlook.com (2603:10b6:5:392::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Fri, 16 Jan
 2026 05:46:40 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 05:46:40 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix devlink reload
 call trace
Thread-Index: AQHceOENG8Uhxx/yr0KK3s0PjkB07LVUXYqQ
Date: Fri, 16 Jan 2026 05:46:40 +0000
Message-ID: <IA1PR11MB624194B7EFF2B5C3CF828A0C8B8DA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251229085234.372277-1-paul.greenwalt@intel.com>
In-Reply-To: <20251229085234.372277-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM4PR11MB5311:EE_
x-ms-office365-filtering-correlation-id: 35550f8d-eec9-4f5e-a7bf-08de54c29f1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?reCb9ToLnvLLiHue7eckI5kAvhXpSeyWFlRjTnqJFHxyeAoXvCyTXWiiCSDz?=
 =?us-ascii?Q?KGnwomDb4IU8UuRAzjpeSDKOvWFIoL9xvzxZbHedManNyuYj/Vx6rY4pWkzz?=
 =?us-ascii?Q?m/wElLxOoFc/u9a0XsACIGZYqPEdxDe4Vz8SQAgpxFxmdOL7PqDxf3o5Ntx9?=
 =?us-ascii?Q?TOaA5In0CNvjHfZEH8mM1dOPngE7w1FVmeNGaPrqS8XfUPOOlj2aLKXJDIMK?=
 =?us-ascii?Q?vq0siXik9eepKnPT7chYlm+kPn0nD9WYdA+I8INeCnZv7UL8onP1jE9IHUpx?=
 =?us-ascii?Q?/GXnYd2Zh4vfoz0g4Iop+/FeL0lHVpOfTsMiV8KwNPGDE4lXi4Czoe/0UNxy?=
 =?us-ascii?Q?+Ue5aS8WTxxbtckMQGUhFpcHRB8xYYO4lG6VVi3x/wGisVak0czCCWWkOzAs?=
 =?us-ascii?Q?ENQs1Tbu5Z81DbBsU07CJM6dvMfD3dpPgOot3ZgcCgcozEShuCR9PrKTzIE+?=
 =?us-ascii?Q?+Sd3vWZH3UPt+DGhRuIHD+QWLK1Nl2uIUVtL9FI4HCRk78kBL12pe6VmzpZq?=
 =?us-ascii?Q?+DRfD+T608XOYxSPvohT3i8nLeDEtk7xgmfU0heo0IgvZcfKXJFrLR6CtQ0u?=
 =?us-ascii?Q?pzUhvkPZdiXUvTCgGwxOHpEX+NrLVOlgdsnL08SoP5JNnHte6+IXpVuOqJSE?=
 =?us-ascii?Q?VZJxwr9PQ1Crhd9nKMiNidhuYmQ8l5Qlv4w+TiFXzqbRxXa0SRycgY1GQBGH?=
 =?us-ascii?Q?gzLX5d8abcF5FqRXV8JT3EF5+dELsfbXJ/3VOvH3YEwcGlDLC5P4X8/yRy3F?=
 =?us-ascii?Q?5tB5safPE35N/QRCLbY2W2rmK2+aljC64Oke2uFcd9mQP1LhEDpxzXnpKw5d?=
 =?us-ascii?Q?tFpn2ZbOMxS13YuDPmiNpA7uiCJ5MoyVHNN+uqB7klLAE2E5XP3LosxStv3e?=
 =?us-ascii?Q?YZqTwqnBwGKp5FkTUGthq+aWDYEBo6xKAE0MRqwUJPITNFGutx04a3xtt2oZ?=
 =?us-ascii?Q?Wc3jbOvjzHpx33YH0WGq8eJ9a4O8X+ytLMCaq1ys3PQPhsSgLbuYiZBouNA3?=
 =?us-ascii?Q?7TQA20MG11d7nKwLWPRsicP2MiiEcLLTcUDfMuzn+c82TwlAmubQVyptrT8r?=
 =?us-ascii?Q?L9qkIQMGmSN6nW3pFohhTqSc08PsVC3yy3kkODD7kW2DJL+wZMdFdjWtMis7?=
 =?us-ascii?Q?QnM3g88ijn1Od6K3VnZQXwqpLcQgpmC0h6V+m9XtAK1ooZ4UkDXPXyrfOX8V?=
 =?us-ascii?Q?iEzWFVfXc/Q8OlRvPTczsQ6dLRWsZj9sik78L5fenTrDUvQ/uB09LwjeYtDE?=
 =?us-ascii?Q?mAmJXu3/B2wg7zuHh6ADuuK12F5yNEAllrBt/abbGU5VjgvTA/CxqL4toA9r?=
 =?us-ascii?Q?PUvap1g4yZoxt7JC3X1x8lt78hFoqovL0WX72hUWYbd/PokgsoleTsuxSXFM?=
 =?us-ascii?Q?lb753G9cDktlSGvLEEjvc08llbEP5fB76FiS2lEObYXfTNjt9AuO57h1nXBu?=
 =?us-ascii?Q?XykoC994WZzMiMK/Eb0UUaEMMfXfH6qO3C/4JbrMHrbRCTCF/XWGbeYs4D4n?=
 =?us-ascii?Q?jDdbK3k/hw66ySj3hycmAoyEI+qwrMepyFuCSnXSkvkr6qL03uvOKBGSZqnU?=
 =?us-ascii?Q?WJRuGuF8pxeO9fX8VhQ4V/rFBodKC42mtw7rmsEfV43YT5D5w9u7IO9kFoQ8?=
 =?us-ascii?Q?TUqdsheeCzbTm9G8RQHTGrc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?itQcOSi3911yYYqFcmCqxHEXy1CaRcnFM/THYPDPOe+U/7KQUSOL/Ap7gxYH?=
 =?us-ascii?Q?i2PaIvPCDO8ksdI8VEgTM5JIGR6AQDSfaIb5UaDkJJ+hzZX2IWlHb/TA48qI?=
 =?us-ascii?Q?WyZYBOemKuQch2ussIq66Bc/HPyV09oml0+tnnnTSq+2h9Xh1JXJu5DWXi+w?=
 =?us-ascii?Q?z3PabOKRHpeaqyAn45Lbl3DMJlA8x0cjrCzO08805Bh0wEB4MlqX08yheBF1?=
 =?us-ascii?Q?m4WGkoM5I2ae+qHnhMEKULhnQs9iNIE3ZzmBZF14Ssgh0dW2fS1L7hvRVDVn?=
 =?us-ascii?Q?tOe06qXUgrsUW6wRto2XfeAg5fIIXLEJ07R2HJ6iiMS+Xfh8BXFM7X6JZtma?=
 =?us-ascii?Q?d8mmmXEOjaJx+lXXUr8wJWt6raBh3doTPL61wXvd2pIlnnrc4ZmNw7+pT3R3?=
 =?us-ascii?Q?pNs9h+l73xPamAeitc3nEoCyoVU/GV8TCle2neHLwd8YeiilhILlXOZJOMfm?=
 =?us-ascii?Q?yLfBD4O7HAl2Fr0rTHPJwO0DOIouBh+4VVvwFmotXV0hf6lvPuSWoHqm4tGa?=
 =?us-ascii?Q?6NGa7WOYmYfqIayrHfsyEEE+mBm60QTNxq4g4zavF5diSC9TWtZcQIh6rmUI?=
 =?us-ascii?Q?TzO9iX1sO0+xBMCN0iLFmyoQ3TrenRkFidhpcKjcyQB7eN1L1owDL30gOjmT?=
 =?us-ascii?Q?Bc6cg3e8r5IiJGRGBkmbO1cG5q8rmTKXhMVsQXuAxnYMIJAthy9LKX8ANaB5?=
 =?us-ascii?Q?bOvzf0+EWyGoHLKUt10VRPB4OvDTxcTxoynlnPHKIQFEuR7oR9/PS3FwkkxU?=
 =?us-ascii?Q?Sr7UHAQBWpHQSL81Yc+sp+s14YhpZhfow6EpZwc8tf+ua/pP8KFnsFnGDn0A?=
 =?us-ascii?Q?dlPEU4h2EDONxa5Cx2Yc6CFWPQwp13CELuo70nnPXcczS6hhOmPrQUy/hL2u?=
 =?us-ascii?Q?xCC+FDBb+lalgOUjsEAGWXlDEh1bq6nqZyM+9NaemnSaUcNV2erJAkjy6fZG?=
 =?us-ascii?Q?ACeam8vy4hjlurzhUnefNE7pRCDg4iUFvLnTuqrfrsl3yaXHimaYfdG1QHi0?=
 =?us-ascii?Q?GmeE9bxtl3cWEvucjWKO4RivE8sgQvK1zuUzWAhoCSyzAJvmLY6ETHvaCKoF?=
 =?us-ascii?Q?tC0+IdXA3jGlC7LEMtlcd3teQTSp+euFWlbrYiBFRh2Wya5HmbQ9IXyhfxON?=
 =?us-ascii?Q?41bDexvS/dPjOSado/CpTcX0xF8Dkv35v/KbO/3tgQ2NSMPAq91glA4NsMRk?=
 =?us-ascii?Q?WXoEMAQ0RkOPQQt0DLGgM933a4pHjxhio98XbE6H4R1J+m/6ZririU9XUtsq?=
 =?us-ascii?Q?enYOAVUUL9sdwoHXxly7RtIm1evIzGuPuX/BKQ4mV620pDzFcKho0ee+aEfW?=
 =?us-ascii?Q?u4hAwZVWan7cF0XzHG56EKeSCrTzFdSYb8gtkhhF6u9bX8gdJyQBHoCFMzGV?=
 =?us-ascii?Q?6lmCRoTLBF1va8gkoyqqT1noe2cQFu8jfPd6lXrmXubagbJV+HzYizlukDfY?=
 =?us-ascii?Q?t04hfYWHISXNG/rWB9DyEW74+Hjwpcz6lwSu/RB+6FL+ozF9nCgkWLFpNjFf?=
 =?us-ascii?Q?QPnGnyiopsFc0MmqEro6SUrNx4AezRj0P8qT+gM5/pbD7VGvypwPToG0KJUb?=
 =?us-ascii?Q?Ilhp7rHziNtg9Enqh1z4ysQgVi0ee77ZaHDuJtwbmXFtxDq6Td6u0rcbYJsU?=
 =?us-ascii?Q?M1qDxNEu/5IIbF9sTKLB6NhSf3Ua3mOtKhiOkATcl0RoCa0a13zH+UcADv0z?=
 =?us-ascii?Q?CGrlE2miaoA4rDlA57AtkAIScpGYJssqdAAtnarjIpHngxUL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35550f8d-eec9-4f5e-a7bf-08de54c29f1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 05:46:40.2891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1CwCMFxu1xopP8NBE1k7bAQX62xTKz7nZP1z+w85PczPT7F4iHMuHflixqmFc5wRRBbw0bUzANouQtODV5ooDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5311
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768542836; x=1800078836;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U0asCxgmwyBE9WieDYdYLFVHBwXhoKkywAE5NI38Ybw=;
 b=OUlsxMwFFZwP63C4D+7yJ2Uc4N/fxTvvI6klfkELsdasHKHU4aGLpPeW
 g96JcbM6j9wgU8fYTF5zDLAbhNm3+wyK3IklhWna7b69cCLkIBz+MvGvC
 9RB4F20wAYmLrXY1UAEU2XxnGcNtkEFTXN80bo9n+J3jHgsYYvb+LQRAK
 8P0xDE0k93Bv70sdfHZLQSPohBhGzFImpIygMy1eZdMqKbH16iT/CRO5z
 MR5iLpqBKbHZJ7sLioVQK/HKzrQ7abLj6qKkuDfQWmW+oeg1LxIvaoL75
 KPz2wUIQR6MCEp0nVMZt0m1a9yv3eL8gqJWAZZelL0I0Qsf6k9grsW3HZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OUlsxMwF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix devlink reload
 call trace
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
aul Greenwalt
> Sent: 29 December 2025 14:23
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>; Loktionov, Aleksandr <ale=
ksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix devlink reload cal=
l trace
>
> Commit 4da71a77fc3b ("ice: read internal temperature sensor") introduced =
internal temperature sensor reading via HWMON. ice_hwmon_init() was added t=
o ice_init_feature() and ice_hwmon_exit() was added to ice_remove(). As a r=
esult if devlink reload is used to reinit the device and then the driver is=
 removed, a call trace can occur.
>=20
> BUG: unable to handle page fault for address: ffffffffc0fd4b5d Call Trace=
:
> string+0x48/0xe0
> vsnprintf+0x1f9/0x650
> sprintf+0x62/0x80
> name_show+0x1f/0x30
> dev_attr_show+0x19/0x60
>
> The call trace repeats approximately every 10 minutes when system monitor=
ing tools (e.g., sadc) attempt to read the orphaned hwmon sysfs attributes =
that reference freed module memory.
>
> The sequence is:
> 1. Driver load, ice_hwmon_init() gets called from ice_init_feature() 2. D=
evlink reload down, flow does not call ice_remove() 3. Devlink reload up, i=
ce_hwmon_init() gets called from
   ice_init_feature() resulting in a second instance 4. Driver unload, ice_=
hwmon_exit() called from ice_remove() leaving the
   first hwmon instance orphaned with dangling pointer
>
> Fix this by moving ice_hwmon_exit() from ice_remove() to
> ice_deinit_features() to ensure proper cleanup symmetry with ice_hwmon_in=
it().
>
> Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
