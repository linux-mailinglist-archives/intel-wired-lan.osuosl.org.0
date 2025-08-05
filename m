Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BF6B1B68F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Aug 2025 16:30:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB06961557;
	Tue,  5 Aug 2025 14:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4D4QaTGOj48; Tue,  5 Aug 2025 14:30:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2B0061567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754404254;
	bh=L8oyIxcG1xWeRjn8VByfXAMIMyEcJ/e3DVXweeHBw/k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E8iPVhxFWRKcD8xIrh6GFDuTHva51UXsd+5fCRbxV+3vOCoojJVt1ZpZh9mJ8c7bc
	 5InVz4O+pCSub+dux7Zm3H76rwdsRLfGkwaiN9kLGcOPPUbMzlMxEa5ZIIj2SMX3Yx
	 GzYBQBc6N7Uu9jrYmHLkBm2UTLwU8oiZR6zDufOEdq53A4usjdsZi/gaSS+a3Hvynw
	 jEX3MsQrHtYL4zuCf9piM7cC4hGvir90OF8JgD2ZYpFd72p9eSuz4HntTGK4tAmsGy
	 RwhzRAz0Qph9rn4mk2LY+yr5J3W8ZqfPBNz2m+LJzLOwVzFLDb6RE5bcb9qZjkuqnF
	 y4Y9WLyyF9Fig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2B0061567;
	Tue,  5 Aug 2025 14:30:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C3C1233
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 14:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A06F40CBD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 14:30:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WRzFdkye9ibx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Aug 2025 14:30:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BDF1F40C3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDF1F40C3D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDF1F40C3D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 14:30:50 +0000 (UTC)
X-CSE-ConnectionGUID: EuAcBZUsT7auxBlzHwDxKA==
X-CSE-MsgGUID: MumR9hYbRoiE7dSjxvZc5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="68153556"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="68153556"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 07:30:50 -0700
X-CSE-ConnectionGUID: QNODlwNHS7qAdlDu6zrkuQ==
X-CSE-MsgGUID: j4wpRpnNRE2oX/CeFe2Lcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="168687772"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 07:30:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 07:30:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 07:30:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.87)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 07:30:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jpw4jyCJcQy7VMAVW7y1ewE71cZXG8I0E3zezZ7Iy2D6TdTWI8pPcjdxsddPwgxv/44OiyRRwnu/fZRDEHWYryr22sArQoXuQGRm9/CbeiUTDsk8w3VBVAP/x7X270jt6vVUHg7aNXQZPtwfaV6bF0ZgXh57YdDNuAWUIKkRcNQyBZGuS0pJjw1T4bWvo0myfDNw2I4RhGyRjhD4pPL7ZDzEu+wKid0kbmsWfdhq+QPclE7K/G9rfk5yzJRer8TWP1u2rxQHZkoMxRMa0ueVn53xW4xXGgKFHCnyET2q7W//NQU4uEBwWNgv4Dk9YxUOogosxefpU/fjkGwI5dGCJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L8oyIxcG1xWeRjn8VByfXAMIMyEcJ/e3DVXweeHBw/k=;
 b=e4nJuCuzcwuV1bdkA+eB6phTqs5jdNjAyg4I3n08V4LCPE88ewEdZwazsyoqKDVYMq3BK92l26aAQr/8T15OkRfi/mDq3fa1Oi1SQUz0Ke9xB79SkoLcIjeS9Cm2/DbPKMOCFvwRmoFSmS2pQTXwcZsRxCyiBhugDl+J7mm4qMHPIeEqoVeG4JE3gFTHbLlTJ/OnrlP+1xVnbKiw/FHuSJPQKcwl7LYlj76Y3x9wPM4fIb50+6DTReHmhdF7rWCKOVY0wb5BVqwlsHd/pfgGT/CPMLMMX8AImccNnO8+u/DU1LgHr0JOYpFGuw2Z14W4V0N8kjYi3xX7IarXKm84Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by PH7PR11MB6054.namprd11.prod.outlook.com (2603:10b6:510:1d2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 14:30:04 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 14:30:04 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [PATCH v8 iwl-next] ice: add recovery clock and clock 1588
 control for E825c
Thread-Index: AQHb/JaMRMT7PMnEMUqBR/Y5MjEVJrRUMD7g
Date: Tue, 5 Aug 2025 14:30:04 +0000
Message-ID: <SJ2PR11MB8452414E4F138EE7B34C2B4C9B22A@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250724122736.3398010-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250724122736.3398010-1-grzegorz.nitka@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|PH7PR11MB6054:EE_
x-ms-office365-filtering-correlation-id: eb50fc97-0b7f-44dd-dd5b-08ddd42c9195
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?tXnZBi6Dn/hkznkN/s458d0OsdXK5gLmsToDOTuUfqltFkg9I/lmeTkYTyK7?=
 =?us-ascii?Q?PqsNQLW4wQ0GbVqUUr9w9nNPPdVjhq7hc05XJZem5lDRdsFnWCmGjVp+Og6B?=
 =?us-ascii?Q?i5pbCwn6eZjz8t7PGUT0y0Vd17OEYqWMPFXiXmPZiYbNxDgfLT1NyW3KQBFa?=
 =?us-ascii?Q?eKGL3moL6K5gtWDhez5bZdbbF1D2zJDiinHy4kdIEy3oRUgoDBEVoxwlJZX4?=
 =?us-ascii?Q?PmUS2DBmRd2ctpUXADFaWZ1pOP5JJTBaDQf3u7q08IBlEvYzMc3qCESkeM5G?=
 =?us-ascii?Q?kJwhKns8ULeKxLiaIJi6W26qg+OSktHfHKC+zSAZIAUSiCEy9sWM99xUe4j0?=
 =?us-ascii?Q?8kQlA3VoLhN6W4fPHznXK7quGydjWDnmRuse6vV1bGfxqkXAZVA11qJfH3LX?=
 =?us-ascii?Q?rZp5fzB6okosaL61Q6w8VeDhDV1mBjC6mBeSaoHh+i5JBWKMqJG1hW1jlkgX?=
 =?us-ascii?Q?XBd/Qo6B86aTE9bAqiMVdDTstD4CcCVjtqQDzy90X+8Qk/xhKoQAgUSEOhtx?=
 =?us-ascii?Q?35whn8sGdAVP9CM/hD3VdJsHkuzaJBZhPmxNNSV/w7QgZtNSvARjhxCz2gVM?=
 =?us-ascii?Q?BJ70wFDfQsfAXOUMevFakAwsYTXSN/lG/XpIpCtdynvTNFpW2EuDel77m8iT?=
 =?us-ascii?Q?eWDgj36om9XGUS3kGK9mNeqfTADis4vtS1MoRAAdOnVug7rd8Y155Hohc93g?=
 =?us-ascii?Q?V6G+smkTUhPYNHeBD+pBmMi6Z+JMzFYVNRp+2+msS/rqfC1sydJbgft7BLjg?=
 =?us-ascii?Q?octe9NPxrfNHw4tMJZaHBSN6LM1hzvKgCDpJEpVFeQLWXWZ/A4CcZ3nE4UON?=
 =?us-ascii?Q?eF4Nqe03UdwXb4OYwoSOvxV+MAekyUoRarA8Q9e2GfibYbCQCAP07I9E5Otw?=
 =?us-ascii?Q?V8DawFSQ35S38QHnOZOhCUA6zK65L0ByT3a9DFY1fIG3UxpEtp3qYH3rJnwR?=
 =?us-ascii?Q?EA2ffFt5d6VK5z2G3wOzn4RXYiwoKLSBy+nyBjympC5glfQZAQUFeXx2mCKb?=
 =?us-ascii?Q?INrNQ8U3niw/ecyOpuOK6PUvS91/T86LO9QL6nO1ziITpWIzDJ1FwTdwZ3jU?=
 =?us-ascii?Q?NOtNL7n3Hj9hXGa5gJ5A8p7Zx7sMgcUYxkmzlEZqHKw3pomB2/tck6ANL08Q?=
 =?us-ascii?Q?v+EqsGs7VsWiMs2V8OWu0iCKDRXM/IVGz0hjhR7hrD4uhbdqUX7IHca0fVPj?=
 =?us-ascii?Q?Zhrg8xZA5+F2E6ui20yu+DDcLpSMkgihSgccEWjmgXI+CS3MuutAM4Hq555Z?=
 =?us-ascii?Q?MUmwm0zit1momdF99miWXnhDlGWe/gjUyuhtvLagvsSXVNA5uTqArkEG6VQD?=
 =?us-ascii?Q?vPtsIaxT/6HvUrJ6eZvEbVcJCUREV7g480Z2bpRqyX7xA0wRAkEmrM6uEyu4?=
 =?us-ascii?Q?z3kYGY3SVGuO6CHzcF6iiJl502tYAm+A1AK3J/bvYmJVrxGhACjzbUV9QlzI?=
 =?us-ascii?Q?03g0WIlPxSbt7G2eZZqS/rwVWeZ7HtOrM6p8zD92zzAjIGThaSf21E39KvyA?=
 =?us-ascii?Q?ZmOabut73WJ/PJU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dLd1JrxqswRGpg9pon53RFaS3AV6Nmej+8cz4vm6cojUoWgJXOMGpoXQMDVl?=
 =?us-ascii?Q?tG4oqvp1Wvpd7A6cu+Q7kL7j9AeeqN53lz65FbhrJHLSD81pW7avknPBNSCI?=
 =?us-ascii?Q?L8qTyISqdbJ+4LHgqDM5Hn2DxBgeYh6rvpnEIbuFUHiY/yDW1aS+dR5Pql/g?=
 =?us-ascii?Q?ew5WxUl3HNMKHxVUZe0tGD4TsWD8nhHxwPmcE+IZPCBQYcd5TuFJPSp/hipc?=
 =?us-ascii?Q?rpLSkNxk2b8ICcVkiP9LpiV5yonoOr4GLL2MHLxscKY/cq8I871+cXJHXDEp?=
 =?us-ascii?Q?GP6JyJFJs4MnbS5tugAtgDbSRBSd6aHf/E+LZhmer17+lK7HS86f5564hn6T?=
 =?us-ascii?Q?wdEWStTVpFvgRuw/ux5O96aZfPcOaBBcdYzHdLG/3+AOtqEdbTUKpw/ZVN5/?=
 =?us-ascii?Q?mr1Iz9WehMX1xRqHE7aeu9c2/jP/wF4wEG3wYGfKoyUnA7uTHL+F0BYdvG1Q?=
 =?us-ascii?Q?ooDsNQdg/mxHflZHriX5Gis4Q2Ps5auny/ZX/76RyGShRXpwDgaVPbBk8NlM?=
 =?us-ascii?Q?iqY0gbuJKVwXdY53n348k2unNIB8z7SyRlq1hXoPe0LVFcx3mm6WtEs3e1gf?=
 =?us-ascii?Q?AtyYxTC9Gs+3C4z0Mh+j8UtGt8rQoVZQuw3dunBwpmdfg8cYhjwwj039viiV?=
 =?us-ascii?Q?TZN4/djQpTNu+hfTNwuaBOiHfCgs7FPR0AhreZFpR6uj48uz/9MBtpfBULkc?=
 =?us-ascii?Q?1TjNo1FkeP+VwPkpFooXIZrp1Td7mo4yO7UqHDxGJgBH6O7ceunhNR1AfHtT?=
 =?us-ascii?Q?VwR+PD2aFgDxOlZipqD1qqMaDk7ZInE8OCpRDcZZW9o6QwUUpBWE95KHn6YL?=
 =?us-ascii?Q?dIiWo/rVLWB404XtZB3Pm+HxYFGtFdmw26Pv6lThAG+zO8W5MJVdksPq9aZ6?=
 =?us-ascii?Q?h1zxEa4Yx/B62xOxjteJMFSC5MW0LSnBKFyhXK9SXlnkFUYNqrD0qj4dnF1Q?=
 =?us-ascii?Q?rLpLpzdTeKWNPK6H9vEvWEwapazvqO7lJQg7ZWUKmTQRdWzstR3+nlmKTe0q?=
 =?us-ascii?Q?/NpzKYWgzzWrCTmW3V6SMm6jR9uB8ePfs8o0CCYlrNZyDMz8sKYG3m/SgQk5?=
 =?us-ascii?Q?K+oQEqDw9S49F228DeGH5AiO0YgVc2R7eO7lOLbn9FvGxoH1ieNYz93hZ4cw?=
 =?us-ascii?Q?pL3ozxUhvsTtRhonq7FjRBBugHQVx19E5ph26kV4jsSR8biHfiqI800H/Vxi?=
 =?us-ascii?Q?maSNnrKoKul1958Bl6MCYv50wh+W4cMP8bSt2DciaMLAuuQGEeYblf9t7+s+?=
 =?us-ascii?Q?3E13dE/TYNBLgyeGFUpNu9RJsdXt5ERVIy6+a++Us+ivSbmnAwKM16ottDsE?=
 =?us-ascii?Q?V+T7c7ucGjgNA92UTazeugnLtWnxyqdwBfK6XrieTrn9Yr2uBKkXMHfpnpVK?=
 =?us-ascii?Q?tIKxih7jhrvpmhlsk3Fu4BQrl3B4WOwqD9yYnkX/dxhuIhlyCa+OT1xSPjsE?=
 =?us-ascii?Q?n69S1e9aTeeLQqZbiGlA2+WjixXV1MRIiJXyJcJbzoqHwbEzza1Y4tuHxv2Z?=
 =?us-ascii?Q?Kh9o7vNJDE+3OYjJ7IquR23tlAaq5ksoTk07ynw2wLldFH6ojP7SpreNBko1?=
 =?us-ascii?Q?oeqqpmB9K7vXK/bh2EN5lL1lVx531lh81tBjJ83g+Y+PY9q9sqIsAojE3BiT?=
 =?us-ascii?Q?+g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb50fc97-0b7f-44dd-dd5b-08ddd42c9195
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2025 14:30:04.2280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /l74L/W+2rfV6SZlKUacg4uuBcqSdukLVCzSK01zvPC7FbtyTPut6zSgv2C1klPW/M5eaujoFNLnmtYodhN9fmunhYXJSUOvDRE3oPsc2rk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6054
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754404251; x=1785940251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pi3ogCmzSagCYskji7Mmyip6WKTg32AWPqmQnRAWi7U=;
 b=Aodbn+BB628do8Son8VebOuM7F+b/N2ULuV+Oa3GhygGDp+bjwwkK5Nq
 NkvS3eFkwiiiG5ZSFfq/81rYGP20zviJT+6tHWwmUxzIrS8xrbyy8tRDJ
 KzxHA/v6+mVDOIIT2owLhryNPWaGb761wQLOLKlVVlor7Xp24Dp2wk76P
 mXzLfDEQIX+/vYw9NuyIScj1p8bEO0dUqSD0ZUxy6Oy9P5I+N5rqoti5Y
 IaADXeHi/1+X2rAtH6KbmJq6uqZGrVNX+AI0vbozeiBKwkVUaljRJZldF
 7tz7SbdYGsTD5ypVQ2gjqX6FJ2lcRQ+YIgcKPXUeeNP3YKpeq3rsPJPuC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Aodbn+BB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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

>From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
>Sent: Thursday, July 24, 2025 2:28 PM
>
>From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>
>Add control for E825 input pins: phy clock recovery and clock 1588.
>E825 does not provide control over platform level DPLL but it
>provides control over PHY clock recovery, and PTP/timestamp driven
>inputs for platform level DPLL.
>
>Introduce a software controlled layer of abstraction to:
>- create a DPLL of type EEC for E825c,
>- create recovered clock pin for each PF, and control them through
>writing to registers,
>- create pin to control clock 1588 for PF0, and control it through
>writing to registers.
>
>Usage example:
>- to get EEC PLL info
>$ ynl --family dpll --dump device-get
>[{'clock-id': 0,
>  'id': 6,
>  'lock-status': 'locked',
>  'mode': 'manual',
>  'mode-supported': ['manual'],
>  'module-name': 'ice',
>  'type': 'eec'},
>...
>  ]
>
>- to get 1588 and rclk pins info
>(note: in the output below, pin id=3D31 is a representor for 1588 input,
>while pins 32..35 corresponds to PHY clock inputs to SyncE  module)
>$ ynl --family dpll --dump pin-get
>[{'board-label': 'CLK_IN_0',
>  'capabilities': set(),
>  'clock-id': 0,
>  'id': 27,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'input',
>                     'parent-id': 6,
>                     'state': 'connected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'mux'},
> {'board-label': 'CLK_IN_1',
>  'capabilities': set(),
>  'clock-id': 0,
>  'id': 28,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'input',
>                     'parent-id': 6,
>                     'state': 'connected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'mux'},
> {'board-label': 'pin_1588',
>  'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 31,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 32,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 33,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 34,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 35,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'}]
>
>- to set PHY0 clock as SyncE module input
>$ ynl --family dpll --do pin-set --json '{"id":32,"parent-pin":\
>    {"parent-id":27, "state":"connected"}}'
>
>- to set 1588 Main Timer as source into SyncE module
>$ ynl --family dpll --do pin-set --json '{"id":31,"parent-pin":\
>    {"parent-id":27, "state":"connected"}}'
>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
>---
>v7->v8:
>- rebased
>- removed unrelated changes
>- change pin_1588 type to DPLL_PIN_TYPE_EXT
>- use ICE_SYNCE_CLK_NUM to determine the number of rclk pins
>---
> drivers/net/ethernet/intel/ice/ice_dpll.c   | 852 ++++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_dpll.h   |  24 +
> drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  34 +-
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
> drivers/net/ethernet/intel/ice/ice_tspll.h  |   7 +
> drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
> 7 files changed, 869 insertions(+), 58 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>b/drivers/net/ethernet/intel/ice/ice_dpll.c
>index 53b54e395a2e..f89dec5e532e 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -9,6 +9,7 @@
> #define ICE_CGU_STATE_ACQ_ERR_THRESHOLD		50
> #define ICE_DPLL_PIN_IDX_INVALID		0xff
> #define ICE_DPLL_RCLK_NUM_PER_PF		1
>+#define ICE_DPLL_PIN_1588_NUM			1
> #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
> #define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
> #define ICE_DPLL_PIN_PRIO_OUTPUT		0xff
>@@ -74,6 +75,7 @@ static const char * const pin_type_name[] =3D {
>
> static const char * const ice_dpll_sw_pin_sma[] =3D { "SMA1", "SMA2" };
> static const char * const ice_dpll_sw_pin_ufl[] =3D { "U.FL1", "U.FL2" };
>+static const char ice_dpll_pin_1588[] =3D "pin_1588";
>
> static const struct dpll_pin_frequency ice_esync_range[] =3D {
> 	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
>@@ -528,6 +530,117 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct
>ice_dpll_pin *pin,
> 	return ret;
> }
>
>+/**
>+ * ice_dpll_rclk_update_e825c - updates the state of rclk pin on e825c
>device
>+ * @pf: private board struct
>+ * @pin: pointer to a pin
>+ *
>+ * Update struct holding pin states info, states are separate for each
>parent
>+ *
>+ * Context: Called under pf->dplls.lock
>+ * Return:
>+ * * 0 - OK
>+ * * negative - error
>+ */
>+static int ice_dpll_rclk_update_e825c(struct ice_pf *pf,
>+				      struct ice_dpll_pin *pin)
>+{
>+	u8 rclk_bits;
>+	int err;
>+	u32 reg;
>+
>+	if (pf->dplls.rclk.num_parents > ICE_SYNCE_CLK_NUM)
>+		return -EINVAL;
>+
>+	err =3D ice_read_cgu_reg(&pf->hw, ICE_CGU_R10, &reg);
>+	if (err)
>+		return err;
>+	rclk_bits =3D FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
>+	SET_PIN_STATE(pin, ICE_SYNCE_CLK0, rclk_bits =3D=3D
>+		     (pf->ptp.port.port_num +
>ICE_CGU_BYPASS_MUX_OFFSET_E825C));
>+
>+	err =3D ice_read_cgu_reg(&pf->hw, ICE_CGU_R11, &reg);
>+	if (err)
>+		return err;
>+	rclk_bits =3D FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
>+	SET_PIN_STATE(pin, ICE_SYNCE_CLK1, rclk_bits =3D=3D
>+		     (pf->ptp.port.port_num +
>ICE_CGU_BYPASS_MUX_OFFSET_E825C));
>+	return 0;
>+}
>+
>+/**
>+ * ice_dpll_rclk_update - updates the state of rclk pin on a device
>+ * @pf: private board struct
>+ * @pin: pointer to a pin
>+ * @port_num: port number
>+ *
>+ * Update struct holding pin states info, states are separate for each
>parent
>+ *
>+ * Context: Called under pf->dplls.lock
>+ * Return:
>+ * * 0 - OK
>+ * * negative - error
>+ */
>+static int ice_dpll_rclk_update(struct ice_pf *pf, struct ice_dpll_pin
>*pin,
>+				u8 port_num)
>+{
>+	int ret;
>+
>+	for (u8 parent =3D 0; parent < pf->dplls.rclk.num_parents; parent++) {
>+		ret =3D ice_aq_get_phy_rec_clk_out(&pf->hw, &parent, &port_num,
>+						 &pin->flags[parent], NULL);
>+		if (ret)
>+			return ret;
>+		SET_PIN_STATE(pin, parent,
>+			      ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
>+			      pin->flags[parent]);
>+	}
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_dpll_update_pin_1588_e825c - updates the state of clock 1588 pin
>+ * @hw: board private hw structure
>+ * @pin: pointer to a pin
>+ * @parent: clock source identifier
>+ *
>+ * Update struct holding pin states info, states are separate for each
>parent
>+ *
>+ * Context: Called under pf->dplls.lock
>+ * Return:
>+ * * 0 - OK
>+ * * negative - error
>+ */
>+static int ice_dpll_update_pin_1588_e825c(struct ice_hw *hw,
>+					  struct ice_dpll_pin *pin,
>+					  enum ice_synce_clk parent)
>+{
>+	u8 bits_clk;
>+	int err;
>+	u32 reg;
>+
>+	switch (parent) {
>+	case ICE_SYNCE_CLK0:
>+		err =3D ice_read_cgu_reg(hw, ICE_CGU_R10, &reg);
>+		if (err)
>+			return err;
>+		bits_clk =3D FIELD_GET(ICE_CGU_R10_SYNCE_S_REF_CLK, reg);
>+		break;
>+	case ICE_SYNCE_CLK1:
>+		err =3D ice_read_cgu_reg(hw, ICE_CGU_R11, &reg);
>+		if (err)
>+			return err;
>+		bits_clk =3D FIELD_GET(ICE_CGU_R11_SYNCE_S_BYP_CLK, reg);
>+		break;
>+	default:
>+		return -EINVAL;
>+	}
>+	SET_PIN_STATE(pin, parent, bits_clk =3D=3D ICE_CGU_NCOCLK);
>+
>+	return 0;
>+}
>+
> /**
>  * ice_dpll_sw_pins_update - update status of all SW pins
>  * @pf: private board struct
>@@ -668,22 +781,14 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct
>ice_dpll_pin *pin,
> 		}
> 		break;
> 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
>-		for (parent =3D 0; parent < pf->dplls.rclk.num_parents;
>-		     parent++) {
>-			u8 p =3D parent;
>-
>-			ret =3D ice_aq_get_phy_rec_clk_out(&pf->hw, &p,
>-							 &port_num,
>-							 &pin->flags[parent],
>-							 NULL);
>+		if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
>+			ret =3D ice_dpll_rclk_update_e825c(pf, pin);
>+			if (ret)
>+				goto err;
>+		} else {
>+			ret =3D ice_dpll_rclk_update(pf, pin, port_num);
> 			if (ret)
> 				goto err;
>-			if (ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
>-			    pin->flags[parent])
>-				pin->state[parent] =3D DPLL_PIN_STATE_CONNECTED;
>-			else
>-				pin->state[parent] =3D
>-					DPLL_PIN_STATE_DISCONNECTED;
> 		}
> 		break;
> 	case ICE_DPLL_PIN_TYPE_SOFTWARE:
>@@ -1021,6 +1126,33 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin,
>void *pin_priv,
> 	return ret;
> }
>
>+/**
>+ * ice_dpll_pin_state_get_e825c - update e825c device pin's state on dpll
>+ * @pin: pointer to a pin
>+ * @pin_priv: private data pointer passed on pin registration
>+ * @dpll: registered dpll pointer
>+ * @dpll_priv: private data pointer passed on dpll registration
>+ * @state: on success holds state of the pin
>+ * @extack: error reporting
>+ *
>+ * Set pin state of e825c device to connected.
>+ *
>+ * Context: Called under pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ */
>+static int ice_dpll_pin_state_get_e825c(const struct dpll_pin *pin,
>+					void *pin_priv,
>+					const struct dpll_device *dpll,
>+					void *dpll_priv,
>+					enum dpll_pin_state *state,
>+					struct netlink_ext_ack *extack)
>+{
>+	*state =3D DPLL_PIN_STATE_CONNECTED;
>+
>+	return 0;
>+}
>+
> /**
>  * ice_dpll_output_state_get - get output pin state on dpll device
>  * @pin: pointer to a pin
>@@ -1842,6 +1974,228 @@ ice_dpll_phase_offset_get(const struct dpll_pin
>*pin, void *pin_priv,
> 	return 0;
> }
>
>+/**
>+ * ice_dpll_cfg_bypass_mux_e825c - check if the given port recovered cloc=
k
>+ * or clock 1588 is set active
>+ * @hw: Pointer to the HW struct
>+ * @ena: true to enable the reference, false if disable
>+ * @port_num: Number of the port
>+ * @output: Output pin, we have two in E825C
>+ * @clock_1588: true to enable 1588 reference, false to recover from port
>+ *
>+ * Dpll subsystem callback. Handler for setting the correct registers to
>+ * enable a functionality on e825c device.
>+ *
>+ * Context: Called under pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ * * negative - error
>+ */
>+static int
>+ice_dpll_cfg_bypass_mux_e825c(struct ice_hw *hw, bool ena,
>+			      u32 port_num, enum ice_synce_clk output,
>+			      bool clock_1588)

There is now new file ice_tspll.c, where this code could belong, then just
provide interface for this code.

>+{
>+	u8 first_mux;
>+	int err;
>+	u32 r10;
>+
>+	err =3D ice_read_cgu_reg(hw, ICE_CGU_R10, &r10);
>+	if (err)
>+		return err;
>+
>+	if (!ena)
>+		first_mux =3D ICE_CGU_NET_REF_CLK0;
>+	else if (clock_1588)
>+		first_mux =3D ICE_CGU_NCOCLK;
>+	else
>+		first_mux =3D port_num + ICE_CGU_BYPASS_MUX_OFFSET_E825C;
>+
>+	r10 &=3D ~(ICE_CGU_R10_SYNCE_DCK_RST | ICE_CGU_R10_SYNCE_DCK2_RST);
>+
>+	switch (output) {
>+	case ICE_SYNCE_CLK0:
>+		r10 &=3D ~(ICE_CGU_R10_SYNCE_ETHCLKO_SEL |
>+			 ICE_CGU_R10_SYNCE_ETHDIV_LOAD |
>+			 ICE_CGU_R10_SYNCE_S_REF_CLK);
>+		r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_S_REF_CLK, first_mux);
>+		if (clock_1588)
>+			r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_ETHCLKO_SEL,
>+					  ICE_CGU_REF_CLK_BYP0);
>+		else
>+			r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_ETHCLKO_SEL,
>+					  ICE_CGU_REF_CLK_BYP0_DIV);
>+		break;
>+	case ICE_SYNCE_CLK1:
>+	{
>+		u32 val;
>+
>+		err =3D ice_read_cgu_reg(hw, ICE_CGU_R11, &val);
>+		if (err)
>+			return err;
>+		val &=3D ~ICE_CGU_R11_SYNCE_S_BYP_CLK;
>+		val |=3D FIELD_PREP(ICE_CGU_R11_SYNCE_S_BYP_CLK, first_mux);
>+		err =3D ice_write_cgu_reg(hw, ICE_CGU_R11, val);
>+		if (err)
>+			return err;
>+		r10 &=3D ~(ICE_CGU_R10_SYNCE_CLKODIV_LOAD |
>+			 ICE_CGU_R10_SYNCE_CLKO_SEL);
>+		if (clock_1588)
>+			r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_CLKO_SEL,
>+					  ICE_CGU_REF_CLK_BYP1);
>+		else
>+			r10 |=3D FIELD_PREP(ICE_CGU_R10_SYNCE_CLKO_SEL,
>+					  ICE_CGU_REF_CLK_BYP1_DIV);
>+		break;
>+	}
>+	default:
>+		return -EINVAL;
>+	}
>+
>+	err =3D ice_write_cgu_reg(hw, ICE_CGU_R10, r10);
>+	if (err)
>+		return err;
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_dpll_get_div_e825c - get the divider for the given speed
>+ * @link_speed: link speed of the port
>+ * @divider: output value, calculated divider
>+ *
>+ * Dpll subsystem callback. Handler for setting the divider on e825c
>device.
>+ *
>+ * Context: Called under pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ * * negative - error
>+ */
>+static int ice_dpll_get_div_e825c(u16 link_speed, u8 *divider)
>+{
>+	switch (link_speed) {
>+	case ICE_AQ_LINK_SPEED_100GB:
>+	case ICE_AQ_LINK_SPEED_50GB:
>+	case ICE_AQ_LINK_SPEED_25GB:
>+		*divider =3D 10;
>+		break;
>+	case ICE_AQ_LINK_SPEED_40GB:
>+	case ICE_AQ_LINK_SPEED_10GB:
>+		*divider =3D 4;
>+		break;
>+	case ICE_AQ_LINK_SPEED_5GB:
>+	case ICE_AQ_LINK_SPEED_2500MB:
>+	case ICE_AQ_LINK_SPEED_1000MB:
>+		*divider =3D 2;
>+		break;
>+	case ICE_AQ_LINK_SPEED_100MB:
>+		*divider =3D 1;
>+		break;
>+	default:
>+		return -EOPNOTSUPP;
>+	}
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_dpll_cfg_synce_ethdiv_e825c - set the divider on the mux
>+ * @hw: Pointer to the HW struct
>+ * @output: Output pin, we have two in E825C
>+ *
>+ * Dpll subsystem callback. Set the correct divider for RCLKA or RCLKB.
>+ *
>+ * Context: Called under pf->dplls.lock
>+ * Return:
>+ * * 0 - success
>+ * * negative - error
>+ */
>+static int ice_dpll_cfg_synce_ethdiv_e825c(struct ice_hw *hw,
>+					   enum ice_synce_clk output)

Ditto.

Thank you!

[..]
