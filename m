Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D69DA5FE7C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 05:54:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5720F83FC0;
	Fri, 14 Oct 2022 03:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5720F83FC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665719688;
	bh=3V4i33ik0UcP/4JTfguXEjd9Fz0U1wzuGcUdcaWN+Ic=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o7KNOKl9twLKBPblfcqrn46jRYdZzwfxPz1OYGThgyKxOYFASNB2wfEYfGXXtYICj
	 FVz+t6DzdfKzzDLj37V593Ma6DcAZn4SDYvx2Ecq0YaxNzwJ89cQU3/+iuBbT080jR
	 rEJ3s2NGOEz3ZJvSi/YY6P3VOSr6jeEPSPZrrb+LURhBCBuqxJsO1LJPtvuqaE7Gzk
	 Gzn/91z3gX29jB42Us54m4kZ4XpChYUqjrtgY68Ua7xT+74k72ItHvdhbRJ++uCPoe
	 LZv6qBaUbP8kmWTH0O+Ymna1jIUFL+YlFmkL0fSivN1F64kG9kvy3TFNOi67ikw7E5
	 ld5zuXwmnEVnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zlQSrAFCboQ; Fri, 14 Oct 2022 03:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F1BC83A47;
	Fri, 14 Oct 2022 03:54:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F1BC83A47
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EEC741BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 03:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBD6D60D4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 03:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBD6D60D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hptRa6qeU-0V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 03:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0EB660D4B
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0EB660D4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 03:54:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="302883871"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="302883871"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 20:54:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="956429877"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="956429877"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 13 Oct 2022 20:54:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 20:54:36 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 20:54:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 20:54:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 20:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TW6zb5Hs/h9icwtcabujFq9u+R/CSA9wXxHUxojgGVavEtN1Cc96D2k6icmFP4AajIDLmhI5bTi87lDkehDIDR7w1pOPHbhEiVdrUsehufmP+AMeW8NFe5Ahj5ASY1+bvXYCxvKT4Rwy412uA7VowOCwPn2rCkcQ9a06xKKVQt5O2go+DcB9Ye4x0ApIO3owp7n6wNvSmvnjzgZbCXYbDaJWbf+YFxuJ4LJScGwuG+93TKDFMXu3e8dMZ55CthdUP5xLID5bK7GfzwlhCNSx0iNgnOFvdu84I8uicyDORvQT0d4xqpJ+khFIBwJZG6lYJw1WUNFacZ7vA4HfhGjAdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GlCL79+LaLMqGNrtvFfWJj3VVWVARUO2JMUtQexAzc4=;
 b=fGw26jhzXgf91Rs/d5uG7Lng5sResB2AilPpbSrHge3XHlPMucW1XH0NVCst7C6oXvaQCIfTgXXDKMyp/YH9FpCVwsRyoolrs7FgFN91+8QR7naQ+wvMgk6zcQQVPqaAVoVb9RhysZWy5zP26rWflAHImHU10NitCU9NrhTjC/W/NAh2m7VFCcWDaJZODVtVVvL9nappP7Sg62kuohQGpIe5OYez0wM6CH25LLPctt8deXV5S9kyxZxHkt+igDvP31Oe1uE8xybpLKh7PEvrCz9swFd/7XOpRTSV+UBg42+Y2yTxNi7trwxpq8ibbWBa5cJQOH3pN/St0Ume1DWE1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6419.namprd11.prod.outlook.com (2603:10b6:208:3a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Fri, 14 Oct
 2022 03:54:27 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead%6]) with mapi id 15.20.5709.022; Fri, 14 Oct 2022
 03:54:27 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 2/4] i40e: Record number TXes
 cleaned during NAPI
Thread-Index: AQHY2pVcliDvanPzjEOvN+XsONhUTK4NTAQw
Date: Fri, 14 Oct 2022 03:54:27 +0000
Message-ID: <BYAPR11MB3367582963BE53066EE93D5BFC249@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
 <1665178723-52902-3-git-send-email-jdamato@fastly.com>
In-Reply-To: <1665178723-52902-3-git-send-email-jdamato@fastly.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6419:EE_
x-ms-office365-filtering-correlation-id: 2d983a61-2f0f-4c4d-cc73-08daad97ca70
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fnUBk8TEb0caLoqECXmfat8tDOJ16n+xXPiTPxUnC3lq1HEWGBxLbYrCRk3DQGziXA8G907Ac2FfbIGH8zn8yfN8fzucbk2y/M1TPXGDkB1UZuRvC9tmpW/GK/cr3emwu8l+7G7XJJkperuso/NUATs3wRXviwqSM+Mp3HfoZNHAv8OPMV38DfuFAzEeAuyYUGpCd4apwleX3vWqAQEqgp9cF18Byr5K4LaxsjFLL9GuY3U4UQT98nQcHU4lv1nkld7OxYHaE73cHVMuyyg6766hG9Sf8+1OE9jAs3VdY0dHcESi8eptDhugp2w+ZaXjDcmnzbPK6+O324dC1gyyjUo7UtZozW1fSNE2Dsfeu4u2I/tHBFsn8KwqC13oQbUph0s+qYexfnHLvHSm47mZBb52wABh+oo/9lDMNVbEMjZ0fBZGEw2r1997JPgYMukxuIVon5ro+nHvBkL42HPO6nTcIrXYP7JABPR82o9QZg9UM92a9YxmT4+39HhWhUn+tG9SdN4kyaAHPg5Hl9RWwMm5AYo3f3WwjW5HVinxIONsm9JJhfpqIx4vjzrVsq3qBxet7+woFr3d3abzwWhN6IXYinD3ndDzAtKTia5AeLqS85s2Hgd7JqyBXwr1ALoVvtZIlqCMkb4Uz/Mh4dbQ4hQNIrJePn0EmKD6TXkCpJdNrJU7njoY6MKsI+6bh43z65l3uAm+lr9WLFsA9zWmmoG80Rm6lZRuVBBAML2AUgnbbs7qkLW0SDjizWV7snSZfEqg6uNyQmbHsk/IdeoP+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(136003)(366004)(376002)(451199015)(66556008)(66476007)(86362001)(55016003)(4744005)(7696005)(54906003)(478600001)(110136005)(71200400001)(5660300002)(41300700001)(52536014)(4326008)(6506007)(33656002)(2906002)(38100700002)(26005)(186003)(316002)(122000001)(53546011)(8936002)(82960400001)(64756008)(38070700005)(83380400001)(8676002)(55236004)(9686003)(66446008)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nOQQBkt9Vvq0FocAqgYEh5bHIhKryLiiAoUSNdJHBdww0ediDg+5zw7hdVE9?=
 =?us-ascii?Q?wnLTgyraRQdZ5LOZZwns5FwFASMLrvOpX1gZeKr22xXNM002aZbXwrsyMuTc?=
 =?us-ascii?Q?JKYkh/HzCOthSRI0d59YHcVPGNlc3nFmr9Ln+myQB90sEPBdZ1g1RPpnaNeM?=
 =?us-ascii?Q?yxzG46hiCEDi8L9VQD7NClT0Zky1kQWWaryHIj36rRTz9wL6v/n+XNsvxerh?=
 =?us-ascii?Q?t28qWLNZdiDsUbAbszNXX6yjkvKeyUa1jq/sUER5CG1Wy+791inmscfEGhcj?=
 =?us-ascii?Q?QwnDQ4lLu3zzn2l8Pl0lPZb7j8Efp/M2nIDTFGNnA6eABaT2TWPIwhgfkfdx?=
 =?us-ascii?Q?wG/NCQ88Ngji1Wuf6OuKGQayfgNtxa3RyrbTbkQ0xJJ7bFPauBHl7l0xv4Gj?=
 =?us-ascii?Q?6cepsjT9pn6IRl8XfNPYhAia9BOns57OnjKqOpHC6ipXLRyDrOD/K1RIjIn1?=
 =?us-ascii?Q?sHnORqqxF9JIhzygjJQoigpi/n7k6lXCcRWiybD03dkuGo5uJ2macuQfVcns?=
 =?us-ascii?Q?kt1bTUCVeOQ2nSD9/UqjS+/TKB7lNb9e85IORTBUTUgL2PU0Kqrx4mZk1xXg?=
 =?us-ascii?Q?Te75N6Yrk70hmtw3ak7d4DqIzrvyCWygOf+5bVCL6QdOD3utb6TQQVkA+rzy?=
 =?us-ascii?Q?aBYAlr7RKrRI6FYP324/H9kDzHxKI1cEbdB+Jek5e9lfkz56twJKfwYocWYD?=
 =?us-ascii?Q?zgOk5o+PLiEuhWPJ8LG4OpcDNOuSn68Frtv64oF3mTvnnz0wfBnezAGUDhpX?=
 =?us-ascii?Q?ECad0GZGlCYdht25/XIZFfLpHXbRYWzyIxRYvU9/Uqlj4S0Laak6izO5J/qz?=
 =?us-ascii?Q?dnNnhk911lRsyJTCrHgmBJJqz+lZH2DYYFZnFwwBmYCP/yJMVessxRLsFctE?=
 =?us-ascii?Q?+mOobGeSXKrmlTlywxvqV8JlrVC6bJEYTIPvjvBrk2i6yrW3mAKQFa8pZSvx?=
 =?us-ascii?Q?0TFccSdgrIOFS6u/U/H9gMHiJI5+Ln3gnTNIyugdtGMJC5p+TOCX5oS7EOB8?=
 =?us-ascii?Q?hbz6+iFuw/dCtoscxco02iJlGNVsHYxixEetHKvK8EHIC6DWONZY70kdbC8b?=
 =?us-ascii?Q?E259ySNSIhU8XTK0cv+uI0cUprnpa4Nlied3zG4pLclPcayW9WhBvwiq523x?=
 =?us-ascii?Q?0J+0IE3YmxiBIJxoog9ejs/cu5o127ph7XlOJ9OYlqf6LBtjpqHn0ThUGD0W?=
 =?us-ascii?Q?1ExdiDb0G1pwdEJ4J4BugP8XYkB+PKMCPEhXFYAn7omb3wsdSwUZnP/kSg/y?=
 =?us-ascii?Q?CdjCIpnRYPmBNR58gy1t6F4jyK+4vQZF27GPKIQO0Gol1VSuWBB9CMvAYvWh?=
 =?us-ascii?Q?YuXvUD4TBYQD5fZR47r6gQEpj/bmuhlzeTMfni7fRjcMagN/Q58jgAKdwRKe?=
 =?us-ascii?Q?KCoDpijOoCpOTM2gb+U+c/SJFUWGyar4IY4LyD39MDf5wWeke4HoNOiA5Gdy?=
 =?us-ascii?Q?CDBRGA843EIFG91zAHrhU/blfkLkkwSifk9WSRoERRTu6EEsZX3CuIvR8T7L?=
 =?us-ascii?Q?lePKCGAcSNIr/PxhfMYvDW65SHRqlksoLL/Mrv0nJs8ixbiviI8WO1jhY2kd?=
 =?us-ascii?Q?oxiWJH4q95F6NlXCJL90J0WkEX0pICduuUPrh3Mw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d983a61-2f0f-4c4d-cc73-08daad97ca70
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2022 03:54:27.3934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jE8CcgH2j+OsuZ4OGBTVbQdQ7+myQp5+sw/5LFbz9SJIqz8JNctxaAW9lxSUejsYRl7h1MrWxMDUWMKBu6aUqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6419
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665719677; x=1697255677;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X1G10ph2hDxbX2X/UFxItd3VqRsr2aKKDyYvs/8ISt4=;
 b=L2RpnqOIPRl4elEJPWFcTvgP95eMXhIJbXsl/Hp1UzqlcA9a0lLJGNPd
 8GXbbuJm7gF0wTl20b8LmaUlpYDcYJWIRhpBYYqbIEyHSw4nfYlF505yw
 C2BYVImwEI2SVuzLRO123tGWD+Q28d2Kzx9xoW54b+DuGfp7tgsikbCIe
 ZLZr8qVlegFC0YDkFFEH8IctEXqShCve2MvY8S8q6XzwmpcXh/zrW/RME
 YOe5ccK+saZgIzQL9m1sCftYU0Bkedq6/Bapvce/bGypx9de4XP2CUdNk
 eUDsQHD/i50Ievrl8M7Zq9BPG0qVQUj4gWCNKk+AgL9isbrbnNmtnYVGO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L2RpnqOI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue v4 2/4] i40e: Record number TXes
 cleaned during NAPI
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joe Damato
> Sent: Saturday, October 8, 2022 3:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Joe Damato <jdamato@fastly.com>;
> kuba@kernel.org; davem@davemloft.net
> Subject: [Intel-wired-lan] [next-queue v4 2/4] i40e: Record number TXes
> cleaned during NAPI
> 
> Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which
> stores the number TXs cleaned.
> 
> No XDP related TX code is touched. Care has been taken to avoid changing
> the control flow of i40e_clean_tx_irq and i40e_napi_poll.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Acked-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
