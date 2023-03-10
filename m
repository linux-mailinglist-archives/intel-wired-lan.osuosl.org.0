Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C3B6B3FFE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 033E14037E;
	Fri, 10 Mar 2023 13:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 033E14037E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454126;
	bh=y5FbWHZAaS3vPxtJcT4Pg6pOazAsu2sE3VuQFKB2pZg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aCzHm1dqOy6SueiTLeGYpXldQY9yECb5XxjNQsNs5mJlZPgXkTu/m+Td0oSMNNEWy
	 wNRJQua1cgpVIN0aqhhv/e1ze136Z7i0IH8GkXYsV8TKqcwLg4PeoKTsDTXWWGofVt
	 uZIxjhiOAjxmfZCDYiYapHIz+q+7TuKEgd4fuNnjcSHwaWK7UegysAHdb4jYVtcOGN
	 KXbWUVyqDPhhMEUonJqFfU0nzI8BEGCUMrwRPA6V26IMupXIeZoYALVCswZy0/pG3v
	 q/YjAeDhJSW6YJoe0hjDy3G4E73gc0W4Gic5HamuaD6LRNBBXy9jR5eZqpE/a6Pg1X
	 3ziSNOWKFK5Iw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nXyq_RTO9uXE; Fri, 10 Mar 2023 13:15:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA8C740374;
	Fri, 10 Mar 2023 13:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA8C740374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AEDC1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D694F60B8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D694F60B8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kC9iYOXxzPwk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB56C607B0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB56C607B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="401583749"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="401583749"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:15:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="710275921"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="710275921"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 10 Mar 2023 05:15:07 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:15:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:15:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:15:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGHYPZlwEOmazh99XmmRB8WkLS/MmZZT9a1nSmxw3633sJWkBdAlEp8m8Jva9vtC7SmTq7wEkmwyaxhpcWr8rijnhE20Vcs0MKvjde0XANe17OQu+3TrO5xK/sJRI1hBh8qEnlU2dx6y8ieDfXJgBJFERfLOnCXnV1YpkYEv5sgq1jmQiAJk4/Nfubh9cVjxJF6K06dDg+MqxuzTcXP5x5x9wniUbYW4PrCSXCuwaSRnUHj+R0r7xg70NATR63HjgEMBPIBx1ZNKzHektmED6FGwcyyGGrGZrrOX+3X0xPJkjaBm81G1ZFI7SjKW170oBrV5ASkNIM1y2bbOBSItSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=++ekWRqk91aiN6IediWW/eWK5kYXyF77ThM6TmhM55M=;
 b=ASQEc8vwQ/6G51HiBZ97+3SkBOV/QzCMfaedGe0tXtda6mrKsV/e/+7fvW3TbP8Rjowt8CfFVo2fC9gWEnUGdEo/gxSVZFasXuczPyQds+JG+y9r9x5IWjQzO8WVVABC+l10ZRt+YrjU4GJTlbT72EpiuUSOPypfLliH/UTtFMi5lHtByKP7rBLYwUuKtHb635Cpqd9d3lP0ngSiyEHz5Jn8xZ5seE32LoCgVBeKI4UOKvGnFnl6SPLInoyNhdGFCr8ci4ccDmNKgWGXjxoU6APhoDN9xmomUzed61NIRXGO8Jgsj1bt/KY1Re7oQyNLWuJvZlEpisV96nmcUAmuoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.20; Fri, 10 Mar
 2023 13:15:05 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:15:04 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 01/14] ice: re-order
 ice_mbx_reset_snapshot function
Thread-Index: AQHZRuGGp8HpqMZl7kyeIkxXUnYKHa70Fs1Q
Date: Fri, 10 Mar 2023 13:15:04 +0000
Message-ID: <CY8PR11MB7364A93614B89BA21455A3D9E6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-2-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CO1PR11MB4996:EE_
x-ms-office365-filtering-correlation-id: 1699f7cc-5ec2-4b1d-c7d3-08db21697676
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R2zrDQ6V2Z5M1qj0Y7MZwEn+HfQeRqjKOFZav8VfyYoidRdGzJikrCkN47XrG3BaKPw66Ve581+0I5g49cjra39XfgWD1GXJ7p0Ok7gwQ3qDFMbz1IYmxMnHcLKsQWRiL2keOdVnkIM7SLdkP/xfRXHMIqwItIqK5UozUeL5lEUndcaqvO7C+qmG+DqE9/KX7bokfEQK9XC9BvQenD1Dp6faFKCMb1AAqCxg+t25o703dhHQMaqnSYA6PNaTNmnoTBWIkMgjtRJfcS1OChYnmjyBDyHhw7wbbWoyuL1qZYkMorAcaYISThaxrVtBbeIaXwlY/rbuaae8LurHBYbFcOagacHdUxbRyBcopvjlt6y8yaubjtiy917O03d8vSh7hd6RGPLrxOnAIwT+EXgAI+TSW9kNEeaQVoXBhNtOc1s1yJ8RfthE9eICpgJSvFJaaY3/16ZaWShcw7NQRbhQp5prJNDuI6dKcVGiDz7Kj0k+SjWHUNayi9fPHbVszZ0eTbU9XxuYBLhZysawsa5DIrgY0eAl/SD3lreQEA7X4DKZkvOV82O0SZEbrxeT9S4kgX/8ZPzBrzLPn5N86yqLDi/dNrnskCvGGmOv/qRgrt4AujB87NjIJBz3pqOh3oR/yf7sNZCWYRNpzT4rvgXPiyEt7R+qZU/dmjOQ6hNzOL2sLxyIhSa3tG4US11JtChmlK8vjt2jvAu/8uAdOdjdhL9xY1U0FnsQTxIgs6pUOho=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199018)(83380400001)(55016003)(2906002)(6506007)(7696005)(52536014)(71200400001)(53546011)(5660300002)(316002)(186003)(26005)(9686003)(38070700005)(8936002)(33656002)(86362001)(41300700001)(66476007)(66556008)(66946007)(66446008)(6916009)(8676002)(64756008)(76116006)(38100700002)(122000001)(82960400001)(478600001)(169823001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?MbDvvdB85G1AJJaSCOBrdiFobseDQGQjPyh7drOx5r4GhoVkdNHZqOz38w?=
 =?iso-8859-2?Q?tzPT69EjGID/Ms6b38bPSf9i9k+1qnc2So/xB1KsjKHVWDnMu2TvoY1H7n?=
 =?iso-8859-2?Q?is0mHHevXA4JTfUmkzx1pMmkbkTCxFm1Cdw39ff+G4SF7VzxJ4r6QQybKr?=
 =?iso-8859-2?Q?lq36EF6i8RX5HlAyx1rK3PktqRKw3Cbj765rJDIkAQHoPV1r5YNMBwbJdR?=
 =?iso-8859-2?Q?v9liMjwumb3P3iobniLqGsn0Tjq6LDT7HahR8KcSC3DE42naaN43JAzbKm?=
 =?iso-8859-2?Q?ebwDKRBEhgRWis8xSDrGnYJE+HsMneZe0rgKfI49lSVdRQBX35ouF6hQu5?=
 =?iso-8859-2?Q?1zknJkZuWyoBTc2oeioMSC+meXHbw3m+x3D0OKHOA7Ucdlt9am2S7BOhQZ?=
 =?iso-8859-2?Q?vmjUTyM5v9BoolkbL/arouqJWlYk5GuzqxanZIAZUNxMBIqt1DokZg8xMp?=
 =?iso-8859-2?Q?jR2Puu9tWXztrtVnjdKbe/hqKNECAtPyrJIg6ZcuxUNhV8Ir6L3RHsw6dr?=
 =?iso-8859-2?Q?2321ESYCBaMAgOucQC4Ij1oHMkzM9+s3+mqVwH0xoCBMpLc/JAgCZOXmBu?=
 =?iso-8859-2?Q?A0zwLaIPF1U4RZIZjEr+EVk5RhCOizAwX5trH3pctMTsUOnbsYKwfY4lzR?=
 =?iso-8859-2?Q?9VCDp69om5zJopPEe3lsADqcXZ1/a1Ge3jaWIaSYxqVT+Z4YDgG5g3dkRJ?=
 =?iso-8859-2?Q?qzZMl2FU3l0dZy4715q4bSE3wA/oVzt0wtZysbxhQhFgZoj6yusNa+p3VY?=
 =?iso-8859-2?Q?WgmpHG4OdxYw6NNZjt3wa+VxOadBv7SxFBmN6crwzS3Y6aZs1aqikjZLkk?=
 =?iso-8859-2?Q?y8kj8lg+P9Y3LrwNkN3OPZbRwuoH4qKCX9+2XxyOoAWb40Je+/c9i3Jvnh?=
 =?iso-8859-2?Q?mQGS+MfGoT1loCp7Qc1WFedHIbl+O7pCvfVTmD67/5RAqlTgFPvHMD2+AF?=
 =?iso-8859-2?Q?KPukewkuJFaade8mgeK1VWnIfOea/tCOuQTZ5WXMmtZSZcDWEpFhEHN8eo?=
 =?iso-8859-2?Q?veBB3Mh7uix5gTG7hdJy6TzO6rVV1qRsivXc15HEdIEbNhoR/vWrEGYGWG?=
 =?iso-8859-2?Q?f5SPEy5T+xceuzipenxpNlUGsU1YLzzqcVMrZtUqz8TBYl5jHEask1pvbL?=
 =?iso-8859-2?Q?kds0V7HaJwgiFFqhmsrKIAr9cWt36zY3wAhuCRBOCevHFIpphNPzoQ01fb?=
 =?iso-8859-2?Q?T2yaKXyxW3v5qFtDmMWQjQWpHRYTXxO9x0wQJP+Yja47at3yXpv6KkkkqQ?=
 =?iso-8859-2?Q?ZmgPJ9iz4vBcvHPQvpbT05fvlDuPGwM4V/4km042Q4QONZk7p14xMwuwIq?=
 =?iso-8859-2?Q?aGfQ1Gx/GrCiWw8kQWEIwjcf7w8wkznGiO28JJTXUsj6RQVwy2tI9toVP7?=
 =?iso-8859-2?Q?s8nGWOih2+NverVxqWAbxvqHVb9t7NMcr4+BiVso6tDf1qrU7EEdsigri0?=
 =?iso-8859-2?Q?9gO0x0xxMIIhulrdM0bqsLnhOZUJ4VdOClYOlqIEf3+Yxc3SiHconK/9xi?=
 =?iso-8859-2?Q?g3Hg5YK9uIf+0EHBdRrqvUkaYYkLJfeKAuLueKsrnXIXswXjkL742I8YP+?=
 =?iso-8859-2?Q?1A4/hCHPGffD3fu1XT99YOGgNCDq6hqEdXt4lo4i4MD9GIGxUSMCoJp4IP?=
 =?iso-8859-2?Q?upelSj513qqxnKitE1gxQjD/lCBoO5sd8N?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1699f7cc-5ec2-4b1d-c7d3-08db21697676
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:15:04.5366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QicOrv3Ab6WDh9uJikX1um4vvh9fCij2RNyP4xsHLOq9wid5Pm2jjJw5hP5OnRfOiGKZiDlswnC1HardGhsf1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454116; x=1709990116;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E/JJQlPtPQ+jtSIwLfDpY0yrgDs4TxToskKFcFpu7PY=;
 b=G6Gi3WGfm5GYCt2hxfrVVysl9aF6NiSG4jCiRy225J5xYUmvtQUzkl5t
 JK/Fn4IrjObojWeAgpQk/yPn6LRbFMP6j7BHveYcW8iihVWuEh796tb5V
 2zKati0MdmxewhWMGk0l0lUZaaOLVQEubzcM8li6JO6BMRydrfkLrgPmv
 z38l9VRlqt180BwYxF0JukjSG41uONcWVdczLMPPFPQX2yi/pbYmdqj0g
 Gyi0snJ5lL2gJGmY2AAY5IhZK9EAWlVoff5/K2EL7VU2XjzuW9YUlOS5k
 6RndySQZPnTC1guDRHy6kXoLb76y0Dc1R2qYaBh8E81Lxw8Oak0ji6emF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G6Gi3WGf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 01/14] ice: re-order
 ice_mbx_reset_snapshot function
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 01/14] ice: re-order
> ice_mbx_reset_snapshot function
> =

> A future change is going to refactor the VF mailbox overflow detection lo=
gic,
> including modifying ice_mbx_reset_snapshot and its callers. To make this
> change easier to review, first move the ice_mbx_reset_snapshot function
> higher in the ice_vf_mbx.c file.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 48 ++++++++++-----------
>  1 file changed, 24 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> index f56fa94ff3d0..2fe9a9504914 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
