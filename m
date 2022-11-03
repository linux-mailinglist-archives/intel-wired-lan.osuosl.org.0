Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E829F617C76
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 13:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC6684176D;
	Thu,  3 Nov 2022 12:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC6684176D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667478176;
	bh=SrhT9Kb3aotemin4h7vFw7tpqsO00biRvxPOYcVfbNc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0WnJgQbNBy3hqNdNePRlUsY7uC940oX4uVCMcD/mr9t/+v1AaEFFzhA9U0S1C4DEK
	 whyKWaDcQ6bWCqowQlyzoJkv6pYPBnnW0Y8A5nOxmGPiP0E7H7mblwVoug7cIniia2
	 tXQlA9VjAIC/qt0I/fVyrQSdsv2zZxo938P3oDul1Y3erWh7oxfCLzppe10FJrZ5GZ
	 hvEHAN53bDm338/EqNtcBr9t0K0zu4+MaE345RryfArU8HNrBmSJEUsPtP7Ksb3XJD
	 8qABGEJskYP3XJZolW8ofpcznDZhoH6WiwskyLZOiEqm9m10zfhiCwzz31oL0LiW/i
	 0XmiElbxmpi2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9R5UxvCgaYr; Thu,  3 Nov 2022 12:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 795A54176C;
	Thu,  3 Nov 2022 12:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 795A54176C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E94CC1BF404
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0DD24176C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0DD24176C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4dEzI1eK_obE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 12:22:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5DE741763
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5DE741763
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:22:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="307282582"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="307282582"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 05:22:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="963914628"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="963914628"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 03 Nov 2022 05:22:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 05:22:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 05:22:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 05:22:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PEDhDiMJITX5FVCwxsbOhjgjy/HoPtIZkL/O+BRhyX9xcn4hWfOHhCjKzifX24WVzaR3tfN+9d2l+L7kmLSVYgIEv1u3bSlVeT3foNiuWXWPVcfznL4wWa2nlKfr9AZkezC5iD4+eX/F1kKB1TYTqo+Gj7okkaCmsiNgp7NaW959zpl8G4oX0gyHTEEi7sLNY67up0QZwcE0w6Zmj6FUmtrskLNgJI3DSgIgQLDvP0VjxTDmHCYoKV24iFd+NGSghUIvyIh/C/n9jGc4N1lRAPT1E7pFDEljwkks1K4uTMgSPMwutu15mnCibsxGaYMF3lte7TNTkqxtClRdIMEpBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HBPsyr2ibDlNaR8h3N/KUurp4cHJpgXwrI+JFE0dNEM=;
 b=LCK+0598QpbO/BTANRgQwSpqoxKR8cMnsH4NlmV9uCmWeOZCutihdVlTAswgFPbPPdjdt/nIwP0xGWRBym0JWhSN8AQXvBKM64jDcCpwWx5EL32Ut6RgRN8r8bEYXbbiKC+AL3aXdoM5tdoYj1E7wWRp1T73tFcB/k2FjkUlKwGdD/8a61sMU1I7DcLdkKU6WIvTfocJoXxLpG2CPiWQBGi3i7lpPBGgiJsi9Q0P5pHHwYixbUm6yRYeHkl2xFkeaXYMddynkeXUx6UEnCBc/S9zk/7jLDCZjgwKW8Mwu2SMDpT0O6EPZbvDYhOmetRTLq3IkYXxY6h1i5FRgbvgvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5358.namprd11.prod.outlook.com (2603:10b6:5:395::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5769.16; Thu, 3 Nov 2022 12:22:28 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::9f29:9c7a:f6fb:912a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::9f29:9c7a:f6fb:912a%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 12:22:28 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
Thread-Index: AQHY7SAIS5rqPhrgxkKdjTmGYduX/q4tI3vw
Date: Thu, 3 Nov 2022 12:22:27 +0000
Message-ID: <DM8PR11MB56211D4E8A2DA425DE5235A2AB389@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221031120028.2457-1-jan.sokolowski@intel.com>
In-Reply-To: <20221031120028.2457-1-jan.sokolowski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|DM4PR11MB5358:EE_
x-ms-office365-filtering-correlation-id: e233e85f-5917-4ef2-1ce4-08dabd961284
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9R3Ck9qeaA6R4PUyEkOOLcfz91s3uXgcWKwNWaU+3jQbQHk4tLqK6vnwwstRMvRTUZ/7lGPsPnpcMoJRkPJcIdeS0BdYyefuWagy5JnaM1eYIR+Zlho2ImL6Erf02Kn/Nr5ItfNDCL1fmRtBMLqU0+wrkc4Ik3gONEEh8IouSP7GqXBeBeOT7M0e7lGN1BNcoL3StKgdfGwSqsLEG/hImMpfHG7PuG7q3VHHAjr6Fy93CiJZJNm5B26P7EFpHlSNbcpfXh/k586i2OKJ/gDoZ2yqsVrXa5krt9V2g1osVgvKULSz0KutmyXGpu4pN3tGDc+FAyr9CXOJV9WJaBe73ByI6Zu/YFxTec6AJjIjZPDep0QgtdtqUfjBoW5VtAec12bj6IXcWPdWHHLEksQmKP5Z0g5G9nhKf6xt92tCgZdWLe4teqUozf/LveosZvb6N7aNUvh8RqnrdFJHv3QZEpxdqGNBT69qDOg1z9J0pLPusWlR1pGNSW2ctoGXIuq8d34EWPKjyImJZSwRXIGf8OlgevZLC/QWs+mO3eGo4HwQxqrUdtDPl23IznB1PQ0unIWJiSP9TG8e515DOuPaXxWjKNoQL9qUmM4rxt2SycET6ivkRA+60fE0voLEzD09NTvx1o6bfPsD0AxmOs/cs89dkAx+qzC6xkFMofUPucMlPoUAaCJUaAm30+sX9y57EcrjQpmaJtRCNyyHW9boPUy3QrsHWoJkrZKNIcV/jxMcyCSmdeA6ZyZ/umCOULPW244oXkUn8z9Z20J4arpmmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199015)(66476007)(38100700002)(53546011)(66446008)(4326008)(9686003)(8676002)(66556008)(76116006)(83380400001)(64756008)(66946007)(107886003)(82960400001)(2906002)(26005)(186003)(8936002)(86362001)(7696005)(6506007)(52536014)(122000001)(55016003)(5660300002)(71200400001)(38070700005)(478600001)(316002)(110136005)(33656002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1eZ7qnUcwQ5zLlAjKbCivnsV/L8OF/RIlq/Yq7YnFSitDW3BiMUz+zzGyyMU?=
 =?us-ascii?Q?FAGXVbrVMMHmKMySYysxI3erxoHJXwMvEkrkGmbYHR3f0N9abCMRXzjJmCiI?=
 =?us-ascii?Q?b0gtbLGHO9X+CMlI7g3EwhoTOtv6BUbfmfG/fFP0mrtNYcI+cEUhah80O52P?=
 =?us-ascii?Q?pdliDBkdUdLNtS7ZmTUbXETHKG72sBsEuSA0qI+SCFxiqIfGEJ8/vuDl03pv?=
 =?us-ascii?Q?kmepFouTrLOYz38SUK4urXlNFThVLpke2hpgztGYscuCLxe7Xp8oeOOSY2oH?=
 =?us-ascii?Q?54r93vxe2ct3OkYh/wZHo518spdwbq+lvB2RNsDy2ibizKUmQDwRh9ODauhc?=
 =?us-ascii?Q?jW5+j1wzIW9mPxsE65cEM2/qlUly6Je/AVgyLq2nYJfxVu9hzEZXKlRck3oY?=
 =?us-ascii?Q?+mAWvozYjC5ZYagN/hamXvrVc8U4wVS4rJZ1XRlRTuu5FypVl+l0bI9InSYV?=
 =?us-ascii?Q?FibpYp/6bQl31eGdNBhOcjygdjrCZ4IUJUv6++SSh+kAi8b4tQGqM+LjOOv6?=
 =?us-ascii?Q?L3QqJnDw2FymA4/98bQpsawb0nzQCu9yUyhXPZ7T5X7vVtaMShNXbeINvDUn?=
 =?us-ascii?Q?2qdKb+cyCONfPOhFBcmn1UeBkVawZ6OSA+vkVmauucQnvKz0u3FieUMy/Jzw?=
 =?us-ascii?Q?Wr1R+FegpxIfkowYTJK074q2ecpB48ynq1y6GAmxgWis0iLc6OHtUQoTJAs0?=
 =?us-ascii?Q?xWgYQM/PyyZRvqXOfMz0fzrgRkvgUbKafHnpasXVtltzmXJm5py16AxTRbCi?=
 =?us-ascii?Q?RS/eGgAPslIIaEiHTvoK7naFV0BOJdbpkz63NCa5M9TcHunJwivNjN5vGsZN?=
 =?us-ascii?Q?UKgOMK6It+0hoNiRe5IU+64iRfH0c/FinKVcC9Ol5Fazbkqz4NFgy/WIc/Vj?=
 =?us-ascii?Q?iCoRu8nav1ItS1KTZMubh73AX+8/q0v+m9p21jlZwwi7dc+IZ0JiAnM97GyW?=
 =?us-ascii?Q?fwAUoIvF1WfNeXDSLwAdOjv1lQS2dKAbYiEOFEyprWPF/j0Xvp9CQWjTskAZ?=
 =?us-ascii?Q?30ng3VfAhBetG7nynmMJ7GcxbygN/uDNMd3si4cSvOq/P+Fu+19W0yWBZc7i?=
 =?us-ascii?Q?EWGsyfguqIwKHR44rfGZw7ZM91ksIBZSOjgTNpyYWC8Z8s3zqeVTZSj+bu0J?=
 =?us-ascii?Q?SVugd0x2QxDcJ+GaOdp8OOUUAX/MeZzCuEikYxA1yW5SkOHgIuqrIMVPBMMH?=
 =?us-ascii?Q?Ex9frApJ1uWOOl5nqVKUGHLCeEnd03HCgdm3YHN2Ht7on6VOMDpRufa6AoFc?=
 =?us-ascii?Q?Ns/fgFF3OVWH7fMELAKwbf6jpAmLSHDnulzU5XOoPzwKU4AUkUoJoeDRnLuK?=
 =?us-ascii?Q?ox5EmYgMI2a2iwWpTtZFe5TYBHMuW9zAGvJl/6FFmxyLo0Mv+qeY9GyYcreo?=
 =?us-ascii?Q?WD/xMdEb/a736naouij3Q8EFX+0hAeYcfKHlnuGPV838rGbyToRgL7zajNPM?=
 =?us-ascii?Q?PXlMlHkq+hBG1r/8v95Bd/gR2aiJaONmbKQ/FxXGfXeBDJ6UifHlJx78tdUH?=
 =?us-ascii?Q?Pspf1Dx9CZUGC0FGkUkbwUDcV/fPE54Hljobepir8pu0I1VANq6O5ssYg8V8?=
 =?us-ascii?Q?BzVgjfv4MfB7PUudA1ioT0fyi63uU7WV93O9X1T3/BJrr17NfP/LsmaPCDED?=
 =?us-ascii?Q?tQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e233e85f-5917-4ef2-1ce4-08dabd961284
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 12:22:27.9113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O/SSHAb7aoVijfFA2n7IPLrSdJXsrX9jN93gmUqVAlX4MY6DLHVooMkFDHj9xnK+0Rbp3OKGfQHgiJ1VOL6auHzk+UIDfQxe90iri3Ywp8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5358
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667478168; x=1699014168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ym4V9FOAOwCbvdf0lT5lFiskbUncYlhLzECatixAj8s=;
 b=HVwS6oSWVtcfvBBakzPzzWFMoKg9JAB6AhIWyyMGvmdm1xn+wb2tysnB
 L1EF7lB7j/guh4JtM8OlERK+5ZNieJ3ZN07kBnE0L1VvgM/cX/yCrRriJ
 //pf7OwcYa0Wj4m6jxdeuaYyOPbyc6Evh5KX3L0Q6WT5SX5L+HWhojDph
 1W/gXk88zdGUXYuEJC2dK+NENHKshQ3LD9ok9FLlVe8pfAqK/U1tBzrnc
 Vhgp7inVzYVGlN1ZE9mbTuY84aXHYxDyfhC/4rVY/Rz47MzsANg3ZABQZ
 XiL7ih4J9B+D6IJDxW4uJIEd6BKD8eh4crhHPS8Q9I0xD53s6dUkwwStf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HVwS6oSW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jan
> Sokolowski
> Sent: Monday, October 31, 2022 1:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> After spawning max VFs on a PF, some VFs were not getting resources and their
> MAC addresses were 0.
> This was caused by PF sleeping before flushing hw registers which caused
> VIRTCHNL_VFR_VFACTIVE to not be set in time for VF.
> 
> Fix by adding a sleep after hw flush.
> 
> Fixes: e4b433f4a741 ("i40e: reset all VFs in parallel when rebuilding PF")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 72ddcefc45b1..635f93d60318 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
