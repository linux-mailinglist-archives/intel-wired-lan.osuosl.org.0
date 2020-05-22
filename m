Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E421DF007
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17EA2888F8;
	Fri, 22 May 2020 19:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Op9xFnr+r0tU; Fri, 22 May 2020 19:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69483888CF;
	Fri, 22 May 2020 19:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BDA011BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B827287337
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wD42jwEKPv2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDCBD86E5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:31:12 +0000 (UTC)
IronPort-SDR: 5Tydkq+io9XzwoNfTZj66L1gvxKI+UHxTUA1Q2IykAPREXpVt8+D7pSlPIl3BxA1T+B7M9sHVO
 QIer551QD0Sw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:31:12 -0700
IronPort-SDR: j5oCzulQa2XTGfRWkjSaiRtg49charRHfXEOVdObxDC3a77lUZ7zXu9VWgm4l6FRa4P54fve28
 mGok/s/1paQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="269094460"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2020 12:31:12 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:31:11 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX113.amr.corp.intel.com (10.22.240.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:31:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:31:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0jZ67YpcA7jRiyM6wt+dJSa/JygEjeOk+Me18YbJtOoYOcFsy4IudF8CM+6yJNcenkVnbXmdfbPeaO8NABVSjfApqp970FYrLEFd2MJowJP2zdA+lcx3RSQm09/GCRkFl0z+cw1j/xfHA7adl2+dJM9wzKz0mK815JdbGtPhtxFdytwk2BGfj/6YeJjsIRSMpHZIm2ASKEnA7y9LLEURkI8ZahBH420ct++uy8HrHuw+44cHvtYRJU9OqQ9RaiE8rj8l/568ALRIQOzw4/fJ9iinidlinobTs54RYKg5MX6dBbgvMxAyQ40EVb1zsUqfcechIbm+UEtY5Yr1uWaXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yaETQoDj698dSTpbuJL1CQPSXLKMhYSWVrZjdwYv5rM=;
 b=kUDu3ezvQCs5RGJJ9RnWWAN+98yCynL+XG1H2ELmBoKwbQIesOQ2ZSv7Ckd7IQQeac7BJQRmkmKo4tUJz7rr+BhUuLk2ogqH+tk0I8e8H/kuDW/jST2xaNNnp4rBGS4FWxYOByIvoU5cjbCpKR66kyZrwdkH3jAgB4hJXz44J4/7d5WTTmTJSr+fiWWQeLTymuuJYmGIL3IUv0WyasgHyXXxDBo/T5fL8LhrwZ15hTg9crz59EfRc0fI4gSkc5wqcYb5w4d0y3wmP8X1HrOCnxgAswuPMdBTybBecj7osE5iCmrZgeN+tuLwqa3QR1OyCds8dMI8lu89reS7nEIMyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yaETQoDj698dSTpbuJL1CQPSXLKMhYSWVrZjdwYv5rM=;
 b=OgfscWs1bJwrIZ1GufhGVypdvAd61w8ClKl98wkCvqc8AKKa6Rn/THVbOXgUvAyE1n4uft/e2svTcEqsmQZ0h5ioTPZuZHRxsGejbDt/0Cv+5ZmHj4NpDLVvqg66+i9XRRJdxv072Q23Zdx7wM8NtQEzTSDbfpwz+fkVZmLrWoA=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB0010.namprd11.prod.outlook.com (2603:10b6:4:6c::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 19:31:10 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:31:10 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 05/15] ice: check for compatibility
 between DDP package and firmware
Thread-Index: AQHWKxqOlCxlf+rSY0SWHTTV58bdGKi0iMng
Date: Fri, 22 May 2020 19:31:10 +0000
Message-ID: <DM5PR11MB1659F8573E93E83CA7619B188CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 63b340a8-02a4-48b9-93aa-08d7fe86aed5
x-ms-traffictypediagnostic: DM5PR11MB0010:
x-microsoft-antispam-prvs: <DM5PR11MB00105B4A0DE9391409FC98838CB40@DM5PR11MB0010.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NNJgmNH8mnp00upjKSQjQ6aN2qgr7jCcmjaG1uQiPnpGkmoBEsKe3caBLYLpBjPrrdqiG2Lm7cQfO4K3r7GfrJdoJczxfu5KpBT2hJrCekZfh3v8SFHcV/MHaE7pLzGvdvUUbLJo2T+1h2lDf9G0+fpFDx1NvJrfiNSh5V7NFNXgn3beFFGsZ+0Dg+LDF76KbQ3uVkgw+wKnktKk/co6rEyVLrghHcqkA29qn2Qfq0Za7ZG6VG72MQfJwsYR0/jRuPqlJ9KBsI20Oe+0VNdB/LUnOynb1iS30676Ocgyo2SrfbYxqMEbIuQpkksdwzUm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(39860400002)(376002)(346002)(366004)(66946007)(26005)(9686003)(33656002)(6916009)(66556008)(66446008)(64756008)(5660300002)(55016002)(76116006)(8936002)(478600001)(71200400001)(66476007)(8676002)(2906002)(52536014)(6506007)(86362001)(186003)(7696005)(316002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: YtiNQazfCtGqPVzO2bHhNCXbDYxTvRFeGUKcY7D88ngi9fR/S6BOBU5UQ8qIaEl9J4+7VG+ARoCneSby5zx/SvaQMuH564tNUxEixeiBKy23Jnr14sMoXPTsMVsMKjv30atHw25OmnakuZ4+sVg8JwaRrBPEFCv4Pp2WuWcGfwIsHmi1nbe61BE4W8CKSIxrhlCXYdg9mym3Z3rXzqhmLzRU0Rh8YLQ1fKtXh0kyEPGs0AN3HwsDV90vOuPHQqPrVPPSZQr3RyxGbjRs7WU9yrbs/sdxDZcSWtWAMp91FeZGf7lQnltEU2PALEN4uBV+eg7pcvkLmJoXfUKiXEh+oGGB9fnvm5lGUIPLT8z2SNRPIKXTWF2Ct2yWQ7T1KWtDLhkONFINKx1ukM//Ez1gV0L9g1jHD7Mi7sxHphJxvAASzDIOReYlYnh6UayfmYjZ1Bv+fU/yq4Zi7+Kq5pYATG/aqYg8g6Kd/VITgeXZ04Q=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 63b340a8-02a4-48b9-93aa-08d7fe86aed5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:31:10.7110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LX4J1cefXeUoRsYxyvEpPa8rBV7HQe7OOrcVlZiTpaN7sj/MhVvv8aRHyIc9KXl55PTiWnzsoLu8rfOGGhkxAgvv9IQ9THjONqRySAmon+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 05/15] ice: check for
 compatibility between DDP package and firmware
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
> Subject: [Intel-wired-lan] [PATCH S43 05/15] ice: check for compatibility
> between DDP package and firmware
> 
> From: Victor Raj <victor.raj@intel.com>
> 
> Require the Dynamic Device Personalization (DDP) file to have the same
> major version number and the same or older minor number than the
> firmware version major and minor, respectively.
> 
> Check the OS and NVM package versions before downloading the package.
> If the OS package version is not compatible with NVM then return an
> appropriate error.
> 
> Split the 32-byte segment name into a 28-byte segment name and a 4-byte
> Track-ID. Older packages will still work with this change because no package
> has a name that will take up more than 28 bytes; in this case the Track-ID will
> be 0.
> 
> Note that the driver will store the segment name as 32-bytes in the ice_hw
> structure, in order to normalize the length of the various package name
> strings that it uses.
> 
> Also add section ID and structure for the segment metadata section.
> 
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 112 ++++++++++++++----
>  .../net/ethernet/intel/ice/ice_flex_type.h    |   8 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
>  drivers/net/ethernet/intel/ice/ice_status.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 102 insertions(+), 30 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
