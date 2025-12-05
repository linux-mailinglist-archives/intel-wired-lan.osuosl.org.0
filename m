Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8170CA6576
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 08:14:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AA2A60FDF;
	Fri,  5 Dec 2025 07:14:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uIqvwR6iCUvU; Fri,  5 Dec 2025 07:14:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDFFA60E48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764918893;
	bh=wlPmrKEESTzF2W5snqu6cPBt/827E0t5xJc251XlFDQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2PdyAI5NMWMcxhi8J2TDNsQBS81AtdZmtMlr9ItI+/T3qB9oMYMw1DGRpY36uRjs0
	 Jjdb0O3RJfAZWdFksb4VcarmeVzBHelQQN74q9/9cw8cSgoPXSn1+6EbMEcWXES2Gw
	 9nsGyKjZtNAySDeg8C5XzIl/SQRBmilFc9hQZcxrCiuJ5f5/NwT/ArDwU0mSDyw5cj
	 CQLyRromGfmC0RCD3ORHPupIsJ1+fcnQtdAeXvySEzsvvXxQHP26WpSNIyz1jknvha
	 ZsiYT5M0fYwB42zHYoCQqJ8cSp6y03tNBs0JYvZNVKHFMUbG8LqKlxCvUtrkB6cYyF
	 6uU7IKjFR5L2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDFFA60E48;
	Fri,  5 Dec 2025 07:14:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B0C8E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C3196081F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 470NMI_eQ6vP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 07:14:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7FFC607DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7FFC607DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7FFC607DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:14:50 +0000 (UTC)
X-CSE-ConnectionGUID: RXkDgELzScukQuhF953PPQ==
X-CSE-MsgGUID: 5ExcFEA7Rz2zZIe9XJbb6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="77567651"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="77567651"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 23:14:50 -0800
X-CSE-ConnectionGUID: 3QRflKMiTFmwHwZ9LBjxjQ==
X-CSE-MsgGUID: Pmch34J4TT6N4YQWbojLBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="226200916"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 23:14:50 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 23:14:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 23:14:49 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 23:14:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JBWNosW+WE0HRUHvbO+ySz7NhSUAanfFebqKrKEcDuG5YUzZlNb7Ti1yHrkQF+ID/Xjj3uw0DlPq89EQCQnD9GqBC3BaNUdZ0Ly1hnm3lMD8vRIeZrg7K0mitvAA90QBF2CiVzz8mgON827Dj4058KZK6NyBY0ybk7Y29tORuHc1J8mj6XBiCCaIbHGeihWX2cVOhq+1evVxR8cHMfRQIeAnrvrvd3ixvo/YgOLAUqVuYQ9qye3xw+eveQcGW0ThLDppD5kfL7fb+/qyIm66U3d5BY2bP5SY8Lg3zejwG/I0LsvOSPEOGe2UtLkW2kgRlyQsiDgGjT78RHDQNZnaog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wlPmrKEESTzF2W5snqu6cPBt/827E0t5xJc251XlFDQ=;
 b=RQQ1gd79I3r/Tnqmgm056/Nf4OY0UttQUb0cyfcYWZ+VrfOTaXfHtt3orfxjT5qa0Y40TH+F4CItjVrd619pQXhJhNQ5h7f+fO+Y5gslnjnI3pevzMxi42b0bKRI4O7FDwHGCpMPoiPVrQwDTUlzFfBqC0sEFjPs8/j1JQIgHXxTl9xJebyhVJsBZ7z5iFHU/NGCI5TMTK3jOCmYq8sAhBmunIftn3dNhSAQVdQvwt2NMU1gtktST5kcRkUQxwbVtSWfpunjOzcq0EX4xIyhY/S1KcdZF4Het0xxk1nK+btu769t/njL3R1IyXIIUHGnNVFwwvPNPoQGQUSM27U0iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW5PR11MB5763.namprd11.prod.outlook.com (2603:10b6:303:19a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Fri, 5 Dec
 2025 07:14:45 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 07:14:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Aaron, Ma" <aaron.ma@canonical.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] ice: Initialize RDMA after rebuild
Thread-Index: AQHcZZGt7Z9B4gV+b0eZ1qbGYPXn0rUSom2g
Date: Fri, 5 Dec 2025 07:14:43 +0000
Message-ID: <IA3PR11MB898657A0DD8E7D7E026D9837E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251205023757.1541228-1-aaron.ma@canonical.com>
 <20251205023757.1541228-2-aaron.ma@canonical.com>
In-Reply-To: <20251205023757.1541228-2-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW5PR11MB5763:EE_
x-ms-office365-filtering-correlation-id: 2cc8a9cc-cbf6-418a-d177-08de33cdf706
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3pqTmN8XWspGIRGtTBUXHyMaz1BzX7X3l67sqbQcpuzL/UYIdjnHMWHNqplL?=
 =?us-ascii?Q?LUB+JHCRdUgbNaas7ZGRsHe1Ogfq6SwzgcT0UY0ADi/ZKbEdtttBWtVcQLGV?=
 =?us-ascii?Q?FvcqLlWH1WsIkQsRU5gzaGLuTWNMgaJ6Ct1PaaV2ticth6uoFrCjp+fS9mE1?=
 =?us-ascii?Q?MdaKNGUc1b4PvZcae/TeO07+tOMblNbGXdVYQrcHvtbS/0Gg76Ifg7s1b7B0?=
 =?us-ascii?Q?FZCB/HkcBP8mMSt6siRKcHUS4JXi3yKpXG0XA82G17RpCunstHl57PfdnxBW?=
 =?us-ascii?Q?0qcY8CDPzzD/C5mN3JwMB7H7IQCvKntZO4iauTcb+b+6JMiVpZRB3tMXYFth?=
 =?us-ascii?Q?kCUawKZGRGK8OPo3Z8ONqEttx1k24yrtvQgyOhqiKXwVfntSYiQe+c1Da9St?=
 =?us-ascii?Q?WE1BFI62vYWPZsj0oi96BvJu8dsUmKMRKenQ+EvNR9v88jktgLPqfyPtJ0o3?=
 =?us-ascii?Q?APqsBxbPXjD4RZT2DgO5qfg2XajSmzCDP31mSm8YjGNTmIYxoSMbSv9kiR2q?=
 =?us-ascii?Q?bXTGIienpRETXZ/CmpQcWK7ONEZ/nvQZUTkOATaYxhsv4E9BIMJev8zB9QfP?=
 =?us-ascii?Q?KcrZWoIQyGDc5UBBSI3wD6JTCmYh7a3ypavjF+VhCPfIURvdEaSci3vLhjKk?=
 =?us-ascii?Q?mOQ/d0KCXXYhgkFTEzxe7ATGs6z33ySt/6GBBIblnRQ0AAS9urvROvh/O31j?=
 =?us-ascii?Q?5ob1CA7q+TtYXlDao+T9xRT/Eei4yGy0p/kXQ94BDcLbMMBmp00mQIOmhlrv?=
 =?us-ascii?Q?6cogRyws6wzwvZFkmb+juAR79qUO5yFOpl7d2liAnQDXvku/QWcsypx28mbS?=
 =?us-ascii?Q?/liJ6C1ANzWGulVBWTeKvFSfkM7zd7iXKDYlbhDNsuVKyxXoIJfjw75k/WtG?=
 =?us-ascii?Q?Pd3cjDHjRl3BbSW46KmmeS0afWmtndKrMDgJiX+RGKNfZ3y3dUV3Pv0OEQ3x?=
 =?us-ascii?Q?JzaBeB5expxIMwwkkdEJdnX7O5dH4QD5H6bE6n4sPIFVyRlUs6T34JUydXo3?=
 =?us-ascii?Q?bNqgdMb2v/zxNVwum8ziOEz/Bxaql7FLLuJk4xdD/xtP8N4/sk2attE/zqNt?=
 =?us-ascii?Q?FD1NnfwWb7LyJ3y5LqWsj41R2qGhBb5Mi92Kxo2S5//D8O7nP5/mrou6y0WA?=
 =?us-ascii?Q?5wBLUVrj9lmIjmJGefeWhx6K7iQkbq66flD+EN88zSgtP+fKDWmQiML+tZ9b?=
 =?us-ascii?Q?YSfL/1zDW0xmUViNZJzbYEt9rQNpUlRKXTi3B6mKSiZK6tjh79QM5/denERB?=
 =?us-ascii?Q?TC/f3XHcNvS932lGyjctxZGMVaicqS1HEAnu2gp717prRMW9IiWO05ZcjuYe?=
 =?us-ascii?Q?P1GUikUHvsZ4zU8BnxGk6wdGHWkOb0+njni3VfrHnl3FLtBb7+261iJwB/3z?=
 =?us-ascii?Q?VpqtFPuxHWxxDbXHsaAnXtGkA2GXeVR2LVpXL6Fc0XK4NM0TEPtsBksdGC0m?=
 =?us-ascii?Q?+J+jY8RLEqFBK3LhkTRsxLZgA12K6zmFPcN7+BloZldg0NdGkrKb4vZLYLDQ?=
 =?us-ascii?Q?l8sWi7iJ6yixHC+UPSRg3omjw0Wk0hf+tYiFMUzeWirZUH+V2KIkzpbR1g?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nji0R2AM0DO716w4tD5kJIgqhYOUXbVfAcXKJh+LZS9knq8aiACFwpieQzo7?=
 =?us-ascii?Q?/G44ixWS1Sk6kFWyQZgTcS5iIclw2x4QMWhlimJA4JpAIQDJcTFjL0DA/JOI?=
 =?us-ascii?Q?6JaIeOILzkK/Q9hOCEUFHAvd9/wcotj8WifS+CsZFOweH5gjJXkz2xUvcUgH?=
 =?us-ascii?Q?Ml/xZhnpe5vT/CSFb1caLihQli3vTwqHBTtCDS+C7iCuY3WdM6odB0Uz5qsG?=
 =?us-ascii?Q?/Jq9tO1t2QsKdLBNW4AP6Wr3bSWupLjcmlxWpWik9P2xmWxmnrRcn4O1BNn0?=
 =?us-ascii?Q?rQjRgTEfeYK7M4k2+sRZPTtkzgFNT+Zwfx9aAOLh5ab+1oOld/wNUiRQM9K1?=
 =?us-ascii?Q?ah8ww7nK1XEMwoStNpjpgWiqY6auAAqwfi04gKxcMx0dulhxP0OpaDjE3Njw?=
 =?us-ascii?Q?/f/z/p6vcbxdztX32AdFuIObigDKQ7f99Ib1tqUPUCzHdpxqzy9wAXc2x7gZ?=
 =?us-ascii?Q?NqGV6+5+yjRiX5zTrVE19KEnMepqjMvswPsT7udCWIQRgCciRM8N/Oe8557L?=
 =?us-ascii?Q?yC+RfUWfhH68gDE8/6RFfHxriRDUNjhrJDuiJIkJTtvHNrd/MwA0hGMa/O0y?=
 =?us-ascii?Q?7+II3eRDHWePBGdorjW9vcGgyrdUSFRLRlZ887SQ85d1eyDrdh5pb0aO8K6q?=
 =?us-ascii?Q?ZxYtxdMZfe27MeXoCNfhBow8GeD4POWTtV1zgMGZxXPrIkTetis1JYynqxsF?=
 =?us-ascii?Q?oCTX3vzxRjYEcn83eg5b9Hb5LZfRQvUwVYs8q3yZoeyW5/6ZgNtlhK84qXr/?=
 =?us-ascii?Q?zMPQcm8qWyP0gl1pIhZ4Miy7gl/T0eGTQoHgxwmDEL03rGqe8uLb+UiI+YL9?=
 =?us-ascii?Q?VqjMAIUWeEe+nKftNwghOm80qwD5RN/MjMmzssGGxW0lnqbuwNifnrVvCcX/?=
 =?us-ascii?Q?LrnfSV70AiIaycAMnjjF5xQi1WSnVus4LLERcB7fGpmFrLlsYr+Bpbw4Aecl?=
 =?us-ascii?Q?GquHDNTKxK7EJ+1/QyntSgzbxnJQcYlr5vILLBPKIRip6tYzFpefPdS8lFMX?=
 =?us-ascii?Q?MnmWNxoZGjOEi5WgxjyGJ0ijARo1a6Ldq9WgW0cZzDnOrQsv3FBVEH57WDQ2?=
 =?us-ascii?Q?F8l3ofQCopXX4w8gK0tjPohmF9dNypNd7/NTSEiYB+DjGMdFDrC31SlVXDCx?=
 =?us-ascii?Q?O9IckTxoXYRtX4ezkxtPlTBtwfzIj+LT02kOYDJQi+8HsZh74SLhOrh5/bfn?=
 =?us-ascii?Q?6F7ojDbtlBm9SiYzuvKsEPBA1MUsDZq57K1k8omOHRn47xqtvmyu6+eSErin?=
 =?us-ascii?Q?sxTnes3lK04PwIwwe3edhZ+CK+2JrGL2Sz+BtlnVnSVrKldIqLJLwjke4ZSO?=
 =?us-ascii?Q?lBaTdpUD5V1bYG40Jc9KFXePmaerUcrNoHWTj1L2RGOuEmlFWSL3LIz1Dqn2?=
 =?us-ascii?Q?+yHaTZDL+Yw9guxg2rZPTOL4thO4i4Ut2qMf/gysy5gDRUoWUURUsx9q0NQ6?=
 =?us-ascii?Q?PO2oaMP9eGNPrDZEnPAiUMRbOPJRebKc4IgsHPCZo//NtSulaJbBimYixPC6?=
 =?us-ascii?Q?dsGsjl1093d/tFItPRUzfVHD9gVUydZPs5m0PVgZpm171utGqzkv0tMRKlA6?=
 =?us-ascii?Q?g9nBjSfFEvwdoyDwHbvIEsvxNflgzYtIq5RKIsSPx6Cj/TW5nN0u3dD94ltM?=
 =?us-ascii?Q?YQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cc8a9cc-cbf6-418a-d177-08de33cdf706
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 07:14:43.8634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4/uSMoZ+vnaCTY1OxK2ShIsaGx316N/FmTJ8Qj2wEcpJSKuYFoQ1ZGAVgUgqb/5vZdsHZJTwnAuEgexbpfLpNKn5NA2A9/CzDMBCPHYLRwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5763
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764918891; x=1796454891;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9zdY0hTepQlHf768El611d/HD1ZIbDLoW/wWk5asb14=;
 b=dXDgfuN005WuyaIy86wVcUBwQn7F9XIa1fDbHkrY0ymVbqMwJv3He7dq
 L2nkBVgtf3O8Zsc91nkfgeKg1BY/qmBEvumaczJ9uDKfzeGdYHOChRVrW
 i/awg04IR5ycsxmgF4awwfrtxP1QuK42aJUYZh2vlpzp1VGu2fKIlACxL
 XNwG8lIuIZG4YEzDhPl351xF/0KXLNZ05Ga9Z6AtM90802JbK7C6fYJAK
 29/6Esj9LaQfGGm6nU++cYvoDZaYKKCwiz0D720QDCrFLKbwf8TOQMPvO
 WPOvrpGyQ/tU4Tbw4K0toH2zvl7nOIKVXBI6EbpUkiPabTWHiS+mvs3/i
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dXDgfuN0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ice: Initialize RDMA after rebuild
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
> Of Aaron Ma
> Sent: Friday, December 5, 2025 3:38 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH 2/2] ice: Initialize RDMA after
> rebuild
>=20
> After wakeup from suspend, IRDMA is initialized with error:
>=20
> kernel: ice 0000:60:00.0: IRDMA hardware initialization FAILED
> init_state=3D4 status=3D-110
> kernel: ice 0000:60:00.1: IRDMA hardware initialization FAILED
> init_state=3D4 status=3D-110
> kernel: irdma.gen_2 ice.roce.1: probe with driver irdma.gen_2 failed
> with error -110
> kernel: irdma.gen_2 ice.roce.2: probe with driver irdma.gen_2 failed
> with error -110
>=20
> IRDMA times out because the initialization before the schedule reset.
> The ice_init_rdma() function already calls ice_plug_aux_dev()
> internally, ensuring proper initialization order.
>=20
> Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on
> ACPI S3 resume")
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 2533876f1a2fd..c6dd04d24ac09 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5677,11 +5677,6 @@ static int ice_resume(struct device *dev)
>  	if (ret)
>  		dev_err(dev, "Cannot restore interrupt scheme: %d\n",
> ret);
>=20
> -	ret =3D ice_init_rdma(pf);
> -	if (ret)
> -		dev_err(dev, "Reinitialize RDMA during resume failed:
> %d\n",
> -			ret);
> -
>  	clear_bit(ICE_DOWN, pf->state);
>  	/* Now perform PF reset and rebuild */
>  	reset_type =3D ICE_RESET_PFR;
> @@ -7805,7 +7800,12 @@ static void ice_rebuild(struct ice_pf *pf, enum
> ice_reset_req reset_type)
>=20
>  	ice_health_clear(pf);
>=20
> -	ice_plug_aux_dev(pf);
> +	/* Initialize RDMA after control queues are ready */
> +	err =3D ice_init_rdma(pf);
> +	if (err)
> +		dev_err(dev, "Reinitialize RDMA after rebuild failed:
> %d\n",
> +			err);
> +
>  	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
>  		ice_lag_rebuild(pf);
>=20
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
