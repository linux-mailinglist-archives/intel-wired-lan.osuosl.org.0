Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9AB984EB5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 01:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B790424B8;
	Tue, 24 Sep 2024 23:12:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8CHFJHs4p42a; Tue, 24 Sep 2024 23:12:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBEEF42488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727219564;
	bh=W1Pq/ZDnUuk00xDQPpGWRK3GLHUkw1zw3i07cmlx4yM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YuA+/wnhNSu23AugyQ0xeGROtqPAVbgqK3rSiZUmiOFV107g7A8+CvX1vFIlW9YCl
	 pZ5vbuSgOUPol9tZXQN2d8xc8Ftoz9s1pUCv/pC6P1CKP+dLsXccTpZQnLxsyTSIH1
	 fEPJpGJlkN1FNtAq7D9BSSsAn39DI5DkCDezvXrz9D9EG+rK2ETcARh/sAvCNnZVAa
	 uwzGfiU3iVaSSVo5PMmNsu9ZAmetu8j37vkE7Zpbv0E0aVUwiCwh44mSMcRJm05xYI
	 u180pj8SFrZeRi0BXg4rf0/qcc6+y23pepMB+NbqcVb0rCOYiwYP+hJr67/caXHboA
	 QGWIUX7CgMXIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBEEF42488;
	Tue, 24 Sep 2024 23:12:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CC1D1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 23:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 390DD403F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 23:12:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jjx_nof1DF6A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 23:12:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED009401DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED009401DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED009401DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 23:12:39 +0000 (UTC)
X-CSE-ConnectionGUID: l+myFKahTkGL08u+zjUgQQ==
X-CSE-MsgGUID: nwnhtw8ORiCHnvhqgWSxVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26113228"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26113228"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 16:12:39 -0700
X-CSE-ConnectionGUID: 1GC5IVoZQs2f8TiSLKHKJw==
X-CSE-MsgGUID: hvcomT62Qke9nrVPf/fCTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="75685614"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 16:12:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 16:12:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 16:12:38 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 16:12:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xoYouNI0Xkav055go0p2Fj7JMsTnODArYZWoIU4qF4y5nvvKIaZKyaU/qCpx2PYX753rn1J4dNxeo2UG7zEDgYBYhwdq7KaFDvxjNP0yoGZPXDYqJXb65HYAC1Cj8PeaU67GFCf+TxZYRZsoTN3PS2YxFVTZRBE6JO2rSAZi1evRo963LKAUJ3NciuQVWrOnqZNH1XKXaUhUKK0vGoXq6PLu/1+n4PXIR2zSSenBLVk34iKBT3yGayYgr3gIx+d43SOeEPcRqxnkxhzbRGuEapq8LtQThVNukcuncu4GgA8PTWtaWGOAa+5mKiQHz9BVC0+sTPAQhonU7a+nhClBnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W1Pq/ZDnUuk00xDQPpGWRK3GLHUkw1zw3i07cmlx4yM=;
 b=xDsMpLPBl2tdquGZ/dFfA6jyHArTsV20Flh8D6RglMw6APYXC6r6zrBRZdpLA1QbmhFKGV9e+Dm6cXCNBR4X7L047A6R9+05DEo3hY6vbhKR6oOT2x5Ww/5K1dFKqV1ttM2oCGokVIVo/eYqN3cwdutfLELSM/yRaa0XETQB1gKRed1/KLAo/rLixp4HPZdPsjCyHZPsYMeYrt58J0ETVRVTaCog53TAz2Yqg/du8HabkS1DWgs6m0xDKD31+tU9vTj+ygbuJ7+VDvTKia4oCgafXJZUWXgL6xNbyOBCItej2GLMwLL8LjDTGl5z0JMBhikh0sEx5EZ3tEqL9UxjmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA1PR11MB8373.namprd11.prod.outlook.com (2603:10b6:806:38d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 23:12:30 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 23:12:30 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: deinit virtchnl
 transaction manager after vport and vectors
Thread-Index: AQHa/rCGlEdwZJbgrEOwhcBhewxrtLJnsMqg
Date: Tue, 24 Sep 2024 23:12:30 +0000
Message-ID: <MW4PR11MB5911EEC582798EFF21E1B346BA682@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240904095418.6426-1-larysa.zaremba@intel.com>
In-Reply-To: <20240904095418.6426-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA1PR11MB8373:EE_
x-ms-office365-filtering-correlation-id: ef69bbc1-fb13-4e79-905d-08dcdcee5d57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?EaMMbtAJLHhxAFljOvmCoDebn/QCmv+wGcj7lvciQQb80as3k+um/wImJ5Iz?=
 =?us-ascii?Q?EID6bxGv+d2yiXAjV1nQ7JLsg1scCPvq25IaN/xhkFUOr6KsJk17yID2QGEu?=
 =?us-ascii?Q?Am5nxOqmX7a3eTFl74JBPYatW1cJPVmcLqMjC5HszG8wen40VrM98UpE1kO3?=
 =?us-ascii?Q?tlj2ch/avrh4grpQSV9TQ0sgAzjJ1qoTyN68EctZcc/lJhAb5Tl3z4a6mhro?=
 =?us-ascii?Q?hNWkaAFl6ujnn7wZLlxFB/JirNhWlqLtfqioG+Df0CqOTpm+UUIGPjgxrYz3?=
 =?us-ascii?Q?gqRpE8VLFjZ36H9bGhGxIHDRh6SLscelT635mJxwgIbICd3QzxT+TSN8p5gE?=
 =?us-ascii?Q?EkBvdj5pmi3HtrbN6aZ1VeJxW+JKN45M3cuxQus1EvqIAtmpTAJLbrXvoZ6E?=
 =?us-ascii?Q?yivuolREHYBANsErO3SkAPmejjfAYEYePHVpqoXo3dI/To+LOg6/ScqG8+Yp?=
 =?us-ascii?Q?bw2agGxvGpZkdXmpEmKXwMfM7VShqvxUHwDGPCx20qaMaY7lb5i9xraRxBe3?=
 =?us-ascii?Q?G8qIVih0Cj8W6NLxXmR1MzAVT0/7X3OTIRlEA5HFJpXBB3DIBP0nj3RlYUcu?=
 =?us-ascii?Q?jqkSZgHkQk46LdFQL66sd3fvQCMjJvmzhYYGg/L/zacawAU4fdlwCnXbTnmM?=
 =?us-ascii?Q?SR8/6cDSRmckdUp7/NHPDcDarkWwmJftF5L4Zyriv/lbVSW+rsGXYeuZ/Sci?=
 =?us-ascii?Q?IRcHHh/UFotuO7hOOv2DjTekH6aNL6fQZZ3XpUhO8VE5DmByyfTKhJy88Fm2?=
 =?us-ascii?Q?QoeSHRsc7fAOPPNVRHqXZEazOM3uLHkIEGfuiu0UWXlqtrgyXjlpuY4ZCCou?=
 =?us-ascii?Q?hp/sXXHsP0oKDKn2kSNsdgDYOi55P0TIxwK2Gj0dyNmN3YqncySu8KvYC+3H?=
 =?us-ascii?Q?Hy3yzC1j7keUbXzQ5gDm2T3Qwvll1Amdr1tzATDg2aMLcI2rfwQjVqHt10Vf?=
 =?us-ascii?Q?8OzeVvAKpGpzVXbucob1mOt3LKqnhD3NKCNeJf9tpuO9azghBVh6qXtxsyWH?=
 =?us-ascii?Q?FzHS9jDWfsRwJTNvaGEI+J87yLbVumKQXI7DAbxBuktbor0LMNLULWcYjRpc?=
 =?us-ascii?Q?WlYKiLZIXRkeMW4Bg/3mJJEFprBstEnghxEKooC6JjmHe02n6Ocnl9IEMAer?=
 =?us-ascii?Q?E8aH3d/H3waiX8g93/5od8pJ5hsSBq39iAiH1Kd0ULKUGVzb4cvAmXf8jf1L?=
 =?us-ascii?Q?30rSDsI3vuaUkBJfFvI/m9HLxlc4s+ljQpvBMpf1roxBlwves9+DlBrfc0MP?=
 =?us-ascii?Q?Pe4JxNMOet2jxEQndiHhjuEEJcPjSHtrResyeomJSC7ahAiWP5oIK+UKq6Vh?=
 =?us-ascii?Q?C0RUNCwwPa05V/IKmQ4Yz9FPWeBuDebEZJVZTQyJNsxpGIAHnd2zor7cl1WM?=
 =?us-ascii?Q?Fa2IgZ04V7NQMQ5q5WXffpVUpuLDDJq3yJV7K+evQVlgycT/UQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VIg7Z/c/BajQ1QwEHdRDnsZ0YZAnmIbqpT6XD60yPmUjEmSZoyws3bwD4i1l?=
 =?us-ascii?Q?+Thv/s/3qF2zi4W9yK+KpxGfVd+jjBK39sBs6gPZNPO4Yj39tddcZ7mk9wX7?=
 =?us-ascii?Q?pZ8IfoAfBn0b5/UPtckbq0r7UOH1I8eXVe50k2ZvquWrkD/KMPHxaSZEha7F?=
 =?us-ascii?Q?EvmhpBs0C3ipPjndxFo4yz1XDXvvPuz/lUsps/KUXirydkqIcjTHRp5T6Sno?=
 =?us-ascii?Q?Wy6sjxf9jke+aHkxdP/Gd+plpahkXsdMgAIupBqRAeO+HAKiqgDm/gj383sj?=
 =?us-ascii?Q?3Mgs+3bgcygbnvdZtk8+Ww38SQSreRhel35zaVnuWXmhgck52GalBiSqS9bu?=
 =?us-ascii?Q?aXaVjruAFBHdPpXBiiU3XYhPB9KPJw15ya/06CkijUaNffVLTd+8Ka6ZAKZM?=
 =?us-ascii?Q?kVq+/HGbkNsRcIeIanjiKhJ4qUloucE00GXAXe6R0pjm6axQ12KJGJNm0WX9?=
 =?us-ascii?Q?iEPHcAdAfW60qg1np5Uc4/mRUS7+ngR/1PJ9fX/XxHm25lZkS4GrA2WuU7rW?=
 =?us-ascii?Q?03d9k2DUd4Dsz+al73C0yATxUP/psdloNdT3IyT0TXZww3WDuK5lUXcdetD/?=
 =?us-ascii?Q?MF3wRwHniOxCxcdk4U9+1bRt9PlPYmhY2egVP9NwVYlmQYbwY0WE6vyP+KRm?=
 =?us-ascii?Q?yiQ00nHTaRdAkGP4SPcCyoERzCesI6r9uar+pRcFR66gEn0055J0cUgFMqdC?=
 =?us-ascii?Q?PiNPdsSSfFaxHstcyoHLEIR12dMhRYk9jyflH5I0VSxjKz3oCZF6tS9ExIKP?=
 =?us-ascii?Q?EuT8hsOaTyh+Uv+2lhDg/YTajGsAT8H+1h/62zN6lMMxqGKYrHiWE9sWbzjt?=
 =?us-ascii?Q?tgkul7bngX1fKx8Wf+XJXM1kieMkOS7IVa4k4fvVIwIByO8EcOr+os5Nctti?=
 =?us-ascii?Q?Znzv7FtjxfbJcyggEEmoo5kHc7D+Va2w8LT3hNknIkaLjhnoEbT9Q2rG4yW/?=
 =?us-ascii?Q?bNq8bBLTxpnUrGE0ROyMxCzEVllYbITkM6IHTPWf0pQId6LOm/izE6aC4s1H?=
 =?us-ascii?Q?CGV9/tN45DO6fVfrQ82EfzeY9ef5U9bq1XzOwLxR2LbD3ib5YrA+FhoqbS05?=
 =?us-ascii?Q?TEZUIaRtMJkEam0KMFuyLGp1vnQ7HvQwahX7IV2Snaq7ZFfWj3drh+e/RKqf?=
 =?us-ascii?Q?oqH6ViJoiMLAhpKzd0WB0b18UXPwl22HTe/MakuZT3Bv38TdC/eRPKl07bmV?=
 =?us-ascii?Q?oxOisWhGUcVcPyek37M1nDkncmWLk9+bNpOquqhwDpu6Ivky3kNYmPR8eTue?=
 =?us-ascii?Q?FrkjehDSowSbCjUraUHlxal0z4TeyXGM0HOvrzIUinQvOT7gS4qh2uEw+AXY?=
 =?us-ascii?Q?1dpsnXk8YAWXBTHst4qQVTFw/KfubAMaswt0BbDpUC118e0swpGj2WhhlH89?=
 =?us-ascii?Q?Oa2kDl6ut60XSe0P691J6sGoif1URvAu2hKbPwWm7ln1I2nk6K5iPNamsxO+?=
 =?us-ascii?Q?MvnGj69QTz1i09/niNiKaPUxPfTBVBALkv2V4l91eEdGKumokaJis7z5GU4r?=
 =?us-ascii?Q?rrZ+z5Otc+jP5+Zl5vt9el90E6NmhgYZkYla8U0c+bDJpH28dwlBRNX+vO02?=
 =?us-ascii?Q?U/ER8DlfbveQ8i6SgIRo4u3q/zP6vrXsqpT0uMsLYELmh9JgS30LRdHflxAs?=
 =?us-ascii?Q?Bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef69bbc1-fb13-4e79-905d-08dcdcee5d57
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 23:12:30.5673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /xA8IdU4QlryxxeJdp8IfLaeMXsvZPmJ9kZ0UKvM79UP5QPMDzqXEfDBoIbKf4/s5/dL0aQkhQEp8n9qDPUdmGrbrVryL0+1HzaYLQcs9/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8373
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727219560; x=1758755560;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=grVXhh4Jg2gUE55gJNa1JPiyzUCjjizgzOGKTNTMlzs=;
 b=fPU7VXNQe5XaX3pWSp5FgakSqpBvqv2PM8W2Wbrjhhou98eqyvGynxGo
 S5Fwcs1pqG6z8m9DwVlzBBo2lYBnZf04wKykE9WBbdKMaYwbt1yPY4mkQ
 ow8ZIzY+cIbK9ecSeQJh+wMt3RZ8ZNHSluMeLC7r0bBrM6hDcvVzpPwfa
 KzvJT7VAVKJQhFgj/8LfWp7t9z9fHi7m4jJiLl3NUSpZOe6QZBBd7CYhr
 Fn+jV2xOWeTdglUF18M6VoJ+QKIdSDzttCCqf6VCjdCkbD3uE8XnxQD8o
 zVcJc6VO3sltSRv8WtdfIzMtkNP7uy3GNm/3sDL5Gwa1Pwdrz8UL3hLIF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fPU7VXNQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: deinit virtchnl
 transaction manager after vport and vectors
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
Cc: "Tantilov, Emil S" <emil.s.tantilov@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Kubiak, 
 Michal" <michal.kubiak@intel.com>, Alan Brady <alan.brady@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Bagnucki, 
 Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Wednesday, September 4, 2024 2:54 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Tantilov, Emil S <emil.s.tantilov@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Hay, Joshua A <joshua.a.hay@intel.com>;
> linux-kernel@vger.kernel.org; Bagnucki, Igor <igor.bagnucki@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Eric Dumazet
> <edumazet@google.com>; Kubiak, Michal <michal.kubiak@intel.com>; Alan
> Brady <alan.brady@intel.com>; netdev@vger.kernel.org; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: deinit virtchnl transact=
ion
> manager after vport and vectors
>=20
> When the device is removed, idpf is supposed to make certain virtchnl
> requests e.g. VIRTCHNL2_OP_DEALLOC_VECTORS and
> VIRTCHNL2_OP_DESTROY_VPORT.
>=20
> However, this does not happen due to the referenced commit introducing
> virtchnl transaction manager and placing its deinitialization before thos=
e
> messages are sent. Then the sending is impossible due to no transactions
> being available.
>=20
> Lack of cleanup can lead to the FW becoming unresponsive from e.g.
> unloading-loading the driver and creating-destroying VFs afterwards.
>=20
> Move transaction manager deinitialization to after other virtchnl-related
> cleanup is done.
>=20
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index a5f9b7a5effe..f18f490dafd8 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
