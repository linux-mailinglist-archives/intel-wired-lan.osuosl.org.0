Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9566D2442EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 04:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C7628884E;
	Fri, 14 Aug 2020 02:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NUueRYwf3kGJ; Fri, 14 Aug 2020 02:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5D17887B5;
	Fri, 14 Aug 2020 02:07:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E24561BF865
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 02:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D610B22721
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 02:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29nietQFMiFX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 02:07:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id E8268204FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 02:07:30 +0000 (UTC)
IronPort-SDR: YHPM2OBWhXSVtgoANrzsma6dAvTOGeYGiqHqqDSrwaWHRP4ol27a48qiPv2YJbT1TNGpaH+ru1
 X9rgywmxxn6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="215873165"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="215873165"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 19:07:29 -0700
IronPort-SDR: 9F61zIWsW1muDsucJmQspdA3XHHUBRhlQmRYhCpVVFxMbRsxjMxxRHujR3SN3I10TepfWrXvmF
 ViAbP/BSAlbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="327749862"
Received: from orsmsx602-2.jf.intel.com (HELO ORSMSX602.amr.corp.intel.com)
 ([10.22.229.82])
 by fmsmga002.fm.intel.com with ESMTP; 13 Aug 2020 19:07:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 19:07:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 19:07:28 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 19:07:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 19:07:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=buH4mMRxBKPoH5AHkCt816zELR4Op+W8RVUmjkTFw3pU1KNVdlgeJf7/CGRmXX37nHdh5UWuZtvDW7iQuTKtSdJ5sFKYy592inyqLphTV5B7PnPxqEE8gYVbE5dDoHtkwTIYNhChVjDhEsLH8czh2e9yNvrpIN5TBxgpd9EIpt10RtYpkZmfwb6n3MZcWnNfqDP8sKaayX3dGG34lV6X37ksOac3OnRT++Qyz2D5B0eknYgFaS1PQaUkZ646CQBaxMtY/WHc/SphLbbvYCMaQXhFYwNDU/orTS9Mu2/TZl/nW7kFTVgaOBUjngZAs8uPoA3keWhPxt33vMl2mOL7cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OkRCEpndwT4V0Hd+86eyf1PcCtev6w78WKI6QlxgofU=;
 b=TWynAfsowtziVtw7lU/P+sbfIq/e/0Mzagl0n1QJFnq/wpK8+RgxSbktgSSqCuG84FBEGxbHHEFdmWdHTOC+Aue097U7BWm6EE6JsyIXKAXhih21wuZlsby21kib7MQOS4taoFOwUu6g9fyoQ8UeJ84tbxgQkG/wJR4qF1Gu4QrxRFeTNXqqeVIrYHRMFURHvm13Oy+zL9tLlsrEtLzo3rF6Cfp5xZXWaaOOIgXRJB5doyUQgj0wT9UKEggoGmIzT5AJ4F/zD8emgI5WAoXJAj56mHvkFMQJ7dl4UAhXFutTvTRfjQKGOVP5tN4i8TGO3YLUlDYQAWRLIyfvS/1g3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OkRCEpndwT4V0Hd+86eyf1PcCtev6w78WKI6QlxgofU=;
 b=bomhttXPSDuy3kpxODIrujI5x8lRisE9gGhdfS5GKSxpPnBRXZTpZgLUWx9EbUBjK/YDpFrIxxYNaeOyYOipDWFo2GXqZ8iyJ/9jn9S/R9OgbQ22icVqvMq5wHtZEyDBCWlQ5OFfQNIfbXM/g55/ewR4j32LN5GVf2X5klAWG/o=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4691.namprd11.prod.outlook.com (2603:10b6:5:2a6::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.16; Fri, 14 Aug 2020 02:07:21 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 02:07:21 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID's
Thread-Index: AQHWacS6yGewFT75BUSgTBJDiXDRYqk266Cw
Date: Fri, 14 Aug 2020 02:07:21 +0000
Message-ID: <DM6PR11MB289080C73FB6C90A60941CD2BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200803183358.1099864-1-sasha.neftin@intel.com>
In-Reply-To: <20200803183358.1099864-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22ed6518-a852-4d93-ae80-08d83ff6c7ce
x-ms-traffictypediagnostic: DM6PR11MB4691:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB469143A393522B5885C4D7C1BC400@DM6PR11MB4691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JjsCyq/4oNMI0DLYGNz7/HW5zBj0o8lk4xTxjqKpXoctILBgLAi9dhfYiwC8imSoN5GI84Td9zNR1yP6ygcNmYOeZ4XCNK80JXP9dS6/Y+IxGXgLfdhWtf/WDWV8Q8CDmPsDSBfLnoLm4X8/9rWgfM4adMbiqvII3jkUr5oH/ig3DdyCd6i/FT6SeblMkv/olr3BpR1XJQX0Xja/PLTgiKqiWQsykp0TGac9p1lWBNmHw/K8Bw3uuzeX6reR18DROHAsUEsD0qCTzwlYxU5+Ep62bGWWmLHx1SpERrgkxuP0q131qxEqvb5Clc0kuuQ6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(376002)(136003)(346002)(39860400002)(71200400001)(6506007)(316002)(53546011)(26005)(478600001)(33656002)(76116006)(110136005)(55016002)(4744005)(186003)(9686003)(52536014)(66946007)(66556008)(64756008)(66446008)(66476007)(5660300002)(86362001)(2906002)(7696005)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 7J5fL05QJUSUFmLDh/EcGQDt9qsMAhNj6uPcux0b8He4jR9n97mmU5MvPeHeQklvqkyjOJQGwT5XLWmtr+M83Z6AY5+kZKSM5i59vEcOwSNH6Y1JIMJpvqXEMaWhv6S1XB3lnJf+ZZfMmEiRPqOj1Shz+Srfrl0EwhlvrvNKBaIR7uPr6AQzZVhC6p0MyYLX6+x6Vnn6pvQMFSRWE0tazzY46gNwYfyT8CLRXQXYbmXyroKPwZ/FppVT7/mBOY6LnFRInaLoWc+N8o4kRgQ18sZ/sY5+4cJjNomWy/vIHexAy6wdoZ9EFhWXVZ3fOU3Gs1vYb6LoAoidj98uActRiea9p2GtYuvKuDqLZHLhUoh5jKuuILUx4yWZ2s/Rs5p2SvcXI1MxSdRLvAQVPAyyTYy3tuIaN4MYxNLVPaQVWYPDf1CGLiYfacKm88xIoiSb02/4x8nMwPYYkB/W6cwADYtLdaCG7s9c79/ff6xYBH/B1ZYosRZCi4O/tGfLTQEcbIaRavvx8ZUAgS0O83/HitNlECKi6Vr/IdvQHroJb8tuMqWFpaQXQN60g085gRgYYbpJ8PYlji1n/rYJkknFlCA/ucd/MRckCkXxTpAz+Fj7X5uBRPT/YJ/jeLQqOMicVtwTUBhrLqQ3UGT0QN73EA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22ed6518-a852-4d93-ae80-08d83ff6c7ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 02:07:21.8261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcPSs1u2hyEio1wy7wOHjR7jxBWYbf8cGsoCdvNot1tY5p+s4z0BTqKH+dGDf3HxBgbe186yp431hm9EuYp2BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID's
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Monday, August 3, 2020 11:34 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add new device ID's
> 
> Add new device ID's for the next step of the silicon and
> reflect i221 and i226 parts
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_base.c | 5 +++++
>  drivers/net/ethernet/intel/igc/igc_hw.h   | 5 +++++
>  drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
>  3 files changed, 15 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
