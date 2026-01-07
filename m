Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 996F7D00319
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 22:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F763821FD;
	Wed,  7 Jan 2026 21:40:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A-on5vmXA0cm; Wed,  7 Jan 2026 21:40:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C1AE82205
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767822025;
	bh=8M3MMAPWdhfGQkE5k1mTfsYWc8naAtN12uK5Rvas4U0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8gxDhZn6vTQtxl9UQ6LAMCDUBnCIZv9QzdoulWyhT2VA2cSWo30kMula0oeqYkXoh
	 f4W8xNwIg9rqpxIAlKjYxJoQYl+KlstzTY4mmHNAWrp5xaZNqdytq/42HfrkJWczrg
	 a7lFsV54CdoQsczvMhtr/XoVLCfXUXpiLuI21avK8pKSNN9LEnMN38vySwB/c6Ws6I
	 cozOsRoDDpDxQUoYcAWsTaNaAZ6csTfiItSNyMbtr/MwW6bM1abtV+Wp/WAZz0Jywe
	 rlJS6duMJODfTROkvyDVOzPQAfKZ+zrLZLXM0dQDtpBJHK4dBRTkjHK32byW8tcDHE
	 WTyY4YBB8Xzdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C1AE82205;
	Wed,  7 Jan 2026 21:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 04DDC25B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 21:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA2F640B1D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 21:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vgKkUQaTeuzm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 21:40:23 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 07 Jan 2026 21:40:22 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AB40E40B1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB40E40B1A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB40E40B1A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 21:40:22 +0000 (UTC)
X-CSE-ConnectionGUID: XW7wZrZPQH6f1E/VuAHx1Q==
X-CSE-MsgGUID: LJle4lDBQZatNPty2ubQ4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="69179585"
X-IronPort-AV: E=Sophos;i="6.21,209,1763452800"; d="scan'208";a="69179585"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 13:33:14 -0800
X-CSE-ConnectionGUID: tarFkDTPRE25pRj2LdjIlQ==
X-CSE-MsgGUID: 0e+gEUDOROGruWl76MMDRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,209,1763452800"; d="scan'208";a="208092155"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 13:33:14 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 13:33:13 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 13:33:13 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 13:33:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sDbpNe2A8zUzWvt/VOB6NJDs1wYwA2/gWf1nLDNmpbBtCYtFv3uvyYtCb96ZgnUeo/dRvYO2gAC86h3f/+GuCiAIbjZQTqU+rxTfe5/GLGPbiSJVZ6yY0h7/6xg9JYp7N9mdWJNQI56QUGCZXosnSlVzaof0Nt6Lz+TtVm9aXuB65fcQahToIs6VLxACpWpJF/QZFUjpfWTOcuAD1QwXUu8eQf3AkwpNa6QF4yAOWYSp2Tkw6VvRSWggzw8gKK/wtQ9tJ5WQO/sqFuaGIxrgePZPj+/iDmxxm/hkUkDoQwfRfJP+yA0HOX6UKe7Evc0mNIodSRlpKXJqjBh6F0P+tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8M3MMAPWdhfGQkE5k1mTfsYWc8naAtN12uK5Rvas4U0=;
 b=GgG6lGnTnNHX/RXBSPFyC9ippw331zylCnJispkU8W8ugetlU7eak8FtM8UPEa5ixGs4nc30AORIHJpwTnphT+GvAtGT3gvD0Fr9vVo6m9upP0++Rz5zM4Hj54sU+N0jEPDkarSnIN0hEqHzmMuhCFcpUY9vdpg9u/8GwrHU2Yzomim3SBktqopuBb/mGwgQjMwISbR/PbwQsPEicYWCGIOOLez4nAZA3bwyzr9vkmPxHKL6vPVHeggSzJXKmUrRR/Sf6QCJOgMMQ73+3yrdA/ctSqj21U+BGT96DLVdojF8w0xP3rSU/KlP6v1rjNnjTL7gTTNLr3T4f3kdbSl+qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by CYYPR11MB8432.namprd11.prod.outlook.com (2603:10b6:930:be::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 21:33:06 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 21:33:06 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Grinberg, Vitaly" <vgrinber@redhat.com>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
Thread-Index: AQHcWgwUxhT8CbOoy0GRBA7qtFQVS7UkgCYAgCL/2yA=
Date: Wed, 7 Jan 2026 21:33:06 +0000
Message-ID: <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
In-Reply-To: <20251216144154.15172-1-vgrinber@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|CYYPR11MB8432:EE_
x-ms-office365-filtering-correlation-id: a12b4deb-e4e1-4e40-0663-08de4e345878
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?MjF398eurkmKjfd48XxitweEmP/UwyCX6XPcu7BdoqkjmpJ1sGeoqy9Ue010?=
 =?us-ascii?Q?jybROI609o7bSfiExbB3fb5g9iCZbv6jh0rk0wFrHIi5cG/arkq9jdkP87O1?=
 =?us-ascii?Q?rZ+QIvsERlT91slHEesg0gYcz1fYjXM+iC2LHcmWdLX8vFSQ05Kx3RLUoSwT?=
 =?us-ascii?Q?qsftys5GAIESomodYxi2hr9Vv/2t0UTmqN5Jq+NLU3f7sy9OFN2pMlZZ19oA?=
 =?us-ascii?Q?3EKE5ukb5btv69tN3r+2oRhQJSNrp4iM4N7lzaAYx2zZIgLxE/reR9VDyyYl?=
 =?us-ascii?Q?uCAa9+HXXFG6TzVPpIhZeC62egtt79aLagiFAfTBN/9263Um52JDWP2wvl70?=
 =?us-ascii?Q?HPB6LOkAvYIwcA0ybdjg8FZYtdhpXT94P0X1Ujb986buK5ndL7o0tZgDDsT7?=
 =?us-ascii?Q?PuRxVihpzgDe0Sk45XUkdBwxdsp0HcCLoQSdgQ+b01wPnYvwylsNnSNMnwE8?=
 =?us-ascii?Q?Q2y8pqkh7CZuwlY5iJP5aM19DhspI0x1yOZYwcdIvXXOLBxYdbDoK+lmeeA3?=
 =?us-ascii?Q?r5AuASwLmHTXvtbCp2rzHahWqd6EYCcKMbLPSdfvL+fNlTFVDUHcefe6t3Gq?=
 =?us-ascii?Q?VPtd+4WUTyRgSo7L7IvUOu7ik1RrwPYZQt9ZKo/rvlAc7+HJcrmCGgtirDKo?=
 =?us-ascii?Q?k0LuYnr01NBSWJLFjD6A/w5XIzbFQ5rgpZlDu3bGi2bT/+QEMrnEpTyof9wc?=
 =?us-ascii?Q?U9xkv/B8tT177mwzWYjiY6Ukai3ODSqyLWtBNRR/34jaRX8TwCLGCAehpXF8?=
 =?us-ascii?Q?OuArAF25NWkBrNLIbsxpZkDXlTcT5nw0UINrVj9i8/4aYcbEPIyxTHkujkCj?=
 =?us-ascii?Q?+OSXZiZTlWp9Hy1B5ldRSlcMeGLFh7r5wNfbvSfJf9dyrk73Xn2JEHALd0wV?=
 =?us-ascii?Q?dZIuaOgjVlXdQt4+Y+x7IyQ1YVgQmvs1ImySv+QGbV/o2LruHFFWdWsARd4D?=
 =?us-ascii?Q?G5+5+iK1NYw0UTf9dlqxRdUFJH2rs2TyFrZ9DMzrzoKTkGDCkdQKr6E03Moi?=
 =?us-ascii?Q?8hpqL8fdShTc3B8itTCeKO5F7vCyAWGzXtxrQk2wHFcFCzjxz2FdBu8s8dp1?=
 =?us-ascii?Q?XBGCAZXSJyIr2EL408afE7Ah8d/5N0UAcJiQR+YA8itnf20IBK816G9N9DIC?=
 =?us-ascii?Q?KQlwShN/GF4+JcHRgNRLXA1/ynbMl62ROoiDyvUR89cw2qWwYjPm3WULAblr?=
 =?us-ascii?Q?oIwRxRdN4OxVnpN6IZ9jnzN42c6QXR7Z8FYXNPeeE52A2WcS8FO5oMiMXblg?=
 =?us-ascii?Q?zGROPEidxAT1P3tTc06Av4u+hH3qhCpiH15lNseSKCOYhIpNzsd29E9CpWQ+?=
 =?us-ascii?Q?xgPa6jBYsu9CIyrpgqosNMYtqr9R/Vwe8l4pDTUV39rlqDXFDakh1ue21PAy?=
 =?us-ascii?Q?9w7H04yCzzERGVV9t1oF/Ss+u8zYWbUsg/yId7L0GApT7ARVesfigsfCYLXX?=
 =?us-ascii?Q?NuoaGanOHY2rdjcXc3KuWJ0DIBbteGJUsiQ+1QaEPaDAKTbMRYdoSB33ztl7?=
 =?us-ascii?Q?YcdJOU5X9pfGE4i3T7xREWiM59iAQtCECiM4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hz2hziOXUhzNt9HykydIVqQE1L+yEPfXHzFhuEPhB5BqG0s4rr7FWnrfHhXc?=
 =?us-ascii?Q?oGlYe2KtwCq/Juog43EH8Y6vIHJ3Ppv3Hn3HC9FNpoeno2zaRG7XQzjVknxc?=
 =?us-ascii?Q?dwec0Ng2BL6cEFKofmfF4rrVZnL79lMMI2YtOuRVx7670X43IM5qQA0ykwkP?=
 =?us-ascii?Q?7U2UU+6LgjnegVz9VtRilbHAFF43ito4k/GJgN3y+95f5qgCorRqgDncFOmO?=
 =?us-ascii?Q?r9TYDBNIuSSYQC7YikFZ060ukYMWG6M9m+S695y2wbh8rzNbcekTopvBUOBm?=
 =?us-ascii?Q?mvFt6rGCd9C8RLo8sbShK32sEnaDxaunyZpthwjIbkld3rx5FwZi0PB5C/r7?=
 =?us-ascii?Q?XV71WMxMWMkAXEOspboB6d2rZbWdglKADzbW1VUUw5B7T/f7shNhmSwFFIV7?=
 =?us-ascii?Q?1rI+hyeAww3Bpm/trlDzuMtObJVupaxK/ZtATmzJ883oNu1Nbd91eBJ5cWNU?=
 =?us-ascii?Q?nCsznE+Ui9lWtVmjRUZ8aXtBGGGKmA+QLawf6rHyXcJNSbp83ka4VYniM5b5?=
 =?us-ascii?Q?cU9iJ8t0+J4Ify2WYairvfELYZ+vHysSpWhM11xiECiQXn4IWh2oXFq3Lt9w?=
 =?us-ascii?Q?U+G7QlhfVoJHfaYByWA7iFsPEvYwEkYQPzlhWUCoUXl7+0RsjZfEGT1fPP4F?=
 =?us-ascii?Q?ZQcmlOb2lEM1f6oO1kz6H+emKlzDb9uLNSPO4RnqyZlhWMsqPTNnHf/JZt/U?=
 =?us-ascii?Q?wzrLWFnLQrUWi4xBCR5e94u8TuSKg9kxV3p9nEb4s77KEqGTzZlJA+mAU9Rf?=
 =?us-ascii?Q?idgLdya0QutFwWq47asRlv6a2Gaoi8tG5PLBiRTG7Rig3ai51FMWk6Rl/l1d?=
 =?us-ascii?Q?VyTOm4L1HS6Ysya+7opxujaeLy24uNrjpj9Q8KgSPrWzQmZI7WWTVdeJw4su?=
 =?us-ascii?Q?EV6yqznsDDEHSAj2vrsi1Xz+Lw3aBKwpSgIvUTOy2Q0fYa5uKUoSke3U3QIc?=
 =?us-ascii?Q?JcXdDIrSkw/cL3NQj8tk6H2YtB9wzi+cv0vnsoC2KjtUOsxObNjXoNPxUBSc?=
 =?us-ascii?Q?7mYA8raSc9/qSJ+9O8sG2PdzNdODyR1zenHmjM6bjobSkeKV8K3HsRuxhFGk?=
 =?us-ascii?Q?VOvccD09l2TdYZSzXfPd6ModiqtZ8X4PVQ4Sy5Ts5GwCm9i3+s++YOkdAmC6?=
 =?us-ascii?Q?t2Z3f4Qj60eD56UN9g5kPxj5eghrtKOcsoH+nIfQHsskPlK2DrbblyuX42N0?=
 =?us-ascii?Q?wRIB8RNgDqDq7339gw24jp6TIe/OjorXb5ahaRlIv7en1qf8caAZ+Nx5K3QQ?=
 =?us-ascii?Q?8vkNY1G9R7IH6+g4cKtv09g9zOlY1Hhc87luaELEsjAEA/C7sxaUkLxAIt+F?=
 =?us-ascii?Q?quQGpT0ITyiMNWuMNbRmq9JscFrvlFZ0jeE68b2hNduYz/gfYo0AoOtRZfIf?=
 =?us-ascii?Q?BPaQrStclmacWjD4pJacitECkxyE87ynSr73FvQW6t5y8UPYixCKRy8hKQcR?=
 =?us-ascii?Q?+K3WD/+ajGoAnf7F7z6W57BnH5UC7SiQZPToT0KNdpIKWbRrMjBdaIjOLVWw?=
 =?us-ascii?Q?nClH/8gif8ZkjKWwJBhXs4jZ2BBTOMdATfUzes99tkTAwyje1dNwNR15EAs9?=
 =?us-ascii?Q?ijoPUbY+EdRBTa6x6/weVJJtIcVN2lp8J6fcRV4p2jTwcscpG1OiuwGA3zCA?=
 =?us-ascii?Q?SGcDTWusaTG3OEzTowxON56rAg1xZfl88fdIFkfz3DrzJPRoGjYaO9U0TEZL?=
 =?us-ascii?Q?vccRRPHKO+TjlYVz3qqgbIlvvKJKSnsJCLOnnaXtQ6MvR4762mz3I986h3hS?=
 =?us-ascii?Q?tWMJz9EdNg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a12b4deb-e4e1-4e40-0663-08de4e345878
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 21:33:06.1914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QJuyCxRwKO5o7ihzbTOh3kYDiLdgbf8paJQ5mw9XKY7jHvJOUEss3McJXc2aP6aXlvzKsP3ZyX9zGCC0BxYcKvQfAGt1tJuxZUvpDhmrKVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8432
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767822023; x=1799358023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8M3MMAPWdhfGQkE5k1mTfsYWc8naAtN12uK5Rvas4U0=;
 b=gHoxaoiOh+lfZ/QW6ScVmbHHiluyGWv3Nl8pIeoU70b5OmEwvojRsBT9
 3k9nGUH/eu6eYSmrv1CJVq759UsyhdCcO+0aPio5QSACinlmC7ogqoffI
 gAyC6hjfgcbwjQAEBFH1nfkxSz7hoUKf/Ci+akUQ3Xw4/304LFRlNDUyl
 awdndUBWnCyas6Hwq3gmTrfDsG30Y4Wqz+GspJObzXKU+bg4n4tUmNBv9
 IHDpJMnpgqxUqxJf22NA1czUsGhiES6rBY/N/MHn6lDlhvvEmqtkVlT4c
 b4xixAC5wizx+50ATmmm0wHc1TuKPQTlBYXyrVDtyblnVv/Hu2SBsuMGp
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gHoxaoiO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
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
> From: Vitaly Grinberg <vgrinber@redhat.com>
> Sent: Tuesday, December 16, 2025 3:42 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-doc@vger.kernel.org; linux-
> kernel@vger.kernel.org; netdev@vger.kernel.org;
> pmenzel@molgen.mpg.de; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
> unmanaged DPLL on E830 NIC
>=20
> Will a notification be provided when the lock is re-acquired?
>=20

Hi Vitaly, thanks for your comments.
We discussed it offline already, but I think I need more clarifications.

Regarding above question ... yes, 'lock' recovery shall be reported in the =
same way.
Maybe the name of health status is a little bit misleading (ICE_AQC_HEALTH_=
STATUS_INFO_LOSS_OF_LOCK),
However health_info struct contains the current lock status (either 'locked=
' or 'unlocked').

> Another concern is the absence of periodical pin notifications. With the =
E810,
> users received the active pin notifications every 1 second. However, the
> unmanaged DPLL appears to lack this functionality. User implementations
> currently rely on these periodical notifications to derive the overall cl=
ock
> state, metrics and events from the phase offset. It seems that unmanaged
> DPLL users will be forced to support two distinct types of DPLLs: one tha=
t
> sends periodical pin notifications and one that does not. Crucially, this
> difference does not appear to be reflected in the device capabilities,
> meaning users cannot know in advance whether to expect these
> notifications.

After reading it one more time, I'm not sure if I get it right in the first=
 place.
With this patch implementation, there is dpll change notification applied.
By dpll notification I mean calling dpll_device_change_ntf function.
Isn't it what you're looking for?
Notification is triggered only in case when lock status has changed.
It's unmanaged DPLL so the implementation is a little bit simplified, based=
 on FW notification.
There is no need for polling thread like it's done for E810.
But even in case of E810, where polling is applied (2 samples per second), =
notification is triggered only in case of
dpll/pin status change, not every 1 second.
So please clarify, so either I don't understand the question (please note, =
I'm only covering the main author)
or notification mechanism, at least about dpll lock state, is already imple=
mented.

