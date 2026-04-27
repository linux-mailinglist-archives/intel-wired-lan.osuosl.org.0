Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLkuMq0m72lE8AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:04:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FEC46F895
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:04:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4913142F53;
	Mon, 27 Apr 2026 09:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0zcL9_gtUAEF; Mon, 27 Apr 2026 09:04:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98ECD42F4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777280681;
	bh=6xD/fu4nNmJe1/3qkaXuqLgffnnrTO8qeCecYMXozaQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sdwPwlZYsRolBZKJjMChdczpFv1H9hwkLdzwtCvze+D8APQhk27373xJAjdjxhAYE
	 lqTfu3P5DolArFVof/LasYMsTxQvxLqgwTJxklM4Bezx9OwyQnNzD6Bea6vAoG7JAa
	 1+wQlsgVX8dHEUFYRQIEtX7o8qVXcako8AkcrC24BLj/MJ0iATc0/5Hz2UUz5jv59E
	 Z/4AA0rsLonYv9Vv+T8LNPjXcMv3Nwxmkj+RL+uXT3k6liMwHuk1FXg7PUdBNY2Pmd
	 pSGFyBkIbrq65WbnyzF/8euiVjmpM4FJQvi+NdpYBznTzWdVWMDBFfOA69TAmZMCO9
	 xW+AIRmLFXFjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98ECD42F4D;
	Mon, 27 Apr 2026 09:04:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 432D12DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1FAC18547D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:04:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BOJ4_thP6rtD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 09:04:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4518885478
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4518885478
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4518885478
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 09:04:38 +0000 (UTC)
X-CSE-ConnectionGUID: sXVAdojAStq5nXgDWaWhOg==
X-CSE-MsgGUID: Gk+OwxRmS2iZJ0plSeg2/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="65696443"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="65696443"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:04:38 -0700
X-CSE-ConnectionGUID: yYY3PAhUTwS+B+hfD/godg==
X-CSE-MsgGUID: Y96+huZUTfKwKX1bkjNQtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="232594510"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:04:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:04:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 02:04:37 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.61)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:04:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=anW3XrsyNocK+80lSfRK6PQwRKD1RX91pDK3u/oGnGb8b0yEnMEOnMY2ODzNEvOrjGS4lAAzzAyfevghRKyM8v5mKClDs6KVRA+mUiD9v/qjq56JB3P7IVNo3VctzuVulvHN8Edsv0ugCRCKDy2D17al0gmnWXzGRUxZp4Ak+NSjC1G1oS7w8KuNH+FWVD52zb06BqB+oKz+MKkcP5mS1K3lopa9XJEIwiAKV2gzmEc8/w5Kwqja8xdBV/FuV4HGPHnULAGGQABPPpj5t/JKplR0d1aqPdS/YRx2PX31dsVaQMzKWzObay2ykKcO1oJ3a11DMNdek7V5iGaqFS03Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xD/fu4nNmJe1/3qkaXuqLgffnnrTO8qeCecYMXozaQ=;
 b=bwI+5WCRf2peYcHJrbB9jkhMSohbBOFPnpEURJNxkuwtz+5GiQAkck+lpgODUmL43c96q+KXsMMXsIonE8b4Mq1V6uMxDSHD51KOv/av8xpfTmg+1FG+nT7QuLtfVtkR/UaL8yS3hqPFXLL+SJih0FHvLPfKvVEK0bGn9zMrHcjVbKMgIF+e2jtoVRUMv9j90Vx0YfF6jJ3wSYGs9RJuOYBggND38PXYWuPPf7zxme2ZvlbN7WPXaKltKbnwKNJDuu/vwC1rkTT4LPUhydBMb2UXj/vXLbho0diFt8HAkFqhjByMseEvgduJg0R92FzwYWWodjdi3LH4G1kdOugPUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BY1PR11MB8056.namprd11.prod.outlook.com (2603:10b6:a03:533::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 09:04:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 09:04:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Matt Vollrath <tactii@gmail.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] e1000e: Avoid DMA re-mapping
 on RX copybreak
Thread-Index: AQHc1faLmWED6sQtzUm/8GHrGSmGqrXynU3g
Date: Mon, 27 Apr 2026 09:04:33 +0000
Message-ID: <IA3PR11MB898659EC62EC50821EB52D6DE5362@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260427033156.9157-1-tactii@gmail.com>
In-Reply-To: <20260427033156.9157-1-tactii@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BY1PR11MB8056:EE_
x-ms-office365-filtering-correlation-id: 9da5715f-812a-4015-8b54-08dea43bffda
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: w42UioGEHM+ipoZYHSSpgkYZ2Dcf6QXTXEZF/aS0QGfF4+02Nq+QDBqP2LoFluUrSWBmygz1VqYn9d0NkjJsQoXCDO4U0isLiHlegr1AjNatw2I2hsKY8CErITRyvLg55+qkV3NyhqjqgFTZDCNarQHqvnyQw45mc31ETyZv5Kdef2EFLmTPqzPgRXLTXRPAfFQBT9PAQvmdEAZRzn2oA/6al8YKLhFbPVpR774jzlWfJlrTaweaJv/HCV0zMhjt8svaQ+2Zt8wPHn4EDjH0W+B31JrsdOXJ1OxSyHC1Q7z9FhSK2fjHX/Lhm9Q8sCjwxGp0s1ep2veiXieHB/8vs0FQDnizcOkqPgiwdRo7ZeR8OwY8P+ScEzEM9PDfNHYb1fEbtyQBYXXI+wSxT/0s27WO0EQVTS5xx25twlzML7xPFcN2DjYRwc7Fe9aiWpVvw4R132Mau9cpe085occIeA/hPuTLRP8kcvwKeWJLWadBwBdf2yA9hmnUJz2jA9hDeMgC+11UGulRQEr0GTDPVZqvtwWjXo6xcui5V4GrM9IiZ0cE+BpnnLL8T+r0fRI3wsGmFsuEbDNBAyHfAjjABnEm7U+cqMVufh6/Hgy5IIhkD8eotMgvYUzQAFxBzjfmFjWuCpr6oKtiETT+RTsyptK4LwIgZB63cULdIMKqRL2myWYf3DvCLwCxaimG/UpB9ackbtzHRFQNBRKOFLGknEVT3pmqQBrYkOeryiBUuKlzB87ftgLJoqO2U5nHsdM2MxWifSf3Qp9pBiAOdK1gI79UzGKQ9n5yaAD5EvYXEII=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hoxl4Md90UYbiblNr+IVteNLIW42aBp56c59sse5WVhUDHf23x4sN5s6Od3P?=
 =?us-ascii?Q?BTVRm6z4Bgqx05M5SYqK19wt0q84CrB33ID0pA2oEgb2B4c4ELCJdqtSmzo1?=
 =?us-ascii?Q?ATqVJ8ny9poWX0daQ+oWP0IhWKJtq2hOV9ZDuw2sDuIaSXWHESFb2L0DaB8W?=
 =?us-ascii?Q?v1aHeUcy5qt2Z659olvGKc4xJZeHt39Z1SR4KGrIj+pkPrLx6CnIVBXB5nXA?=
 =?us-ascii?Q?B6S34aWXKND+yJo4MmdYj3+SMaACLvW4y9hMCoudYbY48zHbu0E9Q2QNnxwL?=
 =?us-ascii?Q?458Q4DtfSc7Rp4pMcggOFb67MBQ2aPWRQjOEQFfd9kRuh4qmqgo0VgkQFyAj?=
 =?us-ascii?Q?LfHpMuAf4uLrwAWEpjB1H+u/c5hWtYVD9n9UT4pWjKMDjLL0WefK1z0eHPai?=
 =?us-ascii?Q?v/zVX/rNpeGF9/ti8zsYo13bTRgK3Rx+0aMKFZmNMlKWIx69YXyMCux2qlEi?=
 =?us-ascii?Q?hzoKyr5b7bJCxEoG2KCXUY7SR66VCkk6R/eUByMusWaVAcc2JJTXDF8J++T8?=
 =?us-ascii?Q?IMKz+Yh4rREfD2pIunMPr6ughfBCl1YQCf7dChuyxEj5p869LElsSWm834gu?=
 =?us-ascii?Q?dUeM1/Zs24LjnK63Sh8f757HSZ/m9LRuX36sCjZGIEhomQpq4ZtbdX5x0CKy?=
 =?us-ascii?Q?yncDT2acBQCOJxD0J7DV77LDRQ8d9dHjAwmqcKO2FSbqfkvqK21LTtE0jRUO?=
 =?us-ascii?Q?01eNhlRWp/DQPNLEwgtKHg4d+EcK2hYciSecOS/zJUEd6tdXzdz3TIsOOrLA?=
 =?us-ascii?Q?T/gtH1u4QaJa9cXQjncE9dwU6CXGDsQTi7G9mfVIrA6qWesp+oiLPVf4JACm?=
 =?us-ascii?Q?on8yyR/mpuo1VJR9Y6/Zt2Ae+3PmmYytjxr8jzIqyUqd/esFKK9OSOzKJs/+?=
 =?us-ascii?Q?8IUsAyb1kkrbpF5QkR9M/XxURh9TyvavTOxLoSprwcJ7C6Mhy8tn3zE7yp7G?=
 =?us-ascii?Q?tNqV/kbq/OTMn4VR442u+woxD1Ex8Dth4VtUoSlSIC4HKaVMlLoYhFr+T91f?=
 =?us-ascii?Q?bH1Z1MIt5K1G5TvfuvqIR6KOFavhCVN0v0ndoPAZRf3RYUfLsiSOIEdYUM/n?=
 =?us-ascii?Q?as84mrSclKnC1loBFocaeEjo9x4oWjEw4D3RiUZiDhaCoun5vZQ+H444Xe7Q?=
 =?us-ascii?Q?Qo1NPnJXFuVVu26tTCzHoKD1RCzlZ6RKca/p+6kthswEJWHimeynQmt3YXDp?=
 =?us-ascii?Q?zCRTdNhV/D4CNh3Y65A33vkdqk3fsPX5Jz7h77wQtPLel4eg4apw1VEO5Tgo?=
 =?us-ascii?Q?6y9QbVXa6B2dvlxI85RH+Co6l/17uKUx0i54UNhLW762dbXuHU3FCO3QNOu+?=
 =?us-ascii?Q?Cf7xZVraFHKiDkbW5R9kaccBbrzZwdvT7fsYrbXLfqwuA+TadKnF8j2S+kaj?=
 =?us-ascii?Q?1gsetyKpDnwC2n/PiZDCGr/xsdlN/iTMoOP4nij1V9I+VHujoMnILpAGncg5?=
 =?us-ascii?Q?WPUofYqep/76h3tDW1clymS2Xm3d8vKh/hvGaBwv37O8a2lI+B3mbKm3AEy0?=
 =?us-ascii?Q?mlS5c+ltZVOwK8fD4oxm+yDip3zgoWJsvv+ZfJFY+dIlYHBzXsvhsm+JoV3o?=
 =?us-ascii?Q?OI0LXHbpOOexo4/doxHxE++AMg5+vWHr9a1efm4H85NWZIF6QvH5/RmcRVNM?=
 =?us-ascii?Q?EczYXU+7CvkyPK2S4g2zzJS6LxOgh/tkSUVYVw+mcfFonJZncJ3LzXeKq6v2?=
 =?us-ascii?Q?jkDCey5hPWOYbZA4KC0H54VfFvQV8tn+98LOzVoUpl/M6B58ZI0PL0qeA6Jc?=
 =?us-ascii?Q?h9SDwHnLVN9tECy+fgkyMIA6IlcomDg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dr1hP9Udy3cSnXly7K8cRPEmyk4moKS4VHpQMpsu5/Cxy//HuOB8pZJpgtLqvP7FCPp7dYZjL1w7/NIQhyfFTz1xGa9U3ToRlKhzzOuftYcEev9/z/Csd1I4ZiXNVrU4UeNCTClWlxg1Oih4vWqshZ43RxxjoHEayETahHU8wk6+CvxSZIbtpPOojMGDWrZHLKtlWG/24Udii9FwDN43oU0EtXDyH6MWu5FvxrtqnLgndpyrZDMPAw4F21XLuWzst++l6h+6K8sxaNCzsG+A2xEteHX1Tv9SDcqoaT+5kuZ4UeBReQR+7l28ydXNkMzzxBh4ntRVb8/9TET0CVrwdA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9da5715f-812a-4015-8b54-08dea43bffda
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 09:04:33.5570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +QxCwo7D0VrC7ApV9pdoG/TC53G5tvQSIWNIFz0C2ow6TmTxFBsosk0NfJO8Mo7wNB5CmAkPVpsfgqvNmFmy3BuVKWYuJUSdhY0MAZS4RTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8056
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777280679; x=1808816679;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hqYNx8e/clUIzdyKWtnazlmSbnh4rXBLgvtFb/o4wJU=;
 b=g5Z+tiwN68WDUMyCdg+joV5xLcga7+TJKj6vG+4zx1Nh5xjJiiG8lyzo
 WOu5kNhGoF1tB41zANTZU8BDd4GEcahWQgoPejqkJ+G+dXe/OJ07zrOKh
 t5OMC8f1gNrdPX+nYLETVVXud4FdlCDZAUCVjWLx6Jo+s7YWvTt7P18uE
 DZO7U4G+kleh/K/Lm+/yoxAc1sSlmo6obPE0OtONZdmtztX5OeDUMpgEJ
 +r3IeeBKspfOwlldSnJ8AyAbPbmZGNrnpvSE6KgF7htSbU3PLf8czz80p
 nl/QYO7ED7xF1Nb1JArN/kD5rL8zC3rIJu8ju3L7QzacvM6fq2NpIO/Uj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g5Z+tiwN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] e1000e: Avoid DMA re-mapping
 on RX copybreak
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
X-Rspamd-Queue-Id: A9FEC46F895
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[140.211.166.137:from];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Matt Vollrath
> Sent: Monday, April 27, 2026 5:32 AM
> To: intel-wired-lan@osuosl.org
> Cc: Matt Vollrath <tactii@gmail.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] e1000e: Avoid DMA re-
> mapping on RX copybreak
>=20
> This patch factors out DMA re-mapping for skbs which were recycled
> in the RX path due to copybreak or errors. There is only one path
> out of the e1000_clean_rx_irq() loop where the skb is consumed and
> DMA needs to be re-mapped, so don't unmap it before checking the
> conditions.
>=20
> The buffer allocation loop is adjusted to not assume that DMA is
> unmapped, handling mapping errors gracefully.
>=20
> On systems with IOMMU enabled, the cost of re-mapping DMA is greater
> than the cost of copying data out of the ring buffer. When I use
> this patch and configure e1000e with copybreak=3D2048, my system with
> IOMMU completes RX twice as fast under load.
>=20
> The kludge of unconditional unmapping has existed since this driver
> was introduced in 2007, inherited from the e1000 driver which has
> since factored it out. IOMMU tech was new, at the time.
I think comma should be removed "IOMMU tech was new at the time."

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>=20
> Tested on an I218-V.
>=20
> Assisted-by: Claude:claude-4-7-opus
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 34 +++++++++++++++----
> ---
>  1 file changed, 23 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 9befdacd6730..b1d6119171df 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -663,6 +663,8 @@ static void e1000_alloc_rx_buffers(struct
> e1000_ring *rx_ring,
>  		skb =3D buffer_info->skb;
>  		if (skb) {
>  			skb_trim(skb, 0);
> +			if (likely(buffer_info->dma))
> +				goto write_desc;
>  			goto map_skb;
>  		}
>=20
> @@ -680,10 +682,12 @@ static void e1000_alloc_rx_buffers(struct
> e1000_ring *rx_ring,
>  						  DMA_FROM_DEVICE);
>  		if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
>  			dev_err(&pdev->dev, "Rx DMA map failed\n");
> +			buffer_info->dma =3D 0;
>  			adapter->rx_dma_failed++;
>  			break;
>  		}
>=20
> +write_desc:
>  		rx_desc =3D E1000_RX_DESC_EXT(*rx_ring, i);
>  		rx_desc->read.buffer_addr =3D cpu_to_le64(buffer_info-
> >dma);
>=20
> @@ -941,7 +945,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>  		dma_rmb();	/* read descriptor and rx_buffer_info
> after status DD */
>=20
>  		skb =3D buffer_info->skb;
> -		buffer_info->skb =3D NULL;
>=20
>  		prefetch(skb->data - NET_IP_ALIGN);
>=20
> @@ -955,9 +958,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>=20
>  		cleaned =3D true;
>  		cleaned_count++;
> -		dma_unmap_single(&pdev->dev, buffer_info->dma,
> -				 adapter->rx_buffer_len,
> DMA_FROM_DEVICE);
> -		buffer_info->dma =3D 0;
>=20
>  		length =3D le16_to_cpu(rx_desc->wb.upper.length);
>=20
> @@ -973,8 +973,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>  		if (adapter->flags2 & FLAG2_IS_DISCARDING) {
>  			/* All receives must fit into a single buffer */
>  			e_dbg("Receive packet consumed multiple
> buffers\n");
> -			/* recycle */
> -			buffer_info->skb =3D skb;
>  			if (staterr & E1000_RXD_STAT_EOP)
>  				adapter->flags2 &=3D ~FLAG2_IS_DISCARDING;
>  			goto next_desc;
> @@ -982,8 +980,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>=20
>  		if (unlikely((staterr &
> E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
>  			     !(netdev->features & NETIF_F_RXALL))) {
> -			/* recycle */
> -			buffer_info->skb =3D skb;
>  			goto next_desc;
>  		}
>=20
> @@ -1010,19 +1006,35 @@ static bool e1000_clean_rx_irq(struct
> e1000_ring *rx_ring, int *work_done,
>  			struct sk_buff *new_skb =3D
>  				napi_alloc_skb(&adapter->napi, length);
>  			if (new_skb) {
> +				dma_sync_single_for_cpu(&pdev->dev,
> +							buffer_info->dma,
> +							adapter-
> >rx_buffer_len,
> +							DMA_FROM_DEVICE);
>  				skb_copy_to_linear_data_offset(new_skb,
>  							       -NET_IP_ALIGN,
>  							       (skb->data -
>  								NET_IP_ALIGN),
>  							       (length +
>  								NET_IP_ALIGN));
> -				/* save the skb in buffer_info as good */
> -				buffer_info->skb =3D skb;
> +				dma_sync_single_for_device(&pdev->dev,
> +							   buffer_info->dma,
> +							   adapter-
> >rx_buffer_len,
> +							   DMA_FROM_DEVICE);
>  				skb =3D new_skb;
>  			}
>  			/* else just continue with the old one */
>  		}
> -		/* end copybreak code */
> +
> +		/* If skb was not replaced by copybreak, we are
> consuming
> +		 * the original buffer and must release the DMA
> mapping.
> +		 */
> +		if (skb =3D=3D buffer_info->skb) {
> +			buffer_info->skb =3D NULL;
> +			dma_unmap_single(&pdev->dev, buffer_info->dma,
> +					 adapter->rx_buffer_len,
> +					 DMA_FROM_DEVICE);
> +			buffer_info->dma =3D 0;
> +		}
>  		skb_put(skb, length);
>=20
>  		/* Receive Checksum Offload */
> --
> 2.43.0

