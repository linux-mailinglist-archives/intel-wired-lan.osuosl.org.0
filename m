Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5625E44394A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 00:03:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE2A6400EF;
	Tue,  2 Nov 2021 23:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KIVr2doChmRu; Tue,  2 Nov 2021 23:03:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BDE740327;
	Tue,  2 Nov 2021 23:03:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6A291BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C098C80BD3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQFaFRCRIMVs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 23:03:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D14F80BC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="230107627"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="230107627"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="577409052"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Nov 2021 16:03:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:03:44 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:03:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 16:03:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 16:03:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jsBIzPNR5N+yC+w2i9P16yIkkvizOQHj91G/AfDK29+HhOA7zFjE/mUhZS7HGQBzaqTdBMEFz7Vx0561S1eNZmiqSGt1mBZoJPWxc5OsWKngLtM6Hz+X2ayJwNdHqyw1Ott3zK2/oJ5uuxKH9DfiiCnqhJXK2hSUwL7Sa4GKZN3jV76xZcrQ8GFXteSznPG5F9ukLRaTgnvCjBV0v65F1Djai5ZdvTlnhtzVm5aCLdWtmp7GB31vGK1oy3Zyb0xp9PSZOqXSzBP6pNVDe1XbAnPHxv/Id/8efaDIWfidE8SQEAFjJZlQkWY6PlNpyuRoGE2dD0Uwf6xVUxPDsa3lOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uGhMCnXEACvrsKUWMkWg/a0Lw6UD/xeLNVVciWGtfaE=;
 b=W+IUWif5wX2LhXKY461xPy0bIMRwn+BE65NhgWPLK3CaIwANuXwgFQv+a+GyT3ZTK0QGjzNQlUq/sb4oGcfKE3FfUd/8v1Vqbl/L9Jf0b6Md4d76isKILvgjQTBi1ng4xH4p/ULnQQJKDBirWHtuWOta2nMFQCfEOfGG09l0bcABSpTL93676G2rSWFLkc2vcOfF5N5p1AsHsFYrW6Qk9VLdAqW2TFRk2nJPJjsfEb5nMNXX0mOvkaSy9oTgVM/RNZDjTmJloR3vl0NFncveOrbX/9cThlqjBWyaoiesk+Y1xERFsB+ltWBVOo9UR6+zv4srJG6aQIGnnedPKyRfGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uGhMCnXEACvrsKUWMkWg/a0Lw6UD/xeLNVVciWGtfaE=;
 b=yctPTlKUfVxyg2SRSmyNCMDGXjKFnVpOBNjEXwlEt+mUNtwCYXjmy4cqN5diTXbVt9FT2Y8M9t1o+/VMcg/7Yja/gZhkpqbaWTE2lTxsDX7q/NZ0qNiS9o14K9jOp7Yq/INgXdPUFCh4Eww1BrtJ3QuhYHlltpAuko9eKY+ow5M=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB2946.namprd11.prod.outlook.com (2603:10b6:208:78::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 23:03:43 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Tue, 2 Nov 2021
 23:03:43 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 6/7] ice: refactor PTYPE
 validating
Thread-Index: AQHXepI0wnhNGADt/UaXSVAqOjjcNqvxhonQ
Date: Tue, 2 Nov 2021 23:03:43 +0000
Message-ID: <MN2PR11MB422457026C8A375B4073C8C6828B9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
 <20210716221644.45946-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210716221644.45946-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54496138-0361-4906-5c86-08d99e55045f
x-ms-traffictypediagnostic: BL0PR11MB2946:
x-microsoft-antispam-prvs: <BL0PR11MB2946BF4A8C161AD316F3181A828B9@BL0PR11MB2946.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8woBaI3sMFZLuCFa7nh/DETwzkhVKToUZgVTAU+2fpPrrEc+4LQj/uhhUuMgY6/mc+oTHujLpnaZSPRO56dJdSrRjWwfmyjrZrrzW6cAcgYSTpw0/3CGPZvaeHTEXznNH8osL7hdKTVSToLXV8pXkCSrTiCX5D1HYI/OXWU8x7FlV5iiVrIlTXZWjiU64+Cp8ZqeaGkfsB8MAsZxMY4kHOC5F13Rx7irI5cTF6w7YkxdNezkSqM719wCs7d9MWw7/Z7WyjJybcbJJm+/LyKO19veO6Hk9ElhOsnHyO1erIjzCYH9rGlg1KkL5fxlh09eO1f46VtXjhLD2zBElxZZxIGzJSD4cZjBMU+yMhSw2EI2tQfBKNB8UILACTMTp5ImNRtF8JNC357TvT9GtZNe11CIMwN02gVzA8yg1yyeETCTK0TH8XEsjyfTS5i7FgUZ65bwaEAgDx/VsSb9LqzkprEc2bl21kVJRioPhwsCAsSNTrtOFSeR/r9v64S2D/vmdwetXmc5eZM2QhBGyhZLrp/1vBLo5Vm9vU+uDsASKZs3FLtPptvONw94aDV8hUUfbO54rRLfvazXzes4cDL8FN2QRK+TYS9+VCJO7c4ZL9MX8LZl/Spm8onsN0PJUBqsaJ33xbmdy4InxvN2rybRuAxub2HxOCZbWsXt20Cf46HUoXXDv8wH4Fu8J72g8+tscaeDa+Df1UjrNxiuhSuGSw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(316002)(66446008)(4744005)(7696005)(186003)(55016002)(66476007)(508600001)(64756008)(71200400001)(66556008)(122000001)(8936002)(76116006)(66946007)(83380400001)(6506007)(82960400001)(9686003)(52536014)(86362001)(2906002)(8676002)(33656002)(5660300002)(110136005)(53546011)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4IFgwLYW4HqSs01oaE3RoSpwMaEDyr25DAeLK0UPsdcTB7ybBw5h+c0x4nsm?=
 =?us-ascii?Q?LrlOdrdbvvPxl10bfmA+Uw5p+/6+Lf4CNkkJxVoSsVj8hHUhiZc4QfeNgNtX?=
 =?us-ascii?Q?AkpBKH4ENPxNp1I0KeeCRqRKzTkTnbFV9wFj3fDnqRrPDJmf14owMfhl56yj?=
 =?us-ascii?Q?/qVdtILphDI2tCDB3Lta9JsmFLC791/VPgByt5Z0Xm1SaekMqfb8IrHZmuOf?=
 =?us-ascii?Q?TiPaZ8NjWYJ+4dqdLzmsWKc1fAQSa2dI7pDQjROCNA6Q4K3VBOHo7gcQoYjC?=
 =?us-ascii?Q?zNMHrw47RuElFYUhgPYmsxztQjhVHoffsBuqrzD/lMGwHErOsGuTblgKPJU+?=
 =?us-ascii?Q?Ca+BaH7IgHmZafDPXmBdUlPTmd7Y3wIsuHIclB1vyqhBgEQ+AtnDTEyIOVD1?=
 =?us-ascii?Q?mQZFlr/DYTZCtrTLhQll0Ma0vc8UPjrl21ibySwjS8dQQW2rjQdTndCqHxCW?=
 =?us-ascii?Q?md3SVS+JdbLBMaecwMPqSibNL4wl0x2CbI6QIojsyCndiMk3qYf8w9vWf4Wo?=
 =?us-ascii?Q?vEpwCX2fxJ49NEfOKrPithwu3np6/DmBEf3I94ILUrkUWHvuD56ghsGJ/UJm?=
 =?us-ascii?Q?2DsI/M0tyuUPIcYnUIzZHFm6PBX5hMBGPVqzHnix8BjxeaBAzmze11lXX9ut?=
 =?us-ascii?Q?NCzwTLyCcq0WQDRt3oxJG5QOlSGsVMokCwZ1ecUYlC4rjw1MFCq02izEsHX1?=
 =?us-ascii?Q?tN9iJdlvFMvexC2uSndRdS77wHJOsg+5AC2K66RqKsusMNpTbwYZ8hW5eN98?=
 =?us-ascii?Q?AD20lQg7m6J4ccK622pFxM/ZBHaq6VHZ4a6HVMMJAAmPvBYway8ojaT11OCX?=
 =?us-ascii?Q?b19LJmyqmqe5mlPSz1CBvzHtyReYZ+sNhb3TjMSsrhFXAm2/sGrgkK/9b0Tf?=
 =?us-ascii?Q?elzxDDKIKV1a6LnkQvhMNJ7B7oqnlbEbrKgDob2bQtB4q7VNQznh+HdbomP8?=
 =?us-ascii?Q?C+8xThjWBBHe/bWg3psxm69l2q7Ygl+CquFMw7OQ3tfKK03Q7gjjNox7Y0bg?=
 =?us-ascii?Q?YxM3qc7MvtD8NqCZgubczUXUzy6MiUn/U6H5cI1dXufWPBkxP6B9SjNUmNaZ?=
 =?us-ascii?Q?Ot/P3mUzw5LBW8C3PUhyF1ernM36a0lqO+OpAixKD2d28J1myZLkQsqk/ogb?=
 =?us-ascii?Q?McK8w2+rpugrBF7Vs1cqmssS53svlnsoevT0skC+BE1BMpktMNyUupGE9H/P?=
 =?us-ascii?Q?TuZtVOsAzN7im0adKat3r3JViHSgxFTTY1Kw45ohyhZYSLanQD0swlNRzu81?=
 =?us-ascii?Q?T7Nd4weZQRxr7EEjzVY9tKEVOyyVmFfNkm7KbS77JOWdakgsa1J+3liPnlpS?=
 =?us-ascii?Q?Vx3Ds6WeBcmqBl/c4+FCKvam3HBXGGmuslBvs3lmOuc829s8mDVBtMgwaEhH?=
 =?us-ascii?Q?hzOelaEQ0d7PNy/F2Vjnj1z8zB1vSVC6sqlJguNwZjWscw8A4yXkl3Zw+ZX2?=
 =?us-ascii?Q?wa9VInxRw4kgMx+d+GTJ79zOB1vN1vjApFFPQ1tryutsdnn2elUjTcZGT1Mk?=
 =?us-ascii?Q?1P+jltcfoSiZk12ZA9Krbz297N622ARdtZ9kKowvxV2RutA0vMHgIUeYum7B?=
 =?us-ascii?Q?ZEV52BpeWuxwKc+kCkq7XwceLCNFrNK9VHL5Rjel8zDsfU3CV0EW4T85hQI8?=
 =?us-ascii?Q?U7LHIJ/DwzfoJjR22lO06qo7kiDZk2qWh7MNmeZIf4QjEgnGbILMEiCXOu1f?=
 =?us-ascii?Q?v1cAGw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54496138-0361-4906-5c86-08d99e55045f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 23:03:43.0913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8UL2tWDHiVWgr9LXda4mK6RUzKrdRm19O5D3W2nMoHT0dgw+B9UXRk8EAFY4saQUmGzfv4FjZabGdLiI6Y7d/WCKIfHwf+8akUX5mWlh6sc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/7] ice: refactor PTYPE
 validating
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
> Nguyen, Anthony L
> Sent: Friday, July 16, 2021 3:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 6/7] ice: refactor PTYPE validating
> 
> From: Jeff Guo <jia.guo@intel.com>
> 
> Since the capability of a PTYPE within a specific package could be negotiated
> by checking the HW bit map, it means that there's no need to maintain a
> different PTYPE list for each type of the package when parsing PTYPE. So
> refactor the PTYPE validating mechanism.
> 
> Signed-off-by: Jeff Guo <jia.guo@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  22 ++
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 274 +-----------------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 207 ++++++-------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   2 +
>  4 files changed, 133 insertions(+), 372 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
