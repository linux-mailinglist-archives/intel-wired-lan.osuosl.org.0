Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD41B2EFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2020 20:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8380287E0B;
	Tue, 21 Apr 2020 18:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgRo-scAKjRX; Tue, 21 Apr 2020 18:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4EEA87DBB;
	Tue, 21 Apr 2020 18:24:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 808271BF3B9
 for <intel-wired-lan@osuosl.org>; Tue, 21 Apr 2020 18:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 708C485F33
 for <intel-wired-lan@osuosl.org>; Tue, 21 Apr 2020 18:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0CHYn406QGmc for <intel-wired-lan@osuosl.org>;
 Tue, 21 Apr 2020 18:24:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E92D685F2D
 for <intel-wired-lan@osuosl.org>; Tue, 21 Apr 2020 18:24:02 +0000 (UTC)
IronPort-SDR: dUWrFXe+H/bikschmlJuu9IMFFvIJvAoiqyrjDb6IOPFR+wFjZDpZhe70bNnn6SsOqgXZ9FCg1
 YEDYvfVExsXw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 11:24:02 -0700
IronPort-SDR: nHVbxxacC+85YHTkxvjIm0bOoSkOICPchOoKtmAkVqvAYo3UwFgpIZGI707RAi3hP81INN4PIc
 Jr7ksw9EJmZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="258796323"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2020 11:23:59 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:23:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:23:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HsxjpsrbdI//6u2ncJtxE/VwCHNoCv1VG/3hqasWbVL4aZD/IU3hnpF1OyvQ/5msPCvqVylejXHJaEQU0BJEQ/jG1/gTLN+NUz42lo0dbeR84rj+iQHhzZOdBUL6Tm+TeTFJN6N1hN2CT3lDx5X+Gi/JA9tJjuQ94sulV0dfzEFVFCA8E+PVr1CNOaTRk4cfMFcycvW+y2IS12jSB5t+giCCW5Mg7rkTEdHXo/bVnAYJXOXYBkMqWRQDpmlRUYpRjFfkiFHKc3IoZ8+deOjJIvNRCyR6lterDFH0QHnAVvpjFirHMnbebwwhuCOcNy5te/WyPNodWzs5I7gfNcu+Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFSaSUO0IF8EdH99EG64zaZPpohPK0dYWFx/E4+hnbY=;
 b=GQ3cW2rLvP9QsHDghsLZtabBG92hujQEdVDnzd5AmyX3fQxwbLAakh3K2sRFHb5s49syk3ViWPO78zgTjvIjjdFsHUex2BirXnEoSyen/lhJXLgeVm7tCklDGaxPI9HkvmHfQWnBQoCdObq0FoO7MekxP7ECfN7tA64gGyD5yXKdGMoKkcXMHVtPUTIHhkgQytKBg9q49SsznVmJ4U6KgLewTG2SRBB+PSLPghlN2zM7daxs1BXQg0gNeaRGPrFUjAsK5/JBBlha7rIiC77p1L84Iamog5NvwWVBf5pTryvSMmYCd+FkYVz806Lfl0U2N/rACvcn4YU9auZXYSVl7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFSaSUO0IF8EdH99EG64zaZPpohPK0dYWFx/E4+hnbY=;
 b=O9UlJnTu/AyOH05h+qXK1fzUqmYQq/9/uFpDOzSC4oZqMBkgItohlIh8vKJGYUycvRYF6rDpFpRgy6/n92z0eZN/UBUtJocOkKchWGlOEIG7rMFcCO5tMlx+wsau6K83DYpWqHCh38pkfS9wSMWh6WIV6Vvaa5YO/K6aDjtGv5Q=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3882.namprd11.prod.outlook.com (2603:10b6:5:4::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25; Tue, 21 Apr 2020 18:23:54 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 18:23:54 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: remove IGC_REMOVED function
Thread-Index: AQHWCAZNZ5zCo24mz0OV4gH6oLsQZKiEA86w
Date: Tue, 21 Apr 2020 18:23:54 +0000
Message-ID: <DM6PR11MB28901366E4E5D658EEC0A9BBBCD50@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200401091644.5863-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200401091644.5863-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c25f095c-4bcd-403e-2aba-08d7e621262c
x-ms-traffictypediagnostic: DM6PR11MB3882:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3882DEAA1CA0AA5168F6657FBCD50@DM6PR11MB3882.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(396003)(346002)(376002)(366004)(136003)(39860400002)(6506007)(8676002)(66476007)(8936002)(66446008)(66946007)(53546011)(81156014)(64756008)(66556008)(76116006)(71200400001)(33656002)(55016002)(4744005)(26005)(186003)(9686003)(7696005)(2906002)(316002)(478600001)(52536014)(86362001)(110136005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zip/vVlSfPHXF/7Q16lu/jegFnTZ3UGU4hfJ1MbDS+oYV/knTDfXf+NYud1VjEpazctI1d1FWNyZ5noUjgJDsL37CXeSjLTC+HFjlOF9ge3mFVa43YnmWSXMIrCmOxwWz4Df++eT+eFvzG+exf1Kc4tHe7T++6jV5O2XLvW5YHlngfn7NpKHBFm7NNBI9acTZyITjR+t9kG/VEjpbQmpKKGZsDIyDNpx8c+BwxIlTcJkmcLs3vWEplVuT40WG/4H5vTyr98y/OHFjRTICEKNnxEEzKrY1iUbDf8A+mckJaLNviPwl5S5+ONIQKJdyS1W1t+3AOXJHDB7mqNGgrZ3v4/YOHevKu8QcXTJVguZh4f5I6M+j7tSIfVJMklcocdMfuweiedwQ6ykwznqnapTLotWJOgEdZMmm/q+D1cQfrNSmxaYepsL/CRjYj3lEa1r
x-ms-exchange-antispam-messagedata: Ce1OjoBRlzZnJFhQgKWMWG73E3GOjN3jI/wbJtGK5IFpjCgVhCpawDDlvJbiD9xzKHbdp7U5iVHy8jxjEaGTnAAtPbDMzAWF1YrgtxnePEBsF352o98O7LGmYRG5LgeBCO0jPq9q3iA8HWjfMrHrLA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c25f095c-4bcd-403e-2aba-08d7e621262c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 18:23:54.3723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PxgVjrWK+q7BN3ScpHTs7NfkDzF4Yzby3lijMox00lDZVioMFzLMXufKG4luC+/z3ZZM/KAD2qsTNzrlYLaUqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3882
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: remove IGC_REMOVED function
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vitaly
> Lifshits
> Sent: Wednesday, April 1, 2020 2:17 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1] igc: remove IGC_REMOVED function
> 
> igc driver has leftovers from the previous device that supported
> virtualization. This can be found in the function IGC_REMOVED which
> became obsolete, and can be removed.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.h  | 4 ----
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 ---
>  drivers/net/ethernet/intel/igc/igc_regs.h | 3 +--
>  3 files changed, 1 insertion(+), 9 deletions(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
