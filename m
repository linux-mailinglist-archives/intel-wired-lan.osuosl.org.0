Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B89262D860
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95EB961032;
	Thu, 17 Nov 2022 10:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95EB961032
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668682177;
	bh=CS3XjG3u9fpGlVfQSVDGyM9zRQDZI/yBchEgEpUVKBg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qS6HIkspa1N/rPxqu3Zo7kfNbSp5lp1uibeFcNc9my1HDQP9L4U0GvLkKY32fUV99
	 xdeAMqi5qUMhqP/2OVFljs9IN4+Fm07xHEAA2ehZQmY75DNBgYVms/Pk8DCZS2bTHI
	 A79dJrVCBD6IK5wHdZ9CDUdPu93o/JQFbfHbeyqAOzUsilPCggYbgjcK5A3VtzwfhH
	 U9mVa1oKlzrDNjfqfC/NE7XbjQj3FeuGQfbCrHbAr+fNkGq9rv9TNB5pPKi+0Vjgtn
	 mogy8Fow/RKmyIIh5I+xrJ92s6nKtu36rnNCIULmCjkqe2a3e2ngdItROEOCsk33nA
	 Ic8OCrw+NBomg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4QOr6_ChjPeP; Thu, 17 Nov 2022 10:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95D6960D8E;
	Thu, 17 Nov 2022 10:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95D6960D8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1AD31BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 882B7404B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 882B7404B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id COuB9fdTohhS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C03E340420
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C03E340420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:49:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="310449949"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="310449949"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:49:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="782177317"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="782177317"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2022 02:49:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:49:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:49:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:49:28 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:49:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z6D5CdDXRjxVEkVyqntaWNvsndSEd92vMEI52vRck/wyrgRm0dqFvRIrfma4nTkU0WPXZy1xss4GtxuNY86ptY7LHQBU5TY8oieZtKq+WmzLnPy9EChIhlNNHcF99RHOGFl2qutZksIEjNxDTs9AiPKAFpTgRSI+XsEAaUr+v6PFLpXqQHuLLsSb1HeRdp2yn4qtrHzHhHCAAhCUJNdrHN5tOaf3lGjblaOmd3FBprg03XEPrvOqBI5EZ4p9Cis4YKA5OaLmI+GmOOzh/+HkTV5TSBNaZnZ/GuMdFGxj+SYmZuhl1kbg/YMoxMhcEbT7VdIzgiGgVAC3uKTXKqvMKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v6Ey7TvhvZYJ2sCNifOoLbfUSUh7HVgQiKrEw/iWLHY=;
 b=mngdIs0y8nUUb3x9O0qMOaP7tSENsPoYz335uZ4Tmhxdg83/PkBoEiWhO19CpusIqkGeLrvZ/3ZQOxFdUSJ0nc+/JciBhfFbuRt9FGYbYSMSPUmmVIRgytB09auvULNqH1k0Pfxp0Wsmr1IhzgxlbECfM9VOfZcJB/h++Y7w6HWXAAlmlblnylYSqvCUgHXig8+2iSiCmvtlv3xKNgPx8xWPbmhd+AmJ2DWo19BfUzK9rHLNkC80vBA7XGVjxzJvQc6murRqan9euOR06BEPeyWJxglsezGImqg2LwCbx5XDBpfdRMhp34c6dEpT3jUlBFs6mmm/biNSaTyUvDVNzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:49:26 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:49:26 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 14/15] ice: make Tx and Rx
 vernier offset calibration independent
Thread-Index: AQHY79AgD5CXchW8/EGHkUBegyaVJa5DBL8w
Date: Thu, 17 Nov 2022 10:49:25 +0000
Message-ID: <BYAPR11MB3367D765A4A8D871641EECFBFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-15-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-15-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW5PR11MB5930:EE_
x-ms-office365-filtering-correlation-id: 118b24e3-3ca3-4752-836b-08dac8896531
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JIzjBRC040oMt/QBHFdbHBg8PnW9KyDdfdrjn3v77OwayrIIOmi7n5mrl7IYupt9HMsnsWP4wB+X2zUaBTKVADhVm+haZ0TEkQM3G8IN7GpIMPBtbAYf+lyWkM8Vjw8d3Y0ZQQ3zdPoz7lVcjoTSAZs0d/FQDpxOurBWfTgiR8H5ozZdSuXFVvP51Tu/rcWyoISyV2I/D9f/YiTcyRcrjt/lBmVYrDpYW9rofelJsTt6g+fuV6VGoD8nVsjFVT1gHC6FT80YRZ5/vM1EdUUwi8Ad2YV6AF2U/vegORSIpEekB/YFdFVAxL2rk3No1FwvcZqIBHiuvF9bor1oODPhOQJWo83xLCmxl+Qfid5AZ4BI8r0Y0H+V/BDc2aqGFC2D6BRTsn+KM8WbEjZS81t62wu77fnVtcb90YfWpbrE4SO1nHXWp6KbFguIAo8T31+BzycI4+UdYCFGH6uBc79bZSZIk7DxOghFWwO4+IazYEmvy2vXzCuKb0AbZqu6b1EzoK9likshnDBUhrXHE6A0biFQGD+cwa9E8ksYWHpMEPXymzxn4qTsqPgX0lE17A6r4COwWnN5SGkOtTDeUUP7+wfgNKu2gXDHXMr6NE6NhufymOf+dysYlWrO9RpisoOGOuotfx1hJ9/Zc8RXAPqOEPaQX0VpTLO/1oTF5+EXwOQz5JAOKIUyV9tVNqidtaE2Al4mOwkXXkoSNhgjCb2UnQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(366004)(396003)(376002)(451199015)(107886003)(6506007)(7696005)(316002)(9686003)(2906002)(26005)(53546011)(71200400001)(110136005)(66556008)(66476007)(76116006)(66446008)(64756008)(66946007)(41300700001)(186003)(4326008)(8676002)(52536014)(5660300002)(8936002)(478600001)(83380400001)(86362001)(38070700005)(55016003)(33656002)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iRiXRaf5C7f0SAlDkGqsFaqKxWTaY5nW13kq0lI8bwAx2BpvKTk15H1V82tb?=
 =?us-ascii?Q?pHNIh0bxhlkm7GuYeP9pELxnrcZWbyJjWoWiuxZPf4M8uu313kUsaJSaq1di?=
 =?us-ascii?Q?Rdp40C8Dd6YJF0fRBAAcIZ5TnVA87xTE3UCYXjZJK6d+i3yQLF129vnnLpe3?=
 =?us-ascii?Q?U2aoxYj2OuaA9eTIphle4uHUxKHCBZ21EJcQm3UdHmCvYYkI/ZeuGmH1Rhdc?=
 =?us-ascii?Q?mbF063CKA3pkweI/aMPkBmUPIf1EvvGERxvzrNwf2ZqdTJhXB5ptP0NL/8dL?=
 =?us-ascii?Q?CJaGsE0TcT3wDrLyuYQtumNSYBeFg21Vizs0u/XOoWzwFMOSIuZfV5zBAY3s?=
 =?us-ascii?Q?M96z6f2SVhANXMasTh2V9nm1QUZBR50duTS5x8cHEtL6MCahZkWSaybgCWh1?=
 =?us-ascii?Q?XtFxlGfQ3bzxeFP7bmlmp288FC9bdJdC4KYbCINULs6KvzA05poWaXTRlOez?=
 =?us-ascii?Q?Y5m9vpqiR5CmJj/eeMjVyXUWgBRS6Z2WjldNpLuMMp9DEiMRuhvaJNZSPkYZ?=
 =?us-ascii?Q?zcnWVpDktPpMgMVoA1V70lVHTVXIOtoejWyVPgShCjgrtCpQOQm/VO6wZXr1?=
 =?us-ascii?Q?TO196SjZs48NR7BAhLvXaO2P3q/zqlawO2TTWW7y/kpSVHv2+/aJPXFel3dJ?=
 =?us-ascii?Q?T3NlWiQIQcdJKZlDyqoA9sgjw9ENvM35UCkvzsFy5QTKYLzJKUm1XRrTVxbf?=
 =?us-ascii?Q?Aa8A/ta8jUCKbEV/KXajFG91IpEAQ9u026wiC6rX/Mt4Qbou+Sn4ZU1YgViA?=
 =?us-ascii?Q?3RIBrHv+LbvnU28fzr4cjEJrB08n+tM1QxPBZD/FeYfH9aOIbvvDCuBIYG1j?=
 =?us-ascii?Q?XekA6NgxcUh80J7mAK+YWyBKGkshqvDDHKoN9m2kCb3SFyCh1ngLIXUBO/E/?=
 =?us-ascii?Q?zTHMTzHp4sRhtmdy3S5K1+Wj3zWpIxce14gO2nWQwUUB97hdAvWgG71aVtnb?=
 =?us-ascii?Q?42TTWSkx+HWM9e2it9TXd9iPOT6iVgHo1FdOKL7/Ie7pWnwzvY/7C2nflyOC?=
 =?us-ascii?Q?Hbaj+hX0GWeDy95QmJkjPnphesqje46HfQg8HALmpblqTZVw+Szw4Uqyffgd?=
 =?us-ascii?Q?ekX9uSBrds155axlw2YPCs/oNrhRy9fRJqs5UWjJvl5zMUfUGz+SvVK0I6YG?=
 =?us-ascii?Q?Ng7JiPWZtx0OiW//8OBggN8oBF1bTvMHs7S6bsvzqqcvA699v1EsXgp6pZYy?=
 =?us-ascii?Q?3CSe6qUGJSpwDVbcbmP6QofD2Npy2UBDq83ZFmk22NfavCYwRgBexbTRw9es?=
 =?us-ascii?Q?Ebp7yMbhrhFwcfTzPkoPm8xdHJ4pjMT/5ByTS7DSFhpZC5Vk+1HhoHJ/Ab5y?=
 =?us-ascii?Q?DtSMNNXBXyJoWL9J24KV4O9ylxOrorBH9RMouSJG4fWfkRlivNw4jdKTo/En?=
 =?us-ascii?Q?uOIFcT9s6EdAoj68IS7gZSaLibbYbdxsZmRrgcZWFx2/5bJS7B0SOfsO7KSw?=
 =?us-ascii?Q?sOGK/xgcDeqtszAQxytbB4dmFS4OLjCDFpj4zuN8ZfXKl8XztonIrxg0CAKQ?=
 =?us-ascii?Q?NOwHBdHpB6ZNK/5lD02RgAn4f8Dmqh/h84OujBVGkOK6HRxq5G+2nMzSMzrG?=
 =?us-ascii?Q?+FP/EBC2rCKmrOkYAbQmxe2+/nu8Qz3nbrgUEt1o?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 118b24e3-3ca3-4752-836b-08dac8896531
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:49:25.9540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eIZnm0fK67HSwGX8KApjcvEkpeQdGgkPsVE2O5FmxOEoxSIdnYF8ZBCMYJNbkBPID5Diq2fs+aiseGEG+v8CeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668682170; x=1700218170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9MIqAJZK42hZt6Zt16sDRZxYtklX+94oBLeFSAn2Mm4=;
 b=nw5tYYjY1Ht2BmZoz/End0xNb+uSZ615MaLL8ECzQu3R/UPvtanALmlA
 x99QydzSE/S/1XvwqSk7JUrZTmnMPMLE9thXbOzKQpOg/oBIn/8NBWoC3
 tPdyq4d25AsgnUqWu/Ljyok84VFgx0GRBPmYUhAF7NUxoURJkNnMtktrl
 4tpGaPFMOUB3jdHPZ2cNCKoGDXZAJpcL2J0fXmynR8xy2M7iQ95Y3p2or
 fh2iakj+stq76WfN+ef+YF69jklfnMyLyWPOt7Kdw7G7QqCr5f+tLMV+c
 sAjP2h5Iuu2duV1+COkHlC1g9XEPE/vX7UWFCllNg/YFx03Uky3M7DqTd
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nw5tYYjY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 14/15] ice: make Tx and Rx
 vernier offset calibration independent
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
Cc: "D H, Siddaraju" <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: D H, Siddaraju <siddaraju.dh@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 14/15] ice: make Tx and Rx
> vernier offset calibration independent
> 
> From: Siddaraju DH <siddaraju.dh@intel.com>
> 
> The Tx and Rx calibration and timestamp generation blocks are independent.
> However, the ice driver waits until both blocks are ready before configuring
> either block.
> 
> This can result in delay of configuring one block because we have not yet
> received a packet in the other block.
> 
> There is no reason to wait to finish programming Tx just because we haven't
> received a packet. Similarly there is no reason to wait to program Rx just
> because we haven't transmitted a packet.
> 
> Instead of checking both offset status before programming either block,
> refactor the ice_phy_cfg_tx_offset_e822 and ice_phy_cfg_rx_offset_e822
> functions so that they perform their own offset status checks.
> Additionally, make them also check the offset ready bit to determine if the
> offset values have already been programmed.
> 
> Call the individual configure functions directly in
> ice_ptp_wait_for_offset_valid. The functions will now correctly check status,
> and program the offsets if ready. Once the offset is programmed, the
> functions will exit quickly after just checking the offset ready register.
> 
> Remove the ice_phy_calc_vernier_e822 in ice_ptp_hw.c, as well as the
> offset valid check functions in ice_ptp.c entirely as they are no longer
> necessary.
> 
> With this change, the Tx and Rx blocks will each be enabled as soon as
> possible without waiting for the other block to complete calibration. This can
> enable timestamps faster in setups which have a low rate of transmitted or
> received packets. In particular, it can stop a situation where one port never
> receives traffic, and thus never finishes calibration of the Tx block, resulting
> in continuous faults reported by the ptp4l daemon application.
> 
> Signed-off-by: Siddaraju DH <siddaraju.dh@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1
> * Fixed the string alignment for dev_info
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 128 ++++---------------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 133 ++++++++++----------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   3 +-
>  3 files changed, 91 insertions(+), 173 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
