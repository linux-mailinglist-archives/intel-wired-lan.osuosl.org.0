Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA83D495C9A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jan 2022 10:16:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D2B640977;
	Fri, 21 Jan 2022 09:16:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v61obnhXZZIf; Fri, 21 Jan 2022 09:16:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A702040949;
	Fri, 21 Jan 2022 09:16:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A13F81BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 09:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 989F541651
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 09:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a_cpzoTZFi6s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jan 2022 09:15:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D02441608
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642756558; x=1674292558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eSK9WRQPCiDUUDbnOrvOrNH/0aeA4VAa6kFZia9s8kE=;
 b=CisMf8AEbfs/p2sq71uHZkZmAsTEQCDukRJu4SRX3dXf0NsbPvk0T40V
 kU/kMweZf9Wuph/j+1r3vIhKnViOT+G+Qx0ebdHSOGBoCni8vbk0eosTj
 yEGBmSEPxf32608UYvr3yNtU93B8hlY+kFBl3FX1ANmt3g/3XvKtjsSnt
 oPp5/DpFVZ8oermWpw4A4gINFV2mV8YGmxakHrwWuJuLGDL8SxBjwz6oc
 uGRLKmkoiPBLWCLwiYMsqy8P8Lm9hw0MxRDEeUyWFWRkajN6qjLVPHKj/
 JoMgoezZbavGu7R7/XGzcegOFwIhJjbw0lZA0SvXAe30dpGlyFGeaBac5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="243203891"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="243203891"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 01:15:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="519000117"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 21 Jan 2022 01:15:55 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 01:15:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 21 Jan 2022 01:15:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 21 Jan 2022 01:15:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGTJwMXtIdmHlUIIN+kuaXZhAaeOqOLf2KSDCDKeJqbxeAMKRiR0yFoJGxEnCYZ15YulBr0dBIiOzp9rJ2/deFcQEiVdf9NbpnlyKp1SErW75kLnmvbYj7Pqj4W4bPl02GEgt3QBw/MT7sVKgdv66V41uzAC/SeYzfC7Hcy8Q1HlSjNIboijsFyYv2axITMm4zK/5vnHPw/bHuwTXXmwtFzJl4e6lql5ztAPO7XZjHE6oX/IykWH72lESh79TGnAvfMYGEzka3rLJ/oOBANZY+suzagboazZsX3UVwgOlAP5RQELQccJK9j/H928CDcs5ZCrb6yCBH+LBl3K0W1F+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ai83oJHcrlDip+M9V/Bhlytacj4Wj/lkXV4L5gwZuZQ=;
 b=A7kE4lnkT1edyUC7HIJpEgrDgTle1HxDgnsRRN/lqF8LUCxpNBZB5CiCVEI+CMgBXpwOy1cNal+HJhzVC4vnzUZopmg9mcSmUk/KkhbeqgMSx8BvEMKd4srZUfkYKzTzZbjOB9WKjtuxM5+cc62sc1lYuEdxU937Tx+C67sua3hyHx5wh9AIg5k/Zbu0y4VwpO9Bn//giaoagd1QNEkoLbc2OkrVw8Go2HnuZr9FUQhQMpwz/SrqrcA3G+v+r8SeoCpRYlQgPep5YWQ5Een0Oe5B6zKOx/q91KemPBNC0HeA5+dfEaXd6JrwYv15eoGvlGstZoqS8O6CvBsRZUPU8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB3630.namprd11.prod.outlook.com (2603:10b6:208:f4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Fri, 21 Jan
 2022 09:15:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4909.010; Fri, 21 Jan 2022
 09:15:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 2/4] i40e: Add new versions
 of send ASQ command functions
Thread-Index: AQHYCUl3oFAGYqvAGEOALMEn09f8naxtPEDw
Date: Fri, 21 Jan 2022 09:15:52 +0000
Message-ID: <BYAPR11MB3367556C56A9C79CCC190384FC5B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
 <20220114131931.346687-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20220114131931.346687-3-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 432b2e00-f1af-4a66-c273-08d9dcbe9f65
x-ms-traffictypediagnostic: MN2PR11MB3630:EE_
x-microsoft-antispam-prvs: <MN2PR11MB3630DE0B2FB71F13681FB6E5FC5B9@MN2PR11MB3630.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UQUy6csDmOeSL5epcQGihaJxKZQHhtYfGGWYicXIg5df6vXmZVIOMmE5SsitQqYGLw2Gpgr/qfS75RbSCgctmMYv295vbojcQUy3QVaebRpk1GcMIsv4Wl1ZpanKpBRmAvFG/M01pzPQt7J9tGgFfVZywWJJmN8eBO0c2+TKgcnwgvy1GxIJ3h+72OJrB8xUEGmt5kQP6EvOFpsga4dCKQeINM358YbVhIBkBxo06tprqzUHZLIuwyDgFADZ6KuxYkCiFU7Pi2ApnRrAfO+Qg6fuWzwqEm4eg1fFL4ztfwx3uP53sK+Oo2eAefYZqE8uGpnaXwsECP/XDS41Li3Iyntlp+q5l5lVk2cDCcSt1yvSmh5GBxUksn8qR2a1nFJANpG6o9h5sBwXBifIZGAQsr3xgj2zQdxZvCaGXUflmSd8L8qSOZUA8Dw6nuQMsGfzyb247lxsAcHkWIuAUCvNdIujv1jeceieWAgXH0ZgkvukfJ9DIkh7fraLujwSqx/ImeO33ZE6Y7R/KCrnGf2lPSCeyd2N5ql2Q7R6SyBoXN7siR4LW0YCpVE307Kzcfyjx9ldA4T1+l8b6TusSCcDO8TR+njDDVqm1Lhi33RVH+6WiR3iVJDKAW7j0CeP64ZZ+hTbuk3r/uytsOehhzcztiuennsX8A7hK1bIGwax80QCIhIkBtAu4RmjrOdrxss7qc6lFcqypXn8t++blinOJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(2906002)(86362001)(71200400001)(76116006)(54906003)(110136005)(316002)(107886003)(508600001)(8936002)(33656002)(186003)(6506007)(7696005)(53546011)(5660300002)(66446008)(64756008)(66556008)(66476007)(66946007)(26005)(122000001)(38100700002)(4326008)(82960400001)(9686003)(52536014)(55016003)(83380400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rm5MAA4IBGTctzcVnYwVcamsALIiPh4p/8wG2YkMGcGi/CooHOs3ja79mXJV?=
 =?us-ascii?Q?DGnWbvYeimZa2N/wXc9Makl9qV86ZpizF4d3EGfYjI8N8MCIT6cr6W51wTFe?=
 =?us-ascii?Q?hCX7kBlwRIPwnEnpwD3vTxHsHI43TS7fNQQLY9JMIGnBYACqM39E6sdRPKzV?=
 =?us-ascii?Q?TZFX9YCEl24jRpYVJ0zmUCiBmhbliONST9tf1vrnYnmcnBvqJeD2nvwMEano?=
 =?us-ascii?Q?pTMJdmAXAf5+voRGeI+b2On7MvT6zxlRUlXvoP64PHMiG/lQGIGlzkh/QXM9?=
 =?us-ascii?Q?UM9fcChtrVaeAV1BZiEl9Jek8CzcYF9R0flZOauOLuJ0xgxUiKXayR/EGvPn?=
 =?us-ascii?Q?5Qp5MVPEQiJ+m19rDvGeOYYWx7znzkWp3FYwXboyaM58LqcrpBBwVrCwLNDD?=
 =?us-ascii?Q?mtnAK2DO3STMdHpe21dkyvZ3LBLu2IcB+uo19N5cSC9qVdkAa+u6BxLpjnv4?=
 =?us-ascii?Q?5bLyJR65g4OEP6GnjfEn8/e+A/QZKPSNI7A3RDmw5h8GZujzseNu6QNCORgg?=
 =?us-ascii?Q?/3dvKGq/B3QI4ivJmPmZisCeNna7CA2aAt3fmIVPF2sl8aegASJRW3B58UwE?=
 =?us-ascii?Q?99pNGTixUKKgnrw9Zlk64qIFYm6SaGr0BXCLlkUNSKyuILI1Ycw0EAVTAzYq?=
 =?us-ascii?Q?8PsYeqazEslRODnkGSaF4CN0Vk1fqUKCBY6d5+66Aas3sPLsj495piDfk+lB?=
 =?us-ascii?Q?EZUFxV227LYonoqd7GbrCXT9LOTVY5XvbSw1J979j0FLbqRfFRlyZBjVRCEQ?=
 =?us-ascii?Q?tpSrlUft0I1oSFjK77THs9M9SuAiQEMZ8Su+qaFrdPulTpghYjptqkrE/t65?=
 =?us-ascii?Q?6AeltREvwO8QDTWLjgldf2ijEyr7x3uSQ8av8P0oP69Sm09AJy8Qvuww/RzX?=
 =?us-ascii?Q?4/MtRmB7w50gtFH5sF4+kaUpEPXFiYRkkG50q6fincdpm28V79kWoNtgleyx?=
 =?us-ascii?Q?MqIASbjiEtw6dIRhDB5bvGEKbRgiFi+cKAllFnScPV++G/InrS5lZ8tdJHZk?=
 =?us-ascii?Q?mL12hJuOPiI2EHRF9IijSz2AiI/C5j/lnPFrHk+b4r0YpdrrXEBXhawf3vFB?=
 =?us-ascii?Q?solAapMVxPYSX1YQNl3hjQXm7xuRioN+MoxMgHUHu9xU76vw/pu4DRWWvle1?=
 =?us-ascii?Q?/zVAp5V9CwnqgFmGTD6Ox9+9jthpxwT4r6wFFFJbf/AYRBQgEOyf827FO/It?=
 =?us-ascii?Q?ECjVLuDoXMAI1r8TUErvVMsTJKFcrh0KyJ6KVA8BqmcxoW//lG/cWagXGih2?=
 =?us-ascii?Q?H757okneEJZXpIsd85E7Ei+hqS65pZcQBTBR3Th9+Z6txbvv2pWid9CJpYIy?=
 =?us-ascii?Q?wckiOmEefR7MueJc+qL/VrI8d6P2MnsUI1WozBxbmNS9eBZUu1qfosKXCnYD?=
 =?us-ascii?Q?iN6gHVqiw1CPNLiA9yPKcjNlhBsQFofgjx8une6qLUh6qr1zu61a3lXMNsR8?=
 =?us-ascii?Q?i6iWBfHxSkk38mtuTZ311ctSvOhuaXsaeQA/47/H5r5F1YwbmphvibpjwZRQ?=
 =?us-ascii?Q?oFHSYISucuX4uzKP/nqFlpOyjdvmfgm2SwoYKhbqcBqxETd6iErX1hYQ61tF?=
 =?us-ascii?Q?r1Jb8p6Iy2BNIECwyQzxUiVqz1X0VzhtZ1BCbMmA2Q4qVMajyipqAsYayYxR?=
 =?us-ascii?Q?U91RVnE7RLwXE217+W0SOcw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 432b2e00-f1af-4a66-c273-08d9dcbe9f65
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2022 09:15:52.4997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vi4ia2w7Cxqa/iQIpmjeookZPKoxPLrqO/XgE3olwiFB6O5cwzOBoMAd8HK+8JmzRe+3ud9i4Y++cGY6727nsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3630
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/4] i40e: Add new
 versions of send ASQ command functions
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Friday, January 14, 2022 6:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 2/4] i40e: Add new versions of
> send ASQ command functions
> 
> From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> 
> ASQ send command functions are returning only i40e status codes yet some
> calling functions also need Admin Queue status that is stored in hw-
> >aq.asq_last_status. Since hw object is stored on a heap it introduces a
> possibility for a race condition in access to hw if calling function is not fast
> enough to read hw->aq.asq_last_status before next send ASQ command is
> executed.
> 
> Add new versions of send ASQ command functions that return Admin Queue
> status on the stack to avoid race conditions in access to hw-
> >aq.asq_last_status.
> Add new _v2 version of i40e_aq_remove_macvlan that is using new _v2
> versions of ASQ send command functions and returns the Admin Queue
> status on the stack.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 92 +++++++++++++++++--
> drivers/net/ethernet/intel/i40e/i40e_common.c | 46 ++++++++++
> .../net/ethernet/intel/i40e/i40e_prototype.h  | 20 ++++
>  3 files changed, 150 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
