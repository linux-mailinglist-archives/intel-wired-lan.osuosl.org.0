Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE9787C361
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 20:19:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D73C409FA;
	Thu, 14 Mar 2024 19:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tUxPCjkhM1sU; Thu, 14 Mar 2024 19:19:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C35714099B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710443962;
	bh=Q9TH7cgHPBs6xAvo/Q05azYQKjmhbRiqDXGSq74qWFU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LW6x9oavXbVWkj643vWOKi+oSeauEch+6sUbDEs3gCKNxS7um/Iya/WZUoFxyzRsq
	 /C1QAZQQ7PJJmGxGvMSkWUxIjEcIV1ws0Ka4eKE5cuBuyhWZLCgWtdt1OqPv8eM11k
	 9qYhUSEMKrdseG67clISD1noBz1+a/sxEibLxdngrvBxLVLtIkj2P/GVtSbD14DVik
	 G7XFEeMkA2eKQZqOVfqopsRCbJT2Zjs+dD2UZi8xXphavBX+Qn3OiicmkS0J2PTrOy
	 qUOQ5/Nlsph1MaigSLWCmvnEU7VBKRsxHDFsz1W17qSFjYTQg/QcMmwkuOzhQi0pWB
	 9O4ZI/JuvOYUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C35714099B;
	Thu, 14 Mar 2024 19:19:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35AF31BF328
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 19:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FAE24095E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 19:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAVF-yIJlOzj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 19:19:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 024DD4092F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 024DD4092F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 024DD4092F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 19:19:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5489509"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="5489509"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 12:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="16997036"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 12:19:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 12:19:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 12:19:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 12:19:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LcPXZ0TeOX5shaWqpXcw//XJ2oGa72DFZPx3a7cgMn66BXiKA0tZUkOQekkoihfUdaimY9p9KZPIcYlGv4aDzEzW6u2byEP7vCsAaIF32Xxg4Pnk5V1mOeqcHw5lqH4ZbzQb52AvznJV2Y/q0nQ7oh86+SV8PVOgWP1W47RVeAUsh37vUKOX6xCHVcGo8jrFOZiKE4MIgyqY8gt4Ij2KMGI8iz6VfDnJ+O+y9to0vAPKE7Y4xr2c2jTZ+45aL0xcstVqlIeI8aFYJCz6ti9CveofS5humi/ri5x+BCkdliv+xE6C2a6Kh3/t7R2udGALmY1Z3FYyMxzlaJrv0E/mFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q9TH7cgHPBs6xAvo/Q05azYQKjmhbRiqDXGSq74qWFU=;
 b=lbWeIeR/1P2k2vUIVBJl8pMDoaQsqhudMlTnzLDwolRQS7T/SAsbqKK6SwvhUrH6wF8773whNi/yKih5Q8Z+qdA7qt/8uWyuWmdpvQlvhw8euLRvM3u61hlkA3zJCo2D8C7WhbDJL1yzGKWgXywLJqAOWfTD/JPdkfXDZH7DSj75/fulxcuxWLrSsBXmdz5hMCEO1p7yNw70Z6mcC5k4MrKYFgmSieP1ZKlkgnu66m9v92+EzIjTmdBsKJMAXO43QC48tV7s2bogONw6WPC3wJvQ0EQr9C+6Taxd1wZp///VORJtoqp8jKBHrtGZ12g2+qIMja4/Nmu47pPeWiIaNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA1PR11MB7296.namprd11.prod.outlook.com (2603:10b6:208:427::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Thu, 14 Mar
 2024 19:19:13 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 19:19:13 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ixgbe: avoid sleeping
 allocation in ixgbe_ipsec_vf_add_sa()
Thread-Index: AQHabx/yS6O2eaTm40a7m39J7C4jV7E3qlWQ
Date: Thu, 14 Mar 2024 19:19:13 +0000
Message-ID: <CYYPR11MB842987156D8AA0C40A6EF49FBD292@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240305160252.68708-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240305160252.68708-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA1PR11MB7296:EE_
x-ms-office365-filtering-correlation-id: 7c4a3f39-7369-44b9-6401-08dc445ba254
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2hfZ5UxJ1zS9/w77mpADqthQkRwahhVZdnx0gWCb7Lu8q7dNQS9kDGTxiE3sFE18JZyXQrJbFvOavTv6VWamSgzR3RtSBxgYyarFZOu7V0VBIyvscW73jNlOXfrMVuDRkPbm9TzoJs4XVAvHoGpYvrVQE2+b+NRqw4wE9Sqz8Z//j+XVmz1T5jeOoA/nTNrXSJ7b9SLUS1t0ieGW4WdJtnTp4D12es9Bjs0JldFlAbFagS/vyD5MMLnXNfd5oPIdOC+Sosft2/8rb7CN8KUQQAjTGJfwmIPQU01R1+17vO+vY4l5/XJBphonopju49RNEXB8xZ4Ar4Dv2v2TluG5VJnqmU8Td5tH/MLKXBi2zht1/dZYLr+vaXLuCUGWo6B6CZa29wLga7qokkJtV+BUzJ/miF6DbCmw16j7LmADQloFQGXHngxYhsD5oWSM4yaCfRwWG3Xi+lhbcxYdw87B/oy7gJv4jYycLOWqVstD9bSaROBViSf/TAA+ETs4dyCqfuKUTPiB0kDeeGXsfJ9ajldfsobLcPYu1bxwazJOHXQhaM+QUZFHvYkBJbPv09P1px1UBFouwn2OhrqhZprX78W9ZE+VOl/yuici9hJ0Dv8LbmwAsR+nK2GSt3kt5XGXRhhKoztllLckrG9iWGCO4lCFAhvAY1fJ7abybxoBR60=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hn4StU4Sasdaxl1I7sN+ZpIeXhvbqox8MQ98pj5Y3l3zygPpjLKXaoyaRD/q?=
 =?us-ascii?Q?yjHeZ8UJ/Iu98TKOLpMf5m2jsg2eXbD0ZW31MG5y6IqYKQkjiSvf41gnH0pJ?=
 =?us-ascii?Q?BJnOFm/gz+Qmv0+ZcNiDn2mFN2T4Sv0SEtl6gBDPwRtb5h6lFLcGzQoTH91D?=
 =?us-ascii?Q?8lgGBZiS4WoCDD7toxJCqebHFdSJwZ7+SGXBl6tyBE75R9v9pwdQzl8GS41c?=
 =?us-ascii?Q?ygCbL5sCKULieG2gGCeMu76G4IXepAq8ZumJwQ7Vj3FtAVim70MXITy63svT?=
 =?us-ascii?Q?jHxgq4fdEd3fXHK0Dy931SkC4mzgqwlwJkLu9NEZBEPrUuhHOSC4bk2MVG6Z?=
 =?us-ascii?Q?eufAzotHckKdZJ6N4WU0wukJSCSOj8G3ra6XdVUSgK4TsXq1Tnanm0rOxZnd?=
 =?us-ascii?Q?fap2MPrqgIPjpbdWxLyLhwPmMQT5JHREnmTrkrKunl0PyhEY1smJFXj822eV?=
 =?us-ascii?Q?+a0uMoWKtmN/zHNAal3Cv4AL0+0OAsP1pzSkYM5WuG/5UUK5D7rIWMvI04Tj?=
 =?us-ascii?Q?NVUxJqK+ERBT4phOZPaOwMCviti05K3uCl4DB5uKwfqXnfmdKQOib5MvsKWG?=
 =?us-ascii?Q?HzUl9KrCfxeR2PrnNKZWu1LKVEkiWJWfMg+YPJFlkqJwx/bAXN0iRCMMoyrk?=
 =?us-ascii?Q?BDDBwkypyY47bupLG/44olG8fnSbNMBCQvSmd6ZyVABnzbh8Hk9WHBp61DRj?=
 =?us-ascii?Q?W8hhQXDMFXLwk9A4w12LF2RkR6EuKEzey3GPEMVc5/Lpxw+x+hezY1xh7vlt?=
 =?us-ascii?Q?R5UobJZIL5vJN2DUEqXnqxztCNrCq8XSmmRxyvlGdhi6FlewxHMSwX672P7o?=
 =?us-ascii?Q?OrtBMXUbrl6+TockGjEub1iW9Xf2yMPrG8OG3+fsDq+4uK7qFXleMzzPqv09?=
 =?us-ascii?Q?1PDhZ4Crqg2ITYvJoYJ0nIlguzjc6TC/A7ZGCtVzPx7IFSjtlx7Laow9BpBP?=
 =?us-ascii?Q?aSb6r9emjvFT6yJbT6wfkqAdywX/c86p/Txi3kU8kWMqo5d4DAmD7LNQ1fbr?=
 =?us-ascii?Q?fJNtc+vBqRZkmat2iscTSL32ZE8D5B60p6UXBy3a6mkkcXxbYJjNoavKhgQn?=
 =?us-ascii?Q?P3gQzJSm+GKwvxyfhtBeaImWY11FezQuNqHHoJMfwy8WPW/coVDHA20HC5jk?=
 =?us-ascii?Q?Ew08ZC97EDv5gdJwRTdK/dPXRGgLDJ4S6fyxcaesX5afC4B1hssHsjz4Z9Xb?=
 =?us-ascii?Q?VBWfZfDP/Tui7JiNNxfL2lKSeHEs9z0CsmiB6o1U6fdsgatifowJiQOEeFYT?=
 =?us-ascii?Q?erTXeEILUlO+NZOYmQdc97mwUUguBHYvxIXegMKJPbOB1gjuKmIqKVIMi90p?=
 =?us-ascii?Q?WetCP6qZtY5DDNavZIHUD9JbTQ51gzguwwahF5ygFdqrDGC6CSyfTWUm6PPh?=
 =?us-ascii?Q?hRDQakV8vPDMTyu4K7162O+FFVN8CBTRmMwjR/OyWwApvgyZFIsl2LOOWV9L?=
 =?us-ascii?Q?7ptdbKDotAvslkk0rlCb7zWXqpDY3OV3+EZPrXomieA5HkNjMAeiBhHvSAwi?=
 =?us-ascii?Q?TfzoJ21j69XAuF7wiZhmUyg23+OxlkiYo82Ijshnlps9Sphj6Hkz3vKCSbSR?=
 =?us-ascii?Q?ksV3LwCYN/AmgGTHHRamQFSwueNnehPu0tR4beDoMWGI6bXfiUtyN6sd7nta?=
 =?us-ascii?Q?rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c4a3f39-7369-44b9-6401-08dc445ba254
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2024 19:19:13.5415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 674dLs72hs2EBcBBGgCch6t6BC4bgyAccu7V7ckHdxFXR55m9GU/EUCJsrxE+H2fLCl7DG18QzDSfj6ti746fsCqaUB0xxQTjhcAZbyLDtq99IrtcuTMdfS1jOcgDtsi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7296
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710443959; x=1741979959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zu5zSTslUfQfF2Wn5vQwxLHOO+eJDoXNri71Ym5LBR8=;
 b=eXiJsS3KXQIxDfNukO4QsBaWiwigSN0RcUfibWapnnxQki5vC5X3l7BA
 yQZI40R2qYldhOUa8m4LaIrOhhgdpKVDGOMhDn6T9/WHs+kY7AFJV8YR+
 3xCycBUVeNV6+G57bi1LsrVmgiOoajCDTybdDCfGCZk5Uu0Ukw4pnzMA4
 +iMoryWpy9s6XGjA/M/sdAf0t9/FBgkfcj3C+HbJDWlE5BCzKglWVUjDt
 a6pN4z95DjZIEYzFZpx/3/F5swIAr8+La9+vxWMAjYYccbBQVcwfFKuLw
 Cnmv0dALmb3ophNvPRAbdid/SaODilIK1aRUosBet7n3MTu7FdZ40WcxL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eXiJsS3K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: avoid sleeping
 allocation in ixgbe_ipsec_vf_add_sa()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Tuesday, March 5, 2024 9:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; K=
ubiak, Michal <michal.kubiak@intel.com>; Nguyen, Anthony L <anthony.l.nguye=
n@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Dan Carpe=
nter <dan.carpenter@linaro.org>; Shannon Nelson <shannon.nelson@amd.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ixgbe: avoid sleeping allocati=
on in ixgbe_ipsec_vf_add_sa()
>
> Change kzalloc() flags used in ixgbe_ipsec_vf_add_sa() to GFP_ATOMIC, to =
avoid sleeping in IRQ context.
>
> Dan Carpenter, with the help of Smatch, has found following issue:
> The patch eda0333ac293: "ixgbe: add VF IPsec management" from Aug 13,
> 2018 (linux-next), leads to the following Smatch static checker
> warning: drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c:917 ixgbe_ipsec_v=
f_add_sa()
> 	warn: sleeping in IRQ context
>
> The call tree that Smatch is worried about is:
> ixgbe_msix_other() <- IRQ handler
> -> ixgbe_msg_task()
>    -> ixgbe_rcv_msg_from_vf()
>       -> ixgbe_ipsec_vf_add_sa()
>
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Link: https://lore.kernel.org/intel-wired-lan/db31a0b0-4d9f-4e6b-aed8-882=
66eb5665c@moroto.mountain
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

