Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCO3MqOq4Gm8kgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 11:23:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5C140C429
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 11:23:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00A514084F;
	Thu, 16 Apr 2026 09:23:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9vcN1jI2Pubc; Thu, 16 Apr 2026 09:23:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41F6640850
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776331424;
	bh=jbP2aMUg+8scPFrWREUmcRhVzVUjlFjM4hkUlJeL1DU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OUJBAas3CXONI+4V78cmaQ8SiqZj4dsOj7SUK6I05XrKEXimbx4ZETjQBHxP8BVdg
	 +uE9X6UmnIsZdKAQT01weX0TdK3O+zhhz8CCFCYct6ZSFwEr/UOTwZfnOU5wl/89mF
	 Lxc1V1tnmIip8DifPlU0sTyTnDWwGddvOTWKaS08YTr4sZvxkuWfUvqHUgi7Bdm/ug
	 iN97/krCUuBHSeJFgiAvG/zTN9lVziq3fQcKuOdD7CjSdjWphbIjWFIj3hyr/BAWMa
	 xr9OcpRB6F2j5V/RLRJZDtfcSY+LE90NGh34TNQtAcEGL2r3fl7YtIzJ7podUEofmB
	 GJAx6JvWDDj6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41F6640850;
	Thu, 16 Apr 2026 09:23:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B256127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C7CA4084E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCuQtzVCYO96 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 09:23:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7F85E4072F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F85E4072F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F85E4072F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:23:41 +0000 (UTC)
X-CSE-ConnectionGUID: VyfxJangRD2+Q4zbHGBPUQ==
X-CSE-MsgGUID: MJTVm/pRQ/6KT2mqMPvHXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="94893123"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="94893123"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:23:40 -0700
X-CSE-ConnectionGUID: lH1Dgb71Q5KxNceqokr1DA==
X-CSE-MsgGUID: tg7RZwMMQ+i04+I77npp8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229849954"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:23:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 02:23:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 02:23:39 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.30) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 02:23:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b0rNTD9U+N5sZFrz+EFwQI/LZq96cTqZjwA0hoqxgOiF+1nsBln17WUBr7FxW9yHVqLKkhCd114rdDUHsGLLIIxUqUCdAN1KWJssAyI+X5P7jErmg/zyo12pU/wfi28MEvdvmnLBj8R6rVoQie6Rlu7MWxwYOtiBFjlkr4Zafbx1c3mlVSIZh+QAU4Ih1aUOs0Y66zEKhb+Za7Zr3gmAIUEe1QZOUZpK8IfePNRL9y7pvyauGs3NdA08KW5s7D08n8GRT1hguDICdGajbsnAlg4SNOgmC6JLAcUAnVSPyOTXgMnFRUnB2DX2tgoZvc5QYODZiJh+hu5SswCmJnM13g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jbP2aMUg+8scPFrWREUmcRhVzVUjlFjM4hkUlJeL1DU=;
 b=h9Cs7+PjEAbHEqPJU0NMja3uHA0y+VAINI7zf6/7p9ormkQryE2g7pJIP6ZtVWO/Teza3MmfWIBXqnh5umDWT510OYekR2y4W4GKYe0H493jZsACcDsjBqUZu9cTNfUqlnOqOS3stv3C4lfRpDHHqgXih+bXzt2yxqhyxVRYBp/NQB9L5nqAddhXCLZk2m2NHIZ5jRUDbM9DlQp3YVR2jIID1XNpCHh4FLMIk/f8CRqqTwi+LVblw7cyNBAJNPv6P3C1SCULtvcboz2c3ntrc2L3eXIQpHgkq+5ywVHQNPHQHtdkEp2el/UJ6I4qw9sCNHQPtQNOYEt0ZdB5nmL3GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6440.namprd11.prod.outlook.com (2603:10b6:930:33::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Thu, 16 Apr
 2026 09:23:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 09:23:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vinschen, Corinna" <vinschen@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vinschen, Corinna" <vinschen@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ixgbe: only access vfinfo and
 mv_list under RCU lock
Thread-Index: AQHczX0IMdGaNHG3UE6h9Dny5py4rLXhaa2w
Date: Thu, 16 Apr 2026 09:23:28 +0000
Message-ID: <IA3PR11MB898633AB0B2D010F495944E8E5232@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260416084227.3787828-1-vinschen@redhat.com>
In-Reply-To: <20260416084227.3787828-1-vinschen@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6440:EE_
x-ms-office365-filtering-correlation-id: 63f8a3df-5699-4dbd-d052-08de9b99d1f8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 1uI3Gdr7DFKIOgVqDEzachZjVQ/TUAbVVjRRkcrq6RkOj6/r8zXJLQRdVU01hIOKbjWobTM5638S0CsCfuFwpbruxI2zEpW6OelW+R03XnAW18O55ndKzNQWQPhSDiCnbbHUhub2gOljNai7BFjeUamkekSIzrFtpH+cv+puDvscIBF/MR9kA1sQUAxKjTjVkcHG/nBuiTcfT/KNoTl9RCM8/RvAqhECu4efAx3DKPpP/1AbA2lZbg1ZLvYk1vHLWLo0y9mSLTpE8nJZJXyHp7ja9eWhDK4oCgsjl+JQJOcCVlHG98vIzwB4SeoRIt0fqt6GaUE+D3gkqMmmoG5aqUxHtIicsaGEAJIY+DdPlreLTkMM5nIAc80Qr1LuqwShUYPsXV+qc0+HLGfVdSOVedMoIwjlTO6lps0qxans+4fJwrggbllcleojjK5zQe30LbQSYeJwaSGifm2wYC5VXB/xRfPWctdkfcF+SIOIYF+98LNfwXqpP0pflGe/X3ZRVG8IsEdqGslTNZdqe21bMkpxG05VeskxwpP3oa6g6czxhkkQtibUQEJm7dBRwpL7T/GT6bJCEPeL5uOGre+MikdaMcf1E6k1ofr4q85ADzAkSvpIPt+TVLpnScnc7by4XNHJ457dIKgaivSJwHFazLWhZDk9FQhsTm0huKyvd0PKLAtfSMoSGW195adMuA9ds5LRtkzcz2hL4yJbcUPVGEikcDAG7W475G63xAC+mQwvIYsiAi8JMgm1AVcpPyzRRy4G647P870naqHaiXRRnqTy8ptm7ZDB3Il76LI1sf0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HG/Ki47mpeegapdl+zYac6Jgt99x1OM/+DZqlIza6/CnRcE3jvJOVwZS0HLX?=
 =?us-ascii?Q?797pZ6TkGJCQwPHu6dxrHFehe689VWAqI94M60Jrt6Tg1VhOX6x1jtKFA3hv?=
 =?us-ascii?Q?0WQK2fx3usJao1T9RUPGBgHDtPBL3twZ7HjnDa8UM5gLo2StuGfxOp7Sk/2w?=
 =?us-ascii?Q?7lCz2hValFnrxTF+qHsfhk1UJobCRl3QA2ELdaunvieQfIS2py32JlUe+zTV?=
 =?us-ascii?Q?Cfqkg3vikK00XKe1eVvZcCoxlSsqHAEyT//LA5784te/1NoicL+nIXsQkgfv?=
 =?us-ascii?Q?8sfnmbnegoFH85xEu9QBZZyLqYDbetAr4H7Hb6x8eTp27woMH6wMkqtnPNQM?=
 =?us-ascii?Q?wsedN4QZtBrOvKpUHb3c5PhNFJJWDZCJLmrlV0Dy+H7/yyhEYMaWKqHH/mdp?=
 =?us-ascii?Q?qk42PKNDdeaGUxBECR9NR0gOmKb9SbdE2HgX47ZD7zNw5RmQwPhwXmbpKpa+?=
 =?us-ascii?Q?Z1q1xkfM6uExZonZHFqBqI4q17gAlBHv8SaYb/7x1DVQOmBR8rBMA+iOtpWM?=
 =?us-ascii?Q?KwqY6YAaBFoevwtJuEelpmFURW5H4ByE1FR6MiwIdat8dabNkD3ogYbFuzdW?=
 =?us-ascii?Q?S3E8D5QJtJkGDHPdztMas0NkhKpEyrD12B01cLR+vIicD8aeQDzm/Fmy7jFA?=
 =?us-ascii?Q?fQZlZfbngRqYbWStLUWPvomTettk8y2ASTZLsfMi62VwmXhkWuWYLhmneTGP?=
 =?us-ascii?Q?Znur1v7F/6hAPp5WxQBor1SfBCuT2AmArjg3f670E3asS1WwCerlG01I+X50?=
 =?us-ascii?Q?Uh9o6+XWI6N5SWPobCm6/kGwO3lkc39nRv0wUSoUtQydXHd5/yoPSUOGfU2K?=
 =?us-ascii?Q?EBFVMlweoFs0CDZh5btvSTYYS/vpeGaWCekBvLBCo+JvE1Y+8rm0+IM4wgdL?=
 =?us-ascii?Q?L3LHjszKp7dPPNyLtYONoBNxU2lChlSiLQN9gh6Js+2rVnCJiq5vhWw0i/A2?=
 =?us-ascii?Q?fscZvvV3SkRQ3phH9GlU4IbiZrG9PmJMSFW4rWSewbwrJEzCYaald0yupwH0?=
 =?us-ascii?Q?LURmefqWudZmlXT7Z8zcw2iEY7URSFI1GZQn/Aaw2F+3NTB/Zo2mLz4evib0?=
 =?us-ascii?Q?RVFp4KFuF8Zkevgv6XNs5ndpOcdl67QutUvWOoh0BNhwlKYMn+TQ0ofEAVz1?=
 =?us-ascii?Q?6Y2kRrH2WrCgtBeC7WUJhTwXJcLJ3TGAvQ4Z119IYnFZyvROtPpxSsGXNRa6?=
 =?us-ascii?Q?FQTGCGjGIO++jzoEKsrUH1Ec/V1Q5E09YBeCSAPgHoVW3N6SKT4oEnPpwBTb?=
 =?us-ascii?Q?nziMaPkU5I6fSK3MYs4zeJLdR5R3dXjKtd6QlKtNjsb/X0zWzBk/K2N1LedN?=
 =?us-ascii?Q?6g7106DVLnlJqlVFohnjeV8W+Cd6qj7LJU7y5Z2yeIyGZ+5HnhX5NeKZ3FTV?=
 =?us-ascii?Q?7XG2LZK4kdQNTiqCrMHsKAeovy3lUVYoADa5TajrsiwePxvFCHrsgvniiLWb?=
 =?us-ascii?Q?3t+yjAdW7GyuCXTcUYu51vadg017T/wq0l9vtDzgCDoVhGqVtyVoGlopS0tc?=
 =?us-ascii?Q?CI8lGAS4fJ9Am20QxaWVTI6h9A5a4x36zXk6xMk0lajDp0MdARfPg4tu35wA?=
 =?us-ascii?Q?WtHvTXH9rEGnuXoSb1ifwtd1wyCAx5o1+cKONfy74m89N2AKRHkqPTUpntC1?=
 =?us-ascii?Q?TrDAcRk7ZlV4a/WVdBvXjEDmdKZJvQm2PA6W23fyuAWD1933O1tT+0b92KV7?=
 =?us-ascii?Q?YbFzCnGOC7VHLIRhkvfHBkT7CrllQVE9syyQ1EufayK4YKKdRpCPkEtZCu3j?=
 =?us-ascii?Q?f8Inq7OuhjhGnlQXsSa+rx9MK8mlEQg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DF7+27gisMuOdtnBMq877EweuSs8UFNXT5BvCvQAE3z5NNklbCoBfGRUE7vhRK1VdJacoPD87XQpXNp9GamTThS/pMQuoXP6BxSH898OBCGmmg4Bc/qFUeLjEtOqvOwwzXtfelDnWlikck85zkdw9rsJYUwsvLU/dw6clXCeHyqQuFQWs3NMFM+qkOS3DonjdhMT7bpvjNCz50rl27IQ3azl2xoqKzAvi8AAlMYXITC1U2ZvWruAOk337ya1NqIyE8/uAzpMf7yT3IqsBDnM+Bb48WZeDXLQEIpP15kDN7PMYpzgXX29mBaDwLoh60F5F+jQlY6vM/r7j1VzJgTDsg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63f8a3df-5699-4dbd-d052-08de9b99d1f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 09:23:28.8007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OzbWen8+PbQZNHlOyDke+DSxb9Tr9nJqMY1CAC1Zp2lCaVSs6Shuvz0RAhEH49wjj1rE34bKzgOK8AYP8ZNO8VHvJWcFEPrrfw0wqLWNTwM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6440
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776331421; x=1807867421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lmLV7CPCY46ETDT6PXNZnJZBEaH6CjRMdUVLNjmKlLk=;
 b=UVMsrqOoPAoxLPoARyLE3fJOiJCK+NJQQ2gu7Dl5M/DSlvbbMozrflz8
 3J194fB+v6bZXkwdmE7pE8HGtflp+nQI0sIFSiRYwKFWHoxFnUPGpqadb
 UPnFPSIgNalw8/GmHpxdg2EIB6Dq26lY00McyPcf5P/cR1Ahu2JRJ3L5K
 L3CteQMnFKb908OVKGvD56UKn6/Asmv6Ugz/SOOoeD6zaffCPCjM+EjqT
 n4ns9Heiezkw912w0INTaZYPQ9j1LeZDq5+1cKLtVIgdf9+XykSGTqvA7
 8lfAiIbtElGgBmEd32f2KlEFKKFx5rngiLGQrHAoTfuN71E/QdxIZf0M+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UVMsrqOo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: only access vfinfo and
 mv_list under RCU lock
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vinschen@redhat.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0C5C140C429
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Corinna Vinschen
> Sent: Thursday, April 16, 2026 10:42 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Vinschen, Corinna <vinschen@redhat.com>
> Subject: [Intel-wired-lan] [PATCH net] ixgbe: only access vfinfo and
> mv_list under RCU lock
>=20
> Commit 1e53834ce541d ("ixgbe: Add locking to prevent panic when
> setting
> sriov_numvfs to zero") added a spinlock to the adapter info.  The
> reason
> at the time was an observed crash when ixgbe_disable_sriov() freed the
> adapter->vfinfo array while the interrupt driven function
> ixgbe_msg_task()
> was handling VF messages.
>=20
> Recent stability testing turned up another crash, which is very easily
> reproducible:
>=20
>   while true
>   do
>     for numvfs in 5 0
>     do
>       echo $numvfs > /sys/class/net/eth0/device/sriov_numvfs
>     done
>   done
>=20
> This crashed almost always within the first two hundred runs with
> a NULL pointer deref while running the ixgbe_service_task() workqueue:
>=20
> [ 5052.036491] BUG: kernel NULL pointer dereference, address:
> 0000000000000258
> [ 5052.043454] #PF: supervisor read access in kernel mode
> [ 5052.048594] #PF: error_code(0x0000) - not-present page
> [ 5052.053734] PGD 0 P4D 0
> [ 5052.056272] Oops: Oops: 0000 #1 SMP NOPTI
> [ 5052.060459] CPU: 2 UID: 0 PID: 132253 Comm: kworker/u96:0 Kdump:
> loaded Not tainted 6.12.0-180.el10.x86_64 #1 PREEMPT(voluntary)
> [ 5052.072100] Hardware name: Dell Inc. PowerEdge R740/0DY2X0, BIOS
> 2.12.2 07/09/2021
> [ 5052.079664] Workqueue: ixgbe ixgbe_service_task [ixgbe]
> [ 5052.084907] RIP: 0010:ixgbe_update_stats+0x8b1/0xb40 [ixgbe]
> [ 5052.090585] Code: 21 56 50 49 8b b6 18 26 00 00 4c 01 fe 48 09 46
> 50 42 8d 34 a5 00 83 00 00 e8 cb 7a ff ff 49 8b b6 18 26 00 00 89 c0
> 4c 01 fe <48> 3b 86 88 00 00 00 73 18 48 b9 00 00 00 00 01 00 00 00 48
> 01 4e
> [ 5052.109331] RSP: 0018:ffffd5f1e8a6bd88 EFLAGS: 00010202
> [ 5052.114558] RAX: 0000000000000000 RBX: ffff8f49b22b14a0 RCX:
> 000000000000023c
> [ 5052.121689] RDX: ffffffff00000000 RSI: 00000000000001d0 RDI:
> ffff8f49b22b14a0
> [ 5052.128823] RBP: 000000000000109c R08: 0000000000000000 R09:
> 0000000000000000
> [ 5052.135955] R10: 0000000000000000 R11: 0000000000000000 R12:
> 0000000000000002
> [ 5052.143086] R13: 0000000000008410 R14: ffff8f49b22b01a0 R15:
> 00000000000001d0
> [ 5052.150221] FS:  0000000000000000(0000) GS:ffff8f58bfc80000(0000)
> knlGS:0000000000000000
> [ 5052.158307] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 5052.164054] CR2: 0000000000000258 CR3: 0000000bf2624006 CR4:
> 00000000007726f0
> [ 5052.171187] PKRU: 55555554
> [ 5052.173898] Call Trace:
> [ 5052.176351]  <TASK>
> [ 5052.178457]  ? show_trace_log_lvl+0x1b0/0x2f0
> [ 5052.182816]  ? show_trace_log_lvl+0x1b0/0x2f0
> [ 5052.187177]  ? ixgbe_watchdog_subtask+0x1a1/0x230 [ixgbe]
> [ 5052.192591]  ? __die_body.cold+0x8/0x12
> [ 5052.196433]  ? page_fault_oops+0x148/0x160
> [ 5052.200532]  ? exc_page_fault+0x7f/0x150
> [ 5052.204458]  ? asm_exc_page_fault+0x26/0x30
> [ 5052.208643]  ? ixgbe_update_stats+0x8b1/0xb40 [ixgbe]
> [ 5052.213714]  ? ixgbe_update_stats+0x8a5/0xb40 [ixgbe]
> [ 5052.218784]  ixgbe_watchdog_subtask+0x1a1/0x230 [ixgbe]
> [ 5052.224026]  ixgbe_service_task+0x15a/0x3f0 [ixgbe]
> [ 5052.228916]  process_one_work+0x177/0x330
> [ 5052.232928]  worker_thread+0x256/0x3a0
> [ 5052.236681]  ? __pfx_worker_thread+0x10/0x10
> [ 5052.240952]  kthread+0xfa/0x240
> [ 5052.244099]  ? __pfx_kthread+0x10/0x10
> [ 5052.247852]  ret_from_fork+0x34/0x50
> [ 5052.251429]  ? __pfx_kthread+0x10/0x10
> [ 5052.255185]  ret_from_fork_asm+0x1a/0x30
> [ 5052.259112]  </TASK>
>=20
> The first simple patch, just adding spinlocking to
> ixgbe_update_stats()
> while reading from adapter->vfinfo, did not fix the problem, it just
> moved it elsewhere: I could now reproduce the same kind of crash in
> ixgbe_restore_vf_multicasts().
>=20
> But adding more spinlocking doesn't really cut it.  One reason is that
> ixgbe_restore_vf_multicasts() is called from within ixgbe_msg_task()
> with active spinlock, as well as from outside without locking.
>=20
> Additionally, given that ixgbe_disable_sriov() is the only call
> changing
> adapter->vfinfo, and given ixgbe_disable_sriov() is called very
> seldom compared to other actions in the driver, just adding more
> spinlocks would unnecessarily occupy the driver with spinning when
> multiple functions accessing adapter->vfinfo are running in parallel.
>=20
> So this patch drops the spinlock in favor of RCU and uses it
> throughout
> the driver.
>=20
> While changing this, it seems prudent to do the same for the
> adapter->mv_list array, which is allocated and freed at the same time
> as
> adapter->vfinfo, albeit there was no crash observed.
>=20
> Fixes: 1e53834ce541d ("ixgbe: Add locking to prevent panic when
> setting sriov_numvfs to zero")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   7 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |  36 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  44 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |  17 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 229 +++++---
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 547 ++++++++++++-----
> -
>  6 files changed, 593 insertions(+), 287 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 9b8217523fd2..8849b9f42bf6 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -210,6 +210,7 @@ struct vf_stats {
>  };
>=20
>  struct vf_data_storage {
> +	struct rcu_head rcu_head;
>  	struct pci_dev *vfdev;
>  	unsigned char vf_mac_addresses[ETH_ALEN];
>  	u16 vf_mc_hashes[IXGBE_MAX_VF_MC_ENTRIES];
> @@ -240,6 +241,7 @@ enum ixgbevf_xcast_modes {
>  };
>=20
>  struct vf_macvlans {
> +	struct rcu_head rcu_head;
>  	struct list_head l;
>  	int vf;
>  	bool free;
> @@ -808,10 +810,10 @@ struct ixgbe_adapter {
>  	/* SR-IOV */
>  	DECLARE_BITMAP(active_vfs, IXGBE_MAX_VF_FUNCTIONS);
>  	unsigned int num_vfs;

...

>  		if (!vfdev)
>  			continue;
>  		pci_read_config_word(vfdev, PCI_STATUS, &status_reg);
> @@ -9744,17 +9781,23 @@ static int ixgbe_ndo_get_vf_stats(struct
> net_device *netdev, int vf,
>  				  struct ifla_vf_stats *vf_stats)
>  {
>  	struct ixgbe_adapter *adapter =3D ixgbe_from_netdev(netdev);
> +	struct vf_data_storage *vfinfo;
>=20
>  	if (vf < 0 || vf >=3D adapter->num_vfs)
>  		return -EINVAL;
>=20
> -	vf_stats->rx_packets =3D adapter->vfinfo[vf].vfstats.gprc;
> -	vf_stats->rx_bytes   =3D adapter->vfinfo[vf].vfstats.gorc;
> -	vf_stats->tx_packets =3D adapter->vfinfo[vf].vfstats.gptc;
> -	vf_stats->tx_bytes   =3D adapter->vfinfo[vf].vfstats.gotc;
> -	vf_stats->multicast  =3D adapter->vfinfo[vf].vfstats.mprc;
> +	rcu_read_lock();
> +	vfinfo =3D rcu_dereference(adapter->vfinfo);
> +	if (vfinfo) {
> +		vf_stats->rx_packets =3D vfinfo[vf].vfstats.gprc;
> +		vf_stats->rx_bytes   =3D vfinfo[vf].vfstats.gorc;
> +		vf_stats->tx_packets =3D vfinfo[vf].vfstats.gptc;
> +		vf_stats->tx_bytes   =3D vfinfo[vf].vfstats.gotc;
> +		vf_stats->multicast  =3D vfinfo[vf].vfstats.mprc;
> +	}
> +	rcu_read_unlock();
>=20
> -	return 0;
> +	return vfinfo ? 0 : -EINVAL;
Before it returned always success, but now it will break 'ip link show dev'=
 in short window when SR-IOV is being torn down.
For me it looks like UAPI regression.

>  }
>=20
>  #ifdef CONFIG_IXGBE_DCB
> @@ -10071,20 +10114,26 @@ static int handle_redirect_action(struct
> ixgbe_adapter *adapter, int ifindex,
>  {
>  	struct ixgbe_ring_feature *vmdq =3D &adapter-
> >ring_feature[RING_F_VMDQ];
>  	unsigned int num_vfs =3D adapter->num_vfs, vf;

...

>  	return 0;
>  }
> --
> 2.53.0

