Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 632273AF853
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 00:12:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8ECE60800;
	Mon, 21 Jun 2021 22:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kR4RVzMZQnAc; Mon, 21 Jun 2021 22:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4981606AA;
	Mon, 21 Jun 2021 22:12:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10DC51BF287
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F309B606AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NbotPJPksnWB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 22:12:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3343F60646
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:12:08 +0000 (UTC)
IronPort-SDR: UJ1wa+Lchs/Zqu/pDuOG9UeA7lLGdFVCwlSFbN5B/Kp1iR3Pj5mv7lJLmkUDsrZ5pK9fpJSKOD
 wcku1AeE3oUA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194253728"
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="194253728"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 15:12:07 -0700
IronPort-SDR: 35Xzdn8tCwHiMMaJX6oIyld9kcMOKcf8Vgsdlp4FURvojx7RqGsA2hRes0LPfZ8yecjD2EYL71
 Yr5lMumtKENw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="452358673"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2021 15:12:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 15:12:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 15:12:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 21 Jun 2021 15:12:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 21 Jun 2021 15:12:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dH11rqP66+EtzvjZp2FS0wHbcFB+1eI/78rzVAo3wqZE4ldg4/ltJAaE4pOUiIjo3dYc9iLMEnssgdploRkFj2OZixHd/JQx92KGpSJxXZBwV391C1jNqOhX/NjbyO0UjqP1InAsA0TsFtv3gg/gWZh3974YnAiOWyuqjM6k/zVqLJ3bwGi9OX9yhDAJis975hE9EKucxr0NInnxkYSLOhLBc1wAJJrfsaiXHcrzzSHS/BoUJsIIkoxm5MexXKcnJcSyCS+JF7F+jiHUoLucYF4WNsh1P4TKy+yomKIu3oFAqVlL6dDHXnIKzTy2+/K8WsxmCmchaVUIl3cY2HVeQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLgSQa/4Ea9lVQjzA+HA+PW7arMCttR++lVwH0TtZJM=;
 b=lnpJAfN5tmV6/jdpQZgeU30yGcHFYDMyfUBUSnwb12hMpn8AoHESmTrRdgZ+ekRT4XU8mGuz2T1qq9YxqcN2c5/oU7OmLa1T3axQWrTq6yNiMlOiTIbv2RCMZa9zkm0KnJDWbgyFgRf6+7DG4Ma3tBl13m9bDfZDFN42TOJKzO35xfeKuegLE0f9RLipJ4K1K3OYzYXoN43TIoIFmhZp+7h7BrVrsVjPZPJGmsFr/sSZWS+3fFwEP9sNq4eCcGrJowI/PPikxxX2si9wKjWUi3WwG6X1Gl/2Cx4p1MPnKA6q8ARTAih81D6GFr3CWTm4PKkUdqjXywaaTDiC1lJBKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLgSQa/4Ea9lVQjzA+HA+PW7arMCttR++lVwH0TtZJM=;
 b=ijex/Yn39TSwdARLtWqdcphZO89+xdCSPZi0v+m/t/im9kc/ax0nDlfFCXAqQTrhbKAuJihfWvyRJJLTPs1nig4R/MAHLNIAvMDxmaeoZ/M0vXFM3abazMVd6fT2v5UYImwNEDJrQk3ihlfPOidedb5AvYXtHZCPgnD0BnDhj84=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5661.namprd11.prod.outlook.com (2603:10b6:a03:3b9::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Mon, 21 Jun
 2021 22:12:03 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%6]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 22:12:03 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: do not abort devlink info if
 PBA can't be found
Thread-Index: AQHXYiMx6UUobTnbFUuNhuemeWYQ4asfEIvA
Date: Mon, 21 Jun 2021 22:12:03 +0000
Message-ID: <SJ0PR11MB5662931B7D5F0E3C1A628D4AFA0A9@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210615201420.2001937-1-jacob.e.keller@intel.com>
In-Reply-To: <20210615201420.2001937-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85e88a46-1924-4cee-9292-08d935019944
x-ms-traffictypediagnostic: SJ0PR11MB5661:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5661BBD21CC4EBB4FC3821F5FA0A9@SJ0PR11MB5661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oE1PHYP/oFPn7cxtrzGYG5jviHtnMFLit5JjNPBhBOk5LEp8nEmAgrTs+XYm/+rC54LnELbC/zQcLrH1I6KCcc0XBx+xuu/rVzqe4wC9HRrCiQ1pXHoIfapHRNDPqJYGBKHzMznziZ/YRE7Y0yTXygGoRS/zvhA7USdivXXGVIXZBdkGwxSFiNBhlHjICz/yY42HzYzz1miQ2nnvPRezBedF42+9Z9YwCnHRDWJJXEGU2TEpftQjQ4lcJV5We4tBY+oc2DLUjce2cXrqfbl411cw82ewwcJbKSMdZnd0XOV/WM2rcM8UsvQak5/yQWrCsVWjhK0Cs/53kwwTJPQl4TdHpjBECs1qpzcETI9PB5WIe04sW2gt8YtZwBG38eikjP5loqA7hB2B5RBgSY9JiY1/ceC+Zbly6dz5x0XlvT1Vv5hhsiC7in3L0TynOlLNO9zKGJJOe4m/0TIQ3guvCr2msp/ZYFIOUD3cuPXdG6+qY5XtuaclaLSJn1XEfe5mwKt1ArC+8JBSAHxjH6BTGKuzCIb4UU0tysDyR5xZ5imHEJG6ofrhi/9Ceb4dJmX4MbunyZkUhkupogHYB7X4PpnP+CAZDR+rQTNEDVANbhk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(346002)(366004)(136003)(6506007)(53546011)(7696005)(122000001)(26005)(2906002)(38100700002)(66446008)(64756008)(66556008)(76116006)(55016002)(66476007)(66946007)(478600001)(33656002)(9686003)(8676002)(8936002)(110136005)(86362001)(186003)(83380400001)(316002)(52536014)(71200400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QpTbzEqWDRIEGL9sQgde8eTPYGJ9Muy3aZwZBA3wy6HAggkbMJ04LfelWGjE?=
 =?us-ascii?Q?zhFKPSeVfZimrA33v033aCpRWLwJf0NtCbqy44B9BO5k43O5MvOoW9D4VGFA?=
 =?us-ascii?Q?Nqicj/b2HSrotp/YkwSWhbbhkj/uVMo20VE9PlPtI+1Q8DHdEeQANp1oS62J?=
 =?us-ascii?Q?kQKJmgxaJlPdycGYWpu0eLqishy4VpybeEEtPdKbEi+iB1K8YUgaqHWGurpV?=
 =?us-ascii?Q?+HbjSEvoGXz0LaqXIBIS98c4/gvqYnog3ko7Y4KOnqHjfOZEjfdQVwtbm0iq?=
 =?us-ascii?Q?s2OlnuYj1WPVew+pHoS5NZmqM4zny1ksCPxllvFtkFsnXaBvfFKRvaTps0FX?=
 =?us-ascii?Q?4I8h2atQKKs0LVN5tfKyxxcfaCYashl1g3qO2QTCmGMJHkeGt8B8UapVEYmP?=
 =?us-ascii?Q?FvsK2szaN0RWqZe/cg2ppR4hDjM7jD4WznBo3xHOgef8xj7xaaW7i5FwTlC2?=
 =?us-ascii?Q?bEWgVNcfPf2FbRJ++fO8u7YXinEFoD7LbUW/LgoX5/VfugHxTwBj4mloSMf3?=
 =?us-ascii?Q?tTzsGZwGwHNNn2Qvbix9H16qcEaTXIT5lzZVdnX55StPwu3sO5sw/Ke+bmtD?=
 =?us-ascii?Q?a0bVHywv+sTaAogJh4HZrBPGZDztB6QkaTlLaVxAVu4vQYZn9g7biyVRfeKz?=
 =?us-ascii?Q?Csi43yEe0FSTET8bkqCfVecH8LDS786zsuLF5ZQuo4XTmdh15f4oZtK4ZAyZ?=
 =?us-ascii?Q?jrnO+0+/qCT4+an8UBV1iCAHLUlPaLZ+5CkbTTxPmzIxzJDXJ/PmrGYxEo69?=
 =?us-ascii?Q?kOKnT3QUPTxitBLRwIDR5LmRTlJCL6THXqA54kIqsEXV5dv87aSeu1O9kSPL?=
 =?us-ascii?Q?nBJuQkHlMpN27A/LOohi1H/vK5KU3hwx2KgtQTY/niImrukyUY9iy9zeLSMT?=
 =?us-ascii?Q?j8j3Fm//J+KYxmMSwXMnRKG8GcHddnhUELlAq0WfKm2iK8XtfdoIAiltgFrs?=
 =?us-ascii?Q?zrFuQ03o+yFmWS87vrMQWfC7P/8c8/GRHju9yuf3o1fIPZhvKjfUVKgkcq93?=
 =?us-ascii?Q?nabFsG/IsfAreOHpJFrUeGgRiMHwtACWgiSYjfUOPt3SijLCaP/RKtW6Zqbm?=
 =?us-ascii?Q?J+lZLUV2hbKXFlao+RNVbSTw2NmIoC/IQMLxRHp9pajKLb/oqEdnMj28KlEQ?=
 =?us-ascii?Q?SlMC1CT6otMGvbBTfBhPagMgPDbvTiIrsRg+pcoQ9mPvwwJEljTLtvxXsF00?=
 =?us-ascii?Q?Ls255useeesLohqM01fjAoTZUqsr7uBOZ/iZo4TaxzJLgvdMwowMdmPf9nge?=
 =?us-ascii?Q?j6DeIR6s+zzaFxijmhY3+jNZGLRGPKt2Tu9ZoedEK2Ki7Tg+mz36E0erWKqF?=
 =?us-ascii?Q?sce/TnSRqd5dY0UbqQmlwtci?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85e88a46-1924-4cee-9292-08d935019944
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 22:12:03.1168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ksI31XrTDb/pm5TyulExDpkx7MQQmekiTp/6OICrXffXAZTtZU26c9GLBTVpaJHaaAJYkac8QkSYsMOSLw8n4HHL/Z/eTNmVaSXGg5M0zMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5661
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: do not abort devlink info if
 PBA can't be found
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
> Jacob Keller
> Sent: Tuesday, June 15, 2021 1:14 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net] ice: do not abort devlink info if PBA
> can't be found
> 
> The devlink dev info command reports version information about the device
> and firmware running on the board. This includes the "board.id"
> field which is supposed to represent an identifier of the board design.
> The ice driver uses the Product Board Assembly identifier for this.
> 
> In some cases, the PBA is not present in the NVM. If this happens, devlink
> dev info will fail with an error. Instead, modify the ice_info_pba function to
> just exit without filling in the context buffer. This will cause the board.id field
> to be skipped. Log a dev_dbg message in case someone wants to confirm
> why board.id is not showing up for them.
> 
> While at it, notice that none of the getter/fallback() functions report an error
> anymore. Convert the interface to a void so that it is no longer possible to
> add a version field that is fatal. This makes sense, because we should not fail
> to report other versions just because one of the version pieces could not be
> found.
> 
> Finally, clean up the getter functions line wrapping so that none of them take
> more than 80 columns, as is the usual style for networking files.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 137 +++++++------------
>  1 file changed, 53 insertions(+), 84 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
