Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A01667E5C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 13:52:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5CE541D00;
	Fri, 27 Jan 2023 12:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5CE541D00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674823961;
	bh=Hz2fzShjB5z9i6q65JHCx5w8PttVI3J+PsmEHbq+XzM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=85jKGJrJpc3WDrj6bWjlvGhnUUE5AgatnboynNzuP3Eaq1J0o1MJY2uy+TUmpQ739
	 SBxW+dvr0O60N67hv0/2iCgbNF+bVC+C8yWkd2atC6265436csokI4jW0LSGtHS1/D
	 4nf5hn1sAOhoPekoW6GwAS5hBEeWl3OuIuflN3HulZU+kqtd5PG0QoaUIS5dlPXhOf
	 8EjCytvuFcK5V23pL3jJjtIQSP+bxEjj3cGS78ntbE1XbKpDZ9TIGLPA/PeQ+X/d5Q
	 roPBvp8jFdWKnAVEDyfN6SGO07gc/wea9W+WCIOB2uyhbFsTNNU61hwtxBVJPPAkqU
	 vU754BU1BcYFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zkHI-b95u_KT; Fri, 27 Jan 2023 12:52:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7278741B76;
	Fri, 27 Jan 2023 12:52:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7278741B76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC7D81BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 935F841B76
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 935F841B76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yL_dI3HjBUCl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 12:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9348D419CB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9348D419CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:52:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="389454259"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="389454259"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 04:52:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="613180268"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="613180268"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 27 Jan 2023 04:52:32 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:52:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:52:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 04:52:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 04:52:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zxir0038WPXu8Ssp63kvncESBaSeNn8SJrmBeodcra3dhUcm6z/EfQppl11NfkRoIsY2L+gtLfp16KQOAIDg0V+l2qAy3BD4mIbS+byinwb3sCCWocZ1xZNshNezWxiIoyLga8bOfb7U2G06ibNhqjxMZNm7u6IqqcmDwr9/h4/myOcokDt4V+0lxPXvZ5mp3H1P3QKJVarSbqWKON2xFb6xj5z7ImoGadMst2RooS0fG4KpiQEucq7fJaQJQmL7Gr+qLBhron1hgq/7zbEVrVv2z7B3y9L+KreUOLiyj4f+FDGXcxoU6I5qrostvmVqbbQCoPNITKhfB2qWIe1C+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l4KUgrj1EAu6dZGnXb3h2shr3MN2SFsnYbV+3/WABqQ=;
 b=PI13zghvVN5mIPNw0HsAEAZnQ1nMyUJUjaIY++LpSP1GQJkyb5XgRrYdcyaFmOcwRAyxe28Jka7arAszgybGZMR6TV2eci7xAJVw5mbsSDh7nx/Rn0xR2WU6aeywyt7WQ0/uSD3Uhb0hdekwn/z7lLN1dq3m6Gjoq42McABcW2FnAdb3uqF5oYbB36us5zGaUqQBr3uePDSE9TI4TZuLjzzO4rrYljRaHhaiHQXUXUa0rxZbmRMjvG6zvv0kwlMp4MLnqHRz5FvEoBp7iX2jdS456gVki9bVxzaMAopNLimVUlCd3G/0xsRSRZmGz968B6bchbjJKz/bI3Ost7pHJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Fri, 27 Jan
 2023 12:52:29 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 12:52:28 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 3/5] ice: add ability to
 query/set FW log level and resolution
Thread-Index: AQHZMEFjZ/x96R7Q40m7OH30gT+Ew66yO8LQ
Date: Fri, 27 Jan 2023 12:52:28 +0000
Message-ID: <BYAPR11MB3367C3B34F80380BAB5AA10DFCCC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230124221428.114-1-paul.m.stillwell.jr@intel.com>
 <20230124221428.114-4-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230124221428.114-4-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6300:EE_
x-ms-office365-filtering-correlation-id: b0d5a1fe-dd74-43c9-cd8a-08db0065590c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BdiKXC7bkiRncgLykORfO+Vk5i8ZS/GXZ6zAtIRnzkskLj0HxUgIzR6e0bIUnW3k/z4r2j/4FPnX8I95Cys+BrcHGS57XmUKM/G84FihV+k3hnKR3Rs4qu2Vi1oPyW7xsqNwCT9WdQ5FtJu6XrDD16iZaiT8GCCqMYGaeX5rwt0S+lvhN5WG7yNtybLTSKfDibxIzqGuYGIU/eay56YCqjWXDI3FxFi70NtDND7rAcnlFrI/N5ApRaFl5naeImkHtPlgDhjQoAD9Sw633a1F71XqKP4tJLJB3WpFoRLLQeZ00t9dKP2+1hPZ906G6b1zGsba8esk74g3T8McZ/lI6xtEO+tjrhtlCJCBRT4DzV9+DH3LIGXVOi4NINP0HAxCmJIf6UyIHiBa3PbU3jkBMmiSpNZIIL4O/WoTBHal0Kj1n+0Ju9FlFXb53AIyKyQMSS5EgJQQ+o1LUVVL8Ys7lAXq3ApCoUAy8AoAn6LJlzpwBMPZOnyvWshAXKsXRTxO03lsaCTRxULJ7pWPRUSyD+da2a/VRPEMDztgfbDFMi40pPPGQ7/wz9Z749FFg8GbkS3cx5MhMej2gjzODjI1IyyhlCqCniyCzBM7IN96IdL1Lk5hWxcoBpf6T7oizKnANeELLN3v4fS49HGxl0lapPb+hfJ1xHwKICXUJ9gr7Q34Sr/gUTCi5khkyyc7dJqAMo5uE1KgLcflLWmBXGoFyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199018)(66446008)(5660300002)(2906002)(66556008)(64756008)(52536014)(186003)(8676002)(66476007)(8936002)(76116006)(66946007)(41300700001)(7696005)(83380400001)(478600001)(71200400001)(6506007)(53546011)(9686003)(316002)(26005)(38100700002)(122000001)(82960400001)(110136005)(38070700005)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OPC2JlNtGKxu+A8X9gJm5DPr1KqysDRpgZaXdxsfUMVLwC22bjJAa8ywwGUL?=
 =?us-ascii?Q?UytFbD3oX9G5ZzSFSI08+g7t3fGVxKSxqvlhNZYRy1xGLWMkbvAmfGt+mCox?=
 =?us-ascii?Q?bboWc+dES4vkz8fU1wBOaRdCDEzw0aAZ9fNU4eIPPOXmu3upKhm5FDlzqkoe?=
 =?us-ascii?Q?S1LQ+EUNBY7JqxW5dQC7NM+6wO8pS6zl1PWrdtb8DgCLJE/gC4c7YYW6L9yR?=
 =?us-ascii?Q?UUsy13MecOFlrrJiwUGxN7lkeX0Q/ivYFYS6klp/4X0/lLFos2hfqR33/djx?=
 =?us-ascii?Q?wlJJoRc1Nn++IorlIv3fZBYAVq2073ELRZN1EZGJObf07+kRO4XSCc3seF7h?=
 =?us-ascii?Q?5rxJbCXz4s1zikI95uVLLyvn+6PnoWQFdPtGz+Vg/OML5sQTXJto/GSVxH56?=
 =?us-ascii?Q?TY0IjaUph1vNqXFFKhFCGwS9q+2U2/ATPwqWbSajF12DiqVQEH8Zc31N3Fl0?=
 =?us-ascii?Q?rFUhNVpKVEi70BqROn55k38SoiMwmMWpg3Q1cfhLQ1rZtoGwZVxj1m3vzNf4?=
 =?us-ascii?Q?B0MnXjIMlsS4yd/Y0hsCJO/qlvl0/4gsOFzeGIaDAO5/6I0L6HS8RNniAP65?=
 =?us-ascii?Q?orWidDshxrlIM5TyNVSRsD3+WFLBVjS2Q6uMPIVOFbnlad4MMZBbD5NlorD1?=
 =?us-ascii?Q?nZlyui9z3x847X2smOHGOiv8C0psaUl77jnMG3EZFiogYtLta3qoCdTg9dZ7?=
 =?us-ascii?Q?y5zuJwH1fjPWl8lUcIWxgTzE53n+C8bs9mKtCdRVs8DlK5XnedLCzX369/ih?=
 =?us-ascii?Q?R+Ey23mlG/WTWTsOLcDtMWd/2mAfO86BlVWF5Nm33md0VNnlTak+KPDkEzCT?=
 =?us-ascii?Q?wU0UhfvuxHhH3OOh9MgjCe+7IHQU2JezkC7fUELLB0JmB2UzuJEU8lYXmUhn?=
 =?us-ascii?Q?ecuqW3wW7FxaSnf7FdXQO6+CDe6B9odJTjuEooBORGtFSN8id0ctxgcFyzG5?=
 =?us-ascii?Q?wE39P4XW0yIhfOkvuwukvdvhch1fTPDkT1L7MeAOuKUYiEwTtbqqEXEOCLFW?=
 =?us-ascii?Q?RfA4iggyowP3glVJJwNv38TjzxNjB41w6MTdmHQ2sQITVggmLVEQ9PWuopqn?=
 =?us-ascii?Q?s/TNsfg+0m0vzKlBFkAJx4XJTOBHa3n84Wu1j3aIbTCPmjb2KY5yKuntsZyh?=
 =?us-ascii?Q?P3GVc2XOwZhDkpULDnBIMvhPmHJ2HkXlivjrEkhw61sk4juvEpDJFzXcjt4L?=
 =?us-ascii?Q?rEhHYIDDeYe/3i1hn7MaZj4sWN37nwa5f3Xrx39dN0/1fAR8DZ/eQenomll9?=
 =?us-ascii?Q?xM8vckt9DXpFCwyEgrKPgZcnH58IiSIMmiq0wVRAtglfzYSUjFj5H01NZJ1u?=
 =?us-ascii?Q?cxjvqDL2KYMErNIzOz2zPZBrOIZrAeR0MvkSxwQAlew6WyeABfgKMWIBRLJt?=
 =?us-ascii?Q?dRlAqMMsXaaak1TrDpAAzOANuE0SHwIpp7c1VVCWLlyTQHTJeL3AIiXu/NyO?=
 =?us-ascii?Q?lVmUbm8sJ5sDOIcGjXv+CQDGEGrHbTRTRvkQaktH77rxqwH2HzT/pzIoWdLx?=
 =?us-ascii?Q?sqi44Ee09+RQM5IZZH7ewaenVcteQBu7SA1FK7aEsxLeKsB3OtuA/F+teLGe?=
 =?us-ascii?Q?KY88i6xRkfTGpNZTSV5US03DvICSCClUUdeCVe1D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0d5a1fe-dd74-43c9-cd8a-08db0065590c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 12:52:28.8609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L0ldLJ0hantwoTFJh10diR8tGW1QxEIJLKRrpU268n7tfyzoVNJ8IegDDevfqvG5sQEhz65HU/y4/Qv5HTn5YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674823953; x=1706359953;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RWQYVH8am2fJKLut18PD88iVebQ9OII+PIXCv3Po2Ss=;
 b=Jv0/JJmjnbNJXkUgLrxjlsjHIAy3JWxQt31wIx6BvnFcRWOxt5kT1BG5
 JnxjZIqe3JjR8oilUKNqvJEY9Nc+9u6A3IRCQMx95ydBCML7fUGQoJBKH
 IOVgH2EJC+g+YY5KfnoDVHVzbN3FBEzS3Xwt5eAgTiaPgH0Ycrd/fmpIP
 ofM7eHnC7yJFBkQRYesL5dUSmO4azPY0XaZZ7XG4nDkZQQovXVql95Akj
 m9vXo4K8OUcBWhZPlMKSi5VoTSovm22RyMdkxZSKsuQUnBQ1DJBK+81T/
 dAUl8UleNlwC/Nan0FqQ6qjy541br1AuM5kIWgZuZI+G9obRM6jP/1mbP
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jv0/JJmj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 3/5] ice: add ability to
 query/set FW log level and resolution
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
> Paul M Stillwell Jr
> Sent: Wednesday, January 25, 2023 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v8 3/5] ice: add ability to
> query/set FW log level and resolution
> 
> The E8xx has the ability to change the FW log level and the granularity at
> which the logs get output. Enable the ability to see what the current values
> are and to change them.
> 
> The following devlink commands are now supported:
> 
> devlink dev param set <pci dev> name fwlog_enabled value <true/false>
> cmode runtime devlink dev param set <pci dev> name fwlog_level value <0-
> 4> cmode runtime devlink dev param set <pci dev> name fwlog_resolution
> value <1-128> cmode runtime
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 131 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 260 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 395 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
