Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C194122D287
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62ACD8721A;
	Fri, 24 Jul 2020 23:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CikGnSWTGcn7; Fri, 24 Jul 2020 23:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 953AA87101;
	Fri, 24 Jul 2020 23:57:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AFD21BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 637C5885AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GlsWrrfnYj-l for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:57:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DAAA38836C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:18 +0000 (UTC)
IronPort-SDR: Jsknxh2Mh2qGY5zDwSJqRMjih5A2TjbzccB1OdQJ0JWNY9umq9OittQyagVx4uFX31u8nVFKrT
 pTRyzNE5ZsIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="168927672"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="168927672"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:57:18 -0700
IronPort-SDR: hZwxKS2JubpEuWeYiSM89SheMYS/qKDIIjWjUpiklcl0cxNVke/YZSfhwjT1bdmArVLIboTWVx
 6IAQqeeIpM/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="272713781"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jul 2020 16:57:18 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jul 2020 16:57:17 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 24 Jul 2020 16:57:17 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.59) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:57:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eH/Ajv9oFzJcC97Fq6RTgdb039i8JWge9+e6L+TCM9Y5A677GcUn5iHC/taEYGkMyntb9KE6/GKKJ5vfm5XJizYNHjENPlkR4fLpPChD/wu6Ouj4E+gTzfxjKilmMOzcemO93VRGKQoudqMbrIkVS1apy4y6JrkorZrDnNrLf1kaRfWSEh32lw0/7jyceVs9op8LZVbEUaR8836Rl1l1+3uUPehrjmV1jZXTbfbTD6hwPcGDrw2g61gbiqIqVXIjSJ7sNilyNhXA8fmgfnL7htFQKXfo96L6G4cZb3IU8JdPaiarkRlwScciAFze1kRpZ86cgm7iUXMQFCz83Sspmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Qte82SWXqx08SRsbxqatUdF/jjX/znxIYzYZKYJE6o=;
 b=VoNPMtmjhMEMXnylx/f+1cCYwJw9K4SMEvuvLeTw+AxUAOtXkWvyrUIZNliotdtBRq2NQNjhoYwnJp9lyeGz0J8eV6p8Wweeizs5tZOmmQZemRndd03ll4HrAMezLhG/SjZFBu7OE1PQ9mvT1WxYCC2uK+fwYvCy0twqKbXtRkyg7ih6eaYfakCrEzVaPJ5lFofr0Ek6xcKZGUERPgEcKdNOoH9kNseNOrv0dFT9lV3D3D90p3uWMDETnBEkEEme2SzeEaNzWAxzELV2UOiJuPF4j1+ImBRztJF9QkR6G52H5tOVeCY90uxonukQYIvk2uCJjhQbWsnt5mvRaKUeFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Qte82SWXqx08SRsbxqatUdF/jjX/znxIYzYZKYJE6o=;
 b=LMPr0TOfzKhU9YkC3jLbB1pl6SM3sbkTozpLabpGxrkOaTUqEldFRBgSA2ddcnImFoeHTQGnzWO9ai9X/E8nAToE2RU/BDyEXTIPUf3z15nBMRo6zwtKqU555MLo2ccqk52RxFqz8jwjivQvxGlHflcJFHL99vH+sKDwUjjBFFg=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:57:16 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:57:16 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 12/16] ice: Add new actions
 support for VF FDIR
Thread-Index: AQHWW3YdCV3a+CCTZkuihtkzWCIvuakXdVOw
Date: Fri, 24 Jul 2020 23:57:16 +0000
Message-ID: <BN6PR1101MB2145A55B7EF9741FB815E4DD8C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-13-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-13-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb821ef9-c741-4674-3ffe-08d8302d4b45
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB38424EF6E412369939AD2BF88C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S79PRnYOkHX31gVUo2nnFtwzpzjwUS/eEANJ7jh1ngT469zPKQEdR2eLx2Ie31SeWpI1rQxDNq+cdal8rIyDH4zoUr9JYS/Eai3iGk1kVdMe7BaOHz66RWuwc9eSHGeJDFEfaVHD7qbUEoLBIwXl4Hb478zLzSVVjki04civMxAu8dvA9QVyyv9lGN84Kw5NvURHfaW3fCQgWwRgRKeIRhXM3YXPR1xmpZj3na9+EZHUMwo47ILS1R2XF6aRCglAIpmYSiBzoPD2toH2PghoTuwey7Wk1axK9FZjjSP7qzbwOpAt6YtvQjfSwdu0ro8J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xsWvm2j10yYhsxkvAYVgfKvIJ7JEM26mk4Q19E+5xW/aMNU9/bJKd/QwFeBiK8/W7eTvTaLJuCFzu8I3f1bKMR/oSj5P2yT7d6BIrsdozFQ366nvYVLqlD3kkcUz2Ft0WcU8KCk9Gvxdd9nRcQH5vZO14edsLiKwYJy1Vxptr+yEhhUHbTIRtCMESCd3H0kVO5j4E/CBLGdhc1tLsxyWuXuzDAwmqnm6xTNT0kKrP1am94GU2JMHWIuH7gDOc+RSWka/1wn3Ak9zWRm+eZOFfyVNIE57Qe4Dh1sCe8eTY49cs7213L+5ouP/JrKgYOvIvmnJOQurAzluuvhIu9JNCIN0J0oAGtAD1jB/B5fxndQZKofidaO/dDlWBWY0hWJBu8YbserJcu9FX5teZTNmEMsjN5ELYbbi3azt2pfLKltm27TWn36NjEy0XVdWBx3vISiJWmdsp8vcr5DHuKijeycsjthg+iS6/JpISe1rsKKmLgwmcWa1oLvoUu3SLyqN
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb821ef9-c741-4674-3ffe-08d8302d4b45
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:57:16.6546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sql28Mj3S1PZwh3YEIYb7EgL8ktpPD/CBXnxxzO7KVAFl2HR3UMdLrKGlyb9qUkDcMAB8uCzZsl/7h7UOqtwhHkr8VbUFEug2WA+jU7cMyE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 12/16] ice: Add new actions
 support for VF FDIR
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 12/16] ice: Add new actions support
> for VF FDIR
> 
> Add two new actions support for VF FDIR:
> 
> A passthrough action does not specify the destination queue, but just allow
> the packet go to next pipeline stage, a typical use cases is combined with a
> software mark (FDID) action.
> 
> Allow specify a 2^n continuous queues as the destination of a FDIR rule.
> Packet distribution is based on current RSS configure.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          | 12 +++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |  4 ++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 10 ++++++++++
>  include/linux/avf/virtchnl.h                       |  2 ++
>  4 files changed, 27 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
