Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7A5234BDB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 22:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B44DF826E0;
	Fri, 31 Jul 2020 20:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9z4gK8+oRZfM; Fri, 31 Jul 2020 20:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F013B886A9;
	Fri, 31 Jul 2020 20:00:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 813591BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 20:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D4EA86C29
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 20:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3255KjssyROg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 20:00:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B646C86C04
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 20:00:27 +0000 (UTC)
IronPort-SDR: 3KZSBxE6gos6C49CY7c32868GN3l9rlFdeQq8CatDCZH5WZubcGelGUadH5gRbE7RxbldetIAE
 diLS1y8fYbfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="153080947"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="153080947"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 13:00:27 -0700
IronPort-SDR: AQYgMdYInpgKmc4TSbcJdx4tJoITZGj40JTqQANZSkYzqR1RpA62buztDBO5NqIOhOaaF1UfjA
 Wmb/hOdMUf0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="491591360"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2020 13:00:26 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 13:00:26 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 13:00:26 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX151.amr.corp.intel.com (10.18.125.4) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 13:00:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 13:00:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jlBUSteB+7AIM9idAqs/kJbGl/XIqUe7pno2VPmByHvMPTokYQllciBiNKHaXmTUvlphCORUOId/yLXhg8zknHDJFC5LfgBbmZXeq0LUu3/EYzBJ7kXf5ovcZUL7hIaFIqC0X7eWQgd/wLPlsKjCHspgOcR9gPbQZ5hXYoSXhA0FX4dYQt/owTDObGZll+/x2E6O+zYfXUZMs62QsdOPsAJa4xTAlNXLCrD0xHagAA8jECT+pmXnodlCcB09WgKS9bWe9G7Y46vf3JY+dIWacqNdKIXfrh4ej1wmprasGjYeUnsFzn89dzi3BPNbPRRMBHnExXm786d0RY2sbsKMGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0SCU9In1DncmFmaR+s0iWCuLmbkb1Dfp57iMar4Vms8=;
 b=kKsFcPRhSsfyHP4YPogxt3yRDMdweN2fFgIragDTWYQoq6qYCihCjQNrAqgjq+D5rce8kyZtgeGCHcjYFAlQTSDU/0BbLsnFaB7QebLTbR6hYALVF2M7gcrT46hqYx0ZClvY+M2evZlN4jJpQqx09nxA2wYjOyikq5ELweAeObr4UHYB3dZmDn99sRV9h+rCQukWV/tA/wq4h8ZzFVI4YulhavEQVnvG20RRgQTI3Uqzbw5spWTWQBiyp/Bqgvc5Ge5Ye/6rSPbJBKnFLLezRuVRU41MsNZNoafdklj3kTNHga9uSWy/3z98uslhKdyiZGy5AzP1dHKdfnVPi8t0QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0SCU9In1DncmFmaR+s0iWCuLmbkb1Dfp57iMar4Vms8=;
 b=ZuQ+p7/p/wDs6MjgHvGXs1MWO73CBjlqCqUL0JCbsuqq7RBfNN23AdvNSArZZ8Ih8LQPkpkFh36R8UZGvSAkasXbRUpBigO19HRGoO4ErNHxYnC2O37dKzbmtSdB3DKhHSAbYPQwR9UPSOvBluAtsyGAgBPwxLDvOlc1HJn+pJY=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3763.namprd11.prod.outlook.com
 (2603:10b6:408:8e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Fri, 31 Jul
 2020 20:00:17 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 20:00:17 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 07/13] ice: Allow 2 queue pairs per
 VF on SR-IOV initialization
Thread-Index: AQHWZge+FFfvyqvlDEuNJ1sMO1NnpqkiHkig
Date: Fri, 31 Jul 2020 20:00:17 +0000
Message-ID: <BN6PR1101MB21458E51FAA33675234B0DEF8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1502a8c0-ad55-447c-e72e-08d8358c58bc
x-ms-traffictypediagnostic: BN8PR11MB3763:
x-microsoft-antispam-prvs: <BN8PR11MB3763CAAEA1F1B60C9E7F25928C4E0@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kwf1hamXIfJwcaBhh51vlfVp9t5RoixjLrcgnf96fy7ZhflcE6Iwf10VwpUBRUkL6/BqYitjiuXlfW9FEZZfA6dh1nw2ia8q5yEVl+pxVoP09f7zW0wjBxoEpP+lr9CO7+e0GUGxkBrnkB6GUC5ga3Vg6AlQ6Drt4DtYkus7eSYFUwtFcA/tnOmKy+yZ6glkda12xBVajzFtYcV3bQ0FcAZbhBOzQD0ULVMzSoQ0Q+0Wz/TvAhnOvUD/AOAIwMiYcvLLvNG1oXGpB/x3qdAHBqKVb1PoEGzBoD4bSlOGRiHIcl+HMy2BhTncquk/wOYs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(52536014)(8936002)(26005)(71200400001)(66946007)(86362001)(316002)(8676002)(7696005)(55016002)(5660300002)(76116006)(9686003)(66446008)(64756008)(66556008)(66476007)(478600001)(33656002)(83380400001)(53546011)(6506007)(2906002)(6916009)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xl9Z8z+C2TpIc66MUfVZmH3rsjOigZRFK8FoUtajtfaqOQRV9Ky5a3Sj6+pHPN4VQx3MQW84Eu0brdfKDDSfeIxArUxbYzpvJk2k8yAbcHdPZmPs9GZec7v7AI9vjObpVuiSSPdEDzOP4rNUiyxzJNT+4h2JFAYLpvptQ+OW5DUWgWIXTMOOdWPfZpfz6sm4TroR45BZmELcAeCci8s4E5px4yA4nvkzRsA2kYoiNhghiFMci0sEFL/KOTF9C4tEd93tvqaGala++tJE7rkKZ69Ytmjyn8RsRqFkrkaD1ZhxSX3AeFzq3EJO0J0QqW+pHeMrZ3U4v4OcB4VkvQ/r/7FQTJSl4itICfyGJ1+Sc6e/ZpC6A51aEHQSyKegsfNRSIQ9uYabrZgKOi46/HijjMRtpcFhen1ra6cMDsLZFzT1NFkq/Lj98sD8NynfzQS3zj7epwkmCPxfMb+ZBc4/6awuxTD0JlQJUAsOMOGK03br3mr62OtAv5HI2ck1tsPS
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1502a8c0-ad55-447c-e72e-08d8358c58bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 20:00:17.1444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bPZCQTTvrcj52ZnIPlx+n2WT4R2/IBq7E9m0cNSi42VUXrlwWAZ86g155jW/Scy8klqtglyP7iaSgeajYQDmBamSjLh/Y4ljXXkIKHt7xQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 07/13] ice: Allow 2 queue pairs
 per VF on SR-IOV initialization
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 07/13] ice: Allow 2 queue pairs per VF
> on SR-IOV initialization
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently VFs are only allowed to get 16, 4, and 1 queue pair by default,
> which require 17, 5, and 2 MSI-X vectors respectively. This is because each VF
> needs a MSI-X per data queue and a MSI-X for its other interrupt. The
> calculation is based on the number of VFs created, MSI-X available, and
> queue pairs available at the time of VF creation.
> 
> Unfortunately the values above exclude 2 queue pairs when only 3 MSI-X are
> available to each VF based on resource constraints. The current calculation
> would default to 2 MSI-X and 1 queue pair. This is a waste of resources, so fix
> this by allowing 2 queue pairs per VF when there are between 2 and 5 MSI-X
> available per VF.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 ++
> drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 1 +
>  2 files changed, 3 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
