Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 118ED92EC02
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 17:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D0FD4175A;
	Thu, 11 Jul 2024 15:53:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nih7uglUjded; Thu, 11 Jul 2024 15:53:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FD9941742
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720713197;
	bh=0ScRTDneeGAMecMwj15JqZ4D6L3dmVTkdx6Ni6vBXpU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q1arrtwTqLNSwEtdl/srIg2cfVxy60lx/zSyKRDscj2W8x9gHFOjLqwOsfDPCkkLP
	 xpzTqfhM4HKN8JBP2ls5GdVmw6CZO8lvk0e2tDiKtWWEw0SXv20x5bVOea1zlvnyds
	 MkARuQX8m7hLcJtmaBK531XlHsBfrCOQRhv/qVIQU6QBf71d4CkL1vCalb51d0u3zL
	 w/TZWRWppT2EF+t1opC3QtV03egeJW8THNERbxJdd4c/6c7FFY7CoPMW06PjD4Oo0j
	 KswHyN5L2TJmR+W5dOy1CogUAUfLNxLuKker3mSQae/tlzKH3MeEf+AQYkdtgnSupc
	 fqWRN0HPTRiIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FD9941742;
	Thu, 11 Jul 2024 15:53:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5821BF48B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 15:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B8D983FAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 15:53:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XYdJ_etmcW9a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 15:53:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 39BC280D66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39BC280D66
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39BC280D66
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 15:53:13 +0000 (UTC)
X-CSE-ConnectionGUID: t2c649EBT9u0E9cpgDFGPQ==
X-CSE-MsgGUID: I1pMD6bvSoW26/cU+qWfzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="17814466"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="17814466"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 08:53:13 -0700
X-CSE-ConnectionGUID: iSziWtuPRfSaSVk/Jb0Fkw==
X-CSE-MsgGUID: jxNLH8TwT3acq+imdjIcHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="49033235"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 08:53:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 08:53:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 08:53:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 08:53:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t5BqehgyZswTSfNMuLCVC8yj7RCWcihJLGCJh+w3jM7Fxrb51kZRqFZsfJwwGvWovSfCS2gnPd/KxszePi9hFq3VQsSztmPbDwX/SDP5U/tC1pRdbqbMrnmJFiAGregBykax4kYWZnUPc9X12gjzB49EdCu8JdUZLz7pGYBATvk8dSuTgh0ZQFqGsxcJHXlgpqGvI9PYFamEG6zWfZd1MhIDJbr20X/23cYj9/7ISSNMRdp+mUadeSf4hl4PScWoHcd2ngEkdN5oKcMKa3K0T4ddEhoPzpRHnUIyBjtBeof7PRm7RMKx9j2djq3S8azVF+PgChZnw/l7yU5V1eV7nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ScRTDneeGAMecMwj15JqZ4D6L3dmVTkdx6Ni6vBXpU=;
 b=UmNlod1W+97u5Lw1mRRmFV+CA+wQ9qZ6Km26HLeZ0JYfJtlx58pGo7JgnDt2rmZnJDNqfcFdX82+t1zBMhtkXjb1JIP6WdKWojUPMQkkNIc0ituoWb399F83wiK2wytWLJ4nTfKbp8qiBS1+1bnDVkQc0IioLR3CHxxSMKAGja+lkxjDzGG3ZDH97/FrCinOJaHDGbEjxP2HNCpAMP6j+aYdFYfrQ/u70846v/Q2kD9pSy90VcKnF0mc1S3Ks55GJOqHZqJMvFepJdFCEb0JqXek4FfvfuhtcG/TSO62gpNTmaq2tYhJZ29NmaPF/6vCHp0oQNE/Uhryx6STr0hJLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH3PR11MB8751.namprd11.prod.outlook.com (2603:10b6:610:1c1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.22; Thu, 11 Jul
 2024 15:53:08 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7741.033; Thu, 11 Jul 2024
 15:53:08 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH iwl-next v1 0/4] Replace auxbus
 with ice_adapter in the PTP support code
Thread-Index: AQHaw7c9GEMNlr4v+ESxgHJ3gdlIgrHxzJmg
Date: Thu, 11 Jul 2024 15:53:08 +0000
Message-ID: <CYYPR11MB8429D7C7B94ACA267F592444BDA52@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
In-Reply-To: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH3PR11MB8751:EE_
x-ms-office365-filtering-correlation-id: d0f7094d-01be-4ea1-b25d-08dca1c18f45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?IlZDCp4bkxyqkDFuBoy5nFfQDuCnpIzj8dx+doa+ai/mzwdMZGq/kO0JNJHf?=
 =?us-ascii?Q?VDOvO4G2I7+1FqLuIhBYuKEIh+QjB6Dc1ZQ30PIUCA5Y9IoWyN/iEh97VnIJ?=
 =?us-ascii?Q?Y8CNWBnA0oh2hXCm5CgzXwocp+EAeIwQ2dJTK26a8Qsx96r1+In2VBRFnseY?=
 =?us-ascii?Q?P50whUqmCmaZtxDrCU9CvKBsBoqLzNh9T0Fgz5gnPtG7fCjSIwD93ZJTAZ7R?=
 =?us-ascii?Q?khwGcBF3MCmhPiNgfrb/nPXivR5R/C3JvW2Bb1NL7TVwon4MPm3caK6sCKXU?=
 =?us-ascii?Q?jQTaw0SrL/fCgeIEbh7kjeGMRfOlAAiTqMqFEwaNeoJ27SjhS6sSsMEGzudA?=
 =?us-ascii?Q?tH/FF3w7v1sH3seV/RLJL6Zvl+NnMF5B7e/bkX7sPI4KBXgGpi6CRzMUu3M3?=
 =?us-ascii?Q?EUQmcdpLxqycPLtJrDiebNM6UDLnHsq3L6h8ZGcFpL2U3MpAU9XYdVQp6q5C?=
 =?us-ascii?Q?rk19Ejg1rkeM5rnfZDH2ZrNli6fHJJnqkjN6/zsduuKq0zLfrjWBt9KIw0vV?=
 =?us-ascii?Q?BM+vtb9WFUIMsd8TZ6bURGDcsjfzjKIITHMSniIRbRttzDRen1goZ2IGTBLE?=
 =?us-ascii?Q?+lwyhmOpepl6gKaavxH1NA5ozjAvihkuI+Mt/9lrkMtD1xp+PyCeQWMMMDaB?=
 =?us-ascii?Q?nmK6movOzoFXeBtyeZbZbw6FO+MJEQHmUMq6M9yhLe2G7k+ogJH4xF6cr2Fo?=
 =?us-ascii?Q?+vDfZbMDc3hScfjKMMaFFJ2wMDFhhrKwCEFS69R4U24xojmBb5Yypo3V7sLm?=
 =?us-ascii?Q?2AqpCcM/uArwfNFLaLzknPMOYXfgot/xKNwbx//sUY+xxhJcXCAtufDjY9Mo?=
 =?us-ascii?Q?8fCnDL6SRTvv2AgLzizjdIhE+YZ0IWFjrUXkU4/IfJAWhR9OTOO6ZYS3tH2/?=
 =?us-ascii?Q?KONFs9HeEmn3NTzUSNrQi3zVOqDfGsp1npMADYn6BKM3pLZWAz6z96V6BEHo?=
 =?us-ascii?Q?ZB7bEwbm9aq/BqxBUN/TERi+WlYOq/OrBig8xOot7CF+mc8PFGQ6JGlIHk7D?=
 =?us-ascii?Q?hcmS/47RS1m6UAe72jq1AIcccnfec1Uos5SGw0DNV0XJwRwevNnTx6LHuO9r?=
 =?us-ascii?Q?Hv3mRTBfa77bgEOyhw0B5UpI63esiEp0l2MxoW1FU/lQzX+c0t7E3gCqRplA?=
 =?us-ascii?Q?q0wa/uO6u1XG7TimlXu1jJ8KeEgAIhKArwF/sV6v+Jhf4iYdK3z3nOJ6LouY?=
 =?us-ascii?Q?B4bHJPsrOSlRxPgCsB4T6XTiyDvYhBo4/RzzQPcLtn0TTp5b/sYiocP4oAol?=
 =?us-ascii?Q?QO5odQhjPDPaW7bUSyx7OKzyEeIIxVMZsKhvyMOf6x8hzJsa826MZURyvoPO?=
 =?us-ascii?Q?kvHyvhWn086h6qB9IKhunjzcoIQo2V1e/dPy9cslyxKIVpk1H8z8fkIeUTMW?=
 =?us-ascii?Q?H1cYJGjUys00+xzl8JhtUEqidsDq4awnOSikkuSpw/4iKxeyqg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eherv08QlhFJaRpyidbYuyZIowG+V0lvK9C0hzq7eRlduEuySB62wjzVGmHd?=
 =?us-ascii?Q?ken4rjfeq4XF6hPBgopOeElF/ki4fZM5uiZTIdzzBqnpGKJRq+uhd6OBgMam?=
 =?us-ascii?Q?tXTuZO2kEY7f/2fyt8GRIrcPpIoHvjqdwu11OJAVKIPW4knWlT1HHu7hyfia?=
 =?us-ascii?Q?Q3T6wr8ou6MuPvJ4BDK6+yQGTx2CoKcLowMRVrl/3ajB4VSnBla6i6CmWwVF?=
 =?us-ascii?Q?o7xWJPH28h7j+xb5tWYmhb/I74byzVs8fwafsPz7SlcU4qxp/2FCemtZEi6t?=
 =?us-ascii?Q?nYjAipcxzbennRp4q3m/mGLwcuHe3NpXELE6nQMmGxrNcZ8X0ZP3am+i2/KO?=
 =?us-ascii?Q?/GN850dJEjmFjeYutNlWfefJVt1115a+P8ZqkzT4nuQs9EL6k58LE44fSUr7?=
 =?us-ascii?Q?O5t2xL4zQ8WoiJ1A3+iAOoSGxaK/6zURRMK1dWCIchOwQluJ6+DtFazJeAB9?=
 =?us-ascii?Q?iguihn2LvGM+fti7oVAiGYEnflSdxI0J2Yupxav8U0PAtnOuu+adaTWRaslC?=
 =?us-ascii?Q?cGzE37ikfDVMUs+AMe4Vo2FnD0pl+BPNlZer50hXE8WOYFk7bKr6dfdTftaD?=
 =?us-ascii?Q?Cxj0i2yqQSizsdWgycVSz74qyn1ifmdAtyp79fnN6Q41vRm5zz9UT4eQ3OjR?=
 =?us-ascii?Q?j9yK/fROzN6htHvLvnDRAJR3nqct+C8TI/ZYMXd4KQ+nHiOSmGyDRHTf+3ca?=
 =?us-ascii?Q?kWLnHDnSs70B72GAinbek2QS63kPsp37whtXBbEVqugFMSFOGa4BSg1KjMoU?=
 =?us-ascii?Q?kvLLA6HY0Rd/vMYYjElsKfW+2QR+IqvJBCJCmldFCTVymUcOrMuGM0rlLEab?=
 =?us-ascii?Q?DzLJNxs7NP0rJQkyXmAtktVSDpHaJO17lXMwUekZ8ws3VOaKTMeY/uQMwJe/?=
 =?us-ascii?Q?ygju+FHspdeIV8TTCLQEy83QIr7tz7MqhFmpp8lVYpq3CTyzn/MzvkNrhPAC?=
 =?us-ascii?Q?21uYsIeroy7tOYb4LoOEn7kYot/fCPfB7qAyu+WTzi9lowAZYJPVcATjPwx/?=
 =?us-ascii?Q?B+YNWEvYjBbGL1PfDKJa9MJOPI5TGHT/jm7w+c6FPx3xSPQMgAvBjK0fuNHj?=
 =?us-ascii?Q?4dKeH4dcwk3z3wqDtFkxo/vN2rolOLECBoPNNulTMLj62Bph1V5U5WEoe3In?=
 =?us-ascii?Q?hFIPTqyekuQv5fjH+zW26bKy7jJFMNAi4GMBFjePj1JXA44+XQtuN0sUHLVC?=
 =?us-ascii?Q?UvEI0yTGt1jPgbtTbagCTewY2+yiiDZAzKldaj7KayZ1Re+RVrve3xW2lqGl?=
 =?us-ascii?Q?tVFe7Cajhz6fGew5+7bJQTh6szyT/iOGB4xtlZ72IJxLencWQnaqA8Ap/HLD?=
 =?us-ascii?Q?wBaIFLAwQeXFQGLIioqWZ/SeuxfzFr2lj2AgqBPs0Qjl1ciniQu1xel/QY6c?=
 =?us-ascii?Q?E3uRY4xxXJNF66Qm7tWarr3+y8T02fPIukc7H7OFbSfquHXY24STSijVaTF4?=
 =?us-ascii?Q?m6kLSgrMM5HVDGECx22hY9KVqFoT7oiOkhZHKbEGxJuskzBtz2ap1yIq9xLU?=
 =?us-ascii?Q?6tFxcVpa+zRRKRkNdAS+CugIvn/sSthcz/D1s6BxgJiyLJLR67WgdrVgsZQ5?=
 =?us-ascii?Q?XB4BDowiIcVEPfolP0YPfn2ZMQa2RimnxySvkbgbnQNwEPYmy69QJkJUE47R?=
 =?us-ascii?Q?iQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0f7094d-01be-4ea1-b25d-08dca1c18f45
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2024 15:53:08.3767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hppE+p3nU8ZA/ASjOBPCo4699dfZxEsH+Wvm96WlBgrcYjnM8iKbkeFXnDgHRRmj4lmXsW3yLYOmoLeqEUXDMlE6M5vmOt2UWXmWTyXLDGUBnVKFsPUIo/x+21pIgW3n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8751
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720713194; x=1752249194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mjGo2molBY6WyyUm16f7E9GhmScK3EFZ8ZRQ7HFIqbU=;
 b=gSvNvUnlcK2EZVaKfxoVQCdYe2ntAIMPwf0OfYqhXe61zArxK+f3wHlV
 j5gT95rHwEt8WnmcK63eLO8cchJQ8MXvSmu6PeSCl4eWsO0/Xy9iIzAH0
 1vuXO99AT633LHxJh9HRoeuQkGMPfGw6MuW45H0tREWMKR8PqxG7rmlUG
 dg2nNU6c3hx8JRv1oUkMtJmhTDCxAbccuOyeyHbIxxmPWLTwwAYqbLwtC
 8aPrEbo36keYAEYFVZv57cMlLhvo812OiK2al+nDsHrzD9/WAN78B2j6W
 0s8kqTiGR+x+/aSk8HkDyfRCOmKVDhSJx5rAoQ8L1XHvuzmv21kv8txwq
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gSvNvUnl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next v1 0/4] Replace auxbus
 with ice_adapter in the PTP support code
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Friday, June 21, 2024 2:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Subject: [Intel-wired-lan] [RFC PATCH iwl-next v1 0/4] Replace auxbus wit=
h ice_adapter in the PTP support code
>
> This series replaces multiple aux buses and devices used in the PTP suppo=
rt code with struct ice_adapter holding the necessary shared data
>
> Patches 1,2 add convenience wrappers
> Patch 3 does the main refactoring
> Patch 4 finalizes the refactoring
>
> Sergey Temerkhanov (4):
>   ice: Introduce ice_get_phy_model() wrapper
>   ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
>   ice: Use ice_adapter for PTP shared data instead of auxdev
>   ice: Drop auxbus use for PTP to finalize ice_adapter move
>
>  drivers/net/ethernet/intel/ice/ice.h         |   5 +
>  drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  21 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 338 ++++---------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
>  7 files changed, 111 insertions(+), 310 deletions(-)
>
> --
> 2.43.0
>

With these patch series observing PTP failed with below call stack.

[  +0.003443] ------------[ cut here ]------------
[  +0.000006] WARNING: CPU: 0 PID: 8 at drivers/net/ethernet/intel/ice/ice_=
ptp.c:2930 ice_ptp_init+0x2e8/0x5c0 [ice]
[  +0.000231] Modules linked in: ice(OE+) snd_seq_dummy snd_hrtimer snd_seq=
 snd_timer snd_seq_device snd soundcore qrtr rfkill vfat fat rpcrdma sunrpc=
 rdma_ucm ib_srpt intel_rapl_msr intel_rapl_common ib_isert intel_uncore_fr=
equency intel_uncore_frequency_common iscsi_target_mod target_core_mod isst=
_if_common skx_edac nfit ib_iser libnvdimm libiscsi scsi_transport_iscsi rd=
ma_cm x86_pkg_temp_thermal intel_powerclamp iw_cm coretemp ib_cm kvm_intel =
kvm ipmi_ssif rapl intel_cstate iTCO_wdt ib_uverbs iTCO_vendor_support lpc_=
ich intel_pch_thermal pcspkr acpi_power_meter intel_uncore mei_me ib_core i=
pmi_si i2c_i801 mei acpi_ipmi ioatdma ipmi_devintf i2c_smbus ipmi_msghandle=
r joydev acpi_pad xfs libcrc32c ast drm_shmem_helper sd_mod drm_kms_helper =
t10_pi sg ixgbe drm i40e ahci crct10dif_pclmul libahci igb crc32_pclmul crc=
32c_intel ghash_clmulni_intel libata mdio i2c_algo_bit dca gnss libie wmi f=
use [last unloaded: ice(OE)]
[  +0.000129] CPU: 0 PID: 8 Comm: kworker/0:0 Kdump: loaded Tainted: G     =
   W  OE      6.10.0-rc5_next-queue_5th_July-01292-gd051d5283b53 #1
[  +0.000007] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C=
620.86B.02.01.0010.010620200716 01/06/2020
[  +0.000004] Workqueue: events work_for_cpu_fn
[  +0.000010] RIP: 0010:ice_ptp_init+0x2e8/0x5c0 [ice]
[  +0.000189] Code: b6 83 e7 13 00 00 01 c0 88 83 ca 0b 00 00 e9 17 ff ff f=
f c7 83 1c 0b 00 00 00 00 00 00 48 8b 7b 08 48 85 ff 0f 85 53 fe ff ff <0f>=
 0b 41 bc ed ff ff ff 48 8b bb a8 0d 00 00 e9 56 ff ff ff e8 ff
[  +0.000006] RSP: 0018:ffffac214032fd38 EFLAGS: 00010246
[  +0.000005] RAX: 0000000000000000 RBX: ffff97597bfe01a0 RCX: ffffffff9569=
6860
[  +0.000004] RDX: 0000000000000408 RSI: ffff9758f14f2c30 RDI: ffff97593762=
3100
[  +0.000004] RBP: ffffac214032fd68 R08: ffff975887c4ce08 R09: ffff975887c4=
ce08
[  +0.000003] R10: ffff9763c3e93b38 R11: 0000000000000000 R12: ffff97597bfe=
01a0
[  +0.000003] R13: ffff97597bfe1548 R14: ffff975887c47000 R15: ffff97597bfe=
3530
[  +0.000003] FS:  0000000000000000(0000) GS:ffff97638fa00000(0000) knlGS:0=
000000000000000
[  +0.000005] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000004] CR2: 00007f6c0c58f9a0 CR3: 0000000c74998001 CR4: 000000000077=
06f0
[  +0.000004] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 000000000000=
0000
[  +0.000003] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 000000000000=
0400
[  +0.000003] PKRU: 55555554
[  +0.000002] Call Trace:
[  +0.000006]  <TASK>
[  +0.000004]  ? __warn+0x7f/0x120
[  +0.000013]  ? ice_ptp_init+0x2e8/0x5c0 [ice]
[  +0.000190]  ? report_bug+0x18a/0x1a0
[  +0.000013]  ? handle_bug+0x3c/0x70
[  +0.000010]  ? exc_invalid_op+0x14/0x70
[  +0.000009]  ? asm_exc_invalid_op+0x16/0x20
[  +0.000009]  ? __pfx___device_attach_driver+0x10/0x10
[  +0.000013]  ? ice_ptp_init+0x2e8/0x5c0 [ice]
[  +0.000166]  ? ice_ptp_init+0x32/0x5c0 [ice]
[  +0.000159]  ice_init_features+0x1a6/0x280 [ice]
[  +0.000181]  ? ice_plug_aux_dev+0xd8/0x120 [ice]
[  +0.000209]  ice_load+0x2de/0x350 [ice]
[  +0.000180]  ice_probe+0x23c/0x300 [ice]
[  +0.000154]  local_pci_probe+0x43/0xa0
[  +0.000012]  work_for_cpu_fn+0x13/0x20
[  +0.000005]  process_one_work+0x179/0x390
[  +0.000010]  worker_thread+0x2e7/0x400
[  +0.000008]  ? __pfx_worker_thread+0x10/0x10
[  +0.000008]  kthread+0xcc/0x100
[  +0.000006]  ? __pfx_kthread+0x10/0x10
[  +0.000005]  ret_from_fork+0x2d/0x50
[  +0.000011]  ? __pfx_kthread+0x10/0x10
[  +0.000004]  ret_from_fork_asm+0x1a/0x30
[  +0.000010]  </TASK>
[  +0.000002] ---[ end trace 0000000000000000 ]---
[  +0.000006] ice 0000:18:00.1: PTP failed -19
