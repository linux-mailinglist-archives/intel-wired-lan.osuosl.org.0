Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EF133684A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 01:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0CF083FA2;
	Thu, 11 Mar 2021 00:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIhdmKj_b5Rt; Thu, 11 Mar 2021 00:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE64B83F92;
	Thu, 11 Mar 2021 00:02:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36E0A1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2469642FFC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJs6lIB9yRJB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 00:02:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16CF542FEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:02:37 +0000 (UTC)
IronPort-SDR: g2OX+rZVDtha+2GgQkosSBxzfF2LZKuiCdPzc7ucDTQ/VXQdRDlHKr1mc2XJ6MfMzzypETo1Q7
 LSKY1hvqN9JA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="188684683"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="188684683"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 16:02:36 -0800
IronPort-SDR: M4farcAuA40QlSRPmmtGrJwko9987ObVPQAZnGw6gSyUkFL9SRDFmiqEZ3j411sEXSVqGwIKMc
 oAALOCkFv74A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="431407001"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 10 Mar 2021 16:02:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 16:02:35 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 16:02:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 16:02:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UJoFlxqNzVbZn5Af1R1lNYUAVJ4G7Wh8PbP2FxP1CZN/vYjxfgNtqQp9ZQOdcqNW+VL5EXe0gFkeMmKa0pVHIlLIWTa8xQ/FV1FVcQDVBkyJCGe7qT4NpmccAqpu6f/bf2C7zQeREUwsLXU9GIJwf9mhyDguVE+7czMwMS8hbvrk/fodyxj+KxqCibTr/KDtTcTNWHe7E2MWNrHqgHOzuahsjNDjL24M2G42ZxkeqDCknScRKADMutX7clQxChVjgKLePkc/faUjVLYsZHWO0mpxReL4PIof5XaCMgvRyEYlaTyDmu2gNS0KPmDVZwheNIQme2ZW87NInltfBi+ICA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I57YffoM+6vPoX0zdgvPc2UyzKg5kvrlPZ3fVe1tES4=;
 b=deoP3AQTaKSlgdi2VucXsoHMkJnOwN2Du2GvPUFxW1zCaDiM8TBbS8FzwULDlw3XmWF/M4q10npehidZE1UWXrZRCafX9jVlsIrmTSl6RTnoy++416ccYPeENzXJFktGW2DGT15BXy9iSe1MJd6xvKe3eQZZBC22PF4Wouxg/h89JmON21yy9g2t0vlN4JpYmDb3a5d967QrbPF31eRfVOq/GTQLQ1ONrmLO7r75+M238NSn8R/ydXKydlQaMsvH2iJntMegTX590TsyH06oUPuzhxdLpJDSdOV7pJMYNyt0IQLRB/lNiPATKJnEcSXGXGBXQQIBi9YvLwATpMiM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I57YffoM+6vPoX0zdgvPc2UyzKg5kvrlPZ3fVe1tES4=;
 b=YVt3G0UwUGBixCL2/o5nxV9xR+3px/fBmX1tpMfArOzJJIMWOLOCQ1irq78btI92+02wzd76xclT0uo1jE8LYQXqtNEkcAqVnY5jDZ8m/IrxLE6XzhxVoGc3VD/P4dflm14BOM9Q7coKg6fn+nY14kCalADoj4l5IAOqv6ijn/I=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1598.namprd11.prod.outlook.com (2603:10b6:301:c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.26; Thu, 11 Mar
 2021 00:02:34 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 00:02:34 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 05/14] ice: Update to use package
 info from ice segment
Thread-Index: AQHXD5FEFVS+yYvs102VJWuqsLixw6p99GVQ
Date: Thu, 11 Mar 2021 00:02:34 +0000
Message-ID: <CO1PR11MB51057CFF8FF377AD5CB890A1FA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 083b291d-e2d3-44ba-bf49-08d8e420f93f
x-ms-traffictypediagnostic: MWHPR11MB1598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1598B8E02D027F6000E2F5E6FA909@MWHPR11MB1598.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n1HyxSA+2xyCpkPD1n/h/vucb1nJfTYdFJWn9dgtG1eosHXF8zZWgItaMKfTCrW4mtahwa679fLMJ282vUny4brvaRK6LmyDE+GWO8OdvskL3CiV7bVZY/bFxha/cRCbKFfwAUlOnYHJM6179WZlauKZ0C+5nknPfkUrWzj7JJduaQ7y+A96d3nQ/CfnUOWdD62Wjruictlfee++xzoS4lMTsbOEPZA99n7ITjoYYdNRgLA0730vq7w7ub1BiwhnYrCNvPTOyamOGxAO+j7OgcuK5d0tW3/AoTOSDRKJre1b1OhXAbzGVUolDjhVATG+JloW/QreBoq3SudhaKk6mk6OLoOq6qNMkbp2xkmlXL9RcxR/TmCZNddpbI0HfxsTDk10B79leNt9jsRg81i8X0uBdelNKnIHYY0MIDBmP9znqmZt2iH7fehpNOgY37J05vMAw4dU2FICKntt+OAyFIwsfxDaM1mYjkGLFEU7isagCFTWCEjsL7yNOmtlgBXKRj45tpIp6VqQv2LdY0T3BA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(396003)(376002)(136003)(39860400002)(66476007)(186003)(66946007)(66556008)(15650500001)(8936002)(64756008)(2906002)(76116006)(110136005)(26005)(7696005)(66446008)(71200400001)(53546011)(83380400001)(6506007)(478600001)(86362001)(5660300002)(8676002)(9686003)(55016002)(33656002)(52536014)(316002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?FM9sIt+Y4B7mwt05ER5qY5MbuvZQQd8/WiNyg+m5bCLpU+aGoLBTJIA3HK6I?=
 =?us-ascii?Q?GcNY4Gm+p1kY4Pg8hgZNPI3yr6DCBnjQ7yo6RV8WY75JAatc/ugWL7DtIS/Q?=
 =?us-ascii?Q?R8LsATZRRikMWkhl3+C9/wyIxtbxPXx5MWcIAr8slg2ysqExfqiHxqchRwKP?=
 =?us-ascii?Q?D2O1qZ/2nkgCPmET6o/eGqjb2YLqVQ4edhFMYR+XuCwgib9NlAUm6iiv18oA?=
 =?us-ascii?Q?YnrL2ncSreNPHMMYNvRLiW26vyQPJvq7RegAeDVZif67x4ZXIOFjlxkLCArG?=
 =?us-ascii?Q?b02h+q56eIeawdZ8nCJMsT0MKe+LjPtJhlMWsYp8VUARakqQNT4AJk6vhVJQ?=
 =?us-ascii?Q?JLa/iNlbL26u1iX287NQjTMULmfiaV19ikAW9zIe859ax9SsemS9D2R5z8xs?=
 =?us-ascii?Q?RTM0gnIaWBvFZUv09Xxs7Ae7kkeG+EbO7Ql+mfY7tSvPYlWkeE7f4ZiJly/x?=
 =?us-ascii?Q?i/zBiHDWqPMFKKGjzUYY7iY2Y9Wc2sJxVIR5D/5HOA5SiG+9oZgKCobHuYfM?=
 =?us-ascii?Q?txf4TJafSANInOZqUOMocEPMe9Uz2rPWXf5+DfuCo0IwrCIaJGpMpIuNyaxh?=
 =?us-ascii?Q?ODexQnMjuAM2KWepm1lrLkD2GtCS35klq6jHXfuXsZuyaWJyh/4z+/UqAS8P?=
 =?us-ascii?Q?JEX2Kt9FV2UmsgLWct9anlg85yeBhpealpHdMRs8JgsY2Fq8oDgmVQa8c9OI?=
 =?us-ascii?Q?MiJWF/Kbx6X3F3OGLAc/BbAreZpma3/VycYqQkYOUMLojitbpNHgenWicK5W?=
 =?us-ascii?Q?d2u4Ab+zcNizW5FQY1rXBuf65YrWyIv/s9GKvqCIfJzOiehGDuk9XaWgr1yC?=
 =?us-ascii?Q?S9XX2azsVm19EINqazZvNYih01dHRKWe2p51QWWMmban3sRJppw3ynGEneHW?=
 =?us-ascii?Q?BvPFQFnp1OKPp/NtqnZ7BeK7csPV36PKY5PFemghVQIZcUAX1UKYICs+N6QT?=
 =?us-ascii?Q?aaUP1kb3yj8DJjRgXyWWdi1Xsf25fLGQjcWroWTZiiUAjitwVsqqlfGhOyYe?=
 =?us-ascii?Q?HcPaHkkBrQNohx+RPuz06K1sDA2PRe7oaXV/6vkr8096SAUkyH7lQlPrRoU6?=
 =?us-ascii?Q?prXZfi8IyLk3jZDaC495SNQIUFNEyRlc2fego9Pw+e/cSxNLF9bvaspia9cN?=
 =?us-ascii?Q?0u7d93gQGg13wQmlJWVXjb3V1kjPSZigJrF/UR++zxBv8M1C7WNM+lBTDC3s?=
 =?us-ascii?Q?xS4E6nDSYO+i53sxR/mpDjVZpRFtLBbH3pR382rsaWprgTfekZhaL2otOWc6?=
 =?us-ascii?Q?wSckAxBEi8wI+RJlPie3iltKf7rt6cqRZBpg6BB3vqy/cqrYbjS7gj8cQdda?=
 =?us-ascii?Q?5OrJp4LtmAsJCBdCel2saER4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 083b291d-e2d3-44ba-bf49-08d8e420f93f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 00:02:34.3829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wtLpO7pq22mS9Ht8jOZ8U3Etird8WvgtQivIz/6LPcLCeTsVTMBtEg6PjfAv5S0YgmJaKTw2k+5M1omEmtkbxMxNu981pWxK0Z2OQ80WJX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 05/14] ice: Update to use package
 info from ice segment
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
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 05/14] ice: Update to use package info
> from ice segment
> 
> From: Dan Nowlin <dan.nowlin@intel.com>
> 
> There are two package versions in the package binary. Today, these two
> version numbers are the same. However, in the future that may change.
> 
> Update code to use the package info from the ice segment metadata
> section, which is the package information that is actually downloaded to the
> firmware during the download package process.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 40 ++++++++++---------
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  9 +++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |  8 ++--
>  4 files changed, 36 insertions(+), 22 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
