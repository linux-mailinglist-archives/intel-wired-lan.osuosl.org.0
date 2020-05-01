Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0235D1C206A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5A8F872CE;
	Fri,  1 May 2020 22:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z-SORQWq4zTx; Fri,  1 May 2020 22:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1937D873F0;
	Fri,  1 May 2020 22:12:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD01B1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B0E04871FA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eVb4ZFHYVJBf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:12:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 28D3C871C3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:12:19 +0000 (UTC)
IronPort-SDR: AEWbD+vP3Ga7AzIvjnwB3P5voZ4ObDD2LmCi1NBCvmzo1wdyueEL5tt3EIXdCLlThJ+0A/qYi6
 PmtafU58su9w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:12:18 -0700
IronPort-SDR: /isv7nyALVoGJvs1NFI8nCuUFhCIuA7bxnqWV28ovbqEJR9aVyoumKhNXJ7P7rhDkpkDtDlF0n
 XyyTrLDczxUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="433442501"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 01 May 2020 15:12:18 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:12:16 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:12:16 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.55) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 15:12:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hYzRlEnavMyHc7A3LEIj867rBPaIu10/UFx9R2YO7/DFDsfzpinpZHXf17N85he46yryMR7nto96dP69MiCSqICqLSZcy1sOLasbJyv5nTitWlYjjeIdI03HxwLz+/metTBdJTSyf6TZCbDO7/BnE0uO+85ikpfaT6iHR7G7xGQzY5i0t82qZkphDPKtv8QT/hlvU2Jr3pfLZ5JL6o8DqopghIArP7mvX03M627gv5kIT1bPzP28JMXDkFjIEg6eLRBsDcwZiSiqIcl5WgYhYX4oXUShINrAxYd1Y+WD7++XBe9pouPI2emOyV9fl7bv2qjxAfaHzwV0zudmVLrPGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XYDRIzV11rWWG3vallP4FXRrMHAH+/zNQLD0rgKUXQ=;
 b=ChIw9ifwFwblAHbIhMgMXp7azpqhjEjkq01Lw5j+o7/EXH45LvJfS8WiBpCrIBJov2bxiH+GbzlXBpEwJGFRPsTrVZxvutzvQuI4COVsA8aAKhOKSJSBIdkGVOErkPyq5ka50jGZS4Mxb0CiZKHEqPK4q2QJsy+zUqhmJITSGypcZUFbTYA/xbz/nirl/ehZ4cvW1zKzBeCteJiyJ0vWB4MHrkcNdfncj/S5BEHHU0DKISkxM6dbuiyO0BsP70u+uBKYe570UjuAiyADHjNdFvh8gJh2XfiqNfYUJyP1S3V+jgoGRWEgU0y2FGX3uItOWcfGv6nS8NoiB8pWlcTMQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+XYDRIzV11rWWG3vallP4FXRrMHAH+/zNQLD0rgKUXQ=;
 b=tWrpQS6IQ4xUzkCFE8LMYUeCLWviPTASlaSSV0rfPC9AIoTBqGtI5JmWFXkgi10Yzk+eAFvqKZ8ypZRFBgUtC93x4RC+pve6tahoR4Gsn0hY+MBUc+sK2uTfRKdHbw77In7ooe9+G+e4cmleW3RrYUb+G+Igwduhd8fJnOlsJVI=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3116.namprd11.prod.outlook.com (2603:10b6:5:6b::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.27; Fri, 1 May 2020 22:12:15 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:12:15 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 04/19] igc: Early return in
 igc_get_ethtool_nfc_entry()
Thread-Index: AQHWGnV1nhlONy9zTkOmEdQnLYiHIqiT1hzA
Date: Fri, 1 May 2020 22:12:15 +0000
Message-ID: <DM6PR11MB2890CF29579355F3F90320A1BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-5-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-5-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 3101c28d-5df0-421f-5506-08d7ee1cb4b3
x-ms-traffictypediagnostic: DM6PR11MB3116:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB31168C2E5B8623EAEE04BF55BCAB0@DM6PR11MB3116.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZWL5CFl1FfmDP3OM/6HB3C/fUEjON1op+Dhm5pKQhOb8Zjp6IvHKxw0eOJnFFSmqEHL762bMl5jv/Xn09+VLnahlgwdA/fYxgQtQlrxtnxr2/poCUR3cfmidDkQ4DTfceSh1YPx4/6zx9RNXZV0ARryFoQiDesS5k9OQlj7w7q4l9mGiiSyfPBkBeWut5uuK6wkoeBMVTiZV6KbtAVa6QLZrxN0HUBDc9h6S4nJSHNv0SX2s2fi0GVdxdr4BaFwIsjq3Ro9U6IwCIuGPKM1mYPiY5LMdgNIEib4+kpeGKzni0P5Qfp2Nx+Tx0YX8IGPmaZleszH6DO6Zpaeh0kfc/SswUfSEYH3NdXgO/B10a4Y2bIFXoet3OtLwpJA1be2D3HRwPJdUTTmPOPp2SOy5QPSYozYbPSGdpnDS9lWfIjWVo7O1yrQ3MBD1KSW7i8qj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39860400002)(346002)(136003)(366004)(66946007)(55016002)(4744005)(5660300002)(9686003)(110136005)(316002)(52536014)(66556008)(64756008)(66476007)(71200400001)(66446008)(478600001)(76116006)(86362001)(8936002)(7696005)(53546011)(186003)(2906002)(8676002)(33656002)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WGwCZ9efYheUbu7j9SsSvw4hnZ+gyZXUBMOTn9pTV89hMmtjZOel069ZtDlXCoOdS3oh5AL0bfVD8d7FxX7/OeHKFDwJhpjtcQp1EnTjchvGBwfRLaJV5zUJ7o9HTUBJ/gRewOOwItDGKWt5gchqwBKLdRJJomEp+M/1M81rQb9CL3Mbkw1Cs0ceyTlAO469tPCfsQJ466C/+WSUvxs7QLHB8upzDGSgpRHPkiTewL9yIeSj+h3q6SCkabCso+yigtORzn2lMyefI0YIUL5AgwT1Qb2lcZOyja8KjOjtqFuhNB80HgnUdu2n15jMKTBZ2IgQkphv9rRXiTjPqmU+WJs7lUbk4PabMc7NqMoyT+yu5ylgpPlN3MYskNWgzv1zpXZRPjlljj1vmV0l3g7qQ3uRGco17yTXhhd9MymeJ4nvUcmaF1sDWEzeB0o6+fDL9FlkKxV2bZlhGfSp+fgx2P7bQTVjh/WqCa+dkuve0xtfSgvKbZySHqmGTHIzGQ9jeaHyfglTq+WUIsTHol+XIIfzEpQnrpZdFoqF/NYYir/bMJTYsUIUycg+hYOAVsW92O1U32MLMPOgmCWkicutEwDnkmOl+GDBCWxuXPsn9pS8ykOuRtS7aHUi3Vd4CwRsRUiUje7kClq4gRsYSQezYLLHcQ6nmqN0vZltU3MkVcfDjpbwhCOYIhjklTAENe6HWwZVTSQeaquCmDr3tqYau9D0O8tSffsU5qWxxCWBeidBEPIX/jEIDBPfhi99E3YZF8JDRGKKj9upxrSV7v59C28jBApEq36gMtTUlVoMGR8wykSouNGJ/aQGZoMCTgHA
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3101c28d-5df0-421f-5506-08d7ee1cb4b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:12:15.3991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zUzp6SNYSiY3WWS1M/EfPTxcYGHbCKVBkxPzVaQwwpnNxHa2cxTMVFnuo6FK0NBBr5hATGnvvXGF+EdHsdFdqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 04/19] igc: Early return in
 igc_get_ethtool_nfc_entry()
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
> Subject: [Intel-wired-lan] [PATCH 04/19] igc: Early return in
> igc_get_ethtool_nfc_entry()
> 
> This patch re-writes the second half of igc_ethtool_get_nfc_entry() to
> follow the 'return early' pattern seen in other parts of the driver and
> removes some duplicate comments.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 58 ++++++++++----------
>  1 file changed, 28 insertions(+), 30 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
