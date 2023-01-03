Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2A965C073
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 14:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0295F817EB;
	Tue,  3 Jan 2023 13:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0295F817EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672751301;
	bh=MKIJxIrv4cQSEpgpXdTPacZopVZGDrxgxqN7DskkxKw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OOz1psQeGGWg3Vr0COZdhpVaNBgYKQkES9mqBT4PxcGxgHmqwnPb1Rrcq6cgNrXfu
	 BeYvuN/xJJKHxsE3Y/8IO96sMEP4d7LtJ9kyPHEdr8HF7+jFO1PFxnuZJrLdiP644F
	 gneW5rM4r2khAWKoqkHSK0XOBMLB5dyCu2e838fwmqRUXwLZvh4QAqbBCszctjObHm
	 Gs2oAMmsi+LOgsTuc+pj7C5Ua/sLzOnRv5CJ0f0BXwLk0EI4jrXbAEAB3HdrqiiRst
	 KD3ADqez9BSgqfYlwoXcuFH/cer4SgonCTA/rVkz+mRWFSd3JnAya982PfjPJlfePR
	 tUccR3Dw/nt3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2UapW3O_xFSm; Tue,  3 Jan 2023 13:08:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3E2181754;
	Tue,  3 Jan 2023 13:08:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3E2181754
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDC401BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B33D0416D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B33D0416D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_faUaudfpST for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 13:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9550E41635
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9550E41635
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 13:08:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323641496"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="323641496"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 05:08:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="778851289"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="778851289"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 03 Jan 2023 05:08:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 05:08:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 05:08:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 05:08:11 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 05:08:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZPr39YCcEaYNnORQSiLDYoRoNuqnDV/3YgM17ILd5Xu8IKU8o4XSHfju3oM6o199Y1l/uvEphtqpyunr5FLn6CuNkmRRR+FRi05JcO7gYvEtWaqgYmedAbfqVz7n9P6Kah3dGgfh4JlngV/09L6geHSxPRnThlF8G5ZQcyzY6H1E9VAs432V92sPi2pwn2lLv6F/QQY/GrwTAy+mP7oefVGJrPUJ3YzVCoBQTI7TjZTswl9LpafF+1BSHLCj6n89lokyJKlJ0jGZZdGsh6lCzQSmXhswzUyQXCMcnZh4rS08wGcnvlaoLWLaAIryYRp7sSGFcviNEibRRdkr9JJMSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxXInu8rbFtxPJX5lLUeUF+gOikBpv7ipLVGjAv72Sw=;
 b=Ax91OxP0PcQqcBnNc/Fjd92diD6a4iSYuS8ddZKwb8wD7FOjcbsftg1+Jt2nZ9U9OeZcv/SKwYELjDmQ2q4xY6XIdx00zZCKy2+cp3SBVsGtqXj0mH7QDYfLErjIAjeeWWrIw5/Y9GgFeWELznNh1rdauOFOJHU10ec6+gNjtXK6umwMDCOQMG5+3d1nh6C3JGPS1zMYLPzDPBIk9N/jWL/vYx/p8VK9/VzuLiMGEeiNtFBA+92W5jNBlSJjfAh0N3M8M43Q5OwfuFUMBAU0YzahPTjouS/QqXORJaB22ZIkJ5nli6rws5jMgtO++6GAo2uAEETs99uyKsEV17iLMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 13:08:09 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 13:08:09 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 1/5] ice: remove FW logging
 code
Thread-Index: AQHZEdWD0hxBLexgfkOrK8NPvQW+666MxQnw
Date: Tue, 3 Jan 2023 13:08:09 +0000
Message-ID: <BYAPR11MB3367181A57600218D3BF3023FCF49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
 <20221217050714.314-2-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20221217050714.314-2-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH3PR11MB7842:EE_
x-ms-office365-filtering-correlation-id: ea866b13-5aa8-469d-4451-08daed8b8fc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gbn+O5E/kofj962JECg3quACH4teqGqL302l2MkbJVISt+22YyVE/URKoptWf5Q6rp867xiLTIIFi3YbJDo+T+GYNGRY/rNGf/UW1Tu5LrL0ysmUWdDXR/rk3PIXSNfDgDngpdBaWT9ZvrXfk/Edb4KbtX9BcPjvc1KtFoPJbflDtzpo/E0RzOTOwx+csgwmvwLYeUS5S2BPAwPXxKx2Pf4MGp8VGsGbzRI5qYxhOxsWt4PIvuT60xRpwC4PslMBOjtI1tBlorMxJerLGSDxe1VY9uPaPTdC1g502QCEUJpX0sLhhkqniSDOSxlTVMt3Qz7joTiu2xKO5Zr3sB/ezadl+fJL+EfDBeolxoB11mwPdWetH7oRSsoO2+Hwqk4G4ANhiq2c2p6mVa3qyQFbvBWqTbdBYedFZnHC3mwEN/AWJ1GYWZn5y4N9pqodA/50iHpHErOynt6Fgqw7d9F0TzNI9gc6w88GBlQrv49utG0kobP8iRFSZcZnwzuPsbOhJGs62Oom1C356M0tGYMt4XEhdexwu+Me+sUfxxCXIePaO+Z63RNiZMobHOuQnB2YEo8zN4soyt5gQd+8ODR7iEC+uJJGAyjNmbfrGcgfiGaO5pO4jxJccc2QiNHK/FWtlAX6Fs1Lv3ul5A8954dIdFOX3XZ7bZY2jKPEi12KOYF7NrJ5N5Ft2woUbznyALHI8yrN4GzZoC0vGDqNPq6ULoHwJBnY7SVo87IWkx2rhkY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(396003)(136003)(376002)(451199015)(83380400001)(26005)(9686003)(53546011)(7696005)(55016003)(33656002)(6506007)(38070700005)(86362001)(38100700002)(82960400001)(122000001)(186003)(478600001)(41300700001)(8676002)(2906002)(52536014)(5660300002)(8936002)(4744005)(66556008)(71200400001)(76116006)(66946007)(66476007)(316002)(110136005)(64756008)(66446008)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UP8nL6D03+rsUfIzNYD/hAtcJUo6I/Ud79j4uQz8Xg38NoPTCGzYKrs5S1w5?=
 =?us-ascii?Q?Gx44GVTDUcGud0SVlIrPXr20rVUjwUZ6Zu0LTmsbMk1jBoYtWOSiEKjtT4lo?=
 =?us-ascii?Q?rij+C3QdwYLlvYXMHRkiagDc98h4safyFej7QBTzCfFIaa/2aGlRYZ7ymvdz?=
 =?us-ascii?Q?HHjO2zFepRx/9f3u56JTJUoXvTqaK0EzFtvfUxIV6mUbEJOpEt1MYtzGb5qL?=
 =?us-ascii?Q?rljKeInqeOyM4fWIRphMnegcMFVDPtkGvX1stN1Tdd9ZASJHgVfPTdEmCHoq?=
 =?us-ascii?Q?EboGsl6mDbHAOM5IfF4sioem8yztB8nYKFvhDvkVcfoBA3IvymQ/BJd/8vGS?=
 =?us-ascii?Q?4q+DMo1RmqVcssKs0gLQbPfwGPu2fNZskONUv9fHVaJFeuu/amHb7jRmPpMd?=
 =?us-ascii?Q?kZhGCIqhIBToLYiLROfOEVXJN20CLo64mVCBeAA1Ej6ONTbDSzoChEcUhSXQ?=
 =?us-ascii?Q?8a8laYMZ+XFew30NQL5sVAzm7F0BnYyjEKcMYyqgF2/d6SwgU3hGdFelftnv?=
 =?us-ascii?Q?wagwGKgDiQEmVVqarJwQCEXkXpmQ5K+Xu2ZxawlECNSAoO8I69/dDDgBIuri?=
 =?us-ascii?Q?DFML/9yGyWVv6alGZ4JbZ3tFj7t3rJ8G3zyGLOpyXSgQsBERaJGFwzQhpD/s?=
 =?us-ascii?Q?J+6vGpv9G7DCscNjo74m9le6BioU0PLa64nfUYMuXiC4XyVPC7ljZHg4xY+2?=
 =?us-ascii?Q?k8pdNlv4NnFRSA6VD+f5+vcHXD91kBcveg6Aw5RuxsEpdRwVkC/QBn5gtuoL?=
 =?us-ascii?Q?R77S9BPvjPOD53yWLVkx0TnLmWjfIZ16IBKdilMQwhppW7Beoo7bWUivRVbt?=
 =?us-ascii?Q?IDLCvzZGHzKkqq3/04GsL/vTHdMuDlAlsy/9OmuAeCGJwHKt2zeuCv7DhG2I?=
 =?us-ascii?Q?a3K6LUU8aFKsNsUAlLcJ62og1uThwxo9jAdQUpoAj8E6uMlRQFvbNjOZJqfU?=
 =?us-ascii?Q?w4+DPuABO0MFv+GAr5jVMiRy7Z93DFlDqCx0pykldHKfsI2BPSoq9j57GV5s?=
 =?us-ascii?Q?HOyVYXtzFPrBpiLTeupAXdilL3vGMoxPP3Zu/hrX2R6vFNkmzNEXlF90e3UD?=
 =?us-ascii?Q?1SleKX9X3TVnPDDDjZW9vzP7CT3Mir+CH+sVarBiEeJJ1S0Eu0HQpspOVUwm?=
 =?us-ascii?Q?+Z9p+zhdf5icTVlENDggexyXFaiYsxWeOXOW1ei8b2shVxqvWFQdl4cyGFcu?=
 =?us-ascii?Q?m50SGlWpSJTwfL6V2Dv6xxivUpktNRg0mfayqpaL4dyxArmDWbBKSU70kVAa?=
 =?us-ascii?Q?1WHJ1K7osOztSTa66BHcjCw1RA3pJVZu/iz89oUTW6aAbqvLsxSQQrQv9tiY?=
 =?us-ascii?Q?MGCNx5ePn1ks6RE+ccTTRwUA4CAD1wHQzzjh6LNx7CyaToke/Mrbksy6FrmA?=
 =?us-ascii?Q?PYrk8RPZhtxtkUhwVxD1M1q4wNajRSU6+DwjwSh66iQg1k036lKQ2cNLpDwv?=
 =?us-ascii?Q?MZU9ARhkVUN6Tojk3AyIEaDDG3kU1UNyKBjxwBZpPM9e18bpfDrFAoUj3rvI?=
 =?us-ascii?Q?8ZlHBP+pKTs8pq56sDdZllqhHa1QaEOLRx5EKqO7Nf6yepSC1ptKcESgD22f?=
 =?us-ascii?Q?qqSUOs6uvyej5EP96FeapEe2vhsM3VN5GKVskLMQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea866b13-5aa8-469d-4451-08daed8b8fc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 13:08:09.4078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Ziip6VHmF2IlVFm1ZXC442TRS/xRDI6OVNydTfb/LaFyBrbJSEokj1pwLzPWoQ51T4doEB1ckcryz1260A+Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672751293; x=1704287293;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TkjNcCuvDymcHEidJjdVPgzyQtkluqI/RArJb+sDMQE=;
 b=ku/riqwOyetD1mqDXvewsJQCUNLl1IxtcJQ7J6/udT8andfZr2PNHL7M
 2o1Q9FgXvey2XQu3f2FM2dUCgYyOMdi7NNke9fB8+KWiAQv1gvv46CqL1
 4fYTV8FPnt52OihpOYaNnc0puflTDaizHGFHYWdJx2LZbBZ6yICcnGrCl
 Cnep/R1z2uYmhqlKoZvQU8Wfo4/xShv1M/ExzUftsWCWTw3GasVoRQ6yY
 HngqbGlh7Hu91+NexbTR7q0Xj1vPQ/+ZqhFY27RByEl0bQFDMturgOWzI
 D+lYkCF+g4LMSUKF9P5XVwCRMnSkp43T+jsqiUJIoELgZpHx52eyAvt7W
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ku/riqwO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/5] ice: remove FW
 logging code
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
> Paul M Stillwell Jr
> Sent: Saturday, December 17, 2022 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 1/5] ice: remove FW logging
> code
> 
> The FW logging code doesn't work because there is no way to set cq_ena or
> uart_ena so remove the code. This code is the original
> (v1) way of FW logging so it should be replaced with the v2 way.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  78 -------
>  drivers/net/ethernet/intel/ice/ice_common.c   | 218 ------------------
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |   3 -
>  drivers/net/ethernet/intel/ice/ice_type.h     |  20 --
>  5 files changed, 320 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
