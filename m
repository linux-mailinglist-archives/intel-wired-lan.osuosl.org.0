Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EC279E172
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 10:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF0024093B;
	Wed, 13 Sep 2023 08:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF0024093B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694592366;
	bh=0WrQrjTpWeEtDSTL7ZpWiJpgBaSGFF5kdSp/sT8ZZII=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hZ24kTJAVDUwhfhxmatzXVwCPR423ZZpndGjrioW6Cg3jBif5YgHz0YL0pzxbUJW4
	 bOF+0Lte+2pRE1g3y08sABwQ8FVTeiQ4rn7n/UwdGnrvQGIg3VEeJQJIYBSo+m3Tjn
	 OHjblfhpsDfFrrL3ivifsilLPbunzKEX3sHmnf1NHSc9DM9nWHjmJNz2+YAE1UQzWC
	 8A77f76U4KFxHZPjX879Nk/hdS7dPYIFK7SH6fPnFiImc4TNczPW3fr8U5fTXYbSXc
	 wR7c2YRPLhM1P2Dz4LVaV5vqfE3xrI1aZHr8lsAC1+F/YBe7LvKDSlnjl5V5VW/ldU
	 MptPmaHWW5vKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oxbjAyPsUtkT; Wed, 13 Sep 2023 08:06:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB43F408B6;
	Wed, 13 Sep 2023 08:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB43F408B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC7F51BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93C6B820D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93C6B820D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id npzsfI4f26Vp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 08:05:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC8FC820BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC8FC820BB
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="377507089"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="377507089"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 01:05:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="859166296"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="859166296"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 01:05:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 01:05:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 01:05:57 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 01:05:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1kg+DucYHOFp6LQ7JSVbGVPcafFkY7dTSG6b0bvkYZ4svY+OUctSorSNd9q9Y/jjz/9yjUGHQSDTUAb9Psg5ZpCuX2xd3Ve9qKNlMId5Om0+SPQJ2osybC1JoCbfNc2eXJp0amq0PHZ0nVrXhdge8xyfH0KfWc65YpOS8XosfFzAuJTrhZnkW5ziT1vCYkv5n5Bu/ZQfLW4QTOw3kvXgXiuTbb6LUB/6qCxWcwfK707KV1po92T84Ip6SF0LJ+PnptsmzSIv1AnFfNE9WUOWmSoPUdRYKuk9ZZPbsc6NW8gUfl8OPQeafFtU1FYlunfIhtDdSfcuDi4dRc1Hvvq3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIlOTVwY1TtNDs4JzPceMpIwggf3pwKvUGo4+uCd0/w=;
 b=n2D+rtzHczAu7u4dTa1M4Ha798O71fDvCAkoK8Q3TSyoeJIl3Jh+0NsO6VXriBkw2oiYPnSAL0UIv64c/5wBV9b3S4/Z8kWEcq8dWqEJzyF2HaGdQ18vVaodumQ+X/imaqc1ny55nHEXIGOEVQkt6WERzRgZN9/ZVDakmvihhDfJbPw5Gk+Otl+rlOmBfX/n5PFG9KylUHyXE0yBJFuhmO9mGkKESWG6kKanY8HZRjc/gU+xK3vUhMx4zthA0iUPravwPZHbvf3Z7cpbn5IGmc2WGsyDEatBsop+0DUQAB+MXjlhtXRL2pILmSxKTdo9K2TC58Ltm9A6mvi+o70ePw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MN6PR11MB8218.namprd11.prod.outlook.com (2603:10b6:208:47c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Wed, 13 Sep
 2023 08:05:55 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::369a:9e50:215f:33a8]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::369a:9e50:215f:33a8%6]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 08:05:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 4/4] iavf: Add ability to
 turn off CRC stripping for VF
Thread-Index: AQHZ4PyB8oVRXu712UKs9kB71zyE/bAYcCwA
Date: Wed, 13 Sep 2023 08:05:55 +0000
Message-ID: <BL0PR11MB3521FC9AB7EDCC400F95B2B68FF0A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230906195704.3651720-1-ahmed.zaki@intel.com>
 <20230906195704.3651720-5-ahmed.zaki@intel.com>
In-Reply-To: <20230906195704.3651720-5-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MN6PR11MB8218:EE_
x-ms-office365-filtering-correlation-id: 077fdfcc-d12b-4ac7-013e-08dbb43041ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fiz1bUoPDJTqbccUGqm8PwPXv76Fa1tC5LB28aoPEue2rR5n1lYFZAwkDa8seKyHvwGQ1LkuBL879Nzcar1AWsP0MkcLV7qqteYS5zYSaPaR8jIcgZ2iUS/59YUdzkcszTTFNy6uz6J9xvWJ5iNhl1VaX2n8iV450Wa7GVc8fwcZGVpprmpZlDJihqc6QayNaq+LAQyaYVxwTTc0CfCNHwoVVsO0ZYkgVHBcSZagvl3l86+Vzo+M51k+FlMnip9pTVrputa85owTYcHUezD1VPMFMSFvQ1fjuuIxcX1Im24mk6Mc3gL7/dwEb1h5Ow3r5tlqKtaQB47sDu8zmxtW8sWM7Q4/1Zbj2uD+7gQAQ4LorJVVsNK6BbG24fGshoEmsO/1eY3rgEOGGhGam2Rf+OffOzu+BVTuXfbrJ52+/6oGA5hpbk8yXioMxpdbjUcH5ctjQIJO+JhuvqlXKAxB5jB+Qe875QF57AXAZhZvL8AHm3vlSfhis+KzRwdWE6xlNAbuITY2TqUcbVoFhUcRGIg5aC6Y8clvvrjJu9G3EKjLQ5QyTI86mbVSR6BSjKzVyZ1FbuCrwMrOFovhlidg3YRn1Xnil3vSx8jKeSCUCGh7lp+AcAmfRLuAeetoC8ewJsbyf3ojcEY2u/qoGHMU2g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(376002)(39860400002)(366004)(1800799009)(451199024)(186009)(71200400001)(7696005)(53546011)(6506007)(5660300002)(110136005)(86362001)(38100700002)(38070700005)(55016003)(33656002)(122000001)(82960400001)(107886003)(9686003)(83380400001)(26005)(478600001)(76116006)(52536014)(8676002)(316002)(4326008)(8936002)(64756008)(2906002)(41300700001)(66946007)(66556008)(66476007)(66446008)(54906003)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OiZshxoSQrz4usUtYgrsOzPMTm26JXV+msAd1pYhOzRqJtCDNfGwOuM/8JFy?=
 =?us-ascii?Q?pTMwWnjWw/J/tWSmVRHLOK1EnyQgSqo2iP8eDbfYB7vV88V4KrZZClZn3/KE?=
 =?us-ascii?Q?t2vIWd5mAgPmkP/CHb1XyhUgAgf0giD3KeheHzQUvM6Ua0/mzseSzavCEDIi?=
 =?us-ascii?Q?U6ISoWpLwr3bSNSTKS8+JrRy7s4UZM6ZQwlFOxUZvK9YaPU8iK5nvO5wtm+T?=
 =?us-ascii?Q?DPVYd30MtJGbatB0hg8lhIbip3Z0thLtMq/VkWZipujQT2CtRtgLoVtNFn91?=
 =?us-ascii?Q?dRuB0QNTofeUpDB7GepLLis6bTdIQEzxTvqQJZSImQLz8wAcnLcaAtlGmsr2?=
 =?us-ascii?Q?QVtTJxjlOdj++HM2KgXPjj2PjB8U09cenL3+JZrwwCtXrynCUHwoQNAPZgNH?=
 =?us-ascii?Q?EMOXQWDzDj6BOT00jLnp2qNS4w74KfDAVP10H2gty3FLpjUvT5tlo/Nka+/e?=
 =?us-ascii?Q?nAzT3BKQjLt+fsEwacv5a8pzUfq/wrYkI5iQWia8nCDknDAqFAzShc2QbQI7?=
 =?us-ascii?Q?Wz5JP0WHJ9xzeGn5/WuFe8/U5aq+dUkeBYttDxYFEkT2KZIDfH5LianvOibj?=
 =?us-ascii?Q?JLsM67lYBhQN4pnUZ6MrkTtpuowUbFTo/6dQbrgeaQNWittHvk8kmwztVpBH?=
 =?us-ascii?Q?FI+S7YTgBuI6Dhh0hL7STHgx2MDgiFYhSFjSqey7F0pUnx/srIEzl6UVMCZt?=
 =?us-ascii?Q?qlIZgj3chA97A4zbGOw67Jm6PX+V/V1jqM80jbn1+Ad7whPQk++NMo+ylEpv?=
 =?us-ascii?Q?Qz4dKzG+jJmy3Yt/zs4n3Vyvr1tZR3oF/wxN032SBjqoZO0XNb8/aslOu6e2?=
 =?us-ascii?Q?lUZdkC2rLSM5tASCuyGb0K6CaokfVChyAnsBf/KEuwDyhrKgjIHthGHmUoSI?=
 =?us-ascii?Q?8ZBFqZu8bfpIoMeFRNZPQ38CEBnRmRKbFOZUV52YeZlEWTKAF+Wi4Lf8NgHk?=
 =?us-ascii?Q?aQTI11hYktg8yseinAtR8hco1w8+DMEhGj5z73JVNum79eXDO7MTO8vdW/Uu?=
 =?us-ascii?Q?IetBnke4kQDBR9Wp+CAUTFisc/LRHNePXEgunWbuEMqiYD5sNq26vkgs4Pf1?=
 =?us-ascii?Q?Rrxw1JBOh1ceTIUop8MBObs8pTpgm5icRdTeWvgkijLeDWGbmIb6lJBb3J8E?=
 =?us-ascii?Q?ygvHf7Sq/U3FpnBFQfNB7kFXixwF5P8isqyT8u/0iepQPXb1cMZnAaqCMmA5?=
 =?us-ascii?Q?EJL0S2jrc4ikbVF6LW8GkZ+bZd2WZy2wh7CaVL7kai6nI4lP85Mg2/uiDMf7?=
 =?us-ascii?Q?pTi9BuMXSusPVy6Xp4+yGE3/s8nmMCu0iisxWabnLwAHoEsrQcpQ0pZhj+ni?=
 =?us-ascii?Q?Z/b4M6ryjSfW99FxxOK/S2SmgfiRYuHh1dfen8FiNgMF+opthw+ayEl9aKG3?=
 =?us-ascii?Q?m/6z7WIeMFF0yR9LsTik67oKMM2q4gYMQPow4pKOz2G9FPq9fzRiHNwcGN55?=
 =?us-ascii?Q?b5HB8Glqq+hGj1FfzIsRMNvRfSGGc2uiDyIQ3g7o+VAXixVphHowNuxpFn3k?=
 =?us-ascii?Q?Gf874nNWqM8iChbxzO+i8IuP/ZJiB2Wcg119YcaLDgHw4r+U5x03OPiYw7IP?=
 =?us-ascii?Q?nqIz1AdhEak0Fp5kbGZospcleWqadoZGb75pvBd7S4LeiunTBDWRRw38hi+f?=
 =?us-ascii?Q?WQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 077fdfcc-d12b-4ac7-013e-08dbb43041ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 08:05:55.7980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D6Nty6WhEXhtFSFCUZscQI5iZF6FAQn6rtf2Px/UHj0Pz3JNKTCAQjl3u/xbfxd8kj3kaaJ53G3jpCOe7TjNf0tZGpa2hVmq49pwczXM00w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8218
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694592358; x=1726128358;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IaZFdX1mJSVon01gwafH9geaQ90RezyoioEfvO/jrMQ=;
 b=Bl8nwzVBCKJ1TgE3XcPWZ5hUsLoiFkTfhui8UcqyN7NiXkyC6VTxpXS5
 rDBOUYjJPD42lxPvvpEFhwOobmPmVZlwuPWVSHPbv6qSzDp76u7Q/gFfi
 iZ+ET1+hYwaEUPQOYwYLYtBsOaj5IlQ0F0ijRNCWqRy67obqb32cXxk3U
 92Vp/BshhnkFXjlL3xYRFVaz/AhLGDBDTfcgZpQLzWKBHAw7Nxg2ElYri
 S+wELWcYnlzW+QdlxakUU4w8pgmjnwHQRCTPXkKu9O9WeZCSB6sjS7C36
 olEqfhqDahmsuTalXjiFIEzl922JVL/wkKDv4S5LzmTquUnJoz+cmfvZU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bl8nwzVB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 4/4] iavf: Add ability to
 turn off CRC stripping for VF
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Wednesday, September 6, 2023 9:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Norbert Zulinski
> <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 4/4] iavf: Add ability to turn off
> CRC stripping for VF
> 
> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> 
> Previously CRC stripping was always enabled for VF.
> 
> Now it is possible to turn off CRC stripping via ethtool:
> 
>     #ethtool -K <interface> rx-fcs on
> 
> To turn off CRC stripping, first VLAN stripping must be disabled:
> 
>     #ethtool -K <interface> rx-vlan-offload off
> 
> if any VLAN interfaces exists, otherwise VLAN stripping will be turned off by
> the driver.
> 
> In iavf_configure_queues add check if CRC stripping is enabled for VF, if it's
> enabled then set crc_disabled to false on every VF's queue. In
> iavf_set_features add check if CRC stripping setting was changed then
> schedule reset.
> 
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 59 ++++++++++++++++++-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 ++
>  3 files changed, 64 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 738e25657c6b..f32b0453584f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -406,6 +406,8 @@ struct iavf_adapter {

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
