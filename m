Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D4DCB439D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2B8240DB2;
	Wed, 10 Dec 2025 23:21:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7h8KdpDPEkXx; Wed, 10 Dec 2025 23:21:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B77C40C14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408918;
	bh=3Fnj6UG1r99qDxiyV+MhLifaBJuDBN8mInSYJUEmS3A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cUrUQDJCmVH60uzH5UtW2OtNmf5Lb40uNaSrqxIp5YNcGbcuNY4cPhPj1VmNUEFm2
	 x0ieT3KifZawStkBwA7KdxYGj2pYgZjBwmdGGzDu4JAJR1aIweqlBPcBrshZUbeH7N
	 MqpRup5EtBZbN4bqCmta7sXNUMtAHMsPCBLgJADDFwWzZZvZBwNpvIK5/KhsBgRZRu
	 N4FOjnVMzVJospi4Hd+Eo6ZrCKVmlO/yNQ8nC9cHY872i/zO74s5sPSz7lcTwDeMgw
	 eu06tsavi2766zTw52VvZfNnKXGyZBmFf8/h4s7m6+Vj+RtMluFNeRny9v9lZwpPW2
	 aW/yIV83BL88A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B77C40C14;
	Wed, 10 Dec 2025 23:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A303FE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C6F640B5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ECGLWhAN_TO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:21:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B8F4840B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8F4840B38
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8F4840B38
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:21:56 +0000 (UTC)
X-CSE-ConnectionGUID: VRJoNarURY+mazJbjRmZTw==
X-CSE-MsgGUID: 5EY/IrLCQJWiCBRQOb9TUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="84994682"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="84994682"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:21:55 -0800
X-CSE-ConnectionGUID: 9W9SrPk/RaayK18+LMqXqA==
X-CSE-MsgGUID: We265MKBQSGJin3mzvyt1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="197445173"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:21:55 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:21:54 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QU3XnxAs/VP2YvqALu8j3F6SOXdbK1TMVZJbL7DIayuEoioPu44y8fcg6NYb4db0HfbdXmTGsHMdsc5xJBUmpnH12GYj52LhVoHcITnDFgetjMw35+TBGyqs+Rjxg0uOyE99BK8zO+/szVYKqxb8N55rMVr5HyhfgVjEHWpGLtiplt3LHKTrua3haaa6dySFtp5PttPe1T4DnfW0jk2NpA9s04s7yRHzDVTIAhFbgyQVL0TK3b75UItakKXikPqXxqJ6YxT6WpkQX2kDoyEvzl3UCoOKP4yCsqYl33eyQmFOPRXwNPzyllaQdZz7kk5G+z2lwDhRYZYAR5rEjDzcsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Fnj6UG1r99qDxiyV+MhLifaBJuDBN8mInSYJUEmS3A=;
 b=sUCI1M8R0dwaLbhMgnzEwCypCut2s9cYttcCuKwqL9PwfxWU5nJAwFskuppmCUarnV7lHiqadBV1LG8OJUbGAvLsj4dkqTXitWtNwhASsTPTyHBS2tqoVNj80RpQWqcO6T7dYTuX0mFbi69GleP0+cQi7Tvi3lqMKAU132cyKWjLqIkj4Vjmosu/wOJSaKhfs5b6tY/jWr8twpm2PWxXDmmwNeATV0emxucecksA6//WFHb6PtYAjHBUoTB9tmBn1m3wr3i6LnPx5zBp2gbKWuk1A2HkgNuhgG8DH5iKsh5kJsMSwTwG6L4rEUyWkLfvBhe5Sc3tgTZdb2uXcU5ahg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 23:21:52 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:21:52 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 01/10] idpf: introduce
 local idpf structure to store virtchnl queue chunks
Thread-Index: AQHcVDTb+EPjzuTJckO1oatn3nj+bLUbq7ZA
Date: Wed, 10 Dec 2025 23:21:52 +0000
Message-ID: <SJ1PR11MB6297236A7168BC0666EA18C79BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-2-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-2-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7510:EE_
x-ms-office365-filtering-correlation-id: fe9dfb06-80d1-4167-4f5c-08de3842e70f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MAcJcHnPs7I/EOyFZTk0xNkfQleJVNBK6eGRAjDRpgB6ToNpjH/CNzuV0vw1?=
 =?us-ascii?Q?fabLGG9UBP3h5mc5Khc/2twxck/Dv1moWw4jlZNf9Ck8ATIA2qaN3uqGCyDQ?=
 =?us-ascii?Q?4s15Lx5Ga365p9RsRwRQOBX0QWI3zaJBaNIBjs6OOJUoRCVaZ8rXRp+dWeUN?=
 =?us-ascii?Q?NgWdMR0PVSlPp1ypEdvbQyvVTol4XqppwtWJIDPt2eOi6qGocZ5/AlOK/zRA?=
 =?us-ascii?Q?y8jrZsZnb/He0ikIdr6ApLrb4gVz3sT5QbklzZrAVCtzCru61a/h4ZigO0ou?=
 =?us-ascii?Q?S+W/7gBuEbHyWecpJDbmM2ENnAYID/nq32N39DBJisrR03cFk+DrvKJrq71P?=
 =?us-ascii?Q?oxN+z4WWRKHMXFpwCpqVL8sCBb3HvX6b5aFVThWkaYQK0P8QO85euawBaVde?=
 =?us-ascii?Q?RRP+ZizjtYfrltIhdfnPBrf5yOmSMn0ORNgT2iVV9ofCpS24cnNn4PNuYGUN?=
 =?us-ascii?Q?lx91i60xDohl0D4HjW20tV5O0cBqxK3CxeD+VHUVcgbk59UPb/tyVZiKY9W0?=
 =?us-ascii?Q?FeJDFblJiPVzXJrKGFT8/7Oo11Z1l2lvWz6h5sDJ5cM1CwoNNCtdbZdCBAXZ?=
 =?us-ascii?Q?LOURdE0aZWb64rQpowTorgvw6NrbBV81TB/dtyLif4DvEgasM3ayDI1aJ0ux?=
 =?us-ascii?Q?XiduJA+Ynm8Z+0pYUoT6ymabiTttI1N+p1biaTCSHlofjnjx1GsfWcMkRKIl?=
 =?us-ascii?Q?WSzJuZXzVFtYkg02f7lofirgzZrnWj7dycbEHh6DCBOmoFLqOxz+HbvLBl9L?=
 =?us-ascii?Q?Sfp/OVNZ9FA0uOBfTS290MbATiIo4VIbzZZ8WDGftNMGuPrpv8iav+Ptbg/W?=
 =?us-ascii?Q?hi62JemsdOGMvaL+Rv/GjcrkW4knSFap6uBlH4pzu/3T9AHr5H5BsU17xtJc?=
 =?us-ascii?Q?MewWmOWvR/r6//D59xboCsklsoXT2geqdaAhYtR+ueikV1XUNsE47jdX73sw?=
 =?us-ascii?Q?lailaGJD0pUCCGIgR0SUOFwQF2/LByaZIMYdCeVXynLwUqAgSVH2WB1MdoBg?=
 =?us-ascii?Q?RVjMayUNwxgrKd1OPydQATfFHSo6Cs5DSQZW7oAiJZ4vjAj/TLkw3qTJNvIX?=
 =?us-ascii?Q?jVwYMlRe06Vo58IFI6qG6FYuly371rWk13d+YhPn82oneKeKCr9S3VsiKEek?=
 =?us-ascii?Q?XdJr+1M1zJKuLgkuR79P9f9dx7u6o+rfdCI7VXTlAdlBBxY921fY3Bm+UREI?=
 =?us-ascii?Q?+aoIbiXNq9y52X8qhPYWmNSbSvSDQNo9d5+YkFW/W11XLIwivHjZ6/dWSshP?=
 =?us-ascii?Q?6BF3vMKrUc2XjcIX/+w5Geq5rKtOrOuZdhXbqq3frM9js4kH0dUSfXVBXgJM?=
 =?us-ascii?Q?5AFymCNl8GKMsEMYpSYmIQlrUZ0/tec6Pb+6QbEqFcxH6mWM736y1Syc3SW1?=
 =?us-ascii?Q?QHgEelkZDPs1SeknHvvoSqTGlyIia7ixDoUL88C6JAAYk+Sj9kog3ihHykMt?=
 =?us-ascii?Q?Ccv4FTH97e5NAtpnzwGUqWY5cgC0G4gmYNVJ2VjgIQBs+WyjkSaHMIIxZYB1?=
 =?us-ascii?Q?G1bJUVu+1DPWwmJjX7nJGVlIGD0ax/xV9a38?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P+wBx3g/jLtUvn8sDhLsA5H4rtvS/5i2s6vZnIADvIilczUdKxMxG2kVsfEl?=
 =?us-ascii?Q?e8bY3oMdi1xzU5Tnhl+r6v8Btufhvnfq6DqLBFsz/SHnHvkyHJRiNQIeLqtO?=
 =?us-ascii?Q?6zq/cvqEaxUB9eoJBQ7e+0BRgRXMaUHFMJbqysc2u4ZGVTkNstVrr63p6gZv?=
 =?us-ascii?Q?X/w0651NpnPVr1fnCUaSQxSBcimP19B0PPf6WKmr9eHvtRqVDT7qPK2efXe/?=
 =?us-ascii?Q?zfl8lep/9ScEt+FjFLHLNBgshDNGdnWfmsV0thUfp3ZWkBoZKWKOM836wC9o?=
 =?us-ascii?Q?dTdcY7dxw6QioNo9Nx09NgQ5+hspAGGduiyUsVLZ/wX4HS9dYEgAlXENOpfr?=
 =?us-ascii?Q?+A834Nw1G1YTtSvjOMIIvInK0j1X5uNc1goLrrbG0TwOh5dQWSthnzQluh5z?=
 =?us-ascii?Q?+syRFwTJ1qNLc8Akto2S/lUOY/YrtzPnRwmtBmH2TQ45Kn3giRNkXYtZ48SC?=
 =?us-ascii?Q?jF4Sx/lHyGvq1iY276LGvDwGC9ppBgZRj4i/ZPhaQjpuGoxnKnFW0ddUQnty?=
 =?us-ascii?Q?zBob/Z6OB7+xT3tnlL6yIPPedTZthWtOlg+DHbqAvXrGTPssJrxt7U3BWkgJ?=
 =?us-ascii?Q?TQlmJ3SwDIZmEK6dyk4YyLChORNEnI9ZJqZl+rNdqd0mVmK8r2wXjEoSLyrg?=
 =?us-ascii?Q?UjMmEFA37RCzAyZ9xFsoZ/wDmr3Vg1qm/wjem2Vn8W4dWsuXCDp66ecAP5ze?=
 =?us-ascii?Q?FiMLoeuV0BY/wmbMpqcEFywcgcgzmUT+Pfu4T52zv0SqWLyQ+5P3NjwRZ8Ef?=
 =?us-ascii?Q?E7uix5wHD/+aB1MoUWg/cZXKgx8VxB4cqY3/U64ZiKrNLpwGY6PJvpYpcsvQ?=
 =?us-ascii?Q?C+Ta3ajutEihrPxw0MZaaHqNtPfxIv69QZtO5RlY6hNgccBdEjUdHb8n0Gli?=
 =?us-ascii?Q?ilXCOLsw2r1+az6h3aR/nzX5zuW/NUDFCtgNDLme/9fXnc/M+28YtrhuIn/+?=
 =?us-ascii?Q?QUulDFpgwHHc+KwZHEIZ7Na6jVS18rH92gfxQTaUZP2IV7d7Zsf4ZH/vBwuu?=
 =?us-ascii?Q?TBRxr3WuhxNqse79xrLyIKrA6kHTJfMsTT74ECEavmoN6+qnmeo1pQgw1ieD?=
 =?us-ascii?Q?bkK91bRiAm3lzteydd4/BmmajPBqdIJ98WhWeHuh8hRDEzHgMGFZwejb4nN+?=
 =?us-ascii?Q?kVcmOzluIpfRPItV1l534CruAIDk11ohq8Dis2sgZcA85ndIC5iozVXgeLFv?=
 =?us-ascii?Q?AreEB8L0v93uiacMufCqd3uFIOHNkuU7OxPVjjdH/Awn+cnqWd27FlKZTsaD?=
 =?us-ascii?Q?1rynlZA4XjRRZzAIjPAOKBZ4oGOLvgr6DjlAFCf4lhWDZPmy5C86N1i5HBSW?=
 =?us-ascii?Q?w7672EE18qHBC3zUZZVJDfDwOJ3VVH69ZjU1+WUfe4leaqEB42rv0TakvGvm?=
 =?us-ascii?Q?RaZUvgFIWFrajhhp3+PKY4njqOu7Pv4+Qm4nWMTL9fe4K5M70KBiE42FCWMA?=
 =?us-ascii?Q?CkqIbA0hY/Z6y+69thm5U7yk+iQS5K4HgBlcACykrcAowNQqb821gZLrx/yB?=
 =?us-ascii?Q?eEVqPW5N9nrCRMyYZloUGgm5N3tvazrUAznOJ8W5LfL+FawxLOuPrOXnIoRC?=
 =?us-ascii?Q?459b+iiDS7aPlYFUf51E+ff+R311CFKKrhH9Bmt5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe9dfb06-80d1-4167-4f5c-08de3842e70f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:21:52.8451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DmLvzy9GTcqNKlF2f1rNx0/v5zfnqdGXBA5baDg81sTno58ueFhcj+ZWKiY5PKfzQsjJ9j6s1lZe6Dx1mYZIqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408917; x=1796944917;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Fnj6UG1r99qDxiyV+MhLifaBJuDBN8mInSYJUEmS3A=;
 b=NhxYMqnfyjpOdQL6oS1xrYwYPizpkIGMHBtU+brvKcviyIXgFrZKFEIY
 Jl1PjAomuTUEtJ2I4R8WWJe9pv+D1OchOAAPUxcCLkAGLwSmSq1HuT3+0
 623Sv//LW4VWqmBy4yw74DBrjc3VvI4glxz5Utk/kvLoLdmZlmfNkf9Pg
 Cc6pzihzM+KZGaZb8t1xYICIcMkNDzvV69A/Wzi6Nn0bKFqThUZsjKoDh
 HEE1Q1BesvMD1hShcdVQfMFdqKYjKUMlLoV5/YprzZYUJTXJDdlqXmnSf
 Bb02j/4bL6aO3Ya7HLOuwhjzlNR1tg/jsNyIvpIBgLHHgk1dc/H1JXKVa
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NhxYMqnf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 01/10] idpf: introduce
 local idpf structure to store virtchnl queue chunks
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
> Sent: Wednesday, November 12, 2025 4:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 01/10] idpf: introduce loc=
al
> idpf structure to store virtchnl queue chunks
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Queue ID and register info received from device Control Plane is stored l=
ocally
> in the same little endian format. As the queue chunks are retrieved in 3
> functions, lexx_to_cpu conversions are done each time.
> Instead introduce a new idpf structure to store the received queue info.
> It also avoids conditional check to retrieve queue chunks.
>=20
> With this change, there is no need to store the queue chunks in
> 'req_qs_chunks' field. So remove that.
>=20
> Suggested-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>=20
> ---
> v10: prevent queue_chunk mem leak and add queue_chunk deinit helper func
> v8: rebase on AF_XDP series
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
