Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D57333210
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 00:51:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70D9F8416D;
	Tue,  9 Mar 2021 23:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ikmANtfW6I5f; Tue,  9 Mar 2021 23:51:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CDEB84168;
	Tue,  9 Mar 2021 23:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFB121BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DADF284168
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1YdPcoh1oTk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 23:51:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D2CC84167
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:51:39 +0000 (UTC)
IronPort-SDR: WU1b4YlrTGKNWmYfSvvVB2TymPA7adGKUk/H+GxnfTacJLkUhAjTR6onlLr7tcYBA8ThjswHmb
 OxyMkG4W7Kzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="252364569"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="252364569"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 15:51:39 -0800
IronPort-SDR: hCrPw+o1BeXMKH8l0at6xAF46m0d5qphtXuvnD+wMO9+JH+N6xgk8mNzgRZmeYMPAbi2r6MHx8
 325JtoGr5d7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="408835921"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2021 15:51:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 15:51:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Mar 2021 15:51:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 9 Mar 2021 15:51:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1rAd392J7LmgGjdAqonbyk0Q4/LuUMYX13ZCqNb1v9dNQk6NNA1ZVInT2rGwmEa/RgZhTYUIARA6kqFbeCIdqO98SzrEKcSgxKdWS9Cx2ry7GslZAXuDTBeTlkCkeLMuaN9gZiYM+saNNXIVnu4HaX8bylp/LaNqGRIawiWIz4Ljc8Z9m0+CeJZfpCXF+qzzCAk96KWdqhtzJaGnQj7SvVekX1GN5eHphv0h2rEv+h0TuAG78PK7qfI6/TT5jkR9VaNKQQxxKUYxBGLL7i3hzHGiD6IPSnttnGiNp9fQOvCkS9TE5UelntN0nXzIbiPSbTgomEPyPVNAzihaVmf1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L9KbLMR1t3RC9Hrkcs05hISIv7UMr2BUCMXTDWUgTDA=;
 b=N9Jy7y9voX9OsiidRdmk0DSc+HgYGx18EyX/2J8f1Va9N1d92INzlRYT2P3N7DygkUmgUdSOrK1la10WiKJuKxb55IDy5tWFHGrI8jC916bwt/Gn4UZuvlm8ZEnPm34psB8DEgsuW79JXZwuBPfMD6QaTrQjCiNyTdN0QfHjWxWyqaZCRbR6UF2forq5JG3FJxlHNRd87oOGX4Jul//WcOdiGMpbt92ZzY95gfekFZB4guMjBSULzEXcpVA+GhSLK2sbi8yYi5LCPDLjVOOljgMKzuM9kXwUV0wlaplS6zh9U5g6nb3c4ziLxbrOkuIR2cyFraa+ffxN+buHaLacqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L9KbLMR1t3RC9Hrkcs05hISIv7UMr2BUCMXTDWUgTDA=;
 b=cd+cfCx7N+DTWWW64GiSjDFemtRfI/xbJeNbnKQRLxjoPaqRNOwGTSAbv8Z8JDdgpsxpOaVAjNm8hGqcMwQyJK14pWKITNZpaFdoxXgCwOGrlh8439fGu7W7hyujmkLltVyN9EAArEuTWxbQsGykYiqaFS7+djo4g/3P9lHEdgU=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2205.namprd11.prod.outlook.com (2603:10b6:301:59::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.19; Tue, 9 Mar
 2021 23:51:37 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Tue, 9 Mar 2021
 23:51:37 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 13/13] ice: Cleanup fltr list in
 case of allocation issues
Thread-Index: AQHXDIaNGnV7mODCkU6Nedunnf7A66p8ZSHA
Date: Tue, 9 Mar 2021 23:51:37 +0000
Message-ID: <CO1PR11MB510590BE2348A74B29D2BD2AFA929@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99f6b886-a126-460d-44a3-08d8e3564785
x-ms-traffictypediagnostic: MWHPR1101MB2205:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB22059EC140FBC1C2789A092AFA929@MWHPR1101MB2205.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oe69ZhhR2j3okJGUuHb53TeY/kxR33WjZETBCbfdI3RRxTdhpsB0wMD3VBygUvOMkUeOOZWcR1PrJtPWS45NYGwxJlBdy8fuX9VV3GL8MRFNS06aC/LYGaU/dnK3AAEKVKxsERMMJe+ZUZzRbQxChs4rqBBGflDokxSykRimQ14B7CIy0FB7YaQUoiLN97oJueiBp4ZR6U1BtsQFu1blfW/ubyx6ha4Le6t+EcNjCUqx+aCfNuSvOZ9rPpjmr30Meh6dbJmiWcMhvdmzGvWg7dp8RAg5GgsHqbERl3Y7Rvk8daQu0phQtCXqnnTV2MHscEOL8gmBZfxlO6JEUV0MH6VBk+2vcFyDgxQqB1sCXH8mj1OB2hxq95EcA9AQ2BXicd+dhpvLNJ/49I6gzHohWyoSKD/4YOB2Q2G02jwxpX3AcHCGdXA2dSThfDIlfHevDNYM/8FJ67ZFcNZUve2tGt+roGqtjgRK34kl0ebRpZ5v0yEfTpoopiatqum8V4/oI+Ijgf90i/uH1cPI2EQr9w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(366004)(396003)(39860400002)(346002)(86362001)(8676002)(52536014)(316002)(8936002)(5660300002)(4744005)(53546011)(66446008)(76116006)(64756008)(110136005)(66476007)(7696005)(6506007)(26005)(2906002)(186003)(55016002)(9686003)(66946007)(71200400001)(478600001)(66556008)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ebtgmTrlFPZrRRJlmQTE1zxA42T3Zuf23bmbPxazhzgKCr8z1pQfARuoLQ9E?=
 =?us-ascii?Q?yrW3WD0c8bjeFQ9DJjo0L5CN3LoP/3m0dYE+PlRBxDt1KfXeBVyoKL76OrRr?=
 =?us-ascii?Q?KG0OsJMQLVqlpHS58zSCypABcqcYSnLkTCJq5gXBZw7VL6JAXBbkeQZBbe5C?=
 =?us-ascii?Q?CmHA2Gdm8CDhZxJ8bEXhYKp5caXC5FLo+lzzYL/otpHWGNPYaQWCVv23ZXep?=
 =?us-ascii?Q?YPyaEkiKxUZvA21hPcy67/BVvK7Fcl8vgtSBE2dtwtu0lyc6dh9XUjE6AvfJ?=
 =?us-ascii?Q?TwPnwcRRPlkRQ5sKZdIeU6WlwOrN5dxB+0VscgrDMpaGVaPJfsXU9aC5vVHn?=
 =?us-ascii?Q?FGTUvL9SpsnnbTToJvQMYRiTvFCYVRyKvbPaZnqAq3vOPKhsUGtixhbDlmdV?=
 =?us-ascii?Q?J9zsaV0n25MxWIuY/I14ymoOcd77LvXthSerldrz15Opa6xnNH1W4MwiCS1O?=
 =?us-ascii?Q?rv9YtChghdfoiLQN37+V4eBsV65Y/HngWyCQwxYHZbXWQR4+FIvMuIDRbBh0?=
 =?us-ascii?Q?QJ3tEFmJXmTP+dsCaO2lviE8vzmMXoSF+t7leQjeF+ygjOuVEFvKp2nuJFak?=
 =?us-ascii?Q?/N1S9VRlqNAz4sehxAIX9LjlLIv+77zy2K/elMm3GgZ8ju6H323R3PFDBTgY?=
 =?us-ascii?Q?DaZdErpAQnJ2fDnUVQwwi+xidl+IC84yBu+i9JsQ/xrsEE+uNEKuEnohVMv5?=
 =?us-ascii?Q?iCpS8Qns/0Cz5Z4hZ/bY8asCqGOHEQQYgzYTo6zI4HfCuGrNFkZGdyuA/APk?=
 =?us-ascii?Q?7MO5JVQhg/GL3JeCo7xYrJth/JA7zPA5GUzrQsDHnpK9n/UfrCt7vVsyzqIY?=
 =?us-ascii?Q?loFsW642ZihXNLX6vPuUv/gxE0VWr+f2xOPuDZtwhP0ZMN7Ewb9WNYdyZgPi?=
 =?us-ascii?Q?GNOhWloJB78EFzBDgg+pAbe7EnvP87X+mECpfDc45Wx0kaV0qUM2JB7b59Qs?=
 =?us-ascii?Q?WW/95stK8vuxPygwsnoF9iwv4eJwHLorWow8S5aO3i1F8J8jE5w9PuUkRQ+J?=
 =?us-ascii?Q?7HqpgPeHfra+Ih2LCqYdreQ73zUakMxEwulH0h+R8SHiQIOHF4FH3e4mqxFl?=
 =?us-ascii?Q?a4xbWz6qLWl4XrFCCqshJ2HFgGOCXJ6P+QPgDr6KivPBEn0Z0WbzcrpHr+Tm?=
 =?us-ascii?Q?9o4WTyBSaign3bpDSKa+L1j3Lbti3CH78mWx6TO1ZgbssUjMEQ6QU/6++Jn3?=
 =?us-ascii?Q?A9DZxreT/0+PTERhoSxzKOkztwTSG2uyEjlJXTFwIb9EmQzq3z8vGe+bUE17?=
 =?us-ascii?Q?v/MZDT4AzIYZehewtjkfDGNQPAT2OUTzbdfnwajmFIw+s633rXYJfRwTlkm6?=
 =?us-ascii?Q?DbJIHwtKsQ9QIkSedxggV9KQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f6b886-a126-460d-44a3-08d8e3564785
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2021 23:51:37.8289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wb9G3wBSS250Uf1LhrvLo90fGoIQ7KLJciDd1f02pUjHCXNnt4gnXuWROJF1V7VImlgbkiOnkBLz0YLMNmlPNHUgBE5m0n7SGsvfLmfZIio=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 13/13] ice: Cleanup fltr list in
 case of allocation issues
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
> Sent: Friday, February 26, 2021 1:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 13/13] ice: Cleanup fltr list in case of
> allocation issues
> 
> From: Robert Malz <robertx.malz@intel.com>
> 
> When ice_remove_vsi_lkup_fltr is called, by calling ice_add_to_vsi_fltr_list
> local copy of vsi filter list is created. If any issues during creation of vsi filter
> list occurs it up for the caller to free already allocated memory. This patch
> ensures proper memory deallocation in these cases.
> 
> Fixes: 80d144c9ac82 ("ice: Refactor switch rule management structures and
> functions")
> Signed-off-by: Robert Malz <robertx.malz@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
