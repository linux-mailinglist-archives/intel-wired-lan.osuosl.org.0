Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C0FC838F3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:50:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6F9C60B1A;
	Tue, 25 Nov 2025 06:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nz3V6Ln80Z9O; Tue, 25 Nov 2025 06:50:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5438660E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764053418;
	bh=C8+PIB4XNEMgWs0e2K0GCSJsdrfzz7L3A2S1MohPjWI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WJoHoo9i5jGzr72WqhcHCppMucxxRhimN4YbqiTyekeQrq8GLg0BbvvN6wlItaBld
	 glvDPE5U6q+cYNEWR5mT338zIDpLkMT5uC0MDpSK+MCwEFmdmHgs7m9kkuG/JsV2nd
	 zCorKtq53Jy60EFJUxyGqN5hPJWnfSO6uZUitQizCsV/QLoMnx16tJ6NqArR0D9qVf
	 yLpXixv+BPNopJiwauUAPbN2UFiVAuSsmkiQlMCQ6B4E0WW+/lvg4aQkgiaFhNOixR
	 xbw4Gnm07kW3wvGfgZTd54Ct5j8MY4Y1N7AGmrJ8I/up/BKnf9utWzpc1/rPsoY8Bv
	 lK9o0aVJHhr3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5438660E62;
	Tue, 25 Nov 2025 06:50:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 63BD1E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5576B60E24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B8dz5sJHA-yL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:50:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 89D7A60B1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89D7A60B1A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89D7A60B1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:50:16 +0000 (UTC)
X-CSE-ConnectionGUID: PfROVzI4QVukVJ5TjRtgYQ==
X-CSE-MsgGUID: sWMnhp6fS3a0/TwciCUtUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="66141241"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="66141241"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:50:16 -0800
X-CSE-ConnectionGUID: OE+tmeQQTKuI+MGJjALm7A==
X-CSE-MsgGUID: a2/51EB9SR+2mbvQS+OkJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="197671827"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:50:15 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:50:14 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:50:14 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.23) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:50:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aJMDD0VIqRbsDs1o58p5nhRMcmc4M4C4vG61Dw8wfGug34DyeudoERYSLEKaP/6q4GDkmWt0Q9KPtnll1y9nEqRDcvaBA1y5odflRFIK3+Y24nXnZqKqmP46I+C6jKcqMlNY3wcNQTesFoHBCeGyyaTQ8cTkE1IjW3MCTW24Gyxz7xPMHo9dz713/pwV4zqrOqKWLEnRzuX884VtuleBhFrQnxMzX2A6pzA7m/jly+gsW+6as9U+wcizqjA32kx8H8jL5ncq+ypidqr4pK1EsKivBhZa+3VofbkQCckZMCpVraZSI+/SZgZ6KmFRD1a7rCcwPnI4xyqo9SJG888cJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C8+PIB4XNEMgWs0e2K0GCSJsdrfzz7L3A2S1MohPjWI=;
 b=exiphNLrO8XIrnpOku/c352in2/JupJhEDttW3PGfQ7g9JjbyhQCqc03CkC0cSySk0LJMrqXeWjqPI1gYIoFXNET5w7EjBVGLJ4DvuZvWBmgjVFm+LI+YnTwdINzuAtRcfJ4lpLB3e9LOWQ8G7wLl7KGF3mVkd2/yuT0P6NYyWLIx/le0pWsPx+XM3QTTo6nIUTRqu9gJk5mpzzIYKlXVJMKt0hDTHmwApfsA0BTVLmhTMR1Heyuvq/jQWVn8SKBGHhugNI2GHmEm3oTMpOriLJKzGeG6sk0H7x1QzyYCOmrfTnwzMHr+k4aowtT3ayuyrB7fTpbfv0ivfcbkB+bXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 06:50:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:50:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/8] iavf: extract GRXRINGS
 from .get_rxnfc
Thread-Index: AQHcXW7pSygJfKI2XUaF3fgk57WD07UC9JWA
Date: Tue, 25 Nov 2025 06:50:12 +0000
Message-ID: <IA3PR11MB89862138F3EBB78FCFB3B8AFE5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-2-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-2-89be18d2a744@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8073:EE_
x-ms-office365-filtering-correlation-id: d9f9120e-bb4d-4c27-a67f-08de2beee1d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?K2Y2VGNySnViN1UrSjAxUUtHTG85OVF4Slg0ZzdnQkxYL2dZSVYxejlyUU52?=
 =?utf-8?B?YkdJZDVpUDVxOHZUS2ErV3Z2TlNrREl1YS9Td1VPNHZuMmIzdkxqMlJqNUlT?=
 =?utf-8?B?UmV1alcyK3Npd0JJWWdzQWFkTEp0UTVRa0h3Z05LU2xPK1VTTnBiL0tJNDUx?=
 =?utf-8?B?QS9BKzZlVGZyeUZiVnhLK1VkejdxSG9uRWxvVGFGeTFuQitCdTVBSlFBODNa?=
 =?utf-8?B?ZlYrNytvQThQQnowY1BQaDFXMFV2L1lhN0g2MWY1aG81U2srV1RyVk9yYTdn?=
 =?utf-8?B?NUwwekdPcmtWZzdNZ3pPNjF4ZUVnK1R3R3d6RnpxcVcyZVRFd0NjRHU4d1pD?=
 =?utf-8?B?ekltbGV0dk1MeEZNY1ovZ2tOUWpMSnFlKzJXQkh6SkZ5UlRFVXlYb1Z5akk1?=
 =?utf-8?B?Nlo1SEdGdEpMSFBsM0lFcXdkQWFBdTc3Q0E2UkkxNGZpR0ZvQUg1T1BValFQ?=
 =?utf-8?B?VldwNVpzQW00bFlyZzZpV09Na3gxVGYzT0tMakpSZzhSQVEwYmdzdFBLVWQr?=
 =?utf-8?B?YTBNZXVDb3h2ZHo4d2dJRjBsQTc2blJZM2VFdm1TVG15dCthdXBMemZWSitk?=
 =?utf-8?B?Z1l3TEJ4WEsxZkxpcVRmQ3RPOXFRNEZNcExQRnBxWmkxdGpxbVpYcmsray94?=
 =?utf-8?B?SGRGMUNSakROVWxHbTd3eGZxK0d0VHdTdllkSWdGWkVhMVpRVm9zQlFlVUpn?=
 =?utf-8?B?ZDBCUTUzakoxdVJoSXMvakkwNWdOUmNDcHJBZ1p5V1V6blN6a2UvKzZBdjUr?=
 =?utf-8?B?bWFmZ0ZwVEM3bEFvZzJTOGJrYlJhQUF6cFljdFMvUkdjN0o1L3NlTHg4bkpB?=
 =?utf-8?B?ZWt0T0VVUkpkdzN0NXF2UVpodXY2Q0Jpd3hvUHU0ajdhQm12WDMvZWR3Zkg4?=
 =?utf-8?B?bXVtSXFsbmJFQ29RcWJ1S0oyMEQ3Zy9VQ29DazJKa0FGMFQ2MzIvdVMyQ2J4?=
 =?utf-8?B?QW1Jd2NPTEpvb0gxU1RzMDg4Zit3TFNQUHZjMm5oZnFSMCtsend3U0dwOWRz?=
 =?utf-8?B?UkwwL3VWSVYzRzdhMlZwVTl6bHJ1MitBZmNXcFVqZ3F0ellONG1Mc3BKTEY2?=
 =?utf-8?B?V3hMRUp6ZlRvT3dSS1lnN01SSE9UeTZkai9ERDFYYllvQ28vSUgrc3RNK2Yz?=
 =?utf-8?B?S0FjdUlQdk84NVJ5ZEpuYnp0Ymp6cks0L0w0NUtxWTNwY2JKL2hXNXhoQ2ZF?=
 =?utf-8?B?MEZyY1MwSnFnc3VyTytCMG5vci9aVW8wUmh0K3VBendCK3FWUkpFdUtaZUZQ?=
 =?utf-8?B?ZjYrUmNtTmJPNnNSS1p0MG1KSDQ1ZnZFTElCNDZQVWhHQmYvQ21idlJwWkov?=
 =?utf-8?B?bUt6UkZ2WDdCcDZ1a2t4aTBuSFNpRlBBL1NPSngvbHBZUEpkeUROYjhoNmVx?=
 =?utf-8?B?WHpPdHZBb2N5TTg4ZElPVHQxT2lrVFUweFFuSElvVWNIR21NNVg3cjV3Wkdr?=
 =?utf-8?B?dTJ3M0FxUVhybkpFenQ4Q1I4Mmg3a3dMQ2FNUG53ejhySnJ3QnFidzN1SWxi?=
 =?utf-8?B?TXVKZEdZK2pDODRkY0VsSXRIQm1RZTVLT0JZcVE1eVpoOHg2amVpVXh3akRh?=
 =?utf-8?B?TmRzZXBZNEl2NkJlTUlHcytjUVZsZEJ6WFloK2p3SUZnUFdTbWpBQkg3Nkgr?=
 =?utf-8?B?b0JHdE4vVUlyc2txQWxsU252bVNseWNlWFM0bGNoZEpNWmZwalRFSE1ZRmx6?=
 =?utf-8?B?dGJwaXExdDc4Y2hSWWhZL0wxMmc3NWhvcm8rdjdRMElHMHF4WElNdGpPdE5K?=
 =?utf-8?B?MTZRSVR4bng0YUZOdUQrQjdqV1d0UDAwKzQ5ejJCMUh6bStRSDBWWW9LWURn?=
 =?utf-8?B?c21sUFlJZGhzNmprTjRXLzUzV3lNY3ZnWHIyVXZGSjlTNVJrdG5taGx5ZUZ5?=
 =?utf-8?B?WG5GMi96cjdlbFlvWjE5M2xFZ0xaTmxub1gybm5BbVRNVjlaSFNHc3NZaUFT?=
 =?utf-8?B?R3ljR3IrbDFKaDhPZnI4bHFITll3bXdmOVkvakhjYU8xdzhRS0tURC9tWGk4?=
 =?utf-8?B?QS94Q21kdzRmWnc3VkQzcGkxWHprekNMNEwwQlFIT2NpVDM3Y1B2ZC8yYmQ0?=
 =?utf-8?B?eDBncngva0pJNkFsNTZkU0RMYzg2dWtuZEFZZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmx6bXMzS01GOHJyOXVISzUzQno2aVR5UGdoT1hyVUdNVVA2dmxtS0VEL0ZU?=
 =?utf-8?B?Ry84YU9BM3kxOHM1SHpPMzd5MVRxWUJFc3BjMGtVMVJzb29IaTd1RzR0b3o5?=
 =?utf-8?B?VEZxZjZ3R1EzaGpQSFM2Zmd3OS9lYmtidmZUblg5TklKOFpFVWdnZGdzWjVE?=
 =?utf-8?B?elVxcCtSZGNidVRUZDgyMldtMEptRHZhdlU3TGt5dGxUQzU2UExZTFdnL2Y3?=
 =?utf-8?B?THVUYllHTFR6K3dldFJPdmEvMVpwYnZFemZPUFpnYzNGeEJRVUtZaStSZmtF?=
 =?utf-8?B?ZU5VTnJzTit6SGhCbHd2ZytZL0o3ckE0U29ybDhSUGVTRENMSWF2WjZ6aUpU?=
 =?utf-8?B?MzdKTVFEUlRrSTRoVU1BRlQzSUt0cWlFV3oxcXJXdWVEMFY4U2NVQnhmdjlR?=
 =?utf-8?B?TlM3UG1XSllDalhlZmVUUDk5cWZEdCttVXFaMFMvQm43c21zZ2NCM3BzVjJX?=
 =?utf-8?B?UHRyRXdVcmlubFh3ZTZKZ2xlcEFvWmsyTzJzZW55WVB0dWhnK2gvNE04UVVG?=
 =?utf-8?B?WTlLZXJwdzFDQUNFUlZyd040QnlRQmRRdTlVYWowME0wSkdsd2ZHSGphQjFX?=
 =?utf-8?B?bGR3bmNTU0Y4dlV0dGtyejFGN2o0cDhid1Bwamk5c1paOWdmME5ZbnNuYjEv?=
 =?utf-8?B?OE05Y1ZsaEZDSUMxTnVoYmhZeWtBb3dSaE9XV3BjdVUzYXNDTkVYYlZ5dDBP?=
 =?utf-8?B?U3NCOGhVREU3WnNUcCt1Q1lZQzFZWEJSbVIzRnNzM1F0VVBwL211bTcyQTdD?=
 =?utf-8?B?VTZTVDZCUHA4MUNVK09mTkl2dDV6SFNqWEJIQzFYOEwxSitqelpRam1LVWox?=
 =?utf-8?B?dmJXaXpDbDFPSWtuMzJTVFJSTm9ZUGp6NC9iNUVINFBOOUhLc1duanJnMUdU?=
 =?utf-8?B?dThTblZ3SFltZ1czSjhxd1BwMVFWb0Jnb3ZEQWxOY2hiUXdyNzVFeG1sbG5J?=
 =?utf-8?B?Y202L2tOeW9lY1lweEtwYWRzbzVLaXAzL1prcTRUUWs2bWNQbmkzUkJwNzNn?=
 =?utf-8?B?Rm9PejFka0ZZeDJ1Q1M2bEFJRzg0blQyTXRDajFDQWROQ3JSOERRRU1DeEZk?=
 =?utf-8?B?MjhLd0I3akVaK3FIdHJiSDd0cG54OTdjaDJRSVRHYmo4QkdHdjhxTFNMWUhH?=
 =?utf-8?B?RTh3Yi9FZTZwZFk4czROc3FURWNaODZDc0NGQWxtcytGdXVZMjVKVDhtSXUr?=
 =?utf-8?B?QWZodVpRRDQyZnpRejFCSmw1VWQzSjdrWDdGdmlIV2t6RHF2MHhuWXFxc0JB?=
 =?utf-8?B?cU8yMk44cEhDaVk0ZmlCRWR5SEtXMDZydUUvRm1IbHVxT1hCSkpsN0tMMno0?=
 =?utf-8?B?VC9oamdUem5ycEUyRkF6ZU02NXY1cnJnUjRtWnpsL3ZITEpmQlhVVWNMeU5k?=
 =?utf-8?B?Mjhra2NwWkUrOGEveHRqZGlPOXIrVVJ1ejNkemdEYlVCamI2cVV3YTFtd2JF?=
 =?utf-8?B?RWpNeExBV3RiZmphZ09OeGM4OERUVllOVE1ZZXRCVjh3UWdWay9KZnlGOExz?=
 =?utf-8?B?d3VIenlBSFZXTUxRUFlpblRJVnQ1ODhuSERoMU9lUitka0w1VDlYMnNFRzI1?=
 =?utf-8?B?SC9va043NExyTi9pVlBhcSs4Ri9hTVN6TjdWNXJKb0F3U1QyWDl6ZTdld3hF?=
 =?utf-8?B?L3hsWEpxNmxEMFl6dGFmTXlZcXFNN0JoblRNaFVBWDcvUUpSaXRHQTZmSXlU?=
 =?utf-8?B?bVROSnVUNEpjS3JURXhudndUM3pCRG5XVWI4dTlyRXJ4WHRQYXlqU2ZlNndY?=
 =?utf-8?B?U2VYck0wTndDRmlVZllpZjlzSmRycVZlUzFRdWUrRVNGK3VMME8wZzIwVFA3?=
 =?utf-8?B?WkR5TlZPRTRZdlpIMm10VDFoandWazA3M2x4S3FONk9FZ0E5dGxPNDhCKzRr?=
 =?utf-8?B?Z2NqMXRDTnpQY25OdjY1Vnl5RGRRWXV3OFRwTGNFYi9ZMGVnd2pEeHFNeXds?=
 =?utf-8?B?aGczNXNQbVlsN3l2NE9PRE9DRzAyeGhFYTF3SW1EVEs5ei9wWE5VMXFLQ1Ri?=
 =?utf-8?B?L2tIVVBIMllERE9STStFbDcvSEJqcDBBUy9vL3JmVWFCVTRXd0VDK00ydEY3?=
 =?utf-8?B?SW1PK2xJdHZUZXY0ZHZDUHVndDdWK3hsbHkzbFN1d3FCc0pKaUIxWEdpQ3hH?=
 =?utf-8?B?ekhRTW1NYlpzcnc3Mjh4c1ZISlEraVdXemxGNTdQNTZ2cFpoNTJYUjhINDFo?=
 =?utf-8?B?Q1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f9120e-bb4d-4c27-a67f-08de2beee1d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:50:12.3644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: acIuF7OpqOSOno7EGbgnfHaE/bjT1DxTAqAJqO8XRYPE/Dd1PZ+nLB3Z08Rr15IhKysm5TwqzsjwgxztvxaVk30Y0ot/zXcq/rN55YNkE4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764053416; x=1795589416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C8+PIB4XNEMgWs0e2K0GCSJsdrfzz7L3A2S1MohPjWI=;
 b=YLIYf0L+4GNhErEEKdROhaHIOUcEj/JsgPdU4jNtcaQncU2hsXKcLcPa
 Q2nePG4nWUZti7TbZTZY80Sri6x5NsM/REpOnVjd0rYZJEwCc/AoPp0ty
 f22PTRsYwXN2UgPd9v8gKn+S5qYimZYpVnlTTnZz7Z8E0dyrpP8KKGWQn
 TMWvn1vTT0LIK2w0Tgxqtm2TUNduOv6UiDp5WxZ6NwaDUOA9Q2boq9t3k
 2iFvAyUvT++wc3uFujW5DU9kBRpgrRqeDU1nITxqMBK5nhbNqi+Jv7Xvl
 Tn5tR74c3386jMZnXpXLWQ0YwpTMtt1ZUQbm0Iomd5DANh5bV5b+AiGRS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YLIYf0L+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/8] iavf: extract GRXRINGS
 from .get_rxnfc
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgNzoxOSBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5n
dXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVu
biA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQNCj4gUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWINCj4g
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNv
bT4NCj4gQ2M6IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1pY2hhbC5rdWJp
YWtAaW50ZWwuY29tOw0KPiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dza2lA
aW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBrZXJuZWwt
dGVhbUBtZXRhLmNvbTsgQnJlbm8gTGVpdGFvIDxsZWl0YW9AZGViaWFuLm9yZz4NCj4gU3ViamVj
dDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IDIvOF0gaWF2ZjogZXh0cmFjdCBH
UlhSSU5HUyBmcm9tDQo+IC5nZXRfcnhuZmMNCj4gDQo+IENvbW1pdCA4NGVhZjQzNTljMzYgKCJu
ZXQ6IGV0aHRvb2w6IGFkZCBnZXRfcnhfcmluZ19jb3VudCBjYWxsYmFjayB0bw0KPiBvcHRpbWl6
ZSBSWCByaW5nIHF1ZXJpZXMiKSBhZGRlZCBzcGVjaWZpYyBzdXBwb3J0IGZvciBHUlhSSU5HUyBj
YWxsYmFjaywNCj4gc2ltcGxpZnlpbmcgLmdldF9yeG5mYy4NCj4gDQo+IFJlbW92ZSB0aGUgaGFu
ZGxpbmcgb2YgR1JYUklOR1MgaW4gLmdldF9yeG5mYygpIGJ5IG1vdmluZyBpdCB0byB0aGUgbmV3
DQo+IC5nZXRfcnhfcmluZ19jb3VudCgpLg0KPiANCj4gVGhpcyBzaW1wbGlmaWVzIHRoZSBSWCBy
aW5nIGNvdW50IHJldHJpZXZhbCBhbmQgYWxpZ25zIGlhdmYgd2l0aCB0aGUgbmV3DQo+IGV0aHRv
b2wgQVBJIGZvciBxdWVyeWluZyBSWCByaW5nIHBhcmFtZXRlcnMuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBCcmVubyBMZWl0YW8gPGxlaXRhb0BkZWJpYW4ub3JnPg0KPiAtLS0NCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMgfCAxOCArKysrKysrKysrKysr
Ky0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl9ldGh0b29sLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRo
dG9vbC5jDQo+IGluZGV4IGEzZjhjZWQyMzI2Ni4uMDhmZjkwZTczODAzIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jDQo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMNCj4gQEAgLTE2
MzgsNiArMTYzOCwxOSBAQCBzdGF0aWMgaW50IGlhdmZfc2V0X3J4bmZjKHN0cnVjdCBuZXRfZGV2
aWNlICpuZXRkZXYsDQo+IHN0cnVjdCBldGh0b29sX3J4bmZjICpjbWQpDQo+ICAJcmV0dXJuIHJl
dDsNCj4gIH0NCj4gDQo+ICsvKioNCj4gKyAqIGlhdmZfZ2V0X3J4X3JpbmdfY291bnQgLSBnZXQg
UlggcmluZyBjb3VudA0KPiArICogQG5ldGRldjogbmV0d29yayBpbnRlcmZhY2UgZGV2aWNlIHN0
cnVjdHVyZQ0KPiArICoNCj4gKyAqIFJldHVybnMgdGhlIG51bWJlciBvZiBSWCByaW5ncy4NCj4g
KyAqKi8NCj4gK3N0YXRpYyB1MzIgaWF2Zl9nZXRfcnhfcmluZ19jb3VudChzdHJ1Y3QgbmV0X2Rl
dmljZSAqbmV0ZGV2KSB7DQo+ICsJc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRl
dl9wcml2KG5ldGRldik7DQo+ICsNCj4gKwlyZXR1cm4gYWRhcHRlci0+bnVtX2FjdGl2ZV9xdWV1
ZXM7DQo+ICt9DQo+ICsNCj4gIC8qKg0KPiAgICogaWF2Zl9nZXRfcnhuZmMgLSBjb21tYW5kIHRv
IGdldCBSWCBmbG93IGNsYXNzaWZpY2F0aW9uIHJ1bGVzDQo+ICAgKiBAbmV0ZGV2OiBuZXR3b3Jr
IGludGVyZmFjZSBkZXZpY2Ugc3RydWN0dXJlIEBAIC0xNjUzLDEwICsxNjY2LDYgQEANCj4gc3Rh
dGljIGludCBpYXZmX2dldF9yeG5mYyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCBzdHJ1Y3Qg
ZXRodG9vbF9yeG5mYw0KPiAqY21kLA0KPiAgCWludCByZXQgPSAtRU9QTk9UU1VQUDsNCj4gDQo+
ICAJc3dpdGNoIChjbWQtPmNtZCkgew0KPiAtCWNhc2UgRVRIVE9PTF9HUlhSSU5HUzoNCj4gLQkJ
Y21kLT5kYXRhID0gYWRhcHRlci0+bnVtX2FjdGl2ZV9xdWV1ZXM7DQo+IC0JCXJldCA9IDA7DQo+
IC0JCWJyZWFrOw0KPiAgCWNhc2UgRVRIVE9PTF9HUlhDTFNSTENOVDoNCj4gIAkJaWYgKCEoYWRh
cHRlci0+ZmxhZ3MgJiBJQVZGX0ZMQUdfRkRJUl9FTkFCTEVEKSkNCj4gIAkJCWJyZWFrOw0KPiBA
QCAtMTg2Niw2ICsxODc1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBldGh0b29sX29wcyBpYXZm
X2V0aHRvb2xfb3BzID0gew0KPiAgCS5zZXRfcGVyX3F1ZXVlX2NvYWxlc2NlID0gaWF2Zl9zZXRf
cGVyX3F1ZXVlX2NvYWxlc2NlLA0KPiAgCS5zZXRfcnhuZmMJCT0gaWF2Zl9zZXRfcnhuZmMsDQo+
ICAJLmdldF9yeG5mYwkJPSBpYXZmX2dldF9yeG5mYywNCj4gKwkuZ2V0X3J4X3JpbmdfY291bnQJ
PSBpYXZmX2dldF9yeF9yaW5nX2NvdW50LA0KPiAgCS5nZXRfcnhmaF9pbmRpcl9zaXplCT0gaWF2
Zl9nZXRfcnhmaF9pbmRpcl9zaXplLA0KPiAgCS5nZXRfcnhmaAkJPSBpYXZmX2dldF9yeGZoLA0K
PiAgCS5zZXRfcnhmaAkJPSBpYXZmX3NldF9yeGZoLA0KPiANCj4gLS0NCj4gMi40Ny4zDQoNClNp
Z25lZC1vZmYtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPg0K
