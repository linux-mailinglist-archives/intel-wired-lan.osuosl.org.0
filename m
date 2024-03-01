Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C014686E429
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:20:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3262D610E9;
	Fri,  1 Mar 2024 15:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KTdJJEIPL9jh; Fri,  1 Mar 2024 15:20:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63A9B617B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709306419;
	bh=/zxaDJjQt1dDJoDXloNSTFg5S81/jpiJAXgsENgfbfc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7XkTyb2jn8Ar4mROKX+KAlC6VrWaUu82O8msMXqVYV25G+xB5rpw9vRz65lu4WcSq
	 J6E+w/Jp9xQLPjXfi5FabZWM512B9B361FhG1Bvgm6ZOPmnkomdC/mmO2L2+AJ9IbE
	 e0g7RmtHrT4w37WytqOroBPdpNjwkqr2j1puH5hsejGe0d9aKWEaTpq0dejndVJwCU
	 x3+l9rpPiDA/puiBcQxoUgye7wS0tlkWA3TmB012ZhNVpcUdIJcgBcY9pLVMVmDch3
	 lTMscx/tbCZjV7Ol8X+Qt27IFxXqTVRwYeuwZEU3TJktK6Q162adb6V6suQvDdX9T1
	 IWxk3TkaQibuw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63A9B617B0;
	Fri,  1 Mar 2024 15:20:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C07D1BF326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A2D561785
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PinSl1HV1k0V for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:20:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 02A1661AB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02A1661AB6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02A1661AB6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:20:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15280205"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15280205"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 07:20:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8651788"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 07:20:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:20:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 07:20:13 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 07:20:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVXTayc0NYxGmRfp3EIcKtosCONWKRYqlNcGb3sqARvUdcEKXSXkdI16gDBhHnUh0QKsfkKoolbXGpMk1ymnjEpcAYtVPMgfbjnB35ZS5e3VL9aFhWOVdhONb+DGWAd3OWUXqwsssAtIznwShv7BU5et9moPlnpkqSQHOQJLCjgMF14pUdDIJr7s+NVu4wwEi4VVTlo+lniPQPZdoB+m+6WcdPw6uoavjA7JXkqSnBjZu8i9RVRQNQXIqmfrSPfLFvrTJJh6hXI4GO0HsGlyBdlOx81NLlZcOjlU8gbJWkPzyvT2MF/w7Gnx/ymEJ33qr1U9EjVdgWxq5TvJ303dRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/zxaDJjQt1dDJoDXloNSTFg5S81/jpiJAXgsENgfbfc=;
 b=EAadGdgZKxrDU8FuflGRu7WiDHp6CdVClf/wEIxaGcWERRuSjen3G1s7D2tRncd7CbT53gr2Q4mvO+H5ILQmlhUFMpKt6Dq3KfuBtWmDuxTGc2VvFwhVw6RWAXgS3vF9Zj/9l4FH64NhTRPNGB284CaC+6ZDDQ8c5ECI0Blo6/xCoS158ZkutuOAFX/w1NaEsch2azi24En8nfdEk9Pb5BaXXPcS1RUT96xg7HWpwWqKwUgG5ZfpXkKZ1WvxSFFyHAjqs2Ce4V4iOwEFctxIJiZBVzYHLUZXubrB4DKXSjFsX04C2LoehgQKkLpGqOmXDWWbBKVhK+cXb7eCEB+RRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB7697.namprd11.prod.outlook.com (2603:10b6:806:33a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.18; Fri, 1 Mar
 2024 15:20:11 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7362.010; Fri, 1 Mar 2024
 15:20:11 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: remove unnecessary
 duplicate checks for VF VSI ID
Thread-Index: AQHaYSSE4pBF2itpUkyElD27Liar9bEjFW/w
Date: Fri, 1 Mar 2024 15:20:11 +0000
Message-ID: <SJ0PR11MB586503B410CA74332412881B8F5E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
 <20240216220638.2558451-3-jacob.e.keller@intel.com>
In-Reply-To: <20240216220638.2558451-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB7697:EE_
x-ms-office365-filtering-correlation-id: 47c0f160-0e68-486f-68f3-08dc3a031666
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yF06838GIn2sQLM4/5/IUKcITCpk+6UYRsxjhGiBOcXl20v8le5H2XLxG/vSf/vvhUPBZuA7F0WeZr8mj/O6Ct1p7ksnYR3xJ5yxOldz21Z8tnm117Y4Ek9/6rlVgRfZQRr6Q+103owFTj3EcxwMSMS7GTLRreAjG8v/fxitJef0Tn/Tre2KV2NHWvUGtWqRz03nfW1EDI1YaUJQhVbSfia8WPMhcATLCJ/vYjlGLZK+/D9hqtvdodZn9cLnFLk3jlkNQWhgj4vnVEF8hBmaDqHSTvswBs9RBbpGrBT6MiME7Aws8xv/KIDjB1e91ajH86n7G4yI718KuWRkDJ6sgOmtZXltv03VojhT17m78QeShOk4zhruc/xEnuYCaBfsMb4nIz7BiJyjHfJKbkYvwCSmSzh9HBq45K1U3vMP0WMDP2JEEa98+LMLug0s5e+hqyQAMk3Arf4n7MOT2QWMxzhIBAwsU0Z1bUloDlJPpsvU4zRZyR41IaQfKDS264vPiKFUEpVNJEdfUS1QdmV18X6601Fyd8kzkYMwRD27YsGQJAhBBxpUbC4LvDwqdUVJ/Z7wj0zPHhQZzsTFfIKmOTSo9QRMfgqr+1Vg/0u4EARb0sBQ9RDVrCl7WeR0QkmACoWucdmkEDxzFPxufRawI0r0/b+i+Aq7KiGx5ZF4D3M/eyzEaIVANK52k6TA7xRMJ0gBKBhVrGeSpjPasH1zbUGB56IYp+qFTRdXwE5f0Aw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i+XNBANcFSqCgUpQjLnuwMgIh1VWb7YTecapazpUIJgBagOurceIlC8u7NpA?=
 =?us-ascii?Q?I41Z/cqpjSQZ1MeBsfFfKSDkH8T2vd8z661lh2N9Vgkceh7cLbZeILpYJ9O+?=
 =?us-ascii?Q?icZ0+dnQ6s5PRYR4WasrNM7YB5krbcjGlrXeDtUThRZUaCrfxogP2ql90jdn?=
 =?us-ascii?Q?PuTOJsEowWOX7ZrTBWMVhS5VufMt9YfRtOijpHo/eS2fF5gpznj2n7tFNfBJ?=
 =?us-ascii?Q?r5U7aWJZBHM+tjVeufAAWxEvuj6MQHZT9U+ufKJZhkQZFt0SIsgI2ynE0K67?=
 =?us-ascii?Q?HPtatVtZvIZISOgMQOZ6M9+SPIWVwfN7BKr7sZ8GmImqgxcrVMRfkib0ceVp?=
 =?us-ascii?Q?XKMd0Q5Hupej19eSCY79X9l/roW5n++SChjJSSwd4Qg5ltfhK7JzoBoVaH47?=
 =?us-ascii?Q?Zj5Q0Hb2CUc213K1Uz8FqLv0WX7MY4XGRzc77i+rbqxwQtbG7AYRJ4mCqAIX?=
 =?us-ascii?Q?YeS+QkL0L7uGhCN7bOQEUc5kWYG/4t2X+n8411EDd+AFqjH6IDv4GFDFwFQS?=
 =?us-ascii?Q?gLRkeyTErufM+qrxBPI2FegM+hDxqYUSTiUUDWI3M4z8Le+YQnQcL0O0v/Dx?=
 =?us-ascii?Q?E9s9qgw3d9wUpiF0js+d/B8g4QY/7pbfwIcpYxb7Bv/LTdtftT1jUNQ4bZGR?=
 =?us-ascii?Q?9xWL8pugpea9kk5/9v6vCjdEsL41qGpwtyeU+Zsw51FwoIyoaFgFNEfzQEK2?=
 =?us-ascii?Q?ftd0Iu0LhCQrb6Yfzsh3Lw2rMpYAvSYq4xnALKVNTmlZLGnB8xzlZf/AJa+b?=
 =?us-ascii?Q?S9pDy4VqavGdK4gtVJcSbPkOU+LmAgYvIs6Km0Fl/cyXdV6aiczAPJn3Xonu?=
 =?us-ascii?Q?v4s65clJMjXWWVGqjnML78M0tA1wdFdczyTOcWSMW6eg7Y1arai5j9VCGt1s?=
 =?us-ascii?Q?w8hNHJdNU68gBqXxnbTuJu0WniNYJlNJVODu/3fw0rN0H8R4YpvAjLLARpXi?=
 =?us-ascii?Q?uTac7eE+wZqT316yMlOf7NbdNsf4AYZl1JrZOsjpYXo/pUsjzPXmBOkKBDaU?=
 =?us-ascii?Q?JJUxrIYJFkG92MTU/nw9EcUBikjyAFtxVTxqvPE2ZdfcahlppH3EyxTTuQ22?=
 =?us-ascii?Q?Da/1Osatu89UgXr/LBsN8zNxaID+jC8KOxWRQNavp9dcNi5NY4w6GnfeqzKA?=
 =?us-ascii?Q?QaWBMtWLEQQ+tDJcoauWFpCuk5uAu6JYcTL9SyNSokRJlW5nh/zvhbP43kGU?=
 =?us-ascii?Q?rdLzK/vjQ/KZ7e8wjOSdrKx74fGYo35JcbiECk/qTm/HfMxWofpkxqHdwwSG?=
 =?us-ascii?Q?KVF7E0HYcxPcLzDCQHCw+7NL6Ybm61c66s5G+LxgT3ikYOINDkrEgG8LEI/D?=
 =?us-ascii?Q?35e44l9Oo2o8IriuuiSHs032wby19VOPNLe0WnmEnCRPShxCsARoV99t7K5L?=
 =?us-ascii?Q?/xZkLN0xuvyAfIeDjH1DsZHEq/nOQwHJ7XXQ6jgJoJt5ThcCGjIbckzF1Xah?=
 =?us-ascii?Q?aOsGKL6MU2iO1JAbL4QTPBDdNVpoSrdat+ZLWnz0uCRCduXpl53BtSqCXfVm?=
 =?us-ascii?Q?PsAyDgOkBCtk26KN5aLD3FwUOahBLQq3Bv/E697v1MsyIn/HHTVcRAaFC30B?=
 =?us-ascii?Q?1H4BKd8EAyZg3b64o/2+iCGK5org337nFUepPirw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47c0f160-0e68-486f-68f3-08dc3a031666
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 15:20:11.4434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pTlj5guJuxhyoye81yiQjKLbdaY3RbhnM3tH2L1BoDF5RfZaMXt3Ew4ElLNkUanXHQf7lnBcmBXJP5JfxuZnHhebxvi06ztG8Zwyj2lj0Qg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709306415; x=1740842415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S2cnzzoy5Ure1Etwhgxgfi+eeelHLTAKLiB6YISzCP0=;
 b=Y/zkl9M6yGA8+2/voYUJazpHlfU/Q3Jm4gf6SBdMQmRq2R1A8tzF5scn
 Q+nlls+hlh2s4ncETTvEeNK46c5/l5j5DIKx0mHfOmJ91MFaLcO0EWMIX
 SVyvgag549J7VAdyteo9k32LctZF6cwMWqgQLB9YnPTgtUFmCQe2DiL7s
 6+A4qcafxt8+kwweT10fAbGl6TdDOJJhSBoWnCm0XSXESJI5wIm7YcOL+
 u9Av9WnieQYooxjLJF8SwUmKcvAcePy6VQaVFt4Emn+cFP+dEDHm6hi2r
 xdpNTr4ocMIh8p8fC+WkIZz7Hf29QUhEfv5+/JeRWTxpStBXY5acwfYqU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y/zkl9M6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: remove unnecessary
 duplicate checks for VF VSI ID
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, February 16, 2024 11:07 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN
> <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: remove unnecessary
> duplicate checks for VF VSI ID
>=20
> The ice_vc_fdir_param_check() function validates that the VSI ID of the
> virtchnl flow director command matches the VSI number of the VF. This is
> already checked by the call to ice_vc_isvalid_vsi_id() immediately follow=
ing
> this.
>=20
> This check is unnecessary since ice_vc_isvalid_vsi_id() already confirms =
this by
> checking that the VSI ID can locate the VSI associated with the VF struct=
ure.
>=20
> Furthermore, a following change is going to refactor the ice driver to re=
port VSI
> IDs using a relative index for each VF instead of reporting the PF VSI nu=
mber.
> This additional check would break that logic since it enforces that the V=
SI ID
> matches the VSI number.
>=20
> Since this check duplicates  the logic in ice_vc_isvalid_vsi_id() and get=
s in the
> way of refactoring that logic, remove it.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index f001553e1a1a..8e4ff3af86c6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -94,9 +94,6 @@ ice_vc_fdir_param_check(struct ice_vf *vf, u16 vsi_id)


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


