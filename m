Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0981DF05A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 22:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D80920437;
	Fri, 22 May 2020 20:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iEQBBCvm67Gz; Fri, 22 May 2020 20:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C37F920502;
	Fri, 22 May 2020 20:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAA281BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB5F1204C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YC5Qk+Gm3qvD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 20:08:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id DED4620437
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:08:40 +0000 (UTC)
IronPort-SDR: HSAA84tg5c725iuUuGgn4uweU6dWSpr/CQFYMKcji+xyo9nt9I0Uxb72pnaFZP9JREobwlEGgy
 xFcer3KLKzkQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:08:40 -0700
IronPort-SDR: zQdI4aolCO76NbdqfjHqFHXt5sX98FiJzcE01h3HCHSH+1rDDge2uG82AToEJXWqDzta6+T/u+
 Na4HQRonZVRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="440973836"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2020 13:08:40 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:08:39 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX116.amr.corp.intel.com (10.22.240.14) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:08:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:08:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzDxTvwY3WWcQtjZ8ULGnSsK/yUlClqaLvG/rr+XV0oxHoeM5tICxYwRhRFScGWHFZwISYageeCk1StpoHOn05bqtZ4N+7/wqL5GeIjOkdwXdxJF2mTYxIBvpRFbl9nBFQDcJ67LTs5wrEtDLwNVtu5DnDv/DaYCTq/OhumkSZLSv57pPEfXWC/xnp8hbwTS7QpWoVQSuYc/zBlNuu4HEhghAT1yoeUeK+YMNEURprHcu5llHZVvkDfVCLyT5h2vpw9fUX7vyPGuGTAeCSdGjgfSNqePRsBc6FqHYhr+BgXcZ5pZNjV9Y/mEQVCnTj3de6yFvBpli+sZOYBNEBeEgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9vP8eoPD2DafYx5jW/qbpAp5u26BZbKkyJbviEgFX88=;
 b=k5Ih69kePiQXeWoc2aAVdtLNkGbLkez5YjaytOr4UbX47UvwHGsieg8Y1mQQHy3JKVtbyTXes32qTyhHOMx1A9aI/5Jiy4HwsqB/PW46G1HzaqlB63l40wq2NFab7dmFQ5yjyzko6dwwe7Y3HW2d5rtt+IxM1MC18NQYgPZgOzOToMxiRcXQuFCfc+iwL21aWQcvEQy4ZZg4HpDxrM4OTXu7x1ajSCJY3dJCItD1+E85sasa1KS8BnsAB6IfuuX9wSjWrt6oOeS0j3SvHMa3hb8clvosMOUpDXIL3g1w9wvWGDCl3c1lZrZZLjf0JOb02cG68bbHrXZvc8Sp48UYLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9vP8eoPD2DafYx5jW/qbpAp5u26BZbKkyJbviEgFX88=;
 b=MNTANxZdnCEx3Zu7O2xDYiijfeWc7eVEriQoiEWDxbVweSP1cYKw+ll2zqRIuz1T+NUEpKzH6EhSVlnlfSHqoe63V7C/AvODS2cAjwmVjZC8eK1JFBhbPguLvGYvHXlFqGXrzx5sa0x2a57R0mWASaNhhUDyptwiut4DjeOXUGc=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1242.namprd11.prod.outlook.com (2603:10b6:3:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 20:08:38 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 20:08:38 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 13/15] ice: Fix memory leak
Thread-Index: AQHWKxqMngvrvMhOUEicAn7Ggz7xUqi0k0Zg
Date: Fri, 22 May 2020 20:08:38 +0000
Message-ID: <DM5PR11MB1659A5A1CD980ED920B0307C8CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea0cc656-abdb-4166-dc00-08d7fe8bea6a
x-ms-traffictypediagnostic: DM5PR11MB1242:
x-microsoft-antispam-prvs: <DM5PR11MB12425A063D65140A156D6A8F8CB40@DM5PR11MB1242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4O3jq/AmrjgDhq1fwkk1tKflA1Vk2a8bjY17TDJ/686G+9L+NeFDjakbrdNZeJ3U6UlYifD67//ETALnH3yT0U8c/mMBwoeXgQt+xxMl7c0k9b1Z/fbH+wyO7+GlnhMTs/sr2bTkc9Ux7DQ1X0W0wYj3evtXKzulHxGqpHauDCm/T+YDe3el1iSKZlDPQNdX+E4ZWwxokxNN0u0lIqUu1iGOaNYlppCRUU/o616jTxGXaryz8UdEvFYGdF341x3gJTm4E4BO6TbghFxYpNttLzSXA6S3AK/jwMQ+0BTRi52pHNnI8YPaMdZHpbnjS4oD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(366004)(39860400002)(376002)(7696005)(71200400001)(8676002)(64756008)(66476007)(66556008)(6916009)(53546011)(86362001)(66946007)(66446008)(52536014)(5660300002)(186003)(76116006)(2906002)(6506007)(26005)(478600001)(4744005)(316002)(9686003)(33656002)(8936002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: qZU63f668pe9Gvp+X2KDhIll59TJc1+kyPo68uduamoVkfLicioUWhkYYAXDvIEXINw3rbiECrsjmYGl96LFwR8gWji4Zx7xquRXllZ0R9kGUdFf8PvAs1wTvNwoGMDSBbw+Dc+FaNoqI2p00oALIWFtXlCrDVz2J6AexBKlDgF+UYwybGd8LH9kSFky4WeNhWbFbNYnOMlAJkftJMAZ6if99EXPQNKcNGsWwXgm9gGg4o9oi0Q8lKBAP9Ir8G85P/n031uiqAaBblmRZmTZY8x1dc1VCezBPlhRruf7WjoDX7Gj1EjJUnwIi9wCto6lnBOqO0RuvRBG13vxv6AznBkfxJI0nNhjxvCEDEwpMre1WUEVsPyEBQvwWI2DK0DjoVps/BzrcKd0O83ncEtGA2h2jfajKxfn+z9bQ9UZmvTeGUUI9G1GD9r4sRg85dUrd8lBrBqAK4KQz+brPb2ucCgMB2W3N5UB3TVcq+1SkjtzfZg/kD7iunU3X4bj27Q/
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ea0cc656-abdb-4166-dc00-08d7fe8bea6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 20:08:38.1885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2KTQEljvikI/oZhwu8UNNA1kySt+RIGVbvJl+lEpMX0xgyMx++PNCh+cpwMn20M7zivSmtAxvx1jJGlWqT+o+QZ7tM0XWmvp9WRIEskf8CE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 13/15] ice: Fix memory leak
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 13/15] ice: Fix memory leak
> 
> From: Surabhi Boob <surabhi.boob@intel.com>
> 
> Handle memory leak on filter management initialization failure.
> 
> Signed-off-by: Surabhi Boob <surabhi.boob@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
