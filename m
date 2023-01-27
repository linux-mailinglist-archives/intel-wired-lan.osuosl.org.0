Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E5E67E5CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 13:53:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED09829F2;
	Fri, 27 Jan 2023 12:53:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BED09829F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674824007;
	bh=p2+vYf5l+YhLTrHUnsU56TAxCOrwv8ki7hdZzOt8sNk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HAqtSk4ne9K7whrWxohBOoO8n7XMfODy53S47WxQfIru6M3dsdpvvXIXl/FMazPpb
	 OIwTCT5WoX24F+VFXZGZb/GJBMCWdUFovN7GJNuhzEqT14QrY6yO+RRXOAY2r8ewW/
	 iDmq/LaxWoqgGa4W912FvJ/pxElk4BdG2d1E2Y7lqQGtWXQ1CAI5nANIx45N3UUk4S
	 SNd+nqDnMHyW8tutfXSI98FrLdG6o615XcLHmHar2eP6ytZ1suVvesXVn2uwMBFyPr
	 txm7hGA0iOO8Is5sQ5IsizH3/tzdCNnJYeADTspIxvXK8Rq93Qc7y6HJkL/Rn1idPK
	 WB7W4mumk8ZFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LgaYP3AZav-b; Fri, 27 Jan 2023 12:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD46D8293F;
	Fri, 27 Jan 2023 12:53:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD46D8293F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF7991BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4E16417E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4E16417E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TGwZW3lZF35z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 12:53:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B7524040D
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B7524040D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:53:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="325751475"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="325751475"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 04:53:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="663253959"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="663253959"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 27 Jan 2023 04:53:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:53:19 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:53:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 04:53:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 04:53:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOAjYa+7lmgLLFLWUPgcYYbKm/pcsr6DMfMvM64IAVWN47e1GHqMkx3IfhFVV/AR0zes69k4DyxXqUiGLiZUOzAAKBcGz4aUDzalQ7pK8dF3ECBtcqJXCSo52f/A7/WYKIxua2xuF4ukvV34+nVUTIBnMhsGY8PLBq1JcwfO09R8kHhQTrkPGQYpKCHiTQh3hS6IrSa89GBcQsK6J0IlJvQGRevX3qOgJicC01nmUN9BBWOP16GzmF/Aj8ZfCW4rPIm374jnKf/KfaJ/rhdmcJVBlVH5GIrNRa+LuX+ASLiqqbMpnQ79ibgbo2K8OqPNmRi9eQ4LhiIx4t99dSWzPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2G21vEmYPuDz65dl9rVi91uHOm40Cx+Gf3mRif0Luwc=;
 b=BX88UMVXfmHj9+lbhzeJdFjmMgRXCZqJwEf8hHuF2nJ3fW0Dpal3kGFgVoIRDtGjSER4sOM6cHOV8EpxMopZc5+z16VLcp2J+zs5QfFgHOzaUQ9tfYrL+sxd5mm6013E3o72msr/r/c+crUoZMZiUxMdWLvuT0O8IKijBGz7dKlNtIRGkGzQzDwOSJ3+MOt4a42zURTs2yC/f2toGf8EJLVvVIPDlURdYxHF6pcx5MjhVlrKPGJfF1Nc+IKWKD5lwJCllrOA8bCPqhfuaLsS7e16k5l7CvWTLu46U4gYatRX6A45Bv/ow7PoZ2Vd7u3Dl6ioNs1FLC3cEQbOatglrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Fri, 27 Jan
 2023 12:53:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 12:53:17 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 4/5] ice: disable FW
 logging on driver unload
Thread-Index: AQHZMEFWPgriUPCnyUyJx2wypoGz366yPAIw
Date: Fri, 27 Jan 2023 12:53:17 +0000
Message-ID: <BYAPR11MB3367471028CB1092AC06AE66FCCC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230124221428.114-1-paul.m.stillwell.jr@intel.com>
 <20230124221428.114-5-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230124221428.114-5-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6300:EE_
x-ms-office365-filtering-correlation-id: d9e56ad7-6d39-4200-dcf9-08db00657645
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sXqyQz94dgNWpwQJoRdSeK3ARmIK5gSN9W+0PLto702WaZBs3aY2wkmhapxGiWosprygDxikIZ1DyNieH1f0vuYj13nPcs2bxUYal2dqxWOj3fUhzUs/v2h8P3sLb1K7xHdUcKzuiVHUEj4TXzJsDMaaqCcRLpestrVyd9tRQkh1/5o0yB2TqfrshqPpQtCDucqJAhvURy00ux2TLuT62FuqLY5rPvoK0439iP/EBMOVQO3o9y+/qoi8lvxn8jJK788EpHUuwoYaYowMTW/fy4ZchunQfD5s7DjqY8SErYktqJOFeWZ8NWD1E63b1PokBcHbiyCeQhWOMB0WRpT3oc1Kotgm73ylw6Iby6IRcA8bXI3lgjveAoQqauY73wHIhhyLMVHDrQmNgDfB5VhfJfkcp1C+WDpa7zfx89hYvzGKBeQMtzDrpYYa5vyijLpRM5ZlbMuPoJJtMyNMC5w+AfVIB5jbvHmSR4jaOi//QS8KOaBsmomC7OSANiz90BMdGDGyH9uyPz09e2cGj3v/7k6mSNsXU74R+vw/5MpYpOQXOywOP8kMJO/fcZfWaziiOdoiDlwcXOTMunvKvf7+gmccyQnIw68fc9ZhVVXDuFpcGpkxue9DDUD9I1MCyVgghQsTHFZBRG0HQTOQcuSiVakLRFEN1z/fwwhQ+7xNhYDXRhpyfT2yk9hPRk49EaOrYHE1HC0HFMSqW8JPJtzZDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199018)(66446008)(5660300002)(2906002)(66556008)(64756008)(52536014)(186003)(8676002)(66476007)(8936002)(76116006)(66946007)(41300700001)(7696005)(83380400001)(478600001)(71200400001)(6506007)(53546011)(9686003)(316002)(26005)(38100700002)(122000001)(82960400001)(110136005)(38070700005)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p/0eDzh/37eCpdKI0VeTpcVaEkIbmod+lPoVRx/9EBlQ172sdzrj2UEyNNaX?=
 =?us-ascii?Q?aNL2uNr5mf2CLcHR6+0bixlOhfy9N9C4g4W0VNIEQNgc3PXNINcJ6At+YBdj?=
 =?us-ascii?Q?h1ODjkF8YWQqF+WoKL5hMLP7k/TCn1BVpp9+Jk1xHysdaikLBuQc0WT8HP5J?=
 =?us-ascii?Q?8ww9NrzvmQvFWtSMmjoZFFRRO3S8v6nlR50gvI9y+88Nm8pJy+u+Z57w/Qyh?=
 =?us-ascii?Q?f1lbETmPNvEnDK5uOe7xQilMfD/Zw7iXLJye2UpXzgk+513+RjTCkOrIRLb6?=
 =?us-ascii?Q?oAhzDibtEYAY1SUarjWvBoQRhpdr/q9n+jKEP6sDf2h9nwH35NtLx+ZMkG1/?=
 =?us-ascii?Q?FPn7q/If9YTF/X3LzRX84nHn7F6ANiFJedTUy5iCXm7Fn+Wd9FM+3LWv1Vg/?=
 =?us-ascii?Q?08YObtsCJo55B1bm3wjYjmH2G2TKYwd5VpBeSC6xFnHHThZWHKRorbC95Lh9?=
 =?us-ascii?Q?eYFfEbSTOWP0Em0mi7M/aRAVP5VGTgJT2oTV/+HDVUlsQ7zxlQrhvKi0j132?=
 =?us-ascii?Q?RVgO4U7OnoaminLd9vI0LvkdvWv8NaNWnIKhddn5mI0kdsdFDyAWhDxRaXJJ?=
 =?us-ascii?Q?AFSG33bPn5nVKJ4AAL+1jKbFTfZ2FrgHBuDwOt66hUgup6+zsIWnCTq6BovD?=
 =?us-ascii?Q?VvBcGElTT5TTDFmjryDvtzuGWN/9RwUg/IJTde8QIemJ+W5vzJ6EMfw7XTKp?=
 =?us-ascii?Q?Wy0rNbdZKjCV37ySa6PXTgcH9EAYZwUQqqX/qrvy98TgA8VmTykWmD0LbF1V?=
 =?us-ascii?Q?/WIC25GCyyqTn7bCAdQvu/l/8L00jwMeq1Qzff4/4dLByCPsDaDuj9ZLNsXk?=
 =?us-ascii?Q?HU5/ii6HMGpm5hWldkf1fzxMj16wf3dd4M+d3125gQLHV8bc5IQTpcD1Kvdd?=
 =?us-ascii?Q?eYf+gu96TO3lVvGNPX17K/aVguGIy5ikDKZ3tHsb0j6bSRZrUha4DSD2AiK4?=
 =?us-ascii?Q?bVTPzzfQSv+NEXRS56sV/1CPVPHus6C2jpI3ZPAzcXRGvDKsyqkgA1N4zgqh?=
 =?us-ascii?Q?Rnw0NXQuUSEzNA6GQGyksoSD93ElS7tt3UBPYkxnrnBBG8VzEJGBx+XTr190?=
 =?us-ascii?Q?CjZcg9xu4Pcw0rbHC8Tj1FH1i0fwHmhH/icuFk9Ek+3kCXEnvLnKKsO9vN1+?=
 =?us-ascii?Q?t7Fx+8wfOEqBe3H2eYJaWeUiBb9C6bLhbUlT45xSyBZbfZhoH9QWB9Ajdgfm?=
 =?us-ascii?Q?kbMIdydYTI0qTLEBtCXLjZNZZTpe098JGOaD6tDLG6e0BxwIMkLKHSI2N8pX?=
 =?us-ascii?Q?adoQlwVlaDhAWBq2Mg7FPkRo0U6ddbb4VPJ/vEcMldwfIBlllHPDCRx5OT+T?=
 =?us-ascii?Q?9KVxMHCPF1k5lQpdUCiX9Ff8sMA1eKmbDqoSaolNItumJg/zbt1F2ZUCAZED?=
 =?us-ascii?Q?YSLH1gfFgRF4dU/gzgE2OE78EmEgs8Lll4qiV3wEotPypQeMKgBSkF2aRfFd?=
 =?us-ascii?Q?T0Ggoo7p6ALdyuvBh8AX40pmmNNc55CwCxOgSA/bCzcLbzvNkTH4M0X8Z8uS?=
 =?us-ascii?Q?VIbU6vhiaa+WTlnmP3OzqzcJkWfZuUM7nxQbBuTt9JbsznWVIJBsC0xqZJZ6?=
 =?us-ascii?Q?+5sq01D6j6Jebxbz+GxIhXAtWDz6At1xuNxPtxMy?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9e56ad7-6d39-4200-dcf9-08db00657645
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 12:53:17.8731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nQr3lG8Y8Y3ujz/AWQpsLsS8ujEpIkFp45pOFIUZ+YWZWUl2qWrg4XPXZsXwnupg7s9/ur2sEiFcqwyPt/If5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674824001; x=1706360001;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RMRXy0yENQd/bw0FW2KdvuUUB2ycmK/nrRYnwNpiyhY=;
 b=O5dP2get83NWUoQ628Jtlcmp16KcHxIJm3MKUKyEa7KQOaBKPM4zGSiZ
 V9bZ2wm3YwLDw/SzsPnUFORIamH+eunvLaV0ibYrLOnpcN5RLZN1398zP
 4a5QAB7iuAaNtctl8pu5nKUH+l4nVGROEI78UwHdotKys1FbNuLIzmJzx
 reLyKlc+AS2ePDxPeOWiQWCBMgOIB3iywqDDsPg0da4uKuOL1OufGkPd7
 BlF0im2D+LgZ/GmbLOEQt3NsAZ9Z2n8jJMLG0h4sKPwlxDxdeJkHvUmLR
 L3OyeWeBkIeRpU+iih57LRJndIpGabMeaXsYYB2f2dp9AT6MDh8i/kSeN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O5dP2get
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 4/5] ice: disable FW
 logging on driver unload
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
> Sent: Wednesday, January 25, 2023 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v8 4/5] ice: disable FW logging on
> driver unload
> 
> The FW is running in it's own context irregardless of what the driver is doing.
> In this case, if the driver previously registered for FW log events and then the
> driver unloads without informing the FW to unregister for FW log events
> then the FW still has a timer running to output FW logs.
> 
> The next time the driver loads and tries to register for FW log events then
> the FW returns an error, but still enables the continued outputting of FW
> logs. This causes an IO error to devlink which isn't intuitive since the logs are
> still being output.
> 
> Fix this by disabling FW logging when the driver is being unloaded.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 29
> +++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
