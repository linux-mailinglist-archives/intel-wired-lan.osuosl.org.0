Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC7586EE9E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:37:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18DF541FB7;
	Sat,  2 Mar 2024 04:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pjtnWfqNKIHO; Sat,  2 Mar 2024 04:37:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C7B741FB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354270;
	bh=0P2FhU/3MHgS/WB7XlFoNR/dS6wms3MREQJwkL91dXo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sOWX8lJ4iDLRZxF0LUeiSI5eTBwlPeh3ye+N17nH9fHRSBiL1xZiUUmsw88SY8fhM
	 ayq+FgLbY6msjvPe362qxKJi0VhrrHwqJtwg9K/hZ37N6uxinvRua5yM+plDeFpBew
	 vvJjmxJeRdok2c74bmxLo6tHMpLPV7O5GzwVT/3ajYbJBeP5VS3kuAC38VKIdyium3
	 ROVOWkVtAk1D+eIA05O9ZksTp2mYup+JeQeqTL0wvV7U3+J4meTJQpW2P2yt+jfz74
	 Fhh3lfknw+QlbtKQUt+ee5TAlDc1LGqvUgtg07NG9jFB50hNUlkehYft2Gh7YENngG
	 K/OiIxidN/zNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C7B741FB1;
	Sat,  2 Mar 2024 04:37:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1255B1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD92C610D8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QE8PGkyCGWyZ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:37:41 +0000 (UTC)
X-Greylist: delayed 326 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 02 Mar 2024 04:37:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BFB86109A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BFB86109A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BFB86109A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:37:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3834261"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="3834261"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:37:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="8343168"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:37:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:37:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:37:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:37:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:37:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pp7T/mUTza9vSIopt6xIlOdBhFAENvppiPLqsN/dPJyx+uKco9hMdm36iUWT2tXr0RULJHRD+oWTU0Dn6CgespGBSbeoCKt96MY5MWfdIDcO5BV99pLg51bamb1Dj07hFMh0GksOiD1f27dSFb9a8W5GVyfjbfBvs24hMVeu/ZtWMLUX859xGXSu1GcTxJeLpacKHZopNED/334uCgnj9zqdIxsDWmiqNhNUMFncvEQrNCTzHMUTOxuuTRCkoFugi80EGcYxQC/hmQLsbgoXWMZh5fcKph88SWO2TstdIDf9nRMdiYiY/07CrwkeuDku8Bgvc9cwQgswmKprDoJaOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0P2FhU/3MHgS/WB7XlFoNR/dS6wms3MREQJwkL91dXo=;
 b=ZCt6N1WVln0pEZA8gqQZE+FilNaVkqWXA7lvEH8FFOX2PXikNHeaAWvChjnQABcnwAFpy5DfP+FD44FFlzz4SRgsoBGEoRjTFEkfXB6/OP8OW9hSmNnBKV7oSXam4eiDH40EAH/UpU732+VZLvD09kYOtzIE78thKCe2RKauACP1SGb+nbGwPfhNUCK8FK5YUZrqP5XKDsaHW9s1NRhqF3p9ZKdXb0JPtYoKN8TAvy0GEWcupeKVSBtcq5ZIHMeouHQZNOau6Ynm+1Kw0sPWMT7GpjCLZI5Ehrk/R7ZKRbNCeV+1aehbrzKW3nrfPC02bpvKflExW1sUUL058V0nkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:37:37 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:37:37 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v6 05/11 iwl-next] idpf: refactor remaining virtchnl
 messages
Thread-Index: AQHaZcI4CmJvodPTSE+sRnCNUR1gN7Ej6vzQ
Date: Sat, 2 Mar 2024 04:37:37 +0000
Message-ID: <MW4PR11MB59114402CC871F09A090C581BA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-6-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-6-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: 87e9d97d-90fe-40ad-3c78-08dc3a727c94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NB9CWfdgyR8jel7NN+228FEr7yQBAffDjnEEEVCUbEOvMrTk2NdgwRJwa9IW5CtYnTeeGWZIXkTLswx+udtCtATqmRuYiP83dMq/EUMu+6ApElGfxYJ+NWlvqDaD7ioyMuwE0z49Y/NzuAL5vcQ53lVHvjOE8Ipn9T/K7pWLCntb+vKS1LCSMJu8QILuiCvqfW5XuuwBHRfBBw9BDGkvj4KvP+jKfp8Dr9PWDBAkRIYd2tlmNr/ueA8vU/W9lMY3zv5n04ZwIAeDPsg8ln3M5n3tjWVYRaa5ANjukUMiM+Ez9MxS4N9d0Mn7xyTJVn7WhphC9Jqb8wBnxyMn+/9Ns0OktmB3vs+DLCIF0fd+o2ZZXqe75LoHHEvwZIZL7cnMTS4zvAwZAY/gPtaRDlN/4KgZe4A8zNxOitwHea0dPKnF/NfEdQDkSe1UqDQMOmHT0KFSE1Gsvtvz428rWq5tLvoUOjmmPDo8BYr1mTqeFBoQvz1BWhuTwT8lu8BGg/N2NOTH39aLvkhzU+/16Iz73WVtI744S3OUn4llEhcOyDyUne/llktRqiFHR6DPlKg6N9h5CfVxgQ3PTlhDE1EsqaBC1WLouge1e+Y0qRtTzRZpIPZyBNcFypF06m7ZvJ/zTO9p+n7gmfnLFubNSSJ2cUneXRwwTEirjblNgDh0Cjck4RjM94ES9qQ3/jY34xJdXLgt03uRvuLH/eJ8ihwQgbNhVayGFEtIGyJfdA6B3SU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ONKUZb64zDh/TyqTQMTFw/HVHJvgrvJBUDIoYDg+Q3PbSVcyH3VMLssf5HwO?=
 =?us-ascii?Q?IDISfv6jvWVBTjxYe6pwaDKnobuCqqZ4snPdc7HvYjYxb7Gm20534gwRcp9b?=
 =?us-ascii?Q?Kf5Hvzs0FqBAqtBALwIf7jpaiwC4r8Z6Pqgekcwo7V4Rs6zJZVa0r5TrVqpb?=
 =?us-ascii?Q?fnW8N/tMwDNY520HNBj6eQULsFwIndA0fhLVh8iyH6wDx/kDiO61HSng4WRu?=
 =?us-ascii?Q?aqD9/Cqh3BQRFvrposqxzi2cxGjq7JtOB5trXnHWtUUeXSWasCylNMmNQxV0?=
 =?us-ascii?Q?F3/sWRL3yM8flj09jYmDZtUtVxEb/lYkxgac3T/ANkT2x8zq8NF9XV7ys/ws?=
 =?us-ascii?Q?61dPMp6DhngTeFWZyesAfRqnM4oXeSk4LTfVAzNBRdNyodr8CuN898XpR655?=
 =?us-ascii?Q?/V76HnTBysWfEAyVo95NMo0eP/liHSbJBckPw5hz3voiVrVXPR3AGSd7FFc9?=
 =?us-ascii?Q?AhPVqAlQP45QSwdRwfRt2Z9yk8PFvNGWErNZzrBdgC9BChwhdjCEibg1ojlO?=
 =?us-ascii?Q?pFnBVkhUIpIsq3zFWV+Em/YjASdJ62tABSqRmP0fJpRbwg8M317/778eg7gD?=
 =?us-ascii?Q?uN2+mz0kcRe9YeK9ROrgoxttR1mS9pmBgwqNdrN+bAD4D8q8xZU+A61atPzZ?=
 =?us-ascii?Q?dbQ6/CcyeAwBPZhueO2cit/6fWbeI1u/IevkMJ0FMy+k/O0jrEzFSwqGoMGc?=
 =?us-ascii?Q?zA6cGzVz2RJqtYKydI6QFeK1FjIo+pLOCufsedhuZ49KD/9JYTjhrKiNXWua?=
 =?us-ascii?Q?whaxYMSRi7cEgiCPERBP4I6eiBcxmdWTPeGYIPGTuSlV0V7/yXAWL5zJj0R3?=
 =?us-ascii?Q?ZSCvXNJ2b+plSXdY46n+IkS8xGxLcZnj5Kt/s211sDm0OFO2QRydRUhkv6kj?=
 =?us-ascii?Q?tFxY++Wt04e6ZzgyWDan9DnX52ElYW+11+96/x/EiYcjR+jwtrdf8fv+J0kD?=
 =?us-ascii?Q?owiBshQVM1OWFn130gEaSsdqaztnUNLpTv3Lb3GBbuprruGeqiiVubgnf/cT?=
 =?us-ascii?Q?tUOgDglIG6esc5TUFWQZXmzyIFKhD1aF+oStwI0Qct5mVOegGG0AWjw9g3oc?=
 =?us-ascii?Q?9pl080815OtRd622MLJLp/NE8LunD3vT08LJTdGdet/S61tXAGmZq+ZoQVeI?=
 =?us-ascii?Q?+aKJyZCPE+tw6j8tNtEy+8f6wdwIG6H17nrgJguLc9HrWYw332Ny0zOP02xV?=
 =?us-ascii?Q?k27xl+Z6d5rRbU2pH6Kpu/6T5hQcIe3ksiMna9adYWclTgnMtJLRZEwJUtML?=
 =?us-ascii?Q?gEwLejBqUj2HAwMx5jtO/KaMpY4CklBpTYz3fBjqoebwWYa6C7ajaJ1ywoeR?=
 =?us-ascii?Q?3GfcYIhomB/HM83js7y8EK+TrhEs1+BqOFeKYCBCHHhY6PKN6KBvL2SOp23X?=
 =?us-ascii?Q?DpwapqY7xcq1bOlA0MHD3mfzthz7WPGbPA9DU5b4AlUkIyN/n42gUBead42B?=
 =?us-ascii?Q?arixQK/5pI0HDn3/3kxrZ1OXDSkFLGGXpYgtEXAFxKPqATtuFPONdP2+AWPK?=
 =?us-ascii?Q?dPJtclY3cgZeflMcim/hv1Vw4A22dwiPHB8K7LNjN4mK139X3zMpfehCLWKx?=
 =?us-ascii?Q?5yQDx1cC+wiTlvkTcwAzTKIuSs5hF4Jkh4gzSvOCdMvpKWHQE/wA4LFNjRPT?=
 =?us-ascii?Q?bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e9d97d-90fe-40ad-3c78-08dc3a727c94
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:37:37.0315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vGn+lLHOYwMMMmWyWo9xDcgTcHbmDWJiPshJ/3SwnYFqVhDlOUPrXaPtbsvTM3UHThZYtc+Dm1Z5XjbBwsBWjse5foK9WeBXwQG5RFmL1mc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354261; x=1740890261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kicEJmvJkg90zu1fYwdFkbtN36roKJRF8QKJLjg58jA=;
 b=OSdcqIZpUmvph6cznYppg2FNMXr5laatVFBH9Eizgl9EOi47aTyEqHUv
 gYlSLdyxwxV5v6/iRcRQTJt1ZSgRf2acZjfz+v+Gec5WJ3wE10gNsgs+7
 SrYLnvJiYn0HhKr7rUINskvvjhGrf91EZgM02cwCCCJr6XBnq3oumLMBM
 2ADBTw/AxV6ni9dMw+siS8ZSKrrKCOhGLltKaMFx0DH6vPMGuZuYZ22D7
 DC7mpV3/4ogjbXPL21vXnxtapec5728lJYGE5XFHRegk+kIgsMO6COa/A
 hWDCqBEUuNnHE2vfX6IyTx+0R2ngQWqcUn+YEqJGAEftvMXZirBkb6YKL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OSdcqIZp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 05/11 iwl-next] idpf: refactor
 remaining virtchnl messages
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alan Brady <alan.brady@intel.com>
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brady, Alan <alan.brady@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: [PATCH v6 05/11 iwl-next] idpf: refactor remaining virtchnl mess=
ages
>=20
> This takes care of RSS/SRIOV/MAC and other misc virtchnl messages. This
> again is mostly mechanical.
>=20
> In absence of an async_handler for MAC filters, this will simply
> generically report any errors from idpf_vc_xn_forward_async. This
> maintains the existing behavior. Follow up patch will add an async
> handler for MAC filters to remove bad filters from our list.
>=20
> While we're here we can also make the code much nicer by converting some
> variables to auto-variables where appropriate. This makes it cleaner and
> less prone to memory leaking.
>=20
> There's still a bit more cleanup we can do here to remove stuff that's
> not being used anymore now; follow-up patches will take care of loose
> ends.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 894 ++++++------------
>  1 file changed, 298 insertions(+), 596 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 1d1b421c33a3..0f14860efa28 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
=20

