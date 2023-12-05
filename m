Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFFA804A22
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 07:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4184B61028;
	Tue,  5 Dec 2023 06:34:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4184B61028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701758051;
	bh=poSBW+V6nl2Tkx0pV6rncI4Qx0tU+uwY5ewo5OAhf0Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ueiuUBq4MpbVguN49jZNBsg2r7ptIx11i93NfmxzIZvqrZT+OMWPKg2N15BkhYbwp
	 DBmVIgFb/Ifzgy2OfohPEOVHLeZvPWGe6NjGeD0l2HnppsDXX+TbN6Y1ejdHXz+0nT
	 FfBoWEXUvpPpkSqXzgsRtNhIf1rjfB+JPEcnc98rFvkP+vccszQaaiklEBtT30gJ51
	 U1o6bpHTykKwZcaQHfkDYWbE1gUegMM7jV/sTtBcuPWQTtkneKH7uHGls01GdF2nG0
	 zN3G3DRJ0iraiFKsCh3tZswlEL9gSSnswLA7kohXEV78cs6j8i0Q0qzj5WuSjg02hU
	 Bjfp2NQrNoO9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yvB2g5wa5pmi; Tue,  5 Dec 2023 06:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C774F6100E;
	Tue,  5 Dec 2023 06:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C774F6100E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5CC71BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C2C84090A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C2C84090A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RvkKt-gfboou for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 06:34:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B42D2408E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B42D2408E5
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="384250473"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="384250473"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 22:34:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="1018120306"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="1018120306"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 22:34:01 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 22:34:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 22:34:01 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 22:34:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WIs5jX/5zYxTFMvTg/6+y+L+eaIHzWLwGb4z/se9jN6GgpGlaMZ+Mkk+SdAfXggTMVwhFygBNqQ7t0NAFttaw7oGyWZGFYpjZoJW4Jkozcg0JrCz66hqKnqGEGHiXTMkgp3bL+aA0ohLlYeUsgRYJEQL6q8acsmDjQrUfi4YmpaEh2dgihV1Gc47tDcYgBdn9yzs9h4qdqcL9pCgdl8P+yV1b6n76Nq5deYXkI4oh7VoDIlwtVTzssgsAwKM9MlhGUwHDkK2AoFhLBrbBwH1cxcnQL8D6LHJiu+rS49aEe+h1Nez1pR+1jZkoUj5cOcgMgaayWq2MNmtpeKJRpkGyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E7F355SsUJOm1rMzP/Ptg9ak2Pgkgf5iyoVCFIPc1yY=;
 b=PUl4w1SwT7SqhmsdJN9HEptp1GU9ZZMK5wDVH0O2/1Mx7bt+6RpSN9TXwW4sgOHRBYXEgqXCWGfxtNQKXtxY23w1de+oOBkVxsx0mJOgWfZMumVJafMXQlUWdO44uPgynbIqH6nrKbX026pyYRPGxHPn1QHTbAQyO1yyrY70omPN771ovi8gdT25SyMtXtRO8ZCVvvpdEMgZc2QuREvwmhal3ExjUTXl1p6Py6W78N92fw+KP87WD5g05Fop5AVLsOqPlIEpMsyO/vEokNU0dg0ORVMLWco4ZlXuPIjoOahfTp3mc3bQukVz+qJHZBCRIb1Zi8n7vZRFyjjyiPelPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SN7PR11MB6728.namprd11.prod.outlook.com (2603:10b6:806:264::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Tue, 5 Dec
 2023 06:33:59 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Tue, 5 Dec 2023
 06:33:58 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 09/13] intel: legacy: field
 get conversion
Thread-Index: AQHaHMCPW72HRsntfUebmwQfDgtVYbCaT4tg
Date: Tue, 5 Dec 2023 06:33:57 +0000
Message-ID: <BL0PR11MB31221348C8722E9E1AE8A487BD85A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-10-jesse.brandeburg@intel.com>
In-Reply-To: <20231121211921.19834-10-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SN7PR11MB6728:EE_
x-ms-office365-filtering-correlation-id: 56e4e8ab-080d-4269-2435-08dbf55c293f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BZc03m/7KhFWbhB4weyj5FlwBKyOMxN8vaFtB3Uf4wFfAqGIZRB7Hphzu2ExD/sWGAVqbC4A45nuMlCJ+egiAjGlYdW2162zNoBi3BrYqfhm5evn+Tlx0Nc7zwPcoXrKhMNlEuF+Q26meweedPjh2NPTzLG3LSZJTFx2C+VpsmbDoDJY3RPyofz0CJ1zzIyW+XVMTMJppbKqOdfu6Rlq269qQtLpOde9xFXMaotnMKmH64qtlwt8YXQnJjfgSit3AKHedVzBnK8CtsEqj3AMfUfO7BNiH8bPN6Z/9DGN1JJrkqWZ+lhng6Yj3BwfOMADbwb+TL6x9gyo9malDuRODecthTe/IHFCBcGhWXZoA9v9ycmfeutw+alFn2OjzxUAg2CLJwhhStcxy+mUEtz+YgMyF7hFxlSGSLIjj0Or1K2G2kjV5MXg+np/aWGb7jLmnlZCq76t7poTdkbkniJNwOoKtt3Y7HRuKq2kMZi//lba4wGm9B2/VMyBXX6DSO48EZZo2DWenybNr4csF/SjDv2wXTePEbnLJ+q+lTZi6C4jJzqK2rKmnU7zQe+ADPg7ssn4qTx6OfiSgB/cknMvjZzA6iPqUAAp5PyTx94ErMbm52y6WMc5etsDj+g0BFQI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(26005)(55016003)(82960400001)(122000001)(33656002)(54906003)(66946007)(76116006)(66556008)(66476007)(66446008)(64756008)(110136005)(316002)(83380400001)(9686003)(41300700001)(53546011)(38070700009)(38100700002)(2906002)(6506007)(71200400001)(478600001)(7696005)(8676002)(8936002)(52536014)(4326008)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FmLIiRIYCU+woPD6vmpJJRk8amPVh1fYiNKoEDifXr4kt7vcEbrX/I16C9dk?=
 =?us-ascii?Q?bZ0GhaO8xRRUqTF2FEcmFZcxZzbzX83TXIt6wD5Ws4WsWw0PVHpmc49TtEXZ?=
 =?us-ascii?Q?SG9l9F0rLktYHBi066IiNiHliI3c5Tt6S8ON5+8f9iR4PLieaow+qHmVQMaK?=
 =?us-ascii?Q?eGVsSTrtqgb6BOQQv+H/mOYwxGSy+qc6MEuovxzwPldmd6GmpF4dgRe+CRNF?=
 =?us-ascii?Q?qHijCnrBW0Pirh5OoJMlzJIDS06brkj03pRV9UzwbCLboFDd76j0VVAR80rc?=
 =?us-ascii?Q?qXwjNPlwGO0wdXHlGl2rmz20nFFdIttHWtT4wIEh1qpDSBL3PCnegEyUCFV1?=
 =?us-ascii?Q?aqHGFJMIRv/1R5eBXnlnR9yBTHSwYTeFkdhNlt5/POpHRt3KIkNkytDWg5+Z?=
 =?us-ascii?Q?kqplxSZpNykdjQrpKDd6uuzJwEPJy+YaJaZyG22hha4Jp77QRbK/cFJ6XOSF?=
 =?us-ascii?Q?qimJReQ5SGs0Ah4b35z7tf1wt0RQ6dApiq1c7SZZzSZbGHtIJztt5FrPLIjM?=
 =?us-ascii?Q?dRlc44xEPDbbtEWmJFCdXEJBOxyPCGrDPcTvwWlYE/+PRn+h7ueWaSW8NzqC?=
 =?us-ascii?Q?vtaEFtlQqPHbs035C+VpwB7y3JeS9xnU8EA/oto7P5OlorgnubFcQydMVMij?=
 =?us-ascii?Q?zCGwXvMfNFrSiFQEpEmn5UtUt54IYZEtsQRo7NqlhaC+/Bmht33UZFZfO1Ht?=
 =?us-ascii?Q?PpgRaY24ps978Ptzu1Hz3CEVP9AwzBdjmfdB91eYIDOTxujjwDq4fuLYHTNF?=
 =?us-ascii?Q?srfWOTP5Qe9QRttaieGmHtoNy5lBba+YYZ75LY14ch4OEqEzCDDXdLwt+d+3?=
 =?us-ascii?Q?1Vn8RVoW2UaTfazsDoaX00YCq9DqsDNH20MYIWQSXo4hA/hbDCL8q/UG9B8D?=
 =?us-ascii?Q?aSlsN6tN7pEzfbySFjkpJhnLNykduBWV20PG1A4KU/f0eRttMKhUafTh9iPy?=
 =?us-ascii?Q?g4Ei87dy6ykASew+CXk56EMkHUfT33fAJntJr+byKE2Lroc2YXiDzuLppvF/?=
 =?us-ascii?Q?UAUY6tmOcBoOCt6hFe1y4N3nrfMJ0nAxQwHANAn9o1gOqTEP45tHQWy5148m?=
 =?us-ascii?Q?7SeBDUYNXVktbBAd7AadJ5pGaQMioq7aQhRkTDvK1n4yZlFN+gscqiwTqGbR?=
 =?us-ascii?Q?2k+KY5xNVs4kMHjZlzAywsr/UX1R1riGFMA2QceVeAU+UMjzxfN4xL/67HoD?=
 =?us-ascii?Q?o+uSg9PaPhWsnhWnXUvrUgJFFxbLmq6YJQwaaFxNyt/kHOrjv9Lixc3L3il4?=
 =?us-ascii?Q?vBg1km6uiCz3De1/T+d2ySLKkubKqf81hQyxEzo4a/lqIDST7D8snhqGql3h?=
 =?us-ascii?Q?YDp+GI75v/eZhGHUGR4h1jEkF04JFoxIcyVZ1KN8KJTJUooAVx4lRogzWich?=
 =?us-ascii?Q?lqWDsYqC73GZyg7DfKkc69hbxXu9ZjXfagarskjS4XJRGeCvu9FSLXvFfw3v?=
 =?us-ascii?Q?mHqrc5v5VJoWD3J3+5S4thxTrrpDiI5HB3pBmf2tC2cGmXoh6HvtMQ3svARv?=
 =?us-ascii?Q?7Wb6m5UlWhXwaoBOuLZA7tk1OdttfgJ2Ickz2Kj9N/FIEaknzNDLYasd+bfm?=
 =?us-ascii?Q?G+z6JURUNcDz7bL4dTkUeq9PIgJCCiO66Zc0S2ncbld36mXjSRNRr6sSXMz+?=
 =?us-ascii?Q?xA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56e4e8ab-080d-4269-2435-08dbf55c293f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 06:33:57.9795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ff8aTpgq3Br0LSJFy8FIPlloVOTYopAwFpgKktZ2hzQHo/oXORsJ7NMmTLArz/QnNJOiNP+oTyXfg/7TDbNCPNf6Dbh87gGpX/dajbWj6pqWQuwDl73cPh2fG39AksLV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6728
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701758043; x=1733294043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=luICKrCoaGS1O/8nH6DhupuulfSLgrNutaWxBQjswRw=;
 b=SleB0SIMAnJhXyyi3WitNneNbdzte2I3GJajOo9iORn+I62o+qxPNMnT
 YecF/nO+GLWi4OSmiWDeHjGyyN41nY3Abfo9Y3QjBOSJzjH78hTSeOOec
 Ko4FYdPWnxhQoKPrwWVcq6HD/ZIjkKNCpTv9PzASoC+YDMAtZL7bjUyOE
 RIZc1br2UsrhBSmYTNCmu9/9WAwYRj8CgVc+6eXk5WCdy2ij4GkuXR8lB
 pJ9S+pix9PB/xR0wudYmP7C7WhFX/2hmBcNQLuwDnSne5h2JO17ukg75W
 5yp2/3Vxd/CD47cNt3dKEj++78AFhdNUQx6XBTVjgrKdW315MgYZIqCJU
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SleB0SIM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 09/13] intel: legacy:
 field get conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, November 22, 2023 2:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Julia Lawall <Julia.Lawall@inria.fr>; netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 09/13] intel: legacy: field get conversion
>
> Refactor several older Intel drivers to use FIELD_GET(), which reduces
> lines of code and adds clarity of intent.
>
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
>
> @get@
> constant shift,mask;
> expression a;
> @@
> -((a & mask) >> shift)
> +FIELD_GET(mask, a)
>
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
>
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_hw.c   | 45 ++++++++-----------
>  .../net/ethernet/intel/e1000e/80003es2lan.c   |  3 +-
>  drivers/net/ethernet/intel/e1000e/82571.c     |  3 +-
>  drivers/net/ethernet/intel/e1000e/ethtool.c   |  7 ++-
>  drivers/net/ethernet/intel/e1000e/ich8lan.c   | 18 +++-----
>  drivers/net/ethernet/intel/e1000e/mac.c       |  8 ++--
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 11 ++---
>  drivers/net/ethernet/intel/e1000e/phy.c       | 17 +++----
>  drivers/net/ethernet/intel/fm10k/fm10k_pf.c   |  3 +-
>  drivers/net/ethernet/intel/fm10k/fm10k_vf.c   |  9 ++--
>  drivers/net/ethernet/intel/igb/e1000_82575.c  | 29 +++++-------
>  drivers/net/ethernet/intel/igb/e1000_i210.c   | 15 ++++---
>  drivers/net/ethernet/intel/igb/e1000_mac.c    |  7 ++-
>  drivers/net/ethernet/intel/igb/e1000_nvm.c    | 14 +++---
>  drivers/net/ethernet/intel/igb/e1000_phy.c    |  9 ++--
>  drivers/net/ethernet/intel/igb/igb_ethtool.c  |  8 ++--
>  drivers/net/ethernet/intel/igb/igb_main.c     |  4 +-
>  drivers/net/ethernet/intel/igbvf/mbx.c        |  1 +
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  5 +--
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 30 ++++++-------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  8 ++--
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  8 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  8 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 19 ++++----
>  25 files changed, 123 insertions(+), 168 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
