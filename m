Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2856B400C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:17:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90B2B4040D;
	Fri, 10 Mar 2023 13:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90B2B4040D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454232;
	bh=XtYS0L4eNW2RxawbTThZJZwOq2j4aIH2YL4UqmQHd0g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sb5sI8Kk6t/Di6cCrxt4hqMEo5H8EUbtuxVzkwCY1HycBpM5i68DFJstTrNrXd83i
	 BCtDcnh0wYlQHq441Xh0Mt4QMJzpsYX7aKX6A6sbQNyZ3iXRdSO2mfsbystA8ZVU62
	 XKR4yOI9ZWcgQmzs3ChquzBfzsDkO/wPLI8v1pXoqc+4nS7yKt/jToRyRyHZ7QJIqZ
	 7OCgkdNjTgiHtuWzHPR2PwwP+Cz4wCcJz4FXerufxZPUBQntpOKbqOaYz+5LUj3as4
	 HdUlmETSnM5K+hYydSY6rG0sbFgH7ypFIOFRnNUfBHA/ceZj58gsCtFqjFA1+dUFPZ
	 wjalhLBm8yIfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qpoDG4e0hmhF; Fri, 10 Mar 2023 13:17:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A7044037E;
	Fri, 10 Mar 2023 13:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A7044037E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BB091BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53AF960B8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53AF960B8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5fzP_rS2tvaL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:17:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8239F60F64
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8239F60F64
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="401584088"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="401584088"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:17:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="708004109"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="708004109"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2023 05:17:04 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:17:04 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RC44mSjEr2//qP0Dy2Caw4HH0ZkyJlopLIn+eAq60lpz75vvucW+ECb7ZC3Zbe1a0UzHf6g+ZrcEAaRE1fJpT2SoysNrrrrEycUOO3LsTKM66DCiR7XxiHvX3USpwdztBOfuvLrldECg5rFOY1iobosvQDUJxHNG3hBrGGzqbAQqRIqvZ+yreTsrIFN5BDIbMXma4ax8yY/qUFQX/EB8bOoUQp4OBB/6TNbfUT/5pa5av8JLRK86T84xE0a2aVh/TdooZu/rgdGo0q5wO5MULNN3pOKsjsUPkobGfOLX9PM5kEFs85UNOOD4VgqvE0X77MDOJCWyjcI5mcUBFc+r7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z4K5Mlxt+lWO5Mg+XLJh1p2nxjc9oUbQFgN1v8rxDUI=;
 b=W/9NUqwsxGJSoQ1kOfqTVpwT9SDyIzC/4fg+WYfDuHy1K9TmXvHMpig4aM2nwwcPkYt3po2jZ5lDqFmcpLkdUTgaK5cvMRUxoJfmaFb5GO2ZM8Lf/oZ+bjRyB8pmpDRuefJELex5xnctXQECMk4odgjOTmdN6NIZQZlW80EPI//CaY/jwJwN0w9J0oEQ4G0xM1upxSkquNEdS9OV9e/F6BEfaKSFyXIPZ46zv3605RbePUpneL2cD5cCuH6CGfN9TmuVEAAoKP5HZ+SYHTo6innLRJ2tOKPSbF0Xe1UUVQ7WotYBR/6XdUBl0DX1RUCEtUCdviMocu4mnXBRUlEajg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:17:02 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:17:02 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 06/14] ice: merge
 ice_mbx_report_malvf with ice_mbx_vf_state_handler
Thread-Index: AQHZRuF9MBKN2PGIskaGdYU2pMWVya70F1rA
Date: Fri, 10 Mar 2023 13:17:02 +0000
Message-ID: <CY8PR11MB7364D69CDBEF682224320C16E6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-7-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-7-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: 0bf46ccb-958c-40a7-d515-08db2169bcdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V6E2RTRCb2jMB4Hovq3F34ORvNYhAKgscP8QJC9ScjcDc/ipQWQW0ALSX3l6mLS53dB8VSEOeopR4DcSD0kOM8fOOw2qi/PHQzgu+3yqva/brQ4LiNl+j9gXFb6U/0h1Gmf8+Z0ag8dLKrwsvhFjOAlEBT3hn3b6mF3bKOCMPD4HXPMno/Omd4HKnPvtVISlOSoUmAIBMGcpeqsCVuEH7n2B6gWD8z4dY4neP+iuswj/JynfXuu9c7LMib3Ii+TkPpWTDmACKi6HOudrLwcGfy3bU6IyYeCwXeeW6FSaO693+PJtBAcpyIPGmRvqCmLgJKFX57Fwm/hH7r+Bsi6btuBZnTM1B3zoSArocrtyr0EdqaZ4D7kQBPKFQcW4brCnfEuoflbXM3+38OmKoYVrwugSkwLb1Rn4ND8i5XLtCCPp4FZcbWYK1PY/fp+oiAuowWhGg84j5eMpTSUaX5cAJyPWGfkZxxI59O3SLpgjEBiwlNz+NfVVtkFGuHOrlvZpK/3aIQwyowwE/tXTD+y7vmtn3S/sP0bNh7+dFjdGxENCo21lsfLFb03bDqUDxDQtB9YqxI52yMUCNerbxIjQ47VgVQZNR2aRWC/V697ex7EBwnKHgzS4CTyaUwzoz9QZ/9UU/URivTN6eQX9WXCUWIOYbe2x7WQZ+4hG/J4dE7M3Z4K5BGNrr/Pi94iQev4gqXLdAAfOQZr7PbWYe7ua2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?d8ApB2pYG/ydSFFZzpItKFWgmqK0moKo3c/K7T8JosJYjfoqHURG3hhdqF?=
 =?iso-8859-2?Q?ZKOCDQ7CTjSOn+9y+SLZXfWYHvuIyREjtfGmKXDXhtbZNT35rEiYn9OryK?=
 =?iso-8859-2?Q?4dBu0cQYDh3gz/WIvEbmihSu+I2XSqOlzzOjnaLgcLTZ459nxYnzcosXGv?=
 =?iso-8859-2?Q?JS+OuqcM5TJLGRpIL12K2c+zaJpOTj2dig5/RbhXMm7xa0+WG1kHhpPlH7?=
 =?iso-8859-2?Q?8r9w0pSrfxc3dihitTgTBSMxp4tMELEkNowh6BRjjS9VglUjeWKYb2Vtg+?=
 =?iso-8859-2?Q?XKqRghY3qzm/H2VoM1NXkOePO3yQVmCMmHMjGcyRsNH4iyFgEGlwIAY2G/?=
 =?iso-8859-2?Q?l5JvsAQa9i3ly1M5+jghUVzDaWdpiqOPWZt9JSZ8yljXO7N3VYHZXCkKjR?=
 =?iso-8859-2?Q?uTrvW7mRhSoDtwSZOId0T5LXP72da7gzZ2fMEyeVgmUtiqNASz6KmN2EEt?=
 =?iso-8859-2?Q?PI6OGAJdf+XULr7ONt9d3rSkRUXVBp5d1frEvSyeKNGFC8FdLer/FsA7mx?=
 =?iso-8859-2?Q?j9eEWNx1Fh8jmermTUuRKrpnpIu7xMcCW8zikYd4efAn5RYThQgxVQvCfp?=
 =?iso-8859-2?Q?tqlmmNGdueFcmpQhaDT4vWv/c3Hd9+bDHeTBuJEF1+WUqNN9YCovGQSQV8?=
 =?iso-8859-2?Q?tR52XbOAl85L9wBZfaNwNivOl20ZBKEWmeaLvoaGrxwy2H48K2r3Lc3Wsl?=
 =?iso-8859-2?Q?PvSaV6zcu9YUo2e20Yebb0jEwN+idD79RnJghIl/FEsXCujhr9Z456+xyJ?=
 =?iso-8859-2?Q?omaFxGUG9bDY/0PBs+Olr1Zht3hBaq19kUVp8PnuKvtbHvq8/JoTAd8T3C?=
 =?iso-8859-2?Q?hKJJM2QwM6YfDM11DrLD+MPPOVcTJtzaDs86Wgan74afZNwWw8Hb9SwemQ?=
 =?iso-8859-2?Q?kCJyWOco8LfIg9WVEn3Ds33C4mk00ZGOUhL2Sf4fLqXX26VG2kC0eMjOJV?=
 =?iso-8859-2?Q?W7cak/cU+yyKrIn5wZKPRlewtH5+kkFMXrjpxHuqC1tKoOfYVSqiSlqtfN?=
 =?iso-8859-2?Q?Lkc6tePE1r+2Ga2lB2/kX7LkEbZ99tgsw2qOzoCXHYtN00lT2zYhT4zyo2?=
 =?iso-8859-2?Q?4/Q7J7e8IIPXEF29jJs19/dYZItRgSDfNWaJ+bKuYoiRW2y0/8WymnnmFy?=
 =?iso-8859-2?Q?lIUgfZnF64VPs6okzQ/YHVWPpTjnOV/SEX4a5rwrncYubNoU2UXYVcgVtK?=
 =?iso-8859-2?Q?VYQsfkH3Z2rq4jQRzRcC+4jy9NnWXlTghHQqygmPlu2iA6SKua6mt3mHin?=
 =?iso-8859-2?Q?2YOQS3CRA5o0OnHUiYVcw+yB6kqGc427F4mxZj6/f5Tfi5TP7WvsGhx7V0?=
 =?iso-8859-2?Q?t/5eFKjMcmUW1KTppSiAiYcDjZJgid9ACheOPb5R6UIOIYWnZ6OOOqbLNS?=
 =?iso-8859-2?Q?XiQhrZzS7mO0o6pRjrm5CiMR7TLORCqcdQRPM0vawFWqm53XjCtl9j4mrv?=
 =?iso-8859-2?Q?2+7qeQadb0ksnXoVz0PBTkiLTI46kKXeG2WpHYOkgXE64Rk488rDOxG4/S?=
 =?iso-8859-2?Q?qYkP9XCuofaDLXXXzDsnvPpkYwuUffVcaza3oMlCyZnFnCJMHDG3uTiTtn?=
 =?iso-8859-2?Q?/d43Uj20eGiEeati7DRcBibLcDrz5XUyzhF0yPeARW4K9ZWgxz5hp7NoEl?=
 =?iso-8859-2?Q?NmVvQo/hDOINL/1VxWavJlqRgrZYg4Ab8K?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bf46ccb-958c-40a7-d515-08db2169bcdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:17:02.6969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3PGMlVQ6sjBm5jMLfyxkUOJ07mCDyVOtlI7Em4UlC9verjIoPDZEPb0o4roF2Swp6FTkJgMD5K0Nw/BjMJ4TAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454225; x=1709990225;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Hx37nWEsDHeKlxOFKp305eATl4NJgoC9l/RnDLDGupw=;
 b=Ivqfa2NdtqwPgcPnDTYIoVXyqKjyFdsFXDtSaf/NIvq6luggBM5si/7d
 x0WTgZB/NsD7Xj0KVsTo8z6wZ3aFlKJN791vCkgyViPR0cJpMFZ8/b6/z
 +Om3rGDyJmzkri5z5t0l8vpO7JBCpCOYN5Tt+q7C4/7y2e3YTSnbLFe75
 uXUOtS0MkZkreHgal45HRDEkQ5bjBJFyEg+XiFSFiRhQuFaaRW0MPmduW
 DTti9MOw45DMeikSEDFhCEsLSpdN4s+gshpFEvqnAPsuvW3uNy2QI7JcE
 C3e5OLBY4p0JvfFkUN59oljY5jGXs4bX8+rLuNJIGdZ4wNE8F/MO+qCSH
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ivqfa2Nd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 06/14] ice: merge
 ice_mbx_report_malvf with ice_mbx_vf_state_handler
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
> Subject: [Intel-wired-lan] [intel-next PATCH 06/14] ice: merge
> ice_mbx_report_malvf with ice_mbx_vf_state_handler
> =

> The ice_mbx_report_malvf function is used to update the
> ice_mbx_vf_info.malicious member after we detect a malicious VF. This is
> done by calling ice_mbx_report_malvf after ice_mbx_vf_state_handler sets
> its "is_malvf" return parameter true.
> =

> Instead of requiring two steps, directly update the malicious bit in the =
state
> handler, and remove the need for separately calling ice_mbx_report_malvf.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 34 +++++---------
> drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 51 ++++++---------------
> drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  5 +-
>  3 files changed, 28 insertions(+), 62 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index b65025b51526..71ce3998dd75 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
