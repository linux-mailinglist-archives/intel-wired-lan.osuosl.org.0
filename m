Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276FE83BCCC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 10:08:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3190343545;
	Thu, 25 Jan 2024 09:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3190343545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706173702;
	bh=D5pEt0hedzJMimyohiQPTdGGk6kU2zCR35Bi77lr1q0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nyW+HyRkmXwUclXnHoLj2POVnNKFYTTDS3qK6ZP6J5hQG7mn1FEtVumOWSzuWhhI7
	 62fyPINliBlNv/GzQmPokAnLYoHLLeDGop7WYebSQmqVYX2Gtg7EVQepGPW4/qIO0H
	 uzXYVc3TFVGW3e7M/Epovfsj2LZdmswJHo+wjsJXSs6fT7Wduly8E6IEO9JtBkw46r
	 yVQB//W3TgoxoFGrx2VTkP7VEEgvco5v3ROQjhZrmXR/IvfVyHHQlhA+xzr4abutwO
	 4l5DiMRF/QBWd9u3UvLptJ06RYvJYXAWd6Psb+1Prfk5UNfKpsy8YTiVfDFet6hyod
	 1wcCDDtm5kAEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d8LeAfhOR5Je; Thu, 25 Jan 2024 09:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DE7942F5B;
	Thu, 25 Jan 2024 09:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DE7942F5B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FDCD1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53E5F606DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53E5F606DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTcGnu-umslI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 09:08:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0C78611C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0C78611C0
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="466390586"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="466390586"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 01:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="2179841"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 01:08:14 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 01:08:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 01:08:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 01:08:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYirLX9u3X0+U5Bwii3OildsLeu/ZDBE+5+haTnmQAaFPYQFZ/2rLmux8y6lQLd3uNh/yjoodw0eTkpPVJXgWrwTLQ+miA3gNoWKVIROWjaICwBtbowC/Ez6+iMbOBx47tl1E9Yg1miKezMJYCD1Qukn6xFh5cvW4mR5EVQJAKXybOrg+oXnNiCYF1jNcQmus7y9YytnAvTMlr7E8GPkMcJa3asTvWoKGq32PFX+AWn6gIHKqZuhUZBu0AsVUMRLgRH+X3J1NNK2fK1LSs1571SiKz1rPnSmZX2tG1usVOqUzQJtX1H4zz8phnRPKp8rEky0RGGELQvnxER0dV1LKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5pEt0hedzJMimyohiQPTdGGk6kU2zCR35Bi77lr1q0=;
 b=X1jyYNgNqNy1nAGHHXkVYPaSpkveydoiCHXqO8Av5Ep2I9NqbLHfAS+oQvysI4bJXtgGO5DA9/9RdoY8ENN0dUoNeDckMmYwkwUrc6yYayW+SrRY0NVp2oCP7laN4x4RLlbO6Qoqu4VZ+0JjwkcvIKYNDV7ZmFVOkr6FsDIO0XViBJQCiMcG7i1eGkGgcxAXGDwab9XLIhPpjyd1YuzmpmYW1rUIGfw7mzjxV2bSIYXQvKG9iN6cWgBAIa3HMhobMNm0amgbbRTSeiv3+3f1EhEJxX5uO/v1HDpD+Z9mtLnOtL4ajXvgIiaOkHegGmHeSJ03HkJifLfBbysfsXPqyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB7878.namprd11.prod.outlook.com (2603:10b6:8:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 09:08:10 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7202.035; Thu, 25 Jan 2024
 09:08:10 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 iwl-next 5/7] ice: rename
 ice_ptp_tx_cfg_intr
Thread-Index: AQHaTepkiv5Pbb4Jm0uxdlCijKmfJLDqP9Qg
Date: Thu, 25 Jan 2024 09:08:10 +0000
Message-ID: <CYYPR11MB84291D3C815FDA16D74193DFBD7A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-6-karol.kolacinski@intel.com>
In-Reply-To: <20240123105131.2842935-6-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB7878:EE_
x-ms-office365-filtering-correlation-id: 3798813d-36ba-49f4-4054-08dc1d85271c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2wGrFKG9iTa1QX6yn3aEU11qq3oNd1yov1MlN+6dNT64LwdkkFYeJ6s1VYp/xuxJ5ZVLCNvBkKq2BzaVrVy5MZgcJLa4mT65RN2kjnr1a3Cb5wc3TsQlun8kRfIHZfWDfJiAeISfr0kc3OiRFgwbTlnxNH/MLrlHxfagD5yI0Gy0qJcVmsD6El+aKdkXf8v7GtqeDs6+wrLgLvvCSQJTZMgjJ6A9X5oC6z6vsoCMgRhW0Gp4uaF1cOqR0tzDt5vbV69MuqJuhajt/jI2wQbGGwo4ZNubACd/r5MbHKoMvOO20nGFXjM+zxPgqDnemFGq/N3Bnbp3ZhotxKFq00WAnlZb83JXV7DTOLIpep0Onk+QotoDtpVZsmRlxtcq4b4vkwvwmAC26Cdo0F8cbxbOG3ltp108rl6K+65PpASmXYj1FnkrhVFEJnJ4/MWoImzcq/pnx6iNO9mB+tDmeP1amMrieMtKxS1lV2enUo3g6TnJfkoJkkkLSuYoYfT6Z6g4yG0CP3VWxADC4R27SmAmY7GFeu/oHKeWGxw7TQWhjJrb8rEWFcuiKJk7UbnpZwvO/4n9EGsxPtsoHVfiDPgZqNMYG1lWoOezMQk6vCm3MfMoISoLLcxA1UCWOcDWaAa8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(136003)(376002)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(82960400001)(66476007)(110136005)(316002)(66556008)(66946007)(64756008)(55236004)(53546011)(26005)(122000001)(54906003)(66446008)(9686003)(107886003)(478600001)(55016003)(38100700002)(6506007)(7696005)(71200400001)(8936002)(76116006)(8676002)(4326008)(52536014)(5660300002)(83380400001)(41300700001)(86362001)(2906002)(33656002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9xMXwg2u7kFzKx4AydoAJ49D2HQdJpccGErIExAzsngGkfFEMiFfpxJZd/9o?=
 =?us-ascii?Q?ClB2aIt4BJQidl8BBhBrcpeHkrVhX38cS49gxhib6JoCQii/9HDvt23YWd+Q?=
 =?us-ascii?Q?0faSOy522jW4bQanFtoqd5f4AbishxBmWSwxG0fUwMzzhvHDi/54o65Br2B8?=
 =?us-ascii?Q?OJOLPWd8BzdusvTdIr7eV2Zdrla8UYQIRhXmstEFpZEflPMrHZvSXa3YVOz6?=
 =?us-ascii?Q?RsiarzceFneWNBC85GN9K6m1Gae3xo1EXfB10cd3xeqcZ+rnOj39ksAB0Lt9?=
 =?us-ascii?Q?iUSwdkS8Mrl5FB5VzqGO9ZTSkxIHXLngQUAY8YfZ7JRKDjgfB3Tmzx9Zerj0?=
 =?us-ascii?Q?4l1POxDmLinrZU0IY5c5YYu4UK9NlyaKjoN7KUzFHlnZ23KGRV+LGCzilB8E?=
 =?us-ascii?Q?eMYUUPL7cAXbjF0csPWeQqvhLVQlU7dgz8nbdtXgDEpoABO5f/y7c+hgxnIB?=
 =?us-ascii?Q?Ych3uxSMgUWl4r5A7EFBFEAmCk9tvMKo/EvSkCrpLRtxQCB1W4IhC3GqpTvI?=
 =?us-ascii?Q?HkaTmtO+VjMZ6PES7NorUwZvVXhRfrdxHfo6x6tkoT+7/bTgdbs6yXwg8RBd?=
 =?us-ascii?Q?I6xRQIZ11tU3h8T7DnI2JeTh1QVxGkllX1jMX+56+9wr4agBEnxLBd20mt74?=
 =?us-ascii?Q?ur7OIynH898WZHasvq8JDW4llnSuXaW0rvMsQSbAjIm53XR/nzE15EZ3pj6M?=
 =?us-ascii?Q?isPVQ7KNldUtZNm8KQfAoHNmt/f3ZDHgZc88a+3kDjyXN/iDHAB60vcVwLEp?=
 =?us-ascii?Q?nd7j2++oCB/owCVgUM8VgEDHxio3YC9uiF0krY48HncfpgdyuiLaqcMc1kd0?=
 =?us-ascii?Q?EitTKmScR94tk0GXgT7EyylQpOo2l7cqXM31Xk38nHa4n+EqEUQ5p5l3ImUS?=
 =?us-ascii?Q?GUSL3n69koLBx4onUfmmaWstd6+GAiUFZP3Ema0v1BOf2ozIVHGplAgrmJFI?=
 =?us-ascii?Q?lm6eXj1b0QKo6THuJlEaDtwAnzGEXpQVZhLWA8XxlUKugjvhwGLPkSENWMkh?=
 =?us-ascii?Q?7inekqalexzkqZXH2OITjB11jLr/SHuGyOHYAv2pTcgwYSIzWJ1kaX1zoYrr?=
 =?us-ascii?Q?h8WXfjZyS8dS7vwVe4qFL7Slk4XCvOwpkcrKWqsFJTWnX1M6GJSCxs2+2Mez?=
 =?us-ascii?Q?by5VcjbvkRIAY32OMQhzgAOWmCClnzfAZJKzbsguLnwOKAlMOgfcjmd7pXpz?=
 =?us-ascii?Q?4dzrei/jdUTD5KR4I41Wzq0asgW55fN39xHIgGylZoE4BsWFUUIiv0AzwQ8N?=
 =?us-ascii?Q?5CC/1V+XWBJ1LIgUzEdOgEygljun4pufLLxW5WrOo8vm+4l/2HFS7nCFwUNH?=
 =?us-ascii?Q?DdBHb0pIu+RNdwE+mCjTGCKIoAOOlDdTAiCG2YFn1UhgDu3R58+OUrqq0kgF?=
 =?us-ascii?Q?LO58fglUxlNjiecJV/nc3BdJR0oFnDX26y/66vdUuvUlQdZsW2+bv3SEf9Hn?=
 =?us-ascii?Q?Z0N6W+ftXummgFvLy5xGZNjFiJqlZZb9S4e2pR3BRYaZRswO/pA449tTUZYZ?=
 =?us-ascii?Q?v6/tkbdCYwZzJE7OnrCvV5eXn4gsGXb09Z7lsJVkTsPDVWq9hrL9fQcbizNF?=
 =?us-ascii?Q?G1qBAJ4GzmA2n0VFx5W38iswGQQaBi7oARgaRE6g0MzDNM9pgbLgIReN0PoT?=
 =?us-ascii?Q?lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3798813d-36ba-49f4-4054-08dc1d85271c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 09:08:10.3380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s2pHsTiPvDxZE4YjRdwT6nIBfH+lpzgcEogQvvTB2wOFvOTdez5B3Fi0TKu0YbZgKzVkx5lyPT3/ZEWvgUnVFPsqndCK6HtBrCp27T3XI2io4ZZUP1Bx6OyqhNQifSJS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706173694; x=1737709694;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+x6UYn3tfujboVhwa4JKitYaImrGy3tOjNGl0s84y6A=;
 b=MNcAr1xAyfHbRj6kyRZ5OMYfts0dCdHn8e3U94wVfqRgvzUmphHbSl7k
 Y5svOp6oCFRbUl+IFZkgljZFBen36zrSkBoIrFpchbKnGxoYkXxrwIA95
 zRNKisvCzJPMeVNwmkePrUck9MdTE7A2ILG9y5xDr4nP6MDImgItvaRQJ
 76wRre0Ly2Rba+aRu8dNcXx47gex+nqZUl4DR8g3Lb6R8Ajb9KupdOTFp
 dsJ8aiB5FK5WGQBA0eYH/J5GUlcq9wRdi7WQe/88VPwOk3UoWyNAYeBy5
 QjM+I3nRM+Bv2ezResbA4UA1p7m+wD51Tm6EnMegVBk46/4yYEYD4Co23
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MNcAr1xA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 5/7] ice: rename
 ice_ptp_tx_cfg_intr
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Tuesday, January 23, 2024 4:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v7 iwl-next 5/7] ice: rename ice_ptp_tx=
_cfg_intr
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The ice_ptp_tx_cfg_intr() function sends a control queue message to
> configure the PHY timestamp interrupt block. This is a very similar name
> to a function which is used to configure the MAC Other Interrupt Cause
> Enable register.
>
> Rename this function to ice_ptp_cfg_phy_interrupt in order to make it
> more obvious to the reader what action it performs, and distinguish it
> from other similarly named functions.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

