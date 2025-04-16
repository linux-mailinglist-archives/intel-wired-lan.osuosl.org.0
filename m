Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3D5A908AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 18:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94A1B404B9;
	Wed, 16 Apr 2025 16:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mUUz0ZVk1b8B; Wed, 16 Apr 2025 16:23:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D51FD40993
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744820625;
	bh=Ep/uj7rkgtS/GtRAwl8DzNDxsNItesgP3dv/EKUtYW4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K3fHnIwbpZ4CgMkwXrJOsj2xsn1Q3AzJ1Yb6kE8Fj45Hnyqa1slYcV/YFw4oC6cM1
	 0rS9iT+6n9xppFh4bFSOQvdqFDBWxLvUjw5XC6I5QHLSIuKSHCt13g9fSwKGfTN8he
	 zkPlXF1Rrid0H2RoUAxO3C+JxLSlEEj1eV9oNbgIjpbABKTKSlhGCRUo9UvkrmF78h
	 7pMGk+0QAJnD58KQmsCHezvIDiBf2igs52LE8iDd3q2fWGvSgx6taU3OEAccFCOlDV
	 M13VXi2inwvXcUPvxS+IXydoDqYPB9o0J1bDmLXFXSv2JrLDIJldLAAdMP6jL1h6iw
	 0vJB9I7/8Silg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D51FD40993;
	Wed, 16 Apr 2025 16:23:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C93D4DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 16:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AEAAF80C71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 16:23:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5jf52KpB9tnP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 16:23:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 996168215F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 996168215F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 996168215F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 16:23:42 +0000 (UTC)
X-CSE-ConnectionGUID: Jh+aGTOrSUyOASp1xOd6wQ==
X-CSE-MsgGUID: zi8/qzsoTlexD3ugQSbZzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46545192"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46545192"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 09:23:41 -0700
X-CSE-ConnectionGUID: 2A7WpwwuTVO4ijFB32xEAg==
X-CSE-MsgGUID: 4S+iAr3XS/2cpc3XiwjojQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="153720461"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 09:23:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 09:23:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 09:23:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 09:23:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wxmx8z6K0SfXI7gHr2zhJS8A89f0kZUvzUk2tu/sV4sS93ulqhhCvCNq0wEb7PM6nPNkXGTJBkc6HUBJfuv4h4LaJeZzSl9377EO09PgCvArzPMG7qFAfv02jT06v+OWfxYSWxxclh0we7y2PyuZyYPjAkMmZ3/6ah43i2yC4HNVl+VE6EMo8inXhIiAECCNMimwUiezrH+sdaxDoBX7a2IW+8BLX2+fv/PiNr1xMeZj5DxL9Rh/eIlc3uw3u2Quur0ssbrbPupcuEFqv544tBMtJnzELKCpjNJfE1e4wCGkz64ac4jdPmCo+rOSZ6bXgDsHaaye+P6XA7sXdd18YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ep/uj7rkgtS/GtRAwl8DzNDxsNItesgP3dv/EKUtYW4=;
 b=MgJQHpAeTjQ3X+OCbfNWOU4sRU+3xLI6dxQ6UDRBda2g51hpT/XAANuMqIpUUuWgdYpSFQBJuQZfv+AUHxq8CjxGaHDsMvvN1jaKwXYMs4RhBjGjfpr81E71IQuUEyKfKaHkvRyYug3298eSYf5y4+O7S395kt8jLNRpqE0yTmSFpyHIE/hHEHmoQU8JpDoL/lLwEHr2wMlpsALg9Vi/T3u/s0BcizcbKdQ+BwVwXssrA9d5X6mckqe4jFpZ7Z4HO8pzCdZT1Xo/wWsXRKYQARX+O9Qwu/bEnb6CrE+X42EgJIepnI5aLPuUH0bOj6HRp2U9SMAGUnn9d3E5j47s9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6601.namprd11.prod.outlook.com (2603:10b6:806:273::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Wed, 16 Apr
 2025 16:23:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.025; Wed, 16 Apr 2025
 16:23:36 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S. Miller"
 <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, Mustafa Ismail
 <mustafa.ismail@intel.com>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Michael
 Ellerman" <mpe@ellerman.id.au>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Lee Trager <lee@trager.us>, "Madhavan
 Srinivasan" <maddy@linux.ibm.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "Chittim, Madhu" <madhu.chittim@intel.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Olech, Milena" <milena.olech@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>, "Singhai, Anjali"
 <anjali.singhai@intel.com>
Thread-Topic: [PATCH iwl-next 00/14] Introduce iXD driver
Thread-Index: AQHbqISTdVkEw1XagE+uptmT4Mk817OmfRyAgAAJkDA=
Date: Wed, 16 Apr 2025 16:23:36 +0000
Message-ID: <CO1PR11MB5089E496D1A0EA24789A6464D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <66d6dbc1-5829-4097-8b36-c8776c86bce6@intel.com>
In-Reply-To: <66d6dbc1-5829-4097-8b36-c8776c86bce6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SN7PR11MB6601:EE_
x-ms-office365-filtering-correlation-id: e5db457d-f95b-41bc-35ed-08dd7d030a32
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QjdjUUtzbEpXZWY1djR2MFhxL2ZJM0xEK2lwTm81OGFNTUsvS1ZOc081NUVE?=
 =?utf-8?B?YzFpVUdSMk8wSXRXVVIyYjg1THJHcVNudCs0L213OHVzQ1NMeXZ5WDVrbUJD?=
 =?utf-8?B?ZmZmbE9GekNkU3JYcVF6Z3N6UUZUT1hHSjB3cytZaWx1M1BQaC9WanJTaWE3?=
 =?utf-8?B?WW9UL1I1TjB6alB1L2NKaVE1ME54TTR6bUdtQmFYclRuRTg3YXU0SkQ4RC9D?=
 =?utf-8?B?VDFvZGNxQmJGdHhOOWNvRGsrMGdKTFhtVzNJK1FPRWhjS1B3cmhyTUxYMHgx?=
 =?utf-8?B?blJnUmptNlg3ZWt5aUR2aVJqd010UjJYZHp1QlQrcTBiamEyNHAybDMrbUt1?=
 =?utf-8?B?UndFa3FyK3FWVmxucFduVnRxeDdBMUJXcVZOZWVUS3RpQmZKeDY4S0JwMk1l?=
 =?utf-8?B?LzVZSzlpM1FLalJlekdobUUyWGRjRk5EUUhiS0c2NFR4RzFXTVJoaXB3enl0?=
 =?utf-8?B?OHlLUWhsQ0VUWXpDeG02T0hpandLbnduaXNwN3ZtWHN2VDRHSkd3U2w4cC80?=
 =?utf-8?B?T1FxQjdpSGZLVTRJbDZyZFZKdVhUWW9qb3JvaEplTjZSTERzaXhLTE9vdTNj?=
 =?utf-8?B?c08rV25ncFBOcVQ2Wkg3dTNTYnEvZUpUdEhEL0lLZlZFQm0rQkxScFVNUEYv?=
 =?utf-8?B?bVVVRlhvdjZ2VktKYlVkbVNaM0szbGN1RUNDRWlRdG1tck9JQTlGMVZLRWlK?=
 =?utf-8?B?YVNZd25IZVJ6d0JDTGo5NUtJVXlBaXIyLzd5S2YwZEU3TTYzb0xBNjNEb0FX?=
 =?utf-8?B?K1gvaFhqb2lldFRzSXExeUtQYjZvcndXODN0aElNS3VGUVliVVFtTDAzVTVR?=
 =?utf-8?B?S3puMUMzSmhJY0xvZWU3cGFhUHRJdFdyajlhOGJYVnZWeVh1OWFYQ1dFYURS?=
 =?utf-8?B?emowOGVuMVBZazF2NWc2SlhxdXBBeHdlaFVQMmJMVHdiNWJkNUtKMnN4SmtW?=
 =?utf-8?B?M2d0Z1lUQXpQRkRRdTAyZWNOMUlFRllSbTNOb0k4SVl6a0gvQUNkVHhSU0JT?=
 =?utf-8?B?TWJia3V3cDkzeDFXNzdBQW1oVzgySWtrMGFqZ3NwcEpNdWRPSDBCeFhBc2o2?=
 =?utf-8?B?QnFNcjJPVDlYRDYweDZKVGtVb2RHeDdVVDNLQ2J4YlViRThnZVo4ZzIrN0lH?=
 =?utf-8?B?Q0lEU1c5dzZFQU1TT1Z5am1yMnVrYzhuRjN3VWNpSjBMUjNJM3pWSGFoOVM4?=
 =?utf-8?B?ZHg4NzdmMnJ6RzBNQTdrMGkvdm9SMWl4UFhmdzAzM3JwVTNqL0p5TjhBRmhE?=
 =?utf-8?B?RytSOXU2Z2JsMklqWVpETGNTWFhlWHA0dHNMQXFmN3RYL2VGcXBkY1JKWC9Z?=
 =?utf-8?B?YkYzcUVTQ2NBNnExTVJzandERmVlR0JYSWhjOHgzUjRPbCtWZVBiQ29UZFpt?=
 =?utf-8?B?T1JwMys1N0t3Rm1uUVl1a0tUcE5GMWdIcWRVR0Vrd043TFR4QzB0em8zbHBt?=
 =?utf-8?B?Z0h3VVE2MXJyL2VKdEJKMlZrcnNlK1BHNHhwcTNhenhHZllYMEZJYzhWVGVs?=
 =?utf-8?B?UU0zK1JwM0xBQkxoQzhLZU1pLzRxMWhNR0VTbm01VTVXdXlSa3VLdnU5WFl2?=
 =?utf-8?B?VjB2em9mU3Y3T3RLaFlueWNGeFZ6S0RFY0swWTh1Nm5kNnVLVGFKTHJLQ0Jh?=
 =?utf-8?B?Z3BENlNTTG1RNXVUVitmVHVtRmxKbWtudEkyc0lCeHhnY2FiUXQ1K2xTSFo3?=
 =?utf-8?B?cDVDWmczVHFkK2puTDlKQjlxZWRtUHVjbUtua2V3dllzeTh1b0NYMForS1NG?=
 =?utf-8?B?VnZwR3lMdjhBQ1lSUVprZi90Qml1Z1Q1eWhDbnFkeit3VUVtaXNEeml3M3pv?=
 =?utf-8?B?emlVTTNOdWRHUHAzUlN6VmxweGZLc1p6bFNaQ1BwR1NoMnpqeDlkZ05EUmY2?=
 =?utf-8?B?dXpEWGl3Zjc0ZHF2Vll6ZlVlZ243b1VQdmZIRENGd1o0ZmdMT1RNMFBPOWtH?=
 =?utf-8?B?b3F0TDRBQ3JUZ2Y0cjRLWXllaHlGbS9TVGI1dnIyYStHVTN4YkpKSVpsSU5T?=
 =?utf-8?B?Z2EvRTErN2dBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXc2MFBTeDhYbHU1cTN3Y1ZzdmU3cElWZjk4QjB3UXZXY2hLbjVDbnZuN24r?=
 =?utf-8?B?b3RZTUlTdHY0S2NWemJZUWpUWmsyOUVaN2Q1Qm5sR2kwQkJZdmNQZUE0ckNn?=
 =?utf-8?B?Q0pvSTZUd2p6WXRtOTZOVUdZcXBEaUJYWmJReEp3eXNxc3V3WkxIdjJPRWVF?=
 =?utf-8?B?bzhJU3JNU3FiMHNpc2dRYWVObDJnMWt2ZmMrbkNYTElPV1B6ODdXWll5UzNZ?=
 =?utf-8?B?b09LVkYvTmlISWxZb0lmcit4azJ0cVRmWG9SVDJ4R1NFbHdZa3N0WEJWNGpi?=
 =?utf-8?B?UURsakh5ZHNXLytsd3dqQVJBdndidnVqYk0zdldHSlNlQXk1QlZYMWpuTkY4?=
 =?utf-8?B?dzFvTVpPc2ZWOVZybGYrTEkwVkZ4ci85TzhydEs4OFFxWFB0MGV0SUVTVy95?=
 =?utf-8?B?NS9WbGlKZnRwSUVXWVU2eHRkcDNwS2lyTlkzRjE3UGZnL050OVRvVm9YTzZp?=
 =?utf-8?B?ZEJyWHFPS21MaW1RVU51djNVRGRSQTZjZTJ6VWJ3b1lZa3pEM3k1TFQwRU5X?=
 =?utf-8?B?Q2dJamJIc0dGYXJFNTBiOStUM1ZuNlBZUzlKZkZFa2s1NWpXR0ZPRzRHNEdN?=
 =?utf-8?B?QUc3dGYxYy9Hblk2dXNnQ1ZZMlhKVitwWW1VL2ZhdlJtMUllZVlOYjlXallD?=
 =?utf-8?B?YzlJdEtwbHJZSjRBNHBVdHNTMFIzVVBIUTlhWTdEMVM5MHlnaWw3K2RHbllW?=
 =?utf-8?B?ekxiNWZueU0wWC9YNlMrZ0lhQzlHU2JLWUI2eWN6ek4rMXAyUXBQREJiT3pP?=
 =?utf-8?B?NkhGdmh6empmSE1IZFRXTTBxMFBJUVRGejBBbnVBSXJpTzRPSHhwT1VYU21k?=
 =?utf-8?B?N2pxWHdzVnl0ZGRMNTlxK2ROZ3J6N2pxeEVrbmszMllieDlTdjdLRVEvRk1G?=
 =?utf-8?B?QXA4aGNaV0trNHVXYThrcUdHWnpoTnRTK2NxNUNiMlE5bHpFTnJMQjhCK2Zy?=
 =?utf-8?B?OW1OdHNwbURFQmdwbHJhVGlRaXBLRnRFc25IbUYxQ1Fua3JITk16VTUxc3FF?=
 =?utf-8?B?dGJEbVVFZXRLa2tma0JxUndvUjhQcnRDU1FvaVNQYUV6YXJKQ1p5R3VOOU1D?=
 =?utf-8?B?Y1RjVUduVUlTRmdmVmVENU1oSEM2T3RQYzMwbGlVQ1BUVFR2U3VILzAwV0xK?=
 =?utf-8?B?RmFSYXpFNzlFNnUybFJXM3didFBpTlJ3UERPN1JIUnd6bitXb09HL28zYm5X?=
 =?utf-8?B?MzBmdnFVRVRsZW5mbzRLcCtSbU1IYlNPKy82QmFIRGM4elYvalJLd2prV1lP?=
 =?utf-8?B?RVRQT082VXNyR3AyajJaOFRYWUtybEIxb0xWZUllcWh0NXNZUWNvZVc4WFdq?=
 =?utf-8?B?RERuLzVZQ0phNlRRbGozR0JhWFpTV3AzaDRzczlveENuOGZpZ0pUNFBSelpZ?=
 =?utf-8?B?cEVDS0w4Rnhlbnh1SWE4VmxwM1BCeWpISlhZZUZvai9Db2JFOVBjTStwSytx?=
 =?utf-8?B?S25ZQkxWUE1JWkZPWGphWjVaUFI0QjhPb2RSNUM1UmJLeVltb0svRTdJTkQ0?=
 =?utf-8?B?RnJaOVoycVZGTTdqcWw4ZHg0Uklnc09IUys5SW5KYzVjbzhVaDBBR252Nkth?=
 =?utf-8?B?MWZoQ3BySEdqSkpsOUhtWWgrMnZDRTlBUmJiQVNmbHI5RlJJUkJhVFJvaGtJ?=
 =?utf-8?B?TkdldS81MThxbXVLZWg1eEVlbzNGd2hhSERDQUlNVTd2enpId0sycU9qQWI5?=
 =?utf-8?B?SVFJZGlHQnJWM3lXc2dvZkNtYkVSa21XenFteElLSVAyY0ZuQ01GVUZPUmhM?=
 =?utf-8?B?YWlONERTTnpzSm9YenhVR3ZSS2IvK1hNSGNZeHhwV215V25iSUp5eDJscWxX?=
 =?utf-8?B?VjdwbDNrcWkrbXRJZG9va0NJV0RERk5hSkZxL2R4QmRoUU5EM1pZTXYzbHph?=
 =?utf-8?B?aFppSlVvZVB0TXNrdDdxSVNFRmx6Ni9zMjZUdit5ME8xdHdLMHNtQ0w5K3VS?=
 =?utf-8?B?RjNKUkJoaFliVUJaelNGb21hMEdvWXllWDlTZ2ZBZ3lVSlZoa01TR3g4dEVq?=
 =?utf-8?B?L0pudTJiallYdVFQZ1J0SGdXa3FTdy9YMlVhTDh3d09WS0JXb2x0MndjcG1j?=
 =?utf-8?B?NnlEQXdGRUhKY3BuaklPQW9IWm1mai9pVHlmNlkwZFFRZjhuYlBNZDdFZ2R3?=
 =?utf-8?Q?gV6PXTmB7w856P78jjNpe6uuT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5db457d-f95b-41bc-35ed-08dd7d030a32
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2025 16:23:36.5304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uKIFiwQV/Rt3+uUCuDsTtMalyMQQiDrvbWyBqpGria6Ede5Kk8VfePzp0R+o2zsDOv7ghZ3/rha5gETm5et+NM7DTTmhiqifG97t17S4Ovs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6601
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744820622; x=1776356622;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ep/uj7rkgtS/GtRAwl8DzNDxsNItesgP3dv/EKUtYW4=;
 b=cn7w8I5FXPjRyM0ez1379/dpDjGsmLaWmhihrPu6dtVafFWQabQ1W2S4
 Zo/EN3yAT8ZhF47KgxCTmnrR7HxNYZufdqBunbhfr8kudB0HWoTIZ6H3V
 FsiX9oSb54mqPk536b9nNlpnr5PC51HelFn0ZledI+DftGWRSzMpqMRRI
 p7Hce1HWewECmDlwyYrF/qycv06sG8y2OcKJgr68tjiOX1BJ4w4hjWPto
 YStMyhj9XuTcicVdVhTbkgRQ6V/9Jo4X8GmXplCJfXiShmwd/UINr7Ffs
 XWk3IbU+OO4RCorQae+frPt+u5nfHGfAxuhlSvwVRJwjPDZpJehlHg7Yr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cn7w8I5F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 00/14] Introduce iXD driver
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9iYWtpbiwgQWxla3Nh
bmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBB
cHJpbCAxNiwgMjAyNSA4OjQ5IEFNDQo+IFRvOiBaYXJlbWJhLCBMYXJ5c2EgPGxhcnlzYS56YXJl
bWJhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBO
Z3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBEYXZpZCBT
LiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Ow0KPiBEdW1hemV0LCBFcmljIDxlZHVtYXpl
dEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47DQo+IFBhb2xv
IEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9y
Zz47DQo+IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBLaXRzemVsLCBQcnplbXlz
bGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgSmlyaSBQaXJrbyA8amlyaUBy
ZXNudWxsaS51cz47IE11c3RhZmEgSXNtYWlsDQo+IDxtdXN0YWZhLmlzbWFpbEBpbnRlbC5jb20+
OyBOaWtvbG92YSwgVGF0eWFuYSBFDQo+IDx0YXR5YW5hLmUubmlrb2xvdmFAaW50ZWwuY29tPjsg
QW5kcmV3IEx1bm4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47DQo+IE1pY2hhZWwgRWxsZXJtYW4g
PG1wZUBlbGxlcm1hbi5pZC5hdT47IEZpamFsa293c2tpLCBNYWNpZWoNCj4gPG1hY2llai5maWph
bGtvd3NraUBpbnRlbC5jb20+OyBMZWUgVHJhZ2VyIDxsZWVAdHJhZ2VyLnVzPjsgTWFkaGF2YW4N
Cj4gU3Jpbml2YXNhbiA8bWFkZHlAbGludXguaWJtLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0K
PiA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5l
LmtlbGxlckBpbnRlbC5jb20+Ow0KPiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtv
d3NraUBsaW51eC5pbnRlbC5jb20+OyBQb2xjaGxvcGVrLCBNYXRldXN6DQo+IDxtYXRldXN6LnBv
bGNobG9wZWtAaW50ZWwuY29tPjsgV2VuanVuIFd1IDx3ZW5qdW4xLnd1QGludGVsLmNvbT47IFph
a2ksDQo+IEFobWVkIDxhaG1lZC56YWtpQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LQ0KPiBkb2NAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnOyBLYXJsc3NvbiwgTWFnbnVzDQo+IDxtYWdudXMua2FybHNzb25AaW50ZWwuY29tPjsg
VGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT47DQo+IENoaXR0aW0s
IE1hZGh1IDxtYWRodS5jaGl0dGltQGludGVsLmNvbT47IEhheSwgSm9zaHVhIEENCj4gPGpvc2h1
YS5hLmhheUBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29t
PjsgTGluZ2EsDQo+IFBhdmFuIEt1bWFyIDxwYXZhbi5rdW1hci5saW5nYUBpbnRlbC5jb20+OyBT
aW5naGFpLCBBbmphbGkNCj4gPGFuamFsaS5zaW5naGFpQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UmU6IFtQQVRDSCBpd2wtbmV4dCAwMC8xNF0gSW50cm9kdWNlIGlYRCBkcml2ZXINCj4gDQo+IEZy
b206IExhcnlzYSBaYXJlbWJhIDxsYXJ5c2EuemFyZW1iYUBpbnRlbC5jb20+DQo+IERhdGU6IFR1
ZSwgOCBBcHIgMjAyNSAxNDo0Nzo0NiArMDIwMA0KPiANCj4gPiBUaGlzIHBhdGNoIHNlcmllcyBh
ZGRzIHRoZSBpWEQgZHJpdmVyLCB3aGljaCBzdXBwb3J0cyB0aGUgSW50ZWwoUikNCj4gPiBDb250
cm9sIFBsYW5lIFBDSSBGdW5jdGlvbiBvbiBJbnRlbCBFMjEwMCBhbmQgbGF0ZXIgSVBVcyBhbmQg
Rk5JQ3MuDQo+ID4gSXQgZmFjaWxpdGF0ZXMgYSBjZW50cmFsaXplZCBjb250cm9sIG92ZXIgbXVs
dGlwbGUgSURQRiBQRnMvVkZzL1NGcw0KPiA+IGV4cG9zZWQgYnkgdGhlIHNhbWUgY2FyZC4gVGhl
IHJlYXNvbiBmb3IgdGhlIHNlcGFyYXRpb24gaXMgdG8gYmUgYWJsZQ0KPiA+IHRvIG9mZmxvYWQg
dGhlIGNvbnRyb2wgcGxhbmUgdG8gdGhlIGhvc3QgZGlmZmVyZW50IGZyb20gd2hlcmUgdGhlIGRh
dGENCj4gPiBwbGFuZSBpcyBydW5uaW5nLg0KPiANCj4gQlRXIHBsZWFzZSBtb3ZlIGV2ZXJ5dGhp
bmcgeW91J3JlIGFkZGluZyB0byBsaWJldGggdG8gbGliaWUgaW5zdGVhZC4NCj4gVGhpcyBQQ0kv
VkMvQ1AgZnVuY3Rpb25hbGl0eSBpcyB1bmxpa2VseSB0byBiZSB1c2VkIGJ5IG90aGVyIHZlbmRv
cnMuDQo+IFNpbmNlIGxpYmllX2NwLmtvIG9yIGhvdyB5b3UgbWF5IHdhbnQgdG8gY2FsbCBpdCB3
b24ndCBsaW5rIHdpdGggYmFzZQ0KPiBsaWJpZS5rbywgaXQgd29uJ3QgaGF2ZSBhbnkgcHJlLWlk
cGYgSFctc3BlY2lmaWMgc3ltYm9scywgc28gdGhhdCBpZHBmDQo+IGNvdWxkIGxpbmsgd2l0aCBp
dC4NCj4gbGliZXRoIHN0dWZmIGlzIHB1cmVseSB2ZW5kb3ItYWdub3N0aWMgYW5kIEknZCByZWFs
bHkgbGlrZSB0byBrZWVwIGl0IHNvLg0KPiANCj4gVGhhbmtzLA0KPiBPbGVrDQoNCkkgYWdyZWUg
d2l0aCB0aGlzIHRvby4NCg0KVGhhbmtzLA0KSmFrZQ0K
