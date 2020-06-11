Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A8D1F6B4D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 17:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D45688840;
	Thu, 11 Jun 2020 15:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRoW49mV18u5; Thu, 11 Jun 2020 15:44:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CEB68883E;
	Thu, 11 Jun 2020 15:44:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2707C1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 222D887D4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yupRJwzfpcJJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2020 15:44:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A103C87D6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2020 15:44:01 +0000 (UTC)
IronPort-SDR: NWoasUQgws1swjqY2kYlAW0qTN5gpLGgWszUdDebaxUMnYwm4oegxPZkKUTT31fi0L23Rr7ula
 UfPOMTCV4F4Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 08:44:01 -0700
IronPort-SDR: ODsrQYmIkGsypu7CI9tzPcKz3+M8syBOWy0QM3CJdcbo+qWp4DM8F2RE3plGfhXpzc/yZnBVu1
 jLlhtnEzrbxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="275371715"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 11 Jun 2020 08:44:00 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jun 2020 08:44:00 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx117.amr.corp.intel.com (10.18.116.17) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jun 2020 08:43:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 11 Jun 2020 08:43:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IU4JKW8D5G00PQKafqVvXdeXVER+alTSfsEsnMApahWnPxDI1p45LG2oExH4/tk/9MOKpsiC8s53QL3LowM4AnvFEQWWGxYeT/MDK+AHnWZ4MydhjZdhfvweOTu2uIdSTSEicOHGuc1hSTUwXYKxr6c9s5eTThzuhXhEt4vZcwb9JEo0ZmqQncky9IwHscysVRoq708XvtXlWaJxeZvSJJQAD3vF7YT2l7QA3ZTpjHVGXPk1jMfTFQshsP++LAcUizKEJtFOf/Xvg0rp2gSjRVrgEynBCSqThE3WlIbouDMiUaN8VPCQ2oZsI0/quSS9mCJBJa5Kk+O4dGBXvVpZkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sTQ0WziKFHdJPwfRKHAVgLNxpSWLBH7AGibXjeaIwHI=;
 b=j3/uypnxv7VBCAuNQIOvSL+nqnVHVKDEGfM9M9MFt0e04Jpfg/cu4b39xycAk+Y64TH1zzQ1b2Y3bBK8A+n5Zyaz6ImE/QYvzS+8QbTAs2eZpIvp+1jAsU2lS49LCIvvqi7PSqvk+TXQcdh5vVEKM7AsKcCpKbihb45pqU9EnTuI9gwuQlFStOafGPfYgR/9RCT6qglnnOKkQmp34z6y6Elm/rpd9tn2pwxCxDgIB/BAWRld1VFnPHg6Ir+GkiX49bXcOxyMmC8UoLoe/V4q/TtikhpW0x1t4BS/Fl4/DF7Dm3VTaZUGJOJzhJHXsVvJH9nYwxa8xuQ++YOmNPSdig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sTQ0WziKFHdJPwfRKHAVgLNxpSWLBH7AGibXjeaIwHI=;
 b=LaALhkKlLS+fAyl14RVQvZmshxz/73m/LgxO1yRvE2BbMpwzisd3UtjnwktykEo5mWw1TfJ82TfLygyetWx4IuTV73qIzVcRnA+XTvp275C8zYt0LyOcs57yN132thbytva/obvuZlHeTrcp4IxBqZjsQdqLZLmRRr4krj9fMME=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN7PR11MB2563.namprd11.prod.outlook.com
 (2603:10b6:406:b0::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Thu, 11 Jun
 2020 15:43:54 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 15:43:54 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 3/3] ice: protect ring accesses
 with WRITE_ONCE
Thread-Index: AQHWPmOlWC5KUK9sFUq3MIrF8dXS0ajTkUkg
Date: Thu, 11 Jun 2020 15:43:54 +0000
Message-ID: <BN6PR1101MB2145FDB6C115DD5BAD8F5B6B8C800@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200609131945.18373-1-ciara.loftus@intel.com>
 <20200609131945.18373-3-ciara.loftus@intel.com>
In-Reply-To: <20200609131945.18373-3-ciara.loftus@intel.com>
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
x-ms-office365-filtering-correlation-id: 0901b934-c7f4-4abc-412b-08d80e1e3f4e
x-ms-traffictypediagnostic: BN7PR11MB2563:
x-microsoft-antispam-prvs: <BN7PR11MB256377FF6AE95F9396AF0C078C800@BN7PR11MB2563.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kHbEuM/LkbSJcsdlBsgFsC3LvmgH1aL1n9XwU24c/BrFn9CYzLQOn06RCYcJCZjPbQk7bBgybNfY6+tx21I4iggLZD4Sdz2PhajcjiQpaSQU2WnTA2mcUiArj/7dUsQLsUcbfwXso7VNE43Me1C4R9PNJXcO0i8JgSFeKU2pdbRNYO5mRrSlWZwQ0yrLqp6IXd0IZvihhR5UqBsFdhdKZs1Db/rh0IathyO5gKD668TXvGCZoThEtxvYa1OnaUKS2kqvXVUawA54jlxOyRGch8JWpYkQedi/VdcHobvQIsEXlAq4yjzxQH0CPFUd+CRCb4HhUFEz/ujQkxThc017Vg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(39860400002)(366004)(136003)(396003)(186003)(9686003)(26005)(55016002)(478600001)(33656002)(4744005)(4326008)(86362001)(6916009)(8676002)(2906002)(53546011)(5660300002)(316002)(6506007)(52536014)(66446008)(66476007)(71200400001)(83380400001)(76116006)(66946007)(7696005)(66556008)(8936002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: qvEWci0QNARfLV6O3fv3di6JDr8yOOkmIGYkBmIQVGEwsSCJ6tMVWyQSqt4m2VQJwaCG4ZC03uHqOeFDsziMr4xYuh1rPVtxEuk7S61MzcCadMZHKrdA+nDbCSvql5GGqNaRMmPUr1/lyczPfU586ms/DfwJXGvaOJc3TdJwv/Cpl5/pzjvbNFMF/7J/7zoXTTGADVS0du8to4n9RDWfiDXUg3VwPxxl/NMDQIr7URjor01GXNHLOBMyRtWuBxB1lvzoq8c6LP8kNAW7fwjVkxXyEPmtvXyJgh3dqPWZooe4FBX+ZJf3LWd3BaGD4KZzn+T4ZGKaJ/VQ58m8Bq4Q5DnJoAyQ5LnPEsESYdcWTwu2IggXwObSDPsz0Rz27aUHHQJTAim4JfhYdIe/I+g2HScArcPlYjRR7uDF3zV5jJBJ6FCHdqkOrC+BKOJ0nzYl8X6Mxm8TFGKnI0VlUvjiGZrRKtpxOuabXjH7c/LFByQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0901b934-c7f4-4abc-412b-08d80e1e3f4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 15:43:54.5146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bQIpAECAROr0/M0Y+K3soN5trNau8tdjKA4CQbnRhQIjJEI16puNc8pirVYFOBS0V0TCtkSRblW1d7d2SY+ZvOLlAFzOQqd/BNf6etfiDQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] ice: protect ring accesses
 with WRITE_ONCE
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ciara Loftus
> Sent: Tuesday, June 9, 2020 6:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Topel, Bjorn <bjorn.topel@intel.com>;
> Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH net 3/3] ice: protect ring accesses with
> WRITE_ONCE
> 
> The READ_ONCE macro is used when reading rings prior to accessing the
> statistics pointer. The corresponding WRITE_ONCE usage when allocating and
> freeing the rings to ensure protected access was not in place. Introduce this.
> 
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 8 ++++----
> drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
