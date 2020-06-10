Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3396D1F5E50
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 00:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6A13204DF;
	Wed, 10 Jun 2020 22:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJ2qHWsSVyZs; Wed, 10 Jun 2020 22:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E1A46259C9;
	Wed, 10 Jun 2020 22:27:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 495CB1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 435F3204DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wxE6xnDy0AEp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 22:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 74CF525715
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:27:19 +0000 (UTC)
IronPort-SDR: wRm+QuFGK9fgXn4BNFxiuoODl11dXACgHyRqPoIWq07qEnGWhN0x2aR5RhVxSsQnRFBruyXH5f
 n6FW5X96lIeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 15:27:19 -0700
IronPort-SDR: R733gzq/vhBLLzSmIIBequxt3JBJGhwXFihoDA6QL5N0JGe2NXV8k5mTlqqK8OB7BCQURp/voj
 NNerlNHQiIdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="447692419"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 10 Jun 2020 15:27:18 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 15:27:18 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 10 Jun 2020 15:27:18 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 10 Jun 2020 15:27:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 10 Jun 2020 15:27:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+Y2WkV4GntZXnLLsFGMtehIyN21T1kfehcIOun1gFeSmqAZAqRI/Z9b2wiA4TOEw/FcIji0MZF3oqGWUyWmegAnh634R7/24EBy/+temm0gW09SFp+1KRc7+ryiKqeNlRkEYbsBYMxDHuC0gyMOrzKBkpQdH9xyB2bh+IEmVYJupQUin/TRIilzOVyeDcq4Qrm13MzaH9e0eA5ZLRc9bbYHX4SSvwPytqzst/zLk5ODxufTdzco60gOBRQmNVrfA1e2r4G6iIRypAwSgbFgCUK1sKXV7aJna2jSRcqCVKankn7CfyAUC7E/w4QbGw4HaAkfqFGUl/VGlETRItc0kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j+n2KzpFiAWj74/xGOYHkruth66Tj4e2lL1ujULPYkE=;
 b=hzsSRGFJVmana/ymyuKaLQ684uF/w5GCmX4cMFUI2m8VVgc+lOCevoYhseZzk7gphgxyTvNGQShSS1YCcpodO/ytFdaKQob0LPo0bLsuZpGCTnXWZ72/BblboLGAk0OhUMwqjEWtdUp3LHbbsKhswctm+GTKf+VB1CCpWj5EBmDoIG9fKg0aGVHzikusT/wt/sFvF0MfU9AvmeCGfa5kmgXJYa67OdLuQajrxkpKA7aOj1TidiaLF3GulyHJwMQX64nzRx6fIREUzMoIEBJU9/NEOj4Mw5ZcmC2bE6p2y52Gr8Bjr/LkXGM23t2FXMZz2b09GJTXF+rpQhFui6KwxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j+n2KzpFiAWj74/xGOYHkruth66Tj4e2lL1ujULPYkE=;
 b=u5aHruggIlqD56oVtO6L3oXrKaxjvTpEq6RXwTAHTyoUuUBpmfVqRGTrhSag6LTDvQakpBXWr2JmW8NQ+w+Agbu7/XD/l6ybNV4WDdOqXIlSiAfe2Lfbn8SJLyhWBtPkYP04YOCz7mQbaC7+UHtiJdInc+JbZa1YuvWA9UBzAV0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR1101MB2083.namprd11.prod.outlook.com
 (2603:10b6:405:58::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 22:27:15 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 22:27:15 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/4] iavf: use appropriate enum for
 comparison
Thread-Index: AQHWO1yEE8v1h2IL7keRRazPuiU1tKjSdZ1A
Date: Wed, 10 Jun 2020 22:27:14 +0000
Message-ID: <BN6PR1101MB2145CF4EDEBD1D157866725C8C830@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
 <20200605170946.23494-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200605170946.23494-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0607eafd-00f5-4a51-0fd0-08d80d8d6d81
x-ms-traffictypediagnostic: BN6PR1101MB2083:
x-microsoft-antispam-prvs: <BN6PR1101MB2083411BB647302D3C8A0DCB8C830@BN6PR1101MB2083.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6CGxz/LoX2Nz8rrR31WDGhWuHjJljAyKtu4m70mUoaVYY6tEzh9w+CsLqQiHXVHVj5gRFrBpWFt93QLqyVl0miCpEo/XrtO22NK4OyXK0Okx2rvHeiQaKwfev7huUtl0KE8BaLKR/taBLRF08UbB4B3lLt7iBQDsrkkVZ8WPG6RP6rM1N5nmT3Zo4oiMzEswwlBT1F7xFwXDJxvzbjJhJvmC5fAHz+KG5zF3WtPJ1RPagnmOnPfr6A8m1hkAp+i/zJyh6MXCZTsR7e385qBMFAuMfu2quoZO97LvVqxuISJHcbwXOrofXzSvmJqE3uFq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(39860400002)(346002)(376002)(64756008)(9686003)(76116006)(7696005)(66476007)(26005)(8676002)(6506007)(316002)(6916009)(83380400001)(55016002)(66946007)(53546011)(33656002)(66556008)(66446008)(5660300002)(186003)(52536014)(2906002)(478600001)(71200400001)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: d/JfEeUgr/qPAkS35A5v8slWUYp1llNIxLCcuJbmLQWaH8cpy6o9X6BS7pgRnjICBgI0tt3g9v/hC1+r9lM73EF7cq8y7zLROdX+EI8Tw7EyyABa+gwrYYsMiFMrYQYIc8nxo5sfo+FNoU6tV8WFlbC8+DEmIMwCTDJbKUvQg6a2P15fiTD8blQmhrE4ddV62YPRDx9ZOzYzExnqC+iwI7mhCU3iuB0JcZDT7vw/YkHMQuDuoEOuIogx+5PqtjQw7E1H99KLVFw1WFxS6vNT87kPWjBGLO5WzZks0IF6jWnq02Xbq9HqTpkbuq3fG/T3D7HW48XyMxMLcv5RryN+tx6/9XF9Yi9yq0EHer6E/Zq3LY/W9MDklV2+vyI2pwThf3OMQkwNsJk2rPKWta6L3yJserTa3He86vqARop2K6CG6S+Si/KhJ1MuRxW9cGcwbWTPtJl3kGxV2J3jhCrPGXCm3vWAEiaGzDF4yDBBgNCbfDX2nsuHAT6y4Dg/ySJD
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0607eafd-00f5-4a51-0fd0-08d80d8d6d81
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 22:27:15.0160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3KkBEaIQ65GrK/jM/80HPWQc9hUS17WN6JyW2gIN2lqIfyCLzD1kQiMCt/ZPjmsE83WbI3suAGS6CvYZ3VeKipDRG7doJ7yelsV1nT14AaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/4] iavf: use appropriate enum for
 comparison
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
> Sent: Friday, June 5, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/4] iavf: use appropriate enum for
> comparison
> 
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> adapter->link_speed has type enum virtchnl_link_speed but our
> adapter->comparisons
> are against enum iavf_aq_link_speed. Though they are, currently, the same
> values, change the comparison to the matching enum virtchnl_link_speed
> since that may not always be the case.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c  | 17 ++++++-----------
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 12 ++++++------
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c     | 12 ++++++------
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++------
>  4 files changed, 24 insertions(+), 29 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
