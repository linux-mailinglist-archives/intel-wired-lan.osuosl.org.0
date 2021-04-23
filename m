Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 441B9369CD7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Apr 2021 00:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8904260632;
	Fri, 23 Apr 2021 22:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 66Tw0Z1j6Vvq; Fri, 23 Apr 2021 22:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E38F60603;
	Fri, 23 Apr 2021 22:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED96F1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC033400FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EJOKK6tv9o5O for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 22:38:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8963D40102
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 22:38:53 +0000 (UTC)
IronPort-SDR: 6mn9IGBUuUfXqW3j0z46XVdKyRXlE/jzz2SYXrerdd8k6qtM2+cmiu9xsRO7uHAqqgntP1ooWC
 lWQr0MKkvLwA==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="183271432"
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="183271432"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 15:38:51 -0700
IronPort-SDR: 6PXzvp2RmEvVkw4tY1hMZMiA4x7nipM0DGfQmlVe3zfXynvAPOWXNcsIdvArqJacJC9Gq4vggD
 uk6ipa8E723Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,246,1613462400"; d="scan'208";a="464474346"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 23 Apr 2021 15:38:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 15:38:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 23 Apr 2021 15:38:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 23 Apr 2021 15:38:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 23 Apr 2021 15:38:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMLNc1jnDtcivm89hM+iTDCQli7ivq1rirAWgwjn0YDf+dtl1PQ0qnxS7hZUWMRnpyJZcaPoT6Cc+wJoILkQFdt1RP4d6D2gHne4t4N/DEh/xx7B9E8SUtOMA+WEsFNfbJxGWlp+XN1Yyturjj8GkQA3PpuTV6QCydqdukjorjiDm0509vcHJuBFQkEj3PObYFFWWRSw9jA8jH43bZhwhqCtItBbCP7GIrJPs/5dEbKT3RQRnFlSWsczi04+aNm39d4Wwhr2UVaS8Iv2T51bilHlHEXZ9c0hiKWPFV4UrunMmFXTEtfa45LMApoaFIlGURPldYuzXWgV3rPit+KeCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99g1nLpPfh10OWfhkLtTRcjHbjLszLJjipHX8/pS924=;
 b=dyjRWt275/Y87sKgOZyg2ncoWz3yxzyky+dDh9NejfZJDnqfqA5a0SsilNfMMe5CTzJ9hHTvChlSmmo/Le0SpwwCpKfLmLRUIVxt8xbxU0Ieff/RBa3WKV3ggd4Sa2G7Tz1XwoerPxI+CiBrL1RHHgG4Ej/Yn3o+r89CwELYP63Z3EV+JWtQxGu/+W/+t5+SooWmZLl+RwXcW2pNxp5A9ZKkmAOeXEfP+65S6IIRDG3nN9Djex11FxUkjet7Z7B2FYQrYklUzrVCmi+IEjp6k3+I2jf1tolzPHW2ZwDrbTUmxtI39R50u9SchYx/zjOY056FMiOBGXSKPyE8/b9PyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99g1nLpPfh10OWfhkLtTRcjHbjLszLJjipHX8/pS924=;
 b=q1Kdp9BMf5WjVcpLjQTEkRJGu1FYEYwFINtKuHUPFBojHZF9apuo+dbjz+F/qLP6SjUez9IuSTjGL2F/Cus0+xSwI7dJQN0PNR8bQDO/TDqugzlsgk6/VsS1Pb13kDBITm6xX4EEZPe6QmrH8jiyajrtQaPgr7VATzg6eOCMDGE=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by CO1PR11MB5204.namprd11.prod.outlook.com (2603:10b6:303:95::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Fri, 23 Apr
 2021 22:38:49 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%6]) with mapi id 15.20.4065.024; Fri, 23 Apr 2021
 22:38:49 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 10/11] ixgbe: use checker
 safe conversions
Thread-Index: AQHXIdiHgvA8WGB6iU6CCpQnH6tc66rC3wKA
Date: Fri, 23 Apr 2021 22:38:49 +0000
Message-ID: <MW3PR11MB474884D687AB3D39BAD04AC1EB459@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-11-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-11-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f83ea731-e977-43b9-4fa8-08d906a89069
x-ms-traffictypediagnostic: CO1PR11MB5204:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB520449EC0D758DCDD4F2AED7EB459@CO1PR11MB5204.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:178;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nhjUV8tp/6toC/HCM/fuQz4E9POdirIhUuyRYfrnm5X+QTMAs0UZkfX/HJq6dX4upFyGT7Kx+2elATGWVG1bg5lYXqZ+YFA09EYOpFFP7P6TrCQo67boSj8IZEQgOO1t5/eLpFsKliDEz4zwmBPHZZqjGqljjUBqqxxfFIpVGfN7xn1HZNFsp/LJ3vsByyFra/R5FV8Y8gOigcixmxKJoRFLh7/nZsAHCbnFykSFWmtd4B2zPCtTouRcI0bT82+rven3twaItg36PeOpFJxchloHGGJMv6ezBv6PGVsgxfOz4/WkZDwFDyvut4i4C7MZeYZyhH3fboD7jo1pwOz9PAnuEvPw/XAZlAvbEFgx3Sjaes+o8dhF44IJrNF6l/BXDHZhXgHjGwJLVbbBj8ci1JBUbsgW4qiCzrxns4+chPo94nSEsv8nu1d98lg8ogbSDQ9q3sfR2/0l/VfkPcSi8HPHtrfsl/sAX1nrVkLn3LYfXmFEC9cvqiPM+d6jbOPd25McCjaw0+chp6WRsUKYmA4exD3FsrV9gcflKFaPxiufbbt8bDlhY1x1jA12div+pjYOS3E1ZYtZ1+hUdTXS3iR5Up8+k5xVLzL70QooeZI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(136003)(366004)(376002)(396003)(110136005)(33656002)(5660300002)(66556008)(186003)(478600001)(9686003)(8676002)(26005)(71200400001)(2906002)(316002)(52536014)(55016002)(38100700002)(83380400001)(6506007)(76116006)(8936002)(66476007)(7696005)(122000001)(64756008)(66446008)(86362001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?CR9fs5W3LiWQRhmOjcfC0Er/HtgI6tVBp2dR88AU2Ym0FVnFD7YyBDYFNXRN?=
 =?us-ascii?Q?9FAnQVmVjUi1yD82rriobXQKh5HR23azq9y/YUpzcvWPhkMk0ftXLKBKTeSZ?=
 =?us-ascii?Q?omfUxUwjF/CI3Op1Zcq8FTkx7cScbqLrd1WaTaiivH4fZJVSV1CogdhkGwVB?=
 =?us-ascii?Q?5kkPcOh7CqCL5SIQ8FKp6at8XU5hRFVBCiziJ6lKQQ0aZeCmyDm1ERQ8lRnz?=
 =?us-ascii?Q?H4p2b7dps125ez3dcA4E0r+43xOzXIvmOFC9dRCm1iEEeuxOx5yJmPZ1mR+x?=
 =?us-ascii?Q?yZOU5u13cKc/SfynVq4/E8KkcnfLyy9o+npXkrD5W857A2TI+UDPSN+cWPxA?=
 =?us-ascii?Q?f5vrh1FubnA/MxzXKL6osYFVjKoiarSDGgFA1SKysHyWXcwT/XgIGcXCEStH?=
 =?us-ascii?Q?CTN8ux7vdGCbi4WCeqmlEeS+DDkyl/6JQJoXbu6P+HYw1Nldw5UHprOV9IOh?=
 =?us-ascii?Q?40QNFAL6rUhAYa4P6lbKGMrkuXxXmzy5A3gW75INyktmFqLQtyDJtgLChXtv?=
 =?us-ascii?Q?m0nCrC4kPvckMkkOdI9j3LT3Pb0F2ReaFWGbNmAUzdoPhzt2vQzPBosaWAxI?=
 =?us-ascii?Q?Fjhq5Z3+rTU0pR1/IJv/f1U3EJXqlgQkr63hA+h27M1WwDAnKKuvtroPIQ6o?=
 =?us-ascii?Q?yZBfER5Ik+OZ+XNjRIxhILSs07kWwN7ErNyb3rX/rRm2j+a6J+VLsm8/OR/X?=
 =?us-ascii?Q?E5hZlG/d3rQDPZyC+duAi22+gEESPcTtNIjuZkdQIxfEIbamb/E8FYqeEOsP?=
 =?us-ascii?Q?tnhODUVCk7qSQaR/hcXE7I9PsxwLAamIwJ+TQj2VZVkIaDRuARNifadEwjYA?=
 =?us-ascii?Q?ajqVrJiFFpmvUI+pUCCaoKprXQM/jQsK0FGb4CaEo09pgYvirqf9sa3ju+AN?=
 =?us-ascii?Q?/QBRZU/lFfyM7REQlVGwORkv7U9ZcA4jPIC0glCoBkkrWCayybwRIRIVMIGR?=
 =?us-ascii?Q?DperDRyVOmesQHdAG92ghj66lZpmQ6HMOhm959huU0x5ohybTVseW14fdjpa?=
 =?us-ascii?Q?MHsnx6W4jsZE+uxxGtMu99vesSs4ZUPUIzHn/O6znC3MZvK5fidotgpTbG4K?=
 =?us-ascii?Q?thdOJO87BCPNeq4C4Et5J8Is0rJOO4Y1wGgROHfyKSoPutnVREbF+Gv1qUsu?=
 =?us-ascii?Q?DeXHrKmdj+/xbF1/P3Pudj9fTakCtJQkqY/se8vZyleLrwTkygm6oClLQ7u0?=
 =?us-ascii?Q?DWxD8ED892p4eaF2Xl0Ve88jLB1rcynAzrHhvmKvJqECXZNabVO3DjMJI/J4?=
 =?us-ascii?Q?+XcbutgAJ3UKA8dWCNiyz4MOo7HDaomfGpG/GwzBHBMwhxDtSoYWXh7lNPDm?=
 =?us-ascii?Q?5sE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f83ea731-e977-43b9-4fa8-08d906a89069
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2021 22:38:49.5414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IpZfFViVGluMdNiwZ5q1A2rcBCu88Cc3tUOmDD77WYoHDBvu8jMwAIk0u3mod3eVnwJcpQF+oYrM2kL4cYj4XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5204
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 10/11] ixgbe: use checker
 safe conversions
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


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:39 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2 10/11] ixgbe: use checker safe
>conversions
>
>The ixgbe hardware needs some very specific programming for certain registers,
>which led to some misguided usage of ntohs instead of using be16_to_cpu(), as
>well as a home grown swap followed by an ntohs. Sparse didn't like this at all, and
>this fixes the C=2 build, with code that uses native kernel interface.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>Warning Details:
>.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
>.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
>.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
>.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c | 9 ++++-----
> 1 file changed, 4 insertions(+), 5 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>

 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
