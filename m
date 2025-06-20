Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09549AE1609
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 10:31:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ABD240DA2;
	Fri, 20 Jun 2025 08:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BsTItuCctJst; Fri, 20 Jun 2025 08:31:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F0E340C0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750408269;
	bh=sj/7/6pEtdml5z25g8LcOy234/vMbj3A280vuH4WRe0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K8G35r1yFQRvpE2EogM9yNh3ycWvpRrWOvrmTWPOMByWUWfLfyAZDdFi9aZzpjcpE
	 3dIH9cXuO4TZlW1Hj5112Gt0vdsBseOjkSgYttQWZkhAuH/PXVUiDits2jmopkVni8
	 EnSJwBxNcm3WUsBVgIyYb0GO0qzdS0INcgYkbnh0oSoco6hdq9ix3jsmgIzLlp+q2Z
	 uJd+qRVmjeYdYfTh/Y1dXkk1aIyq/kUtgSjazIj1DZvDmJ0EjKdaIckGZIWM7vZaAj
	 PunmF4MaFtvMdSFHpqzZ4nib5IJqagIP5NtSPYIdElNpZFHj5Th5nTrUXPKEs/I5A6
	 d7jemNaooIbxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F0E340C0F;
	Fri, 20 Jun 2025 08:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1985D16B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 08:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF08C40C0E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 08:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dwJg7gYq6QzK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 08:31:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A42740C0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A42740C0F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A42740C0F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 08:31:06 +0000 (UTC)
X-CSE-ConnectionGUID: RKlFGe7TSJ6v4U+dHWtybw==
X-CSE-MsgGUID: 3snkxLTEQd6BVANZSdC2SA==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52365696"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="52365696"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 01:31:05 -0700
X-CSE-ConnectionGUID: pcvmEt0bQMW8Miy9Swyo5A==
X-CSE-MsgGUID: VwaMYyINSri0WDD0v6DgFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="150346232"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 01:31:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 01:31:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 20 Jun 2025 01:31:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 20 Jun 2025 01:31:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YVWG8kdZU/CDM6qU9R00ed+gZtyLZxJT/AW4ovNLVlkW1rGBeFHgZQdhQhFWKOY17BeVP41udIh8Fbb8hT0S1zOvLYBx/QWrTXXDk1mNd9iHNL2Nuy/MrYror2YLty29l72g/J+rTAP6AGwCMz/CX8BFAqyJDMNknfexAMqkAecNWbbOQNucgCZYhK5cCMMtd7/0IN/lgswm+asY3bOLkCPeP2SaIq+zawCQs+Ta5oJHPvj9yCvRN0AozdC2Xr0NCuldtesf1a4gEZKL6pFBLP/fIY1N7nXw/UghbvUFAvIx4QUoRqKiqab6h/89LIhz+zh5N20XTwXTXI7Jo5QOlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sj/7/6pEtdml5z25g8LcOy234/vMbj3A280vuH4WRe0=;
 b=pcTkJLXyv/JrEjG9OWYSD3tEAKjdP5Jz5tTC5W3zx7v2mPPIfwfMDqnrCiDYr14RASgKYWfusEPpUJpbF7qEjkww/FqnTmJYf8gtWFptmuXGB+qcC9nK+1/+bCfT7uwav1qoFNkLxR8Iua+cRXan3IACMq5xXH5fg9FcfeIWSJUypHzo8MBcKK1hYIHAOq29gXMJuUQKk9Gh15mkbJM2L/XCTKsCvZzpIGV/WDwoVyHDjomlfxdNzomru/bqGArUHUZ4mcu/eCAc2A9qGPePHivyubCsuoeSd4YwcM2LaQ7dZ/9ZUCOcO4Vu5z84L/G8Ul1cWOL+dIm4DQSB4jxNSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 by PH3PPF10FBEE80C.namprd11.prod.outlook.com (2603:10b6:518:1::d09)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Fri, 20 Jun
 2025 08:30:48 +0000
Received: from IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7]) by IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7%5]) with mapi id 15.20.8857.016; Fri, 20 Jun 2025
 08:30:48 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: Brett Creeley <bcreeley@amd.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, Jonathan Corbet
 <corbet@lwn.net>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, "Tian, Kevin" <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>, "Blanco Alcaine, Hector"
 <hector.blanco.alcaine@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Kurt Kanzenbach <kurt@linutronix.de>, "Marcin
 Szycik" <marcin.szycik@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH iwl-next,v2 1/1] igc: Add wildcard rule support to
 ethtool NFC using Default Queue
Thread-Index: AQHb4TAVcBc1dnZR302Va4jTpPeIkrQKoQyAgAEVrgA=
Date: Fri, 20 Jun 2025 08:30:47 +0000
Message-ID: <IA3PR11MB925440EB3352EC0E164DBB06D87CA@IA3PR11MB9254.namprd11.prod.outlook.com>
References: <20250619153738.2788568-1-yoong.siang.song@intel.com>
 <5b77d33a-5668-42bc-802d-d2c5d95c1e7e@amd.com>
In-Reply-To: <5b77d33a-5668-42bc-802d-d2c5d95c1e7e@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9254:EE_|PH3PPF10FBEE80C:EE_
x-ms-office365-filtering-correlation-id: 8c5d1623-95cf-4c29-6e57-08ddafd4c209
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TDAvN29RQzQ1T2tvRkFkRG9GSGM4aDFPbFZoVjhVWkx4OUtONXFYMFhSVm5P?=
 =?utf-8?B?YUZXdDNIVVRUUXEzK2V5QkMxbGxtV2tnL2ZwMGxtMjNuMFhUbk0wSndFSmNF?=
 =?utf-8?B?dDI0R2s5Yk5taDdWd051aWhPY0JuR3NQc3ZtbW9tQzl1QU5VM1BZOHlqeEhZ?=
 =?utf-8?B?R2hhNEthTGpYVUJLS2Z0SGViWkdvOER5ekR3N1VScm00Qi9iTHRBdE5VRy9H?=
 =?utf-8?B?YW9uSkgrZ2tENWZOUkFzWEtOdmVWcXkwNE5pSEJTSzloeFR5M1o5S1hTcVg2?=
 =?utf-8?B?Yk9lTjZ4Yk8vbzRLZ1pLS3ZFMGZiMkE5Ym9HNk15NXpuSy9wOE9YRlErTWxO?=
 =?utf-8?B?L0NpeHBoZVFYcXpQR3djY0d6b2VTMzlOcFlBcXhub0ZvdjBPT1BveEpaVzZQ?=
 =?utf-8?B?ZUJYd2ZmMHpEQ2plK0o5ZDk2UGE2a1JzVTR6TmRzbE1MQ2JUVEVCRnlLRkhX?=
 =?utf-8?B?SWZkS1hYdUtGQTlVZFR5N0VsL0szS0hQUm84UVMvVGZsc25JUjNYMWdFSHNu?=
 =?utf-8?B?Ynh0Z05TcnNNcWhwaU1jaXlFd2ozNDM3c3R1eC9zWkdQMkkzRER5QXdESEZo?=
 =?utf-8?B?Lzg5UllDRGtpbkplVWt6amwyRWRPbXZCMlZLM2ozZ2p0NWM3ZjNFODFsa1RB?=
 =?utf-8?B?N3NDV2ltQ21ZSTR3UTVVVEYwcERxVnZzSjVQYitETnkwaDltWmhJZVI4Vkc3?=
 =?utf-8?B?d0g0UW9zTDBGSmJRTkp6WkpCWGhUcnBQOGN4M0RQNEV6aWpyQnNoRE5xN285?=
 =?utf-8?B?Vi9ITnV6cmF5a1h3NkcxQ29DcFJEZzdhREw5NE16bnZqV3gxNGxVSkljb1Vh?=
 =?utf-8?B?dXpYbTIwdTVoL0JnUGt0ODl1bS9JeEV3VnZXcm5ZbzJ2RjdvSTNCL0Jmd2R6?=
 =?utf-8?B?TVpFUHV2czRCdUVoREhwNnJ0U3ZtZkxadHpDL3gybFcxRVRiOUd3OW9MTzVo?=
 =?utf-8?B?ZjNyTVc2dXZ1WlNFWVRQNWFlaGtyZURYQ2tVNXpya3kvK2p3WVZ4enVjdFdY?=
 =?utf-8?B?MytMbm5ydUtWK2FpR1JRUTFiS2dudHNDQnV0RHZLVlQzUWNlSlVqYTFvZGtw?=
 =?utf-8?B?NXoxdFJQSk9zQ2V1bWMydkhuZkI3RDJTRzB4VE5sZ0ZpSURQUTEwRGVBVENI?=
 =?utf-8?B?L1RLK0Z1ZEtiTDV3MjgxM240UE5IN2Q4VVBuLzNiTC8rdmUvMjNSYmJkalBX?=
 =?utf-8?B?VWsyQWw4bWxNN0dEUFJ5MUFXeFlXZVdCOHJkZWRacWlIUU1TV0tuekdpZy9J?=
 =?utf-8?B?K09SZGV0TW5mcE94R0dEaXF2S3ZkZmcyV3pJeDhzckszZ0hCd1E4a2Mxc2FQ?=
 =?utf-8?B?YXlQQ2o1UU5oOXZHZVFWWWJWWjFFblltejg1cUNUM21hNnJQd0N0cklRRjhy?=
 =?utf-8?B?YkNVUXRpVVFibm5NcCtVQ3U3aDkxYTFwQUExZXMwMGNJbHpSMzNCZE1ISjFa?=
 =?utf-8?B?dzVwWmx2aWt4WkRVRkQ3M3hSdzIyWkcwU0Y0M3kyOWRxT0FDZXFIbkVadVFa?=
 =?utf-8?B?b1pkOGNKeWVoVmdUZjZ5TWJ5dVd4U1k4ZU1aZjk5d3pRRXN4WG9zTlQrdDRT?=
 =?utf-8?B?c2lLMGttWlliYlZEZjl6bW9qanYxaGNuQmlLMzYrckt4RGR1aVVaVWZxb0ps?=
 =?utf-8?B?d2E5YXdxdVdsU1UxcjlqU0lMNVNwWU5ualF3dzB1VE5BNi9YbWk1cmdMSGM1?=
 =?utf-8?B?YThNV0tDbmdrSmh0MFp1SnYrc1JiMHYyeitsWFpzZGR6WkZ1UWxIUk84Rktm?=
 =?utf-8?B?eEkxbEpremJLWWo0dkYwdWFMT1RtSU5vNDUydGJLamw4TTI1b1NEMnA0Rk1u?=
 =?utf-8?B?ek9STmVTREUxeEM2SGVXRU14bzhVYTdHM0ZWaEt1bm9QYU9MOTA5MzAxZHQ1?=
 =?utf-8?B?NVpBSkI5MnRZK0ViQlJWT3JMVkdxZUlVRDh0c09YQzFVZE81Y2E4ZEZPckRP?=
 =?utf-8?B?bmVOVjd3UkdwVVgvSSs5cm0rOVZtYUlBc05OUlBwMHAvQVNCdjJrTDhpdFFh?=
 =?utf-8?Q?7ty+H3cZSvns7yy9JXHCJd1YjjGwPc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHc0bFRJMFJRZkJwUXZVZHRWbTVzaEE2N0FqN0JESzV4T0hwWkhpV0VOMWUy?=
 =?utf-8?B?YVZOTWVPTFgzVlZpaVBaL0dyYnhzZVlXWEpnQ3pDczF0M1VKYWNKRWVNU0pL?=
 =?utf-8?B?NUV5K3RwRDlkMU1PQy9NMDZvU2pmU0w4cGFRbjRWSlkvbXphSXplM2dhYkdU?=
 =?utf-8?B?WWhxNFEyNVVTM013NXFmRUQ0YTJuTThQMm9pQjdqdFM5V1Z3eU8yQVgzanh5?=
 =?utf-8?B?cnpPS3dicURkQmFyUVFBR3dkUE9lLzhBWVVuR052UWM4YUMvVmxCdll3VVRs?=
 =?utf-8?B?bUxONjBHdEpPckE0R1hWOHZsaGs3QVBqbkc4MzlZS1NqdDhhWnlIK2gzWHkr?=
 =?utf-8?B?Umh1SFBwMjdXVEpUc1ZQQytURWtiUzIxdTJUTWlJb2Z0SEIrTnVDM0RaOCsx?=
 =?utf-8?B?ZU9kTCs0YzRrazVtOXJ6RlpwNXRGVU1EZ1Ewdk9VVjZYZTBZTHFwZ0JiUUNt?=
 =?utf-8?B?QWFwc2Z4bkhPaVF1SjFCbFFQTTEvalAvUjNmK2JNa1VpMzNPT05kUlJMMXJr?=
 =?utf-8?B?RzdKOThoRXFsdWFOZlFBODcwUHVjeFJCSXVjUTlNMmxYM01id21SRjdaaEdC?=
 =?utf-8?B?RFpEdFdwNGlsTm9OS1FlUzV2M0Z2Tk9JcVVzaGdBV25xSW00MkZnQ0xweTBG?=
 =?utf-8?B?WVhGL2hjNVNTVVhhNVBqN3ZpNXF4aFpSUzFac3p1UHZtR0JBM1FUNlRwUzZw?=
 =?utf-8?B?bG9rVkJ6WjZ6cGJPZTRWYTlpMUJqSXY1NXhCeHZzbm5RZ2ErM2crOHBKTW5K?=
 =?utf-8?B?N1lHaitxYmhlMkFBaS9QTGY3ektkcmF3T1R4UDIzczkrNEZyZ3dXRUxvbWQy?=
 =?utf-8?B?VFFFM1FZM0k4TFh3cnU2S1lhZ01MUlJ4cW8xR292U21GbHJ1TkJ2Q2hzVWZm?=
 =?utf-8?B?MkxoYU9vaFl0bHpsYWhwNGZCTDBRNVdZTTVocFpOOFVaM1NHSEJ2cG1Qc1pC?=
 =?utf-8?B?QmdvT3V0KzBWdEFkbU5JaU1ySzdob0RoS084b1phR0pjTitIdXpTcU9RRjFh?=
 =?utf-8?B?YjdQVk9RV0tNTFNCM1lYY21CYjllZVBaVHFobzVuUDFRZ0kvVkZXNytUbmo5?=
 =?utf-8?B?UnBlaU40UGxsdUFrWlVhWkVMRzRDOTVaM3ZQcjVUMTFIMHVJdFY2bmdTaU5j?=
 =?utf-8?B?RHlaZk5SVU1TMExyWkhiTGJQTlBQdy9Ud21XS3FSajhUcVFNWHZnS3dLT0pp?=
 =?utf-8?B?czMrcDUvamZCeGhUN0N4VzVidEYxSGFxbURSWk1lMWVMMENhbW9GZ1drT2Q5?=
 =?utf-8?B?TkpZb2ZIWWc2RGNzZlhEU2E3VjQ4YVNTTnRUbmIvWUhHRDhSeWYzV21Ed1po?=
 =?utf-8?B?TTdsVGQrTTVWWmk4U0VSUUZmL0hCdkhUTm5wZVQ3NWZNcUVXdlpVTzdtQ3lU?=
 =?utf-8?B?VzBtcG5yV2RvNjF2RktKT2VJNld0bFdkN1FxZEM1U1luaFg5azdCbU5mYzYz?=
 =?utf-8?B?eVkxOHFuNjlSbnJaZjFaYjJkSU9nQU54TSt3VTlJYWNNSlBZd0tLTHgrS0ZD?=
 =?utf-8?B?enFXTHNUQUxyMDFaY1M1dVJzQUk1ZDJoeXJjSUt1bW1TY2MwSVhyOHJmUWlE?=
 =?utf-8?B?UnoyVEhqMWR2emx4czhGbFJGSkVlNnFIV3hzVXRFaHYzeEJqT0Q0NEo5K0Rq?=
 =?utf-8?B?dWRWeitHb1FNWVRHMjZuNHBzNHRkdVV3S2xONThLZHhEQTJaME16MWRWdGxJ?=
 =?utf-8?B?eCtuSndVREM4cDNMTXV0TTM3OWhKUWV0cUY2aDVyVEJDSHNINCs0L0c1eVdV?=
 =?utf-8?B?SlpFWER4emxtQWxpaEluYnNDUEJma3pWb1V0RGx6MG9yTDlxbmZmUnlpUmJE?=
 =?utf-8?B?TGtKL2JoR0xkdUgwaEdoTTByRXgxVDIxTjdOWTMvc3h3QUUzOFlwWHZmcHhn?=
 =?utf-8?B?bEpSQUV2bWszc2hjUG1jN2lMRXI2V2pDRm4yNktWKzdPTTJOMnlyek5ZZnpM?=
 =?utf-8?B?ZTF0UlllcnBmdWp4Zmkwc2p4TXhHd2FOMjlTMC9zMG43RWx6RUZVQ0lJRGVT?=
 =?utf-8?B?S2VCeGVLYmxBNG9jdkZhcXVtRWhuUlZPcjc2b2MwemxacGJ5Rm1JUUVsVith?=
 =?utf-8?B?RGRxaUpOTnJvandFSWZUOXdoc3Vyc2tYNmZDM054VSt3MDBRb1RJaUV0MWlB?=
 =?utf-8?B?SXdVajd3TkpoS1hNSjFxeldCK0JRcjZXRmk5MUJtOEt5UDQ4eTVybzlNRlo0?=
 =?utf-8?B?a0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c5d1623-95cf-4c29-6e57-08ddafd4c209
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2025 08:30:47.9190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X4jsZgMUfZGxReUb3Fhh2dTlebq0/Rih+t+2+Oh4CIbeC0q5N30T15BZZiwrfSMtu6lwOaRg4UNECzcPc28t/9GFp9MhRlWeL16i7Eee6Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF10FBEE80C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750408266; x=1781944266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sj/7/6pEtdml5z25g8LcOy234/vMbj3A280vuH4WRe0=;
 b=Ix0L+mAQme9zVL3vdCMMf9MgA0mgrstsmy3O8fu3s23mtEJmzlAwVKBB
 S68D6e4im99ytSbooVdt2k/En9Ru283t26j9FX64a9y29f5ubC4GVvXQK
 PD8wJzDW5tW92NdpmgDF5gK3UTsieKpan9HBmqSP9aLtaeVIfpncY/yzF
 MbzZG9Tqk1XO62J5XES7H4xGZ6voZMp5TucItmnFfs0wwd6dYpOCFvq8h
 EHQq0TkGZweiMEonrYvOGq+5iqKMC1+/vr3UmMEdZNrQhBj2f+iSRVbuW
 3kRkTKqReM1XdrkPhmuk62IfKjXIsAgQ6/7sJ5uXBAipjMa7bSArh5TsQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ix0L+mAQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v2 1/1] igc: Add wildcard rule support to ethtool NFC using Default
 Queue
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

T24gVGh1cnNkYXksIEp1bmUgMTksIDIwMjUgMTE6NDkgUE0sIEJyZXR0IENyZWVsZXkgPGJjcmVl
bGV5QGFtZC5jb20+IHdyb3RlOg0KPk9uIDYvMTkvMjAyNSA4OjM3IEFNLCBTb25nIFlvb25nIFNp
YW5nIHdyb3RlOg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2MuaA0KPmIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oDQo+PiBpbmRl
eCAxNTI1YWUyNWZkM2UuLmM1ODBlY2M5NTRiZSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaA0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdjL2lnYy5oDQo+PiBAQCAtNDA2LDEwICs0MDYsNiBAQCBleHRlcm4gY2hhciBpZ2Nf
ZHJpdmVyX25hbWVbXTsNCj4+ICAgI2RlZmluZSBJR0NfRkxBR19SU1NfRklFTERfSVBWNF9VRFAg
ICAgQklUKDYpDQo+PiAgICNkZWZpbmUgSUdDX0ZMQUdfUlNTX0ZJRUxEX0lQVjZfVURQICAgIEJJ
VCg3KQ0KPj4NCj4+IC0jZGVmaW5lIElHQ19NUlFDX0VOQUJMRV9SU1NfTVEgICAgICAgICAweDAw
MDAwMDAyDQo+PiAtI2RlZmluZSBJR0NfTVJRQ19SU1NfRklFTERfSVBWNF9VRFAgICAgMHgwMDQw
MDAwMA0KPj4gLSNkZWZpbmUgSUdDX01SUUNfUlNTX0ZJRUxEX0lQVjZfVURQICAgIDB4MDA4MDAw
MDANCj4+IC0NCj4NCj5TbWFsbCBuaXQsIGJ1dCBtb3ZpbmcgdGhlc2UgZmllbGRzIHNlZW1zIGxp
a2UgYSBzZXBhcmF0ZSBwYXRjaCBzaW5jZQ0KPm1vdmluZyB0aGVtIGlzbid0IHBhcnQgb2YgdGhl
IHdpbGRjYXJkIHJ1bGUgY2hhbmdlcy4NCj4NCj5UaGFua3MsDQo+DQo+QnJldHQNCg0KSGkgQnJl
dHQsDQoNClRoYW5rcyBmb3IgcmV2aWV3aW5nIHRoZSBwYXRjaC4NCk5vIHByb2JsZW0sIEkgY2Fu
IHNwbGl0IHRoZSBwYXRjaCBpbnRvIHR3byBhbmQgc3VibWl0IHYzLg0KDQpUaGFua3MgJiBSZWdh
cmRzDQpTaWFuZw0K
