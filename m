Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BC01C9CA9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 May 2020 22:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34D7A88A6D;
	Thu,  7 May 2020 20:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjUkkmzWHFZt; Thu,  7 May 2020 20:50:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 247DE88A67;
	Thu,  7 May 2020 20:50:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D88E31BF402
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D08C08976B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2zndXWgdBJ0w for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 20:50:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA5B989769
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:50:46 +0000 (UTC)
IronPort-SDR: CUaImplxY0h3N7wykkFoSWWyBLZkh5rgddZYIte2SQelil/5s8OIsiSOR8Ie59t3joM0SnnmiB
 zL0hgvB8wDzQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 13:50:46 -0700
IronPort-SDR: dIFq/VPcxdrnZzIKbyYc/9wSfJPe7PEX5069AgQlQxrUW6QsR+lOflu9DgXLwkMvqyNrLV6q9y
 0QHd0SK+e5QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="260653429"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga003.jf.intel.com with ESMTP; 07 May 2020 13:50:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 13:50:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 May 2020 13:50:44 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 7 May 2020 13:50:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 13:50:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mK2PcTESk4Ao0f+cVDlFvzVzog8P3E8wc+qqEcI466m74fTrI5l4Gjh1EOwQ1FoqK+t99C1lUV7wh9cuCJWv8OCOtyvLYW18lpR46lcP1ap2i5zrH9yL/uQhojCVTAxmvTNRn0l/YRse/5oMlsZ7FiZgocx8bBbU7Bk34M0sUeosvVxtf/RrS9m/Pj7CZ6qDHugwU/QfwtsTqqr7hYXNrvGGK1BN65FYJNkZH6yJFcAkLs4LL5tNjDPWKwqayPx7hA6Lg47LY+nvJxzlZUIHffC5pidF56MsU31k+zYFxantGDkaBq3rpvlbIgDbDjMpNbBC2Tcpl2V4RiDMZhoFLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B5KF+LfHIWFEtI6ebM2zOgkL/FIEPzotuZ/uv9Y0BBA=;
 b=PrTDm9WI9wV4kiMffhhITj/aNr5qGytCsnPpvHOL4LkZX9hY9U5ed8o+Z3qr8s9Fp4W1N+oUAB3INfO0VnsoL/Lva+fPUnOk7Zcc/BX01QQ+IigSR6mvEArpoAIGGr1ylGY5GtTGYs8lgKXBGDqYnnfUZ/6qlIwh0PBGXRDwAFM7Cnz1k/N00/dU6oO5iU70gPyU9JZEbCp5fxLDs2+427822/KhehuIAo2VCMmtCGNW/STiNjkbMDMje+PyKUSFgq0chlGREL5cnv5/w4p5MAiuyMVOvTHotF5uZOzGpcfzgNwDnQK8alxbh417SXvVh8d1PL8pxPMcjI5ufRtziA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B5KF+LfHIWFEtI6ebM2zOgkL/FIEPzotuZ/uv9Y0BBA=;
 b=jIUarCVD/1l2J7Xa+6bfmz/oeWIL1/ZYOP1f3sJwkIt/322uPxyPMg6GMSZ+1rANZVNl0fd9MuMYbrz4c1alvFiee4xNHyKZ/2L4+wZBgUzwk6BmynpdtqfhCKxm7IK11gauI+iQgbxiN06JAGLBvD10VgQ6OsFb6WY4oB4h/os=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1354.namprd11.prod.outlook.com (2603:10b6:3:15::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.29; Thu, 7 May 2020 20:50:40 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::34e5:3ad6:73cd:4783]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::34e5:3ad6:73cd:4783%12]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 20:50:40 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S40 v3 4/15] ice: Add support for
 tunnel offloads
Thread-Index: AQHWI8RsR2xAEWodNEKmJoGiEbUS86idGqQg
Date: Thu, 7 May 2020 20:50:40 +0000
Message-ID: <DM5PR11MB1659E27CBA030BCD0958854F8CA50@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200506163230.11062-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200506163230.11062-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67a0f660-075c-42e0-2a30-08d7f2c84d82
x-ms-traffictypediagnostic: DM5PR11MB1354:
x-microsoft-antispam-prvs: <DM5PR11MB13547545701338C66CD9DF0C8CA50@DM5PR11MB1354.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VVY5ngm5N1ZQPLf6jRg69oV+9VMBnJcHlJ4ZMPT+8uxLJuKGCMxtj5KeF58OQ+tpxFXb42qtvVemqwjHwmgdWYv77DrtzNkiZ5fHuZ5liRJSrKNcdm8yj1lH5XCKOSM5EKwFForPe4Bj0EemWsqaRE8jc3bJb/H6TL1s7SP67jfBjOJnHION+9NkNhb7niDPK1O0jrjQcSBgrJ8hViB/TFjVxoX9AGpToEfJQOwWG5nmLbD7kxhIaloftbcthXZpCXIUc634PGgEV0TXN5sGvHeXIfwD5Hl5VtsDCasM+XzuLR3Lk4DedmeSmTsh5bKZti1jXM/mCpMLyG9Jj8wdsn3nW4xP2TmskCCjNWbj4H6Qd0BpsKb+mCDGxnKo2LY+brfw3z+DQ2lPQUyNOP/z4BeZcflbx9NlyUrCj4dlZzWhcJrsAQlzRe8bBsZBQxqmvK06SG4bB3znx72CUviQzsxtJjZCXlfx444Py1TrpeAUS8wac3jV7nVo3eOY2Vzptj1hyoPWcpoGN81exDRjyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(366004)(136003)(396003)(376002)(346002)(33430700001)(66556008)(71200400001)(6506007)(52536014)(33656002)(33440700001)(316002)(83300400001)(86362001)(2906002)(83320400001)(83280400001)(83310400001)(83290400001)(186003)(8676002)(76116006)(6916009)(64756008)(66946007)(7696005)(53546011)(55016002)(478600001)(26005)(66446008)(66476007)(8936002)(5660300002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: magD/i/OsfM+DxH69+Ts9C+UMH6g4Oi9KxkxmXXgUYqEzx50isA1R9sLKr5THnMQ76MbgyLOIQvRtwfbRGSCt3tm35pVfvSe90IMaAM9QBvLjFxyIGJo2Ux1ZYAi/2b/S5uiaVeHxGxiJFiaU1+UIwoJmKF86dcZvooFjZqcNtrTaUnLNteNyCxPng33wgbpM5PSSkZ0YWCvl9pxzLzvGFZASy4r8aLAbmi6sKjMtSF/bLCsQBo0pXECDKaTX+Jx1Sj6SDKcImZ48q5QRC/qsIzFrvOXrdzpE9ljKM4EmJ6s/xPWNUti//GJVipNEkkJWhLcjKyJaxc5JJTbZPcvB2qmpzcrjJ53I83lukTA5j2DaxRs3owmM3/krcoCW4s2TGW1x6fTdemmJOykZvyzFm7t0Rn3G+6YYVvQUUPxLrKPZ+RUj7LffCjRdzobRhYc0+KoR/PZ2MZayYs+cg5KqjJ5sKo+QG/ZNpvHsH3FzbZF2bjCVsDGBN2iBt5BdUrfrYUPrMMqh+YqAEBtmclwFYWxwLZzoeMW8FjqL9Gw3TYktAsZTOXlO6niyOnQSetPe0D/+q9plHhRFlMJqY4hs6pqgSVCAa72sRer3hrnyLZoAKv2GP8kENCzp4JAtx4kF3LdkbOcSMZ88npEvl8/e23Mw3DZqHTNqPcJrGo+3AySRVMqKbn1h+Q78xUqrzieO9jLxxqcs6OaCGivD+lwCvH1rOdCWXQ39vJlNrSMrgouPJXrPG8TuMLUm4vvEIHC4MqMNNjC2wjbtJcTI3FS84Uqu/jIo9MZTdlH387gzcw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 67a0f660-075c-42e0-2a30-08d7f2c84d82
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 20:50:40.2932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8OilfuaoGDvaanhNZCPfyFkl7mSm7h24BC67wd2c42OoRGOnno0ISm4SJCb3ezTSP1wjUjrTRHSiS21AbDennaQjtQ3252H4F26YlM2Vsac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1354
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S40 v3 4/15] ice: Add support for
 tunnel offloads
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony Nguyen
Sent: Wednesday, May 6, 2020 9:33 AM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] [PATCH S40 v3 4/15] ice: Add support for tunnel offloads

Create a boost TCAM entry for each tunnel port in order to get a tunnel PTYPE. Update netdev feature flags and implement the appropriate logic to get and set values for hardware offloads.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
---
v3:
- Removed unnecessary locking
v2:
- Add reference counting for same port additions
- Removed parameter 'index' from ice_tunnel_port_in_use()
- Change message level for exceeding max tunnel ports and tunnel not found to info
- Redo description for ice_create_tunnel()
- Removed unneccesary casts
---
 drivers/net/ethernet/intel/ice/ice.h          |   4 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 524 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   5 +
 .../net/ethernet/intel/ice/ice_flex_type.h    |  33 ++
 drivers/net/ethernet/intel/ice/ice_flow.c     |  36 +-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  25 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  94 +++-
 .../ethernet/intel/ice/ice_protocol_type.h    |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 126 ++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   3 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  21 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 14 files changed, 867 insertions(+), 14 deletions(-)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
