Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ACC206E16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:47:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A9CB920523;
	Wed, 24 Jun 2020 07:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jeCRSoTlTPtR; Wed, 24 Jun 2020 07:47:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7EC002051A;
	Wed, 24 Jun 2020 07:47:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 601DB1BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5BCF48614E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSlAZzTL0jSj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:47:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89CE785C28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:47:16 +0000 (UTC)
IronPort-SDR: sWYAITmMMYOG455dcWwYgJBGi+R6QdEVKGjyQ/YERn1QQF74L7FNu7UG0LYnn6lI5glloGycfa
 b+WFvPt+u1rQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="145875796"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="145875796"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:47:08 -0700
IronPort-SDR: w6wIdv6qPT5BKY30wjSbO+5zguip1r2ok+71D1oaKHKQ0fUzRHZfLb9LIYgfUVaWpqF56hUG6o
 IrjbNRol6M3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="423285912"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 24 Jun 2020 00:47:08 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:47:08 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX116.amr.corp.intel.com (10.22.240.14) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:47:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 24 Jun 2020 00:47:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fx2H4g7R+JPogQ8mAfMNos2UwvpDEID4j/dWq7bQ9whFwNd63kRVkg5IEYGQ4hrEHBsxorThCYMZpcRPZZaJu3ZDuLEx+G1iSddxYvacq4oWBMj+oGkM1Z0AhlewMAsu1h4j2HZ9/4A9MZ56Bvx+NyyCKj3cI1DG922Pjpvo8cqlQdhz2NTPP8+kXQjDhgTsP0Z73ycv91XoHXUYxQ7Dfgt1ZvG2m1Z9BlmdMy7anefiy/gXngJxElTBJl3uHXZLc3+3rxD0+ClmNEgNlotCwawZj7pBUiPRuO3quhA+1YpKbwVtH0Iad/3aGFQOipGWrY8F5HbpLN3/1QUDDtBiAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlV3O1O72rNUNYQk7YR0Yy6NjYAJQ1HP5rSGAJceHwE=;
 b=gYjN8YXa3ZusEbDEZ//ZIrpD3Yv0r2kVlLAuHCjNmhKAuA6DpI/dkeecwZDY/GUDiRAzJcTAlXKzVopZWCjt1NvAsumDVZjFTct3I+QpNZzFki+5yzIDF3pyqe8siPJi1uErUGo5Qb6rUWQcc8k0GnGFHhkCC0YieXc2FbY3MPciE9lVZ+RNu/Hma1deCXmWWq77+Y6MDMopV1H+DV4Lfb0YADzAez4w2sKcXlU/8qajVYSEtdRQilpbROXVXwVQUjkwp6JxjRnjyRxu8t9rARSfms1x7r6D9IqgOdv2Jy+ArlRwT9MOTWj3CEjms5HJhMLdchI5e6z0ChlHy8s2Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlV3O1O72rNUNYQk7YR0Yy6NjYAJQ1HP5rSGAJceHwE=;
 b=WrjduLiOI/CdmA7sD9sQJVjb5LJz7hLe87sKftOjImQZWHEHU6v5llZnZ1wL7FJNaxPOuXZItJwE3/IcHdPyJKqGyryEMRf+5MmZb9aOcHfQSO5pGnUComEYRDuyfS37yvSMddnOrJyozpSI5s28KYEBsNicH/llvlcsPcDQwoc=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.23; Wed, 24 Jun 2020 07:47:07 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:47:07 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 3/5] ice: support to get the VSI
 mapping
Thread-Index: AQHWSfqhWelV0IK5oU2X/PF2O09BeajnYlsg
Date: Wed, 24 Jun 2020 07:47:07 +0000
Message-ID: <DM6PR11MB39004B83CC96ABFB19803EE4F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624072939.9363-1-haiyue.wang@intel.com>
 <20200624072939.9363-4-haiyue.wang@intel.com>
In-Reply-To: <20200624072939.9363-4-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf40e166-01e7-4ae1-5737-08d81812cb81
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14529FDDA7F819ADA40C2B6CF8950@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: we/qnCRfAuUwp3Fml0UtFIbXqBVkPzseo2CoBTEmMcwS+fywI69upssqoIXSus+FjK57GMfbz/r5UDXi0uFoIDC5VYcUL6OQehavGdG4vw+Ol5Sql2drsGjaAC8Klfk7vRjt2i+A+n5LhBK7mP/D9IOcpjuRojVM1zwkh+AD6C6e9AMCaE5fA4TolqYQE7rVvM+GXAAZXG0VKPy7y7Bj6AAyDKpBxu14GQ9VBOyWeCho5wc4WRiknsDlEfoaW/u4zVJQJDoJTM03OArplDdeIxhdzQjc8Q3fNDCNv+YS2KOz1wo46WUewsvTRswSr0moWn9nEasgzapQq7DfKdmt6ukM0BQQs/oDCb54CnXmtJ/+RONEJz7xeh5si+VXalpcYFYUH3AlCWgbvDWNPLCl/JaZ4gmjfYAc4ZqpF4Ve9qW0ikJr2LRHmoDET36LO73NsKzeTdqvpyIGrURo9rTG0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(83380400001)(7696005)(186003)(26005)(66946007)(107886003)(55016002)(8676002)(33656002)(6506007)(8936002)(966005)(53546011)(4326008)(9686003)(86362001)(4744005)(5660300002)(76116006)(64756008)(52536014)(2906002)(66476007)(66556008)(66446008)(478600001)(110136005)(316002)(71200400001)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: NokhsghZTHMfFgCZA0pAhZWjt2u+oa5neYYBRZavcVYkzbbjzV8uy7CcXYPK4bSpNzIM9u+XupdZ5ySP3NnHyXeO7lUforg9ysRaK8N6xy8GAUB3yjGeJnR0DNHl2M+8YN3tI8np/aImRBoJXk/bnawKO/ZhJMHxgw4m5YodXES87wIIPphajpKBCO+fOMUnaP3Ox/EeeegjMf9GUiUMJ9MpT/qqsGLJFzzHI5d8RXa94K3eRg8wmEgogMeKzSTEHv81Glt27DVN5XvHRwCG26AKnGZmLFaDsIditTU2kLa9zoXMhhc8mjVi42hGojPy3/w+W90ynIRdTwMWbBaGQDFYpvrheTRfOrJwSVpwHWdiiqbazmlfJiF1dp8rj+Ff1Peaish1eEmUmlEcEhMyNZJZReGUMSVspLv+Vy0Dt/Edw4BUQbPHn4yJ+Eanw5TFsPf+etnczetXfew48oRR1hopNA1r5t5RcwGQXl1jc0t6hwold6Cxhz13TX1sxdiu
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bf40e166-01e7-4ae1-5737-08d81812cb81
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:47:07.4814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uNUNFk2q2itgjkjKeorHyxdKcMTZPMgRy1rosDdiVX9CRtHGUnBonmSNZyEbjpYX1ls1XykAmlCZ0jg2MnZmcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 3/5] ice: support to get the VSI
 mapping
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
Cc: "Xing, Beilei" <beilei.xing@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 3:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 3/5] ice: support to get the VSI mapping
> 
> The DCF needs the mapping information of the VF ID to logical hardware VSI ID,
> so that it can create the switch flow rules for other VFs.
> 
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 61 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 21 +++++++
>  2 files changed, 82 insertions(+)
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
