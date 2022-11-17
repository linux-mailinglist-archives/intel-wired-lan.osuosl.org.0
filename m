Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C2362D850
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:44:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC73E6103A;
	Thu, 17 Nov 2022 10:44:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC73E6103A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681884;
	bh=Gq7Gy2aLHyrtU1KB8QUqziZg74g/wfLC5EWrxm3qUoY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GmNM7Ull0QvDbWAj87sV9MUQzSutmbTZ8lqm+05O/Sh+B1jcLkKo6gquIz4g4NvMI
	 Lgs/vWEOrdOHQqEX0z/lNyTWxyVKn4NFo1J7o8pezyxmS0UfWc9sZ6yM2TGzNvtYcS
	 43P7X4WVauzrRePMDYoGM+8X+g6lQkWbf/jeDWiWi9N0b0E1MH4Bj2H5FiNPFTUb55
	 tZN5iITRjK9/5JBISll/wpUvecPvme5qldKQLVOGJrIN26hzdnS0eUgkgybLnrZSTd
	 gxIQEdDOIoaQMDn4ayed1chyGVgW7FFBKkc8iQ+Ijy5CVZYcBkmFMjCDCmh4FafyjX
	 4M7Urs7Q8sSxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6j-xMEZvGkQ3; Thu, 17 Nov 2022 10:44:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9683B61039;
	Thu, 17 Nov 2022 10:44:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9683B61039
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6492A1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C06A418EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:44:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C06A418EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L9U7YOI_Tz0i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0449418D5
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0449418D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:44:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="313967420"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="313967420"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="634013833"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="634013833"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2022 02:44:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:44:35 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:44:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:44:35 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:44:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OF7bOaDMT9FgJozMI9MTso90LPhWU5S+v0cq2EhjlxRN9/JDrJd4ascXjYtc+izuP1sy7LqGYw73OFbL3UqaQd1tXIJ1ZFpSj9teNAPxQ3gRwIvN0+8oUEu5by9AcmvdX3KDmgmpCyH9mJMHeE2BF7+zIVvNGemsUHyp071RKbdItSWSIJrSxG6dUr/fgwnUFMp7WOoGxsssz9z+RJQ+AKYYfW9VWBbhJUbsmDp1REoJBUF+c9SA47+CscfY8zZbGcPVYmk7ovC68YG9UaQEs9oaCn5SsdvEa/NNTK0VTBa/TddrUQva9/3c1VXxVFxMLRhSbwDV/MRdceD5g3YapQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tILuX6jxMlB0dx+0q6NguXgMf+D46c28r6i5EIOItu0=;
 b=WT/vmUGFLJthuWR0mY972sBfmLmNMyrMmBHkmyyYydzSItHjTwx12jKQk1HWtCvZsKIvrfD8zx/uMgeXtyApCPamYbBby776EtAvuN1Ia9OLLKpTIYwxOw+/bPT2THaX5enujRzI3LupNB/o7cz3nWKlyGKhazIeJPO4M2mLjD4VhEr/2NPx9ssaYKlxdMHOkSAfh9Z6uQE8xcRZeVlzj0BbE94tgomPIQIXXCsLdvQIN/8+k624DqwuOSHM1yw88IgUAmBDmGMCkNuf9Tth8btGJscO7DqcdtSDTTGUO/8W2d6Y2a8KEfFTFyyhigUGIbKtNl1aQlojIXp7NdBNdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:44:31 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:44:31 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 07/15] ice: check Tx
 timestamp memory register for ready timestamps
Thread-Index: AQHY79AGBaESSCL9RUKxCDONA4/AoK5DA14w
Date: Thu, 17 Nov 2022 10:44:31 +0000
Message-ID: <BYAPR11MB3367032A2EE65DED382594DBFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-8-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-8-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: c77676a6-6a3f-4eb7-4951-08dac888b5a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LQt8dWN4k/u2Js8hztOw7bPcK+50sHe1mSGkZbDJOR9Vph2PujZccMdofDqD5EOmqdzn45oKfQgkY2i3Mfc18dDwhQ4yjVtl5RdBJ+zC0LX9OTK8s6rM1a4RxiiA++PTlOoxy4v/rL27bOUZup13hBPwaERhPc4VOPpAjUV5FcOSLkhoIoNY+cLzQDYgD0027dJoI2uc+1VOQwopFwpfaR/dKH9NBkKS0+Ip5pHKNe5yeevf3ahphqwMTX50jW2B+sPEOop70mVQSkVTeMIW4Tnn6TsQY4+7H2u1e8nN5Wr/6lqjuOhxpluWw8vdPN518l0Fm0w8Z2aqm6Y7yWpjKd7sa5zyAlfF1bh2h/O1QtegUAXOXWnw72jW82PFNcRO+ZzcHQLIkS1hfPkn4ACG96XRGktmgiPh8qFkKSYoA45NkE5um5a0hOtUQi5BCubnS25GZn3Z8Lt/KYcdZ31OurAE04/9a20TFQeuiATMKg4zW5u2j/u94A2iUcZAOV01leTLGOtBvLFROHtn6Zn6t6oVPl5izPzRvHGaGNfPM9VdT0AARBij3kj5QBynNgWg24ASV7cCtPkGrwbTQwV68ZLaYHkJTRoHnyJb+/S69ae7xc/gT6rGGS1Ov/tP7UFwF6RRO3VpKh7luOFpm9cBSCC26bB7ZEuREpfz/NmFvmAsyRq2tWxO4A2ZSgme+S9aPyld26UTSIdWny/rCMhj2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(478600001)(41300700001)(26005)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gyoVSsF+RakSkmDrXnv2RnvioqX53Rq/3Uok6FPB5I5wbHMd+6v9w5bUZ9X2?=
 =?us-ascii?Q?n3JO6fuj57XVktwkxYO8nL8pTh8BGhP8bMKaiK5Q78Pe2Yihgw4PQBVyQ1oO?=
 =?us-ascii?Q?DeQY5O/hTDikb87K2Z+TgV8M7CHz9T0Xjx0xC53vXq5O7/nATNx7Zo9P56RY?=
 =?us-ascii?Q?FAjjAOEehvrwsP84SSlHSiauakl6Mdv7f1ssgShQ7jVDYF4W9p2hItmed3kx?=
 =?us-ascii?Q?uSE08APn4DuF2hie/Csjw2P7RM2Oe/MnRIUDte3hjc09YocrBb5QfAmwuD7s?=
 =?us-ascii?Q?eTvKfORXGHWmwPCZuIC5LbgfwguWidzj453a4ElfHpGHMDl4DGAec0VeuyA/?=
 =?us-ascii?Q?jE85gZpsUJm2PpZSXg06t3CG07mp7mKtgm6BAnhQKZYi4YJUCV1EiPDm2Iu1?=
 =?us-ascii?Q?sF4D8F/1VZMAwKwhksUiJL+WNzsErVfxzHPrjVXLk61tEu6aEpOwlwyhy72O?=
 =?us-ascii?Q?71Vd3sPwpZLxAeMbZICemCBi2awyGkotwxS8/PNTPJ8yWGly6FSa3AD+Ci/Q?=
 =?us-ascii?Q?8638WKROzs6XXmz7oDFPNvNmcjzGyF5hv4pdX95nfsCZATC3loOUeKf409qC?=
 =?us-ascii?Q?h1nP3shCtgYHPV5Jo80v4DCRcjOtaYT56JantWEuI1+cJgLCFcuIYyRcOkFu?=
 =?us-ascii?Q?8t9bj3IEOwhfVqdUTFEk2Wt9WHOAh+Za9SihI8QzGg/nBPkf5nisR5XwZqT5?=
 =?us-ascii?Q?ZqlfqPbG1zfQ6CURFK+sw8MdH7oo2DtnO5FACm1pRin8mSDwkHxVnc4wZmJf?=
 =?us-ascii?Q?kbdA4y+huGbPJfqlbBEEoXzceBg4x2IWNQZzEmVP7tiC8Y1o7XHEhMUsFBlN?=
 =?us-ascii?Q?f4XGQV8Y180xgoHjb9ZZHL4Bdy3mBKuDXYTChKvNrwEggkm4rVfLsCqFuez4?=
 =?us-ascii?Q?uZ8uuHFTtvww9LpSYxWuYluhgEh6gYdG9ODFTHs2c3G9srA/DsSTt6N1XWIW?=
 =?us-ascii?Q?ebJT7e+8zrp3PlGuOWegAIyPfUfQ8bjmHhrk6ErvLptBnA7KoCrlWcSpc/Z8?=
 =?us-ascii?Q?jmTy08t/6n4zfnfnxv/a12XD/qVkLKKalkasvlYIz7cOZ4ZVs7yZJq8VVjgd?=
 =?us-ascii?Q?/x6nAQbZvI0Bvo+j0WDOT1oAF/1OcO4rz7RvSd8tPTeg3aEYwCNC1/U9RV0u?=
 =?us-ascii?Q?8YSO+C+2u396A/I+kXpcpqj6PwxjOmPOjRdUiXuk0RKPK7Oo8ViUUMUWvqcy?=
 =?us-ascii?Q?8FYY8uqrNasD9T7rLbVD39OFpmOow9YmBd8qoVRa71nxUiIg06rHZ7/5cgZI?=
 =?us-ascii?Q?sHEM832gi/1fELfZVRbOFaHh1CYOisWOLE3rjw6kKlfH1ngaYTZhhQveiFxH?=
 =?us-ascii?Q?CO9wbGt9ojNxV1cQz4wy4/5Oy6XEO/WNweF0XcrkfgRwm5dW/T57ujDVWuHX?=
 =?us-ascii?Q?Es+Um2KOxCCFV+2NdG93ordfj6r0VKb9fEuKlaUs0KbP1s6fgnQ+NOZ70tc2?=
 =?us-ascii?Q?doS+0Q89wU+OZsSp/oB4gE06RVVJJJD5NedwM/tBJ/L7hpWB7xRHtggqPsjz?=
 =?us-ascii?Q?soObEDmJ/fkw7f9kneIHioON6CyhpuYNN4YjF06jgo5bq/Ar9ZmO2gMztB3N?=
 =?us-ascii?Q?0JxyI8VrkUF9FdLPT01bTkZeSxXobVxeBMasZFV2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c77676a6-6a3f-4eb7-4951-08dac888b5a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:44:31.4740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 60bs85ZcaRwRL9aobCL9yvE+V9+VKKQPSyFaNOAQ8xmAaZznaboS5x6aTsUY2gPmiq9EQSEFgDvEFXCDCF8niw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681876; x=1700217876;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DJ9kTUw/Cg8v3PDbujTeNfjHSkwAf6T+0kPF/BwkjOU=;
 b=F51UhNC/byB9kJCAFs/eYoApIcCRTStQJQPIPmzf41PKRdTPOQ0G2UOU
 ukwWUoIWC5aubZ9wQ9UeMs2XezowIyH5rH5NcA8p31EEAaVmK/OiqHLAw
 H2zZBgmQwxbSCXMIIpkhqM1moOcA/Gq9jYIjPdq4JZbyTZMeKKwttn0q3
 eN4OOeyRJdIr0kQhAJn540G8ldehzqgSi5tSmrYeQP7AEQj7LjT2KEy0x
 aoGa0xCXwWLNNV2KKJokt1D/K0rIgr1XbPKr3HjnXfxqjPY56kwEtPjwF
 W2tNdU1/gfyx511nhWDQEV4HiqIeDZGzJg0+5lBBlxq2J+5zqEG3vOvRd
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F51UhNC/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 07/15] ice: check Tx
 timestamp memory register for ready timestamps
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
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 07/15] ice: check Tx timestamp
> memory register for ready timestamps
> 
> The PHY for E822 based hardware has a register which indicates which
> timestamps are valid in the PHY timestamp memory block. Each bit in the
> register indicates whether the associated index in the timestamp memory is
> valid.
> 
> Hardware sets this bit when the timestamp is captured, and clears the bit
> when the timestamp is read. Use of this register is important as reading
> timestamp registers can impact the way that hardware generates timestamp
> interrupts.
> 
> This occurs because the PHY has an internal value which is incremented when
> hardware captures a timestamp and decremented when software reads a
> timestamp. Reading timestamps which are not marked as valid still
> decrement the internal value and can result in the Tx timestamp interrupt
> not triggering in the future.
> 
> To prevent this, use the timestamp memory value to determine which
> timestamps are ready to be read. The ice_get_phy_tx_tstamp_ready
> function reads this value. For E810 devices, this just always returns with all
> bits set.
> 
> Skip any timestamp which is not set in this bitmap, avoiding reading extra
> timestamps on E822 devices.
> 
> The stale check against a cached timestamp value is no longer necessary for
> PHYs which support the timestamp ready bitmap properly. E810 devices still
> need this. Introduce a new verify_cached flag to the ice_ptp_tx structure.
> Use this to determine if we need to perform the verification against the
> cached timestamp value. Set this to 1 for the E810 Tx tracker init function.
> Notice that many of the fields in ice_ptp_tx are simple 1 bit flags. Save some
> structure space by using bitfields of length 1 for these values.
> 
> Modify the ICE_PTP_TS_VALID check to simply drop the timestamp
> immediately so that in an event of getting such an invalid timestamp the
> driver does not attempt to re-read the timestamp again in a future poll of the
> register.
> 
> With these changes, the driver now reads each timestamp register exactly
> once, and does not attempt any re-reads. This ensures the interrupt tracking
> logic in the PHY will not get stuck.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1
> * Fixed the commit message to use E822 instead of e822
> * Removed the unnecessary else reported by Tony
> * Replaced the ice_is_e810 check with a new flag in ice_ptp_tx struct
> * Stop updating cached_tstamp field if verify_cached is false
> * Convert init and calibrated to bitfields of length 1 in this patch instead
>   of a later patch in this series
> * Fixed the alignment issues in ice_get_phy_tx_tstamp_ready functions
> * Fixed the kdoc comments for the ice_get_phy_tx_tstamp_ready functions
> * Updated commit message to explain additional changes
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 49 ++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_ptp.h    | 17 +++--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 72
> +++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |
> 1 +
>  4 files changed, 127 insertions(+), 12 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
