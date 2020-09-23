Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E795274FA2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCFA98677F;
	Wed, 23 Sep 2020 03:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h2bPwc018F4R; Wed, 23 Sep 2020 03:45:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31BA68676A;
	Wed, 23 Sep 2020 03:45:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C6251BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5DF0522D10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qePa8O8MtFEa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 671B5229A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:45:11 +0000 (UTC)
IronPort-SDR: HwMWDEuTzz/ryiFvagEd0XOtxuPiR846Qi/Morpsr5/KDLUHzdErHauHpek67G5ioZ9QyNoCES
 b6ixdDXvVVng==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="140247804"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="140247804"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:45:11 -0700
IronPort-SDR: IH6KxS/mWi5QVvZrD+ZtMY9Zf9nE6YhV3F7vVcQw6ztjK3eBfzadE3DxDC9lfYNnuWu/SXPzYf
 ScjtMT0WQp5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="511472391"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 22 Sep 2020 20:45:11 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:45:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:45:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:45:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:45:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WDeTDFeRgpArSRoFhsEQrRw9vBW4aexT+qlwEPEbC2juDXbbqV0r17moEVwXfKaEGAwjBQcr7QpZS4xmqte+1FOyuoWWHIEynd/HXr4/ugOzoJsHOShmnQIoPQGJ3Pz8XPMJKw94cgEH3E1fNCfyIhiUAHeo1FIfHWqy+0BAU9tc0xzgpKQm6T5dRr/XG5EAIA16Ml7a8EQ83a58oPn271YYm6D2k0VIehOoedU3mliqmlwcrGY59z6KJfgGPBQEWh87XW2kxQToqygXxO3lgkMftSqGpUgZ6D+1pP3MJ8Zv3yMcKFk+7Um6RFtP9XoU5he6t6Q2cEMZ+fYzjt9Idg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obOw1mEg+zpSL1w33O0dZu+ywLfBDkYGI2HpbBrwRVE=;
 b=oU5h7T202yeGMmdcqrEElPhv0fwVapvLMmCwhVkLL3rvdL9wkRFtOFUa8lKcoUtlMej+cScqvAU5nqzGwDkPwHt5UMAXO1/XIacpxrjjdKa6MjgUfoCaF5O3JLcM3fpOzbAgByXXHya7F94mvxOOv9ddTRQqGEUlebrgIVGYU/zLKXAYFifu0tZbkJNi7H1Ira42dN+Y33xeRMiJYxpTm4vTzJJZLMPQlLzl51zZtwbQvb9B1VmIlTaBX65P8uETpRm0Btr+OoD6IB4Itm2IzoQnW5AI5T9a5RiGmcuaTa2pzFgLLcjADy76qe2/MrquYhTxWV5K4oQJkIKPltVOLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obOw1mEg+zpSL1w33O0dZu+ywLfBDkYGI2HpbBrwRVE=;
 b=Dve5Urz5xAi5Vn07Pgwxvu/nTihXrKrGKnJulN2nG/Q1cmB5Yx5tZQRlAm7DZzhB8TCA2QcllKWVGz69PERTQ0qB8lN3u/eLnJOuh6uz6qmGl91sC3irLiGFWXRXdXid7LxrSAnLAHGke0BXYsGfNUvz73yh5jeHxzjy4CbmGew=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15; Wed, 23 Sep 2020 03:44:35 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:44:35 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up _nvm_info
 structure
Thread-Index: AQHWh0qsJPcR21ZOaE6StK7aecFZaql1qPdQ
Date: Wed, 23 Sep 2020 03:44:35 +0000
Message-ID: <DM6PR11MB2890A4586C2860B8E6FEA271BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200910081605.2562950-1-sasha.neftin@intel.com>
In-Reply-To: <20200910081605.2562950-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f34b8074-dc2b-4191-4541-08d85f72fd6e
x-ms-traffictypediagnostic: DM6PR11MB4380:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4380A54E1DD26F98854406B5BC380@DM6PR11MB4380.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NXTES4XW0L2vOuk35K0hDwCBQcV6HxwhqxTlmimplPnyJqJWFK6OuvhCEJ/BxJHWJO2H3xRt5e3KdgfvkVQGJowA8zUBeHkKEFcQy4ZyeuQwxghAIaiFOJYwiJKirnygHuoBVUWXGNzulkkC9kqbjbBm2QVWxzctkoTBzG2eBKQZKyKJ7DvvMRA4tA6BLs0AvsyN0W5iLFMfCobNsPsmXSCtqqmY7QEWzVJ5d7kTJrN7eQnHnAOQ1QZiqV5kvrZZO7Le1c0M4mmYOgtuv5fkSZog/0OeydDNzgx4QCxBwtgmrt91HKRQWK9PGISCt+Mp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(366004)(136003)(5660300002)(8936002)(66946007)(478600001)(71200400001)(186003)(66476007)(64756008)(66556008)(8676002)(33656002)(66446008)(9686003)(4744005)(2906002)(86362001)(6506007)(83380400001)(76116006)(52536014)(316002)(110136005)(55016002)(7696005)(26005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: l0FoBVST9JI45WMDOPwjHBwpP4cJjJobE3gRRSwB5TBzrndpDvCsWkeqUuUdwG7rWRpYMQKzeHuh3uAB0Y6Yzi/rJPNoKsQesN5GUP1j7hqOh3iloyMDcY+NxehEMycLpHsxhej8aPd4tC/1Wz1E3Jf7xlQqwx2xceP3gGwrWIAHXT0fP5PXAaUi+bKxJu3Dqlt9ry4IMYvtj359kHWwUM2Wlw1gXL40nV08cXkJ33SuagVxoZ/d3R9yvhuUc6X0ck8FbwXDaFahZt31O6ZKRFbCgAKQdclArFlT9tqFe5OWgcWmd5SS9QbQSGuFAhn2++ymq3MLSaUaisqZIc0YHBsEAx1A4mR2/lHZNaWM/KakBS/uTufdQvRt+MTcFfM+lA25e8Mhtd6vKJuCF25GIfnud/nDfxIeLeSczwrbdNIGTFylIODDVV9qEN67xvuKvsmrWEScY9qojz0kpuVZaFIj+9g6hT1Z1hG7OgTPh6/a8HPSZeXjetr094VoYNfbkxAn14+gmJaJ+C8ZssbHxSr47uuQ5PlK5wMiL29kSQtgSSg/61J4kXhx3lHMyABWQ59OFaf0R5qKZy8Rk9ebW11DteAie6HzdQ2pVTMQjuOShLoDRnChw2IJLBIq79E94IkJfgBx+uQt3aHOnyDKMg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f34b8074-dc2b-4191-4541-08d85f72fd6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:44:35.4748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /zP8gFlVH4wMrhorUHjSnMhKOMafCiAD0ONUtKUEsImP1tNkCQhTUUu6CJjMK5wWaBuTOzZOhqk4PD/97WZZzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up _nvm_info
 structure
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
> Sent: Thursday, September 10, 2020 1:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up _nvm_info structure
> 
> flash_bank_size and flash_base_addr field not in use and can
> be removed from a _nvm_info structure
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_hw.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
