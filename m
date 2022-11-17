Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB32D62D868
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:51:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C92F404B3;
	Thu, 17 Nov 2022 10:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C92F404B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668682287;
	bh=UTcYlRPKv7tvE6FnJNEPAM87+OLXfgrfyIzi/NZ3Fcw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MFKi3/dIlDjamje8PeijT5pMEPNR2bQZ0VHyy3cxd/dOtSsS8UNVAPTkIMHbPn6Gy
	 mptB4F1zZMmtBCoJZTkqRrXmTXo2lhLI2fuxD27IQfQzD25vrZ8uoInsyOeqi599uy
	 MetR1NBuKRDCWMWYFh1hujOVHbuFLgBOLPqLPqSm5oHROtScWjGc1FjPtOMHJOo+vh
	 D4ZdOsAdAggkYseSeNLPzSoArDI1IWg7NhyYDp1yDXXrjhmI6HTridxy9TrRGT3uD0
	 sXuZekz+LzCEtqZsOeFmzGJGsGgevfzarVAMn7cW6thsCSjbfr68jFPwqrA9PUDR9e
	 nL3qroADCxuLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vaCfMKcPfjVy; Thu, 17 Nov 2022 10:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7213B404C1;
	Thu, 17 Nov 2022 10:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7213B404C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5EE21BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF95881EA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF95881EA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id up19per9_isd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:51:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AB2680C62
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AB2680C62
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:51:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="293215328"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="293215328"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:51:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="590577380"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="590577380"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 17 Nov 2022 02:51:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:51:14 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:51:14 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:51:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8IWhOiehElJX/ZWLaFq3SL9rs03aanutO6juimfWOy07R4yS/IKJi9ABMF5+3qVNGYzttnp3Rb9oz/S9yLNrfIdg1RJUR+bwibtTFxShpY0ZkRIBEhdpBddskkl7SVGX1ZT90Wa54rdoqByXLHQUujDKfToaLy+ybSByE4tqmOKtevJeAnUVlkliaLGMTx+O9rY6XHXhNkQ8ARUfaII7iTH5KD/mmkLbZGlOjG3vW8UISzScmAgtGh+i5tIET3vcrooG26fptEzGJ0DELmMNoQkkm+tnmSRNsCuJYn/K5Sntsf5pvselkEYnLhjWs73KSaz77dPQTmzCub4FGYZrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eN1MzZreZ+UBoS2rz8HqLKR+pH5n1gZKqgWDSX0TZiQ=;
 b=YWSGb2VNUI5QUbdgGzjNB5Z8iGFOWl8ug7u67pouqfa1bW+Sww9cj3nIVM/B4mZZ2r3BDBHM963ZG03aX+r5nTnpiTHqnjhNFZFlDHvLCdTJ459zmVjFGEcWiC4I/NxowiEBEK0aE24CrqUUsLqSbJRA18lwq0gf88NY04RrM12fxXyQUdti/SoAm6ZSN4gitg4vWM+7uiBqC9EA/TtYyORcIye2MCMvq9w9wH4DvbbC/N0pnw7SCm8TU8VetQjEcmpwP2j0kYbHzmkRIb0hcSRU60o+/p275+9SU4/szTn3Zo9Fsclviyxa+JcUUEL0Pfi+2nIFAP5OgPBezKCLXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:51:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:51:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 01/15] ice: Use more
 generic names for ice_ptp_tx fields
Thread-Index: AQHY79AYDfNxtCFyQEKW96xf/xCTHK5DBUTw
Date: Thu, 17 Nov 2022 10:51:09 +0000
Message-ID: <BYAPR11MB3367FAA6878F5250087F2CE6FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-2-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW5PR11MB5930:EE_
x-ms-office365-filtering-correlation-id: 7c2d45d6-59fc-4d91-9189-08dac889a32d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t7RazdijaxXo3tin0fUVV7IuhmfQ1Xc7lNmlcWJjA3HTLLviqTUX5lzEzQ4rKDNvTZ21pCP1ZfgYouSgyh5CR7MDGSm9mkuOObFJASnDS0mNdoXrO33huzjgeJ3BYBRQWvznI2tdFf/ytVDM9q7ycbJK4rieYL6aUvRx9aun/FdmmSUgBc1NyY2f4M18WbaAv7PpIM62XhwoNcmrLCTw71E5Jp3AezHZD3ahx2TdyytlXKa07TnWPO6f0VZV31umcKHqwZooxTXUuANJHOnuP8fTLcqzQgfL6R4hn7xleEZqbsV6wRAjsb0MfL6fdyja4wxJLnBYEv9Br/oCziBnPosDnNlgCfkdeYWr//Oy+DmxjiiDd5KavfulN+kjEPQ1rusuEkXRVW6tKcXjD7Lz7YWY02PPtZhHfHOeh85VEDdJ3y24QH+Oez2pH8h5E2lnOw/MqeRj3h8Nzupe4Rj2OSR2rkpVnxDU1hcvYo1ITPpvEa8sv8g+H3AC9vauGejpM7No2a+XPIXGsLUj9XSph3S4iMgdgdQqEewl5BNXimG1oEuIPjZuFrrLZ5fBXgvZ2odFYnUoydh1vHIWe7Rnx0bF2lDKGMrr1ISygbhuF0PuSQJV2BRu/wm4AFrV8tfnR/HgKb3Ek6+L6cg32xKBuTj8b1qY4XOpJnUHKxXLnHfBnlAN6HhmePgoriyNPhj/YbaeTit53jly5BWT7JA7StkkUrSFx7zXLclZfy4rrPk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(366004)(396003)(376002)(451199015)(107886003)(6506007)(7696005)(316002)(9686003)(2906002)(26005)(53546011)(71200400001)(110136005)(66556008)(66476007)(76116006)(66446008)(64756008)(66946007)(41300700001)(186003)(4326008)(8676002)(52536014)(5660300002)(8936002)(478600001)(4744005)(83380400001)(86362001)(38070700005)(55016003)(33656002)(82960400001)(38100700002)(122000001)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w2jTd6MNgAW8jjuvq9YGmBK2iW/6vmrFyDcYYbGmlwCRupI69YTg/5EjTPw2?=
 =?us-ascii?Q?yi2dTecIbljpBEyfdbNCCqJHNnnyBwZ51H0M3gS9bUm8Jkg8HwuFfs/+HDFU?=
 =?us-ascii?Q?tcnEPHRL7J3n3kXzqWdlSX8JEV461QIjcI6vKQhUSrMYqvHPtYC/3ZockcwE?=
 =?us-ascii?Q?pybFI+9/2lVpHVRAwCaacD3lXZXSZ2sL23aUv48k1iFytmoHTvXUwoVckMNp?=
 =?us-ascii?Q?3cq0vJvyNM2e94ZtK5DYHwldg6TDy2JdICLUK/ifKB90pP+RsAf0SGWiLikN?=
 =?us-ascii?Q?Qbjgu6NCOwy08xXaaPi8FffjzxWA+ZQ7zvWMTwMgMilFhOELpDNiaH1hdOV9?=
 =?us-ascii?Q?cZ16YavNp263EzcvdChPxuwA9GFZmGBF7e4XDf3p8sCuz1DuGgmZnbiNnNv4?=
 =?us-ascii?Q?/Xg+aQX+HYmvJpuZNt2yaa6TGcQrpnGMm0L2HO2u5H9x2yx4BTZ4QTNbTe4z?=
 =?us-ascii?Q?/D8QPo8M/swPSJQI73aRBcB8nY3hdpV6LZvhgzy7VghLYUtV3XJHx3hb88Rp?=
 =?us-ascii?Q?roXmIgLH6Lfxj6GZ36MhuDeVTZdtA4raZUZcORg1nQZM/Tc8MSabWmU3fL0n?=
 =?us-ascii?Q?8t3hujOZU8KAGtjJOoHErBY2g8FwLj7uerVgVGBO1jVD09J6COEmIXNqUG/x?=
 =?us-ascii?Q?h402n2EydeU7f+dEOXWChvC1aTJg+yn0mx9hmZMaadsXEe92a7PQswZiIeAN?=
 =?us-ascii?Q?Q195Y5VemhP85z5YtqiTMQp1vmHf1cO3aaUTXut9ufcsr/7aNcNhhW8ltkmh?=
 =?us-ascii?Q?tQZwDZHUMCiEz/uH3D9zlBacrprAHRrd1W00jyY1Xsn4rq0QvfAafLuNOcRx?=
 =?us-ascii?Q?OzQdylbet5WBkCOynOn6JrQLBETKL2ncn65J0Cl4UQ6gqZFAxDjy7pN36o0I?=
 =?us-ascii?Q?7SIybE0AFbPFHSXWqCWknQSbAfZ7jte8uAVGn2o795u0dlPyir6A2L5A5vs1?=
 =?us-ascii?Q?IO85aWruR6/V3ZB8mvVI6gDkBsti44Abw1uBrLnPqCpiE2ghDIYBkMjZpF2L?=
 =?us-ascii?Q?m0yYH/XgA9PFjIIsuRT1PFT7fE4uioXGcFg0pr36gKv1L27shZiqWzvRS6mg?=
 =?us-ascii?Q?UCxheUU6NP77S58oYz+ij5Jfs58FNtNR0cfIeQSZhVKnfBn5sC9Uai2qdBwr?=
 =?us-ascii?Q?2soOkug59PkAwg9W7kbwiOpkoRMoegZZlKOMIoPe3uvM7Hor7T+wMeGFRMs7?=
 =?us-ascii?Q?YADxzMBpaVmRyCNFY4BxBgJsmBgtkNPCvffJR0ev+M1uWMz/y/Nyxu/9QCE9?=
 =?us-ascii?Q?SD7gM1yHHIqEze8nRLaVh3YbfOCIygt+hJK3uDijNKv6uqksHiZc10pfeKir?=
 =?us-ascii?Q?DKNioXjJmRg+wlgsaScgTDXFeatVd4FD41GFEV2D8gglxuy2EgLtpCa3GLMK?=
 =?us-ascii?Q?icFuY0DI5lSxEyncCuIb9lHnm8NLU8dduVC3ByIBYxjAbOXBY+oWY1U2EZ77?=
 =?us-ascii?Q?VyuP3sKb2xV+CzC7hwQpRMDGjB2EY/V8gxikeDQS1HWk3BgutlMvb548GCPC?=
 =?us-ascii?Q?S21OnlLq+4ywaDGq/r9guVBriafDpfF0Y33y5P6BJDcTMLS9J+Kvd+FbRZek?=
 =?us-ascii?Q?aVFYrlb50I9GpiytyFawdXzOv0UyvYOsCNdBliPU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c2d45d6-59fc-4d91-9189-08dac889a32d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:51:09.9625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NnOuVkm/byfntwbB+Mj1cR9vHWCKldtLdWRk1vN7p0Rhh8G6LsXobVulcSPJYN54VCCMoZPlA0O3G4GVhzXpJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668682281; x=1700218281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Hyf7FrwXZFhMEVUv8SR43UcLIq5BHmrX3HhocpY97U=;
 b=Y+e3+lifT3/mNfMWYztPY9PQIRhKSC6rkYSs8Xc4c/U+gm1C52vrvaPX
 mEo+6L8ZwhL5l3L6TD1pnxRt6wlpCSpzXSAjDs9nuTLpb61THcnZ8r+YH
 YQbsjH0TpaU7DW1iKYO/y8nIb3Hpsf/Aeg3PpVhkZfezCh+mzciCJjAXN
 lHDqdHqZcwiIGJND8Pi+FkhUcyxPA9ttSQkE3r/RElpey6YQdFxBD6mdO
 LuUV0QNuJ6xNbW4uf6EL7nRn4tdygo85NhRLb5/D1OCcIsqTZXTbdN1EU
 KoJAeMU11uz0W7cbNv1AdZkFOu8SPR2ejD3GUvOqEBsuU8/bfYt4VBtYv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y+e3+lif
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 01/15] ice: Use more
 generic names for ice_ptp_tx fields
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 01/15] ice: Use more generic
> names for ice_ptp_tx fields
> 
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Some supported devices have per-port timestamp memory blocks while
> others have shared ones within quads. Rename the struct ice_ptp_tx fields
> to reflect the block entities it works with
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
> Changes since v1
> * Dropped the ETH56G macro that won't be used until later patches
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 26 ++++++++++++------------
> drivers/net/ethernet/intel/ice/ice_ptp.h | 11 +++++-----
>  2 files changed, 19 insertions(+), 18 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
