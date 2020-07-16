Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1F1222A54
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:46:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 852D6887BF;
	Thu, 16 Jul 2020 17:46:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JLTaFCFollc8; Thu, 16 Jul 2020 17:46:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30406894C0;
	Thu, 16 Jul 2020 17:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A34D51BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1EBA889438
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JT2+L4UclO9A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:46:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E00E0887BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:46:13 +0000 (UTC)
IronPort-SDR: hHqktap9jdhbkv/frcUKvLJ27C/PhkelReCmmXUBYOJESFu1B40yeG0CIhM3rQFJiI42MVmjrp
 kVUHkXZ6JV0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137577923"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="137577923"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:46:13 -0700
IronPort-SDR: L8eRhZgu1PXm0vEFwD1RS73VwwwKiy/G63hdzYn9vQxd+bs9OkcAuODppeqfGpqiCVNiFTrIDK
 /gf/PPHq5+rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="317104596"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga008.jf.intel.com with ESMTP; 16 Jul 2020 10:46:12 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:46:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:46:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hsjv/UvGODVcLkGpO/HlpbGczZXq1b1HoUFIlNEopU/xZUu/hJElSATejJWAUE3SNpJpOkIZVlb+4amiSPddUmbLasz7oVgLCi7IxFAQ/DXLzpRdZkVcgdQg3BVNds5x/C9OY5g83L22piU8tYGms/YdtOnln2F0hmcgWVkJSCEkTbkMnLO/LckevT2rqUDuPKAmEbQI0e2zbritJ5JIFClfHBEbItpL+L2Tsri275B3TgU1HKr7AT7JFR6orJZRILji34gl//OoS2vKLcJWiRri1Azk2NHn72qD3+UOT/H3HwDbbv0aedpNThg1G+H/oHsJjdBQafpDSu7C3PI60Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/MD0XrI0zdsXCGh9t1gPtwse3Rr5cvIPGwt2OGneO4=;
 b=XguCOJ+FT3I7Ow8Qk5kLR5mzYNi6z/XeQswjMpo3wqlJEXWXvCVtPUiBQZCuzyNSkgho28ckRk4vVDudDN3qnmTN3tbZbtrY5p+51EglbAzFnzNKCRkrBa8SkPZSX6nsr77+rzM4XU30ZEXVVrsMugFrzyM0XjTTY5L7Yr3yM2iH2dU9LJ981lMx1Aal0LpU3hh18yqjWk0tTut3x1uLc+UEGLdv1RoGYE9dBECrpmyhrpO0yA6ewDQp4Wl6f0LYncF9dBFKgopi2lAOU1h7Ti+Z+y0LBpbqRFGx/KPKCgC9FDwB+AvKjcZ7iK7xiARZ41NIMKhQkuxp94D45AiCxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/MD0XrI0zdsXCGh9t1gPtwse3Rr5cvIPGwt2OGneO4=;
 b=oyJDz7zXm/tHY0Y3BL62ifuWcDcvnuH2Hk3Sm6CN150eGtsK9RJ4jj/DZocscWfuCe02CLuRh16M+RZnPFm6Wq3D2hvDiDAz3PJ4n0alx6evehtOGl7f0uqtfsDpg/CowGAK3Tjr7gI/oz0qn1WCYgWIikf08+DbzrMdOvY82fM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1268.namprd11.prod.outlook.com
 (2603:10b6:404:47::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Thu, 16 Jul
 2020 17:46:11 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:46:10 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 11/15] ice: Allow all VLANs in safe
 mode
Thread-Index: AQHWWVg4ayrdCKRY+E+hXvYcY10CP6kKfzlQ
Date: Thu, 16 Jul 2020 17:46:10 +0000
Message-ID: <BN6PR1101MB214543DD0FF6C8E55FEDD57E8C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d01f783d-bace-41d8-80bb-08d829b02089
x-ms-traffictypediagnostic: BN6PR11MB1268:
x-microsoft-antispam-prvs: <BN6PR11MB12682BD8BD2E108D1C0ABA468C7F0@BN6PR11MB1268.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A+3nXv7Ep8U+TluimkJ7FRKCgo4ddWeQHdhYzoqiRO/VV96wrimHMGMuTW+D2JbGX6hWxa5aOUOD5EwOaeAqz79ltmzGomLKb6PNKFc1nQakRyW4qGgVWNMTw2OgOBvDQhjVuVSmixc3EcRZsn5EJzIEcay+X4BiYkGBBfLdWMU6bkXn5pbfT/AOD76Uf278CYiOh+JI9rDzuM9dbyTnLgGqXXNE4bKs1G0cJZGZ5PlSnfNrqVhmLDzjR2VQazIQh4t/E8mTQzQtHon72vOnySjPTtSiM2WFWhgK0LOKidUcpIDSIHv+y9HKp+shStFEIy0ovoSo1XJPBIno+27UGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(136003)(39860400002)(376002)(366004)(8936002)(316002)(83380400001)(66476007)(66946007)(66556008)(478600001)(7696005)(186003)(64756008)(71200400001)(86362001)(52536014)(8676002)(66446008)(6506007)(5660300002)(26005)(76116006)(33656002)(53546011)(9686003)(6916009)(2906002)(55016002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 76gihWopl7s+iuFfRS+TKvSsjckE0x0BTQW2s6xE1zKLBShj9U1dDXwdav1q4j70gZCJvKHLwVR68B8QFd3D+coWHm8XiPCUud0egAvb4T7BO6wQn9ynuKtBExKwZhByYJVuzdsxhWOBQxtworM7vObngIhhQTc/xWvQoYos8NkOiJVmwz+obhmjyllk4ULk0jH/MUQgYBvtjIPeqwjlCxswYOr4A7X4HS+d9rkTE8vM63iBMojpO/MVKWBeK0whu9Lld+S2Ob7ODcdV3gVQpKUuGHRxoRDnvugHnnBJw3+VrTxyf1Wktm9uvd05/bsIwBKz2kMJ6VvvEHVWb2aoX6eA4yZGMQ+vosW9JWM3OAtI6ArFkWKO3jYGFl0B8U/5Q0o+lqdZNzE/UnvNCVIlsFpOy14mNV4U6rxj+Wej6A3tsyuGLr6+YwEZmwqwSleQH3odGEyzIKhfeyEaUiNEfnymHL0gORB9vnjICZh8wxc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d01f783d-bace-41d8-80bb-08d829b02089
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:46:10.9420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zmP9p7iubDvzwjq0EFWo6+d/Xt5IMFgUA67ONO/l/+eopmaqOnoh5yllMCckd/7lVNnGdzyx6OZSKQCruu8xSBPx7ugch6zmzLPu/IIWXKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 11/15] ice: Allow all VLANs in
 safe mode
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 11/15] ice: Allow all VLANs in safe
> mode
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the PF VSI's context parameters are left in a bad state when going
> into safe mode. This is causing VLAN traffic to not pass. Fix this by configuring
> the PF VSI to allow all VLAN tagged traffic.
> 
> Also, remove redundant comment explaining the safe mode flow in
> ice_probe().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 59
> ++++++++++++++++++++++-
>  1 file changed, 57 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
