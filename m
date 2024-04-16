Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8E08A6829
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 12:20:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F825608B3;
	Tue, 16 Apr 2024 10:20:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LTA2tcQ8JJ8Z; Tue, 16 Apr 2024 10:20:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B44F608D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713262810;
	bh=0fx0jEHQxvz9OxIotTBy9KW3UW2bzyJNhQ1VAc5D/7c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vPMal7NnmXyPM17iK0hiKCtny8Hl2lcWqoZ5YaMDtKIhGWQnrFXnzxCJF2wAWs32S
	 qKOekps3HC2Thpx8tH+LooHHl7+Z57QIyLS2hi4fUh4erggiERwsL4FW0J+3DwSPWp
	 YATmdWjjsBwJScvn7cFdo5cJkMtOH6pjDpf88/cIRdqeb8xfzVp8cUrdxdU8Iegd23
	 ZQAYKHGluc18ahPO6DW41PQ1oAxKsgQIKc+NLZXvUJXSCoA+l8JZj5ej5GUXRMfk2e
	 N9SL+DgOF4LGidxy/qi4CE9Vttp/sXvUcyyyTu6hMgF+pIKC9/y1B3+hd3+CphZzcY
	 c43sZ8fjHOQeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B44F608D2;
	Tue, 16 Apr 2024 10:20:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C00B31BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 10:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABBEF60896
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 10:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vo0K4IJT544 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 10:20:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F08C60768
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F08C60768
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F08C60768
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 10:20:07 +0000 (UTC)
X-CSE-ConnectionGUID: qXO29JRFSyKlKRH/L/qlvQ==
X-CSE-MsgGUID: AcnLowqyTOqI0GvSuqkY2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8817347"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; 
   d="scan'208";a="8817347"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 03:19:54 -0700
X-CSE-ConnectionGUID: dPvGC5PiTHSOcM78l9SJlA==
X-CSE-MsgGUID: jMnbD4wFT9K5Sax/QV9vuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22284905"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 03:19:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 03:19:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 03:19:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 03:19:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 03:19:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jYXl0kyW+i+KpIcEj3yzcAtvTvb0b6ES0MBv63cj1900mcn4wZ5wC0MbZteNNikEQ7us49voGlMuygyCofNZ2FpBYwk0lS3OORf4OZNRBzDj4P5N+xDlEt6/aNgL1Ow3akJQYUjjm0amc88H3ykgAAZxTe/VPB7tef1dKr6mvxsq5gzBMiuZXuY9n+qPzb8P/0ap7re+KEQ4XHFwpo98hPOR2MKEDPj5Szs1zR6sRRHRFKnpw1AKoJmu+ETgsniARVpLsNnOoYPd22BuqFfG3BwjDgjl17THZY4h2r3mjDZCmJAPqn3rKO+ru4R0d8QjaMdF0wJh3Bk4+eGxGg7RYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0fx0jEHQxvz9OxIotTBy9KW3UW2bzyJNhQ1VAc5D/7c=;
 b=ZA+1zLIm1Ta+uj92c+Pyn4OAaJrFFso+rnEJ49YyHFFrs390pqn9wHKsFYzOoDixtMPuYNUYBQoPYRHfXTakiTdXktBOOqpB3xG1W/R4+1+DEh580kw/oWLYMOsF6gPWopybuom1UX6BRuS3Lyb2hISBjIMlfT40iKCLd0WuxLEXNvo7RhTskSttYIPb828/1aLjMA0JvXUDnsSSFZmbN9OIR0602Fbc65nzmGHIR+jRXRMusHlQ14A4C67CNbUgPfpf8WCAoridGqtOsR/qNe3PAUO7hp6ZK+Bocpf3GEXVNme55ZyU+Gl65P7MnO9LzBeSHLSbz6ZyA8Ut02kYdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CY8PR11MB7315.namprd11.prod.outlook.com (2603:10b6:930:9e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.54; Tue, 16 Apr
 2024 10:19:45 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6a93:4191:4aa3:6f7d]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6a93:4191:4aa3:6f7d%4]) with mapi id 15.20.7452.049; Tue, 16 Apr 2024
 10:19:45 +0000
From: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, "jstultz@google.com"
 <jstultz@google.com>, "giometti@enneenne.com" <giometti@enneenne.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v6 09/11] pps: generators: Add PPS Generator TIO Driver
Thread-Index: AQHaiz0vASRBRbSJ8kCIgRN774y8wLFiFmmAgAihucA=
Date: Tue, 16 Apr 2024 10:19:44 +0000
Message-ID: <CY8PR11MB7364070B11D5D9E4711613F0C4082@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
 <20240410114828.25581-10-lakshmi.sowjanya.d@intel.com> <874jc83l9g.ffs@tglx>
In-Reply-To: <874jc83l9g.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CY8PR11MB7315:EE_
x-ms-office365-filtering-correlation-id: c9efa102-a957-4c44-0214-08dc5dfebcc3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fLHT95oM8QHV5yV9wO42yDx+I58pvu5yNatoNf1iDkT5Nm9N1/lznrl4GYjq7LjLpYoWv60dIFf2g7R3gROWPnpHfOsnH73CVYGOOaqW5JBEtF7/9hkCSmh9OiUTGJSeg81cd/jAUDVuFWsUQ4Dl2YvjKt5X6hFaoF6pQqoUThQpO9HQswN5T3UXlR0MrAnXZ9XhCBG8QSGZkfgThqK1bW3MUcW4RXksSEYkMSF1/CKmm/0TL7z6AbjQGN23PsHmNlCT0ntSX4VMVb//2BIsAUALr/OAw9cFZ7ZqB3QDE8wjpzfsSZ00zwQtr+bD8a5yjM0Ud6dmOBx3L6wjISRtnZ6y1frq3dnDP5TFLjg1qVVcJi5uMgiMi7Ql4yK9duF6pGE9iAS+fzr71NQELHTfj9lFj8rcERYTrvtt3/zjguhgsMbaupVUwg/as6EUkEvZnjLBVnapusyciUSInmajVRgDxCOwcEsG55fNJB0ITzLKBQNfVOUL7T15HNi9oK06KA03N1QfJnWEjLT+KebyAlOk0rM8OTDbfCPOnuPKKUiVUULyKvdod1wyYF/66Y9D8qaLu7dr3TawQUI3He6RX2kA8gUqbUU1kupoYy0g66MaeI8md/t6QvsF880wU6jke9kf9AunNfTMm0A7XVexEVO1bsWQwlZiil342Pw0xKTWJzKECxgl2gram2gMD7d/LbFIIxhqoERp4UYBEqWrmfSHvCqePiZas1IlTBnnrxw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(7416005)(1800799015)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qvrCfjbqUOpRQ+famMB8/lG+OgQf8Zk3q/Da7PxtnPSGUIeS+Uh3ag63NQqc?=
 =?us-ascii?Q?Z990GHyRVhSNWRNxeIzGgbna8/1sPcv4IDkusvyvwA06ZJ0PrUnmTH00J59c?=
 =?us-ascii?Q?oEZLZ8zDSo5CJUHSCtnnXrb2nE0mnjesGjkEQBfT3zbDygK1qhHEZQKElWZN?=
 =?us-ascii?Q?JvwmfnOVbDrUe+MsQLkzcHJ8M5HweDNalNApy5jWJeZDBJgbJymXR68icuGZ?=
 =?us-ascii?Q?NM3LkQFI+RZHnHtiBARo9CW791F31IdbTtqKXkg439PKatK9WIkR/hgJ9PUo?=
 =?us-ascii?Q?NqW/jpoHRk57pSGe4mFUA4WVwiJa7l8AS+XbjAXUXpw/Buie2JG0v9DEi6kY?=
 =?us-ascii?Q?udG+5urO0yHtbd3KCcl5nt1a9ZKG/MhCOzvDOzBVkELqQCltfHBvr01qFlSX?=
 =?us-ascii?Q?9dIa5nIfpUVe2uJ9l7gsQvkFMR8pvjz/9j+SnU3NwZuFE0Z/9BbN7QhaHBAW?=
 =?us-ascii?Q?8veZf9hLPCq1QMUOBIRxTNoerwGpDeCKAVXsp5+Nh7IwVLwXz3MwlZQyz+ZY?=
 =?us-ascii?Q?8GoC6D8wTWrEp9peQQiGq44Mf1efwc+hf55N8dOkgBkVv7hxBBY892bBpsOD?=
 =?us-ascii?Q?4n43PcycP9RIKV0d1RpoWyqUHfugb9ke7/ZxjnCg8blAOoRoQExguCt2/ui6?=
 =?us-ascii?Q?mnBYVMUxNAKrSHxUSNQo2MFQJVD8zZjXZHWF6YgbI57kbZ1pPj9rsGGmrWQU?=
 =?us-ascii?Q?1WXloD0sPYKHGumt/BzhrjPNOStY6ryyb9uC3Mdr0RHVCy4VswkH45dF4xQN?=
 =?us-ascii?Q?iXr1G/Ai8VZdgfR3LBZJIMyTt9n0bMEJ0MRmvUBQstCMNFOiWLv52rR8NskL?=
 =?us-ascii?Q?iafbrZoSZA8r7ShiD4FOdNhmsspquf3GUywX52X7+JjFz/SvB/NkNWKamlAJ?=
 =?us-ascii?Q?GaENPRN6shKH7+mbhZ26EPS1nK2pMCht6FwWBJVDcxM7h0++dalEl4/tcM3m?=
 =?us-ascii?Q?uyMWlzDjOlDLaLWVtC/TN5n0UN5jkkca0pWEmgFKk9CGbWaVk1NiKO/FoiwX?=
 =?us-ascii?Q?zD9xGiSZiRZGfYvrM5kcPMVg4O1tmgAWf6LdpA8tvoDozh8Bd9ZEhilTJF0d?=
 =?us-ascii?Q?PasisG5LrCQ+SnATr+D2Bqx7j3mhJgFkkT4ViUDsoFdiilvh9LMdjnRC1Vfh?=
 =?us-ascii?Q?7JafI3W+HPsxg3diJdOx928CbV9j3CgDPFfjkSbGG8URvi1GaeNwFOp1/Mut?=
 =?us-ascii?Q?68OGi1kJILFyUS5fMrR/MmxswZaBN57QMurgTiWqp9GX84c7h8LbAotkMJvv?=
 =?us-ascii?Q?n4fowCXULO4VsPm2YjWm+7RQlhya7WhFbVizB94bZKowN5OK7l1Fi/66OzLH?=
 =?us-ascii?Q?6blvDAIpDHlf98mfwMhjLEMCNCA4j3AWbE/Klveq7irM87VDVxIpLx9uXqVb?=
 =?us-ascii?Q?tLFQDLHj8aAvGHw7eES+7YxcGKND3qU4Ttdjzx5DV9egAjBjz/y12bp17ZHv?=
 =?us-ascii?Q?EF6PJE4UuVomlToeGx0fiXYX3hJXh42BSXEZKA8Tly8OPOyqdSOpdv/hSD+u?=
 =?us-ascii?Q?u9F8trhwSWfsYkwLSAI6jx5SMQ1996Gawnzl65woxvtY+pJZpjfSzMFXdfdo?=
 =?us-ascii?Q?I1rC4VsYQlVSeT5lBKm4fDc+azJwGOsalb7XTAVg+igWjjVDfm3+goLptjBg?=
 =?us-ascii?Q?Qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9efa102-a957-4c44-0214-08dc5dfebcc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2024 10:19:44.9280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J5REHUYtmJMdoF0AcWK0gxgwYsQ4EXPHBjnm40YKiiFSUgJbggcUnB6hosUcVeDxlHrHAmsnAIipAwLsBTFnqKJv8pBTZ5e5iy7Twst0xXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7315
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713262808; x=1744798808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s8i3oCYEsqT6fSIrQ3yYvCtFIbKR0BCnS6rU4+tBXGY=;
 b=V5wn0p0DArkxdPJoxjcfUSH1G1gdJvzO2/s4XQrAMA3PDO8oTUxL9EFC
 7DbYFRlsLbsrMbnXIDjpV0+3xWd56dRK/3/KYfuvQoInztdQLWKZqkVG/
 AJwxxUrp/lO67x6PpRmcui4j4Uc4F2Sl7E6B1E1qfaJIfCPyw/bihUOZt
 sBarvmEYl2qqShSkEzZUbeeDmO7Kj9TVGdydbIhzMe+Q1sM6hCJ3JmYmy
 +SX65pm6LzfTENpea0ayrcVnUf90a1UsDaeKcQ2mjexIfeottNMLnhByF
 ytL1IV7nAPem0Li26Omaraq8CYR8fX3huQXOV1TbB8qzRjc8pHjZXqxrb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V5wn0p0D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 09/11] pps: generators: Add PPS
 Generator TIO Driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "x86@kernel.org" <x86@kernel.org>, "Dong,
 Eddie" <eddie.dong@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Thursday, April 11, 2024 3:59 AM
> To: D, Lakshmi Sowjanya <lakshmi.sowjanya.d@intel.com>;
> jstultz@google.com; giometti@enneenne.com; corbet@lwn.net; linux-
> kernel@vger.kernel.org
> Cc: x86@kernel.org; netdev@vger.kernel.org; linux-doc@vger.kernel.org; in=
tel-
> wired-lan@lists.osuosl.org; andriy.shevchenko@linux.intel.com; Dong, Eddi=
e
> <eddie.dong@intel.com>; Hall, Christopher S <christopher.s.hall@intel.com=
>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; davem@davemloft.net;
> alexandre.torgue@foss.st.com; joabreu@synopsys.com;
> mcoquelin.stm32@gmail.com; perex@perex.cz; linux-sound@vger.kernel.org;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> peter.hilber@opensynergy.com; N, Pandith <pandith.n@intel.com>; Mohan,
> Subramanian <subramanian.mohan@intel.com>; T R, Thejesh Reddy
> <thejesh.reddy.t.r@intel.com>; D, Lakshmi Sowjanya
> <lakshmi.sowjanya.d@intel.com>
> Subject: Re: [PATCH v6 09/11] pps: generators: Add PPS Generator TIO Driv=
er
>=20
> On Wed, Apr 10 2024 at 17:18, lakshmi.sowjanya.d@intel.com wrote:
> > +static bool pps_generate_next_pulse(struct pps_tio *tio, ktime_t
> > +expires) {
> > +	u64 art;
> > +
> > +	if (!ktime_real_to_base_clock(expires, CSID_X86_ART, &art)) {
> > +		pps_tio_disable(tio);
> > +		return false;
> > +	}
> > +
> > +	pps_compv_write(tio, art - ART_HW_DELAY_CYCLES);
> > +	return true;
> > +}
> > +
> > +static enum hrtimer_restart hrtimer_callback(struct hrtimer *timer) {
> > +	struct pps_tio *tio =3D container_of(timer, struct pps_tio, timer);
> > +	ktime_t expires, now;
> > +	u32 event_count;
> > +
> > +	guard(spinlock)(&tio->lock);
> > +
> > +	/* Check if any event is missed. If an event is missed, TIO will be
> disabled*/
> > +	event_count =3D pps_tio_read(tio, TIOEC);
> > +	if (!tio->prev_count && tio->prev_count =3D=3D event_count)
> > +		goto err;
> > +	tio->prev_count =3D event_count;
> > +	expires =3D hrtimer_get_expires(timer);
> > +	now =3D ktime_get_real();
> > +
> > +	if (now - expires < SAFE_TIME_NS) {
> > +		if (!pps_generate_next_pulse(tio, expires + SAFE_TIME_NS))
> > +			goto err;
> > +	}
>=20
> If the hrtimer callback is invoked late so that now - expires is >=3D SAF=
E_TIME_NS
> then this just forwards the timer and tries again.

Yes we will introduce a return HRTIMER_NORESTART if the time is expired.

>=20
> This lacks any form of explanation why this is correct as obviously there=
 will be a
> missing pulse, no?

We had added an event count check to detect the missed pulse(i.e if we had =
programmed an expired time).=20
Timed I/O hardware has an event count register to log the number of pulses =
generated.

>=20
> > +	hrtimer_forward(timer, now, NSEC_PER_SEC / 2);
> > +	return HRTIMER_RESTART;
> > +err:
> > +	dev_err(tio->dev, "Event missed, Disabling Timed I/O");
> > +	pps_tio_disable(tio);
>=20
> Why does this disable it again? The failure path in
> pps_generate_next_pulse() does so already, no?

will remove disabling twice in the next version of patchset.

>=20
> > +	return HRTIMER_NORESTART;
> > +}
> > +
>=20
> Thanks,
>=20
>         tglx
