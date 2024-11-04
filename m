Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C085D9BB213
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:01:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9B4140363;
	Mon,  4 Nov 2024 11:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sYqYkGrnKgNM; Mon,  4 Nov 2024 11:01:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB5DA40295
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730718102;
	bh=OKUxZF+6ydDeiaG5K2nXzldAaOXcb0fXrsF9wAd4Dng=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0y6DZAKr9DR/6P/AujJrMFUELIgNrEnZdFU1hRuLdJIbbprl2fDQ7GKL6ehUspdOW
	 sPWk8dpJwZjqdfAIbUSuY+oLZv/YJXiQF3VyK/QU3pApP0+aEyIQL6inGPmuqUy73q
	 CQBppi2vqJYhMN8icecRryCCao9yt8jYkA+Ck+JW6qxeMqFMrU3L7dXlzZai0plEHk
	 5OcTCZOg01oCEj7pzOkOn6aK3/9W6PGSVk1kQzppQ2sPVITmPjQRA5aRqpk3T0nZWk
	 gbTrmDOTROytI0sDbzv9jyif4w9aVLt/5/RO0kVgixYJyHjF+QXskuXC6sIO1PYLyi
	 IlKfPK9cPqfdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB5DA40295;
	Mon,  4 Nov 2024 11:01:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E59E9723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C701B80F4E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NFh67PbDIUBE for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:01:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1211680F3C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1211680F3C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1211680F3C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:01:38 +0000 (UTC)
X-CSE-ConnectionGUID: YKN94IbfQuWW0U44yUotgA==
X-CSE-MsgGUID: +KeBvL1iSyKZj+C6Oaercg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30585718"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30585718"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:01:39 -0800
X-CSE-ConnectionGUID: wLbKtl0RT+iqTJ27ruqthw==
X-CSE-MsgGUID: xpIK0LTQT3eyn04OoZ//Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="114406787"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 03:01:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 03:01:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 03:01:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 03:01:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dLkQCQuUbnQsMo6FmQPmwtgsNReTrFxWTa0L46AFBOHu4dKokT7HoqDVJ6nGszU7N1WcxAHSeX0tZpAGtFbERUtBlWTF710RCCHEZOcPN0MYitOOp34noIMrhRfERPz5Mo1+oVRLPL1ovhu09myxUML4WeyrmIvx0tpMyJUgNSJYyxwoCAgoYGu8sk/6UabsbW5utPaapbe+SrNHYphMZSKLoNoEM45ZTx8YozKoCJfGAkPg4vczqUtYABKo5jQK5l0qTt/vuhaimeeW3XcFeNgKja26IZANUGF7uPIvGbJU7HnjEemhW1kXCcg5VgGN6HDPZY5UhPGFgCRujSIEmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OKUxZF+6ydDeiaG5K2nXzldAaOXcb0fXrsF9wAd4Dng=;
 b=RgEDHflqH6iw/C9mBkJIqwVqCCN4dIDWbThVnZ2cWbazYhZx0Q2OfjD5nV8H662G3tHhgDz737nwKZQX7t6kV+CL6htzT30s/SJ/+ZMtXLR87cmlK2GGy2YjkYmS0EBb2cnsCrKj11KagJC/PIlUJlZYTrrcpKIhVEbD1WX5KRbRFat3ICbcHAhK+4VszxulPj/oSrMECeYynhZZ5pBNhjsNUGcjVbbn8iZbdRWVzeMgWUCBlwWqky6IeU1ba/j6z1uYTISxTK/u8nxT1NygKux9fCB6GDNXIR9Ffut+oA8W9FkwhKzLwLMaA6W2PXX+Rghv/zPKgjZozfUYQ0jQyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 11:01:35 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 11:01:35 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 08/14] iavf: periodically
 cache PHC time
Thread-Index: AQHbJEUqQKVIISX3s0mwsv7eyUZ95rKnCTbA
Date: Mon, 4 Nov 2024 11:01:35 +0000
Message-ID: <SJ0PR11MB5865227E501F005A08B0FC578F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-9-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-9-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY8PR11MB7082:EE_
x-ms-office365-filtering-correlation-id: 9a442586-a83a-4910-3ede-08dcfcc00ca5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ho7ft+GuDYIfr2Ir/lF9ldZPVlCigGImLalU7amIW3uuJUXl91ygnXcQr9yn?=
 =?us-ascii?Q?VxDFg78o+qtX6OaDzVNZd5EDtHwpUagTFx/e9UNPamF3X9sbs5po8BD24xrY?=
 =?us-ascii?Q?6kuZRo5CNKMASWnxgHutPh/qfAs7utD15HCrLjYU0XdFt2sOf3j14TZ2n/Xy?=
 =?us-ascii?Q?ynI3/9kzb2xTP8y3m7dYuyumcQQkBgAEx3Zn5LnV9TjoThdsVYJguaGzOmCV?=
 =?us-ascii?Q?BrecpXZroMbKmcSFJJYHqMS4wiLiTCi0Yg4vWA84GmI3T8azGvdJgtyDH5hT?=
 =?us-ascii?Q?gO9WcJUFqQmvr+eniS/USdri7Nj8Q4xtUNTfp9lDfilT1Urlk5nXu4KNksn3?=
 =?us-ascii?Q?InWTFqex8eMoNf37xXu8kXdD9EZQ9KXhsP1EZ1+3On2jBNgkFkP0Iil83GNT?=
 =?us-ascii?Q?OEpqg8VoBJS0pX235FkdBJMI7jYDVDhQp2zbw62ouBKrXjlI61lJHbN9rUtc?=
 =?us-ascii?Q?ozuX2E8fPG2e31DjZrMxI/b5yNWsYtzs/+5CJY5rDAL/GyVdOgY/9gBO+VFe?=
 =?us-ascii?Q?pfcas69dCQ6wa359r3UrtXyRmA2xXla7RRqrw1N6lFHxk5G1K37m8KHhk1Sz?=
 =?us-ascii?Q?YadrpTsigpv67wRToHa+1o7yxcbgeAFe1IUkqrwwy0YDnRw+m9/AN/DNToTH?=
 =?us-ascii?Q?C/lFOPaPgVnIFzZsrTl4lAndpAV1BEV6E7wV52k+ghyeXF5e5hFmSzW8GDH4?=
 =?us-ascii?Q?Mqn1vSw5VNNKwwivFvdwiCFkgUwK8umezWYbQ5X+nnpMj199nHp1wb57ObP5?=
 =?us-ascii?Q?011zryKxUyZpxhn0PVpSD5lefyAijAesNKOVgX5VVqjA+5lXz+0sr2Aku/hT?=
 =?us-ascii?Q?NxEToLPC6cdEMxeujm4GlA6G4Vcv9ZQuxT4rKyQTTehqCw6t750pGxwLT36d?=
 =?us-ascii?Q?t3B3IUtReuy+gINn+i5PLAkIs2tysG+q4xQP3MjxFxRJe/sxVQTVPoFZrG4A?=
 =?us-ascii?Q?mReMPd6UxHj3RBe8jK+5NQyUeq57H6FUGMmOcvt5gyloMDuei6wohHEYKo2r?=
 =?us-ascii?Q?NGz1b8QqOfIyYfn7JSyRh0AIY6E1owYHb/0/pYX1REg5QE+M3tn2qKI4WlQY?=
 =?us-ascii?Q?TPb1eN+viTyvsEcHzYmQdGTMsOkwtFakhkNbZX8JuKBySU7wdk0NXW2VfWSK?=
 =?us-ascii?Q?EHYSFiraKet+iXZD5CCctNRfKrdT62z8A3Waw+FcOdlqVs53e4U6oH6aSDID?=
 =?us-ascii?Q?PLBHXxsgBCLs4W7wF9dhWkV/0J50z+7eJpXZloR05aH1tm3pCqfZxALyPh+v?=
 =?us-ascii?Q?Id/G+v0cmnDvPlEVUF5s/UV8cNiDEk9r6z6yW3i1Pk3RIIMch4ZRebcN6NIH?=
 =?us-ascii?Q?lS7u7pNhNNscf//aTEBaCPdC/C5RbuF4eRZxwW/rmbmWkfUzhCZ488b/hSUK?=
 =?us-ascii?Q?z/a4wqk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pFsvRewXT2Wd3YB9YRBb/5xAYGZY8LsJuQRZgR3qaoreNOsfFDMXPaP4dIot?=
 =?us-ascii?Q?jt8RMRWaWQNH/FTFvSicwALsvF1GPo6Kf2nYT+3JmlgxgIcNmpd8Uvpa77F+?=
 =?us-ascii?Q?E9y1GG5OdrMOCcLDnc+agUWfuOUvFTM/fN6z4qkTZM/J0ipXmp1LD9Z3xGA5?=
 =?us-ascii?Q?pk3cRIbJCi9FKMjXla42mgN+FAjH5CB2/yeKryDxKHGl1YatfI/yCzte8tmg?=
 =?us-ascii?Q?82fFGRCUawgW4IQ5DFhIE4BlDdxrFPYOtdCCI9ziJrGCqDHF4W53+led6iVx?=
 =?us-ascii?Q?Q9QUGYimYvn8cNPnb+AvjmqUb6Evru11QNv1XWkAOmuZyB27yvm4zf6zP8qA?=
 =?us-ascii?Q?I9P64IJGnpTFzlSd6Nw/FWdy8JbHvxu/QMM/vpjI6EPJbMuS7evL4n1HoEZo?=
 =?us-ascii?Q?Dmbr0t6IfGrTAD5wHx0fwirMh50tKBxy+euIciM2NJDxvxHmWYz6IN4GrwbX?=
 =?us-ascii?Q?mALU/yE40539tutA763D1s+6h5I/EzPXciUgszNSK7Q6xOdzEbVptu8ZS0JX?=
 =?us-ascii?Q?giL01NX+V7Gv1BZhRMuAuL4iscT0G8/QLqePiLEm3VkIY9T6t/oSrZnpEb42?=
 =?us-ascii?Q?4T/UqTt+RsvtQbt+kW6uSsSR3JA7ecHqRrmSdrvz+1V8FfVGH7sftXtNZQ8U?=
 =?us-ascii?Q?h+wiwY1p7IiCpBQU843AjXAo7ZoKoXIuHQpg1MWsX/2/obd2eqLysAwAjLeA?=
 =?us-ascii?Q?teejm95PBP8n6R0egkLhd9JIkKvCTqO27n6+xecHyF0qbVugssFCS4vhktgY?=
 =?us-ascii?Q?lpfkV8EilrXbBd7N9pURGEQa+LWSxJ5j4xEQ0K6Cm/amxqfgLQ/mw8DKxcKX?=
 =?us-ascii?Q?G+PXBS2cTbgFW75q3Resc7lGquNXSLHAW8ADNWtiBMTeXaAB+zYcD5igHYK9?=
 =?us-ascii?Q?UPPpp6SFJXBqMYEFGHDfDQy4qd3UQJK4VHPqgVW1uti1+eZ9q7zV8eefDC4r?=
 =?us-ascii?Q?zfhgcvZQomS/vSs+P+Z9HF+FBLxwPeQmBmKOOG+Ju7I7Ey/6pCCOzuxXT2iE?=
 =?us-ascii?Q?9Czq3XD1pQZyIzyJb2o0dKckQIVXewTBjXw8Uut1iDLADYjmLtM2bI4rLdP0?=
 =?us-ascii?Q?s+uB15YPPsS9H3HRLruSWQE2HxB1XqkjD/b2fyxjULzTxfmzV99HzgPi+3F8?=
 =?us-ascii?Q?JpkANbg5o0BJ8mBeR+FxcgmCFOrbj1bySLVAYF0tmn/22NDsLoRf23KuscEq?=
 =?us-ascii?Q?Zxy1Mpz55+10k6qjvOqZAGLd7W1ArliyYEXLDJ7lx51qWtekAE2R5TkaI/A9?=
 =?us-ascii?Q?2i3+5HDsne29jgahVPffGVPATJw34qk2OFaZe915/wyonaPGPSbHgXsimsr9?=
 =?us-ascii?Q?OfRPgrbOX71mASUTPKDXHIuM7sazqMHnEF7DO9ToBYPr5hRsO80om6dI2hh3?=
 =?us-ascii?Q?Ad0wuQnQqGnJuLhljpeq7TZj9F58r/JzmKkmMR1WYGzpsYyckuMlWW2GTpjs?=
 =?us-ascii?Q?KHMy+zMJ6/Nq36hPyR0vWAeXqDgCXF9Lzf4ragIhKvt/0gfWrxboxbwJ7JW3?=
 =?us-ascii?Q?vAJ2uCLbiPzqLwcjZmhS2q2gSl/MJ6yASOwyX15fp9p/aYar4It6OUkcTW4m?=
 =?us-ascii?Q?X0XYbm2KVBtOcThHKV2+aRlksuLhm2z01T4rFjcWZ8LT3Vwo8gvVHgdUFHWx?=
 =?us-ascii?Q?nA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a442586-a83a-4910-3ede-08dcfcc00ca5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 11:01:35.5786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /dBedzLFiZixsE+8Il3fjRJVIZt6ZnkfEaL69Ppsnp+bxumHBBygKAKqW6eyBfaAqDKHlHLmoUvSPnrm4VT90Ib+C51Ja2aj2C8gtiLz5nY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730718100; x=1762254100;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OKUxZF+6ydDeiaG5K2nXzldAaOXcb0fXrsF9wAd4Dng=;
 b=QOe9RUvx/FH5AB0gGgwIrH/AHBESLE2w3rAZV2IPpSLMUOqKs4SlUiJK
 W4SaHliRoOwh0F/OuOMn4BREQU4t5/GbQjv2ys6HbWhyKXaytnsl9Q5ef
 Xn1mk1De1a87zE5EhusQlSObibC9Wnc78v6T+sRTRyQWOp+dusyaXTTcT
 fXKZB08DmTz7+wLVjb0GUJGTOH4OSbdhYb0O6M9fTNtcxR6o4oz+GpCnQ
 LeLrhJskcU0MRJHScw4CXNIM8hYsuOwNOXduRHglcQrxGb4Yf+LkNYyUZ
 N/Yt9aG100n8bBLVKESsRxLyrQuMMHH8mVohN6h6WFaveWrSSzbkwSU+n
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QOe9RUvx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 08/14] iavf: periodically
 cache PHC time
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
> Wojciech <wojciech.drewek@intel.com>; Simon Horman <horms@kernel.org>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 08/14] iavf: periodically =
cache PHC
> time
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> The Rx timestamps reported by hardware may only have 32 bits of storage f=
or
> nanosecond time. These timestamps cannot be directly reported to the Linu=
x
> stack, as it expects 64bits of time.
>=20
> To handle this, the timestamps must be extended using an algorithm that
> calculates the corrected 64bit timestamp by comparison between the PHC ti=
me
> and the timestamp. This algorithm requires the PHC time to be captured wi=
thin
> ~2 seconds of when the timestamp was captured.
>=20
> Instead of trying to read the PHC time in the Rx hotpath, the algorithm r=
elies on a
> cached value that is periodically updated.
>=20
> Keep this cached time up to date by using the PTP .do_aux_work kthread
> function.
>=20
> The iavf_ptp_do_aux_work will reschedule itself about twice a second, and=
 will
> check whether or not the cached PTP time needs to be updated.
> If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the time from
> the PF. The jitter and latency involved with this command aren't importan=
t,
> because the cached time just needs to be kept up to date within about ~2
> seconds.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


