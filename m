Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCmALVRUHmqDigkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 05:56:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A47DC627ED5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 05:56:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4086B40D74;
	Tue,  2 Jun 2026 03:56:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VLvMiNxiXy9L; Tue,  2 Jun 2026 03:56:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E56340D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780372560;
	bh=7TxBP3TDA7RG6bGQmS3LT/pSXEaHTne88Lno75m4BJI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xOje+Rj0Nf4kC1s1RjFNEE8x3ph9+lSHfTUUjN2626s/bknE7bgdCE0fgzHk+6ac7
	 73GAvckQfULoz9NX3quv22QlXBLcwRrDEcXpnMVaC/3jgd7W3uHEVCN6v0yaX+Kfnu
	 y3wCJCMix1RdmEgVJ3VkG5wXift0+2xD9XUEgIFgZv9NDb1bF5lVHwVZtaBjz38ejU
	 TCUGWFeJXCGquiloN88B54z8Z3WZolIGeLfi6mMkPkxSvT07GQ2tO6rlKROfngmlLc
	 i9DKGctag/YL351Ryv/ec97FBg6S7er8F+8okykl9SqZUa4ELqxeNLEqR2aTjIiNka
	 n8qIhqLhf92HQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E56340D72;
	Tue,  2 Jun 2026 03:56:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5875B703
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 03:55:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A7738191E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 03:55:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3bEtCmffZtm4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 03:55:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E616E81916
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E616E81916
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E616E81916
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 03:55:57 +0000 (UTC)
X-CSE-ConnectionGUID: Dn+I2tb3QWms0XXBvi2E6Q==
X-CSE-MsgGUID: aWDvgyuqTle9LavtwBdnWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="98568837"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="98568837"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 20:55:57 -0700
X-CSE-ConnectionGUID: oRMGTuFQQGmb7JUnQMA10w==
X-CSE-MsgGUID: IxPGLO3kS+SiEai2YyEoIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="281896383"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 20:55:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 20:55:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 20:55:56 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 20:55:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IJloVASh/HJnvjmxlXIz4q67JA2ez19p/e1MAMMRoBO1uLAjPzGb9abYBgYM9Bclto95Iysk/q5HDmWY/TlxZ8a78EFg/IETIeFxSkW7SYRxUI6jgMNt51mUdL+jr22xUd0RfveF2x8rkOrj1nEtHVId5T1EurxapvS/2rZzi6LozcSLdZ0DgUbujEAeezMKCP20SQ7hwmpZ3zuQFFpgTSdCiZmWZNfMUTKAWFQHMuhzP4vV3e6Iah709DF1JAwgDK47ttaZnm/ioajQLW73FzkJHjxA+70AaOgO5xaKOzUmR32MR9KFPgQ/J8DNrnxwFOVj0vo2musNZdr+MG95NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7TxBP3TDA7RG6bGQmS3LT/pSXEaHTne88Lno75m4BJI=;
 b=EVTvUQ0MhOEK/+IJIRRirC1vFrdzwEIKZQk1ow9xNDm58rci+boYsAX5+++oJ2rPa7rjrOgkE5XND/nz8G+IRGyPhRcPEfpUyKVW0ri6fd4wElWFlUT3Fqvu7xvfRJRqKZk99Mhswf4/XWX3fNDRul6uw9o7btnwPhxKy8A6DKX/5+QRVbQXBiWwi+7LD2h7Wd0UndLru/Snh8na6nsp7cI+Avfynx9zwMEZF3VDqQMnGT5nVGti56zos7UnMynfRzpM9QRE4zaVsSfWw7HqJVBSEDQINqlnFIhSjjwxSJX58tJhLA+roLjt2nBO/szF2kSne5z6PDnzKFVZJwMUQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB6332.namprd11.prod.outlook.com (2603:10b6:510:1fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 03:55:49 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0071.014; Tue, 2 Jun 2026
 03:55:49 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/4] i40e: pass the return
 value of skb_checksum_help()
Thread-Index: AQHc4fIgd9ineLDvJEK9/TbKyt3hX7YqwxSw
Date: Tue, 2 Jun 2026 03:55:49 +0000
Message-ID: <IA1PR11MB62416C926128714C40F8FDC88B122@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
 <20260512084729.1338557-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260512084729.1338557-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB6332:EE_
x-ms-office365-filtering-correlation-id: 38b03c53-a425-4d0b-e6eb-08dec05ad5ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|4143699003|11063799006|56012099006|38070700021;
x-microsoft-antispam-message-info: zi09wljJw22oNjEXmKMtTwROZiKlOC8tp5aTr8ChEY7xJlcOBfxayM8A21duyI9rP/lldzG49bVHR6Jkkz2TCypJTX2nJ/dhIOQs15YPny22/i5OnpGJLbCsBf/x2CspxDDkIG+ZAKeGjL+whoYMPH+GB72OTzY1G3UnEs+CH1oaD9LwkGMXtniFLTju5tbQ7TTyentCTXqlGNaAMeHGMLK6niRoZ31JhyEgkYrIDJRnuRM03VKbnD65S7iiEg4PXlEBx0sLRBALX5X9+rgpIvvhiUbmhvolwUSNl7ghladIDaXj5F9Hs/Y/xJSKo1gjj4XtuBSDxImsm5YlcvKyI+RmfReY4T1jM7Jn+IaU4fZZUg038KjgF0iWL6KsckJ3k6dP568ecpBV+69w//xaPXGLjNah9oUIttlSf7BB1TyrTjyh5TJB3pxjdJmGLDzXYITtqT5PZVUVJASsGw0CEg7kGn/iYDzUFFZi7HKQl8/uiBfEXHlN41EktXsqMVQWw7VndmTVxRwS1SgEtNYbiWrrCqLsQoOdB9vhkmuXXkqbyiuYTQxis3lruYzthjyS+QMKZNWe7b2oG9HShA4fRyFa1dTHMOUDPFrz0nnu2qDgr6/j7QywyAn+BFOJbqQtNU4Lqy1wkQSAvWfKaETOkibXrRR6cA5r6xefrBJHioDdr0vzg3iRidj8aQ2KCpysapRN9uBky9BgQ1yZ+igr1ep/xlBswLkuc6VLFA0Axyw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zRyaAv3m7pCFBaKada6f4sPKrNDbQjZzcOxJYEFYDR2MTJg3jRDNkrPbippk?=
 =?us-ascii?Q?dDLFEsDFTdkN3gYKtqxj5dH4NLnvljO4Hpxs6OweYuIwFHCW2mKjFxlpgL+q?=
 =?us-ascii?Q?nqgGnQO4bQXgE9EBJN/yk4wx4pw9XUtYFnuJyQd0sPZsrH3LmMAUpgmJfVl1?=
 =?us-ascii?Q?PPUn9fuxr9SOy616CHZrPhQsAe8JhSrBasVTsr8r1pNOlJDG67BG2AfPD2dx?=
 =?us-ascii?Q?Mv5L36n6V/xOhK2f2Zc/14l6kC3SFzCQDJhjQHwQ+jST7jIaPUjbwWZmnNUa?=
 =?us-ascii?Q?IVKe3VU47Grq679ewWJDPbxsmW2M1I3Se1nPlWHAjsWOzUe8UQYWmWCu0MFr?=
 =?us-ascii?Q?gPxxZy4nYbLhGmQ0AB0bKmhOSLNR++COUtCBXonL7OBTayeX1HXSF3r9DJsK?=
 =?us-ascii?Q?JV8MUluLFDE2fSo6jkrzwqx+xOWdQAlBXHqauSqMdaZ3GeW8JdVGHhx4QBKU?=
 =?us-ascii?Q?SIxca2o/poPrck2NwEN5HsYUp5fJziRgfyHbnXCsDhtbVZ6EqV6EWg9x7sfN?=
 =?us-ascii?Q?pufZpggw3NnSX5XQxASPyPQH0GbDAAOvJ8SrPFazxJASLlL8buRY9WoX2SVF?=
 =?us-ascii?Q?7cImB4MgWmT7MZI3zP1bGw2oEkZblNz10ojCE5HqSorh5eXtyEDDtNCVLZiA?=
 =?us-ascii?Q?uodzruWuAwXg9B5hR8Hl/RTmkB3xa4pHREkQ09fuOgymjQLsEUn/+rjOud5x?=
 =?us-ascii?Q?GgVcwpZEg/vgdf5yiyNkJlk83pJjF7vnCcFsiK9eQne14Ty6V5yzGFyX/BB6?=
 =?us-ascii?Q?qlpT75MdWLGe2RY23V5d10bQJlM8MuzdZB7vNndRiePkuAlh3DkqEeTBC7Sh?=
 =?us-ascii?Q?CXlZhoFlowNqqUwGa4Db6UOsLkVB+fqW+g8r+Tx6jZkr6d0mcgMjL9LHq5Ic?=
 =?us-ascii?Q?80XJt6/pJ2Qf7ScEo8MuJgJCNFfT6fe7Wbc5Y/nWb6UlAcjLGDTBNvYCGsYM?=
 =?us-ascii?Q?bN3kGv9ORO08DdG41bwh44RyDk8QEU85tyJmu47t/7wfDaE5/NOhaxwF9/Tj?=
 =?us-ascii?Q?or9WIgTcqnAJ7Z0jYopZZJWg1p6YUuz/7+9uz7CmDcuG4aaG0aztdrUfJz2c?=
 =?us-ascii?Q?ScgveqiEGJCXUk0VfpdXd8/VzvAhpEaG6MyKF7jE+s2pTiUjO6tntxO9QYOl?=
 =?us-ascii?Q?Gk6KgshOgExoMbfgZJDBJZnkvmv5gyckn6bVLZ+skxdMKynykWE7pwe/kYF1?=
 =?us-ascii?Q?W1RA5UU0Wd3WocZZ9LoxBdXib1MWaYGg4nM5BC517RLS8I6Dh5CnspN4yy+E?=
 =?us-ascii?Q?ArfMW0P2wcv7vQfkR7JYlm12gUWiN0DByJSXVvQiRUPiDgst1W6jFEQ2eO54?=
 =?us-ascii?Q?/mma9z+Mp7PCCIunp5/wYNeeSUXse5lN+fDA/flsb3RKt+4MnA2u9u5sstnv?=
 =?us-ascii?Q?N1omAq0jrUOGtNDWLFgxPO7hMqzYMyX71UK6ZQrrmfNTeQnnhJlB/Lgarc2t?=
 =?us-ascii?Q?Z7HbOFqyi6g3DlToAG6VEmFs6rc9zwTGZjZQQUdA+UDcMMm5e5vkj2OhUA5N?=
 =?us-ascii?Q?bJVk01wAlQVVmUiYa3wy9/fh/3MvscqTsIMVRQ8hy7Wrdbakb7UT+8kqt1fr?=
 =?us-ascii?Q?4x+qp/XMuLeUwZ2Ww6HTBb2a6bYH4FVCqS6dlE6H6uBvtnxSJPB6Y/YlMIbv?=
 =?us-ascii?Q?sYMYSW05oytEvSDP2Xu4Yh9E65G6uFj7lAJ+eY2J0GcJaU/4KT7kc6DImXlw?=
 =?us-ascii?Q?LSzm1BlrFZ4LHFJJ8iCKMVbUnSLUKuvNsN1Zb5IBNCNcEg2i?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: czyuuep/7EQEKSUXGrUNdkjctWchH+WV64WKUUb2wrAZub8PKC8Ry18I85Lm/DrU/pKjrrpUwvTnAtyIggwZyfMl0MLb2mZxRzhdf8Ty3yEQyM2OTQ2/nHYqtIK+kjisgzmV9GVVkGrwqGoTVrD5xryEYQUkp6b0cUTQWRnq1aUS5IELA9w8I5/7kK42vOcXS7nCyfG38C2a1y+91T23G34I0yZItiAvUkuyN7FXwJaqOZ8Ch3NYMu9lyDiOjj28FuCPeKjy6Sloj+VInUC1OYUl4KDUs5a/R+qGq/v0kDsdN6hn47qeixtd50YdU7HSuOopdQhyBpZaGZ8nP3TI2Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38b03c53-a425-4d0b-e6eb-08dec05ad5ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 03:55:49.7338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ssaIbOs2KenzUUorK+A/YXeRZExOOXtc2OP2OtgNmE5tpJXP/uCi4iw+I6y8+dGXHVkgn86TLmHM1qboTo1tpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6332
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780372558; x=1811908558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7TxBP3TDA7RG6bGQmS3LT/pSXEaHTne88Lno75m4BJI=;
 b=bxo80GXFZ7YeJQ2kx+QpoS4bsUSBKB+PQocgP4e8zVSHzbw4gJq/BWH0
 AgRb9GzXe6MtZv5fpoSL8B7eZGSsIVFFegrBTkyMBEv0xX7E1jtFs/LO0
 SiFCYhON8DYhbZoTVRePa6cr8mRJlidVrznyuXq7UFoGwkNVavjtbNdH7
 W1IKO0gaOfJ0dG/nbXwn2E4x4LCrp6Pj7hF0OeI0lrShI+atyZIMySp8S
 aLxzA8AR/8uhJBn/MUptPUPkTdXCqkcJPqWL238yMcOFBiZYsQv4iYuMf
 ymNKgkG4li2t1Y9clbzBGtn9PXZf9+AfE+fj7hcgS/+LotcR0MZV2a/R4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bxo80GXF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/4] i40e: pass the return
 value of skb_checksum_help()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,IA1PR11MB6241.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: A47DC627ED5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 12 May 2026 14:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski <michal.swiatkowski@linux.=
intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/4] i40e: pass the return =
value of skb_checksum_help()
>
> skb_checksum_help() can fail. Pass its return value back to the caller.
>
> Commonize this software path in goto.
>
> Try calculating in software instead of returning error.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 18 ++++++++----------
> 1 file changed, 8 insertions(+), 10 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
