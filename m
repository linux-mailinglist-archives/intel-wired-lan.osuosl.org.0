Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA3684C03A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 23:50:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA64141BF2;
	Tue,  6 Feb 2024 22:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2Smvbcqyvj2; Tue,  6 Feb 2024 22:50:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1464240622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707259836;
	bh=PLLteKr07oGGos6TIcz2LmeqIrf3mlv3LjD1awyNfuQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YxIQv/ezoy1vRsnKDvbXoUgXaZmJZB2SU6R8D8prrs242Q6k29Dp0vsUq1OW4qpDu
	 KOmsC5bvQ+gfGzCnoYNy0/MZxviVTHgCzng/HxnexJRXwe7FtEFiKgDWOfFWWasZr0
	 EQah4fkEiIhEWvu48o/dNaO+Q8Pxmx6d7YIIqc0FDWR7HcTPeZNKWA+enI1r5Yq2Sa
	 1COSwjkib9LgaOt0YIGGPr1eWI8RQ2IBBNhCWmZ3lteGvJy5+RFWXyr6C9P35n5Bjt
	 1MQFuOMks+oxTmfos1rWeOwKiTygijCjOOzuevmTfYNSxT80Pr4DtUFMkus7vGGjN0
	 GmW03yqlJlbxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1464240622;
	Tue,  6 Feb 2024 22:50:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 019531BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 22:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED75A4031F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 22:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4MbeSk-Mc8AU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 22:50:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D8ACE4031D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8ACE4031D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8ACE4031D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 22:50:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11595401"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="11595401"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 14:50:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="38568747"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 14:50:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 14:50:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 14:50:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 14:50:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 14:50:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PwL8UIVtAdnGQlbTtpxs0w60FdyIi2v5+V7i1Lace0wyoQn+iKMkB1f8fs1z2PZEF6RuRfv4WUmRh1Pc9m+twiL8Z8lqMIiQh8EjF6iqEUYxPCKxNGEGzRX31z7zBkIVelsA+zFp/sC5b1eXu9hztHWT59lkWAXbPLxiUaUUtC7JtzMcUPNBCK1H0e3l8tDRqlfdWgGVMt1zxu/mg9VQumHQakfasYgu7h+JGaBjgsKzItB7RRAInqsw0SVksc6Cz9bV5+YFHtX0sqCcDj1O+oB//D3cNrgfXPdDd8fQq6p363AafFL4yTGAqdfMG+6CFkw/qh1TsF6EslT2o/+YVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PLLteKr07oGGos6TIcz2LmeqIrf3mlv3LjD1awyNfuQ=;
 b=ZwVKrkKFsMLU+kDDHU+R59BbZHoGYxul8PuiY9l4t/BaLGIJnp5DIceveC66iFWwamgyTHoZmKs0+gTG4y5sgGrwbHZX4iDAnCt7dEVIrQEiTWkWn7466QRNMQDD6inKAB0wf/YiqQGQd7xv6+/VEVI/VKIYZE90zx4IuZXH7usCfzoaOf1rhlrJv7SnzUvLe2pLLs8RLAo5xojeFCgI2t3ulcjO+bptCif7YjxjG7P1eI5t7pFRjwIX1I5xx5dYKrIhtPEc5vdPHZEKfiY9VUg/1v0aB3Ib/ry2uCkAvIl1BHpeX2vPXP4Tud24JaK2QP53zx3P01j2QQZ3CYpsJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 22:50:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 22:50:25 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Brady, Alan" <alan.brady@intel.com>
Thread-Topic: [PATCH v4 00/10 iwl-next] idpf: refactor virtchnl messages
Thread-Index: AQHaWTeWX4YyjYvFk02dRWZSGZyAvbD96jYg
Date: Tue, 6 Feb 2024 22:50:25 +0000
Message-ID: <CO1PR11MB508916E50B5BA5A85BE28852D6462@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
 <20240206105737.50149937@kernel.org>
 <d93d8608-be23-401a-b163-da7ce4dc476f@intel.com>
 <20240206120303.0fd22238@kernel.org>
In-Reply-To: <20240206120303.0fd22238@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB4966:EE_
x-ms-office365-filtering-correlation-id: 739e958b-a402-415f-05be-08dc276601d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xrh9NYMHC5+zmfSMC7a7Rws/oqvK8tWMqGJePkWiXitddHHYP2WgYA0N5EX0+qvJpLqQVevSorvb9vHJfJU9xhotyGeOGhhK8nS9/gT3JZIKMt9XTk3LwPxnzJXtwY0j7cmZQJ4WK6QMM42EH77disGbBA2COk2yfvC3dnBmiMdLUeVCGqDlzhvKai/5x5ZYVgiBilDSd6JNU2LcmXTWbglNbqkxcfEkYtWnLtAvTIs+MAFTkZDVo6QwqUCoEd3gB3fRRh2HrzbQPSrKeYyKIzKTN09u9qNvH7K9A1MGKhE/4LAqUnNgqAkogXZHZX6UUNcIIKoqNqytxe9VZDnl9lyg4facSXZttbGcmCTKl3VvVv+3hywFSXVRq+mzDp5Os4koa76kZKpKSgI8wcOFl13/VUh18bxSbYE77pkA34P56GHawYinW7Wxfvgw7CNj5HPm++ySmNGMtpFWrsUOqwvHmlP0imw4FfUAIIMA9huU7hz1V5t27CW7ZR/RKt92DwKH3K/KlPddcFoubaMOdsUCat5Wtf9bPLpxnNVn4FMyWqyFmOVwtiI4YV1NpojJrcFd89vItztvCq9XGknrDYIgizNTmoaVGXEvdqzN5DIbYOpyxlCA97NCacDQC6uP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(376002)(346002)(366004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(41300700001)(38070700009)(110136005)(64756008)(66446008)(66476007)(54906003)(66556008)(66946007)(316002)(76116006)(2906002)(5660300002)(15650500001)(6636002)(52536014)(8676002)(8936002)(4326008)(83380400001)(82960400001)(38100700002)(122000001)(55016003)(71200400001)(7696005)(33656002)(6506007)(53546011)(478600001)(9686003)(107886003)(86362001)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/Ugwp/GtMmpLMIMzvtipQbVLXTxwTzogvwqj/6rBMR+pxWneCRMMNq8m/Uuu?=
 =?us-ascii?Q?mktIqwAwHeHn6KflAua+v+eWkP30I4HqafXe26xhxir7LsqODh3cu32jKFos?=
 =?us-ascii?Q?gmvuUJ4EuFsVaR3O/jIBEUrKDHzilVZbLvi94HGbJMztYL532aYgLmZI3Gwt?=
 =?us-ascii?Q?xJzB3ul+l+Z6TKwyUm0rBFWuuI+1NXcoBCFgth8lVga6ltHlWGxakVHtjBWc?=
 =?us-ascii?Q?VxLNu5djf3xqcgVbNaWdXdWhoWGJGHdzx5KfzJ2KKjQTXmYzl+dTOtfkKksr?=
 =?us-ascii?Q?Q9WigxUIgLl/lIa916JElUc0s1bAR0JNy0rZ5hxoX1M5DOcspYIr4SknU5Hx?=
 =?us-ascii?Q?DC7hEbOgS9hxP5pdV1UTlWJ432ERFhUAL8MJuFSAb8Sf3smWyRw57ZubHPrK?=
 =?us-ascii?Q?c3C/k6kT0LMWiiWBjHXmtsJWMrDvB+yVOUaOxoz1+mVRCQDmrS4MjRJ2ric+?=
 =?us-ascii?Q?uvYbb+endppo9eTNaqwdD4n5XWGY/KzGr4avz56Fb/SWz0TwpZ67leLwHzhO?=
 =?us-ascii?Q?0b4dWM0sKNezoavNfItpXZ2dLSjRBWjKD1f8qjTHO9qndPGeaX8uwNrsaiy5?=
 =?us-ascii?Q?6Yrbr/Z/NCKotwUdePMO8kmj8dhjhTM9WW2qdTtb9c1QyCSEs0bewj6+2khb?=
 =?us-ascii?Q?CFIqTvr9wadCcLfSP8Tr4KUVY0Zkx0bdlxdyPqAchLD4tDu3xjr9ZMADnThE?=
 =?us-ascii?Q?U4oOtAfNdr7Z25CiyNLhIBDE/rDKjLbct0EIDLOxCENvnVteMsdAkLOpJQZi?=
 =?us-ascii?Q?CwqgpsnnA59G9bJQnF82l5bXzuvetQiN9v7DfUKmXTMypB5/uyQSQQL0+kbV?=
 =?us-ascii?Q?HqIz/IY4XX22yqntbRIMPzZGDF6UxmncmYZSsyY3iUPN4L0JAnDxMt39bUf0?=
 =?us-ascii?Q?Q/Ug4Xz2X1pGG6JtX1nm89uRqW9FXodvmmtl3N8r2oLcXHhVg7dWIVit5an5?=
 =?us-ascii?Q?KdniGiubFOmPjGihSki8ULigKEvMUIkytiEjFOO1pDGAvzd5oAyWY+kURN84?=
 =?us-ascii?Q?bjGooFJ/RYOUkQh7Y3/djSJAIzwHal7FC7Cvu5UBI4PNayF0sDO6MJN/40U3?=
 =?us-ascii?Q?HRrAiwq5GempeyYehZU2M5YhvS8ROXt9it1WDOe0xtaavBElODMR0W3JS1vZ?=
 =?us-ascii?Q?rIA/64RhntIEkcwzFtwyTJM6SwDMPVbV3auRKesTFsc7kf//e/U+0fUGCyo8?=
 =?us-ascii?Q?UwGpQDpjOzpgOTaXnqfOOcaHSdeYR6C1UEOm8lrv+6hjM6+LARPgv1uf8GC6?=
 =?us-ascii?Q?bnxqbpvTH/VjzF7QJe1x+zptIYZwWpGAX6WghK3NY0bxQV85yAPYmeTsMXwX?=
 =?us-ascii?Q?shu6NYD0Az9F5MUA6YUnJJ4BvmY9og+V58mqgNIzrhdzsFC+tap9EDdga6i7?=
 =?us-ascii?Q?Ri5oAo/UGwJ8BueqMaH6YJgVr2K8DjGADB2p1iw2dFbNo7EIPm2QNtzFSt/a?=
 =?us-ascii?Q?IXnftgoL78WcD2yhM/R4rzpFjlrOMvtFW1FD2OcL9HXIj9GaPRa2rhJLyfwI?=
 =?us-ascii?Q?Ftys+sEn+Dy/33H4Iyn5cgXuCqG2xvi3BzkYxzEPesMdeCON4P0VvljZDh3M?=
 =?us-ascii?Q?aCYwC0IvOCdw/jP46s+LD81fmVKFg1iBR+aKwwo7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 739e958b-a402-415f-05be-08dc276601d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 22:50:25.0440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IjkmoH9DCw2mHcg9Rn2Ssl6bYt5Krnn3Q2usLr/8QCiJakw+bZRz9HtiSTPTmL697GlPPnWQOH3HDrfaxc7N4m/kVCotZgpSn8+VTonpEXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707259833; x=1738795833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PLLteKr07oGGos6TIcz2LmeqIrf3mlv3LjD1awyNfuQ=;
 b=JUsWxkQ21mOoPEo661KlD3KWtlblTtLlIWi5FQjqAyabZc6c6FwgFFTf
 TQpfsYXGVQ8pWHnKiVJ4KaIwVrEEt76RsNKZtGwWjinxp1j5CCNvCXH7d
 HsAVeb4AUhSxDiugjHQ4jl4NTcu1Qdetyr20RsilnLJqo9gcmhibpKqeR
 Zljwus/Bw9Wx54Efv5ITPZlBcdTU0GYfjX0gjUKSbr7EitK8pIVBo5gDH
 58EHBWZR8YYzM1sXnWyV+Hd3AAawfVBzB2QuoF6Rlq6T4pLthym8YGm3t
 lwps/X8vY+IkC+ZU6xeSjQIB9ti4ZfAIx3ysGSSuKMQuvsg+eNSuaddEh
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JUsWxkQ2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: "willemdebruijn.kernel@gmail.com" <willemdebruijn.kernel@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Bagnucki,
 Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Tuesday, February 6, 2024 12:03 PM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> willemdebruijn.kernel@gmail.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Bagnucki, Igor <igor.bagnucki@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>
> Subject: Re: [PATCH v4 00/10 iwl-next] idpf: refactor virtchnl messages
>=20
> On Tue, 6 Feb 2024 11:18:48 -0800 Alan Brady wrote:
> > We did run coccinelle check and see the min suggestions. It's triggerin=
g
> > on these statements I added:
> >
> > return reply_sz < 0 ? reply_sz : 0;
> >
> > A min here would change it to:
> >
> > return min(reply_sz, 0);
> >
> > I didn't really like that because it's misleading as though we're
> > returning the size of the reply and might accidentally encourage someon=
e
> > to change it to a max. Here reply_sz will be negative if an error was
> > returned from message sending. But this function we only want to return
> > 0 or negative. By being explicit in what we want to do, it seems cleare=
r
> > to me what the intention is but I could be wrong.
> >
> > We can definitely change it however if that's preferred here.
>=20
> Hm, okay, that does sound like making it worse.
> I'll disable the minmax coccicheck for now, it seems noisy.

Maybe you could make the coccicheck only complain if the value is non-zero =
or not const? Maybe that's a bit too complicated... Hm
