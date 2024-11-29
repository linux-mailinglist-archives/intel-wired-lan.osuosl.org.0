Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AF59DE6D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Nov 2024 13:59:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F13A80B97;
	Fri, 29 Nov 2024 12:59:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nz6V5Vq-6VPH; Fri, 29 Nov 2024 12:59:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADAF580B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732885172;
	bh=tVnwfcs44eBg3zGZ03lJGGKu5wE7wvIHdCTvBoKfXvc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q10s3CBxB8bHF5TzreY6onS6WhTepCWqIg49a34RalR7UUnLy78NdSLs2v2GYY0KR
	 nD/C7y5MLWDEa2386LodE2JMxiKCSvNzNRDKnVyWl2gsbVhcypbcOtqAKftvmMTgbc
	 g/GiHhad3rUeqyhUNhc+v1qrrYpjvvcEtsuz8CIj54xjqPD5edopG0Aoj3s4j3l5TE
	 JKnX0GqIsbMtq72LmDDX8wZOITb9e4bGOGcdI+WMg5dk0vjg+G9uPT/O9Q/O2bWgAr
	 vZBZke9Z95Y94/ey5enkNFQnHc3j14pCXGrIjVphm5sG8s783yKpcJswy/Dc7BTytE
	 72Q/5cIOlzXJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADAF580B26;
	Fri, 29 Nov 2024 12:59:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 68B89712
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 12:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4910B812F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 12:59:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oOMdihulJCqq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Nov 2024 12:59:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5BE7580B7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BE7580B7F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BE7580B7F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 12:59:29 +0000 (UTC)
X-CSE-ConnectionGUID: Aflv35S5TCSyLW//2t6oWA==
X-CSE-MsgGUID: lPhX3gJxTQe7N78moGgxxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="33174612"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="33174612"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 04:59:30 -0800
X-CSE-ConnectionGUID: AX7pRwgfRZC8Z4ayzLFmAw==
X-CSE-MsgGUID: jP1fOxtjStaNihG14T308Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="96565397"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 04:59:29 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 04:59:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 04:59:28 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 04:59:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZqTV+WBD/u9wqf34ljc0PcRNyBOfV1mWEDRB5Iy+ducB5/O750fFKl9ljf6G7J4f0vMjksR/c71mrJuXC7MLPXfMQj2pOf9jB7kn0Xwa7tiybhYA7Lx8g3OHQODFxJuyEf+ttUbhMPqoqcwjZ+53p3i1E90umGU90CBOcNPn3ulinP88gfRrRlTD5GXtYRzVEwzmL82KoYCdTdiC5CKAG9ues2QBwFNflQ14RRed6NSUgscGfakKseUoyMcJdKD64yg/uKzAFO2YIvirOT9aJs/sXcu6FUaukFVTAeCbYgUnucLJMTo3/z3pVmr5oZhFvtfUZCsgaLPxMBiuAbBQPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVnwfcs44eBg3zGZ03lJGGKu5wE7wvIHdCTvBoKfXvc=;
 b=yHMZEvyvslIrhfUtjFF++1HhYAxY3QpRu7v7p2xaYVhkr7erBwwXfRZeN2Se5OY21WWGcFG1GE9AMUfpPgjhZSDVRseDI+l7dhI5uXTau91riTAQsprl2S7NTl4NShxggl/K7EEILnqSc2PR7f6EHuG1FtZT2PfJ2Relt3uWz7kUbjJiXUdfgWFBYA9yF0QawAt5iUk9B/NDg8v/fQ17Agdndy1E7zf/uuBH8FCpZWBCr51faQUl8rkn2ZuuVGFMgRLJKkW6DydOKeKPiKA4tCIpJoSgk2/eAvhoWCi2c++5AXl4jdCLxwInJt5CMecbUotPpzVG4BTvIoHJNqrn3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by SJ2PR11MB8538.namprd11.prod.outlook.com (2603:10b6:a03:578::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.15; Fri, 29 Nov
 2024 12:59:26 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::c7ea:ab4f:35f9:9b07]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::c7ea:ab4f:35f9:9b07%7]) with mapi id 15.20.8207.014; Fri, 29 Nov 2024
 12:59:26 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew@lunn.ch>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>
Thread-Topic: [PATCH iwl-net] ice: fix incorrect PHY settings for 100 GB/s
Thread-Index: AQHbP+0+/jmF4KnFUU6JzgEAAJ1pD7LJ1TWAgAEci0CAAesqgIAABi4AgAA9AwCAARygEA==
Date: Fri, 29 Nov 2024 12:59:25 +0000
Message-ID: <PH0PR11MB490450E38EC6282431DCBE8D942A2@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
 <946b6621-fd35-46b9-84ee-37de14195610@lunn.ch>
 <PH0PR11MB4904824FA658713F78CA404D94282@PH0PR11MB4904.namprd11.prod.outlook.com>
 <6cca6089-ed72-407a-8f23-70bb67b42e63@intel.com>
 <1c95b010-cb57-4864-aa0b-82b7093f44d1@lunn.ch>
 <Z0jLiisnLOTSvbaW@hoboy.vegasvil.org>
In-Reply-To: <Z0jLiisnLOTSvbaW@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|SJ2PR11MB8538:EE_
x-ms-office365-filtering-correlation-id: 7e549073-764d-4a11-a079-08dd1075a748
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sba7G4oaSgdXp4noFEaH4Bgg0/tG+IeAXUn9bIu2yunwJZmL6xezB0LEwYaO?=
 =?us-ascii?Q?dTYOMGPHONs9Rnda97UCKYq3gjhzVIXIoWD24KemDz2cAAAhdn401D3dcf3u?=
 =?us-ascii?Q?sxi2MrEKshXRCsR/8xUXEopcbzix9cVO3DzipdXOfZ5SJlU7Y3BCPgcbhlHa?=
 =?us-ascii?Q?HV91UMAw7Vwe4uAH7Vfvw/xz2+OcZ5l4OKqPMa/MGyTIFRQ9gYYjqdYwDucg?=
 =?us-ascii?Q?8w5CR7xEff/+wSbf/jYcLFE2UPk/r26W/LLrA17TI7qlzUIaMjJr+aN5l/dT?=
 =?us-ascii?Q?12Q0oTXOYqMWpcjiSIIhcOF3yM9FxVl2sYL8Gm2+I94RftlhWUFfZvdcW66C?=
 =?us-ascii?Q?1dpaHm/vwNsKEnZjVWIVbIsXMHvqsJ8Qa+bcH8P+6KrpTs3bwoRgKMmwqPN5?=
 =?us-ascii?Q?lhgokOrNFVPdSPgZUrzF7SSwn++K0XiUtiDRKhpREbQZL7WjQpo1Iwg4VXuB?=
 =?us-ascii?Q?9dfHC1vFrqiypNknEA058EmUOZZ6TCOpYf4HcPmC6GZd+e2JlJUN5P+glPXM?=
 =?us-ascii?Q?vQduTcArXNcM0qYxU6Y7FLitsS8thv33X+gcvRfa/HExn3RAtIGApzX2kvb/?=
 =?us-ascii?Q?cFlnLQBkXielFCNm9f1a2rgiFEMhzHYBrZ61QRGtq2sgz1G2mfvfDLSvpy7S?=
 =?us-ascii?Q?K7LC5WXQ964RwTYkDuQnog5XZ+iuXhkL3gMxIYQ201hlb/la/ZNgpck4BI1O?=
 =?us-ascii?Q?YFHYYkmTzj9vN9jHITVJ2HoALV/kjxUF+tDn829ojpI4IOcrM0BHHbpVlYvk?=
 =?us-ascii?Q?shu/DO7LUtSB1cGp4VXAjM/KeBp3mWrGZqoopzprFTFxwsnDY/hmNkEv3/uW?=
 =?us-ascii?Q?cy1LbHsCBUE4HZ1DNAhl6yOfwXPq+SKbldARVuaRWmIoimh7LekMprVZ9ynO?=
 =?us-ascii?Q?v0812wpZlwDWMxu9uQjtC1W6MUWGb7fyQRrOjQdRxhb6vDCm0IYzSrlWhX2X?=
 =?us-ascii?Q?iaXHtibJotF+AZMxezcn0P8lF26qL7mfv8KSJWcQ8ON+BSHK1ksNBS69v3Kv?=
 =?us-ascii?Q?3r4WcZtoWpGr0n5TTZigA4ak7QNoZBnU1NrrH8qXzyJiUeR754vw/XnigHSD?=
 =?us-ascii?Q?GNX/UlsgJNUK86m4C44pPTXODyA3taMOMj+91brRokuXIoyueOGmrjpTOCdm?=
 =?us-ascii?Q?bbiLj2yACPBB/EJ2+piMdOEEMj9VVu69laPcqSLoM4EUTg9ortItPNdZRCXd?=
 =?us-ascii?Q?ckyDGCSLP0W+p+GRRb6XeN/pqvAz3DvY1CHb+sydJ7GaPED3bmrgdFfLQwj+?=
 =?us-ascii?Q?+paguYT+5VP+Of2M/7vg3uvLEsT+3DzN52jrNNXhmNnqdenNZemDG8SaEzmU?=
 =?us-ascii?Q?w0eyT5pBXRcP3rUAlU1j/D7nyhjwETM7g5UNi+Dc4PaZ3TLo60TNQZO5s+oi?=
 =?us-ascii?Q?qdQOk+lNL2ajBzna7D2RRt1HD750TXFzweLvbGxGB1k1t4Ewnw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G0YW0qT3DQT7Bs34b2iiK0d49Bgv6Aoz92+sH082LjUSKuvGgcO5UT/Aqdl7?=
 =?us-ascii?Q?FTCMtZ1BBDvUquu8BGC/WtEBl32rIe8gMPi+nUrSzzObwvOy+SUQdj9Nnb4J?=
 =?us-ascii?Q?Mw+DqnkctyVOJxmsw6zCu/Q5QGNEiaKfmDUf5QoY16aDltAvuEWmfDWdx4n5?=
 =?us-ascii?Q?bSAPfKvBeRdYln9dKpmllDjAJA6SuyU7Di4/WXtfnwWQzzkRcO6ABguX5Iaw?=
 =?us-ascii?Q?B6hKfrDbGcl872ArlWm4PVDHz1tDlr4lF+NubVwc9BDbfnTUPncGKDgcnpdt?=
 =?us-ascii?Q?i4bxKr/IUQVfcrRY8FSHes1JLsgStmgXby4rH7nER9SiqErmh8II7IojErYz?=
 =?us-ascii?Q?5wVr6p14pwRFLI7E7BqlEDfQxsDY1iP1DopC7R7kRlvV5pBotbu8WI0PjlSn?=
 =?us-ascii?Q?OVsa/rDm3tXsmhtqxALf1I48YkdUZscdhy9feeZd0r6EZp2WAiU0Xlgq14YQ?=
 =?us-ascii?Q?I5TpvY32vwAX5nfKMpryMIQrQswCxZvl6+Hx934wvGFqKK+j0Bk7A64Zxcea?=
 =?us-ascii?Q?x9jh6KK4Tf3SeMhxDEA9DAmwVqwtbBVo4mMo4bvyIARzC/VZbcFad2IPgYME?=
 =?us-ascii?Q?UYq/ZUcPX058onkkjX3815H835ff/RhgItGD0C2vrL0GdjUGpZEhC8cxQM5A?=
 =?us-ascii?Q?IKwa4bMJOi8ZfwpGfsWvee2Cs4Q0BCxlp/GAn9CEtNcTSQ/JBeAhEv9qQ/nT?=
 =?us-ascii?Q?kQ46dGwPn6CLw8fCMeQaBU5huLT3AVfXK8y2QVG3IM9BFEKfBh46ap1oYmDq?=
 =?us-ascii?Q?zKdfSS3pnPAGYR/eJAdHXjvOUAZJrc1c0W9rJrvVJiI2yS8DAmHuZb5Hy0d+?=
 =?us-ascii?Q?AgL8Ai2AJ0iIS66zE7Hubgh3ZRqhmmWg3p5Jb3U5YEpwuPk5QeZ46UFBysXP?=
 =?us-ascii?Q?W+LPRcwt6El+bX8/aUJ4I1aenz951exTFOvyEnWZrzGIU/FUHGN2TPXr2qpT?=
 =?us-ascii?Q?qtcHBZN4Iw+AsHEMTHNAyclJ0Hicw0Ye+xLaTihA+71lHyNu4e7tzWekZtbP?=
 =?us-ascii?Q?zQDKP4oNIm7VK5WF2rrXWvS85sf/A42XSdFgeU3gWz8MaKzmxAG5USzSJuwi?=
 =?us-ascii?Q?tqk/fvX0HfVPfXl2ycggLppYuBF8PADDvWQ9botjY9H+xIwbgv15d+AwS7ue?=
 =?us-ascii?Q?t9eYyXyrs/9wUNnkkSs8GC59/WbnxjnaBWxAdziJg37VKxXbp1vSMorb+Xpa?=
 =?us-ascii?Q?eyC9G03adGPCMxulsTlrx/LJkSJK9UBL6VGWbFiW7pzzCkXONhJl9hBwgvOk?=
 =?us-ascii?Q?2B/PsRN9qgU3QpxbiL9tdy+L33g3tM2eGxjJYF1mXaORc38zTH089GxZ7B3P?=
 =?us-ascii?Q?NU7q+GGlojY+YlJByRYAHSya/o76hB6K5sdRrHEYYafmC/J6QgQzj/u1H2Ue?=
 =?us-ascii?Q?1gj2cP1WV6o6G4/uxv2cYEJNVT7eB0uulTFaqgcYXsWVsD4Ks+ym1r9i1dWJ?=
 =?us-ascii?Q?8atMRQXQHtbAcDXS/x4fhJybMjAR2CvRxc1AOQhbpH9duunQ9cFYaYx8WB8q?=
 =?us-ascii?Q?Kyf4/4OFqTiCXT7Z3w1EM+URgI5tpDWAiNOIEnZ0U5apDJW6Ym24Tr1lwZuV?=
 =?us-ascii?Q?nvrX36CaDqbnNQzDOESynfNilhhw+0J3MPMGYjD2uj6OHz5amcBk8EM5e6Z4?=
 =?us-ascii?Q?GA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e549073-764d-4a11-a079-08dd1075a748
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2024 12:59:26.0092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: as4WNaDUVVXcT8ZpCuerXD/Z3MyBp5thoIBfuiBwbMmhH6T/kHqq0wfzaP+ifa4Emcl3JfVpO1AxugWGNnan3K42uw909DmcFpClHFLk57w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8538
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732885171; x=1764421171;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+zz7DLWAZHlD/JHQBBGMD+o7c79LdUhdYG474R6m8yo=;
 b=ZKOrn/cPOKHhU5noGNopE+O02V0YAN7yKS9wHEG3niM9Eg2fVGYFVi8g
 NrvhVzNPMBmmNx1C53V7acDZHWep6z/K7IYXlm8A/45E6oOXpiLZuHf6W
 x6kIR8J6pBt7pQ690G3VdeA3O0DZd2f8yF0xe1ITYMZ8P8R1pnKAaqY/a
 hKkeSkxekk80+9i/arVPHJyDZR2Yh9wUPY3nUixC478ySxgx3WbOQWgcA
 cOMOffj6G1se47RQ9fyGgrk5krGAnkx7yVzfm/fy8CDKNE+yVO1aaRY0Q
 Iu4MhTDvl14WbPM8UWKCwZfb4A4oSmj/72Ioxia8eF/xz3Pu/JsI2e5O5
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZKOrn/cP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
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

> On Thu, Nov 28, 2024 at 05:20:44PM +0100, Andrew Lunn wrote:
>=20
> > "only Intel's driver" is a bit of a worry. Part of being a Maintainer
> > is to ensure that all drivers behave the same. There should not be any
> > difference between an Intel PTP device, a Marvell PTP devices, a
> > Microchip PTP device etc. They should all implement the API in a
> > uniform way.
>=20
> Yes, and I appreciate it being on CC even for driver changes.
>=20
> > What i have also seen is that if one driver gets something wrong,
> > other drivers might as well.
>=20
> Yeah, unfortunately there are many device drivers (not just PTP/network d=
rivers)
> that get things wrong.  These are then copied by the authors of new drive=
rs, and
> so on.
>=20
> Thanks,
> Richard

Sure, thanks! Will keep in mind for the future : )
Thanks,=20
Przmek
