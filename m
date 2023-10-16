Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E357CA1DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 10:40:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19C21613E2;
	Mon, 16 Oct 2023 08:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19C21613E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697445645;
	bh=YJc9dft9lX+LckGfO8JwhvtvPeN8b2uEEBP4oCLOWi0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Ec7LpM+swZuj5DIneIo3876zGiB2oj6rQBwAEAhB9Ki+61zNmVzYJOnMfmqjctKW
	 +kAiSBtemRwxT6BSBwxOaijiX7Wxkkaz+loflql4MHUNVYD5XY/xkBOAaKH78CwEpE
	 wvw1UWkiPCssHySs5/IzDT3iaxaivWniuzC221luIHimQazI+6v7KSdC+TgzbjYS4q
	 +uBL+lttQFU/MaYeyMM1+xS/TG5v50nc0u/pfCWl2dXFtr4ElFsgcnVKH5I/5qvjo7
	 UmjJr7ayvfXwO7T8uGV4QmOao6tJvrnBArwWDUZ7HUrXPM3Y/5UFE3+RxwMdJDHxM4
	 X3JOR9LjcvTWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAcbUz9IqwDm; Mon, 16 Oct 2023 08:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97305613B4;
	Mon, 16 Oct 2023 08:40:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97305613B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74751BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A04140895
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:40:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A04140895
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ug-XVCsaX7v8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 08:40:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8825A40673
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8825A40673
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="365736793"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="365736793"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 01:40:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="749220694"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="749220694"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 01:40:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 01:40:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 01:40:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 01:40:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0A2SeSxW61GRCRjd2oJiQgk9KMShlxWaPLxSC600G+XTrA+5fkNt+V4Fnuru9F3LMbAJ3HX6Y+iQSHpO6/p0HB/x/rJvdT8qzBx3aKrUmCtWXRUUrVeR3hT2bUYpwBxG58BvEOad6yZ8kwTnx1mx4VA+oJTsSXyGv7EUQxss2/FJcFHyNcQzRO5fKJOjlGWvEH4xy+xYFsLi8KyEhbS1vZkxMOGnseUmuPs+6U6q9cviBZ5pkzg5bvYyiK0+op0b3nDa/99o1zlTFZ+JaZq6kZqgz8YN3riDQB/wxW2z622hC48PW/vjwQ2nH6Vagnm8GYImMBhh1MS8TuH9GKrrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KNm3rRQGWBBwuuTtAtNt2KfxwQnHS9zSPIzdaAHK1IM=;
 b=GXzyyUY3POfkrJpypwIlRrQ9OAf/JSVChFRcZU/HutUBcriNmBTZjH53Bnp/GJjqYktsdu2sBWW2N3/ElvqkDgTsH7VynJaTa6vRtlpfIlHl23PvV1graNmMSiuXv1z5Vdl9sbPNZU4xOSxRY9dGqdxaufrjvp0BiqlzHq9MrPzEtOD+nGNbJ4haArMebHxFhQ9K7ziIu83tz7HYpHYsyhW1hJc+uHTBcQ8RNXxQcXo/LqQaefRXAsJsheYRIDdv7BN3XnOhyIwHsrajQ2u+aey7ZNxv51b5tixx4B670uUbu9hFpQsBDplEF340M2Pbkm6Mv64qV/y97/FtSOtiqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 08:40:27 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 08:40:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Justin Stitt <justinstitt@google.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 net-next 6/7] igbvf: replace
 deprecated strncpy with strscpy
Thread-Index: AQHZ/T+nFgylK8wFBUmpNSCEvjYe8LBMHbNA
Date: Mon, 16 Oct 2023 08:40:27 +0000
Message-ID: <BL0PR11MB3122358DE91FAE81F9852BC5BDD7A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
 <20231010-netdev-replace-strncpy-resend-as-series-v1-6-caf9f0f2f021@google.com>
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-6-caf9f0f2f021@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB5582:EE_
x-ms-office365-filtering-correlation-id: 9b80bfa6-c886-4598-10b4-08dbce238c37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mieE88XOhdUu22nxL8Y8uCU2/2R+3P/t/y5sp3Zn+S2sHzKa1ifXBaf3+mu9CbqkOM0BHMJfWay4eo6mLjfYCMt0qDN52TZUJ2s/iU9QkTJ6y9osUMWxnlTYCkZZL6l6AXhEWp/TFXigxqaQeSQ3Y/x1nE2zMTZAe1jR/vjkUUX7DAbEFgnV/VgBBkhTsy2PwqhsY7OL45OU06pSfbtwkDStD/Z5X67BPd4yh876+Smvb2blut4lHUCQzeCU2O5GbnOPzvni1DKCPLsfztM94JaueOD0VealyiYrgQH5BFhCBH8k0UZe2/6RCLSburHdFHnXCttmbl3vfdYIYE2KRtv0ipQM2wxDcnwLgFH945MTK379ocDT5qs4mQ8mnQpzz3Z7BGFniTPJu9VvJjXILVgepDSlqrltiglbbFS3IEjh72XtBv8KuVp7Dds3p0A2H2ryZrcrQA/sWQ+U/KV+ZCWHgMBSFMrk753BUNHEJHxzJJv/LTnNDpxHpZnUALmqCXJUIobjdUl17m2uj5h9LKukRSwh9Oq5d/L2obl2Kfmrt+cgE5x6mZCL7obA/xstLtm/5yMfWRdOhLOMldV6+dABsAKcCCn3I3xKi9aoOQOucrOTVeTW4DW8ZxLzFGTkobxf8u3/KL7HeHyCf9MfAQ1FZpW0Vn8COmQ76aFb0vg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(39860400002)(346002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(966005)(478600001)(316002)(110136005)(66556008)(41300700001)(66446008)(64756008)(8676002)(8936002)(4326008)(76116006)(66946007)(66476007)(54906003)(5660300002)(71200400001)(52536014)(6506007)(7696005)(53546011)(55016003)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(9686003)(26005)(83380400001)(2906002)(33656002)(156123004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IExhpO925X4YRiqnQMBiAOu8lp+qDpyzEphk/Pkyhj3NRgAejPzrFqVo3Lpo?=
 =?us-ascii?Q?sPbPTQLoCzCdfgZIyGrlsoGh1Wgir4zRzatEjaVyf1SFGBcyy5M0L9Cre5Dn?=
 =?us-ascii?Q?oNNRpwaM0Kg1RlhTn9HWQf7Rlqa8GLXGXysO/TfVBWAblThh7sMfjDSa5nJy?=
 =?us-ascii?Q?3Q+tINSzqWwd8LPFTvfM1uaYYGU10cyQQqgIdMcG+dN3ewnvE/E56MgKoSjj?=
 =?us-ascii?Q?Gli+7zuyr2JhmL9H4aYfYM5wlxAPaLQLhKVAk3cG6lxdU26aRgZSDZqeM+pd?=
 =?us-ascii?Q?E/6nkwe5YPhSFHwl452rGZ1HD8CjASHf5R28vTw9DZpiiKxlavZHPZCCMIhs?=
 =?us-ascii?Q?8xR6ZFMeuQ03goM5mKIr37xl1Xp/YkMF6PZWMOEpeR9AFXiARkkAPqUdspnh?=
 =?us-ascii?Q?K+G4WtyJAQQv2iV7ylc4s/e0jac4LzK81hkaLyrUDCwgkiemacDibf+d7GtT?=
 =?us-ascii?Q?bzcSyCcGDSrR7JgXBYUJ0GhB/XN5haATMS60EI3FqMz+fPNi/eyI1McWwj/y?=
 =?us-ascii?Q?hVkhxDtIAvXc2ga5gelxyzMDJpds/tGVzwBLoVlB/m3A1GSxqjVpkl14s3PX?=
 =?us-ascii?Q?ZSIKYDaL9p/Ie1k/5h9tFyS6ObdfNDYngNi3wmDQt3yedAIphRfQnWB81x0m?=
 =?us-ascii?Q?bIMDcAr8QjdeFxL2ZfyNsHhwSVXTxefLcU83ttNFumBy3EbHKbNuDMbeGQvx?=
 =?us-ascii?Q?dFx3fpk4PaSUArXi+Y9N6TCTtV2tZr5mL5NVUVPZuBJwlsqIsjlFIBoIc1BX?=
 =?us-ascii?Q?tD5SqGllpz+tcn8bkHhCxHRItF5/AZlKOYyIKd4zqWhDaCRRLA5BVgaGiLGA?=
 =?us-ascii?Q?8eRDab7hAFSImJ3Jvks7eYpCQ/K2gGkZoP0tL8rHl8l93NjMh1dO3ckPyCrD?=
 =?us-ascii?Q?b2DDwFt2o8F3kj1EdCCMFmcroFweogTrhqB7zgEl6B7510LPR4ZuCc7NIRxj?=
 =?us-ascii?Q?emC3KV1Mb/r0Efvax8MbcRwi3aJ+kekA+T6+yJQVmDKhDeVTrx+SHtem3eIe?=
 =?us-ascii?Q?5vQBddpZBzRgh9S5BfrG65xEbbMkZQ1c6MJyBIcP8DpUy3JdoLwB2bR95V9Q?=
 =?us-ascii?Q?p/i0hWanrIskZ7k+wCE34en1mPWUWTupjeSPNf8N93HzCZmvZtfyYhbiBr+u?=
 =?us-ascii?Q?IhUG3n9Qa1L2lvMehcC6aHLa23610DPQa7UC2FAFKoHbiyBVAOCVn5wcfhmY?=
 =?us-ascii?Q?dW+PEdA+P45rbXv6oCy25TsTqW4VD8W6c4txPMUYOSThMMKX8wTlvISEqRVg?=
 =?us-ascii?Q?R2VcKOVaRfdWz/NY8SC4f6CYe+aDHUtBAwBBkexPicUgB1rWNNAyZsOsK7NX?=
 =?us-ascii?Q?IBsnA3j0/4qvNpNWYk+f0dr0CfS+BW8Lf5gK2cBHIsjObGCubuumMJ7mXy1L?=
 =?us-ascii?Q?4HGKS9x+je3PAcQou76ynN7eD8cBk48F3WHz00lft7KKk+GJt4OS62Ov1ElN?=
 =?us-ascii?Q?tfPmhuok3bRlDyALe/aCtLinc0CbG+EH3pcoSxpeQ1EZe08FScLwRR1LbYP9?=
 =?us-ascii?Q?1NQxQgA0Tauzogqty6fh2QSn0MEYKiuEN4gH4coR0nFykQsQg7owuogaTf6N?=
 =?us-ascii?Q?Ule7OQV+t6qsqCjQukSc0xY3e8wNAcZalcH8pkyYtYe7B6n7hFjcB9RJSfNb?=
 =?us-ascii?Q?QA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b80bfa6-c886-4598-10b4-08dbce238c37
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 08:40:27.4238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VSM4IzF8WFKjP7Jk2sk2cu0EFXJOJzupy1xQy4PhFro2fpLloKMqb1rNxSsVV42FL7/Q7qlSjzhZiJbKf2dcv07mprjql5vr/Y6VQKTnmIRACLxZnn47n4xbyYuJFYfh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697445637; x=1728981637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KzbfN5JkN7iy2+pHHdsXKgv/zhUZvnECiU+ZG3fap18=;
 b=KrSgBPMnuY9fwyr6VntobYmiOJOjESaTRptyH/D0KqQKR9Tmidj1t+rz
 ACIjvp3DwJizEzmFCzq/f2MK721RlybIaI5aIgETC12A06fCIqGrK8Kpr
 TuF+qJUiFk88c2E+24u+7YyIOadf6jeXBbu1NmWSo0BFlw7HYilaC/Quk
 k1HEo6j/BMPAEdwkGO+g/OattmNu6ybHmV4wFGDZcJBYU5KJiDKeWE+SL
 MDy0mC9Gos8UOLkLjKt2/anxd6GgJdLNLIBFCl5yr4INNoeRZe6OOMeR9
 4uRCmqqSgtv22AALjekvofzvPklP+2xTeOVbscFEcgY9CRAAfXOKkwpkM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KrSgBPMn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next 6/7] igbvf: replace
 deprecated strncpy with strscpy
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Justin Stitt
> Sent: Wednesday, October 11, 2023 3:57 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
> Cc: netdev@vger.kernel.org; Justin Stitt <justinstitt@google.com>; intel-wired-lan@lists.osuosl.org; linux-hardening@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v1 net-next 6/7] igbvf: replace deprecated strncpy with strscpy
>
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> We expect netdev->name to be NUL-terminated based on its usage with
> `strlen` and format strings:
> |       if (strlen(netdev->name) < (IFNAMSIZ - 5)) {
> |               sprintf(adapter->tx_ring->name, "%s-tx-0", netdev->name);
>
> Moreover, we do not need NUL-padding as netdev is already
> zero-allocated:
> |       netdev = alloc_etherdev(sizeof(struct igbvf_adapter));
> ...
> alloc_etherdev() -> alloc_etherdev_mq() -> alloc_etherdev_mqs() ->
> alloc_netdev_mqs() ...
> |       p = kvzalloc(alloc_size, GFP_KERNEL_ACCOUNT | __GFP_RETRY_MAYFAIL);
>
> Considering the above, a suitable replacement is `strscpy` [2] due to
> the fact that it guarantees NUL-termination on the destination buffer
> without unnecessarily NUL-padding.
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>
>
> ---
> Note: build-tested only.
> ---
>  drivers/net/ethernet/intel/igbvf/netdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
