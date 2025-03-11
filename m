Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ADBA5BDD5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 11:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DCBC821E7;
	Tue, 11 Mar 2025 10:26:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuMupy6w_AeN; Tue, 11 Mar 2025 10:26:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF08382197
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741688759;
	bh=RPs5AvcLQucLWUcjWgWKYYp3M/+P23dnfV52cxtt1NM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tb5C6+hxOXlHN2uKCU+sHTS5JGyN1jzNwr1aIaQ3txCItUaALx8lzSlWTktnCKt2p
	 Gpm3SzW8cD8uzE8DVPDAX3Jr/rufnBMSKEqIP2PBPCj5VqeoNFvNO6id+rAwxwG8Kg
	 dyVSeiTyKDWCX02wS+J/yAo45Da/BqZFR21+/mvqfJ0rAEdeT5khwq6Y2B6l+sObto
	 ie+1cmORFqd3MHz5D4ACw5dJMB33/1vXCmf+H0OESpGipW8drMkrc05agqOVxistBR
	 sHimlTFx2kRAb9q1ACaD8+XatjoR5tZu8nrkqrYMtY++LuEg4ReHJcjg5fGmKsTzZl
	 Ihtak17syKEHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF08382197;
	Tue, 11 Mar 2025 10:25:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D7061DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3111E82194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:25:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EUpFFh5jzRjz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 10:25:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 752B582190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 752B582190
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 752B582190
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:25:56 +0000 (UTC)
X-CSE-ConnectionGUID: sLT+xXUXTvij4Py8k5jfgw==
X-CSE-MsgGUID: TUlcbQ+HTv+SVXPScxFn9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42597536"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42597536"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:25:55 -0700
X-CSE-ConnectionGUID: 9kcTjbWoT7qSC8AAPAPl0Q==
X-CSE-MsgGUID: igxeVbYLRpi7ExdnrSftNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125178507"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 03:25:56 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 03:25:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 03:25:54 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 03:25:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kmc6WSl3hjkKKLiKffVCdb92KMAkhKII2CIJt39OsnkrdicmT3Bjf1U5+AZktQrXl99rq6nMLSmyPguv4XCJ03eI/cRLVmBhi/qoECm3u7EzVQLe/0BHbjounRkvfA85yhe8FSABZhrMeGre/xGlguqIRbQhdjfkYEzOhQI15R/rson+Qz22s4JpENVMYwvDPuPYiQbRBUAYnLskhEMqUbx9fwNkqITJMVaWA/kd0qm74fxL5HvD6b7VBXxGCDZlwRkmAokXGf7q2SN7j98AS1GC6BfvmACyP2D0bXp7qdpev2jQLL8ry54aVbZiZEvJtvR1l46BizY/1WCIF5g9OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RPs5AvcLQucLWUcjWgWKYYp3M/+P23dnfV52cxtt1NM=;
 b=qCa/vSoVvWYk/Sdi1t5p+1odXV8XTLbjcrG57DfgzK5DYLN7ATsZu4q98NsNdvhUxaK3OlnBqcd6uGfyHP+Uf+qnGhj6u/n7aGW4EmT91pzzGLsao5FQpS3mnP+IshzNZvTO0npqEbLgIFvqjkpT6T8WxWbbknfpYvywIqFQRbO162gz9egqhdsKUYIno+LUnWvlLio+IRoMMG9KaJMIJV9huBTlD9jH0LGihwnRQOOqwNCf7ZOVwJ87sCVkLf3A+FaNS9W/rp2C+BJcTzEwUwaxCKfj2w6Xw7QGiS9szMP909UBzuqOObiKfvbtmXTREoyA8r77esPLZ7sLgfW54g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 10:25:49 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.8489.025; Tue, 11 Mar 2025
 10:25:49 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, "Pacuszka, MateuszX"
 <mateuszx.pacuszka@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 4/6] ice: remove headers
 argument from ice_tc_count_lkups
Thread-Index: AQHbfsAlv/vQ5YckzEKrbcbxvdHjx7NQUkqAgB2QFMA=
Date: Tue, 11 Mar 2025 10:25:49 +0000
Message-ID: <SJ0PR11MB5865CF7890E07723037DDF908FD12@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-5-larysa.zaremba@intel.com>
 <20250220145827.GB1615191@kernel.org>
In-Reply-To: <20250220145827.GB1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6807:EE_
x-ms-office365-filtering-correlation-id: 59e17ad2-010a-4256-4178-08dd608717ed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Q/IlI0p6h5KOtnntxHMP162ICnsVWIzeNS0p9jmwUrLI3M687VCxSr2V4dc6?=
 =?us-ascii?Q?uzH6QwOASVSjJgrj+kLxPiM9h+yURAbn4tRwCR39vtwJE/rbvq1XLLvBNKWi?=
 =?us-ascii?Q?BJDAXx4qvqD4ENrHVMa7V2YmeW2/Z6hAfQGOpVA5ku5i+yojC25B4Of/t5gx?=
 =?us-ascii?Q?4KjC9sz+rBsprHR8BwD/k90v1SPvsKjfvZQQgJ5Y2sXRdq4wbSvHFT6YjsJg?=
 =?us-ascii?Q?UHcbc/m4bDmBSkRU4xh2O9gBBPyrAh7owYsDAEiZYPdSoMNjswtz9A3Tl2NX?=
 =?us-ascii?Q?arF84/1J8cP4Jdzhh70T3fFkyKsMDMxxK5UMY8qtV6K37NOnf8FCBHIJqCqp?=
 =?us-ascii?Q?285JS2CdzjNBIFM+YvpxZH2IVen2MvRZKQZqRpkQT5JgfVPaFBSzYVrjtT48?=
 =?us-ascii?Q?JbKIRmNkyVuzHqpH8RWwgAIVAjlruGItkOhCD9RTQC1tI35DcJcezuBj2+ry?=
 =?us-ascii?Q?eInyAkya3h7wMs1TAV4qLCeoboULUqdjAAVdovIOvXg6a+Llv9eZ3IJqCgBw?=
 =?us-ascii?Q?In6jtb+gKNWCxVViNa9+ko5g+9KkySFvRI/oNMo+fCYcNexdlZXdKMjImG/G?=
 =?us-ascii?Q?k80Lxt7994qm/eULwEOyeun0LD+B4tTLOEJfdYdPwZ+TbIjBWrukHl6JwM0I?=
 =?us-ascii?Q?vvncuaBGFHN4Ffg430C4Ux3f6fIUPLiuOg2XtglkQSYXLeuU7rZXOQRUw6Jt?=
 =?us-ascii?Q?ycOUuwNbQvHit4x8rb5v3Hi4xcrglU6+QbT+jCeks9CsgcX5xNbeJnIwREVM?=
 =?us-ascii?Q?EGmoai76wVG8W4co+iF9s0nyGGcaNOJ7UUZm9BXAA3fjUcFWjcumVekGgkFL?=
 =?us-ascii?Q?0Kfll8Dc7d2Zgbwernr/zJxvAeCHDfGTkHLbDwwm+zQTyQz2HPYZcC+2FSLy?=
 =?us-ascii?Q?c1MRLnPbQc4xjvx+KgcDA4FZ0j+jtUgYZoXBvt11N2ZLu7+8xr/DvRMeFWdu?=
 =?us-ascii?Q?mnu0DKEXARL/Zr+Q8gh1QTBrCzmbtmKtSal1ZzMAPLVIn0Ym+xnqxjqqoRnG?=
 =?us-ascii?Q?BmZtIiLhG3KGRdsE9iSiCTjO2IzNv4gbG8mphhdM0v2rtRtybeH5G8cXrXBy?=
 =?us-ascii?Q?qzZwG0AebSlFLq5AjrnhWce8XjPKmoaTMlQ6nzECe2iCx4iYnc1Naz/rVQ2Y?=
 =?us-ascii?Q?sDvbAf3PNO+CiDmNC5NshTV0IaC1ooSEbDPfDwJPBiz6NGUuTGWm0hLHTd//?=
 =?us-ascii?Q?lQzuFOAnooNQbujRoijVLTJwGyhdsDPDdJ6BXPPcHzlt+aTb4YPMX4f836xv?=
 =?us-ascii?Q?mPAff3LwCdow3/t9XjTkUGsKf+XpYCGH66RaVp6BDBK7o7wYBHVOJldUZi+t?=
 =?us-ascii?Q?8i1814ywen1PIBBndO76MaGquMwfJfGN9vL0jL9SgPIaBGcrU28kboakkw2o?=
 =?us-ascii?Q?HOpY+i7pLbmIao4rfjupgkQhwhVWSTrTYhNi+/K0b13lV4B3gmKW88ffoxng?=
 =?us-ascii?Q?7qQ/DzrZ2TbwGImeSTMfe4SLY8mRDPUf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FmdXL8WcnUA1sjDlTog2aOce7lSS3WCKKmmyTbh1OO19gLUzdvBbxPpMHl8n?=
 =?us-ascii?Q?juQPDwngdytF21zpkT0AbmRpGhhr66Mty/Fr9RKstOARl5WdK47Ncw09p9Bu?=
 =?us-ascii?Q?Rnnd2j4yGzwKpnWwH16Gh+jN6uRzDOw/G8SIMKYbpS6NkIOzrt/Kjbkf/0xg?=
 =?us-ascii?Q?KFd4qBAc5kW562xGH9Z5v7mH0Qa0/USmzvzNP2unOkN45ucjZnSFggz53WKP?=
 =?us-ascii?Q?vKHeTxYS9aM3nI8mSeAKoQPacrSJU8g5RFX50en6Rz3ULWxZ6Fi0J9kTYEJB?=
 =?us-ascii?Q?9t1qb3ZxtaTmtwRrHvnnYY/QBWzSsmbrRUPbMh58yCQeDdefWFGLa3MjH9Ao?=
 =?us-ascii?Q?58hGWsRRIZ+21l3ItrA6vDLtDjn1s6/Ift93lbQI6rUpWj2AUsWkLjA7KR0j?=
 =?us-ascii?Q?+LPs0ezSCxKHtEMd1+OVi300G83oU+yvcF1ruYzQeqd9QILobyL4FJIvQWyO?=
 =?us-ascii?Q?QHXkCfax0yJZGuPq2YJjYfgP3Ng0trQ6wRU0cikLFTg/+6OMltTN2W3XNRFp?=
 =?us-ascii?Q?XY5QFz03e5nO7B7d5vephdgijs27kjgKKY3bLDlKlbwdmDPhJIpLQF7A2S+h?=
 =?us-ascii?Q?qS7Spxbi/v9NZAu0cYTHeHGwSUo5ckxLuSmQJtYhUReMWU2BwEFkzu8pYiV+?=
 =?us-ascii?Q?/+MsiTAH1uVFJP0YLWPTG/CZzOLiaFDsXZyxgdA253gxhJJfP2XYHvk4gCv3?=
 =?us-ascii?Q?TZGlT5FGIVK0gJwUgsp2qbsRyyUHgTfv6ScDjyJctiZfgi9ta53oq0hZAtmR?=
 =?us-ascii?Q?E/McEPUPiw1/EPQSLlvOTeqGWoDwNiKgUru2DP4t4Bf7zGTe2VZ9URldS4EV?=
 =?us-ascii?Q?r1uYMUVd9GACl2RST4tx+NLVAJ0VEUzAiFdfS26HxXGLHMP2NmR8KWTphnZg?=
 =?us-ascii?Q?2MrU8ffvGBLoWxfoEJKh03BPReMIFOXpZZ/qcuEFsZwityH8c8j/2LCC6aNb?=
 =?us-ascii?Q?XBDSMUXlZ4WaJ8BU7lerYt5p6oi8iXU6O1Jt4xPeet7zMt2S1fkMPNEHtmeP?=
 =?us-ascii?Q?wJZP5sNKwFmvLqkHqox5jfetoEn2ZvxbMBhBT6lrzjjqQSH+4zi0mxb96DHr?=
 =?us-ascii?Q?6gw42HhVtzgbSPQM/6LEPpEMKQywnv2ZBUC3ydxaTXQ3icmaafsTRN5Fz1n0?=
 =?us-ascii?Q?9Os5a0z5M2WqVgXQ9e0ZKWbA2fgY8cF1UwPbSKMODTxmlFttXRivobMcfCji?=
 =?us-ascii?Q?PRac7UQhCLj/Kvm9ehfq5tysCrDLLsiFt0GgMVj/VVYUUNilGgaqVgl/u6Ng?=
 =?us-ascii?Q?xiNifG/uGxLWE0S1xHrQfyA6pZI+KboFgrEZLoBni3tHDU+JFQV1+nDU4ZzY?=
 =?us-ascii?Q?zYtDjETk3hfDfpmNWxIYC/YYHfQyeDYOVyMRz/7ktLKUIbaa1rPGfzRfXRYL?=
 =?us-ascii?Q?2UlbiOjEcNEnjkK43qI5nlah1QKRV5uSMp4uTaeuGZR60+lRT93Txm9u7gQ4?=
 =?us-ascii?Q?9U4krDa3fHtbYRAUbswUumfSiKiEo+NGks5+prPKXWheZRKFLF03IFoGefl1?=
 =?us-ascii?Q?LfVRqDFAmq0Rumu/wzgKl+O4zdIUwWQT7eYlcm1R8sfExwKba7lkXjlCWEl/?=
 =?us-ascii?Q?6pvcxtzCj4IosJHgiTFJqYScl1T7DsLf5G3ZEfO9uMpil5JT/GajKPu+hC1G?=
 =?us-ascii?Q?8A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59e17ad2-010a-4256-4178-08dd608717ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 10:25:49.4496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iJBsyixDmFYuv0GAzcYff6JaLNrozv1URE6Iy4ymhgiOiM/L+gH49Rfc7oPyiEaWERfWtwxCfYkst5OezxOFPpuhUZzFdyzzxOjY/TLPsm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741688756; x=1773224756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RPs5AvcLQucLWUcjWgWKYYp3M/+P23dnfV52cxtt1NM=;
 b=Mb07OkFD8YJMqxak5+koOk2/UeEUu+JRFEw3CM7HQq8SwRFuERAutjxh
 LELz4558kaQjvusjnGQBlHAwYnuGyYyrcP7mZ8BSkG1rcjfzaNOjE9zqR
 1WWzO15J/5aGEqvisUtbRl3HpcHbnXbUDHEFoUDTDivHeDMkT5e681Tnp
 roJ7umCSO0zqZGxLnvsvJrqAxVqa3nKYrcGcXhk98pTCBgqoncacE/N4s
 Hic57ijegsQQpsq0MEuil5DefZykuyXXLtUXoSsxxZdE+K3Md7yz/MUd/
 e6qIVJeef+/skVmC4hoHGUO+x3xO5b2gFEp+vyNedIN7KM1Uy++jbjcQQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mb07OkFD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/6] ice: remove headers
 argument from ice_tc_count_lkups
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
> Simon Horman
> Sent: Thursday, February 20, 2025 3:58 PM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Pacuszka, MateuszX
> <mateuszx.pacuszka@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/6] ice: remove header=
s
> argument from ice_tc_count_lkups
>=20
> On Fri, Feb 14, 2025 at 09:50:38AM +0100, Larysa Zaremba wrote:
> > Remove the headers argument from the ice_tc_count_lkups() function,
> > because it is not used anywhere.
> >
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


