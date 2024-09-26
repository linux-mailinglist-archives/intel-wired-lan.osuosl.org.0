Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30C5987404
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2024 15:01:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A32E405B3;
	Thu, 26 Sep 2024 13:00:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ftLJOyM0sPEy; Thu, 26 Sep 2024 13:00:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49C0F405DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727355657;
	bh=TwmoC8C/rF9PzTQG3l5CusXN7AynJcgCDCYrrPMysYo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=45bSi8UU7vlJCfpWI/QZ6IV10ZmU71fGwDovm5kxb6dq4DOizp6TVjrgDr/OthIpS
	 21zd3r6GqPb7Nr3MtMuc9sDpKhvDBuBWf26YoRIzrL9FzcmOQJKMMpSQjF4rMB0hOl
	 ZTt9DzpJTVYR+8LipDt6jTe3naJgWSYMz2/2S1eo1QzB5zZgL0yqbVRa010/C0EXhs
	 GhqHJP/C/yX9CzyQxiWlHHI276J96kQeWBeqp3L+pqaybvm/jnlS8w34tBjYHTeVUq
	 HWHedjGo6wlXgO9KXg5DfNDNBE424u9clUWznOxpQYxqf5JbRi90AnW73wVmdljz0N
	 bwLlUh5zL7Qbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49C0F405DE;
	Thu, 26 Sep 2024 13:00:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A28B1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 13:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 577BE6071E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 13:00:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MGa0-V3a3ugS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2024 13:00:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 70D5160719
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70D5160719
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 70D5160719
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 13:00:53 +0000 (UTC)
X-CSE-ConnectionGUID: Th8y8NtWTeCVCA/OGU5IAg==
X-CSE-MsgGUID: wdrX9vlCTA6zJLTjbCwmDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="14066040"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="14066040"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:00:53 -0700
X-CSE-ConnectionGUID: P3lm8jjAQ72iz7Ql6aEKew==
X-CSE-MsgGUID: oLKsjDzeSs6W42xk7JqZHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="76635573"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 06:00:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 06:00:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 06:00:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 06:00:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 06:00:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mPJ3DA5RFV175t7XExWIGZL/7g6xwGcG7XaUeqL5xcIB+onBlq8mLE7BMghhc77wACxd64fLUZbqjBSkN6r8qNEArxnJV2P+Ml72V+I6qbQU7G/c+u8oNf0Fdcanw2amPuVcGmdxOmiQrvgaHxHN171GjYgQMzXUaspIbJO+Onm4RtBM8un/P1RElLKJNOxrD9pZ/Our0cm7OeGqhuJCbFMed/Q3GA87EcS+itJI8Rdj1OC+Fz+rY2VmKJ4qqCZtySIqNpGDZTHQlvnehdoSiJJRgqZABxRt+hlZuwbI3iUs8dhOsgS06fND+o448iasZ/09UCDVFxJKKbSpeWwb+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TwmoC8C/rF9PzTQG3l5CusXN7AynJcgCDCYrrPMysYo=;
 b=lKCht21Z/cVkgr5Ln7SGa//gJCerDPvaxnqn1QSYtysm0wkymHyRVTTPK5aFfI9rS20zNOAjjgjqI91OJxzKpTqeKFdquM8SmXR2B2eWheTri0ss+hiL3gy977p0jzhBeEhx3Wvh13Y/L3hTONfKyZQqTl2VlOVkrwtnL5M5erXJ234Kp/N4EQbwNgo9Smg03zoje8o6TzYY/sRIBXzaLLl7BaSMMXlBE31rjMlDZ/WuIKOg+u/CnqWWtTMWByLrJtQepbSzCp94Y6FL8PMKDkrXMMD7vdvdYKDYcqAQ1hEtZPGKVp7VGellQY+seh18ayUTZeEl0yZTDE2cakPyCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MN2PR11MB4727.namprd11.prod.outlook.com (2603:10b6:208:26f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Thu, 26 Sep
 2024 13:00:39 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8005.021; Thu, 26 Sep 2024
 13:00:39 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix VLAN replay after
 reset
Thread-Index: AQHbCfUhmbZ4CZFyJUeOEsgArKcnn7JqE9gQ
Date: Thu, 26 Sep 2024 13:00:39 +0000
Message-ID: <CYYPR11MB8429D8BC971E19B4BA0E1568BD6A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240918180256.419235-1-david.m.ertman@intel.com>
In-Reply-To: <20240918180256.419235-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MN2PR11MB4727:EE_
x-ms-office365-filtering-correlation-id: 220a0038-c0e0-4b17-017d-08dcde2b38af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bbJQlNwRZiuh+xQjlnoe4MEX+0erwEm3Gu9E6WeGs2aIAYd+bNuItpL0ih0N?=
 =?us-ascii?Q?qkjw5MLn20yBr6fifyBkBfPcw4BL9+5VcU1GVCylhrbASg9z/GPM+iZuXMgO?=
 =?us-ascii?Q?DN7+EbL4z+E32RkbdcC9pUdeT4PoE9LiMafWnEtwPHrDZJT6ZAPdS5jOqRi6?=
 =?us-ascii?Q?7GT4znwbPttE/HXSsfl0ldp6mLRHEb+VlPY5YBBSwjGcquKzMEhK+Y1AzmLw?=
 =?us-ascii?Q?JORymmraHKFOPI13GCtG0f/hO1tm5aaAwDAgn9SoF6wn2/LzqUMC7qTC1Amp?=
 =?us-ascii?Q?HDhgP3J/XyZUPJvtS4E+jXgrc7sCydeornPpKWa5ufATdiNIJ2J57H7pqzqK?=
 =?us-ascii?Q?JOIlMuktM0NkysiLgH6EqrmQ8QExFQAtgWMF9FpDt/Gec/ZG1Ax4hV2oqlkc?=
 =?us-ascii?Q?Vf6bPGqHENLEB5uwlB9vZVztOyDzayEHRSKCUbW2bz4+cmLHmK/zewGdNry4?=
 =?us-ascii?Q?L8d9wpvUKQes5EIU4bpectGsN4lPf09hWu4iIo6VtYQau0HmP5ojo7Xj9VEY?=
 =?us-ascii?Q?/ixHR+IQdfhNsBAVNwoAy34WIVAaCi480oRFMtEqkTX9NWaccRiT2wZtxSot?=
 =?us-ascii?Q?tD+nUxuY1tre6rUfy3snkZRgaepQIgdZfRwxzj2lWzamX4dH5rXyiKmY11tZ?=
 =?us-ascii?Q?suuzmyacrefrQ2Ldtdq0ceJlgossOAxd+N3f+QOYLgUNue3efL4Esr13lIYB?=
 =?us-ascii?Q?P4LhiikkFxYruk4D/TgA6DYZ5RTR+D0IvOlx78cpqXcswu8o8HionTng8se5?=
 =?us-ascii?Q?9Heb96AWtcQT1m927dhxJfx642fxI/r1VVmU8ChBwoUi2wV8fyRS17eALvlV?=
 =?us-ascii?Q?6rRiedaEF4bgB245enFBA8w3M0IPVFVKiTZBwTNwl1MH1RL2ruCrwvk45D1u?=
 =?us-ascii?Q?vamBTTPKE7PDbV3fZfsOKJ/na+H41YdlUZqmL5BDCj3K6YsE3AfBs52Oyc5X?=
 =?us-ascii?Q?a64vNUCRbcPzVaIS8oovC4TEGjR6+RCj+qKLu8H9pvE6NhafgIZ/KI+DBJl+?=
 =?us-ascii?Q?EO+03SZ5/NjFOe9DJMzgSwUyc4Hqw/G96Gtyu8cQBZDHSiUuidN57LFZu20j?=
 =?us-ascii?Q?zqsFUYvt6QNYiY5zBWCVhvbdJAp8b+B7RS4UyCt8z4HotyhzAoeqYDCqwtJ9?=
 =?us-ascii?Q?b6cvu1KVoJA3Hch+WoMVi4LqQpq8csb+0eKxh+RKG9+IvJH4L6jnG04N8GUt?=
 =?us-ascii?Q?tmsW7P7HQz8PJqdbZmlUoznOiJ45nanImTtskgTTjR+UN2uWt6WQ5cvXSJQD?=
 =?us-ascii?Q?MLTkVkuPgJhsY1S5ccnD0thHC3PTkUZmLUrPkT9YMANM9jtCFEZ8lD5KkUHs?=
 =?us-ascii?Q?CZwNCPpcaYKcrMRLFvr36ektxoCbRHGAR51RWZrxbsxgJQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T5eC9pbUl6eQaHL9ICN2O/tm7drKznqQOAm8aNuJ5vJYwgJXGK/j6HXr7ilT?=
 =?us-ascii?Q?ZF6b5JecrrwzVf4RBYQ+4ppbnOkpMIdWTF6VdTg3LM5vPzf5qKCYAqabWJHW?=
 =?us-ascii?Q?hcj6djbKBFVMcAoQya12zbk89elCMZn2nX1yCW34NBJDswuoUpu4abx3R5b7?=
 =?us-ascii?Q?x36b4B95JburXuILmYMiErrsMQMc87yfucmH+eQlTaBqw9qbmxGx77M2uU9J?=
 =?us-ascii?Q?VDM8r5kk4eXxgbmJj6z7ElV0sWiSY+qkOdZpucWLdACo+r8piWwPw51Rub2Z?=
 =?us-ascii?Q?QELiebK3jQ73Mi1X5u+KbC3GRRgiu0mb1WOCgKwva9BZLSIthL3cD3VT7SSA?=
 =?us-ascii?Q?oECHYIr9wteBmqrubkjOpIp3GQEIzn79s0sGChujIOXx8uA6Xw8E2PmN3euL?=
 =?us-ascii?Q?nvyeY935i2iDT0xrzl/7eBawJMGb1Ph+av9juP2zAbyFFabUxzzo+N1XSTqD?=
 =?us-ascii?Q?qA767+nwAwLwcP8Nm64tlcmG3tFW+Rdkj9iHgJO+azj52JtPD4zRPDys4YUk?=
 =?us-ascii?Q?NwoWzCxazOQfTOMkVBMvizSM9O/F+rmpy16SIIegTDWqHhlJ2vSc3O4+6e5q?=
 =?us-ascii?Q?8CkfOViiq2vi7Utpe7pPG9/sWwNxdUbzQkQNkwjQUqOL9phoMUTpAAuBhSwg?=
 =?us-ascii?Q?b1O0c9G3Kc3j03LTU/J52f4hqqcNILovjYg2ObcoWDE9PWr/ELdTE0FlYWEj?=
 =?us-ascii?Q?JiCn/aFnIzPsgcj6nAMFe5KIsKJPlV4BBpyw98o+pCJMxvlOuBw3OKAvqv4W?=
 =?us-ascii?Q?LXNGO2EWxvkZojnCgT7dg5BBOrYYrXEZ503WGTzltZNziM8LD8qwGB4GnZR+?=
 =?us-ascii?Q?j9I6zauKC66RxQRYijTYtwVNhBKnePhgtnMQOwaSKE9l7kYI54Luy1S10zjP?=
 =?us-ascii?Q?f6SLXrOPBhQvV088IX/uHnt0uROiRlwpqseXJXa/MKnODOlUOQtF0hziirVI?=
 =?us-ascii?Q?nhC/SGTHwRoJL+x58sr86+kQqID62FGyWc62Pi2hH9o46xSPxLDTWHuMbVlL?=
 =?us-ascii?Q?TCc1G4beCTVKVINMa9SQ/dwwjsKAFUYfL1l+mgnTQu6J0bJBXCyIZM7Zvxmi?=
 =?us-ascii?Q?HAYTstYcTBzS45ZKE+QjBx+I7iF8gmMVlNtYmerdgSpfiXHkwYn6IOIzAriH?=
 =?us-ascii?Q?KgKiCPeyf5laFBf0b3mgaKZHD8wJ1pxuaxI/+nW0anJZtzP8T5lScnmQKEh2?=
 =?us-ascii?Q?svJ6UhEHb5BnMlsKrf8LIs0u1B6qYToAEXsKSMDYDLKJPcNprEvkJFxy7ngq?=
 =?us-ascii?Q?uhQvM4datw9CcamaTk4zclntETN6jQX3BmoFR5u5RymF9EYMKdyns8TYg3qB?=
 =?us-ascii?Q?CXCBCawAeak7BUT9JkIgHfmmDm0X4ovv2Q19MxzrZrvU9OHa3qLZwTkuT5Mt?=
 =?us-ascii?Q?sB7PxnEf6qzcULl9MSC/wwpX9RLjRi5EuUfadbJt5oeupzxkKNvX6wxmo7p9?=
 =?us-ascii?Q?Xj86QTcIK2Bi9jDGgp0+sJB4i7wsti0//c5T3+Yft2FWYnfEBIdNYw/Jqhsh?=
 =?us-ascii?Q?LRVHVRD6dKnUa46vELfPChyk/jris40YvfzLyn0pnkHysuUl/BtG9S8s8nas?=
 =?us-ascii?Q?bclx+R6vk4xVAVWQHu6ehAP9xMF8+kF2Iy7odI7ysuni/NrRz2tHowNML+is?=
 =?us-ascii?Q?sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 220a0038-c0e0-4b17-017d-08dcde2b38af
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 13:00:39.5526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l3egBoRuZRlabatTPNratz7Jk0HSHdtvSbeBdKIkoFizSq/I3FICMbE0Fkp4mlp0j+0oUWFVTzHFC3AZjn45yC6wTXJPHA8R5p2umkWgvFPrslHg/e/ZjZ4JANxVfxOf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727355654; x=1758891654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KhGAp1jmvkFDoVD7joQmjP/UQZc/6C/hfRXvh/Qh9h8=;
 b=At/qmnLMKlWW3WvlE3efelio6JEUnRBV/JAvWOUugFIDsFr0ApXLu0Ah
 mFh83hSyCEpLh4KF4wwDDyknAcV/teKmsYSpgM5V2VxPWK/Na+lm35WIb
 LlyfuvREyQO2cI5C4jTc5w8wo1ic/Mmp3iCbddXl2KyXPUGiih/UcgcHD
 gQA68W2pUCUUXgRplEo2vwG3g5YMCJi3B/2KN/A2irWkL+6DsHnFYmirR
 36/nT2GWVet74eUXGjZo6H2J8tORt2XqAee0aDiE1Lr0L8+QZdNfpav3d
 6ER9CaIwj7swlxDb5C7a2fzKxXX93QlSLwz9oaX8BIkhzOLCY4DCv1RsP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=At/qmnLM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix VLAN replay after
 reset
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
ave Ertman
> Sent: Wednesday, September 18, 2024 11:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix VLAN replay after res=
et
>
> There is a bug currently when there are more than one VLAN defined and an=
y reset that affects the PF is initiated, after the reset rebuild no traffi=
c will pass on any VLAN but the last one created.
>
> This is caused by the iteration though the VLANs during replay each clear=
ing the vsi_map bitmap of the VSI that is being replayed.  The problem is t=
hat during rhe replay, the pointer to the vsi_map bitmap is used by each su=
ccessive vlan to determine if it should be replayed on this VSI.
>
>The logic was that the replay of the VLAN would replace the bit in the map=
 before the next VLAN would iterate through.  But, since the replay copies =
the old bitmap pointer to filt_replay_rules and creates > a new one for the=
 recreated VLANS, it does not do this, and leaves the old bitmap broken to =
be used to replay the remaining VLANs.
>
>Since the old bitmap will be cleaned up in post replay cleanup, there is n=
o need to alter it and break following VLAN replay, so don't clear the bit.
>
> Fixes: 334cb0626de1 ("ice: Implement VSI replay framework")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 --
>  1 file changed, 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


