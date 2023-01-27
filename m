Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFE567E0B1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 10:49:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2ED5B417BA;
	Fri, 27 Jan 2023 09:49:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ED5B417BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674812972;
	bh=T0S3gvsxzefQRURn4RQYT15z+EGJm4txVzO9n8ivGZE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W1K5kP0txNhZH9xeFfLVp5nQ1dlZUai8It/pLowM9LwoVqL6biJiHw7MabddXXGeO
	 /j41i4CUOnuTULVrqc4VoeVMuKpTpW4TWSLN2F0UYzec1L/wXFAyTfri8GYqUhprUm
	 GpIQtd2MlJh/qj7RYG5HwTsXSroLufoGRDe/fvSBSfva5LoYTkVy0m9+RGXWPnDex0
	 dr7XAFrXOMfR7ksXusGbDz0clfHBwOn/SVOycIgNc+cMjjniirQdfaw5FbeL82QrIo
	 JxZv7Vnl8SlhCPTTTSoD4QfKIRKAWSkE81To5YMHILl2jgOEwExSc12ZthsF2RRB7U
	 gN9fjnAcKONfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tq3SOKELexkn; Fri, 27 Jan 2023 09:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22124417AF;
	Fri, 27 Jan 2023 09:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22124417AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C24BA1BF346
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A371B41CB3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A371B41CB3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Na8tEOkVdyai for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 09:49:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6E5141CB1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6E5141CB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:49:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="354350875"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="354350875"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 01:49:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="665197462"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="665197462"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jan 2023 01:49:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:49:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 01:49:23 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 01:49:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R1nRM5JK3I7mRfAfc9wOvnoRGdJlS+4644e3XpK0xO1f49sW+S9HLBFnST0kOTYPCInjZgygz+x/0nXiacX4J9vKzF0siQDWhpRcIoPHpof+9DBdOKqYl5z28waFjArOctJJPpKZATZgeW428S155gKu0X0AH26+ugpCq7HdZTOqembPaov0ExarJPjvKzd0JZhOAXRKnQaKEFFXQlF1gpGV5TwluD1qxLWEz9F/pna80LUGarsS+OK4bMFuSEvOIxRI/CWWOUNGJgKL9fDTLcsG8rh5E5Q6md0owdyLjhvoKF2IklV7CzvN/PtFP731oGV/TABy9EvKMg/6isuATQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UjNpcaXHSZAfrXmiyUys+sfgG0TJ9hiTWT4VhveTozA=;
 b=dmWG20IqMEyf/C6nk2oRKg7DB29u2pkZjcKlrisOX1bzspFfc8OKZR6HV+M3o5VEK7K37TY9D6YY9iWxhq2xPnqv7elpZMBnCNpfhJLuGQMsTXtaNRA0I4xbtopW94XSXJA6BttdVVmX9IfSi8xUw6lEN1oCNi1wvA2rvT4pgQTmGrNWhVPbvxAQfGQYYy2g7hrn/oxU0Egx6XXNHejbwjOFhoNI55np9vzJMuhRBBrq7+sdtelpSCY4fRUhrocjTagYZFYppMIHLXT/h1oY1v4LEq4vNNLVEaSz9dZR3Lkl2iDeoJO1E+CmyWlSNt+37wBN/LKImnS2WOYPsYDlMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by MN0PR11MB6058.namprd11.prod.outlook.com (2603:10b6:208:376::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Fri, 27 Jan
 2023 09:49:17 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Fri, 27 Jan 2023
 09:49:17 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 13/13] ice: remove
 unnecessary virtchnl_ether_addr struct use
Thread-Index: AQHZK6PhOllVWBI0jkO9heFOcXxNkK6yEdtQ
Date: Fri, 27 Jan 2023 09:49:17 +0000
Message-ID: <CY8PR11MB7364EA11F5A71E696FA79E65E6CC9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-14-jacob.e.keller@intel.com>
In-Reply-To: <20230119011653.311675-14-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|MN0PR11MB6058:EE_
x-ms-office365-filtering-correlation-id: 215fb84f-e83b-4d04-a2f3-08db004bc175
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GwypsxPzOAyYXNLUPmPEt2k9p9MkckHmVteTbb6w+bparjcGCkGkufcqZq/b4nD4QPZ0mek/b1E95vBiADbDWwc/NCwiJP+bASC+ABO0/RFZAUJqgrIpWI9LdGE58JpZT69dGcByljECj1y3+u+GKHVDpCxaGlCA4svEzdoqg9V+6GEPgpBW4k/fNphfKdKESQkbSczCiOOlS9Ut9w+rNa53WhlEmXnoiWbj65gJo25zTayOmNRLikGea/BAclNgT7vSP1tT1gMcJk02cp6CrsM6NWGDZguuTnKfed7fyNSxsrQQddMCa7Vx6sqFQn4+PIR+UzLt7ucektIpqiJwYTkRNXg2Y2EKf8eqkuH2617Wohp5M8EXDKy2dkrHRVzylyXA+4Q+Gn3iLqUEIBHdEUIp7PJr4wJFsqHadUKu9ESvmegwmDbaTpEkrKNKHvqhdLqtSm451K/asFGc+RvrGCF8UHaA8qHjIhPY6TGV7FiF1EhD4EcCJqEhjxjKfnsKRc+h958nhlhwP/lmswmdEs5mzlOOUl32Z8JoeHQl8n7Laz4qMx7BYeImmFE49sTn2DE+pMTV/noAsh3e63bnsAI3NquZEo5L6Z7Q0xLv74peKkS+ZM+4Ulsx2VuWAZlEBuMY5f4vgYmVx0qcUYuD+Vuh1JgNbeYdpTmvgE5QacRPE4iiOC7wo9TocK8hgz78
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(376002)(39860400002)(366004)(136003)(451199018)(33656002)(7696005)(71200400001)(8676002)(478600001)(82960400001)(316002)(6506007)(53546011)(66946007)(5660300002)(2906002)(76116006)(6916009)(64756008)(41300700001)(66446008)(66476007)(66556008)(52536014)(8936002)(26005)(38100700002)(122000001)(55016003)(38070700005)(9686003)(186003)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yNTq1HRaGV817I+2cDWHt79XJG/cLVmaZ8Z5NgPRXsttLaYx6YtSkyBPKQ+0?=
 =?us-ascii?Q?20TnJ2djZQfVZ6xAsFotgGo1KCDyu95Q0Y2WxwetKj20XLSEpivPb65lBzGT?=
 =?us-ascii?Q?nppJzcSv2DtDTrFywGNS1xwAgN3xLI5AlP1eH3QJUy54ddDK3c5pf5ZBuMbV?=
 =?us-ascii?Q?aZfZ3sBI94JfVrbWS+TjQZngSlM3G4cQT8l6V878A9Fhex3UkaeOCbeAcrDM?=
 =?us-ascii?Q?uOmstkR9JQwXtdWiVAupoL4jkkBkl7bbDF5ttItmqbVdLM+riaH3siwwjA6M?=
 =?us-ascii?Q?Z1gqhGv71Rvvj0UGsu+nvD5csRWZ8zs3MQKJMPLhucFlKxLl/FxZzAxhXgY0?=
 =?us-ascii?Q?7WWHzflMhtldAx4ZkdhgA5PtHaad3vFN7nxR2XMculg3lB4cNVsO6N2Bip8l?=
 =?us-ascii?Q?V9muGWbmGkIJ2ufoqSIu+U4wN49sPZhuBl3IStp2YxAb/mBxFozaNj/qKPpc?=
 =?us-ascii?Q?fr0Pjplio6hpkENDr4IVXWpdYv0pKXx0Sc/UWM8ExUkJmsF1mOM374MvAHm4?=
 =?us-ascii?Q?fZvJ1mqPbtdwDFOir6zv7VmCCciKP+OQNukJw69emuWe4meytjghlgc+8/Ep?=
 =?us-ascii?Q?A2XcffcA3Gryw68ULX5ReEujvj0Dk5tovzRH4gzcweX/Ps26vlb2ksiZ4KR5?=
 =?us-ascii?Q?yrpEK4OUJx7YbRZNtOY0TqHH82rVNk5vxMN6Z97ZZqE+lBoC9Gg+nR8GskRk?=
 =?us-ascii?Q?ZgoQqAWHjHmgIUI2/TGsyfDXCiaHFZ7fRijnxpzAg1Z+7qOD4Twe3Lm+HbKM?=
 =?us-ascii?Q?nuFD6EKl9S+2HV7B1twU1IqrTSjopUY3/FOYzqauEKsrPoD4NG7uH5Shcuim?=
 =?us-ascii?Q?8R3VS1XY9vUfc3jHalwT0SULxwha1Ey7ySYRt9Osr0IjvBwuIcJUiWJX3BdZ?=
 =?us-ascii?Q?krADJNyjcEJjiOeVc4vHGapxLv2MeGZzT0m7D4cyzL7jLkOWuNch971Kepbb?=
 =?us-ascii?Q?mMBULfRoNhVhllBRwVXznRyHgyjik2L/bFib2efKAa0uIEjLNjPfvImPNLu4?=
 =?us-ascii?Q?CMcYEJrfDuXulGxOgPaEaznrOgzRudOir011g2Wx5HXzbTczmhG4IYnOdWYd?=
 =?us-ascii?Q?NtM+av1djBUifac4MPC1JHqmvLcBNy/DNtUERd7gvyKTHUzh5Ra3YK3Hy0nO?=
 =?us-ascii?Q?KoG7yWgsyENp01J6ltU9tD8oDH8j92eXino0z+t/J/Qk9BLYfiqY1d636B2d?=
 =?us-ascii?Q?oqv5kiKM5WWof8nC3S8HuTdlIRrd5aZXp1V0AwR1X+vpFCKxp7UNW81Ds2L8?=
 =?us-ascii?Q?65j8kp3u10vhY9Z/+zc16Kustr+7s+Uq9B6F5z/E4UZxLns3xD9qna7VZGB6?=
 =?us-ascii?Q?Y4E55q5ohShW64gXRtNnKq6pNa5xEFZ0AQDHOIdLeiZ/EZU4nA+nrRV4xjlz?=
 =?us-ascii?Q?ADCShzVvCcvnJ8WnwjKVndn3bDOdlHtkJP+91PUv3CITV/goRvy8ZDa/fXDp?=
 =?us-ascii?Q?9pgpzfBC1/X5PVGidHg87Kch+qPrpa5wZgQvZLQ4SuM6yOFXbXfBp2r9iz2S?=
 =?us-ascii?Q?UbIre9jzLP4cfiZdqqHTVtlAH/BdLHLLieY+BGhmEapY6Lub51pSnHsdSTBC?=
 =?us-ascii?Q?yq2gpHwE/2098FZBx8PTcA8RIPjgJhXA97X8xmr+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 215fb84f-e83b-4d04-a2f3-08db004bc175
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 09:49:17.0847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +fmGRaqaIGj2VZdHPy+fY5HWHbE8msj/59bEIFPiGP2JfVXXwKyjYMAW0Udg3CD7V6piYpHVbK4Rt3NNjWzviQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6058
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674812964; x=1706348964;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WEIgE98n8kakJLPeCTHilhGKuBIBiocAC5C1GqxbFSw=;
 b=XuU7Xjn9BDT9NtCv7CtK0B9kiE0i9Cxs2Kf7Rg7Dlz6pH2AmqmtgvnFS
 W8IxzHiwA1A5JM5z2sc1IYcppv4cc0Km899RPOSanAxkxEanNcjSLT6nU
 ZyUR4Fr2QLGb6rdSstbOfZKTyVCqxTbeXii1HIWdaKH4AZKRzXY33TsKS
 ps1Fgqmsp/EawLBts0YNU6iAK79Mu+MUIlqXJhNH0F1JYwAzCZIMx/+SO
 vozLgNFqmiF/Ci4eVBYKopRfKvtSmoXqg6xBOBg2Fnxs+BQR5oVGgv0li
 /6pWHBqJDUGROYVfxEwbOlkIt73H5NVfBL40z3X9cE/+a90z8aeyaHReq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XuU7Xjn9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 13/13] ice: remove
 unnecessary virtchnl_ether_addr struct use
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
> Jacob Keller
> Sent: czwartek, 19 stycznia 2023 02:17
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 13/13] ice: remove unnecessary
> virtchnl_ether_addr struct use
> 
> The dev_lan_addr and hw_lan_addr members of ice_vf are used only to
> store the MAC address for the VF. They are defined using
> virtchnl_ether_addr, but only the .addr sub-member is actually used. Drop
> the use of virtchnl_ether_addr and just use a u8 array of length [ETH_ALEN].
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1.
> 
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  | 18 +++++++-------
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 16 ++++++-------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  8 +++----
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 24 +++++++++----------
>  5 files changed, 35 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index b86d173a20af..f6dd3f8fd936 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
