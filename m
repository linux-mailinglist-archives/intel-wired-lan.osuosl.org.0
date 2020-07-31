Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07330234BCC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2984C86BCF;
	Fri, 31 Jul 2020 19:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QL2aSD8o-je7; Fri, 31 Jul 2020 19:56:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 650BF86AF8;
	Fri, 31 Jul 2020 19:56:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 53BDD1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 46B8886AF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vDWhL3yfcHV5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:56:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 144D186AD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:56:37 +0000 (UTC)
IronPort-SDR: zoIrc5is0m8ifGenKNvl+zNqUl3kiwbaXWSYDDZo5twrP50Z9itqF/Ds9cFbau5cPpFja+Caat
 nuGdLCJwe5Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="169965585"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="169965585"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:56:36 -0700
IronPort-SDR: GPWOLZDyngukLqeng7pwc1S04KvMMJQUFH6YF5jcmBxh/sTpFVgYFMPQbfiVnxoqkY3NdZV897
 1x8VSZH8JoCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="323335891"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jul 2020 12:56:36 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:56:36 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:56:36 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:56:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 12:56:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGDndU7vAE2/0xFBtho1XYd3W9hcz20iOGOnKvgmnuaFnLhczH1SVNzvaOrKMK+Y+fQSfKLVj8u6geFUFyz4AcnXlLJczYWg4y3OMI+mkW4FFR1G31nApRSk7I68wGik0DBA1HJZpWRyEuhcp8OwWVPSY4VmaiHW+SHe68J+3h9ExYtcB92fa4leLyfzxKcopF20As0h1IE1NwRy2L3aRhrD83AqbnSMSuH327ELh1PDwQ/1XhERsj3UTt8Jg79aff4sHI/DOkg9YLlN5u2mOgKvMvnShLrxm1h3ZRaRPqazBHNFbBD6uu0ttbDrJlniDIxMeR+ovuJp3c3gl8mLuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LOMZWt60xD71eHsRNkT93V3AEZ/d5k8SJM2UHUyT1Kk=;
 b=ERQYdBOfqGo8Jq2/IWq3PbdLYdizB8p3I3z4NgQEov09ZDTRlAhe1U6HbrowwqTQMqeGX7gMCRd44f6mo2B/UFx7Z9MfaM8LT0Cde6aZ3vkCtu++HwFKVQUhCY3RUVBe5c5wYI80J/qIzcEcNHpi9fnLSgnddFzgeMkILN23BBtlNI2yHH0D7WcSqZTY7VMlpLja9WdsFz8VGIHyKmEWpKBNzN4OO91knGoSDWvNyTDFfIU3ARtuuZH14oEMpkRojVEnBGQWUBGjVkc3mvgy04yozABrD9MA6uG/DxPTjwugdRzdeXPIdvt1uTUouKPRpfvdV8DOokUTNAxOz2LSmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LOMZWt60xD71eHsRNkT93V3AEZ/d5k8SJM2UHUyT1Kk=;
 b=QLWjUmxaPyWvIDjHhw4lBoKX/PUBNDWTzJcp20VzHTpueiMbqd018HoZ1YsZp0AewARThT+7SzxyxU+Ivbqz2BkGtHelx+00i665hcMm/mtYhf/cLM8cgvjM467t5GAGGmKLI18RnRHXHbwLakChlWOZxR3PtrO/UZ30/4+w88c=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1329.namprd11.prod.outlook.com
 (2603:10b6:404:47::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Fri, 31 Jul
 2020 19:56:34 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:56:34 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 13/13] ice: Misc minor fixes
Thread-Index: AQHWZgfHO3ZEyDK10E6O+dYzjAKldKkiHUHw
Date: Fri, 31 Jul 2020 19:56:34 +0000
Message-ID: <BN6PR1101MB2145D2956927810B31B3A7FC8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-13-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 37063d7f-12f4-49b0-cf99-08d8358bd3e3
x-ms-traffictypediagnostic: BN6PR11MB1329:
x-microsoft-antispam-prvs: <BN6PR11MB13299B342B7CD222F80E9C328C4E0@BN6PR11MB1329.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:324;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T/t3nwO/nvvAB5gWKr5eY5WuhwlWQTRz0ZQ5IaLQVgpuRTmi6nQhoOJ30YmnQFtpiDbl3zr6t6G0GYwUoYEeZk/xeUPzgWmyShY0ZvsFuoPaAkjXnceNld9qOEfQ7/xPIxNsKbyZjTqkGgc5phG4JNexBG7IzmgPaqdZgoR3NBQq3YOoUTtUN/Tv5O8cpaQA4hr+yxKYctuTpxDj8tGjQGbFTOBMXeqBM49K+Y4xgwULKiu/GojW4zwjV4lh7zE0qZVKikI+lVf3o7mJNbz0J4tNaa1cru4Am0bB1xk+Y+fRfeDXbGamczAs74H65JXe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(55016002)(83380400001)(478600001)(52536014)(86362001)(9686003)(5660300002)(64756008)(8676002)(26005)(33656002)(4744005)(71200400001)(316002)(53546011)(6506007)(8936002)(7696005)(186003)(6916009)(66946007)(76116006)(66556008)(66476007)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bncXh6xuNJYALM2BLov6F/6dUQNhhBKSHK6RVfKLiL9xP8h/8TnJbluDokA3UuzRuubqoQyTq2NnIIA0hILBhy9swnt5EWm0VbfAbws6vWLLWK2J3/dU0NRB2YIS3l7JyY3itAH5lrMzrcydP3C+1lbKjjYNVvZhQXWRprAtOiaMjP53od4X4nbeN9IuRpRkb0XYKIVLK1S+dCAMEyEfCjcOMwA+7VrkWL4S/D8VAiS3PY5O1KDGnI+iros4RAbKnNMw+aauxOpwBg/2+Df2eC1HiWqCaOsD7SDIA8JUpYFeHI/2v8EGrbHG+v8N8lcSebuRbBUyn23jshtvFeEvGmu5kDnSfW6/QOEmJtGL7pMddQ8w/YhzjH9yngZ6qMuAuVgm+Fq2hcicwk3taV0eu65T5OC0LlMW24tQToJviILugj3l72Eytba0RgILbN8HkgeHPymbHOsXqRfw5Zh9nGePauRXWLcYmCUFZjWegcQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37063d7f-12f4-49b0-cf99-08d8358bd3e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:56:34.2224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DPDK8udHlIPCmJvH5C2wi60dGcom+4jMS2gfXRUnNyRprErQLjNAipPBLz455jYZ62l/diCJwQr1oA2lq2kFQZVzM8LWdAmIsCFdR10Ua6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 13/13] ice: Misc minor fixes
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
> Subject: [Intel-wired-lan] [PATCH S51 13/13] ice: Misc minor fixes
> 
> This is a collection of minor fixes including typos, whitespace, and style.
> No functional changes.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c      | 5 ++---
>  drivers/net/ethernet/intel/ice/ice_devlink.c     | 2 +-
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h  | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_sched.c       | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c        | 7 +++----
>  drivers/net/ethernet/intel/ice/ice_type.h        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_xsk.c         | 2 --
>  9 files changed, 14 insertions(+), 18 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
