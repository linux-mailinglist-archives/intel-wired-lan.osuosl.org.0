Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4999BB182
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 11:50:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A061606F3;
	Mon,  4 Nov 2024 10:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R1Vceb_CCaxQ; Mon,  4 Nov 2024 10:50:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7C0F606E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730717431;
	bh=t1SPKtLsJJcRrZqUx7nvW96xar/tftekl+oiqEljCTo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MStKx/Kz1vWoH+RTFf/m+KD71ckz8o06kXNKEDJeIZF6g4Zlc3A9tkuyKPZvue94R
	 qOyKozkEsmw59il/QCBffZEMABNU5MkUA8uyhCxIJPQPHZ8jsx4VslC85p/uWykQsf
	 DQeHX6RjmzbxF4/Cngah7dOKzVG1AuN6nG3wKRQ+blbeijuH4V5/4kXPQT+fyQooBI
	 VXukycLIY6XiCjr6uYQZbjEffB80Jf0GUKmNsU329jkrMltYbUCvPoRa9g9C3825vi
	 akqOxuIK1WcdxRu5DEke+7qIMI1NuuKkZf4vPkuMfGTJq/9d9w/ncRpzsqnJJGFEDW
	 abv3AWuzzBnVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7C0F606E1;
	Mon,  4 Nov 2024 10:50:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 84BB0723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 656ED605AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EDv8-y5cJ01a for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 10:50:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 72703605FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72703605FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72703605FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:50:27 +0000 (UTC)
X-CSE-ConnectionGUID: IT5z7MZSQ+y5JlB9xCdbtQ==
X-CSE-MsgGUID: z/eb5t+5SH2ErkkyUOc44A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30584194"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30584194"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:50:27 -0800
X-CSE-ConnectionGUID: EnFVgcQBSGGPBxX7+6kbVg==
X-CSE-MsgGUID: jMSNlQpBTQ+tCX3jXRnihg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="88442472"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 02:50:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 02:50:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 02:50:26 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 02:50:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oMYE0oqsT/GmVUhENGqhRZL5bzACbB048zcFFmO4QPuAAaKePKQYFFhL0cJo6HSEThb/89nO+3Q7fTWXL/wvdDp9M16rh/AYaDvSoOz04umWvu+sGNUJ0WjjWmzt4c1vlGkk3E05bjppBcYbd4tORvoSC6v1yVJKS6b4ErFgZV0DklP1M0MZ5GeivIOAGwTmbpV3lCLDdpcsJ4EEwa9QfxOfR9f0BLG2DKwaZb1KutTBWfYm8lCwQzELqEIvc+qczba+XvANHs1LEiZ2lVSai3qvXBc262/RNHyIeECv2gY9WDUoc6g1EUzwL2QFQcPXIQmnE1gWBG7MrYvd3cxB0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t1SPKtLsJJcRrZqUx7nvW96xar/tftekl+oiqEljCTo=;
 b=ofZ0W7Sz2pX8kXDBgUO3KDjTb6Bpw0LKNELLzzMBQuqGo4HggS+pSmZ7oZAP5lmKiahJV4RJ75x7c2HYMe+Yxz2xkmVxTz9ditEkAa4lO4PlGLm489ZcbcIoXY8EukRLfuTx+R9ETs/DHkaC8ChFnhbpD8AESFqFvgBfxGPCb+bWxokUCLKfUDND/KU/LF83NbvnaivgG2A4oFwP4eBv5h0qj3KSWTTsKtZmwn8/oLb/RzCSW1rYUJzxbX1KYoHS9aMS2sk0jL6BRuAznmZx8L9Yb9odlJjIAiK385Ck/g8l8KQX7ZilcFdacUDewHl90MvR8TGT71b0RmECyxcdoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA2PR11MB5049.namprd11.prod.outlook.com (2603:10b6:806:11b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 10:50:18 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 10:50:18 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon Horman <horms@kernel.org>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 01/14] virtchnl: add
 support for enabling PTP on iAVF
Thread-Index: AQHbJEUQ1ln2BR7xhkChPiMAiDO0WbKnBe7g
Date: Mon, 4 Nov 2024 10:50:18 +0000
Message-ID: <SJ0PR11MB58650D076D2F8A982AD1EFE28F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-2-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-2-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA2PR11MB5049:EE_
x-ms-office365-filtering-correlation-id: 6691a265-5608-40d5-c38a-08dcfcbe793c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gkjsXEhtQ5G/GkOtyUF3RZxjP030Uiw/v+j27CtPXTKg+1/WqKarRF6L5SKu?=
 =?us-ascii?Q?btBR3lm9mQUFuBZXRRrJOwllnsLKLE8HPP65dOsttZcq8+6ZHngdF+psXrhL?=
 =?us-ascii?Q?F5wxZlBlejadEjA2ov/G+kKzxJbms7m6s7xph2vWLHE/D9E6vvaGQpxMOlmT?=
 =?us-ascii?Q?xbuZ+2ETtf6aRRMKsAoBscayzD0dNdpWcFqWqswP00jaJIzRnriis3qUPUn4?=
 =?us-ascii?Q?rW11v/JdccCzSu2M7EsIvJqHNlZDIUtsvasa2nVR+g5s/JRh1OPKacOlAzTO?=
 =?us-ascii?Q?6Hvg/Fg9tYiOEuZCP/Mcnx/UXSP8KFcpAYDZ9ZQ4wOxfmjNIv4GUELMCzb65?=
 =?us-ascii?Q?pLDw3Gw1/D4QqiSSUBpNcyTDluOVGEFOhxR4/6ATkU/SC0LoQnZ7JOBsg3V7?=
 =?us-ascii?Q?CNvjdfDnPQNqbmoYXIREKtKQpTT+1XMNozJMl5ge6fUB7tb9pZupcKbHsV8C?=
 =?us-ascii?Q?EARlEfjiIJqm3pVgKpqrJ96EXg/LqKnLdASK9/8EBXJfr7KtPwzAB4wEIoOk?=
 =?us-ascii?Q?B1VV77rYzgvkFS9Z2IvrrIDQV1EYPd+r9jCwdjcHr4QToqoKdGwXt4NStcUt?=
 =?us-ascii?Q?zuDtTl5xSLmC9HP1gUDs2LqH/i05wqAKCdMMVoDFRsx2bA+hJcGRuYvDUdpE?=
 =?us-ascii?Q?81kGNJOMDRR6mqeMWupm7ZHUbtQovZ8Fj7UZzpcR6bEMl+uRTgEytSdg6FB2?=
 =?us-ascii?Q?gwJYYMmEaNdJi2mSQxcF75xmOOUFki8PyMendMYdVEw/72UQo5MH3ZPz7laM?=
 =?us-ascii?Q?TKwPmz0hOZd8C4AT0dH+RjVRLRBDt18n9DlJykF6tK4sJPpKiy9Uk9BeQDDI?=
 =?us-ascii?Q?mb06QFN45Rw2r1tr4i+0Udev+noK1EOFv655UFWMthUfxjsqPCWaCTtOVdPV?=
 =?us-ascii?Q?6owaosjje9SVhevj7yEmbV6batyGdEoEeFxIyhW4/QEVhsC0gUvMmDce2WfA?=
 =?us-ascii?Q?wc5/d5u61kTa9R6cBs+mWwuyeSmmabrdS/7TBa0HKBA4ususHXV3Dkuvg+Xs?=
 =?us-ascii?Q?yREWhLDLK5eeMkQxDiL9+yOhll9eFGcF6WOoE1ZF4KuXjfAf+byGhz3X61u7?=
 =?us-ascii?Q?d5t9obQ3DLUl/8EZ4J+qlDwZzQJZqmuC92kMSgl6phY9J3Li0cu+forUBdu3?=
 =?us-ascii?Q?J0fp+Muvi4PcwyFE/LyDYmNk5KECWtc2LFIFByoYVPSUro3pmq6Ev1Eaw5FW?=
 =?us-ascii?Q?r0u4frMhy9pIdXGvl7wRDIIsauoqFoKSOca2UI9/rfz+U3GHXKKadrcAaVZO?=
 =?us-ascii?Q?7xK8EtL23Tr51QCy3eVeY529/62UlyBVvEXLaciEhEaPQJ1tCKN0Q8Ealx10?=
 =?us-ascii?Q?X+eWElrDDen/e7JQ7bHQH0AntTiwH9wZjP3KwqXMwE8A2oW3vcxQVulUb5km?=
 =?us-ascii?Q?7CMzZ0Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sIZHQb43+4DHR6vRuW4e5iMFtzPMMA3sSUj7THy/Z++eB0DSV/s3wJkSfC9H?=
 =?us-ascii?Q?WVa4itvgssggA2w2JeWuHZS97p9D2qJV006u8TU+lYYwxgJ7lWDj3OTQIw7w?=
 =?us-ascii?Q?vrS4XitCHgD2NKE/IuFOOZln4W7jfM9+vjkRWuK7TQwhDuYEMcnIOSxPJ84/?=
 =?us-ascii?Q?zC0o1AQAICljJy3CYoI7kCqVJ4m5x22e07C2eJ5/zZ+yL17Yivwg/HoRZGFy?=
 =?us-ascii?Q?o8b5AmMEMeEP/etFC8G4vID5qpvGarKkBSHtXgXFQeyy1gcPUDdfLGqDOAUt?=
 =?us-ascii?Q?UiBB3dEq6rj1yXkfxpoETv6ni6k2AV3Y64zKQpc5G3+nCkY7bgrayca5yys5?=
 =?us-ascii?Q?hEZ4KS5e3gGmVhYBpBnnNzKQloXDS0ZkLDxVc+MWAf8kdNq5HjGJiXMOsfVi?=
 =?us-ascii?Q?3PIv4m+9T3gLvQH5lNnDLMHV+jkDzsGFq+SmW4YWqkIb+SmqbHdA0gvboYAG?=
 =?us-ascii?Q?nWS7GrsnRf4+hbQ+xxCifvEr2uMD2Ej+m1Gmp9D8S8kzlYWDe7ZHEGJUxFU3?=
 =?us-ascii?Q?z0Yp3MBdQfEzzidwMVpduRnSBlhiaquwDP0EQuKpKzMlvJqTbBLfkSKrGi9h?=
 =?us-ascii?Q?MgCG9U4yMd07Fh/Cih0NMseWaWeMwdG0CTxklLLZ/35xH+b0KSaDts4x6o+h?=
 =?us-ascii?Q?B/ZE21tKLodQT+D0g8/aPjVzOGvdRhfIDCYIWbV/n6agHAO75W8Hd1Qlf+Tp?=
 =?us-ascii?Q?bHfoQWNnC0dd23yMX/NiQwmQSUihwFL16gODtWVXDAdcKTZ0Ea2SrUvqVvCP?=
 =?us-ascii?Q?FtOL5yB7nQRL2guHA0IwBgQnou8/wdlDZKScBL4E+7Q5cMDRrAkpWBwPkmQm?=
 =?us-ascii?Q?7pUrPmWrzNxR6CxWPeEkEztfZ7Kse46vMcKuAABvL5SJaBAO5ZzfzwmAFNA4?=
 =?us-ascii?Q?Mdi1Flw+POFtbOjIyU18pySLJls9nFmEebmgHi5P1e2jTQEF4BLjRrSictoN?=
 =?us-ascii?Q?BLOxri7JFqkF5hpzPfZsMSL2J13VSDru7gtY8klPwrLUheseCJnndhClXZAr?=
 =?us-ascii?Q?aIinQHMgBR9KsCLyIzpvsNCEbGrQfq3GBoSSFunohu1eylIUD+iXS6VP/QPA?=
 =?us-ascii?Q?WsfelU43HM9NJ2lPv4iWhdCc7zyocmDlycjRLIQUfo3U34Si5noc8hchmU+O?=
 =?us-ascii?Q?XZzwtX9paMwC+JNE+ov3pMWuAE70k3sGuSGNMPCowplRd+PqaEObOIsx//56?=
 =?us-ascii?Q?7PnHncM964WPRmVtwHhMEScmA2AZZJMzhfvJUwD4TK2NY/BoVmc9+u640v0P?=
 =?us-ascii?Q?LKPhf+BY6GxVKuob7tmFDNoksTQ4jgx60cIJ6BCbI1ndAFQsOkt6neiicNoA?=
 =?us-ascii?Q?zPXWON9uf3OA2Tz3sxyG/t26qV+XHNWp8xahFVSjWA+QMhrht4gxJhZ9GHD8?=
 =?us-ascii?Q?69X1ih5cVW7R/lZG/0hQRXOEJL5IYByqnaYYV0tirXqSJHpD77uzURng7F7n?=
 =?us-ascii?Q?7QXedqeb/Z0A1PjHkP/IapGrrXoOlweY6jV3XWVgd05zbxenwhlg2Vh5Qe8t?=
 =?us-ascii?Q?M6cs+PwRy2t43hdif2S6ayuy3r2GHOFO/OfOJcOv+SlEuj6qNg7LsLhF4LSy?=
 =?us-ascii?Q?XoNa8Tba09UJ+29oNUYWsUmK8p12ZdV/nHmgoAQFAMkLQ58XrZ0x4bvhlaS0?=
 =?us-ascii?Q?BA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6691a265-5608-40d5-c38a-08dcfcbe793c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 10:50:18.7245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lam+Rp6KQqAdrc0qfwRccEv7tDX6T0a/ZQjaCGWW8oUFvuvMBe6yVOiZ8hyjdyIPbCF4qiynwyJbPxefFv/yZ3Hc6tzTQIgAw6UmuKp9Bj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5049
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730717429; x=1762253429;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XsDtXQCCnexuYG4SdizQ2IQvBfat4bpu6LBTK7qlg/I=;
 b=Cftcdn8Pp/9QWcLuHc7uRLNYI3JlexyMjNCN4NCZ1GK/XU/8k9tDOrXH
 +31y4tD1lFtudzMNf+yAheeh0r/GGix696RND+DgDD3Nqyyx5ii1zW07U
 U7E8D6luVkr0kN621E3h2H3yD1EEu1KgGZSHGIu0Ri6rlxgCP+OFr9HHi
 A57Ag/Luwqoou7K9aI2Rf3uUeqhRlPpydUbYh0CCsJtwFjcope1QaSm0F
 al1szSXTIhhGk7f9WDmA3ZtQXjJ8CZ2gGN1lmsSiNlojeDSyyvDblStkA
 lUgbeCIoNWfpFTcaboJkHJ/7SIXn6vfn/P0SwOIjtNJwAqICL8BPW8wNe
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cftcdn8P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 01/14] virtchnl: add
 support for enabling PTP on iAVF
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; D=
rewek,
> Wojciech <wojciech.drewek@intel.com>; Rahul Rameshbabu
> <rrameshbabu@nvidia.com>; Simon Horman <horms@kernel.org>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 01/14] virtchnl: add suppo=
rt for
> enabling PTP on iAVF
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Add support for allowing a VF to enable PTP feature - Rx timestamps
>=20
> The new capability is gated by VIRTCHNL_VF_CAP_PTP, which must be set by =
the
> VF to request access to the new operations. In addition, the
> VIRTCHNL_OP_1588_PTP_CAPS command is used to determine the specific
> capabilities available to the VF.
>=20
> This support includes the following additional capabilities:
>=20
> * Rx timestamps enabled in the Rx queues (when using flexible advanced
>   descriptors)
> * Read access to PHC time over virtchnl using
>   VIRTCHNL_OP_1588_PTP_GET_TIME
>=20
> Extra space is reserved in most structures to allow for future extension =
(like set
> clock, Tx timestamps).  Additional opcode numbers are reserved and space =
in the
> virtchnl_ptp_caps structure is specifically set aside for this.
> Additionally, each structure has some space reserved for future extension=
s to
> allow some flexibility.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

