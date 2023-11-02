Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66117DEC4A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 06:30:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6076F4333E;
	Thu,  2 Nov 2023 05:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6076F4333E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698903047;
	bh=aoLXuk/4kD6LHOdB1s4vWhwWbNvVv1d1YQjAlW6QT7U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TT/6a7R48NAqcl6bzoaJy4rXj26cIKQs7SFblZO2OZQz+NTMvP/eHQgQRZGjhYhaV
	 4SeL3mtYXV28YokIDAWKsDIIoauubMn0WQhtdpQ5B5VyKrMNwYGnqBTilHYeh2GbmS
	 kOnceUKBO94XA1VdH12ZanOMWVxB4rHl/gX6+tgO5U2zqyf/q5BlzSI3iYExwNO0T6
	 9p78a3f4eu9bbksR5E/cVSxHX1excxYpHBkfzCog41l7IZRHYrzpAB/fh/8Y+QZKlf
	 OmnTAiUKfLXd7sJOzNlsqYLFg2LlkFa2bktZCWaY3lwW4GxTX9m6Ze0WF/2H0BVh+9
	 a+2qDb7QCgiOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3aWV55Xf8nh; Thu,  2 Nov 2023 05:30:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 176CA43338;
	Thu,  2 Nov 2023 05:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 176CA43338
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D9E31BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F31F40571
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:30:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F31F40571
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3K6wbsnERBI6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 05:30:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C5E64002B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 05:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C5E64002B
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="388458952"
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; d="scan'208";a="388458952"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 22:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,270,1694761200"; 
   d="scan'208";a="2420245"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2023 22:30:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 22:30:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 22:30:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 1 Nov 2023 22:30:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CNMLX8t5HvF5B1780gbkzyXNYVYVovzqw8cRWIdmtzjUcuNS2UGx3Lp1mBCgnxlm0KQ/md68I0c6ZvOb1P7u/r+FiRTAAj9VLDZgXzRdIGHopLL/2xTqP4oxPMfrgmNcbIAw3yYypz2c35p2XrNYjfpmvXjW7caWujfXJt2YiFJepSSjGcv9IItaouwPdYFzdAdnNQCt8otLifjC5hlcZC86bfgvOfw8Rh3W8LQBcaDWwuVUo39lWm9gmeIF8d9oyCzzrflzXuN+XTPCDOqyWAga6v5bIt5sASD31VpMlg+3xrWrnvVM06y8laFyh0T20k2KfOIpqWVdimE0R0KJcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6BUkUgTTJ5IXTWNw17hcoqHW4N1eJU4OTUwAfEyw9O0=;
 b=jiWLsOejgqfgvVF/CFr1QJqtjo3muoLH2yu38eElRYDzqw1hVaDkAXzgkhJMlOKN+DoR0QVskrUyXWuS9EbvaDzN0swNHpFGrawIkkDtmvzAJwGnJuvfI1rZNshLmmRWTThDTCA1MUwMpvPxwpdxj+FxNOWOaPXHNX/nbgod61O78Oel+KlWsABJXSctpDeUuRCc+E+nkre/55t2aIvznTuRK2h96aigwMfZLhOSJxWJFEroRPdxrfQGh6VywIzpRsHQQKifVvmZjkatmMX1JUiiBSAd7+YpsNaKE6dVu+Hgh2HN9ea72FV9Er5Pp3lHhjIl8iJ4lHma2wjm1+EVDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DM4PR11MB6358.namprd11.prod.outlook.com (2603:10b6:8:b7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 05:30:27 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.021; Thu, 2 Nov 2023
 05:30:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] i40e: Do not call
 devlink_port_type_clear()
Thread-Index: AQHaBnjohJsFQcSJYECrCylOHbGyJrBmjV0A
Date: Thu, 2 Nov 2023 05:30:26 +0000
Message-ID: <BL0PR11MB312273E0F55036CE9514D61BBDA6A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231024125109.844045-1-ivecera@redhat.com>
In-Reply-To: <20231024125109.844045-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DM4PR11MB6358:EE_
x-ms-office365-filtering-correlation-id: b1d8ad79-4f9b-41a6-d19b-08dbdb64d1fa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DAH4sXuYN4X0XT6WdpIGirk+5s00D6rVdM0XzHpJuDLbDQKARRaed2Z2OhvUvF/gxHxc/DfguE2JOg6MImzwi9mqlAD7lKNSWvPKOC19Q7lP2fK+Xy7Mj22oqRIqXqQb3jelc9SUkIxbBNdrVeE2DHVkuPNVK4tYT8e9LrA/6fjgSLi4KQ9OViDJR7BeSE/1xs9fmPQH5fULiTHBb2wW7B1IrL4CaOz03XYalczzai8FRnN1hEB2/4cid7dKVLozbnOB9I792QcAEU8tMQLt3QjNpfP5WKhIqNIX3OhpK1qGa0aj4VMx/bQqjVcoD0S8Hifbzd1bsaPqfMjyk3PmNV869VL6xaSYWpgHyTz8/rwaO+OKwMXxf0C18wZk+e3dANMZcYKFgrOv/I0zFIOsZHxcRJllxoxa96Gf8jgL6DtWcjCJPMM9bHkxaooSDHhGo4Zz3a3pKWLa+lMXHTBACrLIQvpDf7uSI/6c2aKbFaNzwpPCRLmyHijAnXz5rgnz5yKpKvbQVQ3XX2IIWnDr1mk+fwwVd5gTkRTgmq5bgnP0sFxyvozAngdhDcX0Ui00YDIWT4KauxeIcPVOhnbt+fl265C+eA3NycJHLwE+2tLbcBQtzPf4SV3c7lCx+YN6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(366004)(136003)(346002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(38100700002)(76116006)(52536014)(122000001)(2906002)(110136005)(66446008)(66556008)(66946007)(66476007)(9686003)(54906003)(64756008)(53546011)(316002)(82960400001)(41300700001)(8676002)(4326008)(83380400001)(8936002)(26005)(86362001)(55016003)(33656002)(5660300002)(7696005)(71200400001)(478600001)(6506007)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yHuHWcWeNGYYKQGgvq7H2zZhcUHHajpWsJwOYbby+ddwk9Yo2TRHx5dv7qif?=
 =?us-ascii?Q?W4JgXKYtwSQX2oUo2IW1JFLKh1GE/ggw1puRiVm35g25dGAu6CK2vu0s5bza?=
 =?us-ascii?Q?nI+8sJzKLn4pOlzKI7s+f1Q3e0E+eJZHtoL82Nlj771j995FvByakWUWtFSE?=
 =?us-ascii?Q?APqwy18D7pIYuj2D6uilI7WLPK+qA8JD4ZH8L2ik//8D2twcFr4R8QtiN0XC?=
 =?us-ascii?Q?/7EjvHuQrD5aEAjFOKR1MTZ5f12RFQkclBgXk5qBcaoyxgpXVYAATU9ptL7w?=
 =?us-ascii?Q?n4+D9yEA0iFolw0PFF9sZoo5RnmRDUHTBhm+VlHqbR9NAnlgtL7tb65RJhlr?=
 =?us-ascii?Q?47vhpwPZPW59FS/ror68Dpn+Vm6RV6Fgfbw05OWcxRSBrsYDamSqklU2P/dm?=
 =?us-ascii?Q?7cE8M0DUOElvoE6ixJZ87pLnrUStY1KlFpecy4To62FcuP3ZkpYFDSJtNGNG?=
 =?us-ascii?Q?ib4ztHsDMZOvnk0bF6V6p3gBPnnjRUFfqqh1gEDRtB+xI+ZqizpPARFMoW4a?=
 =?us-ascii?Q?cwgMyt9mj9WWwG+jL1gFU/QCY/RSeEpxLgXBo8NfX8qRIzyGJD3ffy32p7Yu?=
 =?us-ascii?Q?4mUkl01gHOLgmpk5n4wXM35JAp0Ly7Cta1S9ErIDCuoe3Vp8zXQGxhKiMrCi?=
 =?us-ascii?Q?zd4wLfGp3gYGgnw67CcIX1rdFii47vE4MPu+M7KGGvMgR1xqA7TlWLWwQM6C?=
 =?us-ascii?Q?cxMPA0Af0sMwoeMEVrP6eiOWsF8hxRivNiQK6yXkzLCMPkxbLWhy4Cnv89SF?=
 =?us-ascii?Q?Y3dKFw46iDH1h+UXAqixwu7HpxtCW2Trjv50eqX/O7dSSQnB9yPEvA0XoM/v?=
 =?us-ascii?Q?r9+tpfGUUr2/zYzoOwkzmtiDxP39Foyao7wKQ+OAxM4UcsUMqhE9tcw1bys2?=
 =?us-ascii?Q?2//IndSW+28Hb5QlTpnmJDczTZFdz9ykEUR90pQGugeh/Bw5pT8ftgAPxuB5?=
 =?us-ascii?Q?nxHqXy3XoYX+0Av91Kvmy7zeKK9/FkeY3QpI6+kMb7FA3DwyWh+IHXNm8u2I?=
 =?us-ascii?Q?PYGpIOb6RLfQuk3x3uDA2mIQPcxiMnk+4meql2bIya6dkOaISd2Gsoh12GEb?=
 =?us-ascii?Q?F9XHB3pkhTXqG6zmmZIsi9daJ1IP5rpt85X7VmZWU1xnVdMrDcCjDv5zQTve?=
 =?us-ascii?Q?S/21lKC7c+0poCH1cbdaY7posBT3zke331E2iibeM1doZXENOPT1vuj0a4KB?=
 =?us-ascii?Q?Vi4bMLEEkRWR4zLuljHDji/U1RAOrgoMnLIfoFAUL3M4zFqkhDUxSte3siOT?=
 =?us-ascii?Q?jr0rzuydrbjGxKYAZwuSSotwuo+9jbCLrJLkRMWSMAxiWRGqYHtSwsLdQCDP?=
 =?us-ascii?Q?8uM9FoTBavZBJj9gjgp66qXmxzYNGa5T+O3J4MowK28XTd076tpjr7zwfMle?=
 =?us-ascii?Q?cFiVNsc+JZgk4l2fM2v6p9v0HEzvpKLg2zRdl760HFZBFozciDYtIBgOc2TC?=
 =?us-ascii?Q?C8SJGtPZKPLZlZtzsz1OED6uSHhqlgGk3b6GeEtB0jXXmtBnfvtUA52aQIkW?=
 =?us-ascii?Q?RxLwfzcptbKGYSe7Smgu9z2AMxyaHSyVMVhudy5V7TaD06eWnj+I8iisSaVo?=
 =?us-ascii?Q?EGSWOmCtH2Yh8resUqq+hG0xkdzXPh+aXXpZ+/A+1u+tOY9oBMEI5OPz/t2W?=
 =?us-ascii?Q?gw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1d8ad79-4f9b-41a6-d19b-08dbdb64d1fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 05:30:26.8826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WbcE3KnsGsoUgkMRiGLoLEU7borU3qC5hvCNbhZXijfbEfluJB4jDDlJrnvzfojzGTCVoG8GzbFmPgUjGBBAWhUWoLeZ7SN3G3ehgs2u9dqw42wvXeFGyQzM4rcY7xSk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6358
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698903033; x=1730439033;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vbp+HO/+7vTchnzn873ypyP3+zh6I8tjjn70pzl7rl4=;
 b=fQVHr7Bxff4Owm1u33qMi/UFOUMk/vMJ3DcDEiCyQHLIpJ+yDkOrgZlH
 lRWs8oa6B6XDp5Yc+5OfV//RYKu4mVX2eKyvow9uDq45QFmqCC9gq4bBB
 n+3+n+Fvj+nZxToLW5/d5rlPnTfV4sM6pHbFZEW/UEuCbfYa/v+j/aP17
 pD21EhcVTZFU8KFoYQT+no2h/UlbwSrPaOtKR25Xj6wFVN4wOxxwoEuiT
 r0YBi3c512cGKovI2idpsANNemlUa99BOuULi+fnKiVdRfWBWimx4YBko
 CwRa4ti47g1jlTVoAe5jzegSTZ3luY6dntGUMAkfY32bLCjJ34Sbk4Da8
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fQVHr7Bx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] i40e: Do not call
 devlink_port_type_clear()
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Tuesday, October 24, 2023 6:21 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next 1/2] i40e: Do not call devlink_port_type_clear()
>
> Do not call devlink_port_type_clear() prior devlink port unregister
> and let devlink core to take care about it.
>
> Reproducer:
> [root@host ~]# rmmod i40e
> [ 4539.964699] i40e 0000:02:00.0: devlink port type for port 0 cleared without a software interface reference, device type not supported by the kernel?
> [ 4540.319811] i40e 0000:02:00.1: devlink port type for port 1 cleared without a software interface reference, device type not supported by the kernel?
>
> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_devlink.c | 1 -
>  1 file changed, 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
