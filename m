Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKCrHXsOe2nqAwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 08:38:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A97ACCFE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 08:38:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50F1883D37;
	Thu, 29 Jan 2026 07:38:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hRT09-wtx_IR; Thu, 29 Jan 2026 07:38:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B74D683D34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769672311;
	bh=QlOjgDguRGcVsWF7dPqb13TCZSdsbqpl9d90v3fgNDc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=25km32P+a4+w8+18NsQSpuE391B3arLwRsGqRNUD7pyavmXMT90TvD6FA8Bfx7p8+
	 anu8Z0kYJHPhouWmGNAw52x0e4tH6qmofAU57a2o4MFaVE6pdYu2Jy0InNX6nrfMRO
	 YgZg141h9k7B/wNHDDaaQ2wOTSHXDOJeTcFmLa6TNEy5xsPfxoxKi7PH5NYuRfmdbl
	 ZFEdGkQ7b7JDYROfHRWfOfaf+eu66aUCwHoYdbt9wAaYK0/yNlbcfPwwAmoIivWuXX
	 dZ65ehPb3NDwXkKAsbVghjfVmM2XNU5vO/14PqUDGzPFqliYkPlndfOlKfArX3BieR
	 zQKLlP/L2S0ZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B74D683D34;
	Thu, 29 Jan 2026 07:38:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DFADD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:38:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C96E83D31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:38:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1M_NJTWFEG9c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 07:38:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2EC6483D30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EC6483D30
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2EC6483D30
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:38:27 +0000 (UTC)
X-CSE-ConnectionGUID: 8FxisyZCTLa5v4DQ11QNpA==
X-CSE-MsgGUID: G3lJanw6TP+9ijCkf52mwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="58484200"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="58484200"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 23:38:27 -0800
X-CSE-ConnectionGUID: LSnI1SpHSh6wOtJqyt1SCw==
X-CSE-MsgGUID: 7NxjSL8mT6mKow0nGtTlZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208923503"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 23:38:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 23:38:26 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 23:38:26 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 23:38:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GiZUV0FIbfhupqtmjewN3S6sUySJ3Len4hLYzh4tPK54vNkguhGlgY9Ixcpj6KaKWTAeTdm/44fjSAVck9zDVyQvmrYemhvX8kc7R3gq9GdxMe1M64PD+BXltOmZDKmvomZ/kxOi6C0I60VXMa62tsfhs4X0T2XR7HDJnktmugSVtROFGMtFjFxVFJ0alOtL050YuiCUBlwqXgSeMujGa8MkrIWnuooDSCaskTFtkDRuS+4BjXmiRKh8b0E5tF5IUB0VhWCa0m89dCJ3q7jRs7orYiTaT2c84fzW0hw3rMMNRO018SOI9iQ4t+VTXEdkOdGuKNJNTzTuQVtOZdv8XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QlOjgDguRGcVsWF7dPqb13TCZSdsbqpl9d90v3fgNDc=;
 b=gtrlfFPFAEpbqUH5jg8LVrsDbZfYlu1VHt+OauAMKJyJjqrlcquKbzwTxst6hh8oyzXkCnudf8YAg1F14L104Kb53OdIY2gPcKEgJl0QPvUE49eFIJ9NrytJxN/+dadE0P2auOJhErv9DAT7zdBtgrXlQ/qWU3loWbQgKDjvKs0wBeTjPhmKal1vItYmDIEiF5sL3LOImj56Vvr7ZGRSRMTpe2L7xkcUjtm1FoQfx7v1eiENMpYdqC9Fe9y9JfQQ61WeSLLXIJ1NGlLSrjkj49Ur643SdPMAFzpqjWjfipOytV9CnyyiDAVNxMGshYwDbCtCdqId2LfP9wZMpSOSUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB8354.namprd11.prod.outlook.com (2603:10b6:208:48c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Thu, 29 Jan
 2026 07:38:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 07:38:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
Thread-Index: AQHcfvPJzQV532cu50SkZFqqREym77Vo5kZw
Date: Thu, 29 Jan 2026 07:38:14 +0000
Message-ID: <IA3PR11MB8986F9C0AAC40A8076B5F695E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
In-Reply-To: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB8354:EE_
x-ms-office365-filtering-correlation-id: c1830dde-de3a-4363-4204-08de5f095c81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Jz+gxG2/J+H/pxTPA1c9B8muWPN3EYWDBZbnGKo/ovaVhvrQgPogjiNLuAPR?=
 =?us-ascii?Q?X+kfAi4fNjjuAYIX70fbMUvcYYWLRewLxcHG2BSnoiaZDy4iWONeLnDnBEWV?=
 =?us-ascii?Q?IwJlirIV3iuUHYPEw150BtsYuO0YukvfTMFvnFFTkq9FiQURY4TszyCTbBhP?=
 =?us-ascii?Q?dbI9jy+UGuDMPLA+Btkpta6dQBfk+oPCIQ57S+Zixqvm8rYljxt/XYIYe7S2?=
 =?us-ascii?Q?LQ3+/IdN4w42bT7jqmtcEArWqt5BOPFRmYMpSSQWziW4BI5HFIrbXcfi1ktU?=
 =?us-ascii?Q?bMwQeEuzjzL3zmeIsvaKRQVLgwGlgPvKZlqQCDj4c+VcARVkpWBOAtKrrZne?=
 =?us-ascii?Q?0I0ugWjR17AK3gQvSq04tUwHDuN087aZWou94e6uR8z2qta4oOMwMCxfmhDy?=
 =?us-ascii?Q?M2HnQ5uME8Md60WtRy6fiTuzfEnrjM3RPlgONBj9yMUxRhDqTbHccTetcGAB?=
 =?us-ascii?Q?UUYQRxuD5szthzcUs1HwG6JWjsAaxszK6zJJwhb+gdPM54jioQNjiiHxkOg/?=
 =?us-ascii?Q?EanugQQHU7Hj1ScBp6/i0xSXDwxNF71OA3EQEgz6dMPkcJCBp28Yq0D7xTwF?=
 =?us-ascii?Q?kQqxt+VsE7CKu/TnEtjwsvhna//6BTf2d1UYlI4kT09yNOtMsXyNujBpObYy?=
 =?us-ascii?Q?HQe66zRG6+nXD1gCNnNed/aJX3l/opKIwsxAYNu+ElMm/1p5alInoh6Q4dZp?=
 =?us-ascii?Q?u4lWmyISGj9N0B1694S0gmWAB7jAFqbzNmfvYKLxn1MKkjXJWtSokLbtq67T?=
 =?us-ascii?Q?5EprHvupD5dwsrP36qDtoy43c+fNQP7+FLE3zYATCT/GfpxRkpKDpDIkp0f0?=
 =?us-ascii?Q?0SfADtomsta6EzoJ8hkjX6elbQ+bOzNrLGueSMiBkvjRvhOgaL6YuINwtodp?=
 =?us-ascii?Q?oE5yvQIZ9C/2atGbafjvpvO4U4piW9KTTrvgCEabk+cNYCrdVLAhRWeRddHz?=
 =?us-ascii?Q?x3an/hkgH2s9kUghJVaiRqutP++uo/cHLMjRc/RMvw7Gce+F6zdqSbAKBUbw?=
 =?us-ascii?Q?e2jZfPXHQ327WzlJSZwqheroobVJ/KkkiuwZ7WkRnH/jK91FCiFRZHFB95jj?=
 =?us-ascii?Q?/7O5n4xVgU/faBMptwQPgwrRLQmSNKcPYjXveM3FptlgFeqIG4xHcvPhU9kN?=
 =?us-ascii?Q?TlFbYQz70wXfX4IUpbNxHTZ2AoykLrjSHT0+iE6lfreak70x54j8k60Kawd9?=
 =?us-ascii?Q?XwPKtWd9VZOX7ZF0Q8yxSOPrAR7qK17+K5t3T1Mou1QC93h4oXtsJiQuLqKh?=
 =?us-ascii?Q?cgHAsm6AR3B6Owv2TwLeTMWTVZU42+9xkSETV4KdfTGpEBcEBFX6mODb6Q6Z?=
 =?us-ascii?Q?0bfmhLqyAmJjZj7qprU65nkqKjRDjXzui/npptE30+0bqfsCR6OwLXw5V7/O?=
 =?us-ascii?Q?vlmmVogB0atTq+waGGUY2VvE44c02LyWNKHnEGX2Vd8KtYF+HHUou5/CC21r?=
 =?us-ascii?Q?zvt7mTH/152nNX7RtrHo07g++ovD6clRsjLFfBdDez97yCLU5Q2kZ+8PYxDs?=
 =?us-ascii?Q?RZj4QiwA0VUzs/qOirOdPMPi3FVtaotUYDPTjMucSYun7Z7w6ElY0gdZLm00?=
 =?us-ascii?Q?2j5o7LJRbFwxuLpo8p6R/SSGI68sYl4znv4CBHXeGfXqLsvdVa8uQr73o9Et?=
 =?us-ascii?Q?ekndWMulpTOTAR6iDersk80=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8akaWWv8uyDTEBBYJLgB/RlkasdqZ29k8qdwerurAmAaAA8oWNUuA5E47TOB?=
 =?us-ascii?Q?oFQweHx/Kh4Yze5t70xHe/hKg5NO3uL31L2ecQaLHz0Fuq9UAyuufxSAw3yS?=
 =?us-ascii?Q?Yhm+Gxp/jd751mg5Vc/xQ3cCosz7JQiiUxTMoKO2YXSH7cvCCM9LvQ/ahhJM?=
 =?us-ascii?Q?lxzOEwXN4yZ13YmYIJu7P+KTC6mzHmwAEOXRgtcyrzYiIJSF9UdZ1vjyqpoG?=
 =?us-ascii?Q?/3Aa2KeSevjeaM3BuYUI2WDkTzebf47Kh+6RIjFDYW1bAlE7+8vgrs7RoO/D?=
 =?us-ascii?Q?QKFEyQRmgLgJ1fCMmr75S8KIWVs03nYaleG0++t8N1BbfdHeIUGIgzQ2dpD5?=
 =?us-ascii?Q?/jW5PlBrT/Qb5KRG9B1NiMygsJbgxD2KLQoMJIujyqOYgWVp2Ole5Cz7xpKw?=
 =?us-ascii?Q?fqQEOKozUuvG18MBckwiYBBEi4chAtJbzB15NFtOTi1qHxZehk+4d02njFar?=
 =?us-ascii?Q?s9+MAMAXnnMMpHUlPi+jsfTuQ2c7uJ40ThbHFcjSmIgBb70bSIk+ypJKLfzt?=
 =?us-ascii?Q?etpWTJMq/jv8mCXeUett/dbDathEuCzNBh5ntZFe1s8pqTas/ioEo7wCUH2R?=
 =?us-ascii?Q?JnfXFp6nY71WuNQbENrLtS9noPTRDyMl6n1ScnAgbP56ZKA/frQs31ErV6Ol?=
 =?us-ascii?Q?qRXQovOAayAcldxq4wIjVZBNLpi5ddanAlnbCrrkiw6T3j8eQhdWcC4s9uec?=
 =?us-ascii?Q?I7X18tQxbnI4ZFYoTk/hc55m5CxBUvLKm8uSUItUxKXg3ybz3d5X0dYlSkUw?=
 =?us-ascii?Q?6rK2ccIeZ6+9ZpuMWaz9zZS6ITOo2tSsZFV9x6D1tybbkChErYUE7eNFvvqH?=
 =?us-ascii?Q?izbc34vnRpKzSOIXO3mD4ckN+y0X+1zrHprf/5xnDtKMuYtntXYwuVR3gRgF?=
 =?us-ascii?Q?oYaFfkaYBlM9roOD21e5aHYVg/cW+bXVGlzgCOQ02nXnrJiibFBDqzyEMH+K?=
 =?us-ascii?Q?wmufQrsjDRqVvO5G5AS3znIq3CpJBZvOjxbSr8h1IAzSOCHGk3lfqHUzeWc7?=
 =?us-ascii?Q?l3mMEUQWziRiqYpoqVThpV0WqbqK7IwSZdpLbOp1kfdQipivJnT20NH8BOnD?=
 =?us-ascii?Q?NcFwjR1NOvLqyTlDFvetqkqvkuQ/3zVzzVI9sAqeflMF6gBV0Zs+4IKmFSg6?=
 =?us-ascii?Q?AoZo//vk2OkJcqAcXhv3IUgaOKBq1QeQ8VBxqzc5fiVoeVdSl8LNuDdTzlxH?=
 =?us-ascii?Q?agnJDwjEKsNmxunuKc4aL2KP/T5OsAtRTZ5fhO/U3ePvutpKhoCe+EMJDYBH?=
 =?us-ascii?Q?a6DG7vSSVAp8yG8uF1lEcwC5WVrxKHQDhY2rWpwSOpaHeuNH9/0728Vg6J93?=
 =?us-ascii?Q?e7t+Hna2cF2oATHCTITlJ3WlecX948ELfsT324Nlzi27Qc8TdgURqdENOPn0?=
 =?us-ascii?Q?XiSphjS1Zp8WxXf2JqKNcfOODbePMBR88bej5WZFFSKqAw61qcMBpkMh+HaS?=
 =?us-ascii?Q?kDDMSBeazq92aD80m3Gp67luOUAxWQFPq8ODwWVb5ALNJsmI0/6YAYDqP8aD?=
 =?us-ascii?Q?EfIa9Em0GCcejo0M2pZI6m2149vWessLdknO2Nk2SszoDcsZP3OH10E2QrS+?=
 =?us-ascii?Q?7eJqQRZXpqBkJIQTuG3z4UFTx7/QgzD/MCIBYCuyV31WEmXy/pZIcL92V5fk?=
 =?us-ascii?Q?n7Yptt9Mr5i8r67PXpoF/1+XvUr2J+4/6HVAopgP2ExVjAEc4WcMfHK3zGLB?=
 =?us-ascii?Q?jk/yatZVVJhpSjgwWzeWYCVViB79N+lDhCf9OjY3/bnmWsDIw1TbntqvveKS?=
 =?us-ascii?Q?jSvMBTPnw1l7DoeWjzn7EiO6tH1NqFc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1830dde-de3a-4363-4204-08de5f095c81
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 07:38:14.3940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aARO2/XsrNqn6l2C2JYzaZ1xNZzKIczctytTbI5PeZjd+dOP9Uu3wmFpgo8XbJq31IWvrCNOacQe2azpKctGPofJIB6LXVbZRss6Zsa/4zU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769672308; x=1801208308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=14nEOnq03O/zKZVKUWnL9xg+JYK92g3V3TmbyeUzukE=;
 b=L+Zdq/tDeLFxvH6B+2QwxTQvgL13bISwoovyqCvUGdTxGABmSOemulSj
 gPW5gn9Oxjx7Vb1IpOdD0mQMsx7DIkeRQFtQ38tatlGNkQVN0jiKfnTQd
 GoQTlbemCzr+TgcEnOLsuSm+KCx7bI5LSF2TV/13zrU4qQkU7gcZrn4ym
 L0qWVZCf3w/5hdby0aPV8+Wukn7RgFnLonf08Kt+9+BcPTvHSaqE2wbXB
 GiOV02CPIQI/Lo3TJVVFDGxioAQiocCWAn9nVwkAN/Wd+1TAIF+PI0f7F
 +XQwsbLdkdSeyvsGmiRvRTWtkk5UbrkxwRKVF3ZHQWCmbOC0kkaGZlGnN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L+Zdq/tD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 54A97ACCFE
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vitaly Lifshits
> Sent: Tuesday, January 6, 2026 11:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
> TIMINCA on ADP/TGP systems with wrong XTAL frequency
>=20
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
>=20
> To mitigate this at runtime, measure PHC vs system time over ~1 ms
> using cross-timestamps. If the PHC increment differs from system time
> beyond the expected tolerance (currently >100 uSecs), reprogram
> TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
>=20
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 16.000541250
> (expected ~10s)
>=20
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 9.984407212
> (expected ~10s)
>=20
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: avoid resetting the systim and rephrase commit message
> v1: initial version
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 80
> ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 116f3c92b5bc..edb72054d0d9 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3904,6 +3904,83 @@ static void e1000_flush_desc_rings(struct
> e1000_adapter *adapter)
>  		e1000_flush_rx_ring(adapter);
>  }
>=20
> +/**
> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and
> +system
> + * clock delta.
> + *
> + * Measures the time difference between the PHC (Precision Hardware
> +Clock)
> + * and the system clock over a 1 millisecond interval. If the delta
> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
> + *
> + * @adapter: Pointer to the private adapter structure  **/ static
> void
> +e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter) {
> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;

...

>  /**
>   * e1000e_systim_reset - reset the timesync registers after a
> hardware reset
>   * @adapter: board private structure
> @@ -3955,6 +4032,9 @@ static void e1000e_systim_reset(struct
> e1000_adapter *adapter)
>  		if (extack._msg)
>  			e_err("%s\n", extack._msg);
>  	}
> +
> +	if (hw->mac.type =3D=3D e1000_pch_adp || hw->mac.type =3D=3D
> e1000_pch_tgp)
> +		return e1000e_xtal_tgp_workaround(adapter);

Vitaly, does it compile? As far a can see the function is declared as void=
=20

>  }
>=20
>  /**
> --
> 2.34.1

