Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C964A206DBA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:30:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B4DA875DE;
	Wed, 24 Jun 2020 07:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iorLi9MvkSFz; Wed, 24 Jun 2020 07:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56D358768B;
	Wed, 24 Jun 2020 07:30:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1A931BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD42C88378
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HOej1ShGuU9t for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:30:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 326FD88305
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:30:23 +0000 (UTC)
IronPort-SDR: 4lYSnFspJwsccQQwtMJ5NNMgjBfrMoFWeHOq8dF6bfbzjQWWTm73qcuJRS/Cu1XG2v33qE4wTt
 Parj7N/Qu5wQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="142583291"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="142583291"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:30:22 -0700
IronPort-SDR: z7IUenJNWlexZchtciuWpZcGEy40J/Wh1c3nm9zyBs3eBM25NIwXl3RvlCcIGjSRttVICyX+wv
 mgfYETTc2oTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="301534963"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2020 00:30:22 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:30:22 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 24 Jun 2020 00:30:21 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 24 Jun 2020 00:30:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:30:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mi5DZ2BKsvpWsEorax+0D4xroscmBExLuB4FFDStPiXX0YAcSz/mqMlcK7OAGqliUJpB88w7NAjifzGTsj+XPUsD1t9yJ8gg8qkNFL4YnUC/RhEs4a8fyk4v4P23J4Ey0Vf+pffJZj8hfdCJw1kF/jTXIj+G4lQMBTfHYAoxTbvGSjaebuK4GURrXqzJ9xmx5SLV7VP+/PHt7oImaU6bwSqNFiR1Xi5UplUZTaABB5PWkNPLi4WtZ4hGgIc9R/+MsD+YtYUxbglipPhTzukQBQwhT3Z3Q3mwxlAXroDMuwztXjkN93IxRxSbyXE728+4/dJcGVudyTyA1k1NIgJbnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ommKNZz73PALOUZhMsJ4ftEcwcx2PKNB//YcJrkHVI=;
 b=X6xrJ/uWmSPLrtz+qpoctg+uSh/iPC+hOy2bvXZpNLyYjXWAr/G2Hg79AVHX8ZeP11AGTi7EdYdS9LwXjKvRM+YvpJUNPhqVCBw9hOKJ+MtbLnSc/8XCDM9LMBTYJ1tCpHOgIqxPTs7mXsp7kdM3jRzRvOH+g1F5mGipEt/cza7z4FHPU3/GTPqCJWTfvcKqGkiJUO+3E/wJYhXwnOhefviqyjPiAmx8INJ86wZ2nghpwgvipv+QTcKPX1NA9CAbkmWSb0XFSW2u7GYhqTFxgUgCpExZ7/zGDk1sSpwhscBocwAZQYmxfMNkQ+c9AvTyNLuMAs38NcisVDPWFmFMuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ommKNZz73PALOUZhMsJ4ftEcwcx2PKNB//YcJrkHVI=;
 b=uBi22sGWvWegJ6IgbJ4MeZlOSgFvYFZeUDtnT8indN5b4k12Q0oYCgo5mcYN5tQGI9kgg95pXRCvoJGpj/FnfV33DFId636SPwAIoDF+iX996TjkAZJNsgGg/prqB/r6wKGFZg3CFpncIR1tCvGP1Il/kjQVL3/x17wUEyY7jFI=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Wed, 24 Jun 2020 07:30:18 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:30:18 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 4/5] ice: enable DDP package info
 querying
Thread-Index: AQHWSc4yQP+whMAuGU+8w3W/xztJvKjnXr7A
Date: Wed, 24 Jun 2020 07:30:17 +0000
Message-ID: <DM6PR11MB3900E05ADBFB870DC6277859F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624020801.104003-1-haiyue.wang@intel.com>
 <20200624020801.104003-5-haiyue.wang@intel.com>
In-Reply-To: <20200624020801.104003-5-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c51774c9-75de-43aa-6a38-08d8181071d8
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2043B0646716A7A47B107A8FF8950@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5yjUkd3CfQE+bpNfTJFjL3Y8Cw92XDPBF/zXMdWjoEOTEW1Ho+D5g4fDQi8SKq8gPOfBZwSJdV0Y0FreRfL+3Ksr5bS26e0dxreeAQG0fiFbWenscg4sYCw7XgVRmRM/EhklT+YMwAKW9DJ77yIQpmM14Ux+/QgUKp3htOF4JoXbkd1cyfxmPPl6aZXtl5YYAPT1SKEdSWJRg0/PHo1SFlqmzVIz7VDNERszCblveeHpZNK5td5OFIAvQES+SS2o1f7MAgSLPw9v5d3VU1XKWR0jK4cNCdC++Q8t1AuUGSyWVWvfk1gw5XRAbLGmR2NvUXpCzLla8Ao6sExjX5SHTAMi4VxXXReGLag0d/i6ufso1I59oLgZQoPhQabEq01ONZwsjCrAxLOlYtpsPdgWnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(52536014)(83380400001)(71200400001)(8676002)(107886003)(26005)(55016002)(9686003)(2906002)(316002)(33656002)(54906003)(186003)(86362001)(8936002)(478600001)(66476007)(110136005)(64756008)(66946007)(5660300002)(66446008)(76116006)(6506007)(66556008)(7696005)(966005)(4326008)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OhPQ3iHoi4WM0fNXp/ZFn6ZStMczo6AeVHm2jxfYXIuwuwwjeX/pGT1+vWV95Y7tBACW/FkZCTsgyNDoRv1tqGIDr3+dkuabNhz6PO4JnqcBN5HBRP3NTBrmWfyz2uo5uWckKlMbeE2i40Pc1aWGa2j/n5cjHA2bTeC9kWDQeUgzxnpVVYuS/uXhIdrWTDumvrC2lg9gPgvbsNjuZMFl01yOlR3Z1sIR9lnXp6Awv2M4JLx9D6UN/LcSSVcPtLpRHZZBxDB1lcQi/98kkAXm6Fk38boimqXkIP7HZL7GkBF5MuwJSaw1h0bVw3xbOjJJ+GwxCHZVRU8wveiGm7WC/cZYdtFp5Zv+QSUK8dAp2/CWaoro6hUokoIApum8v6mmIO5b/uyfKQ2D1XB0kxdZwwqnZRnpMRdYmtDv2t5rBmqThSKRel7MFI6ClKDwPuboGe+ONNzAD2hxMropEsdL/rftv15eogszbZebunBKlIyhXGSwAu+4I0CZZhc4CMe7
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c51774c9-75de-43aa-6a38-08d8181071d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:30:17.9907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 957miUjcPYbxTMK0/C9BjvljxGlJqrg4FRTIZzENUlEXQNMQFOO43pvNiA1KVUkgrNt0OJpP+6Idld418Xq16A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 4/5] ice: enable DDP package info
 querying
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
Cc: "Xu, Ting" <ting.xu@intel.com>, "Rong, Leyi" <leyi.rong@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 10:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xu, Ting <ting.xu@intel.com>; Rong, Leyi <leyi.rong@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3 4/5] ice: enable DDP package info querying
> 
> Since the firmware doesn't support reading the DDP package data that PF is
> using. The DCF has to find the PF's DDP package file directly.
> 
> For searching the right DDP package that the PF uses, the DCF needs the DDP
> package characteristic information such as the PF's device serial number which is
> used to find the package loading path, and the exact DDP track ID, package
> name, version.
> 
> Only with the matched DDP package, the DCF can get the right metadata to
> create switch rules etc.
> 
> Signed-off-by: Leyi Rong <leyi.rong@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  6 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 52 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 23 ++++++++
>  4 files changed, 83 insertions(+)
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
