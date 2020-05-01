Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F72A1C20DF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09DA087277;
	Fri,  1 May 2020 22:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PHEA4d7-bcNA; Fri,  1 May 2020 22:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDE478742D;
	Fri,  1 May 2020 22:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA8EA1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BB77B21511
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ubomh3+aJ5Ew for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:44:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 72CA520414
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:44:44 +0000 (UTC)
IronPort-SDR: ynlMgtteDR/5IMHLzHaSRGQ95sRZtgbpUBAohvJi5+8roOtQcNjddyiHVsCYYzAiBK98peGxjw
 k+3jdeelHwow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:44:43 -0700
IronPort-SDR: t7Dmt5aFeeLaRCV+1klbMVne0m0Nwk3eOOpzhhckczWUk+3AeY7c9osbXB5UYu2uGTggQFvCc2
 Heqd+rA+WcWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="368561936"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga001.fm.intel.com with ESMTP; 01 May 2020 15:44:41 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:44:40 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 15:44:40 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 15:44:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:44:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bUPuUfkKSPQT4iJjh+CySoqmf6fu17k0IgJvk06fBMwUbes7ScgWGXzAI5zHbwBeYvILiaQyIvqyeWbRRZWybn/ix8dOsDawwk6xjOC30+LpkTLrGQcGPef2Y+Cl4DzKrUl88iPEINnY2KyBPafUWOY1QdutRrPsPjOVLOvI0azTkysYY0zklF1/ZhJ1EGa3M45EhyKl8PDXknHcSNRBeaAiPvLJd8HufgLE2A2mYmeS/HikBOE3vH9btLZHF3VDbmM1QjpTaiNdXfjnHG/UtjwwOv8h9xgBvhVVi1Q3PKzYF5KsT2CE7nEvCJQavP7Uw2NWVeqvBkZq47xIRY0UkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3Alujy6TjkIVUdi2FZGQGmWO01mC/i+w4V7a6DAOaA=;
 b=ENAf/o0ZMNPh3yyhHQohNEbn9HUG7PX88fMCaDnFC4gOrfmolfsaVzlGE4z74Abx3gEldIKXTYKzvakfDsXoUlEI+d3i9gomQnzSiQY14NmTh0Y5tYbvSbgzSzEkYnVGQOUzj6goEjSaaKJB9K2zHf2kJoZo1ArGKylUl/Nk6hyAn9efmiPAZCVs8Pru3PD+Rx/wAUSv4ApzFYYf1e/9eotCQ+i3DCyfwmWqg7AtmYmfAVV/i4QS0UYYb+BtQH8/rbo2wZ9UAXL56gcmlCHXypGjEU0jb4S8Cy+a6YFgCSeuxV2knzU2gwYL6vzdFMkXNU+wXycC6ZqMigP0Qhm2tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3Alujy6TjkIVUdi2FZGQGmWO01mC/i+w4V7a6DAOaA=;
 b=ogSqcUGLyyBOccwAQXzCth1gnLrrBGS8OZPlh7MchuGu5Q9hhWYq4paFFw4TwcmanKwuKV62MUxTAEX5m1hVYDGdIebBeCw3wfJkvEKdtAkHvvrII21ouUssW/UgffbmBJBLqB4Wc4QBLCTqEh0RxV1kw+oX655lSbstJziaha8=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3241.namprd11.prod.outlook.com (2603:10b6:5:58::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:44:29 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:44:29 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 15/19] igc: Fix NFC rules leak when
 driver is unloaded
Thread-Index: AQHWGnV7rPxk9RJA9kGzBh9tLrLa/qiT3xXg
Date: Fri, 1 May 2020 22:44:29 +0000
Message-ID: <DM6PR11MB28908B3E17B3C551B4ED8F98BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-16-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-16-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7797c3ee-b9de-4d0a-ceec-08d7ee21354d
x-ms-traffictypediagnostic: DM6PR11MB3241:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3241C97E3C4A16A9D35CBC39BCAB0@DM6PR11MB3241.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8vw4wLeJ3XKeiixgbRFe+ZBYGRm3LgI3EJfVipM1giaaZVP7EBebkPO+sBBxKkR8Fyq9a5P+F//qphHznSmw/4h20Jrqz6HG+b+8s2ucLWf7VyH8lMDlY+eBMpSmKCfB0jvPmjWmS4iXvUAhkDBWjXjXH0AWw/S1/HlPR/O2dwL+OkYixh/xStD3CaxII/B4z0hH9cOJgtDYP0H6pbEMrPcjtaXMUNiEeeU5jG5+ivN7Mah493+wePvLgu7k64rEzxUIDoyJDqJGqqHajxlRQ631hTrsTKi2cz6zeXpt7WFNyF6irH06/Euhth0I3hCeC/IXMMADCcCwMNY6Xc7gj/o03V+HIhC+DaG6ikiAeVzzS2vvsRK4Mnq/xrFHgI9bfpYvn1cPqOIe2H3HKyU84PXWsqHdaQnMVnOEX4Y4l6Wp44EDdix8wRgh7tX8eiHP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(346002)(39860400002)(136003)(396003)(66556008)(66476007)(76116006)(6506007)(53546011)(26005)(33656002)(110136005)(316002)(186003)(52536014)(86362001)(8676002)(55016002)(66946007)(66446008)(9686003)(4744005)(478600001)(71200400001)(64756008)(5660300002)(2906002)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OWubNCo2w+bBCOagBnooyixqLokhKbT+ypAaa0I37KX8FekMiNcGD2wi6v+DE5d7U9aIwih5RalfjXTsmDraKMJSW3YRo3LqRSFPuyV8dwKmr9feqqzYImfTzywc6rlEhk4Nhz2kzexR5FUoDrdU9FGIqLA4hQ2Dppq+KcvX9+4VKKDbs1PA2jvj/bMgtRWI2h98HS5BbXASbn4gV93uvPF4a1tGiDvr7Z2tm/W71O4wahyKcXohyk7p3xbCHwTWpoooUcFj8+sKl30zI4phCrmBUwF5QD/w/nh9dDltevXZsQgaWCSm9kWWwHVYSs9fRoU1zeLT/IwEwk4rSgcwM3ne27ib7MXyAscVBWJS/OFt2D4J6vIE5gwVku7+61NWRu8z4QM1gf8piJ4SFBPRnQmNrcc+tWORokChIJV2bq7ti6OahiqaGYeQfNfTvuAiZnQiOvvkrfW9uW0VtHIh1USQ95zXGD+1mIoU/qdWYxARvcrqz6AEcYDJZwGw9XsY7LU1k6C5SYEVbt5yOb4gKiFrPRD83G755nT4VGyCcfPf61beANdXV5rwzBJ3E52bTWKQ0pxkJBHx7LTmT4tujeA4hp0PFFAihPuOmNbkZMeWQT/piP8sH/xhFSe+KRPxcPGAI+4Elb4Je3H2pTkacbyX5eBq1rK4GNX/i0VjwURHJ3MWJywQgNV23Hv9uYiam+qmhJAoTuKtV3Q7KO0MrYfr0CuJVjzzX7iH/wjWi0hoBEobDgL0nU3D0484nLG46qO3TqHJIqk4+6FfbRPHpEEM21Ggaq4hZ7wFBUUH5JR4iCV37wuF/zPYJ+/VGWhn
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7797c3ee-b9de-4d0a-ceec-08d7ee21354d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:44:29.1258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i5gUBEcIQdpRi+sqNB51+vTq1CmbmqZMjiApq1Xp84pAtK60IUJEgjIBUxRu5YEvs7xLKP2JTKILaWGvH7q5XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3241
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 15/19] igc: Fix NFC rules leak when
 driver is unloaded
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
> Andre Guedes
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 15/19] igc: Fix NFC rules leak when driver is
> unloaded
> 
> If we have RFC rules in adapter->nfc_rule_list when the IGC driver
> is unloaded, all rules are leaked. This patch fixes the issue by
> introducing the helper igc_flush_nfc_rules() and calling it in
> igc_remove(). It also updates igc_set_features() so is reuses the
> new helper instead of re-implementing it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 29 +++++++++++++----------
>  1 file changed, 16 insertions(+), 13 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
