Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F838B2FA0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 06:59:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF9A9613C2;
	Fri, 26 Apr 2024 04:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E38d5twPHy5f; Fri, 26 Apr 2024 04:59:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5DA5613C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714107594;
	bh=8DAU7g3h/QCHurYM4sp88YxgZ9LO/46lZssTSSjbv8U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xw6NvfhFQaFcmN2xxYBzJNWFSYCGWKljxdNebQFw9SnXhZ5KJbCjU+9N8g6fMMYSi
	 37d3xFrRL/9G6pOHpajq4tzb1IuJFRWBC34kV16Oekaq7Vz4rOR4cMDyMdSmjBUqW4
	 y1wSpXSlp4i77H9oXbboJK3/y5jiI/6U6v3daA4NIign8Bae0N3wUwEpko095xXM5k
	 HxwR4zOvFDy6dH4+AjsgQSdOuZHSsPLGv9X0jmzLX5t4+5QYrbOOghKzs/xHOpER8M
	 bFDNtcJ9UzqZ2lXYtdu8iy8Wy7KCNuDeLQ+gx0GHkmGPT8vYH+v771VGWvF98FbUyJ
	 yI09W0XGGiSng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5DA5613C6;
	Fri, 26 Apr 2024 04:59:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7BA1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 04:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 566F7613BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 04:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YPTRohCyrKSt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 04:59:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD1DC613BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD1DC613BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD1DC613BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 04:59:50 +0000 (UTC)
X-CSE-ConnectionGUID: naWFSl34SyelnLMUWjHC7A==
X-CSE-MsgGUID: Dm46bvenS4qTMgYiaBEkIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9703625"
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; 
   d="scan'208";a="9703625"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 21:59:50 -0700
X-CSE-ConnectionGUID: qZDqoX1aR/OLwUXBD6+Nng==
X-CSE-MsgGUID: P7L6itKxQmG6x5oUmzQd+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="30114023"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 21:59:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 21:59:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 21:59:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 21:59:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RD1AGmVHby5TzjjrgsNuxx/oqZtI1nuLB3BnGLZ6e0nRdmT09Eh2GkfC6gQjAhXQn9QYkIQ0JI0Q4ricu/t6pIqZ3q/5X4+YDNBY7Dt3LHjnIcALzkxsY4xQvfMBLgKPiCVdiknzXZ2heaPs/VyYQaJnHYVN2sobiXDdR5rfU2w8jdQHrsymqoxsDCXZkD+l3AljEg4XW+Wmkd48HSo0loxGk5WJGBU69immGZDAKSydwNqL7zX8FpG5kjzEevGsj1y8LCzUizHW3V2+U3AEFTRt0FbqX3wL15URuWAmry2ez+D38p+DdIwGwFRB5Zp5Kq1PyiPgrcIYVJ+bnnCxPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8DAU7g3h/QCHurYM4sp88YxgZ9LO/46lZssTSSjbv8U=;
 b=anlkxqi1bp6KxFDnm1DcZtR2NgPQe+AjZmhDpbBy9Ub9hpaUe/Y11ycVCs+3Y3vsEQHbJNQrvwG7pflaJiYc7YrEh694htolhMNb8GxcYooYturC6DpjuZc7VjJJ1VoBphfWqWQ8y0tnP0iDv6tKlSN492IKE5NiYkAqfpxThTedOgna+RkykGdp8gR3aAqWgZb9TA834B8nrkOmNYkT+XgCO3DeTJZY5eIzN4/VIS+Fj5mlLQzkb1Vu0dq//2zTCT9789fASdPYmKOpLUD4u4cE44NTaHMA9d2iy3UEmoxMt9YbI6jVAjDiv1GpMDoDhVcHJJsJrGEdIF9kAHmvnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MN2PR11MB4550.namprd11.prod.outlook.com (2603:10b6:208:267::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.30; Fri, 26 Apr
 2024 04:59:45 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7519.020; Fri, 26 Apr 2024
 04:59:45 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH RESEND iwl-net] ice: Interpret
 .set_channels() input differently
Thread-Index: AQHakXfVyi0r0mssvUKlzRshng6vHrF6CbNg
Date: Fri, 26 Apr 2024 04:59:45 +0000
Message-ID: <CYYPR11MB842959375B6268B314DA77D4BD162@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240418095857.2827-1-larysa.zaremba@intel.com>
In-Reply-To: <20240418095857.2827-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MN2PR11MB4550:EE_
x-ms-office365-filtering-correlation-id: 75830649-703a-4cf1-75cf-08dc65adb11f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?ix92o7OQfPqExCAO978BhZ3idOgyIGBotJVY4alQXI8BAAJ+FswhwK0b6N75?=
 =?us-ascii?Q?ACgfLv6t2oWahLhTa+k4ry113yDs6BiH3BWDhPYuNzt/2kYq86pjvOfpL5LH?=
 =?us-ascii?Q?JO4hWa4ChUVcAEQH0vvKFdoB6GcFic5K/EWSMEoqevaadYQvlPYHZ6KJfeBP?=
 =?us-ascii?Q?hw0SDl/y4HqLUjPOthjKvN8nOATNEr84ADlSBqC4Rg216U7MaXq/8DykA2Q5?=
 =?us-ascii?Q?JCF8zjv+KFk5SS8R04BY8ldiUHh8OPAJc0SL0pgEJGuQ7M12IEus1+vC+9eB?=
 =?us-ascii?Q?wyG+bbtUwsXKMjXBBEvURA9jxOqw1UIjfdPwVgPCxuqNvstiCeN+bmDiLN1t?=
 =?us-ascii?Q?vobHh/TzdSxk7z9268IsoGF8AlHLtpILbklROGLqtfpP0IqHXdkBZ0vzF5Is?=
 =?us-ascii?Q?9BNI7fcRgdMPK/iAi/AjTs7NyZq795dbdmUCIy9eN/ijEDThoHRNjpWRwj1Z?=
 =?us-ascii?Q?z4gGqFtYB+uceezWtIl5YY4m1bfrJxlvMho5ioLdbnLxPbz8qGRbY2kxLsrj?=
 =?us-ascii?Q?W+BNy1miC+KsebRx0MBVxd1dM9oo4AeLYdGXwp7Hy1lf+77w0FFkgrBPE6VR?=
 =?us-ascii?Q?4Kc/GiYIYNgBKhbyzGTwJA7moX5qHRPe7V4qyjOux6QmRTOpl+K0zKSoYtzw?=
 =?us-ascii?Q?NF2ufyJmvlRnJM12zd4///f4YeoG7V/U7DyFz2M2ii3aS7A4Ko8vMHy94tvF?=
 =?us-ascii?Q?K+AHjspJHO8gc2q4HQjY87XVMG88pnU/hseCZvqC3rcpmno97PHAIGwhxF/g?=
 =?us-ascii?Q?rP/naubmwwlyfrpa1LXP0uJK49vv/Se8Xs1iGY5gSlrPlbw0uk8kvUeuloAX?=
 =?us-ascii?Q?i0Y+GhnVqXiAr2W/wGGnfAL7Vp8NFlQ5GpusDCYfoDk385+QLdGadJKx7MEp?=
 =?us-ascii?Q?rCeNoI1Z+i4PuPhUpm/V/5XQY+SmCf7dOFsdzMdWFg/vYtDYwt2VyG6zBJpf?=
 =?us-ascii?Q?FcRcoNQfEyNZXn5mJQNUcB5Ud2zqZiYa2TAc80VcyQTiqPMs1XUNvmT6KCEu?=
 =?us-ascii?Q?VQz1Mhd7qKM+3F2bQU6XGwqd6oB/pHCSx1lUgEYvh2CHC6kWV7gkzuLwLSVH?=
 =?us-ascii?Q?gU/fkAtuxdLL3L8fHpLg4dDKESqkBb/pREbaQYH2bl3gKa2nqcd+E4Rl+yvi?=
 =?us-ascii?Q?cWCpX6CdwSHvyNQ1KNtkw3QWX5UETboYPuQeUk30k+/WG/sj4+Ep9nonjEBf?=
 =?us-ascii?Q?F+12++p2xSHs8oIgs/yqUuDhdHcPRXRLR7X69N4z38wuXSrMNyU/6Q6lgUE+?=
 =?us-ascii?Q?er+Qdh/HoN8QgyogGWJxYvMZIBgonY3Drusg41gCTw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Rwmwf7nsUFW1RDAC+5Ozdx2DwQeMOc2S4pFMB48McokCZHD5o6RqlCzYrmcw?=
 =?us-ascii?Q?cjoHDFVQJpIFVleeYtFKhwrnPrGGykCqDB9oSWLRB1kb9944tdQ5futdTMSb?=
 =?us-ascii?Q?bipoVNREz8a3E+usV2D7KH40ojrpSBKASXcHXIkMVy6iG9SSSQOHh8/NOD55?=
 =?us-ascii?Q?AF2GrpkVluyxHNO5xFRBtcEsmxv1EHbegdcZ4xD01LEDFvZQT29qT3cwJ3pU?=
 =?us-ascii?Q?Iz6Y3bX4FL4oBtKWZOiH6ua+MqkUBxiKNAZPJ3/l8dpD2iG2C3JPfSHNvVtz?=
 =?us-ascii?Q?QMFp5WaMmexqzsfM3J2dkEiWQ9rbrFW8TUjWWsnYIggmyhXV/bGxlar1ufgM?=
 =?us-ascii?Q?HoXtDs/vrUFbRw3WWndFGgYHgMmbhJLgcayuT06m7vOSf5eWfF5DrunKb0JS?=
 =?us-ascii?Q?++FoSQdRM3qkAiUnKlX+sCE8aWmHs+0MNPvJMtATFui5HKRrnvH9JR/zQp1F?=
 =?us-ascii?Q?HMxk1+YtGxfqL6JmMM5kKq4HRH1xu7q8SwuDGXbu/5pb972sHAn8GvxD/rQY?=
 =?us-ascii?Q?+Jh5oib02SRttCVqVMN/GBckV8UXguZL4IYvFFHVGn/KV3M21ybYSQU67H/8?=
 =?us-ascii?Q?yPPsbGrTEJkWea+k3SJU0qBhQiOq7lQhbFAct2Fa0nsmznE8zpUEZW1Jm42o?=
 =?us-ascii?Q?LbbEmsTOrtX23P3ES09w5O8goJNsQeQ9cLS6VTcl9+AQw8USbZjx0qYhdEVX?=
 =?us-ascii?Q?J1hK6B0QlYiNPvCXvE436JlDTcN61ozv+901rwezw6pevfOth1Ye3c6WOGgE?=
 =?us-ascii?Q?cXFAdQX7F92h2X3r5/zDOdklkmn/Bjwgyx9HpF/wnCUb580lyXFYgZvnNSTe?=
 =?us-ascii?Q?NTZ0S7N1fUYOYXIBPf88NZXDqvAugZIX2uvAXZAd+PukSuw+JyRjRvKdk9eU?=
 =?us-ascii?Q?07IsimAhNZdqGYy41E5ZZegTRqV1ceqYkJREcxYMsSSg3RP0lK2q04K0iFia?=
 =?us-ascii?Q?Pg7IekdsnK8qewgIe5APPYlQWkpXNVVNptSyjUWRgsfRREUTldVDiXollU13?=
 =?us-ascii?Q?VSsVz4K6IxUjWmkeCSeLxg/iD89scySNjpN3V9dv9QNdQaOvTZNKHVaoGtKG?=
 =?us-ascii?Q?wqwi7qOKqZ1ycwpHkmndfyBGtioqf7MB5pK+kA/K+HkoJeualnacnlxZxghV?=
 =?us-ascii?Q?UiZs5aCP1Zx5NkgVXlAWYS8M+JkXrgOUBDcJZFjd/JbI7mUKvWVsl4dBMeiB?=
 =?us-ascii?Q?z0IM3z8lUFnipS6gY8UYVj1J5w+b2zu4NYFjOP125FYNDn6dud/SreXLxL1f?=
 =?us-ascii?Q?l4BQNMBEe1uksANL8n4D2rM2AyS1YvgzteCQ5GZqSt/fcR5g5+4o8coUIRdK?=
 =?us-ascii?Q?0rm3hDcn8BLVh07leaE6o+Y94CCB/Cr6l99jSdJ7soljUMLsl9XfrSgteIj9?=
 =?us-ascii?Q?bMgayL+U1g6laZuF0e+Eo94kT1LCrYpAdqK0M5xwe022y2uGlXe+ang/J7x5?=
 =?us-ascii?Q?0ItJfCJDd3OnTGRqlkF8Tks4Vf8WwA2poDIWuDykFJWYObd4/Jj4ZyZrKy65?=
 =?us-ascii?Q?g51I3MAAIImlf5l1OFIHik0QXomWnUWp1gvnzio1n46kzNKPI4zEfGgDyJtq?=
 =?us-ascii?Q?fZ/292QdA/yOOocbity8iCN5W8/71CIIqfJOxLWwLBJ7IkXSNpYTSrrrL8lA?=
 =?us-ascii?Q?rg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75830649-703a-4cf1-75cf-08dc65adb11f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2024 04:59:45.4713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bc/f6XoXWjWc1hEzWWEGpaKRh0+s+Zeoy+++Fq745Xbpt5HPYPz+Z2ccEcN1qpWIvx1RcyKbOj1dWudBkVeczWLiuRM2Q0+aR0igpRgSlYvk4U/zhYViHvbdvrb4gNDu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4550
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714107591; x=1745643591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D1Fbddu5rs7/y4b9oYoWxb1sHfL2ZUqAr5F0BvLG8dI=;
 b=kFdhW33m911icTwihWDaY6BVRiG7NPRskWCxtqaFx8YvSlduNb2Ahwpz
 SNOeHAnPeRfMVsHm2Xor2loH3f2iWDrFAxYO1woEMAPyB+sQWD9W6dWb5
 bYJBRRmMOSxsaccagPCma37ztKTgZJ/Fv2ZFLvNc86TLIuISeFAuryF7o
 sKiCSz1jbk6Qf5WCbgTZs1XV1VrvD5spSd3gPhP6kjMNGU805tbkDB29l
 TgD9N7JQSsOZ7V78Mf///xqiNwTu9yrKgzUY+7Y5h7OLdA4RuDPq+mrrg
 TVMPdbaOhAPUu+Ly9uYLMjrDFfCNeTmHqflbTdfe8USz7Kb9tPbyVD3Yl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kFdhW33m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND iwl-net] ice: Interpret
 .set_channels() input differently
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, Eric Dumazet <edumazet@google.com>, "Brady,
 Alan" <alan.brady@intel.com>, Jakub Kicinski <kuba@kernel.org>, Michal
 Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of L=
arysa Zaremba
> Sent: Thursday, April 18, 2024 3:29 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-lan@lists=
.osuosl.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Tantilov, Emil S =
<emil.s.tantilov@intel.com>; Zaremba, Larysa <larysa.zaremba@intel.com>; Cz=
apnik, Lukasz <lukasz.czapnik@intel.com>; Eric Dumazet <edumazet@google.com=
>; Brady, Alan <alan.brady@intel.com>; Michal Swiatkowski <michal.swiatkows=
ki@linux.intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@=
redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH RESEND iwl-net] ice: Interpret .set_cha=
nnels() input differently
>
> A bug occurs because a safety check guarding AF_XDP-related queues in eth=
nl_set_channels(), does not trigger. This happens, because kernel and ice d=
river interpret the ethtool command differently.
>
> How the bug occurs:
> 1. ethtool -l <IFNAME> -> combined: 40
> 2. Attach AF_XDP to queue 30
> 3. ethtool -L <IFNAME> rx 15 tx 15
>    combined number is not specified, so command becomes {rx_count =3D 15,
>    tx_count =3D 15, combined_count =3D 40}.
> 4. ethnl_set_channels checks, if there are any AF_XDP of queues from the
>    new (combined_count + rx_count) to the old one, so from 55 to 40, chec=
k
>    does not trigger.
> 5. ice interprets `rx 15 tx 15` as 15 combined channels and deletes the
>    queue that AF_XDP is attached to.
>
> Interpret the command in a way that is more consistent with ethtool manua=
l [0] (--show-channels and --set-channels).
>
> Considering that in the ice driver only the difference between RX and TX =
queues forms dedicated channels, change the correct way to set number of ch=
annels to:
>
> ethtool -L <IFNAME> combined 10 /* For symmetric queues */ ethtool -L <IF=
NAME> combined 8 tx 2 rx 0 /* For asymmetric queues */
>
> [0] https://man7.org/linux/man-pages/man8/ethtool.8.html
>
> Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 22 ++++++--------------
>  1 file changed, 6 insertions(+), 16 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

