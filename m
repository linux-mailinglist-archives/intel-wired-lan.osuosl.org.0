Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5253C20B94A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 21:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AFDC7227D1;
	Fri, 26 Jun 2020 19:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FNcNdliVM2ds; Fri, 26 Jun 2020 19:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 60F2023337;
	Fri, 26 Jun 2020 19:24:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5103B1BF577
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 19:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C1F988841
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 19:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hvn1a8lUBzs8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 19:24:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 26E0A8881F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 19:24:41 +0000 (UTC)
IronPort-SDR: Xvq9YZUBfes7/WO2I0bEGYZuuEjUe48YkSdeBfWAx3TPtxI55KF5T0Lss9dx0IxEWed2Axzh9x
 Lev93H1MPC8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="230224622"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="230224622"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 12:24:40 -0700
IronPort-SDR: E/Fn3puXfDTddRL6qlnPsapinWqTWecUNOoT32y/DNAPsuWdj2CAXi6iRz6C5MwocOjUb2+4db
 dp/2Fi8CNY4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="276459449"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga003.jf.intel.com with ESMTP; 26 Jun 2020 12:24:40 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 12:24:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 12:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgcpMk+jqtNO3/EyScZDLZQ0Pohd0n3QxfOFXDhAMUoXMdP0zvmBQ64C7z6tcaorAKjquZ8/5Xf/nrVMDLhJAilLbx2w5CQ9TsxUoP+G0nu50j+3r8uD4JutqRluB71I/8sfoR90+vrKMkyOEFZWakTkEa/HfUwRdYzBA2e/N/dYQl+6mgiqYYIAg8b8Zz0gV4KmNMneOV0U+rr90TnWGWFrYdVS2GXmiLM7eu+cnYh899iY1bqa2EeqmSxJ+o4qyKoxTyjZn9XL9K0rpfJDanD1iidTOWfMBJOIWP2mrYwx0o/RUpQkIEMUBR9JER9Bo0XWlzuF/jLL2M/bL2xRnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ISruLgU7qXo/JAjfo+Gl7a8BajHQS7jQuw9avAxcvs=;
 b=JOKTOQrOetQx9BYZoWRiBQsoLIK9d/339Q76gl2m7gb+lAJvueVEgx/I7pfS4Rvap2XtpE6ttdDyQWNKWbhcfWrWX3cqXqgiLsTceT7qqEfvgK/sVhwzz3iB6mVVFmAq+umfVVZX2dYM0hRJMXwQlqwI4UlujY5Qb/EU04VYZQ+/VEzOa7o3tgZrQ3KecS1AfcYD3sYXkCPtulqdBRhZrx5HFG7iHwnNoa7gsEEEqPF81w0fh8GyxJ+8yoGo/jDcV3SoXXa0FgWhRp1w4TA6DuyXl/0SUimooQ+8tpSn4BdXCRnwrPZovNbR7GJcRnwjU/6PTmHRTp8HVjfcsKd/jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ISruLgU7qXo/JAjfo+Gl7a8BajHQS7jQuw9avAxcvs=;
 b=mF17J2ZFJCwWohBIckVQnppkYgdmgXbvx8cAPziWkaNsl74KuLaoyikCnb8gJ78xWzoDoHItBvGNuLbMFmjNyjgxYD8F606H6WIBi+pV4TlcaoEocs2K4jk3QKCM73l6CD2yjx6lgkjB3Z965NtmcUMmiW9kIrvERB0d+GimiAE=
Received: from DM5PR1101MB2154.namprd11.prod.outlook.com (2603:10b6:4:4e::20)
 by DM6PR11MB3819.namprd11.prod.outlook.com (2603:10b6:5:13f::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.24; Fri, 26 Jun
 2020 19:24:38 +0000
Received: from DM5PR1101MB2154.namprd11.prod.outlook.com
 ([fe80::f1a8:9702:fdc9:9fa6]) by DM5PR1101MB2154.namprd11.prod.outlook.com
 ([fe80::f1a8:9702:fdc9:9fa6%2]) with mapi id 15.20.3131.021; Fri, 26 Jun 2020
 19:24:38 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Add ethtool support to enable
 2.5 and 5.0 Gbps support
Thread-Index: AQHWS9/uQIBLA2VHj0+yx+Wfhby0PajrRvgA
Date: Fri, 26 Jun 2020 19:24:38 +0000
Message-ID: <DM5PR1101MB2154DA0B444E1E9AAB65D6CB8C930@DM5PR1101MB2154.namprd11.prod.outlook.com>
References: <20200626132814.41471-1-radoslawx.tyl@intel.com>
In-Reply-To: <20200626132814.41471-1-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85fa5557-f8fd-473a-4c1b-08d81a069156
x-ms-traffictypediagnostic: DM6PR11MB3819:
x-microsoft-antispam-prvs: <DM6PR11MB38195A27875A620E7900C8688C930@DM6PR11MB3819.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:660;
x-forefront-prvs: 0446F0FCE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 43N4NkhWTFUMLmfqc3fEb2tPMC/Qzr5/wvD2mQm3s3e6mUNBXqFwqHts4qqwBm4gufVD05vnAvho0tZVyfrJtPWAP/Xes9YHOuwlEkw+JYWlis74Xy1TyppUgTsB5j5oXAywvKOcn0IfYgK3MYVm0vHNp+Z4w2PslvAADy324wk6JhknfRokAGcXfQRQY+u/an/qrhxnFrRlN49sxNc6yH5kJGL03oOkay0sL9a4CBj2zaVysTHwes3PXWdCeWtZgIQDSLoULC7NNzeHAfXj9RYrII8vlvx5lLaBx1K2lpvek5JhJSnt5ZtPOsLGuPup
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2154.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(366004)(136003)(396003)(346002)(7696005)(6916009)(8676002)(9686003)(55016002)(8936002)(33656002)(316002)(4744005)(52536014)(76116006)(66446008)(186003)(71200400001)(86362001)(66946007)(2906002)(6506007)(66556008)(53546011)(64756008)(83380400001)(26005)(5660300002)(66476007)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nFUm5KDhrFMztFrLhpfeA59gAnt/5CxVAzDX7R4fEJzodkLBCO6IErf6AlU+W6HnB0wYN829MKgm0Kxr2ELLBtdLsW1Z35tW/sGsLH30JvFlWo8/KNtYIfOzYD3rx+UCKz49xN1UeBaQOld4CLSA3oTYXnmOmQi41R/9hLJ7cwRl+wfkwkoT43Vtq2HSv5UYFhA1cNZcdOrAiT/K/0iB5IAiBUqRCABwEQF4UgjW+R7ZL9MCi06We358ydny8sOf+pJOqDGjZ5Zl1NdHN/6Ip9Djj80a7N90VIGhN2nMVbyM64H64vhawFJsZzeUyYL4EozIeukdixWv217bOuP1cv2HE1qTK8PjYazVK+mogJHOJKvaR5L1bxGbZlXNBsKi7+Sq+5PSg7KH49kz8hdKqFhyDRqNTM9wS0hK6tuEYGXGYNIyUHs5mL081iB+PXYnnf46OaCNHexbV0VoW/Syx6aVquAkTTM/j5M8L8xqwS7vyIbihSa+PO97Tg54KoWJ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85fa5557-f8fd-473a-4c1b-08d81a069156
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2020 19:24:38.2573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ji4jEkBvkkXPfEegjELpdp0+SbiPDE5Q9C1VpKupH4RlruAZ5Jyn+YZmld3JnZ8AHXyGI5p7FihFSX6mgRQIumMYkJXTdqW9NkYv0386GL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3819
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add ethtool support to enable
 2.5 and 5.0 Gbps support
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
> Radoslaw Tyl
> Sent: Friday, June 26, 2020 6:28 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Tyl, RadoslawX
> <radoslawx.tyl@intel.com>; Skajewski, PiotrX <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Add ethtool support to enable 2.5
> and 5.0 Gbps support
> 
> Added full support for new version Ethtool API. New API allow use
> 2500Gbase-T and 5000base-T supported and advertised link speed modes.
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 262 ++++++++++++------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   6 +-
>  2 files changed, 183 insertions(+), 85 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
