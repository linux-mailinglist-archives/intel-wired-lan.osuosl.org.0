Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C60B6B4009
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:16:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85E9740452;
	Fri, 10 Mar 2023 13:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85E9740452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454195;
	bh=mlfzKrinygFa/VzgM+pGSDDWQRRmWXkSILE1lKAEq/U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QOO80U1hhTadiNLmqt9TpE9SES5ZXqnawuenCFZfMeHnt2K6FgxpN2NOsfmQG8EP6
	 8HwdqXp8AKTqI1ZCVgKTQllgVt72ANDwAHFW/QLb92vNrD55f+HhjQzDOV4ZN9cOgS
	 9jNEvTvTmapnMG5ZbJUC+E/i3CIj50VPrZcvupmcCLg267CmGNmQXsRXPOHteG1fym
	 wkPQvxmSb2pi+IPUxRoJzWYWIRUmWcj00Km5qS/kP8OsLKvYjXYKmY/jJdamAbpZXO
	 rD0xdwEhE7k3eCFQ901nbxIhV5o4tD3DUSGjZXocGEDQepOEvARu1hzKzjO5cqrNtr
	 8e7JXh/+jJQJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbq8FmDYqMlA; Fri, 10 Mar 2023 13:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7562340459;
	Fri, 10 Mar 2023 13:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7562340459
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 674AE1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4007982263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4007982263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IbjqkjhihJgJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:16:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BF3F821F9
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BF3F821F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:16:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="422990864"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="422990864"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:16:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="710276163"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="710276163"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 10 Mar 2023 05:16:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:16:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:16:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:16:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jrX4X/gnNYnQG3Re4HOC8UkiLvJib+bwBRX1V6YM45hrPnicsmf7zuITpgRrHobz5DmidxZS1h3LjzB4YQV09bQvvfmP/E3W7Lm3GQWCIMFDea9lKbCpPE1VxbGs174dVRyqpjdTRn2iK/r8QS1w2D4glx40Vvqs2sosN4WkytYDpGL2TGHEc/rvq+rr5QEUfSz/ocH+O4rvp7YGsLt5YHBdftvUsLxZABC2sGYpKN8U5mnpDjccZsOjtuhlHXN2r7kXiPgkytUX2SZbnQ9mAr8uTrhON2h9orNouq7mJwiVhbsHIfa1gO8/UYheOyNoAN+XBVuV6o0elo9DyYc03w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ox3cZmTXeWIyG44iCinjAn9bQ2DD5Nu8Sxb4GxgwsYg=;
 b=l7Iko14WUAEkI4wmk9Ue8hhpvNooCSeRJ5D3HAxhEZ0BFoUKxOFOn5QqG1dbxDCwvyP/lcp7ZeIabBi7mta8q5o1BaH0extP/1rZ+wDfh4cG50IyXb1LicwQ7K59m5fEom0EQrneu1rw/gPbVj2if0S+QE5uwdNpB10qprIzL8eVQo+IGgpHyec64G2guL9aNt1C344TPBiegOmORhiVQkphhhWJAGOaukk//Iy5x2tRV6NLLrTYU5NsmQ+rUDLEZvFdObdFMFNOqbl8FDtG+XSk9h6SkEatrsXHuenIfvLZZHQ5qC5+2nzSJaquPd5oeLtj/+1VLs4a135xAQHAgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:16:25 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:16:18 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 04/14] ice: move VF overflow
 message count into struct ice_mbx_vf_info
Thread-Index: AQHZRuH2mEXxRd0JA0SD3O/ypwOyDa70FyIw
Date: Fri, 10 Mar 2023 13:16:18 +0000
Message-ID: <CY8PR11MB736443239F8A4907E8599AEEE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-5-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: 859a348d-870d-4428-3194-08db2169a2be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dR1pS9yzJMbAlJPa+eTVBcD4VG1zTwAb/QMC6/X2Tw/0UzQofAcLtp3SpdzSaHLradyVAudwd5IMjM+yz/mKFrbx7F8ALVl5he7V15iAI4G0ol446YXTt5mmNvYs/EiLGF/bVcWxbDnj1QiBTgbw78dS0hWI531VtB508hJwpW9O/WNrcOr1e3Bicls5JajCAs3Y4kHbJILYbnJjZeFr1D1roUZ+B+JUEaW97FP8c8XVPMvAaFFuSA3ObJGBl8JpT20qiAsP43zUQJL+Mn5zRfS4EZkd79TbfbIYVvQGg/lGL6SLsKdtsBlpkV75Fi96lFgq2lzJfxUkTQWw8RzZ76QjXA9Ix7+bHUg6sVOMiB81HliOUXpjf2G0Dx60AHYTO1RgP87Js7GYJrWoOaYh1o+EBph9Bg9+J78ojy4wiWn6O5IWjsHYlMpuTyX23VPzdvaNLIA6jQlnTQfyhcujksTUnJh1w16Wj2rn0Sp3c5hyYpe+q6RycVMMYVYzmIul41tWAzREKno1blo0X/0AV5ZaZYCMA7d3AcTv0cqy2ZE3Qndr+zl3zDh4ZSoM9ta8wLIRWSCztthchmDJIdAq+q5Ffaw5iYniU00fvccltFiUwbIgwkGsw5P8b01gLFCRi9CuDItYe/9KKD274ZDnuOyO+weyUXthRHJRh0sH/7VLd9m8XMjKt8d4Z4Lo2DAUGbujt0eeVVKJph2nd6M5iQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(15650500001)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?kh0qT8cLrSXEtnIgqMZpKIV9Sy2L85aLIGsu4HQaIN2VCCS7hKYt+meFgy?=
 =?iso-8859-2?Q?lnjMQwxA63b5ILskCT9sUIaepRmONpWXR5rqkGisuYQ+3mE4JLbyea5c1u?=
 =?iso-8859-2?Q?3rgslcFdabjr5Hzq+N0udOmmwURmZweePVET8TIkPqk77OkzU8y2eogn6l?=
 =?iso-8859-2?Q?cCZy6NH9aWsUT5/bmJd3B1dU2K4hG5HPe1P27SLv8A1+dN+HROJx69CN6Y?=
 =?iso-8859-2?Q?T+kEWWK1PmUYTMwu6T0Ilkq8JjXnlRgFJyExVkMEghmwd8jsEjbpvGVk4k?=
 =?iso-8859-2?Q?2jeRi09m3Gf2I1mda6WyqKeyoEb/cG2gz5cesLGFaBZ6W2eoJ2uWmQF4dc?=
 =?iso-8859-2?Q?/7BNyqQfmdse4NuWg9i8oq6XNehn2UYMQmps1oE/qF4jiNf+UEVprU/XIP?=
 =?iso-8859-2?Q?sz+Rk6Sot5jz2QdrAwrGqPMqwGOZfMjpsWhvgBeXZrjAca99bBxbz0nJ4V?=
 =?iso-8859-2?Q?NO7WB1+rILVjnct3yLLwiRm0+5MkXuJ0sIERaNhdrqJTiKYy48gKZ7motK?=
 =?iso-8859-2?Q?L9nyq3yZIzh5FRfYlRhjEES/5lhSYUSHjc0RIeFt5M4vSBKTIKMvjoO5K1?=
 =?iso-8859-2?Q?AvATb0FoXnAnm7BFpGiu0i6Ke6q48RLIc9bTtqLnFRsH7CIHygCTyNp5e0?=
 =?iso-8859-2?Q?wgQEuBMeAuP5pgQnTE/8lFLtUyky97qwfzwIbchf9nRrsh1AAMljaLXhX8?=
 =?iso-8859-2?Q?m1ax2T77MLNhdnehIJhLKhANU/ajwE5DYo/CniCIndJQVeOMdnfZpwOnCs?=
 =?iso-8859-2?Q?PElUt7i21dX/AcD9bVRpYLVzRBY1sb1CqhO3n/5f7sQa7F4EaDOC3sovwi?=
 =?iso-8859-2?Q?DA3Wb9R8mGoXf+StyQ7H7j8C7wEx/kHx0kaJjkEbu5H8UYdeWVW4Uw7DtB?=
 =?iso-8859-2?Q?GuXIHHqkI77TyFQpqWhBYfWCZJHjHbACDRt643/C87kCxnrZorOYWM/DDS?=
 =?iso-8859-2?Q?EmgBoZUJaYr3j0ElXx66axZK5sEKz6g76Fh4ggHum5Ts4Cep7KIp29xRCj?=
 =?iso-8859-2?Q?BRuCBffbXFDMO3otQPL+XqAMV8NK9f5Cl/jj75eRHUhVyvPCQxDl05WFEy?=
 =?iso-8859-2?Q?mwRFH7VUk96LE9yaMZZhYwqLSj0r53XbLRe6GxpWdB0+xMDPEeNTmd1GAm?=
 =?iso-8859-2?Q?2K0FqqPpogk33xUr3LRLGTrDlag9+SFDuEZpQoefh54Si8q+QR+yRWHuNH?=
 =?iso-8859-2?Q?p94m3ZNP9TVatcVS8URhk5Dgkr9QoX3keZ7e2rnlX3f9laFmLc+/XWWweN?=
 =?iso-8859-2?Q?4fR/+6d3DCSMM++k7V8jbl2CZHPw1hhXiCjWWBwGsWDlW4CeTctZx6d8gG?=
 =?iso-8859-2?Q?ghFir7Kyr0F3IUIZu9VcIe5jnStATDxQ0FOBzUTxHkpPOlnaM06DGz9qOT?=
 =?iso-8859-2?Q?YVnxJMqgAnp51XAfSW3I/IryvosakkV2PkEt+pYjsTd4/nKHissT0DBUSb?=
 =?iso-8859-2?Q?WfepUbHfo2C25CpAzPbBO9aTWtiLRGf/LyRfZ2r+8+0i0/p2a+pwyOp/Aq?=
 =?iso-8859-2?Q?IwRpcWDB+rhST20Yg21IZWxEIF20hLlt0iu61zkG7m9hwC8RBIbkg+A46o?=
 =?iso-8859-2?Q?rOMXtMiWE2sSvU4G2eiq5Vb2AhTjteu4jBLt+OnbrIOtbBOIJ+vo5FCG9v?=
 =?iso-8859-2?Q?Yjn19rbLww1+ZbwZgYPGzc/NiJejedE3oR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 859a348d-870d-4428-3194-08db2169a2be
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:16:18.8088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ZMsco/p9wSQ7TbHiAWaFNRHLSuaCiHKkza35X2KXIPMpuZZHAlfgrmmS2dJV3GTfmNIGe8F78qvpDZeT3H5ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454188; x=1709990188;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dXTYEgdNy81af8ke9cZ4aaxa/lAlwqzHsThtqSsVHyw=;
 b=bS33elVYRyOgE3c2zsW9rdXkQk3cgs5rVAQmqG7c8tSlOtkYRSSK6Eri
 HKsBHJH20H9plLPuOPQHySBf/T7EF35hK5hwaD08QYW7lp+Od1rKo4gaq
 6fdNpA3dsoXDuDvf/xTtcD13WvO10ON3zjDnhPnmP1i/3+DB9vW03xenR
 DYg3SLCa2PdtSy2mWisllrfkJa3ZKHifnfo3/2Bmt+Fqg7dIja8DCx1D6
 FdkWoWENFROvPswIxvZ6bznQxVV5ZR0eUM3loLRdm+BaWczG/xk5KWU6W
 zdzd+TH07D8aervUiM81iyZE9bDJD8Hz5RtVWlyYJtWbxwQ5FVbiKDAtI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bS33elVY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 04/14] ice: move VF
 overflow message count into struct ice_mbx_vf_info
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
> Subject: [Intel-wired-lan] [intel-next PATCH 04/14] ice: move VF overflow
> message count into struct ice_mbx_vf_info
> =

> The ice driver has some logic in ice_vf_mbx.c used to detect potentially
> malicious VF behavior with regards to overflowing the PF mailbox. This lo=
gic
> currently stores message counts in struct ice_mbx_vf_counter.vf_cntr as an
> array. This array is allocated during initialization with ice_mbx_init_sn=
apshot.
> =

> This logic makes sense for SR-IOV where all VFs are allocated at once up
> front. However, in the future with Scalable IOV this logic will not work.
> VFs can be added and removed dynamically. We could try to keep the vf_cntr
> array for the maximum possible number of VFs, but this is a waste of
> memory.
> =

> Use the recently introduced struct ice_mbx_vf_info structure to store the
> message count. Pass a pointer to the mbx_info for a VF instead of using i=
ts VF
> ID. Replace the array of VF message counts with a linked list that tracks=
 all
> currently active mailbox tracking info structures.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  |   9 +-
>  drivers/net/ethernet/intel/ice/ice_type.h   |  18 +--
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c |   7 +-
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 167 +++++++-------------
>  drivers/net/ethernet/intel/ice/ice_vf_mbx.h |   8 +-
>  5 files changed, 69 insertions(+), 140 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 44b94276df91..8820f269bfdf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
