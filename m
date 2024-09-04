Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A73696BEEF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 15:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA16D811EA;
	Wed,  4 Sep 2024 13:43:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b7cMb3KQ_NF8; Wed,  4 Sep 2024 13:43:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1151811E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725457434;
	bh=QPJ+7XaJPLSQF2HI4cX9k3vDvAZbvPPBCmQZKLbFcP8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5NTXtN+96EGMrafevIfxNeeWfj59Zwscjwl492QhskpJtZWZjV4zlEJInVdjU78Iq
	 ajmV1BAlDz1Rjp7KfPNOMlg75CWINI0bA+cTLzMS9v4Lj1qJPKomOozZPwW4NLouxi
	 W9EIIaRqpmcR5QZJwmcxuiR6W8wZgj5mgJvJNP3KwPREkD9w5robS1cfPLtC0Iz76z
	 goDVoJSOMvyk0YHgkwbB0lmB0cnaWpbf4CuQqJqCgUERmzUqHVaXQuKD8+pzC6ZJ1V
	 MPg4MW9Di4WXHwJZ5+vzn1BgGjhF+aFrxW75To6owTP4Om2R9rGymta4rJK0q/onpS
	 VKc1yyvA3AV0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1151811E2;
	Wed,  4 Sep 2024 13:43:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A8A51BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11D0640264
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KzufJJbGUDH3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 13:43:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB81340259
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB81340259
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB81340259
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:43:51 +0000 (UTC)
X-CSE-ConnectionGUID: 2OEneZhAThWu2Gey/P37AQ==
X-CSE-MsgGUID: T6bw+6A5RAmCnqb7mW8/6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="28005368"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="28005368"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:43:51 -0700
X-CSE-ConnectionGUID: gonHANR6RFyYlWdaBS+5TA==
X-CSE-MsgGUID: sZ5YftFfRMqSkwSwcr/YtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="69692511"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 06:43:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 06:43:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 06:43:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 06:43:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 06:43:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jJm2Uu3jKvXYBBLH3eFpbKlcGDtWx4gjpffZU0MwKLHkSra96VziscmJhQv6Lp2HoknZAk0ZgW9GLhfKpcivFnqUsjFe87SWxn4pAG3UB1RrzkA0pR9avkAZysDhltDI21+OJ4eoAdhKnErIQ5j8i0toBIZt1p64kpi/JkuSuEN7lPzVKuGy9Q/gTC7YOcl5iEASaeRBcYoK3exJYiEYRLJQTit3Rp7bDPd/8Pd3Y65JLFT7PLgn93HWEGZXItJpL6XQuemX7zv8wKxnbCETawoh+ZRd+3mh8py2QDHI3dhg9RcDUJOfRquKPcBI2zurVQvzmuZKgBO6FCfVpXiQQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPJ+7XaJPLSQF2HI4cX9k3vDvAZbvPPBCmQZKLbFcP8=;
 b=CB4e8tBDe+dwdEUyGCp7RIYXeqdNyjo5duaVNV4n1wBPZI63Gj4ftrZ+AdYjxiSZKXbv2ZG/3hadEKSuEgYL8ag5ZzNECx1QALqynmEiY/MPPrNcprBLC7erHhgj3Uqgyt137g9tofv76lHwXHAAU4z/c/g0JwCiqh/90AzIy3VRPCs+lE3jPXxktvV6GwOeU5UPd4mIvxszCxI98Un1+9TOEnTKlNuUBPwN0l71DFl7pbeCy7KHjDN2tsYVNhfhhs5brrN/d8ioiD+5+sW0BQ/HcsUCYTxIUNxAK9cxFRFGWXoiPILbp8vf0IvQFFlxMGrd+y40xBcTWbJjEBkeQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 13:43:47 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 13:43:47 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-next 7/7] ice: Enable 1PPS out
 from CGU for E825C products
Thread-Index: AQHa+s1p32ncwsRlrEWGSkqWDM+9DbJHqwkA
Date: Wed, 4 Sep 2024 13:43:47 +0000
Message-ID: <CYYPR11MB842900B925C23DF8B91DD7EEBD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
 <20240830111028.1112040-16-karol.kolacinski@intel.com>
In-Reply-To: <20240830111028.1112040-16-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH3PR11MB8156:EE_
x-ms-office365-filtering-correlation-id: 0c2b570f-a4b9-4279-47a8-08dccce79a0c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3PJIFdxXk0reNEWyl4w2jOpyX9FAvW/OOPGYfT9gdJoQFenWr02a+dMfOrLw?=
 =?us-ascii?Q?CWThHTkmDjivYdjg4msICog01eQCa92EaQWxLDLG6xGQh1ggP3G4O/Qyj4mc?=
 =?us-ascii?Q?e0h8lG1lxoXsvlegbVG8tbuFpypKFuHYUL3Xr1hSyDDDx86MpDL15fGhzYqH?=
 =?us-ascii?Q?e8tA21bF4VM0033tEMtGB4DN6Ympp7XgK2etH/CPYcloGNEgbwUDNb4g7z23?=
 =?us-ascii?Q?S92rmRGyt9R8XnyPn5Ub8DtmckNBOjvn8CdT5RtmUcN0QPEQCxp8NymWec2f?=
 =?us-ascii?Q?9SfRedaV8cn1Aq5xBkb3vLeJJk6oQC0YyC2+jpPecx/DOI1Ah4leU/vcMpie?=
 =?us-ascii?Q?mWqepdCQvmRPK8qNbFd4qNKsZxGtqiucBB5SyWo2B7t4V3/mWnCZQ3GmoDlG?=
 =?us-ascii?Q?a0Zyy+JJuEwnF1M4BDy0uKgVdIXHHQq5O/zsRBvmpagIZ3QJ8UYlTilkmRLZ?=
 =?us-ascii?Q?stPqXhcDCnsSEwtdyinADNJ9VQS4K8QdYP3ecAeCE/a3xdTISS7rBKS2Gu1o?=
 =?us-ascii?Q?SWrsDGGjZSEWkqyyAjUn1aLfaT+5XF0vqlaMTGIIT1uNuqxUyMmewXghUC6u?=
 =?us-ascii?Q?pQdydhrL2raUrCHurCFdQlQTguMknGuSXHAFXzJj16WJ9VsP23aYTYVpb81i?=
 =?us-ascii?Q?ZQft2pmpf4lphEokqoieCVyyvDMvOGXZmTDbD3WB/ZtzF98Srfw25kC95RKZ?=
 =?us-ascii?Q?Hm2yNadYLlm5xk086LndvTIOx0Wzx7Lw+5+5DY7cvBPwNwdvFSrEZMDJB9iA?=
 =?us-ascii?Q?eD+OCyJ0Q07Py+JPWH2kqO2MSvWjbyZwLN/Mg4U9yo/gUez/Wk5dYkd8LPWq?=
 =?us-ascii?Q?HzGaSXCzWGFEPTUB0WoqAEvDi7oNAZ7tq2XHkD0yEuf4gagZkYsT+XM+Mxri?=
 =?us-ascii?Q?nkELzLiNBe0xwSMwwk4arkINVvipV8BpwDm5Z4+xzEznZh8Rblh4ke43PdB3?=
 =?us-ascii?Q?YN/31IFeXYry1ZrMSa9ACaB4bIeRvoY2OkbyyIbtKlPf1n7rpd3PUSohjj8Z?=
 =?us-ascii?Q?CaeuDuK8itmcNGGXb/+bxizpN3t+4i8FanhhBtgH9Wcfew1gx7CfwsC8b6Pj?=
 =?us-ascii?Q?41OQkGl2J97ei58KquKYzDekCYmpcscDkRbAruqLnQFhBObXoZRyDMmsnPA8?=
 =?us-ascii?Q?8noxqE34p8snPR/JojsQrladwuLb+RtrywAP5+K7FC9EBFvFd4kMP7nwDgok?=
 =?us-ascii?Q?6L35Y/U5zn+dJ+Oks0Sv4bLf/VfefaSFmDb4p0xXEL87kDz3E+g8z5mQxEPf?=
 =?us-ascii?Q?hKL7QHOvllZ1jdDJD+ewJdK4Ul2Y8WbqFiGp2wsGp+7ph+TWibK87PnbMGEv?=
 =?us-ascii?Q?do0Laob3hBwSxyRzF2z8bjuq0RFJOnzfbHX4qdjuQQ9sKUhn2Vbee5N/o12h?=
 =?us-ascii?Q?MSMSRrIBSLSCNqEuYaKO48Oq+9Z/dfN5u9wr6CQKiN4p/Ab/zQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+U4TtXvOzZcXXeDhQ/arGaJMvW5ZO4aaTRc/vP00s2rYTfsz0/CzLoNRpA1R?=
 =?us-ascii?Q?TAkCubgGGN6mjmE6zxHa62fGRHidCieI5H8nh5g7njLrgOFQNGfxlZvXWkEZ?=
 =?us-ascii?Q?144BD35yZq5uhdThKTRO512y5nKqh+nvD+9eh9l+UALWreV6X1fVv7XCJ6tC?=
 =?us-ascii?Q?Mjph3G/ICyMH6Pz4eJeLuDANR1tZ7KsgJtATLGzMTMoItC3Dqh65pPWlBxtF?=
 =?us-ascii?Q?5/LoPKSSDUCl/x/7scgpOxoUlFCcAFNrehY7hhf/UG1sbNf+VduEpWv1QfbH?=
 =?us-ascii?Q?iDGGTOJdhHXLuSo3yvIloYsib0mlp7f2KlxzGrY19vOg1h3Wfe7uOSxcNzku?=
 =?us-ascii?Q?KvkK0YSC/FaduCBwS4sd5l/4A0dMHfW2/LX99QvoFsyPb9BiGLs5shsBM/Np?=
 =?us-ascii?Q?wx8fMGJWlhKd4Z6rx8LLeGefTxEWvpk5QEwmqzvyR9HFI9PLpPY25PfjchEk?=
 =?us-ascii?Q?Siy8c6g0ptxTed+KRR0P6Po5fslv0Ups+ZkDnYnoT17ij0ZizH8F5ZwrUZh9?=
 =?us-ascii?Q?9oFTizKkiXIIFy/30dZFKVB44iqIfNG82qXPDzMiJg23Q5VPYgbdkyvJIP9z?=
 =?us-ascii?Q?axR0YSlg2gIJzGf/ktqVv4xfX23syAM6NPiVlv1mHOWfBXFdX4K04Bj6jG9h?=
 =?us-ascii?Q?1xQpvxD0AZqiOT494+yol3HpGPgnYVfpvUcwJ8rRZeoC2MTBpa6aeZscK8xq?=
 =?us-ascii?Q?VTbDvtIv/lsPXpG+vQg+z9O2lKuNrpDlvJ8HIA6ujIUC14EalvKJtr+oXUDX?=
 =?us-ascii?Q?wMBSVgYFMzeCpxwt/cE/7MsohqXxu10n3du3X7AivUlYNPZvGGpnzvJxB7D8?=
 =?us-ascii?Q?lcoFpkUNeM4dplH9/bc3rSmfyAqyLxHy66non0ORb9LnZKj7OtGntLF3lLwW?=
 =?us-ascii?Q?8cSZ3n2hHEjSLu3ajQJufMydeNoOjieIm1PAOMIcvsb3ni3k22FhTHdPASSl?=
 =?us-ascii?Q?C8Hhb9BhIan9n9lSN1aCZM8KaPviOpsRVJhXJbh05z91ujs3EY+fleH3CG5+?=
 =?us-ascii?Q?fxGjMtUULFzgEJC+MJDftxkz66a9svOlAVbASlrseyLpQ8jiVUPoZO2FT7yD?=
 =?us-ascii?Q?W/UeXEt8uA+bsiLbbGsCxKc0Qg2lfDoM1I0CBF0jcyusRjShqBJHQxCwUawT?=
 =?us-ascii?Q?OKU6pily1RnNqhVRi912pcy1NLHhBqRXAwhDb3yaWLw3Dp4HhJwChrpm930b?=
 =?us-ascii?Q?gIxErI/mc1oSO22GZhNUCtpuzGeBADua4Qalh+7RNrbRo/2To3Gk2dPtRNAP?=
 =?us-ascii?Q?3FhRqUm/j9/f38mhSQWFrpy04lp5+wCg9jENdXu83MWnXiGxAsZ1ZiztRJG5?=
 =?us-ascii?Q?jv+54rdxZAtw84fvvkR8tIF2y5W8sHBz/bXjmnNoxdblzX6lXPUA2iDx2G+n?=
 =?us-ascii?Q?IvSof2VpKLZHR0R2IR0WzHJpm3ajZ87WOh29p8lfG6byzyofpzZZWjre6noR?=
 =?us-ascii?Q?M1q0WCss43cZic127Ovr9XbhZ0W3+DTxe8K8GQnfVpJcFW71jaHkhUapCqgf?=
 =?us-ascii?Q?GiOCoeheQBYuuVIOKyk1jLXW89Gyp4EPooM9UubPAFOl2Ip7+zRTtXSSM9tZ?=
 =?us-ascii?Q?ZaumPmy2gMc8pfB+aIx8lLOI2sPE8xove3Zj6BaUbmCIL9IhCtI3ccAYPuBC?=
 =?us-ascii?Q?HQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c2b570f-a4b9-4279-47a8-08dccce79a0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 13:43:47.3376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l0K851yJkAG759H1Pbxpo5rbYo1Xh7NYJ7Y4I0lBMA81RhTRgDyLhjbvq5rpN9p7Qy1PR0Ics2DltEt+DJMZFLgHrW3Jh4hq7aCS1srFDR1C0eP2BhgxCPKRsTv6JJ7J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725457432; x=1756993432;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e6BbnknlFps8vqZgHSJPcuXnFE8RDoysW+J2enpLRV4=;
 b=DvtgFd9fl8fuYuDzHa6ObZFLNLF0s15wFpEcw8sv+cPl1wTSWt22yc5O
 W59co5se4HGibqCyK0NtWbzo1wMw5o2EtSNHY6JDYi6aaRs3mGqkkLagI
 4QASYW37iIe6O0cJWc4ITrh+xnOmhWkR88yJx4RxXaGUA6yZQRAP/28x3
 Kz4SipdtlB1WUQ3MtvvJsYs94U77vE5pMWhipTTXoNwHzRmjnUQkg9GTk
 Tx+Z4unNLQSWchI8zbGGkSQ6PRO9q1b63GaF+bglU2hp8ZGZotsqlmX5e
 cuAqFiTIpvxY/fJ2TUlSxn2TWjmQ/ESJgir70suG6/ohKakpY/S3CsZZ3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DvtgFd9f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 7/7] ice: Enable 1PPS out
 from CGU for E825C products
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Friday, August 30, 2024 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Kolacinski, =
Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@int=
el.com>; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.k=
itszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-next 7/7] ice: Enable 1PPS out f=
rom CGU for E825C products
>
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>
> Implement configuring 1PPS signal output from CGU. Use maximal amplitude =
because Linux PTP pin API does not have any way for user to set signal leve=
l.
>
> This change is necessary for E825C products to properly output any signal=
 from 1PPS pin.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> V1 -> V2: Added return value description, renamed the function and
>          enable parameter. Reworded commit message.
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 10 +++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 23 +++++++++++++++++++++  =
drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>  3 files changed, 34 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


