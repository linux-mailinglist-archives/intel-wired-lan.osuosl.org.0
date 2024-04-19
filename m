Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E441C8AB19C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 17:19:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0267241A3D;
	Fri, 19 Apr 2024 15:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ua45wtyKBl8K; Fri, 19 Apr 2024 15:19:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CB5541A3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713539964;
	bh=FxceYbh0vQKgYA78/tipTmeNJ5Llxz+Gors84Iw0Tdw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KzfxM9BAqdq6cPsIgdD4F2eTFT80f7ePWFfX/K9t/DclxRxg+MFGAOhht4wxdmToq
	 nhS9lVYFgqIPcpK6R6IwR2q8pHblUwFZr5fiFXhnWY8TyNYgnhNXAaRdtW5zj8VUh/
	 LcTSKkEuDXws9Tq02LF+omsT4/ZwDLB8VD8KEHtqaXA06BdKL92fAFEPrmZDhd3WL8
	 QkP196kJ3Bvtm7uLviP4KATklZ9XilD7iAV5RPh6Rln95SAwWL7Dfm2SF/wMyVmda+
	 EbQ9PUnaCaVoAFnCcFe4WRvXBcT1CP7WiNrmAwt+DasRaRQpYBJylItmuoA5HCBXJq
	 lPwbM0cWxOS/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CB5541A3F;
	Fri, 19 Apr 2024 15:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C992A1BF307
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 06:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE3AA409F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 06:51:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rmd5OtfJuvmn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 06:51:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=minerix.bhange@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A160A409E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A160A409E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A160A409E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 06:51:38 +0000 (UTC)
X-CSE-ConnectionGUID: WWFMndz6TmOlaf638Aa+eA==
X-CSE-MsgGUID: H40UAlE6QcCi9iT9CR+4xA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8967211"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8967211"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 23:51:38 -0700
X-CSE-ConnectionGUID: ET5DzL5ySRKnTD0mC0adIw==
X-CSE-MsgGUID: 8u/jDfnsTaSqtoewwEyZ9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23750325"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 23:51:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 23:51:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 23:51:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 23:51:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EO7tMeQQzQszSe2r7V+XwDNosms2M+2KxlwQoNiIqGC8UqWlbLIDWJZ3KfZARMIVzCN4EyumR67jI/eXYJHkCm3yMPvs33tYlFzichnVpI7ox/NgcW4mqP31nsWN2Avo5JybQGx3psUZapzqd6lgWY2Ejepx5UXxnhRO7j2ZfinGx1WbiTpuAIJw/XGppQTQBdlyxJ8Fh+l3AXOysKmaa5w3OQw79ARuG8+9Ylu63UhOsPRs/KRnRSgZtiNKRn3qEM1MaZXR9Y6g18nUyhrpnmX8kOA5XConJqfHcdDse+9wRUJlHTZJyIMcSbTfYprN2VVXA6GJbNYG+3SYx0mSTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FxceYbh0vQKgYA78/tipTmeNJ5Llxz+Gors84Iw0Tdw=;
 b=ek5RY7b1En7UdKJzzbLGLe6Z5QcsWac3LFkZCjHjpQD0vsF+Idvj4f507dvhVHSwOl4neQeeW4MWAErg2tintTTyqdA56+MtFsRW+Wl5XYK8PdGiSVgMMDSrIVJ2yeGmqpU6mluYF+z4Vc9z/sCVv8sO5uwpuCezZT5ezd/XvkClQzkYlpnU+fYuczJoAC5l3UO9k7e7NX0/OOd/xIWZO9SnC2iu/U8W3ck0VNtFEPbAeoczTpTxZG2vUSm4KgGFwRGY/s4tc/h3yYnz68cmvSiAuOVQ1SuoGiJ5wKOHoLRqJ6jFyEVb5odlW/QEuHVwjM/9w50rHqFl8Qm9WerOdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23)
 by CH3PR11MB7895.namprd11.prod.outlook.com (2603:10b6:610:12f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.31; Fri, 19 Apr
 2024 06:51:35 +0000
Received: from DM6PR11MB4577.namprd11.prod.outlook.com
 ([fe80::dc27:d40d:21b1:786]) by DM6PR11MB4577.namprd11.prod.outlook.com
 ([fe80::dc27:d40d:21b1:786%4]) with mapi id 15.20.7472.044; Fri, 19 Apr 2024
 06:51:35 +0000
From: "Bhange, MineriX" <minerix.bhange@intel.com>
To: "Mogilappagari, Sudheer" <sudheer.mogilappagari@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] iavf: Fix TC config comparison
 with existing adapter TC config
Thread-Index: AQHahFLARLyhfTaNdEGjfq2H+v5hDbFvQdJQ
Date: Fri, 19 Apr 2024 06:51:35 +0000
Message-ID: <DM6PR11MB4577202AAECF43228485B5D08A0D2@DM6PR11MB4577.namprd11.prod.outlook.com>
References: <20240401163115.3702392-1-sudheer.mogilappagari@intel.com>
In-Reply-To: <20240401163115.3702392-1-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4577:EE_|CH3PR11MB7895:EE_
x-ms-office365-filtering-correlation-id: fef87b9b-e59d-470e-09f1-08dc603d277e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bS4qCm5KGYeTxV2VKYnNAFqI2pPE8/qJH24V1WUAsPV4akGFZDSKIvPpeo6loSZJLCu/i5jZQrSF0telQDcBfCZN0wvTWptr8CYrydvT4MiVfVi9YSxYNsH/ARjSMKl+Bu16PyKBpYDl6+MaBSQINUKGvEAm91FOzidaOpB6QRV6eUa8la/2Vx0eGDHYSeb/padHXSwrpSB/muE+DM5xA17IexNEsoZhaZKgdmRO4oxN/b95sd0JyscTaGOVw6q45vbmFnzkaa20vpP1b0VCRPUpNWGLJXWXr2i07QHIn/BN0YsNYud2bFuYZj/wuD4OTFVMjRcM8pUHSqam+hQa8yQDLmxNKl8sVhOSXSW+j1bAoaFb2VEKTiVbOAG6+1aewx6mBfU/SQnu24rdMipJIaIyuPfKidKy4VUELRA3utbc1DJCb8pIyhjFcXSqwJEfKiVc9bRxgRFUd2uCNkaLEqDy+7LZKaSfFoKfGu3dcMdewNSXT+J6ziLdvJhGunrD8vTnTBssr8Cjlmk0BKhfapSQ9Z4NZnBiekngl0SFUN5ENzJJVhnLuwy4tw8tiSfXg8z0JTSZPpXlPfdQZSCu2frNNBvMsx9a9o/pnT9UGlWvmSMqqqwl0hiBXti7BdApiRqL4vcKkvXZzjxaE1+wlvvBDpFDGFtK7ic6/6kqxtR/IZrjRphdEcrF4r4umQ5dQj8jU88ml8Ku745AAuVEfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4577.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eD9oFIoH+kkfJw5bKZGuTGNiAlSyV+VUMe1T6PV5fe++1PvDMH2TKmSTXRrL?=
 =?us-ascii?Q?0wG0u0mpKs5pLzhtbICSQ/ntG3Ei289+mPm9iiRmgVKyYZXKO3xGcG/lDIbE?=
 =?us-ascii?Q?X7QSeX8wjGb2K9wtUJF2gGr/6Pcl2JoM4Io2fINgrcEHKwXfgsyMf+g4eBCu?=
 =?us-ascii?Q?KM7xg0agEhkcBtjoa5MqF84G6goPTWlNrIielLxmebOFfdrBnMOY0IBjUl9i?=
 =?us-ascii?Q?o8qpfyHAMaIWXg69RpcChjhLHbfws799ykAuR2w6UtcsQr9PPwW8AK4T7kC5?=
 =?us-ascii?Q?EyPWW+bpfEkeRUxchcVa/LV/7c6lU1mtITtwKvTG+j1r6GMgltKMM2v+ynfU?=
 =?us-ascii?Q?FeOV9Bl8cQ3dNuyooZHVETgwustquE/Oue9ziQHr9PV+u4Mo5fubMb9itelJ?=
 =?us-ascii?Q?r99gKpjV02XrrwYnHDenoVv2MIMoxjITmVTFZHhpQWmkGbUwrR4bhVYUQVRw?=
 =?us-ascii?Q?MWXAIHu/AObTAo+JMdOUM+4HUH8ldmwdO23ZQklApQLAizg8jqAy2K++EK7R?=
 =?us-ascii?Q?eA03KvaEXQ9I8uPJ1uof/z7QiSEBUvWVLeNZdwB5mhxg2zoaSzKdkmuLX3kR?=
 =?us-ascii?Q?mQYCDhS9Rak/FJA3KTPQDdnD8IF++hsbAM4YBSVDB7NgqpzfE3qj+UiwCjkL?=
 =?us-ascii?Q?xiRCDJcgYPrUIrR5YmLjnvyARViRt8uSjA6GwTl41kQg2F7FJVTgBTIquAZ5?=
 =?us-ascii?Q?2CS3EL0CMWRHfRGxlq3jEPdt4ZSZXGoocLW8ZvEJetzKoey5RX2Qtqycdxnr?=
 =?us-ascii?Q?Q5rJ3ZQAhpGi/w7UcxCiHU8hNMCqCB86XDsT2PCYYX/5tnDYEzMjapWPW0gS?=
 =?us-ascii?Q?sbhrHSYSMhRU4GKR2VROS5pxkLzpHf74bUBhkhhZDgNG27tBU24ikJT4oiqb?=
 =?us-ascii?Q?zZTkg0yGzV8m7kkZIzOVqfuzW41hryv5egm7H0ndfOblA1Mi8xYPaz4pomj2?=
 =?us-ascii?Q?lXZeA8iH2/LO1Fciq1P6V+9ALOn3BjXN8o2/tmTMI3QeP2F4MPPs6Dmno9Wc?=
 =?us-ascii?Q?cZfn6eKTpYR1z0yylBFwjInd71gT/vKun09bjmtzQAfKQWePlv0poz/TJzSl?=
 =?us-ascii?Q?u5YRmLwGWwPrialYfLwkqqmt67lP9KBnYt6GjwUnR5ndJBojWlkDgjD4JBaa?=
 =?us-ascii?Q?yZZENeLmecB8MobJeTF0efc3/DYbeSITWvD0BEfXUYsUsoZNLqHvTrSNIDpi?=
 =?us-ascii?Q?zkL1V8eyTCO+9ICHjyFoGmtCSHd9WbktovLxechilJ9CX1qSuuEWC6WDpsFH?=
 =?us-ascii?Q?+06HXZGpQMOBII7+XaJqst20c0kD24cvKUElIrEjzbSyWYcLkv42fgSvYgsD?=
 =?us-ascii?Q?bP+Av2Bhtl9LTV7bynZWINmdlaEfr2v7eZUIy6culffRkG9DgGFzn1j1td+F?=
 =?us-ascii?Q?l5YseW9RNJa1ehMLUfYXiICLIWgK0IP8B2anbjv1dgljsjKzmZIRqGFgxETq?=
 =?us-ascii?Q?nx3J+lh2v9wbiSXqh9hCbfsjAGjC9aewTupdXywMWf/xRTqIZ9uI4C345sX7?=
 =?us-ascii?Q?p4nogQ+KY6BRVa6l5YV9zE2ezeaHKrfSuK3xboex0LdiV+Vnwic6qHI/ELwT?=
 =?us-ascii?Q?abkmigwAShjjr7/Kqjq5fUPVuEAlxGRQl2wS1jiv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4577.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fef87b9b-e59d-470e-09f1-08dc603d277e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 06:51:35.1404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qeSS79pFEUcF3qQ71wZmGqYb6TWq7BFkoy7/hW+oEjMe8+5sobHBFafFd0nzFlnILAZru7HCCvMa9zO5/PkZ5tfU19sFl5WH6+bo4QA4Y7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7895
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 19 Apr 2024 15:19:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713509499; x=1745045499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j3DXFv9RQDh/0gzfVdGc3MoZLg85hZF+Azd9ccb4py8=;
 b=EpzR/gfbl+xWZTypScCLl2dmKXxxTqoaBA7N/RIJSQ+1DTzfjgk91Tep
 IxVGXjkIwiVa5eOyLVFYaegJvUSfUgYlohOrWjt1h1TbNdO1DcM2ScwlT
 oDxwBtFLCGKuqK7qmJaP1781jDdl9KOJy1aKvFRdG+TrsclWyGSQQCXTX
 mcBxSL6RyKZtL16r6I9K4uv4fyDmYaslilie2Dkl1oROcPTJ9aQLi356c
 A6w5JEMEGNfTTkiUcgCqGBG46eLv5WCvw2NAlZuM3mGdVRIsBSww+ugzS
 ORG6IpAugky6KSbmGGSvsymoxq7QpxlE8/22/MvliFYdrdvqpnpcJkc6G
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EpzR/gfb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: Fix TC config
 comparison with existing adapter TC config
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
Cc: "P, Bindushree" <bindushree.p@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Pandey, Atul" <atul.pandey@intel.com>,
 "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>, "Rout,
 ChandanX" <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mogilappagari, Sudheer
> Sent: Monday, April 1, 2024 10:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: Fix TC config comparison=
 with
> existing adapter TC config
>=20
> Same number of TCs doesn't imply that underlying TC configs are same. The
> config could be different due to difference in number of queues in each T=
C.
> Add utility function to determine if TC configs are same.
>=20
> Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 29 ++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
>=20

Tested-by: Mineri Bhange <minerix.bhange@intel.com> (A Contingent Worker at=
 Intel)
