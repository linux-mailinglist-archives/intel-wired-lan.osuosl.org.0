Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BuhIzAb6mkOuQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:14:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AB545299B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC3F383B94;
	Thu, 23 Apr 2026 13:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MGD6Z0EMK6rh; Thu, 23 Apr 2026 13:14:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1301C83B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776950056;
	bh=xFvKTJ2R0bgIZu5IVSOpGLu1Bi50vEdjWx8VX0qlKsg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IGO4+qTSqhuAToL4ZcuPMGAW5YTh3+5a7mpeRQRZtTRm/c9TfAmmXgLEdHyxbqT9P
	 lk9HqouMQWVrIdOw3VSzlAaay85ngXgVxr/jruoQrud5ngDDrizOJsd1ZHG/MSGD7l
	 UHT1LHNrJpFWxCM/6CUqJ1J/gAaUMrT713xhxupPiR1OOU/io+8mJDOMpwjyg1VLd9
	 QYI1P/zPtZSYripR6HuqD8DYXDq2j7srbYd8JM+UA7l0H9a/gK/uCW4RVjgcMC0VZL
	 QIVlLfz93se3vT4qHKLgRnZPAaZ3DTJq6CN4nMYPIXVoqFlZKmx2HWOUXT5mdZA8Qx
	 igEaiCgjctaOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1301C83B97;
	Thu, 23 Apr 2026 13:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 76C4624D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68A4240F56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Modl2VmyIML for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 13:14:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A6CF40FC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A6CF40FC2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A6CF40FC2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:10 +0000 (UTC)
X-CSE-ConnectionGUID: 6Wq8ragaSeecsCueRdQzMQ==
X-CSE-MsgGUID: sAS6mCKfSPinATPozT2QCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="77083928"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="77083928"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:14:10 -0700
X-CSE-ConnectionGUID: bbSVx8ooRpqN+QmP6kNYTg==
X-CSE-MsgGUID: S5qjm+6XRDeZgksC489ilA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="237017704"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:14:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:14:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 06:14:08 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.15) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:14:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ahiwcmogsd4TxorLtoLlw/8MP5BfWz5F7eIxVIeYe8mDbotCUKY4YsM7lx9Yl9Xuszs7b4/YkFoaFrtPlPRZ05fZC9Dud5IBpkwGQ/VXzpBCy92m8RxFs9loPIcJQhgH8lxn6oiwFUTtevTwPk+PDVDZ6VrFO6pzxbkDPIOfvPLcmjuSqm85t3xcILa+WzB4Hm9BR6gHlsLFFJKpx6hxIh4OaBOh/bgi6JPWUB8Qlgud0aYajr/Zt7AfuCODSqsTokaTOuN4hfhReU1cm3uR9NqGFXWo9PKkhqGSV83wOYgldv/WXz5EeGglMc5EH4UDfdTOfWSrGXIaBPCBqqxaOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFvKTJ2R0bgIZu5IVSOpGLu1Bi50vEdjWx8VX0qlKsg=;
 b=D+O0qYY2YNhdCu4ttGr4u6nn3Q78OsSK/5qsai8J73w7YuEd02WooMOMuffc67UaMugO0zpOP1yIz1M7zDyTr70QePNG1LSX1vz8eraRPytJYKl0JBH7Mcewk1ASXZxt1kcGlFltFvzi7TPuUfgxaN5/AGsL4SlknqyGdf9BAOdLlYEmIRzoPO2nKzJoOvJxJN6D2eGncuMMGWWzL/FzIzPBYxIuK+cONY1LZqYWRztVFItzCFsboT/jbMQkKQB8GTymHzlTliLFE2cOsfcWqm2FiXyV7NXyleO+Q1HrV0ZRsCrFnY7Ud/Y9toI0zAqr/UL6Gmd0PrnHIdcP6Hyhww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 13:14:05 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.014; Thu, 23 Apr 2026
 13:14:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [PATCH net v4 1/4] iavf: return EBUSY if reset in progress or
 not ready during MAC change
Thread-Index: AQHc0yHBXinznxpkQkm+PAWUoJajtrXsn8ug
Date: Thu, 23 Apr 2026 13:14:05 +0000
Message-ID: <IA3PR11MB8986CB8CCF01A323EC675F5EE52A2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
 <20260423130405.139568-2-jtornosm@redhat.com>
In-Reply-To: <20260423130405.139568-2-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: bcc71130-46bc-4879-000a-08dea13a321d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 3lt0Ub0wXlXSstRKYj+7+Al/Ft8Wa2+cab/i8WuxaPjGfS3GhEn+shBBMle6UXEMLqooIBC8JEDHU+ajIUdHOeJx1wj9l/WitA+ezmcI4/H0CjSlX96rBalJZhCFrx/9yfBrR7T1jWXtQX38fN6TWZchCLv1NAg+i5c3gh0gdJRPKVpmPgL55gqwsh3xgfDJccPXxJE0WsZYiDHLOnLrQK8jPcd/P9xIbSi5z0o3B0Yxm+VVvgNm63292oV2HVxGmqqfg5Xux4kvNX98YfzsjSmSi+7XEayVDx9aBy4kHhAQCEghcw0EnFoMfTf08PdPNUE/oEHtPOE4Y2maexJcKtTf5NfLNWMDQfVxZnwm9fyAl6i51AUYHWHEecQFZE9e1tdj1KRVVjtkpFaohKTRcgOulDUA0ZadokWpoCQZlB/Bg5p+qtqdlFf6NhNCHJpy3Z+LEcQ21hUERtLZCT/wERiIT+R/VoIqqty5brXRTIG7XhaKZuSek0TlC/lZTdFoVUhDAPIGCdw+dRKOO3dfN+ol/TvJwa2Z4UgEOlk7ktoyLC7UFWF0Xr2WU+8qkmJ0Nw7AGbru8/PLtZPSKE7tjxKhLOhq8FEEp8gRv98HhJn3gz4N53vwtpCdEP9uV+vmgOnxLJXsso1FjBXXa98803LKiirtQmHuY0wUqBIM2Oezi1PUq3N1EoHGJ67gU1rqzcnYQ8YaJH/QJ3CY6UlPHLEbkMh6QPsl+CeZmMwm52pQyFNmVFyjp+qM2DtsFiRbaj9YNZGFGbY8gVml3AJDsogoXVTxm0WhkqBO0fl+cV8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xU6E8u3D4LXd2ozVBxhkbUpknhMi/VmJ3lP/t+Ssa4ufuMz81gvUbKd2mn5f?=
 =?us-ascii?Q?qYFz4LTEEGoaRr+kMbGBRiEalzZzfmc0PNWw0MqIs7mjYlwYfOWsPVIN8jBO?=
 =?us-ascii?Q?BduxQGC9pTd2CdYL/hxPOtl8tk+IRQBPCXtxVIo6xRrHTpDxRDLtbkMQ+dwp?=
 =?us-ascii?Q?wSWhDtT7xM8dNnt2XEir1YUQPppMlMutVLBuRKZtlaPD4D5MbZXL5Nnre8pt?=
 =?us-ascii?Q?Zqfsoc9J/ZtLjVXcLSZ51R6dsBQ/5wKFZw/UxiWDnrqoVdz/blm3TBBZRI4x?=
 =?us-ascii?Q?+sue79BuZypo6YBVmZ2TrJSH/+XBqOcRaruMyBihrDbqOsTvvzyHGJL26a9X?=
 =?us-ascii?Q?zJ9bTvakhjjH8S+GFkD0ZqsBPQu1Z6zPfQwgjBdf/ek/WRGuelXHTbgkplob?=
 =?us-ascii?Q?L52DFy97GeczHcx8GDT56i9mm/QfYSGW1sYtgcrM5zQaQ0sxE8lvuWEPq+HB?=
 =?us-ascii?Q?67NUt+oXe5jzB9M87xqrxeiV1f0+M9GCzimRNcBBe35mQU4kYLKg96hIxG6E?=
 =?us-ascii?Q?pSlHey/zk2KkUit/dY3/rO5d++WWX0eJTpdb45L2/mM3ne19Qlqs1u+VxaOx?=
 =?us-ascii?Q?6PteTilExtPQqe5aBIrBKLmW6Gj9IUvLQOOv3SHC3lXM+9lns3C3FhzbpgLV?=
 =?us-ascii?Q?4K0zYhoEZKitNjkYEKrO1Vn4QIBTDzbIWs+uaLjt2HUjlGzc7C3/Gu63xI/3?=
 =?us-ascii?Q?9QZb6VvB2VW3TR90Zz1hz1VxeKN5CZdYsSM6jEYNHu+4MYati9rJNSTz0U1E?=
 =?us-ascii?Q?ReLBk8fLgMEDF8Pjpd4iJ4lbyxkoQf9crQ3cJWiJZpbwAmHZIm3XbBAE/jVJ?=
 =?us-ascii?Q?vxFuW0hBIwks04z4JTOC3DAQoxm0foWER/rfCaM3uoWGG1gSSJijWxMjPGH+?=
 =?us-ascii?Q?CYEJsYI+KzTOpYFx+frITWslUIjX6l9OiKvPXnAnBRCegelamPMaQ8KPF5wN?=
 =?us-ascii?Q?//lc3aCf4/2CH/FXNBE5gQ41Lot0Mn2LE04abwUR63BOleTx8qYf/HjwFe3O?=
 =?us-ascii?Q?TZ1NTCoh84OM3eJmKvWViYhyFrgcvHwG3FnYarUDqXAJ37n4+zEZftUaoMfC?=
 =?us-ascii?Q?KSSBAV46H93GcinmUA99aIJSaA8pnQl1SqTdGoJ1BDzfgnplMWz2tJMw4OgW?=
 =?us-ascii?Q?RYdIh84/wbY8fUrbYVYPfZ5NU2E0YElKhIMLV5uT+sKChFH/qAsuqkRWBQQu?=
 =?us-ascii?Q?lXYI5RIcLxuaRV7ieDslicRBUqjEjp7nrO3lGWXjC87P9lzDO4wz2a41mGQ6?=
 =?us-ascii?Q?qFgBHGuqYL/h1L9ev/N4hnV3JRbnzMYsr5mUZax1JsspQsaEAktvP9DzD2Ks?=
 =?us-ascii?Q?mBrvdnwEFbgCVcyKH60Rq9vaT10dpIr2P+D7S/6tEdi/IWwhn384o3QlWPc2?=
 =?us-ascii?Q?3H0moATrj/zVPJ4vwevwyBtBdAzyXD6yod28PNdUHHhSSRTB/E29wiHQetxa?=
 =?us-ascii?Q?X7IrFxZDQYUHczxdBtNjckL6OJF6r+I1tCh2M3R8oTo1IQ17n65KlaGSJ99j?=
 =?us-ascii?Q?GjCujjxTU3tZnY/OLnCzoG2kUIn5hMzPjPP3pDXTaiRO6k5WKvIQnwQoCMZo?=
 =?us-ascii?Q?MNA+lPSs6Ug4d4kwRA9KERcRZTNcLPXnZ9eRdJJFdt6vgJvNJztWTCGgqoWO?=
 =?us-ascii?Q?AlctedjrR8MJESmJbCFxHbGWqSrjy1ctCghKBmC7kOD/yPXiSE6XrBjwtqbG?=
 =?us-ascii?Q?ZUZiRHHcKObUzJvYg44vvx2sAAN96WW/bfB5DTZJtJkb0d5kNRiFo1ti/OmI?=
 =?us-ascii?Q?q0a/V3arN5DpBlOjKcil+oR1UtIAelc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: or9qkFDQtj4IzqIhgeJstu++R3PPeaigvNp8+IY8ucivkesnc+Dmx3SPERloQpAqflS1sjKB28d38S0IweEOW+1JylXVHmVXlyXUUB5h1IatDHG5l2BygP+JVPshZVJWkm9Uv36+c3hyNwtOwLSV0Ucr14ZqkgQefUe+oy+xYtA1ZS5O3WseGHr5rfm49RH006ZhuMxZmMcqcsKE/B0mu/TcDxp2tpuNKX+oZB/ItJpnm11gD/GT/kC6WDoK4TZaWalVi4vuvSpVpYiS9ghWuUvtoRzH9TrXwo8XYG9FDERn60aV28qweIijqxhRgqWxvLZSTitjBEG1woLd+ZDJzQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcc71130-46bc-4879-000a-08dea13a321d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 13:14:05.3548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8ot7z82KBNj/tGo/vzqEPTeT8KjlA8DazHz+KVnMzlhQSLNoy3zZad2VUQ7VDomeNEPd//fvcY3EVpVucaZfemTCUDReq/OtZ5oMTqHyxRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776950051; x=1808486051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vyFzYq9PGMEOuKNuShmB9AX+HUWmfYTTfktA65sBLU0=;
 b=B/mHoG7vCZ7zFV+Kpgldyf4Eodlk4r7QreoZ8d15dXQhsmlmIGPFrD93
 qOCnJjoF5OdqcWBMSSJXUSDN4NdYZX5fkTbxLIpV88VfMpMLFTvvnpJYS
 J562kys3PoA93dIPtbqnwSusYsHY0oOq8OtD/afAm+s0U90I7ItRMt32F
 ikUP34eOinH3vokoP6B5rJm/WUQK/zVMkyQOOqGZuQlXpcPolhETQune+
 qzX6q0Boe+YPTJmdoCl25Yc6X++aGnZwBCgTrHSh2a/BanV20WAPlhNAB
 jY658Yp3WPDjNrpMBamaxaqhI5r6FNZL+4z9vZrtEnzamMiYSjPmLiZU8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B/mHoG7v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/4] iavf: return EBUSY if
 reset in progress or not ready during MAC change
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 06AB545299B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Sent: Thursday, April 23, 2026 3:04 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>
> Subject: [PATCH net v4 1/4] iavf: return EBUSY if reset in progress or
> not ready during MAC change
>=20
> When a MAC address change is requested while the VF is resetting or
> still initializing, return -EBUSY immediately instead of attempting
> the operation.
>=20
> Additionally, during early initialization states (before __IAVF_DOWN),
> the PF may be slow to respond to MAC change requests, causing long
> delays. Only allow MAC changes once the VF reaches __IAVF_DOWN state
> or later, when the watchdog is running and the VF is ready for
> operations.
>=20
> After commit ad7c7b2172c3 ("net: hold netdev instance lock during
> sysfs operations"), MAC changes are called with the netdev lock held,
> so we should not wait with the lock held during reset or
> initialization. This allows the caller to retry or handle the busy
> state appropriately without blocking other operations.
>=20
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>=20
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index dad001abc908..67aa14350b1b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1060,6 +1060,9 @@ static int iavf_set_mac(struct net_device
> *netdev, void *p)
>  	struct sockaddr *addr =3D p;
>  	int ret;
>=20
> +	if (iavf_is_reset_in_progress(adapter) || adapter->state <
> __IAVF_DOWN)
> +		return -EBUSY;
> +
>  	if (!is_valid_ether_addr(addr->sa_data))
>  		return -EADDRNOTAVAIL;
>=20
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
