Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 436F3AEB34A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 11:48:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DEAA8430C;
	Fri, 27 Jun 2025 09:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aOUiB4xVRyf3; Fri, 27 Jun 2025 09:48:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93307818EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751017717;
	bh=IoZWITL6wNw1sYCkEWaVflVnWKc6j+ucYt1ioUZ3WpE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gnj82PAta/x2XRVYsLwOs4k3wjIN8ZpDoI/eM4cak0wy2tRGrjR17Aqf6zG832vOa
	 qkY/5hixJQ116/Z5I1honqcj8JC5uVHdCdSqSGli+IiwGMNAD+052MHXmPbrIHvugF
	 ee87J0Gq1YG4Hxu0xLlbfywRP/JVV86rZP1i/VunDKllQg8RU34YwLl6HHklKXicZz
	 P+k2rxCXU5ku8pK2CWquTubtPZy0t92WxMP4QOB77PJe3YJ6TVZJ3yMXOpNdOFIJXR
	 enT0+DX55IJz4342lBDhtHJ3/zUqP/3/NP5MHWANpWGveyNkuDKJbVSS7jFVY2d+Ew
	 ThbDGZtlqzpgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93307818EC;
	Fri, 27 Jun 2025 09:48:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4133111A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32B9E403D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YzSinphAJ1Sw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 09:48:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67D9740443
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67D9740443
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67D9740443
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:48:35 +0000 (UTC)
X-CSE-ConnectionGUID: Qh09kq71QtqYyBwrbglSNg==
X-CSE-MsgGUID: rFRgJyCtR0KaaykkEbgHhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="64766593"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="64766593"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:48:35 -0700
X-CSE-ConnectionGUID: knGQE9gYRr+gEMPryO2nuw==
X-CSE-MsgGUID: WTEOMF1WT6ykDIF4qhopyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="158494281"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:48:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:48:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 02:48:34 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.76) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:48:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qERBm0zCadRTl/5A7DGFypxSExGN5LNZtuu+Gegn8qhDRQ1yVKjFfygSaWL7Ql0nV3O5VVXCA3tkOfoFA3gIbSdHLCLCNko1MK3wS0y4HQzq34EmWxi19B6ffVoQcLzRqWBycfdYr8ZXF3cbJBQ7E+vwegn9JYbc2uhSjGyinx7gUuUrwtnvGEPUIr7WJmcruL99ra7yEdJrOIG891HaR7f2pyi5UODwOc+xy0/KcH9YMCjjqC7jXdYVwNyARPTgc8Lo2/WdlT47jkbfdDIt+FvbIyj8ZOCC3zs3+pAGcInvmPMfyVlLiQyBZ+zivwTPH4vQY8Hm2Pcc9vcv6iezGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IoZWITL6wNw1sYCkEWaVflVnWKc6j+ucYt1ioUZ3WpE=;
 b=lmyHof2IdoOq/3alFg68J85YeFDXufuP51hQfASkvv3fXmiCekqy3NludubhakDZ6kUWFMLYVu1p4Zcsdp+eOu+HhS1Xjwcho6+Lbkq0rKGnvq/Lx6yVWenL6Ed7MHKIRSmI2wr3ds6wDQRu5ehefl+Z3WbEemmP+BuKg7mKu+v82OnZfBe+g/h9hql7fAP/qOpjXtwPTN+FREWrqJkjsjO/udrLhD3foqVSsOIQdAPyJ79lplNewnypMFr4uGApz21v6jOWpmbJPPrs2U0WW+/Cb+yjBi9YtbIgAtuzmhrhHG3/AfS6OjGDJTdFjjDG6g717rsbHeU2dKtAZuuW7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::33) by PH7PR11MB8527.namprd11.prod.outlook.com
 (2603:10b6:510:2ff::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Fri, 27 Jun
 2025 09:48:18 +0000
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6]) by DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6%6]) with mapi id 15.20.8835.026; Fri, 27 Jun 2025
 09:48:18 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Osuchowski, Dawid"
 <dawid.osuchowski@intel.com>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 2/4] ixgbe: check for MDD events
Thread-Index: AQHbgRtOypI4/XcAgUqep2Q3N0/xpbNNdp8AgMoYUXA=
Date: Fri, 27 Jun 2025 09:48:18 +0000
Message-ID: <DS4PPF7A0031045695499DD72B0FCDF17838F45A@DS4PPF7A0031045.namprd11.prod.outlook.com>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
 <20250217090636.25113-3-michal.swiatkowski@linux.intel.com>
 <20250218193634.GI1615191@kernel.org>
In-Reply-To: <20250218193634.GI1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7A0031045:EE_|PH7PR11MB8527:EE_
x-ms-office365-filtering-correlation-id: 6be4d4f6-e89c-4b11-61a4-08ddb55fbed8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?vfjwE341pEDCKBRJeoGBcMOq9yWB6sat44ojIL/GqndVD5f5zHw4fiY1tCf8?=
 =?us-ascii?Q?BOClNWeflR1hPqx9W2pg0DsbgN8pfg/ecbslqxs9DfJudz+UXZ5UcaZsK9RM?=
 =?us-ascii?Q?ly8T83ofWWbiXoCAE7CDRZIxPVaM+N1RxYqNJb5RackPszldeEB0QhWZbMyf?=
 =?us-ascii?Q?6KfLrCvOs4HRPUr2P0oEruLTm45OAwVYMvyyAgphGUjOzB2MspDTepejiJ29?=
 =?us-ascii?Q?HW9I6wED5n44gj0Mq8tlHqGf+lkJMq60m+5/p10J2l3LbZNfod3/jilroSg9?=
 =?us-ascii?Q?W5puaN3XpHDgzNbGPd5uSpNqqOWcQ2ROdEfDCPlculNyfgg3yoeuVv6C3kl8?=
 =?us-ascii?Q?EtpbXSpirXzGVB42dE5QL+gjyhEBvy3gHoifnWW0FtY1akrj8J1qlwxtowWc?=
 =?us-ascii?Q?FllA/Jf4zxevhHYySCE/LrExlK78OHYXZ4cCx0PfRpDlizi6Z1XJ+aypV0MN?=
 =?us-ascii?Q?/1y2S3YP1tbl4VpTfTahdva/g8qjjXFC4w62fn7ST8bzTKzu8B9WOAxMkMw+?=
 =?us-ascii?Q?go+bUWwO4GmwD1pokEXtdekSuSEP9xtWjM8hkwNrkr3jo+nvqyZd18KdxCKs?=
 =?us-ascii?Q?MuTN5A0oLCXFDFIzlmGvQ6qIdzAFKZ5XIKcR2u5NLU/3moNw0HXEJAr+q5GU?=
 =?us-ascii?Q?FkcWqZefuX72DzgCUySQPU00890sfIh50FyJfz1VUL9eNbAzZIChLZTj9zEV?=
 =?us-ascii?Q?VhQlZf5zmfVZpfGTguDFgbBq4fTwKp8LRenUaIk6uOYB20vOrkxR+o/+cswC?=
 =?us-ascii?Q?6+24Hmn5S9/u8vWudkyq2MgpVHBoY837+DkCJ/XtRuTkwLjD/hR817sTWUnb?=
 =?us-ascii?Q?ojinJXDgXvR6sjaihwE8b6eIC0jDY3RbubU6G7uGG04fAv76l6bXxrJzi4gr?=
 =?us-ascii?Q?FXxC4XoQDmJxTTinVyZPWFeBqwIJaxMH/XgC54X0bqWwH0MnZIcijBXURSSv?=
 =?us-ascii?Q?I2909cHv6Kb8kfaCxcfYCwJF3HU2PRVII/SWqYd+wAN1Mf43w1ERNfBvpkeF?=
 =?us-ascii?Q?Rf/u868C3s5amM7h2vxYH4Er10boKqDb88rngRv33Dh+SANM5J2ohfiykHCq?=
 =?us-ascii?Q?MrbI7nR7Tbw0j2kAa0XRsSxlyWoTPvoaNlFpyVM74iUJXJucdQsxSC+YrqL0?=
 =?us-ascii?Q?SV/QSHCBrRHMvY4d82khk7FEGUTPlTe8ew7ctPdvXWzIkfA8GzU9wrkxox/F?=
 =?us-ascii?Q?TnCHAqP4HfRFn/I1zk5SQ0h4A2WBxKNzT3cF7lXq+AbrFuevan032LAz5PzE?=
 =?us-ascii?Q?Ixh4Ph9JjSX3GNldPBwUPI7iWftY/NvYTBFf5s6m5fw7Wlb08VPLNnUukAPa?=
 =?us-ascii?Q?ayvTR49XyOukrjDSsAYp8L5bSWBWsYcznUCYceC92UM2HPs/Qqga40BKnXiM?=
 =?us-ascii?Q?1kJ36vptjhZba5sA+b+qEC/ovG3aS5TNX7Z7Ip+pjDsCZwdiLV5m+ZLvy7Xb?=
 =?us-ascii?Q?VpKl5T1Ksuc8k4sUYBzYgX1U97RvbFsKg8elEHPhJp1OVu7Dvxmv3Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7A0031045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zW452Y8iBfo5PLG+N+EMcGel0VbgkMnM+Ypq/ttENgW1LMT1L4Y1rxaw4P9Q?=
 =?us-ascii?Q?B1cjN2pF4S8XCwZ6xvs7TSaM1L/ckRw00djhQBUgHLOfCuJzHefAxG2S52LO?=
 =?us-ascii?Q?gYFrr46XKzSafg1mX6kkGJMv5M+hZQO+w+XQQuMvOmW4PBH/tT7GhUCYre7f?=
 =?us-ascii?Q?AnkEem/DlS7cag5+zHHK9K8uJnj8HMsxQ1G1bYscvhgUGieTmI2pIwVZWXOd?=
 =?us-ascii?Q?ulwKBJhzHLGqLG/KJj3jYOBykqo++2f9EnVKreZKw4CuwyspjIka9HENa6dY?=
 =?us-ascii?Q?dcISDTL8zrbmqFHlM1C06Jq5vpJd9o7zT3Bzjis9zYyuzIH4h7Lft2TNxbhl?=
 =?us-ascii?Q?rxkA48+wtAsHI9ZAEa3hEZMc0jYM5gUnZgieK4vc27/WQi8YRlaXst2fpT+2?=
 =?us-ascii?Q?UvOKUDPZnWQuPo0Qa4W/1srWlVe/0Z6BAB2W8AFmWhGA9Mj+l3y/d7LuT/vw?=
 =?us-ascii?Q?RuW9461WhiaIwWyfJpyCU7IH6ckMru0u3Psp7R1iWUiQ/3HbnT5aRcoeXr6R?=
 =?us-ascii?Q?UfrrpVvuocQShcFPuAy0D5ii2Ee082sEx1hIjipHebQ/lIgF07by0TLcKLgX?=
 =?us-ascii?Q?eqf9OGzJPsWUs7KZAq+K/9VLLW/iLwkP52hiDvDYwo1rIw76AIPN8w9s6d75?=
 =?us-ascii?Q?9f5nVzOi/J/5ZEzHPlDUaZHSaOlPb1QWaiEzT/W/3TJMfT98zp9nb+aEqGDE?=
 =?us-ascii?Q?MZT2PuO3Ee5InZbu1gWylOCdBHEDuLgucCUT4ffDTTYz5tMuB8OlwNNOkGMt?=
 =?us-ascii?Q?NP6IqyaAulxPJybjqv20+vhwFpk8a7Agi0azs1Az1Beri3ybLGhFU4RLkuU5?=
 =?us-ascii?Q?IAvP0M1XSza5Val+mZDMgBidk6ZdMv6VURyF6tTZwrPAb/y37QxBC/JvFzJC?=
 =?us-ascii?Q?tmzjvoLopLgNLAOJzNIQTcLXaLCg5m+pbyFlUlnKeNQt3T1ArR8tTTm68hpH?=
 =?us-ascii?Q?JaRWzw4ukTP2s/9iv9aH0IuLhH1tRx0XkbuemLI7QZmTUv708lRzr7ipFZSN?=
 =?us-ascii?Q?zNnWq0punkQQRdoAbD2FmRXZWM3bTkA96+/qzBvP+PUcofL9EdzhnwngcINI?=
 =?us-ascii?Q?10hwebuD35QJ1UYQI5Lmq8f5PbfY8XEUDb7caqNSFpR17hjzCS/X0JqnC/Ow?=
 =?us-ascii?Q?CtS+mRPENt+9cor33RyKhPWZ7PkPZa5auGnUOGzdwhD6/EObiuehr6hX5+Qd?=
 =?us-ascii?Q?HoBZzy2vwh7rJq1ZDFNy3rrnti9Edk9uBJPXujzGGcJRS6uKsOrAQZgGS6tO?=
 =?us-ascii?Q?BzfGs7HMLPIV7yZod4wvISckxdA+nV8cQI110bCmK8t3xqF+n6neCVEKqwa6?=
 =?us-ascii?Q?7m5Zgp41pVRXHUphTyvbGTPTab+B+GHLtJGU8jAQYV+LQcVN/QLLsJhXHzGj?=
 =?us-ascii?Q?ZsTI4+HWizwc910Cv9kmmyIEY5u53AM/62PSJivvuht3xRcKjw2qIV6m91Lg?=
 =?us-ascii?Q?e/hfxAe0GWpS8f8GbmSiwW9DbeXmE6ByxUFmAo6QWkv0nl9D5hq0kSDo3cmd?=
 =?us-ascii?Q?xW12fh1/widqH6TsP8Pke1j2mC0PARykkSZDvtqcAZS/ASOzICecHAjVCzO9?=
 =?us-ascii?Q?NgVJbxqMFrCgT4hFfVCN8YtSKHhPM54eHhAmY+RX1f7DYAQkfvo5wrnlFMk5?=
 =?us-ascii?Q?rg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7A0031045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be4d4f6-e89c-4b11-61a4-08ddb55fbed8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2025 09:48:18.4486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GS1cp/BYRzukdg01a1AWSHss6W9hntVEiQlUGfHU71w8dnTpL8dUrMl/Yb6PImToz+5NMBgPZ/e4YlLnaTT/GAYKS8euXBBBLuFcg+zoryY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751017716; x=1782553716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qti8+tOV2n0Ju0T9opQug+qCLu1lT0pbt6RmIcaHIt8=;
 b=KrRULjzSU51d+k1VpBnz3FwGshMmzPWXI/1q/wGSTpkCgQE5ovpGAy+0
 8Wr8zDICTjLihcf3xSo+pRj8ZiHhkkYUPaXIzpSLdc/5M6gmz4ZTRKbXh
 st9O9C6vIv6RATQGS0sbAl8sMlBRH8kOQXp051oL4ByyHDC/zmMJDqZkh
 gMPGXhnL69/GZLv9kpl7+4AdbOdHxN9oQku+MnucR/tO56HE26zslbtZX
 hZMF85vXT7RZFLLK5eMqpQdzNL5RrQgtqrwG1HvnpBlmrIIagZngQa1N9
 gwJ/dHl76FpJtSsQg+VWhtX9c2VopunbCNJQGBti/9rwlmCm/unAeFwCq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KrRULjzS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 2/4] ixgbe: check for MDD events
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, February 18, 2025 8:37 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> marcin.szycik@linux.intel.com; Jagielski, Jedrzej <jedrzej.jagielski@inte=
l.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Osuchowski, Dawid
> <dawid.osuchowski@intel.com>; pmenzel@molgen.mpg.de
> Subject: Re: [Intel-wired-lan] [iwl-next v3 2/4] ixgbe: check for MDD eve=
nts
>=20
> On Mon, Feb 17, 2025 at 10:06:34AM +0100, Michal Swiatkowski wrote:
> > From: Don Skidmore <donald.c.skidmore@intel.com>
> >
> > When an event is detected it is logged and, for the time being, the
> > queue is immediately re-enabled.  This is due to the lack of an API to
> > the hypervisor so it could deal with it as it chooses.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Don Skidmore <donald.c.skidmore@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


