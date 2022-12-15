Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B74D64E3D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 23:34:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66D5340FF5;
	Thu, 15 Dec 2022 22:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66D5340FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671143695;
	bh=8tBtSBOb0CtRRABOK5S/vJ+SbEusgDix5VFlrJVpd2E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XmOC+8veXeZGjIXk7TTzizwoZ4Ig3DM4BqXrMojQqKT+EwqtYzptiogfpdppoN7b0
	 mQP3FUM5fS/1wsnhgd/9g51j6eiUyRhAMzNHI6OwXJVpLjyQcOznaDXaufZ80Cxq12
	 nbSlOydnEFDGlJH0WiRCcnpqRyrs89H1tXsZI/ew+elrRVcjoKb3LOMeNR2Ovpxpsx
	 P04eKcNlJAxTLV93h3bknppDxkEKNUSCpG9Aj9b5C4xNvU1ZR5+Ji4l9JQA2gR4Pv/
	 LqGq22yO+elEkoCzSYGRztw15/BRoKfkRjwV+TbJrJXjSLU3tP+6OC+nXar8oe6Emp
	 F9FS2rs/wfRqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M9QgFF0YhV64; Thu, 15 Dec 2022 22:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2EF04000B;
	Thu, 15 Dec 2022 22:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2EF04000B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C30C21BF33D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 19:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9845D41A67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 19:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9845D41A67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9i37Lp9UCUr6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Dec 2022 19:15:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7286841A64
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7286841A64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 19:15:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="320663096"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="320663096"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 11:15:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="823834082"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="823834082"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 15 Dec 2022 11:15:43 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 11:15:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 11:15:43 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 11:15:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mbf6hfuFwWvkXUk0WalV12rDmNL5JXNUTa3tNclm41qRR55HZu6oZN4NdzKkYN8aiD7hnfG5reSeDmnN97tHFtMD3VdR6Pj+Uii4iQ5TbVKTWG2vplfy28YXGxPPVa3wZoT0DpAgauOvCGUzIo8g8WTsrO6pWNFuqdqcUfaEsx/4FAit46Tu/onhOyOOo+80M5asryBZWPzqBsIs9eKDrQ3RXCABpZN+OnFdkinroLZnZieMKiq5xDBoNqURANTDIgNwG4s0ZM7SiuD9w8FL3CZVce2/KNcw/JpabQya9hsJAEVhxNDG+QDQR0Qq7hDdXC6o5neHPbyLDHVdeNrt2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kp+Z0oCG3aEDy0nQLTzAZ1GJRqPJlfSo0BuKb5COidw=;
 b=QDSYp0+0xTeusFO6kNMj8Dqen+eSyCxY7PIvRerfMeJ1mDGYr4xtMkhqmF/nW51XiLy25OpGmRliAonzFZ4X8VJOALlCvSGhBveAtai8n/G2dkwq7sAWdGk7AdVBED6GpALkLkHMeAGYOI/WS7trtnHbGf5dzn1807M7ZSZMuL7hYa5t1mZTmWyUFxojp776FhJOq/9XoxcR53mlZavCL6m0JFcVUfBZnVKcZyUcVyasZKbJTpJYCYdEJqtKEwD7lLU/h+CFqqdrMTaFT+/CYaDZLXi3dSues0vYTihAFphizujdUA1DSlRgyFMs6yiRAXB1lLYf4MfJCZTpA8FFmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4681.namprd11.prod.outlook.com (2603:10b6:303:57::14)
 by MW4PR11MB6840.namprd11.prod.outlook.com (2603:10b6:303:222::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.12; Thu, 15 Dec
 2022 19:15:41 +0000
Received: from MW3PR11MB4681.namprd11.prod.outlook.com
 ([fe80::130f:a28c:91cf:c23]) by MW3PR11MB4681.namprd11.prod.outlook.com
 ([fe80::130f:a28c:91cf:c23%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 19:15:41 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Split ice_flex_pipe.c
 into DDP and flexible processing parts
Thread-Index: AQHZDj/E3CcLPFqRi02dpxbVIDzDI65vSUEAgAAL+xA=
Date: Thu, 15 Dec 2022 19:15:40 +0000
Message-ID: <MW3PR11MB46819BB5FBE42B86FF6D6DA280E19@MW3PR11MB4681.namprd11.prod.outlook.com>
References: <20221212155240.1316504-1-sergey.temerkhanov@intel.com>
 <SN6PR11MB3229871FF71B20D81D029F7AC6E19@SN6PR11MB3229.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3229871FF71B20D81D029F7AC6E19@SN6PR11MB3229.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4681:EE_|MW4PR11MB6840:EE_
x-ms-office365-filtering-correlation-id: 3348dd62-adf2-4966-a15c-08daded0c1a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qDXBH2dwUHaJyP8WDfgT+Ewm5p2ZWGOjijbSBpno0Q/G2rqdmmxTQbUUrvC0/Iy/DKNX+jZvkcOws2kxOuCqNvdovUio8DdaarDwD6hwBwl4oY2yWknXVYUEpQwIeVazYmmpD7+xtJRPJyprJf9TXx0GFTjYlwyqDn8BHEio4r+3tBpzXsRgw/9GwX04cZEZ6hTgc6G97lklMn4DZ/h7OScO27F51WJBTplNsK/HxhuKYkoIwp7vRmiiqtc+sS2AUcenlOgTSxyvJMbzdy+wYHldaj+sVIeT5RO2b1gHKHtzB0C1toBF4tZ095JO9XOw++bek+wCz6A5xrnwnLkMM+dsSI6NJixmv9c8HQDYV91tzUiG5iP2r/OgRiedDP2XPFRGg/Sg64B9fbzbH5+v5h18QziunMwpBaT/uIM1bWyj58m/gTXHkXwlTKPM7lPNvrdQJzEvtcf2PNO6N//IUaySEK9ER5aMxtD+h2vZQmmXaqjgep0iIoKq7M+6oqazrarKFnbUZbhK8batIDAfmibAJl8e8ie4MWWWaCc4NOhx9wtc1JWxv4kKgTorX4UX3zkcGDxXRk7BP6JihVenERnAeev6XqWq/KR2UPo2B1XTYIhTr5Z7cLVW+jV/nsuLpqKIAEec+0sw8Uicf+YakLBJ/vzFu67Eg2cdUjYb0RUxOQzHosSw11n6DsV6ccSq3O5yGDc8T2w/8vs2RZsPCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4681.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199015)(71200400001)(122000001)(38100700002)(82960400001)(186003)(53546011)(7696005)(26005)(6506007)(9686003)(33656002)(478600001)(83380400001)(55016003)(8936002)(52536014)(41300700001)(316002)(2906002)(64756008)(66556008)(66946007)(110136005)(38070700005)(86362001)(76116006)(66476007)(66446008)(5660300002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pdaEyPzOpCUCkt2iLJwvaCSefzuxU6/lo1bsrW7vdbEpHqvk3eUSLGCsUSzs?=
 =?us-ascii?Q?k3JSFmEb2oVw+EyqMO+sKbQLpVJqhpG9fHST/HTWr6ybmvK3mdL4EKSbGXYf?=
 =?us-ascii?Q?v6pdXAZ7M9bmbWGUhATXt4trRbnD+DSgOf22ocZ4F4nlpiGIHVRmTA60DkXF?=
 =?us-ascii?Q?4Puk7xTvE7wpunCPW9+sdH5rUNmXTNs+VjuDfrOcLLZwRlaaFCHOVUTmIYss?=
 =?us-ascii?Q?WfeK4UNLPtDYxCADxPZIOcIoWk8EbIN1khtl/S6mRSVkQFC8BHPPiD8HbQWv?=
 =?us-ascii?Q?xYNRZ4VfmvoNP2ornzCTqndaJEAtv6QDnxnQC6NjZAH2Mdu3F1cPpuTo5B68?=
 =?us-ascii?Q?UEpaiGHhxHDIdwWEqyLDs5Lk/iTUBk9yzMh4N8e+X+9jZwVIRl63I83m/kKE?=
 =?us-ascii?Q?iltd9gwduaNc3NTI32p0GBUnmvm9d/A14qG/aw9smYfmkvPkH277YgEPC2uU?=
 =?us-ascii?Q?VsXVsb1sirDFMJ71JJjAtiotnmlkRomhaCf0fHGpyMv/do3Ow3dZCMf3WRnV?=
 =?us-ascii?Q?zG8oOk1S9b1rn2zIGLoc9LNWQpdDeS2J/Te2icbhcvwZ/jUwLUFyMK+qLKy/?=
 =?us-ascii?Q?2yk4fsGrfjtId2tj7yY8Rg953yuNYz00yLCTsjnP4rAWH1mgvOQ2IuHpYhpE?=
 =?us-ascii?Q?VCM0ALUwqFbOYaDrWnFO5ieE+kPmS8tBPFs7JYiA+Uc0rRBJ6q1vIiSmBOpx?=
 =?us-ascii?Q?ncP5y+O12BHEphvGIDXreOF0EU9OWJLpBDsJ7Q3gxdXvQL1DUQ2+OC92rZT5?=
 =?us-ascii?Q?pDKM0hyCpZjGGw+9UREGw4sPd6ICLt33YNKItoA7d/kNiAz2jXBSqncXgjy+?=
 =?us-ascii?Q?xFZHHxwHKAh7LsdNBFcNyioeByMiiLAdbeYcEIDPnNFEkGQYUk+T4eSK+4e3?=
 =?us-ascii?Q?JrE3vH6KxcN74bLPCtg2oN8hcWokRhxGaZiv0nybwQXSkO+s/NmKBR0mqjRf?=
 =?us-ascii?Q?30sc8Xs35ZmaaE9JQItqgjzF9/+sgOmQSjmMtmbmxTFTw2OQgJE98x5iVOsX?=
 =?us-ascii?Q?1NMIsmMUPV9lKmi+Rw9zp3KweD04UD2HvjUPI7E98IBQvWjnueLqFHpEiiro?=
 =?us-ascii?Q?MOksv1Ly16orVmpiuCQol9IQufCIAk9SfAqtNOjSH/1SkbVxkkJ01KMYwk+C?=
 =?us-ascii?Q?zA6574QHXrOU6B00xSD5JTDxrA6PyKCq8dbTiNH0cpONAeQdujvP8NVDJvLV?=
 =?us-ascii?Q?KotnLxza9afNbhTaMqgc8RqPSksapglyDyZDU05waAc/O3tbvY8mjjsITeQa?=
 =?us-ascii?Q?GjCnaH++WuCBKJZT1+ndMu78DQ60FiCJBbOT9SvrQGCvi0X9jIFTg+C2khfr?=
 =?us-ascii?Q?lI+CbGMlNryJXoDMPTbMKkBZ7Oc1VNljHysa/teR5hK3la0nJjfRkZSetnjb?=
 =?us-ascii?Q?tdOjQ6Hz7o49Aqx7lCaihAZFU4JJt/QkFiTCyuhWzBdA0QvVqRXzroNMABsM?=
 =?us-ascii?Q?51wWIPPLYOH164omYz/9he9Pg0e6uKL5zsryryjR5L7vbT3XbdhJRZ4/8kU7?=
 =?us-ascii?Q?cEgFPBgGN+GpzQsIuWXfuKNn4i7omaMTXSBVr4zgX0jNtXkkgqBI/KTuw0OX?=
 =?us-ascii?Q?yyLTfwuzSi+sI+6nEw2uyXYsot7bJ5i8w1DirMreTNcY2wsxQLK7CTx6EFRC?=
 =?us-ascii?Q?Bw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4681.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3348dd62-adf2-4966-a15c-08daded0c1a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 19:15:40.9077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jxc+QlDd02FTolISQl8sZKo7oHQsWCicDAOny+eyRG8snHBoGVlUwq7uWS6RAcsTXbiOa05Pe+/7dNhjgymZZDV5vOeYBz92eEZ+NTj6M3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6840
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 15 Dec 2022 22:34:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671131748; x=1702667748;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version:content-transfer-encoding;
 bh=8R/lIxAvfftH7Aza3BW0PxDGS3tjW8yLMuqBNxHC67g=;
 b=Zry42rX6mBc7t4/ZEGVYcS03lvbn2jGjPAo69c0CoEYfOoCT2L7lHJlH
 Xoh1MJYUm3GDlVoQkqa63LzL3GMtajDLtEzPniQgJYE18WU+oEC6e2ww+
 3ki1RnuCf08FpAxQtnAgvzQ7rUNjyS9ksq9BmlkVc1MSgfi4/EL4WUEGK
 sdmXcTLs8aKQTiPZWZsxdSIeu2FpYvzkfF/BSIb6gI/VgprPF8NJLPfZ5
 CJXQEltrsd2tot+F6L9yVBBmp9WFQjICMLBAEW33tyL4teokJVSvVjXUa
 0r9dYioTRScsGpBtxof2uEs6jlrWyPipAkwwlQvE9a/4L+67g6n1CnOiJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zry42rX6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Split ice_flex_pipe.c
 into DDP and flexible processing parts
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
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, December 15, 2022 7:27 PM
> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH net-next] ice: Split ice_flex_pipe.c into
> DDP and flexible processing parts
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Sergey Temerkhanov
> > Sent: Monday, December 12, 2022 7:53 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next] ice: Split ice_flex_pipe.c
> > into DDP and flexible processing parts
> >
> > Move the DDP functionality from ice_flex_pipe.c to ice_ddp.c.
> > This enables loading of the DDP package without the rest of the
> > flexible packet processing support code
> 
> Could you elaborate on this? Won't both pieces of code still have to be
> loaded?

The main purpose of this patch is just splitting DDP loading logic from the
flexible processing programming code, I have reworded the commit message.
The new subject line is " [net-next 1/1] ice: Move support DDP code out of ice_flex_pipe.c"

> 
> > Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> > ---
> 
> [...]
> 
> > ---------------------------------------------------------------------
> > Intel Technology Poland sp. z o.o.
> > ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII
> > Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP
> > 957-
> > 07-52-316 | Kapital zakladowy 200.000 PLN.
> > Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu
> > ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym
> > opoznieniom w transakcjach handlowych.
> >
> > Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego
> > adresata i moze zawierac informacje poufne. W razie przypadkowego
> > otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale
> > jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest
> > zabronione.
> > This e-mail and any attachments may contain confidential material for
> > the sole use of the intended recipient(s). If you are not the intended
> > recipient, please contact the sender and delete all copies; any review
> > or distribution by others is strictly prohibited.
> 
>  Please remove this footer.
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
