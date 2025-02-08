Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFE4A2D1E5
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Feb 2025 01:09:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F95C4274E;
	Sat,  8 Feb 2025 00:09:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4zVjTuoAfLoZ; Sat,  8 Feb 2025 00:09:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97D3A426D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738973362;
	bh=x83MY//Z4URbJsD+LBaNeOTKrYMRbR4q9PDHm27WbKw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ubwGIoFlg7GBBmysPLKPT83CPTFBA9viuFjSLIrvRcyg7yFGBUtUvlBNztAZ912th
	 6xhv5DHMDgXfHcTSLJw8+zVj5FjMNpZH/+CpjNEgYYmoWje9p5TCoCrFHvBd8s+2Fn
	 cUKAhj12FCV0hOECVI3vvqcoRVMydkE46eUhfU/Ll9nkVzVGyRwNVDZhT/89zi5MDr
	 4Ls20FLGiYNzGLTf3PdR1bE1jLfW1nkiaGFzhfoG5Jm5tTWdRibHmKbzcEMUE1IdHu
	 zzvwa2rZRd2XEY0mb3K4I9Dqf4vlWzfIh+GgK/GmHUxQc5K01i9i+VCL+MlJRyASAj
	 QTmp7h+8hhq3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97D3A426D5;
	Sat,  8 Feb 2025 00:09:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 51325E4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 00:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40A5440163
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 00:09:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2h9PGnpJcXWh for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Feb 2025 00:09:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 34554400AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34554400AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34554400AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 00:09:18 +0000 (UTC)
X-CSE-ConnectionGUID: EE7ilvV2TMKBinkdosdttA==
X-CSE-MsgGUID: WZo14/hNRxyBYwT1kNVLyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39753753"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39753753"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 16:09:18 -0800
X-CSE-ConnectionGUID: jgLQKLuqSJasAaFdKdy7WQ==
X-CSE-MsgGUID: Yw8oQSlsTSKRuvPk0oxttQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112293887"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2025 16:09:17 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Feb 2025 16:09:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Feb 2025 16:09:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Feb 2025 16:09:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uQGJjyR4LHBjllAjVkq2TftGu/fc6bhe6uQfq3hetM4pFFEu4YYy7BOy62e8J0xJG58Am6dnol5hQzwMTNoDeYSJ1oAOZpTguZSG7VcudUuk9WraOP6PRibz5ejBRRkBCzFouKSwuq4lt3sJIXHR2uw+WeKnpehk0psmJ048+yBvG3uCR+aNfcaQ0pd0CxzRFxpDy2yaw3jkS6kqbfXnwDkhnEDI6FzZPkaiW1fAcXcAsyjZqUNgOOuZlQnoPDo1dm6gRs6+IQ2apzDXQI3a3U4KREs8OaMct88LGrvEm25HTrhaI3KvjTqDQMXnuEWQ7f1QVCKbIjMn6dAvPITp8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x83MY//Z4URbJsD+LBaNeOTKrYMRbR4q9PDHm27WbKw=;
 b=SrQqTTfJrHzJ6kDaT07pmS0dXDVhYb8ayh5CLlY2ITQIlCCBPX1JsmBk6bqvrQiDU+2JV9ru8Ml84jecX+NLaKNCghC3tlPnNU4gWdirepo2xao2jNPaxLIahY7fJOlQLgp4ri3nuDdEXgQJY6eCP0/RpMbkY5Wlugw22AJYP/PDkIqcj8kVjAwn1oT5GMb5oz8MP4/Z6sYTexM0Wf8qA34+6WBR0sPpyM5jV3V3umLQ18fy3wlePMqz1AYU9a33kXjDO3+hPlXG1IPhkf/OsYPSB+/Stt8A0J9jC+WvopgkvG60FNTn8J0/yNCmwphCBCL+8C4F2iQ870qTArF6iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MN2PR11MB4599.namprd11.prod.outlook.com (2603:10b6:208:26d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Sat, 8 Feb
 2025 00:09:07 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8422.011; Sat, 8 Feb 2025
 00:09:06 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] idpf: call
 set_real_num_queues in idpf_open
Thread-Index: AQHbd3IlDFacXODaBU+YzQSHm9Emq7M8i5Kg
Date: Sat, 8 Feb 2025 00:09:06 +0000
Message-ID: <SJ1PR11MB62977AB3834C08D639C681059BF02@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250205020811.2839702-1-joshua.a.hay@intel.com>
In-Reply-To: <20250205020811.2839702-1-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MN2PR11MB4599:EE_
x-ms-office365-filtering-correlation-id: 95472889-a8ab-4779-e191-08dd47d4cdad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VEI8HedCXq2fXqoWKG71hpwAwNNGLbc9O7VM6IYZD9XCjuQFJHWBS9CKaE2J?=
 =?us-ascii?Q?nVpCwjJOMkTUaKVXbmAsB8FntRTcvPTBs5sZauqRsTlKji7RQmCufso0jeWB?=
 =?us-ascii?Q?BdKJDka50jQtWqeonNB8n1c/uFFxOzRPE/5M5ZYpzwdoaq5ZI+Zkl2Mt4dQJ?=
 =?us-ascii?Q?xY/6LExrxs9AKaxeR+IjUgLWpt98qKi2ff1bl8TbAart/IsgYCazla12A7zO?=
 =?us-ascii?Q?7cN1S5XcPoOdqn+1k86Ww5xVuVI9UJwdTzrV75M+/knPDgWfj2wuyRbLD9vE?=
 =?us-ascii?Q?XbQQz2scG722hHIh27JZRirQzchuPTwL3DdJsvly8ZtVK+P70zStognmG4jj?=
 =?us-ascii?Q?QaGjdCN9LlbeOw8NHWvyCL1w2p1o7S7lfmZSg9UOxhHbafB617F1KbEZ87wK?=
 =?us-ascii?Q?VK0RranjlYsWppSEBClJypxKtGJ6RxTFfA7eCZJPhA0AFFmvlxFN+sWbK9De?=
 =?us-ascii?Q?2o0vqAS7CnEPYi3jHwGs0qRWEL+GgAC6E5kIbKxa8pVq4KpMWGioXXoFa5Nz?=
 =?us-ascii?Q?NGjv3hcSSy60SoKXzWqcPjnh+YNvTt8UjxF4KoJESt4tNCdDliK/d+33ba5/?=
 =?us-ascii?Q?WExx2vct1NBIJtZfo4f7fdTOgcT2gk3DuJ+ySiXcr2Wk+RTbZForJ5abZ38i?=
 =?us-ascii?Q?+99Brsg6JOu3Si1bDFD8mzV70biI8/n7OFSr1ifOoS4zbhS3DK6/kq6X4mxl?=
 =?us-ascii?Q?mAJsTISKpkCnaLpuvqaOd7ThpRfMM5CfC/gCjgsA/BS2SMbb8yo5xCPBoZpW?=
 =?us-ascii?Q?2Bf07C5bUrNVqg/qUkjCian1r1gpIgJ4LNPhB2chbxlZ0Q3PM8JyRQT0WZRX?=
 =?us-ascii?Q?FymlODZ0RCPh9iAg6DSC4B7jC4x0na1fWSIazbQdHycEdOsTRbpuVt8y3ZPL?=
 =?us-ascii?Q?76wdROcL2rRzZXBO29qBF8hFUFsD0CmK1PsUsgWBJKyyz7ylNapRRf4tcfNQ?=
 =?us-ascii?Q?uDhAFgKrjG0fW1eWNfrDU2Yg1WPJd3gyCQvGm1f8cu6rXXtBVOyiTPjhwEsp?=
 =?us-ascii?Q?Ajf0hWIF1/D/S1kKvlK/3K19QeE87q/4HU9DOuinj2jM6IQvYHVxcM8Qy3oh?=
 =?us-ascii?Q?64ieLuEbEP1b78WzXlqkCsiwx8HEm7Jf+vk+W3u2cErz9gUMI6t/r8irEPOU?=
 =?us-ascii?Q?ynuoXXip1IbVedI5EtY9/VIWzG4b5SNgJ5BNYBXQRaNqV4lQL/xpHAZGe3wH?=
 =?us-ascii?Q?yqfFm1JYgQayRUga68B4ZOx8MDDAMTOEc/SrXosZMu8rDq5xDoCaaL7cLeej?=
 =?us-ascii?Q?+0GdzHDacFwMV99m5wHOKN3TCTy4pmF6bmp5oPKJEUgaTP44c4tAYCXPllR9?=
 =?us-ascii?Q?1xBjPIkKF0OOhEBdERh9Fo72VhVkK5It6q6OHoDI+IGU22jjgUWHvzDZudip?=
 =?us-ascii?Q?hyEMeEg8HOWttcHqI3YjU+O6mgF9BsRfhr1jD0hzJsYcEyVVDi3sni1la2Eo?=
 =?us-ascii?Q?3hwrThD9XMZjENg6mdeefluhCaumXec/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JXwbAhsyzg7W4ddZw0cGQqR3I8l5lgJJbSMgQk4rGOBTYofRBh/7kCQZDqjW?=
 =?us-ascii?Q?TPff10hVOQAJo3bTN6UQ8IRFDU/avb/Gpp4CMG7WHURqNL/W3l9e0uoxSq9S?=
 =?us-ascii?Q?IT/a9RAsb+JXQ954bkpDzV+XLotg6nMgNcT/71r3hqF/7+lZCjW0Mt2ODgDb?=
 =?us-ascii?Q?heqg5Z/rJ/ZHd/Rf8vOB7sQm90DQxfW1J1PZXhrrCKHqhV753u5r97uvBKQv?=
 =?us-ascii?Q?Xmox3xBgZ8oJTmIhE2oApoqyExyJFwxoWoL9T89ZdqpVsExl3k1OHWnJzeJM?=
 =?us-ascii?Q?CyIAzTwppHwuF1rJns3vTaaI2ENaX/wgf7PXTAau+sSfZ+36iMRXUIQbliho?=
 =?us-ascii?Q?5EHLZdun/WFcE+AJDYO8Ye5E4x4Yt8CdSh1zFXohcY8zVtB7M2i6qiENO1rU?=
 =?us-ascii?Q?2rH2Tuo+rtZtGnWDcBF32B1PIiHI6ACReGq5rqI1GZhIMCAMeknMsI1ijoN7?=
 =?us-ascii?Q?a8Lrq3j10+YbFl7SBu7awv5rQOrMWmeq9VCTYCQrlna9FXyjFIo7ilJ01f97?=
 =?us-ascii?Q?nlTVii+mJuXibI4RrbYlHZP6DjsqPa8qbBSkgleJKh2hXoBc907gLOjAWPB1?=
 =?us-ascii?Q?eHN1UbtyFKNiuKLBa4a27J45/x9BggvgY+wcJAyBorBI2i7UavOraAtGBsvw?=
 =?us-ascii?Q?4Fm9MOjiq6BEnJSLkJLuSn7TJA8gHfDfa+Ji9ZXUdFw6azY+HbyK14dqpSO3?=
 =?us-ascii?Q?YmYlX4H6cs09J4fKlHZfdrXksZabEZnlxYIl+nwdDWDwH9ap0b/kJLHXoGiK?=
 =?us-ascii?Q?YkfwSvq6r7MdAjz2Wtx/r1U6gQAo/HokWPNVxwd73h67MDuNTLvVWzLEdx/5?=
 =?us-ascii?Q?RQCtPdPoJGQYHg4Da5fEdV8FZg0bZL75uKf5SBVGi5CbcZ4mwhyvkGR3f+99?=
 =?us-ascii?Q?eDTyzxvytvRLY9/Pz6BStB58BP+wTIUxjH3/5JL4M1jsMeB3k0O0bhzhCcz8?=
 =?us-ascii?Q?IiR3BBKyy76dN9LO6lskOP6vHWu2iJKC0m4Wi1lINGkfSwDUuBU3uS1+5XRK?=
 =?us-ascii?Q?2JZB2s2T2enlpOX/DMPSe4f1A+1fp7W9JEtFCG0pc3dtx+m56XwIlxRrBH4k?=
 =?us-ascii?Q?VPRqksfTmgr4E630BxNEEONGm/anMdw4Zw1IIPXcxEsj4J7b+WtPcqvnXN56?=
 =?us-ascii?Q?su2QTPAaR2/DE2Dw6CvFmpR7Jr3UOY3JL3EzCEtCVAcdQgsJ8GwgPDEJsJaf?=
 =?us-ascii?Q?2aZDIM0duKriI8Q31/AfeuHagcuTix3f5rnYhiygiU6UmBOBE8TxIhbOJGRS?=
 =?us-ascii?Q?1k7tEO31mWcbqY72Mkz9wwGiYc/20NK0QBuvvzoGdjb95LNgvPXh+Eadrkpy?=
 =?us-ascii?Q?/88BfqroR8ocoxEWNEplSteN/Dm39c7WKJ2duW+fe2kT+9r96THU7FBtzE2E?=
 =?us-ascii?Q?cAPTmNWRiFqOHEM9XE2ebxSXjj6UNI1ZiQZpaPZ4DJpnH5FO0TeEKCq2/kxP?=
 =?us-ascii?Q?hdwTR1bdrOPPML/nlOGYd4503caMj+3o3PfigbDUqqZlEn4svNvfBoaIHtX+?=
 =?us-ascii?Q?6FA6NYkugQPQfC81m6KSmhMY5BhhrrGS/PEhZbRuhTg6Bo5m3kwWpD7lmFGC?=
 =?us-ascii?Q?77E1BVO6aaMVyMC1rAopcy/B2MATwg8MP0RsHW6k?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95472889-a8ab-4779-e191-08dd47d4cdad
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2025 00:09:06.5744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ndmEnnWOo7sqhne8zXGh1KtUhzxTh0R5ljVTlSYOSvBVHQdDajcfKoyfdXrv+yCHMNXWeqfoma9z4r1Yd2/fKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4599
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738973360; x=1770509360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dfSRZYJQHwFz9fkbPoqOk6JlgeH/z/y9AcMEJ+I1AcA=;
 b=ERb0JfVQwoJligu+xaR8ixw+Njpd5QWuMOCb9ioFjsb8OhZLuwBKYFFi
 RJ4D5FkO14Y3rZZ1fKDiSIKJDUxPYK4F/UF+bMV3C4XxQrvw89Jhx56Yb
 eBq0CUlJ0fkFYqQPiWyv8SKc1nfEWZJYw9bhTRAinLDtzEb88wdqxGEzE
 ZUc5347ngqytdDzZvcKu8IppIkyj0qSWMsaelgwcfTlrN9ViD0nAtfIIS
 YNX8PC2wa7dRcQncV9dS+0ihwj0+sBKe6a9YYFrSZQ7+KbYl6Gnk5vS84
 MDnhfUcbVas3qCNbldi8qWyyBkkKWYtkASCyd8ORjUUv8zzYet3s7QnhJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ERb0JfVQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: call
 set_real_num_queues in idpf_open
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Tuesday, February 4, 2025 6:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Samudrala, Sridhar <sridhar.samudrala@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: call set_real_num_que=
ues in
> idpf_open
>=20
> On initial driver load, alloc_etherdev_mqs is called with whatever max qu=
eue
> values are provided by the control plane. However, if the driver is loade=
d on a
> system where num_online_cpus() returns less than the max queues, the
> netdev will think there are more queues than are actually available. Only
> num_online_cpus() will be allocated, but
> skb_get_queue_mapping(skb) could possibly return an index beyond the
> range of allocated queues. Consequently, the packet is silently dropped a=
nd it
> appears as if TX is broken.
>=20
> Set the real number of queues during open so the netdev knows how many
> queues will be allocated.
>=20
> v2:
> - call set_real_num_queues in idpf_open. Previous change called
>   set_real_num_queues function in idpf_up_complete, but it is possible
>   for up_complete to be called without holding the RTNL lock. If user
>   brings up interface, then issues a reset, the init_task will call
>   idpf_vport_open->idpf_up_complete. Since this is initiated by the
>   driver, the RTNL lock is not taken.
> - adjust title to reflect new changes.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
