Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B845D358FD3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 00:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A70B60E1C;
	Thu,  8 Apr 2021 22:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QjrhVKDhyY28; Thu,  8 Apr 2021 22:31:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45BBE60E19;
	Thu,  8 Apr 2021 22:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7AF11BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E247F84A55
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 74L3UhmGDc6I for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 22:31:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C4BE84A3C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:31:00 +0000 (UTC)
IronPort-SDR: IkVVPQB4M0ndD8RD4sPFmmCV5lWMnw+ihrT+YOlXIXIwHqfTVpQseSK9FC9kILHyKlt9sJ1XkV
 /NI/09T9IQjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="257625396"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="257625396"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:31:00 -0700
IronPort-SDR: MtuOR7yRSZcBq1UlQK6miZ3nwXtbWc1XaBxgkJr9zuLw65LinHV4CADR/iHgeAKhTNN4aX/edG
 v36ZVcxpAozA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="613510065"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 08 Apr 2021 15:30:59 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:30:59 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:30:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 15:30:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 15:30:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SjdSHWfa5r5qbZNTZpSXNUMHySN74iSHGC63JRtwkSdfxOof6P7z/TjMw8SKNu4nM+wOTlqOmwWsx08jQc4oEIVzR8ONHcoMmHmdo2yo6pkXOb2V9asxhgPeivsQ76i56yB5pyRd4TDgh9d8C3R3Z9blgMb/OqOCx8nL/yYOA7kFwMmCbEVg2xcxDfppoymGxFeQ8yicUm2QlYkJpOtj5jksaBLPep7NvuJkbV9ooz4XL2Hy0sz8a7GVB1AaoxWFIbOFbNLLXqCir5M51sbiESg81T3P59PoiPtqjw/+5BnBZIR2CaU6IlY2XapOVXhPHtaNMNIbx9HjHjU8WQQYGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvfDUHlPfoNEk0AWLSGD+OxfsvR1aTn/6cOc6AlRPl0=;
 b=Ed6PaiCnK5qVE0BCSAq0GYu/CTlY1vUuZ6uugDvaxOO8tLWsCmsR+wRtiKur7Vkm0YrlbiR/8OoPwbCdPeUBEXXEUtyRSJneyo2yoleDSseXswr2f4w1slm5HFvp4dOqhA6PM76EM73YgZu0ZbHTz+BPrrLsnpKS7l5f+MbiRqGm7uWXDhLAV7X6cycysaLuzUP3hbMSj0b5aC/I4oyEEl42Him2Tvx0auTECOkwAswWnSwdIyJegrJ53X5sRlAxy3JB2U4hKX1Z9a2A/4Om22xc4vSlp84cdhLWwDCIcw3dr3BWPTSvRudrFRfsBkMKZ2Znftw2sv+PPyOXDL0mTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvfDUHlPfoNEk0AWLSGD+OxfsvR1aTn/6cOc6AlRPl0=;
 b=CpBRXksriUQh/lnlgNqIEtNPPq29h969fHkPypMZZurOLMtTU8cdKEDIKoX+0NvXAGTLsqCT0+WQzzGoh/52HkoYH6S6Q37G2tziLc7EGrNNCklJD8DKcPTYAQkXP3IgAi5Teb+Jaly0BELjx5ZOjDL1nFgL58mZEvwVDENJ200=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1502.namprd11.prod.outlook.com (2603:10b6:301:10::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Thu, 8 Apr
 2021 22:30:57 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 22:30:57 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 11/13] ice: fix clang warning
 regarding deadcode.DeadStores
Thread-Index: AQHXJnS9ww4X5jXhnk+iE1Eme7T+cqqrQLIA
Date: Thu, 8 Apr 2021 22:30:57 +0000
Message-ID: <CO1PR11MB5105D0062051A62514B2C677FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3fc7afa-e085-436c-e38d-08d8faddfb03
x-ms-traffictypediagnostic: MWHPR11MB1502:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1502AC32E81CBBEFC5213E88FA749@MWHPR11MB1502.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: obMS1tUJb5Kg/2ExuIPK2mdUfcItCpCvYqQGJuxupF/56I3FBLcJ2vk3FMCBnPbhpR20eK+UGo2FS902iK/8/iVnIF5qNDL7zUMroiZIt0wBwNhZVFTm69D5Bgj4q3opEa5t5nNRFFL5ebdxWREjjSIWT0nGGPiiCYNGbhoTf+B4gkgZj4jvyyluUgKXUy5u1o8AHg1PRygh/xab9NHBmUA1nBzRmFvRkJOVlY/5BCvxVWVitB4300Pdso91dCsmOGpk71YrG8sWHcItbiDXb2AxISjmxUAhWveCHB852hpqXy948Z8qmb6dSEzh4zFTDNsbxXfTTL5WRWptVcNHI2tyYgXKGvtOfbRRz8JZ763nBxdLywz0voGF2sV/ASZ+U9E1LxSNB8XRhJ3LcebgXZeHjy0yamwc93UQHjFZxkPyWscfOo9pxMLPv0Gpzar3+yCHejuf7mpeyzNFGRA1/Gafk5z+IwBME0990uIH9S9tPh0ynNZwqMSyQK2eaiJBaR368wicuE2ti7JmL92f0RU0DeNMIrVyZf8MXUeepSag4Hd2RFzEJv2Vl+781qkBOjXMML6dH0pYnU3LHc2k8VDBiMiFSOBeXR1kD96dAPaYeVqNJdJ4RbhTWm5HLIYRCZD0bhPGs+JMgKJxlNrLK0al5a+WrEM3hTLcAyyPE3Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(136003)(346002)(376002)(396003)(64756008)(66446008)(110136005)(478600001)(5660300002)(66476007)(76116006)(66946007)(71200400001)(316002)(33656002)(66556008)(7696005)(6506007)(38100700001)(53546011)(9686003)(8676002)(2906002)(186003)(55016002)(52536014)(86362001)(26005)(4744005)(83380400001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YBqgywLrd6f1pZDGB0x/zxcUgHa1CUbt2LQ+CeUHBAow/REEb55GXcXAdgT6?=
 =?us-ascii?Q?E+MmIJcfcKHY2m4Oe+gi1bcTTgJZx/KPL3dTa58Mmez5O4TtIWQnQE1cyyFD?=
 =?us-ascii?Q?ExklLBRv/qR+vurpf1daMUu7Lme5AMAFYLe1SGq9hI8Y/ThmVcZIxg9/UhtH?=
 =?us-ascii?Q?78vghsbDmodNDgeEm8Gmpc9DGvb1IAkTUfKQ9B9MVvjucWP1jq6b7o555mvn?=
 =?us-ascii?Q?ruSU4RZab8a+Yw1MJy/z44pmBP/UnnDSrLclXLAfnOzeqDPw1tMdebvPsHXo?=
 =?us-ascii?Q?PQwP1qjYgzyxxsDKosTvMSMIbzqKwZ6THE3YOiyPyF69+eRe3kufVuQA7ay5?=
 =?us-ascii?Q?OK1kfh7tS7XzIHunKl0pR7Fqd23TC8VX66u1v+wSggXYK0MlVCjQwth58T7m?=
 =?us-ascii?Q?SR/hQaEaJcr+ER8g3qPzHeC8L20wUk3SoTBovrhZCQ8ECtF1jaYEp0LaEF6A?=
 =?us-ascii?Q?OBODcycqx3NDZdTfMZA/N106FydFozGxh7uZ8fQkP6um/XxSCVdIkp4lN8rv?=
 =?us-ascii?Q?JicZ+gvk6ygrbJq83ROc88uEEM59KN8pDb2/0vgqZ6eNv2W2s0rRVRzJFnPa?=
 =?us-ascii?Q?cdZsWo5MI6yEwNxDhSrestSSs0YYx8B1IfQiU8AicOjmbU1E9lYUSEUvcIj7?=
 =?us-ascii?Q?EERedxCbHQU14BcMYA54+aCepOBUGdjhMbOiIE6b9DzyTG8nQW/JnJYMX8Cz?=
 =?us-ascii?Q?vkEKN1zuzjeTiHsjr2/lhcSctS3p8cxBxfhCSypmy6VAAQkxkctIcF+j9w2Z?=
 =?us-ascii?Q?nIw40qCxZ1eQlC3ACqmcFNuN3QFBfeKywfIE3GbT3xsc+WcaAuzD++8E1NKe?=
 =?us-ascii?Q?slF60yhHlhRmpbb6GJrY3V+tNsHiDQfaix+ubrDjyZSQXaqZ6nOCTIhHOc++?=
 =?us-ascii?Q?qwdzjracKJNy+2XARy/4M7nExyX2nMSC2TAzvtKhnUk7W9pX6mHVtV1KFoRu?=
 =?us-ascii?Q?/E+RhVQVxsC2zbgLWJuKyyxkViQpVk9X9UvV/iy3Fr/NTaV9qQZzcDEnjt4T?=
 =?us-ascii?Q?rWxVR9MEO8D+3KwZ425lO8GJMbyWTJ7sQ8xTawx0kMXkpy86jVv4+GU/JguS?=
 =?us-ascii?Q?T18Yi862o0HjxrUt2kkbl82/SoXsRxmXIoDOS960OzZR3fon5l7PKGLpG0Tc?=
 =?us-ascii?Q?q7csnA05KBlsoalJswryHFfUrXmoSSb+uo7fxW3AUapiRhz3ShjZILXmlr7j?=
 =?us-ascii?Q?Qn3SfWBfA/TTfu6u1AQYo9xJURETRNzuIWL6T+4rvwCQ6X2bMAsRr/iL4o7F?=
 =?us-ascii?Q?vkRC9VtFxqLqz6zkldPCPlJl3PmfozbMtNa4EVSLxwBth4dk6EX0PBM1qiDg?=
 =?us-ascii?Q?+9r31Wrh1uD4IyvYgTteil18?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3fc7afa-e085-436c-e38d-08d8faddfb03
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 22:30:57.7514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IxMZ7A9u2qo5bFWULuXOqOFfrkKj/A9V9ZQNvaD56yjEKHr3aVXSuQbZFDaK7oJPsExMNOQArO/2hJLTn5YIK09h5yyjGHH3fHXTLq85srE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1502
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 11/13] ice: fix clang warning
 regarding deadcode.DeadStores
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 11/13] ice: fix clang warning regarding
> deadcode.DeadStores
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> clang generates deadcode.DeadStores warnings when a variable is used to
> read a value, but then that value isn't used later in the code. Fix this warning.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
