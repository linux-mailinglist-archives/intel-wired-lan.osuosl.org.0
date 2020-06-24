Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 101FE206E28
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:48:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA87E88248;
	Wed, 24 Jun 2020 07:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YUDOFYpT7xWu; Wed, 24 Jun 2020 07:48:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1267988378;
	Wed, 24 Jun 2020 07:48:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AABD41BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A686D88263
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3BMdViB-L5QS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:48:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B08E088248
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:48:18 +0000 (UTC)
IronPort-SDR: Y2K1lRTlBY54J5llkkwEevTp8p7OHi7VIJ74MANBqyJ+KquDxxemw4Vg1zposeht0tSJ5zHJBT
 LgGOTUuqpZFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="209535027"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="209535027"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:48:18 -0700
IronPort-SDR: Up3SjjConUJG7ZSaF9pdL66imjMu5d8oLp898QUiKoWkbWvaEYOudCMgk7Sb6FuLYUtX39vuy3
 Hq2fyFbU8L6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="279391846"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 24 Jun 2020 00:48:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:47:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 24 Jun 2020 00:47:25 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 24 Jun 2020 00:47:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 24 Jun 2020 00:47:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g3InsCMiwMQWl8JeGrreLpIGqvTDeFW1q18xP2m4FqhwVDHLrXhkjnGjHlHJ/jOnmssM728ikKvtUUxAMRHNyZ7VqHM/wHImEV1cruNxa7Ds11jwy5p4/qMbs2nSBj1bWlIyBVOapA3DGSW3L6ef5SiaKabFVonD8XZN40t8TkB91lexiJAkTIjyGsyxXqbL2MTcFDVfWhO8gKcLpMRGG2fW729+hKz1NA45f8PZyzyrP3UGmj0E2RgGAUPj8KYHFWbqd+X+X3NBCBDJcmPNTpuXQv8mqymrU93b7fTj4WOoidH9PAIx8p7irSzRW7x1hxp6medQrGVgMgSdSOg0qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iot4naHe99S5kGacFpk525UMoVSD93NPwNqW9wDfzI0=;
 b=VcRofzXg55BYfiRmdRHyZviCalFXOfm6HZwR17J3vKTMdlXCSRFGVRbAXFa5PXvXlB3uqpKLTcPwe6FXgomHMsIycMMo7mLiCzQrog/bBYF3+Il/t2kwn2MCD5dxOavFOAivga0dbZLl2WhkYzuh9H/kX7JQvIW54Wqz7wKFB+TckY6Of/mEb8rKEvFvemwAbqVVPXPH6KVVTJCta2SbPmJiX0t8PoHadMmuEjGilFZUxOKzAuC5Js3Nm1VeAuq/rv2fhDzMFGqFW4tVS98xECOqic55UduTozgcwVTgjcdf2WHfG3ViEUE31HnJ17wYxnZcJwtKi+J8Ry+GJbN0AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iot4naHe99S5kGacFpk525UMoVSD93NPwNqW9wDfzI0=;
 b=eAV0Gm+tbfZ6qTjlZLzbxMZcqBMv3d66XLC5df0Wg3vcNMGh+De3HkZ9NIGBPnT7V9DrOqAVszMevpGPVaGFTGuZ+KV+NC9NsYBGPKFAA2soYpbYyiHCsBph5iQmnp1txlPq06xoxX39NT4OPci6QGhVsPvPl7e9SFIu5dnW/TI=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.23; Wed, 24 Jun 2020 07:47:23 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:47:23 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 5/5] ice: add switch rule management
 for DCF
Thread-Index: AQHWSfqzRGcMNP1o6k2bnRaj1AIVOKjnYqAA
Date: Wed, 24 Jun 2020 07:47:23 +0000
Message-ID: <DM6PR11MB39006FE59904CC7D562A9013F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624072939.9363-1-haiyue.wang@intel.com>
 <20200624072939.9363-6-haiyue.wang@intel.com>
In-Reply-To: <20200624072939.9363-6-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ac90bb7-3a62-4e0f-76d8-08d81812d50f
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1452AE4B99297CDC358671E0F8950@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3tLwNUXLPoa8Er9EshVQrQsGZUruhwMlJDtE2xaq6haZYta+01IhHu7zh9q82VUCqTUAOdyZrfaGYjtvcam4Aut2fD+9JEzAjGCxgmy7OK+RP/8iLptN5Ioy7qn65uI4tqK9c2+0LDaWFaUBn/UC67hA6R+nKaE4PELGL+13+O1z2vPDzX5Invvi1q5qohbvv7soin+PUxPJh8YBV32yE7TXfE/DZMXy5/5JFMq5bQuEg/Ndi9AG+XLInUGIyqkpwD+p+ittmzkVb1GxseBiA6BIQpNGNfMR2s1ktvfrdM8d9bX2h1mvfP3+2DKQlEsAVyPlyaiPYuamgxc9fPsRrOLOny+U1gEV+JEQi2tfQWWtdGP7mJ11iRo8cN5jg7qVF+nReHbfQsAJ5CLapMVAHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(83380400001)(7696005)(186003)(26005)(66946007)(107886003)(55016002)(8676002)(33656002)(6506007)(8936002)(966005)(53546011)(4326008)(9686003)(86362001)(5660300002)(76116006)(54906003)(64756008)(52536014)(2906002)(66476007)(66556008)(66446008)(478600001)(110136005)(316002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Dk94Bq6oP+8fo0ZS5MkWq/OmXJ4plXDOEdYaCG4o60d2UsHNse+GuCjsjEGdFjIPAUaf3JfQC6EtRpolpi1fsdNA7a9dyNV0S17ZFxzPzU2QshkPUYclDYsMEbdGJeC3gvNb7yf/EY9CpClS/mqZkP4kWGb1TQn9hYRi7DyPmPb+2KXXSVG4pKOrUVvtiJ2u4OoBDlW8cN1NiKbeXOEkmlgP9g2VB6Q2PHRzl5tt3je5zxawUi4tqaKZdWTRCSuucZT2UPxydlaE6aGPBDrofY79p2ek9aimUxuwwKe1Ukovb46gvZpnqWyNwYGJ1QapwbzTcey1q332evZ/mVy/VhkU9WOGdsPH7Xd8RGtn6oMncMFChJX2fGtMa8Qbq+OKwB6nElWNFN9vxr9Tr8kLsSjazjKIAoeGStpC7jI8avQxLax0RpdQa/CDRYss6DM38Xvx8MKblgK8EZZYBFKXZCdVfI+RSKdA1t+Xy1j0Qi85dEsTJh6PoTgwDVIFzPcX
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac90bb7-3a62-4e0f-76d8-08d81812d50f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:47:23.4864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l3EtHyL/l8DttkRjAavJxR0y7HT0SKean6HiW9Iv4G+zXhBz3ihRIXmuchvBI53DvuqCencFDw+dqwAxRUOD0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 5/5] ice: add switch rule
 management for DCF
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
Cc: "Zhang, Xiao" <xiao.zhang@intel.com>, "Xing,
 Beilei" <beilei.xing@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 3:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Xiao <xiao.zhang@intel.com>; Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 5/5] ice: add switch rule management for
> DCF
> 
> The PF shall track all the outstanding switch filters (filter IDs to be
> precise) added by the DCF.
> 
> Upon a VF reset event, the PF shall clear all outstanding switch filters for the
> given VF. Upon completion of either VF or PF reset, the PF shall skip replay of
> filters that were added by the DCF. The PF shall however continue to replay the
> filters that were not added by DCF for the VF(s).
> 
> If the trust mode of the DCF is taken away without the DCF gracefully
> relinquishing the DCF functionality (by way appropriate virtchnl message
> exchanges), then the PF shall remove all switch filters that were added by the
> DCF. The PF shall transition back from DCF mode to regular mode, the VF shall
> be treated as any other untrusted VF, and the PF will reset the VF.
> 
> If a designated DCF requests AVF functionality from the same VF (VF-ID) without
> the DCF gracefully relinquishing the DCF functionality first (by way appropriate
> virtchnl message exchanges), the PF shall remove all the switch filters that were
> added by the DCF.
> 
> Signed-off-by: Xiao Zhang <xiao.zhang@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 713 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  41 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  27 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  37 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  40 +
>  6 files changed, 834 insertions(+), 33 deletions(-)
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
