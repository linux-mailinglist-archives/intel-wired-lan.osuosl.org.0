Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD8E1B6610
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 23:17:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 993C086DE7;
	Thu, 23 Apr 2020 21:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IWieiU99_iWZ; Thu, 23 Apr 2020 21:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3892F86DF8;
	Thu, 23 Apr 2020 21:17:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A53D41BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9797423492
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id su2ck-o0IFPL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 21:17:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 8996B227C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:17:10 +0000 (UTC)
IronPort-SDR: ZacCyb76dLndChPgWTalkUL8F9Mzn1NhOfYRMZ9x/6VxD0vo/db6/b2Cqn9o/lKFuzLd8RZ+49
 OnUuea+fIKpA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 14:17:09 -0700
IronPort-SDR: nifM7aZvnrdfjVM0Fr7lUs1GJaqtM2S7IW/FQn0nYP/oJrQWnWrzX0+3qVTsYWcFqsgl7jND52
 QwvhQJ7tp/Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,309,1583222400"; d="scan'208";a="247859377"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga008.fm.intel.com with ESMTP; 23 Apr 2020 14:17:09 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:17:09 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX152.amr.corp.intel.com (10.22.226.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:17:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:17:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jywbAFEK6ACLVZJ6iBqg4+3Toj38e1IvUnQScFlCj9B/f4OjutOj0ePiJyxFNy6EJRRFbQa5bcgjQjq4bazSs8IEaHHdX2PmZEZFd/aLOz5CC/uSTIuLr8bN7O6B0bO6LfHQDtgL7olvwDJnjVplrEX4p78JoYySYLcCFo+nINdT6YkPbWwGAFQrqI4WHR7DInO6zNozr6MymhVGl5myA0YKNR3+L3vfGSuzHWTw8948SCsSGmQauFprBikEbK5aFuCBttaHZzSiYzR6uhLFpbQ8yIQC+ELZ2SXy6zDWzvEZSvqefUN/p0Gba997O80cCfzTrIwyoxDcarK5ueojEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaLJ1/+M76Y8ob3YQFhsRDRTq5lkEkSKpQd0DshXM8A=;
 b=bR0Tb2hNWLoF8RzprTgsECsb3nf4q0hv0WjeQBd1NcTthclKFtilEmSwleihY6NsPiT0Vkohznimg2OXSiGYiyLzYAW/dKkTbL8VIrK7qDeqMV9SVuNTUczxwvnRPgAXo1NBVB30Vdn2qtc5O0ljpu546YKShdQST4rZKVghtbOn6jTc7lZw1DDPQuTO6X96w7iLaXtqu+oU4YPHoBim80YB7YdQYmEm9tQjURYqcq8oOIZSyYfnb9eurrclX6unfFQVoutnl9+hDaai5ywzH3OCNbXU0IaJULcPWxTeRqMqkHVFm2iQADXBJodBLWxPQ5OluoNxQEeSNjdGbJ8WZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AaLJ1/+M76Y8ob3YQFhsRDRTq5lkEkSKpQd0DshXM8A=;
 b=dUtjM+qzACZ2jNLe2ulUWmIo0vKMH6KpQPJyAuyc/lSeM5xkvvoaZHtZaWv60RfPU3/U22umSaxtbt9I+ePrmou5z13/4s+u20J2RKCiHPpcNKCe15U2SXXeIfimVN+5KZjonPk28ejDGbJvhLPBcTM3aQS/FUnsWMSVIhMnu6w=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4028.namprd11.prod.outlook.com (2603:10b6:5:195::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 23 Apr 2020 21:17:07 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 21:17:07 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/4] igc: Remove mac_table from
 igc_adapter
Thread-Index: AQHWD5gulF5M7ZJ2lku8cKtY5duxt6iHSaXQ
Date: Thu, 23 Apr 2020 21:17:07 +0000
Message-ID: <DM6PR11MB2890B7461B339060D83D50AEBCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
 <20200411002834.13916-3-andre.guedes@intel.com>
In-Reply-To: <20200411002834.13916-3-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad487345-d0e6-49db-b87b-08d7e7cbaddb
x-ms-traffictypediagnostic: DM6PR11MB4028:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB402811BB1EA73262F9B82B60BCD30@DM6PR11MB4028.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(366004)(396003)(136003)(376002)(5660300002)(316002)(110136005)(76116006)(71200400001)(6506007)(478600001)(53546011)(64756008)(66556008)(2906002)(186003)(81156014)(4744005)(9686003)(66476007)(8936002)(66446008)(26005)(55016002)(7696005)(33656002)(8676002)(86362001)(52536014)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pfdecdRAh+fFD5YKHtLaed+oU4Rtkv6iWAREu6uiED3lOVYvWI3aPpyIMKwsAYHe4fHMUnw7hkJaJrPuxbDlKgpVR6684FLXC7vcp5Ck+dVEJ3uJCMluNv/vHfntaK+ehanE88jOGY/ndN11AvTxnJcsqzWl8lWymIbgbmfmTvsICtdl+hDP4OM5+vzN3Z+YVMjFifnu9pNw7QUJbq78podr1q0JbFFfXjPX60zjT9KvIKkyO2/sim96Xf+ZQrHkN/h8X7HoDrL630Vq2kxLKgq0gXA+oftHHXRoE/yDJqSYq1v+/X4sCdnqiQWThPHV4G2WAhmpQJlrpNgq7GrXgB8U97jrmUCgJ8+d/khW8LuTEqQfrgI5H+krKJ5nZc+I9uv74OzkeENDvHZIcjqZnpo/SeVvDC+YtAWjNsqEMcAXTXTEVnuSWQwBfe+REPT5
x-ms-exchange-antispam-messagedata: hEIOR4tB+BMiklSzWUUQuh5PWl6Fd+YqmC4TrDsRePmZhb5E48EuO6G7IGxzPVjpIr2qFEkXqeMkS2KcKIBFt7ZJtvN9iwL5e6rLcPQEHtzCJMP2iGP1LvLpoWmRsQ7uF9dRRzjKbi8E74DedooguQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ad487345-d0e6-49db-b87b-08d7e7cbaddb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 21:17:07.6670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QbUGIybYw+V03E3GGANiMy2PF9vqT+H2W8b4eKl3ZcU99oI0FjTTZn0zkjk0ydd7kDdKno4NhZWiHIJYimY9Hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4028
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/4] igc: Remove mac_table from
 igc_adapter
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
> Sent: Friday, April 10, 2020 5:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/4] igc: Remove mac_table from
> igc_adapter
> 
> In igc_adapter we keep a sort of shadow copy of RAL and RAH registers.
> There is not much benefit in keeping it, at the cost of maintainability,
> since adding/removing MAC address filters is not hot path, and we
> already keep filters information in adapter->nfc_filter_list for cleanup
> and restoration purposes.
> 
> So in order to simplify the MAC address filtering code and prepare it
> for source address support, this patch removes the mac_table from
> igc_adapter.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         | 11 ----
>  drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 57 +++++++-------------
>  3 files changed, 21 insertions(+), 48 deletions(-)
Tested-by: Aaron Brown <aaron .f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
