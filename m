Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 103FD28C407
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 23:28:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A5797273D7;
	Mon, 12 Oct 2020 21:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwwk+-J4YnrA; Mon, 12 Oct 2020 21:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 011A6274E3;
	Mon, 12 Oct 2020 21:28:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BABD01BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B499E87A35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dw4fNX9ftoDT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 21:28:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EE75887A2E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:28:31 +0000 (UTC)
IronPort-SDR: yOU2dLZLTLOoe8cE4XaaFBm5YS1K9LEN0va3Ce+zzn2005WkxGgr8Aq7moML1uWLSSunGMq241
 wCSIl2+M8E6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="229985973"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="229985973"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:28:31 -0700
IronPort-SDR: M2MP4kzhOnOJPukHWNuYtHuZ7+8Rwv8NzbS/pb0rI6ylnh2PfVw8rs+DE9Vssu5jflNIUjr+Ix
 bpx7Kxlx5AEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="318068083"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 12 Oct 2020 14:28:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:28:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 14:28:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 14:28:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAEM0dP9HdSvtZJjH5mRW7FFI315Wz/NgJWb8kfze9mTXbdWPBit0oX3A4bDyYPWE/DGcFCfoWnqzXmQdgTj81bXN/01qhVQtBnmy7v1jN7bULWh6fafEwbBbR0272XD4+N0X320TrpNVs2Khliov3IDHXaHlb/+sjUPEf02XrfzcYFYPQQxfS5wqre5CmCy8ZIKEacN9vQ+QRstAKMEm5UYOxiJ1Nr9m/4GdCpAgMUa9j4MJxQsKV65mak8rSh5az8Iz6BRBKCqX/mceXjr4sRN+qTus7BxHGVX0gjInu/JuGcMkOxi70oYSRu/SAhT6hxI5SvFLR9ccAE+P4zMag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4dHLmiB8WnM9+6VLms8rbNikSkv0/VNmXwgE/eHXVXY=;
 b=nd1AUqjK0F5NASX9KXjQi5ryuTfA+HUpvgNG18qZL4Hj80AEfZ24Meccz4XKyw5N6LbchRA9IlXAqfluoY7GuyzeNnV71ABKmofzzt+ZmI3HSfhxBDZdQDZUOZRyetJu4S0MBjyD54l3l3NSet+HgN3FJxMC87xJLCSfN9TupoRjPLrSD3MCBixgzqtwnNhWD6khcfHnfl0Y4jfgj/KT+FjYnzQEXUaVXX5WFAUhtyp5vXle1QAViNAk/tEFeiSmwh0Gy89MCG/dzxAwH5FXyMy2vM1hxgpM1082LOhmnEduHvesRu5Knfo0oGjPHW0QXgL7+WuwML/L17ZVKxBtng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4dHLmiB8WnM9+6VLms8rbNikSkv0/VNmXwgE/eHXVXY=;
 b=Z4orOP0weJH80O0PpxFmeFcd1YAlWjNp+h09ZQtF4Ox959Tn+jG1/OxTTTYyTk84vPnYr/NLGeSYJIabYhUt9akqOkSNBXWimyIfNb6AOHjoE0e6lvuWDWp+5MlhAbQPYanNCT+9R6eCKUcAp5yniTOJHxSxu7GwwDCT8aIIh44=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1849.namprd11.prod.outlook.com (2603:10b6:3:111::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.23; Mon, 12 Oct 2020 21:28:30 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 21:28:30 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 09/15] ice: Enable Support for FW
 Override (E82X)
Thread-Index: AQHWjS/k7Qt4dfn/F0u+BJWD3ukyyamUom5A
Date: Mon, 12 Oct 2020 21:28:30 +0000
Message-ID: <DM6PR11MB2890EE97D7A0B8CEA6B1494FBC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.179.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0cf625f-1f9b-47e3-e528-08d86ef5c3ba
x-ms-traffictypediagnostic: DM5PR11MB1849:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1849F8533ABC8A8A483DB1F3BC070@DM5PR11MB1849.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kSSpirjlwcikONHmZq+tfO4YaMk2YXJo/25Cn1LwZ/+NyUDbunqu4Y9bIMbwafcHfp5+bqclCmRR4sZmscaXX57/vmm0yDpypd2syyeSQoqpxTS18BFPr3qBPHD4J03VjT59QVLropujaBw1CvJvmbLVZHltUuezP3ndW8Ywuwv8snJkTGA5SZOQgIsvablm13ye9rAONHJDiI3pBArqXvklUqnn+Z3S527DdKYzh6FJUxCbO+RdsUjudcSVh+LC4HaUL+Zd96vYxwmcxWCaZfWYNdJvwmHPJNcqbIPUU97t07JRD32bCZUKxuhjSo06Qb4lyE6huvyQtC5JlR6zVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(136003)(346002)(376002)(366004)(5660300002)(86362001)(478600001)(9686003)(2906002)(186003)(26005)(66946007)(66476007)(8676002)(64756008)(66556008)(66446008)(52536014)(76116006)(83380400001)(4744005)(33656002)(7696005)(316002)(55016002)(8936002)(71200400001)(53546011)(6506007)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Lnsw/EmiPlktXfNxfwV25v133n7OzhODYzB2naCuCDwA1tEVBtZt1zNEryvdyTbsh8kYdpIQn3GdBLGtQm6irXzAIYlidYDyY6PbrHDygtRI0S+fSFRJ4Lx0y6qMqBxBIWGziEsTuTypGmY4TE/Fpwpcp1uoqlH+QW8czOhKgCfY7JGKCR/ruDchAcn5F9+jTyss41XTcmnQsykSmM6xzbwQHNq3J2u6UFoiT+1s63hivesH0jubMzzYzw77HQpPlMIqyAd3XubZ/DJCsZPinDcDQhX3rqHrM+PgtBwwEz01PiFQrumwuAmsglnLkdPiif55mz8a/91i4injgPLzAezUmdLbyd1pxmW0VL8GidshuRM+X59h4m1banaRqLEcQNgoOIVzmfd6TJL/zNsX9qn4ZUMReXFK77WZwbOp2wBjbglxoHdvTcqskD00HN5Y26bXJgyH9hMCstSt/mSBjsmJzK+Qwq+z7C7HlrOjIZ0VEeQYJqjjrpWiRgHDnx0qOWTDMcL4+yqEKAYxFrhJ4kWH8X5m6Q06Qmcvyuu9dMuDajCx4LB7mUZV1CWadqFM8EyH6VxTzHEEwa6R2qEJ0xbiVYDmfW+V9EWBcz9SxHxtTLtCWe/BmUyaCIj82lPcGdM8R5hks6iClMl+g53l5A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0cf625f-1f9b-47e3-e528-08d86ef5c3ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 21:28:30.1644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m8q93rKtMhnMoNipTNCSJx9STPcuKOx3MQo/VsZPadTQV7mfKsxmFEukPBn4pjIEWnkN8ht8bOB6CmnAmFYKlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1849
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 09/15] ice: Enable Support for FW
 Override (E82X)
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, September 17, 2020 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 09/15] ice: Enable Support for FW
> Override (E82X)
> 
> From: Jeb Cramer <jeb.j.cramer@intel.com>
> 
> The driver is able to override the firmware when it comes to supporting
> a more lenient link mode.  This feature was limited to E810 devices.  It
> is now extended to E82X devices.
> 
> Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 4 ----
>  1 file changed, 4 deletions(-)
> 

I do not currently have access to an E820, this tested by was run against E810 adapters and should be considered regression.
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
