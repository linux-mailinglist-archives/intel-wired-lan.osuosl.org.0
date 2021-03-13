Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BE2339A52
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:11:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A2E083E24;
	Sat, 13 Mar 2021 00:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7wQicdsNcD3w; Sat, 13 Mar 2021 00:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 279C683E4D;
	Sat, 13 Mar 2021 00:11:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E29351BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DABAA605F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RxPiH9_UlHzA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:11:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3076B605EE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:11:45 +0000 (UTC)
IronPort-SDR: LHFwM1ltaBkVtwqWBXp1vKwdhVwQesd3ineqGCzfFpGDWzoeOKqtf3J95vHpQApuy27DA3WGyF
 0fTvAaGST1qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="208756362"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="208756362"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:11:40 -0800
IronPort-SDR: kEm8AvkeZTPB53Ml3LhULPsWG2UieNlkhdu4Y9866KOJ69Y9TdPl2QHBO1w6X+BxzeYJ5QfGkm
 KyjomNTVWZag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="411183411"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2021 16:11:40 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:11:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:11:39 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.54) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:10:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0pD2jV3QHYSKiDdsjaO59iZPIUfHyGBLeBVIbJUZMxQieb8joS0U52v4IuQNoZ54AHwM85qED3qpsfp26nzi/XYJJY4gebeWINZQdDkeD07JADkfQQJ3+NNEF1iOG7B62Y78U4JP1pWBhI6O1bnzLQKztoX8rWcZMpaHwT4eVMbsfamL4ZPro73biW8EAeCp1XTYixtcZl6q/DTqwMBc288caNW5qqAVatbZbMA4JrnJ8C2sf5hePhl6mU9Z5ZwTTLQlPUXOLVHL1jZZ+oJopDofaHYMlW5x+7wMWRb4xM+UKiYF9pjD2K6d9v64QZ72m0jzRR0dtGpowfnHqjWGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2HMHNlrL4mH6GPAcFOGiAdwRdTL5RK4+0gDpORh26II=;
 b=JZEen1G2oHazoo9TIFxaNyADHGPppN82Wj+tALRknVOOEIepUGRsSre0FaLNE3ZTwZPPG8M6N6Y+SfLbAUqtfgTjJ5EgWncnpPfERK5D8UMi1RiWYAyZa9l+qpFChz9xPKEmauPpXlprDQtFhFZ4UopXwQCFxkbkL4DaY85Q/mL0qjeGjSk6iQsHeg7pYUz+VHdin3krnTy4oBF1c0UnR3jXI1PuY9Rh/+nhljf5vlKla9GfLKH57Q0USaQDXonbX8RYu79vX6e5dXw2BOAVhiw4tZ2bfCyW6oLtneEUntXew6xUoi0onpTdEjIC5RLL+mBeObAFW4gbeyvtyoQLfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2HMHNlrL4mH6GPAcFOGiAdwRdTL5RK4+0gDpORh26II=;
 b=XaTd7BFxORfsA0s4pEJ37OcS4OEMCuxIxFg6p+D83WBGK6gQzfNwBSRYaabf/341MkcwDuIW4TO0algGAVPTxDQd0gL3ZnasRtHuOgrvehr7FEZKI64RHgGTgmTer6wvdj4fGQlBv/IEjF+I6YGqV0Ewb+1DeAQ5HZ8VMnCpw8c=
Received: from SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Sat, 13 Mar
 2021 00:10:57 +0000
Received: from SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e]) by SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e%5]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 00:10:57 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 06/13] ice: Drop leading
 underscores in enum ice_pf_state
Thread-Index: AQHXD5GReTXmeJyGv0mZuPVSRBHy+qqBG3Cg
Date: Sat, 13 Mar 2021 00:10:57 +0000
Message-ID: <SA2PR11MB51145695937D1F718EB01501FA6E9@SA2PR11MB5114.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc445954-25b2-453f-6a29-08d8e5b479ef
x-ms-traffictypediagnostic: SA2PR11MB4970:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4970CBC136EAD8E629689578FA6E9@SA2PR11MB4970.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S5yG8YGENOVjBCjqA0HaGEtw021gfFY0kVxLYCKnyiEeIQraOSkCy1QUtE3JCfYRlVEfgtYqOpVqQwHXyecdenND8XvybUR2Cd/Sm1Zpil5Zcrdu29jr3X6fMXFmdSgJqY/fqQibhW/9eftcZlqQHZPJoJ/BKaYqrKms8E6OEHbiAzEInfgStooo9bcup6EiLF+4bY6Dyum85qYYOKp67ofclZhVbHGiAduziMtZ483sy/0acklpRpixni3jylbq1TttwleQtHRMNgfZN/hG4h4Vnh9FskGsgwxXHGs/9BwYtTbFUojzv54Uha0cn8mIngW/2lTGqdHl1eFBREKKiEEieqOTo+YC8z49uupGnYKlsj1fZ0JDK87UOYOAMl6pElNXbiDKw89vX+YJsjLWBu1Dk9kjDe1QP8wq/kJrn1wELMeNpUHIoHbikqu0QzUvmTcxfe9OeukAXY4JzjX3RS4HwJOA+b5XwXoAn95A7fPiF32Ac5u8rqnRDcOMOqWVxYqfmLVZT0tFnDz0xO4fSA9EE3ViJygS0PgOftxwFAcqHJAUjFWEhn+P3fiyNOG4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(366004)(396003)(39860400002)(186003)(33656002)(86362001)(83380400001)(26005)(478600001)(2906002)(66946007)(110136005)(53546011)(76116006)(8936002)(66476007)(64756008)(66556008)(66446008)(9686003)(8676002)(71200400001)(6506007)(52536014)(55016002)(5660300002)(7696005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YRyLlgA2BmqOgwTgDHLl3CY76J4PEhaaNt9qPpf0xH9+Uyu1gb+dm2aLHRWr?=
 =?us-ascii?Q?PUYkkDOPlaw1SoS9qFy5HfqVOKKzePhPUQDtJs7M0kLRDRlm6P0Rs88fVcf0?=
 =?us-ascii?Q?NsL+WDIGM4sCqM4Q+GqzmhTgqYtlO2ul8Tct/X559wcC6cfy58MyvXihh+Qq?=
 =?us-ascii?Q?J101COfWHJrJy7d4m3IDOwL3X5hhOtKD9LL6x1hWW0cTcvDWzyUtyzxLUF+k?=
 =?us-ascii?Q?dYlzW6NZPDFN8LIZXyH5xB1EegIaKIA0KiJWBo57e8XX+y9pAVBZAlcrAigo?=
 =?us-ascii?Q?R71laGlo63TPFFDuFh8xlXdMA2LQ3YgeM1LJyD3j57Pvgok1Fpe/JANQbZ1/?=
 =?us-ascii?Q?lxfX2e8zGzNvUX6UI1qJTrnU8iRiId33W5iOqLVnTb9hNNdxX8kWEegtVlTZ?=
 =?us-ascii?Q?Qqku6m8oGcJWBxxLTdmSrRasu/zmu8BIRS3w2rJdHot/r/GJPUjLoaz3LAMq?=
 =?us-ascii?Q?YyUUIjWCfcRAwQJdzExYJ1YJ6bfj0jUpURs2wCEwieDVqb7J5W/U7GSt1mIW?=
 =?us-ascii?Q?6jybP3HNUFPHEuau4G4DLwN/LUqv77K2NuEHBa/PkBapVmlnUnzdPKtJ0pZx?=
 =?us-ascii?Q?WrB+h2MtjcaCx2rSQDxRnwy9O2ucP7C8ohSLsU4f3E4y5IcIPhKqULyr1pZ+?=
 =?us-ascii?Q?Nj5VNAWsk+lmRLTwbRGNtWZi0UxQl6bZcnuo54ObUf9Lci5nh2IctQVItMez?=
 =?us-ascii?Q?mi9nQfZ9YpjcG93eRztvaZy3X6JBCgwom5pHt1+iObKezzg6kfXN3K9xqiAQ?=
 =?us-ascii?Q?2O5z/eSbqUvAELfnG7LYDacKGxbB0dqGcbyDrge++AceRaIvGy1GA2MqmqUO?=
 =?us-ascii?Q?3U8j5jR48jtCw6KBEhnPGS9D0eGMU3wKuB7uaELbCtRODlX4XoFyvxNT4CyK?=
 =?us-ascii?Q?GvrBPSK+stlQuO+e2j75l75BF5/bmQGi2ICgoVRqnmL0AfeV23stbqDi1tz8?=
 =?us-ascii?Q?DbPBwI+ZMYDgGzMROl/ylIsfeC6PekNHknLGh4g6fyOiwJKXozpqJCKAhXZD?=
 =?us-ascii?Q?7ikyFhpRDmIuFmGBBfVe/4di7GuBqqLkpZrtuSZUQjPqB32jGE6Ebf9uKR4S?=
 =?us-ascii?Q?74uAOY6SxV3FGBMkvN+oQ2BV7CibuHMil4bHlwBTfhh8fU85NlXSamCjMO/o?=
 =?us-ascii?Q?/jEUV80lkP9lsLE5h8Lrg4rJlr1t2sY6zl4LuoR2t1+7qoVvCz1ps4zgsE2H?=
 =?us-ascii?Q?dWYGA/HLaHIxD3+bI0vqhE3Oa/fwv+bKMU3b609OHP79Y3YQLCoNPjSqz7xo?=
 =?us-ascii?Q?7FANlbQnbGtSQf/KIo01+mtsJnOFCI6YYqS3veGLjmuzHiXHPkUXb8YYS6pI?=
 =?us-ascii?Q?a2IcUX9PIVQAj5MBwNfLLYxr?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc445954-25b2-453f-6a29-08d8e5b479ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:10:57.3093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y9+VGrubkle9f1phQHIuNuV9RVdg7HRH6eAmX47FHYmugIFdKVIJx4KFXForE33/qJyas7a8GLdg1krh9fAIlVA5rAgkbebzlRkY+KqWL1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 06/13] ice: Drop leading
 underscores in enum ice_pf_state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 06/13] ice: Drop leading underscores in
> enum ice_pf_state
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Remove the leading untracked in enum ice_status. This is not really
> communicating anything and is unnecessary. No functional change.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  68 ++---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  18 +-
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  18 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 234 +++++++++---------
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   6 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  22 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |   6 +-
>  8 files changed, 187 insertions(+), 187 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
