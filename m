Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D61A358C25
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 20:27:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BDC084D25;
	Thu,  8 Apr 2021 18:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j0LhLwr2ZDCD; Thu,  8 Apr 2021 18:27:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14A1984D0E;
	Thu,  8 Apr 2021 18:27:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 781301BF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 18:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6381460713
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 18:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXJR9QD8IIUK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 18:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44190606C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 18:27:22 +0000 (UTC)
IronPort-SDR: rtKoRg6tqDXs0s243OHz10BRzAeqY/83qgdtQ/xRk2SyK2UVlw6D/tPXhbYFJUEkh67lsqxrFe
 FJ0nq9bML/cg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="254942371"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="254942371"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 11:27:20 -0700
IronPort-SDR: G2arA5n5S7ONlAnBkJW4EW8eFdrPfkvsnGEToWl/yrrTlMQsJjV3PvXaN3riBz6Y+8poor05hz
 uOAdqPREQqUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="530698951"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 08 Apr 2021 11:27:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 11:27:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 11:27:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 11:27:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LaMxgEsNM+lyF1cq34029dX8MXW9nKswjI3RRDNsxqZNNbjEyE4p462OgQztlj35t7KEr+s31HX0CWf5oXz1HqObX8toGNm5KvJnv3vTV43J7jKewOAJHwazwaPbj6BYMlCcfZUaVmzeayOCtl8oNaw1iAgYDVT2InC0/ceuoB+uoeXc5xiNZtvqIWL3Pq+NUS/u6aUnYgJZUQxkSIjZC74BgaKRd35uqDq0HEG2DssFRxSa8gdALuGt6/ElTB3jIYzHtVA1Zy33VvR5vlJe+93uyVmXSoP+ga9UPxRSOKKA/gUsikMgnvcaTG1H8QSk+42rGXB8dcl3WJqr3cwQMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGgbeJvhfQHKsh5ieAQMkIM2iHuURq4MjMZ2fh+v7Yo=;
 b=JwkvqL1ZOx0V2Lap56kHeYm6K1GeablsD7Mu2xz+gE74AQ9XI1EK1yLfdm7qJo/squqseFZgJQs1BdfBxrfdWXrHEZKUoxwN+acnQLLCt84WKiJcYfbSUUl7Y5hpZsvhn4uPTTAWlY33OvUDTQWHmL/QCOc0GKSbmw0wU2plONAZQOfHi980hBuGoi02MzpLusvoXFJAKC8BgHg9pti/Yh9RlWj1nxFLqOt4/gCKI2Hmnr5yRknGb1+oR1khX5stdir+uH+ayy3X+6aAApERKiPrALjno8h7+v4Jx4an0LtnrV3UI7NR8QiqyjF1rXgm/zxKfm7zX7q6ngdtBwhhHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGgbeJvhfQHKsh5ieAQMkIM2iHuURq4MjMZ2fh+v7Yo=;
 b=JlLoLF2liuwrSvzOwK00svhnBtpImEmZPnjIqXRubhpYROz5jXByZCcJCoLdlsgWyR5RGE/mDF3kQ13Px3vN3whuKMp7B1PzH5hAMskA//tr4c1icAA7w9orHYvqhrp6FR6bpaN3aIPeENXk1k4A5/DaXwfnS2vB13rxnZl0pXQ=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4778.namprd11.prod.outlook.com (2603:10b6:806:119::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16; Thu, 8 Apr
 2021 18:27:18 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4020.017; Thu, 8 Apr 2021
 18:27:18 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix the restart
 auto-negotiation after FEC modified
Thread-Index: AQHXLHIV4XeEtIYrqEuOkQAoCLdbGqqq8LeA
Date: Thu, 8 Apr 2021 18:27:18 +0000
Message-ID: <90008f14d0761219b77c3d18f7543c713d313759.camel@intel.com>
References: <20210408122310.32752-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210408122310.32752-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bdd1465-2ca7-42d3-0963-08d8fabbf164
x-ms-traffictypediagnostic: SA2PR11MB4778:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4778DF387D41C2EEFD596FF9C6749@SA2PR11MB4778.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yM+bcepCTLsK2oPUQi6kQQDiTEjzqN05n91yqbAE/nBvWDd6Rx1XAaP7Ipvr6D0VzxB0ODFjz8S+F0xaqvXEHyS105Q6ELERRVPy6osxVO8cDnjh8X9WqPwSyWMmvEjVL4T5/XaPl59S/BqQsMLp/eafXkIFSy/1J2hm1c64DWICmsAXlQONWn9oFfsipNGkp+d3YYDh+RdT3Ic5U6KvP5mcCN6GTCM/MF/Sa9o5vW2CM9n0MpCPfPTiIUuiESZ839ZPawYyQJxtN/Y9YIRsanyu097WOPck9scn6jfuu7nOjGBjyxDn6ZBca7x9bOhgHl3BoO/TK5M9m0S8KdAEzbywyAyaVjGXsAsiPWPu7dOtcV+SbCk4qH9euz+DRGnNCD4SFmOG0V3Za/vejdSejAwZEc6+u7iNwqFZ4fjzNls31RBPxfKrDshyJ5/DkFBU0XVeqOLsx0lNL6oC9yHjkPRuvvdYQBn6tejh4d6cy1WLLyUmNcyOCdTrc/VB2BRWEuMsBSw2qkI7QwAlrJXrFzUnXvgCx9Ltc/HsLMSKHt5KMTQ0o4l5oNisajaismwyNvFqWU4VNLJTYSfMQELCKn7fMlYVuFraSAaTox12Th8Mx3cPZ4VHNNKG3hpxWI1e+R8qQ6WCAl6mJkKpQLInBMAwte8Hz3QtgXiI2DVRQwigSCvGETK2e4gnsuRfYB0m
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(346002)(376002)(366004)(39860400002)(8936002)(2906002)(91956017)(4744005)(71200400001)(6486002)(66556008)(38100700001)(64756008)(66446008)(6506007)(26005)(66476007)(6512007)(76116006)(4326008)(66946007)(107886003)(36756003)(8676002)(2616005)(5660300002)(186003)(6636002)(86362001)(478600001)(110136005)(316002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: vfNph9Ed+UC6gV2sGdH5GD5bscYNDKy5YnxJNG1B7NBUWGEN2MggOROoUYooyBBxmU8Z44HEkglRpuH+A4NShfDq/+WeoLES9/yHcGxaSk08BoXUZ9bkKObGRQc8ECgpwGSCfH4U29KP3vOsTlERMx1/Fz6dTLx/opMUr/GGkyG4SSqwj100RVf4wiHAiWA7ZYcBi9F3gBAtuh0smlveYYLypNnU642u/JAQaFqCc9h3ywmixyTWsilnGLClBTBIVo1o1GM1BBCIUHjw8BQdOU8KubgP5oY9gsw/jPgiuGWiwR4oStMhFCVIc3ZrRtaGNbNS1JLmp67ECZohJuqTEiS2nJT9pU//BgV6V2lkNZw/063MTRrElDJBJ81hu/OXZ9Co9VoPo2LllhxRNGgrNOw3qJ9Szx+48bdxn5Gdgn3SldEk/Y9uIypsyst3ZQV6YkPq8iEnURuU+gKu/nXd73zh2/tnWH/Tx4l5VVREtPN7jHUxABnWQetq3e7JktYedkJifhle1fFQyRc1iLOCUAXWiDJReLBbLRIt5a4HjFI+aKa8HfYUL05Tfqjnxnn/scJLzrs0OHKyZkZH/PQUNm7NOiG8kjsRoXsbR5OGXSlg4bTGAnddPzd3Hw074z8KxOR/oLLpUV3Hljk/i5BjcciDIvvoNhttIjQCqiBr+1080YLvG7JcWbXEfLKvD/FOvkkfY4c0iLuPXIvu2o3k2i1tx+6qcQDVkBMSDaziRnII31OKp4Pj4XKtzRg6LLMA
Content-ID: <7B8CDA00A872E54092DEFBE866FEC79C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bdd1465-2ca7-42d3-0963-08d8fabbf164
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 18:27:18.7169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M0KgGilKltOKni0y7hwOoE3pa2TYrdvrFkfF0vPDkvtfF8/ccShXRWQlJFE2QPZDOqIO3bqeGU9et8pUoqRVCQr1i4SwMeDMvX/oK+uAT+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4778
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix the restart
 auto-negotiation after FEC modified
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-04-08 at 12:23 +0000, Mateusz Palczewski wrote:
> From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> 
> When FEC mode was changed the link didn't know it because
> the link was not reset and new parameters were not negotiated.
> Set a flag 'I40E_AQ_PHY_ENABLE_ATOMIC_LINK' in 'abilities'
> to restart the link and make it run with the new settings.
> 
> Fixes: 1d96340196f1 ("Add support FEC configuration for Fortville
> 25G")

The fixes is incorrect, it should match exactly don't drop anything.

Fixes: 1d96340196f1 ("i40e: Add support FEC configuration for Fortville
25G")

Please fix this up and resend.

> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
