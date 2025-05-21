Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCB6AC004D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 01:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB84082101;
	Wed, 21 May 2025 23:04:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SOLri-N4gAFH; Wed, 21 May 2025 23:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4043D81FBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747868676;
	bh=+gVvHz1kKm/h+iU1493KvVTMf8Qhf6gALMKFhE6Y3zA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uDv0H5zg41+H3NYuFYtLCMucZaj+ppAd12vOkMAw6BQ926eZElKKobQ0UNopRJqyP
	 UxfXG7Wiy7GjRDajp8S9qib243r5C/gfoNXpx4O/MpRNEsB9VH9qBdHWqOZs41qY7H
	 fJ6dAD9yQrHlTSFGK2mLMqsPfXSTCIOJYD/0EGVRIQpoEDwu9dfL/Z4aEE93wpPD73
	 ihEi0zxIZcKXsFwDrvrLTIl2cOzg2L3p4uq46qj0GuM1uHo4uH/gT1m5M101KZoOY0
	 u/J5lgtHTGBNP5gu5+eIQ26v9ZFXxdKvlUCG1HbErI7YycA1jIGD1Tixj7b/RUZ3Y5
	 PTYmUpS0daX3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4043D81FBD;
	Wed, 21 May 2025 23:04:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 335611BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 304A441588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8w2LAJwXYl3B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 23:04:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A0BB5404D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0BB5404D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0BB5404D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:04:33 +0000 (UTC)
X-CSE-ConnectionGUID: 7BWWa5QzT4u240Vu2w387A==
X-CSE-MsgGUID: 1OKwF+j/RfauGsdrXeXwxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49793286"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="49793286"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:04:33 -0700
X-CSE-ConnectionGUID: sNjJdZDjQnCz31+by6hznw==
X-CSE-MsgGUID: 3w9/Ip/QSPO5n0aadhv99g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="140721840"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:04:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 16:04:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 16:04:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 16:03:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vJr5fW4JrvyGTmV1mgqzwOiUf1Talo81idr5cGJCu+LMLNW1e4GUGqJhubad2JPFY4zggAmg8a6Qrmk17dhkWeEbqLRwIkdcPmxFR/bN5g+EjvyvKzeXF9Qh+7YDAiClXNXjEtLlHqtFEJ8e5ZdN3RH2KV0JhGiWj/QG4+3htDUjoMDchLT6BWx6qm5tOYvjcwd2b0RXXXwxO/uwEEaXxX7uOtkJIvoLdghIyF1WXr0LAhrHHOqPjrndexArbjc4+aSRwPZQLcjTQ5g1z9FuktvkTQrbLxX8Pa4VE5ndoVBINNpcqhUnnu5fMt4Hxd2oLsCAJ2acmUYniZfnw8vZ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+gVvHz1kKm/h+iU1493KvVTMf8Qhf6gALMKFhE6Y3zA=;
 b=E1aiqUNZO8yFzo40nnnBN7KIRGnCYIJwXuYBXqUXXZqxs9Cvbj3baphI3/343yqLQfjZkhIMZqIi8yAVcjaSpkXUpD95aIMWvLQN7igOQc+oHlgvLadJViBGaiyMYVjnd/2gVWNMw01TnWWMcP9RzIdiZDTnuPVsNIFeDtZlwbA6WXjwGZRtMgWrGz1hI22T10pbnEMmZfVYDp/ahmUHg3HePwHuF/joT/KA7/dMoRFqRZsOcNg+O2FumHKvEveTf7KIAEPcgHFf6Kr/7KDUNPVdHJ6GvpRLztVwSA4DJwsZ25v7T5xPH0Vsoo9Tqnv7GcSBAxx7+9DPUKoKHv6kyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DM4PR11MB6478.namprd11.prod.outlook.com (2603:10b6:8:89::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Wed, 21 May
 2025 23:03:48 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 23:03:47 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 4/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
Thread-Index: AQHbwGNe18kohmgOa0G7oFPGwgbw/7PdxYEQ
Date: Wed, 21 May 2025 23:03:47 +0000
Message-ID: <SJ1PR11MB629714D7E27424C68F1895E69B9EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
 <20250508215013.32668-5-pavan.kumar.linga@intel.com>
In-Reply-To: <20250508215013.32668-5-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DM4PR11MB6478:EE_
x-ms-office365-filtering-correlation-id: ac0057a6-007c-47f4-0440-08dd98bbbe7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?n+oICCJ3GKkWVWLRPLnG5bBngCBfJ+zWhcO53woXCteuZDWTMKDk/VXVye8X?=
 =?us-ascii?Q?QwEdr2AbFQLxMT/ZN+eGnGx06MwApd+bjqVjQZPVwi7iuwRfQ+tbL0vrNcV4?=
 =?us-ascii?Q?gbepJ6UchO1J9T0K/pHwbJPsHSu9VSc2q6N54CBmgkWsaL2JPDobI/xwP8wj?=
 =?us-ascii?Q?5BXvIatE1PGWlG2vkFCE8rx3OIxGbT7uAVIP7/Fl/Tui8YhIkTBoSnpGjUoa?=
 =?us-ascii?Q?wRUeLJt5/1oXbm5iWvlioxtqqZkZWH71YFQOS6ZAp3wWxrYHKgMl9ibVTUbC?=
 =?us-ascii?Q?vNcWosyMXMYNdVqubh4zeD/T1+xHr3p/xFgF4d90wuk/GVPbcmrmnbGCrse6?=
 =?us-ascii?Q?2jshlumfhX9bzRx190d3Fk8KMDdYJx/OatiNecSyuEtmT7OWc5RHtVnA0bhr?=
 =?us-ascii?Q?tEWOoL3a2MPKKUrb+uTZqmXk0qI9JxzD+cRbNI29Ak4WE2iV7oS8OYAjw6Sz?=
 =?us-ascii?Q?ASe5WU9726x4pVgjif71v3XA7Z5ULo4l2xg9WgdVBjCA61alVUPZ+EJVn6kO?=
 =?us-ascii?Q?DQTdKGv0YMGGyYXzLx2vCNPS/eM8Gl/X6oLHBl3NfS6HGnQa+xUdC0u9jZoa?=
 =?us-ascii?Q?8/cZgK667rzIkIcJD8vRiu2VlD317U6iUd3rClbPvxxEFtPv6QjZf10vRMmD?=
 =?us-ascii?Q?nKsjvJ5GTEXDxRjxcREf+vazrG0A/lsK3BUqIVnfoMtnsRbJ6uvk8hqK8v1S?=
 =?us-ascii?Q?nL4UlTSfuVH/bjxwmJv5w0MNe2WkOFDd+EmxPUG2qqwrbdxkBlgoUJJtbABc?=
 =?us-ascii?Q?AeskHTxKdJU6JzWJ+YA3X+eRPnBGWUBUMFlY4tWKbTDem4541DjUEzD4kDhG?=
 =?us-ascii?Q?fwwjHJR6v3Oj7TKTkbFdeVJ28HKUZKZVUNq0ev2FrFE5hR3ITyEQAuS7NLAY?=
 =?us-ascii?Q?AGee/gKNWOsOCYxHUEpoL9s4nXwu4mXvLNt08xz7E6YXceJt/K7pBIrtY9jY?=
 =?us-ascii?Q?vJXU8/86e0kw9roxkPDQhxrHuG46xEvkU45f5O6yuRbbuW1iP8Mvl+k6hgLI?=
 =?us-ascii?Q?eYhmzcp0tTO+scuFaaZT3RNAjywtsmxG6I6D3OIUB1Rfk0UtkS3m1SIL7Jx8?=
 =?us-ascii?Q?G2nU5w2RtGq7mqLCNyLtRLYK9puq3oAIGKqjZXWWyuP5JcBsWM44G5rBxY7d?=
 =?us-ascii?Q?qd8l4QRgeH9j9AklzyErHgqJAARwROekC4x2ay6A7fOyMEPQkBvUl5wuuPG/?=
 =?us-ascii?Q?nRVa6yRc7uAT/FEj7TUUAw3CjjV1iFCib3uBqh1Mt2U0pGMOy/fG+HDv/haO?=
 =?us-ascii?Q?GE5qBx5boGbxA6zpD1QWhvk24VIgdZGC6dDmu2X8Jq3ddwia3WQZHJjKgBzx?=
 =?us-ascii?Q?QwwR0yW29u7hblGfrlarU39QO1J+jyT/nqntgysg4hY1QFV7gjWvx/rSeI6U?=
 =?us-ascii?Q?UNBHOw5m1tMHlXVArESLDHnupQdMIrOLBKpYEWJ6hmqqe32eTd7L51iPoksp?=
 =?us-ascii?Q?aib8q92rZbzVwM/VOYLPHTfv9vKLv1d+3HpORIlpNSsUaabAsS37qg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gd7WrQ139luhWhUZEdiDUcq9p1lFYTIP4g74eK+v5/fF31GLE7PjYBQfCWHK?=
 =?us-ascii?Q?ucOIUh/yCu64kVDvP5gJhqvvXvgmJoAQXbVCFTwA4I1rSQAoSK+5SLHV5oWf?=
 =?us-ascii?Q?nAeOh/gUeZFZw/1JPXsaEeJ79qipqALQVdS04cLQpMWcza2Y4MeRh3PTF2/a?=
 =?us-ascii?Q?8/0+oOp0iLMHhTrLGITOBtjnKZxKdXC+mL295Oai866aSMh8324lTeoDacRh?=
 =?us-ascii?Q?am0YrL+0fN6lP6lUSWEhn2uhGd5vWRSEJhr5yhuFPL3+nW/8b73ACqOgGsrx?=
 =?us-ascii?Q?gFgeVnJG+/0G6mm4imw5G1v1T7jNyP+HPCR0CwpsnhHuM81pbij0YOApTbty?=
 =?us-ascii?Q?DiVz+QcFqwBht7TIq8jjpBzWIc9lVewcewvRxG6ME5hilA7AOslsEa17J0bZ?=
 =?us-ascii?Q?pU09fc+Pt6MU9K7qs3OPUTq4bYZ5dslXBIj5ZRbcoS/h79lvwx7sHEAemHzX?=
 =?us-ascii?Q?Vyu5kLxnCPMMM+0XT5ZvHUAs8RzBQrS3fZU2t8G1M7aiGQMmhqGkUw1BwJo0?=
 =?us-ascii?Q?AB4zcIB8OYnr0tmW09whzrShjf2dnQl6zZ0YESFZaogIYWXOZQfeJ+AzcWoI?=
 =?us-ascii?Q?L9gP0FgZYOFloQ5TTL6hmPdC3vNdGdFAvtUlW6j1qMCt9Z+ZqQFtoaxXj3l8?=
 =?us-ascii?Q?RFQNKqMPxui4v6XiVbgbV3EQxVq+1yLE1ggpq3GkBA0FQPNURh2JW15DRQda?=
 =?us-ascii?Q?M4Dq4dS0JnmoZJ5gvjooWry+eXG2izij+ZwbnwmH+Rmti0D36m8ZSDZivtYF?=
 =?us-ascii?Q?yPGk/dzYbLLntDc1WFR/2aU7pLVE2lfAdJpa2atLNWpm7Y8tG8vXZFzjCLVl?=
 =?us-ascii?Q?Z2AmX1lRVM3qXTu4IOyCF9DUlUkHJy7KiObZihJgwJVV8QrMWe3WZnPEp0Ke?=
 =?us-ascii?Q?ojyqaWAmIcGaVXzT4d2KPrZ76JtJ7SfnjPPjzzQ+QMqdfqc9Tc4ztU+AH2/k?=
 =?us-ascii?Q?2/DcDfiOxPDgRpFiQ0p3m8uRhZrVqG9khXMUr5inTs3MJuZiQ0XSa93Tk2Fc?=
 =?us-ascii?Q?DQUqgioeuYpVnIk9BbFUoyfNyBWVTVogPBsSxXWoaCxwIA0QHhQqxfu6ziiW?=
 =?us-ascii?Q?Z+PzvCJ86YASt8i4TffQi4PvyheFaUQ56uxCA24HRtE6noFNZYneV3o2lcCT?=
 =?us-ascii?Q?Zz4H2aLFAXAW1TpB/BqyFr/eE0hH9Q/Noq4v4tsmx6ieFlK9lgpjZYd8wu9M?=
 =?us-ascii?Q?1BDeZiguT2JYh/YI9J7SgWQQfxFS+FPAnLmFzLwlzq/kBd+cWQzh5TAQyio1?=
 =?us-ascii?Q?pzEE1F7YXEVm1NjYqRE+V6nxduQXlLSngKllKru5HvtFY5qs6B4RGJX+rdTT?=
 =?us-ascii?Q?vXY1yGOhdAP0e+2lIEmTltksXcWuqYm/aJB2fXixsJkkFXK+mIGSx2WxZhWQ?=
 =?us-ascii?Q?r5TwLE9GKxCdKj1KHD0x5hDhKEJ/PQhVlTFARbAspPAgRzbwd6sq78D3R3HQ?=
 =?us-ascii?Q?RPnMBEivByk1/Pw/ofSmGJw8w7ln2QUKMmeaLg6cDGZWFETW/zYl5vRRYfFo?=
 =?us-ascii?Q?IweFyl7Iq2iAguR9XffjsdIfrSJzEW85KVURyw3M4NfYqcjB/5JFTurkEsWi?=
 =?us-ascii?Q?l+NlCscVplP72yOeLh2uG0E6A/kTS1Y+A7ySWzNJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac0057a6-007c-47f4-0440-08dd98bbbe7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 23:03:47.8646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gl9zya+khOmy8xzZuTrOvLM3R8gfoPOaGsF0m9OtQJLNebMGjh041hawTclK3YRhf9/397uEQDcinnSw+BKsMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747868673; x=1779404673;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+gVvHz1kKm/h+iU1493KvVTMf8Qhf6gALMKFhE6Y3zA=;
 b=DqQlnDFf8hKzwQaY1zWPJCz6txWvkTfcGNpN+K8hweos9YUCIva+htFZ
 5Mq4yjUVy8DCgFb7Gm0JREKEaH1qRKFjxMDORWtXfXC1lgwMZ5rOZeQLV
 C61GAhkaqmqihaCd8R3tLEcyytYtP/dyMrX/bUUWJ9BmEMfDndvVu6YWm
 36FoD35NzCTiqCab6h4Gr2K+6ETfPdxQ1IfRNqwpacLXNDgxkpZSR7dk4
 OuStMbF52CXl3dJREiGCbv5qKrmJgq+mBroZzkTYFJiFE1+Fw7oa1jcVx
 RjAzKEqdRSnaNmyS59KNAg6pEMoELguFPiWS5q1CtOQhUydxp4SlIyMOe
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DqQlnDFf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
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
> Pavan Kumar Linga
> Sent: Thursday, May 8, 2025 2:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 4/9] idpf: move queue resou=
rces
> to idpf_q_vec_rsrc structure
>=20
> Move both TX and RX queue resources to the newly introduced
> idpf_q_vec_rsrc structure.
>=20
> While at it, declare the loop iterator in loop and use the correct type.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>

