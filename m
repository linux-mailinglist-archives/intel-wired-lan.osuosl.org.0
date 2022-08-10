Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A53C58E828
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 09:49:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B0E961021;
	Wed, 10 Aug 2022 07:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B0E961021
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660117796;
	bh=TQltnBnYnOEibOSEx/mMOySpxmHJN2Z6EgZLj2N7xwI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YDqoHaWDdv8AoufDDKa7iLb/Hgl/RevLlPNljUV2Ct1roxpEAaZ9m2idg1wB9QTGy
	 JvVvPKQMmwJCCknBPKQXCGtqoL9/4bxTWk7+jop1DCoWkt4KVsvi/wAW1UePNfc+R4
	 h8jYqQVLLYWF9oJm/PffW5Hv/Bfprepl6e9tSXSW9PcVR+PtIzcimfPcxU+bdYJ+Gc
	 Ti9ItrjSjuz0BaiaY9aVGhpa5TezT5xYtL7ZTYJUeOdPpeIehch8OamYaoGphU1SOo
	 0vBgb8YUbkkblFIYDR1cKlQP6evzazvsQ9/uc2qt4G4ST+8IA78Y0SlPv03V84bFSy
	 63OHi/ZzZDRlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pgWh7r27dgC5; Wed, 10 Aug 2022 07:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 719F060DE5;
	Wed, 10 Aug 2022 07:49:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 719F060DE5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 847651BF44A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 07:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 696D860DE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 07:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 696D860DE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTOTtttt7FVJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 07:49:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 123EE60D66
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 123EE60D66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 07:49:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="289778847"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="289778847"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 00:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="605055167"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 10 Aug 2022 00:49:47 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 00:49:46 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 00:49:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 00:49:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 00:49:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCjQ29FCg8XGCIvlJL9jWSLJCDDtiJyDdqhM5icn9tLADi5xKzUPwsDUGZTXiPGBXizKtyHtbj+7ykN0ioMri1EDt+W/Lncnwe2QbwXvwl3ztsSJ1kWaXEn39YOf6uKavbN/gXqT2CX4m5jlC4W0TxXdU34KacS9nV40Mynxj5kimGnbGwLFzYGL45pYmdZCSmuFOrfZx5aXxYir4yzQn1XYBl9QhkpbdYZN7X138Ynfjo9kvOyd0kFQcY99x+/tpkoVC9CM5Sc5l0VlXtuxKtSrA9MNn8y8yR/42cOD4oFaoupkOE34faoEtrTvL2m8MsnexeO6vmrwGuwHi/U/WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UF7zURisQk1ZbeOi+8lbDqcY+CtLg6MQzC1IjRqWjKY=;
 b=JTxVLeTYlRNT00AblEqYyS0XBB+fFZaJ16icxDHhDgRs726lRSxekPjShUY9VDGoE/uAr7iBYfRHHn3EX5tYVb1jIzXYAbgJika/c38mFG96iTiflYBa314GuaUFHzuDQLlDdHglmYvsDShHb5V6NvXjkeCK417yUUh+kZwWl+vHML5+Pt71dGKDTw2VVYa+gT5h0qWSL0w+H8Pl+tpa4RCzIXJak0+SZVdEDHEEWahepX6P13TuLkOlcBDk0hT4oXS0Lz+GVmN9N8dmG9+xwLq5XX9i/42YwGsmLCw2RntV9NYn7yQYClDk81l2IYBoO88EfGOtkvsqS8LLokRUTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6073.namprd11.prod.outlook.com (2603:10b6:208:3d7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 10 Aug
 2022 07:49:43 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.020; Wed, 10 Aug 2022
 07:49:42 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2 2/6] ice: initialize
 cached_phctime when creating Rx rings
Thread-Index: AQHYog74Bwd89PiofUKpQcYqVi5Tiq2n10fA
Date: Wed, 10 Aug 2022 07:49:42 +0000
Message-ID: <BYAPR11MB3367CB2D2E09998F1F528F9AFC659@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
 <20220727231602.1625980-3-jacob.e.keller@intel.com>
In-Reply-To: <20220727231602.1625980-3-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5abe9d91-ed16-41e6-73b2-08da7aa4e316
x-ms-traffictypediagnostic: IA1PR11MB6073:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E3QKVMkiSilFd+KTHSNi6yzg6kGUlapR9aXyUFcV7no63t6zHt5tgLC7Rh0tKXvJB7bE+zDpiR4Db3HLIaXT/R1hPtjYhpCF3fajguT7fx7O3Qbb7m9IOxtVy3FoprlQh9ttz/5NWjy5gNLKbaT/wKosz8bm8RdgetFVFEc6Ljn+DUB11jpOAFLfoM2g8o8Zes5ZEwX/lHDLZ+eUgnp9D96eGnS2SsvESqIYSmiOpbM1L9/1mBrwIiXzoKqNuQZoquJDVwnph6akS3xZyspVoYI1JcLgnelAI62Ro3lxHquNJfcbYPwNjghUQIYCHcA73CghZHuqs6ZZUX+/6vcxNIbyqJluNTqstcueJTynEm4szOWMZuNdxOsvOX9QG6elBaWpwrwha0UOvJzzQyS5EKZSf1i3tN+8fmL+22u0TK75G/hAIlSqyxIWj3r9a/6a27WvfjH36QrENO0FsQ5Awq5qRUhjBDQHBu1Hit3yrkS6YpIssjW4ddON0fvfDOso3utTZb2RTFQyVUQuhbH6Nrh3anQAW/SnzEZ+1iqOLeGVe6/BS9DQJPNRVM0h/IbYjRk7ffibyitb3lvy6VxYqMkB7MFEvFOGOZsEvIDsDb41tVP3+47RTiyg0ccUjk9QCS0p8QFFJhqjpR54NUR/rzSYhlugGS2EZzPvBj/lkvA5JY8sxEerLjBW8KGKL+PvUgdWkvYCjLxQ149f8OiZtXlA85C2UJswfBwN1FTF6hFQByIigz8BhreIdiPdhEqJHkpD77im3FgJkSjTuBREu+bvUYjafjQKKAPM56rdbQ+7kr/uKB2TqvPcmyOqCp6g
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(39860400002)(136003)(366004)(396003)(82960400001)(33656002)(38070700005)(110136005)(83380400001)(316002)(55016003)(478600001)(53546011)(86362001)(26005)(71200400001)(9686003)(41300700001)(7696005)(6506007)(2906002)(186003)(52536014)(8676002)(122000001)(5660300002)(38100700002)(4744005)(66476007)(66446008)(64756008)(66556008)(76116006)(66946007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C41WwAkrmW526yScaErOuI3FRsf5imGX/pVX95C+igU/4u89QP44UfpKTzH7?=
 =?us-ascii?Q?CkvxIBYBil9tXmDxZplF6O8zdDTNjnkMdmVUwgbEIUhSVdQI44tMhE8qhrFc?=
 =?us-ascii?Q?sq61ICKhzLCQbxcCNoZ/7I7GoAB5JphUzvhj76DCUOMdA8RKGwDCS7QtKs5/?=
 =?us-ascii?Q?vMsZumtgy8diwxLhoJaMDq8xHAfWLN/6r+4HqPtPCRzE6Q679tmjvwNRP8qj?=
 =?us-ascii?Q?GGsd21XELnIDR4fMxTTUgmJ5QiDlQ5k3fgFybWHGSL2dCPT/pqXS8ld6G1v5?=
 =?us-ascii?Q?5Mdh6TPzkJUVrfmNzKOgJ/1xPUM5iPNocIEje2e8tIRXL3JBpyPPknvSmTe7?=
 =?us-ascii?Q?pVgG8IIA1xmBBLsAow8nt04VZfZMJjJNMLy4V6oCBXVBwPK355CyrfSxLnE/?=
 =?us-ascii?Q?4ga6wNnh9ZVOmKQ6AboDTcdeM3T+PIdSWf+WTthEPfMcttgY47RzyTggFlIY?=
 =?us-ascii?Q?9swnwZdoXTO0DqszeAellsAEosi5mKiTon8Hhvvo9IsywVtzy9Oxh9rj6kN1?=
 =?us-ascii?Q?HUYK750npz9shU0vPKNSpY+DjElwm0rpX2McOaE8thdZIY4S/76ds8sSKuqz?=
 =?us-ascii?Q?SCWcU1qwjkWaIfid+qSZC40rjZXWlPWVtMVS6Tgcyo/R2eSMzuroMYYzN+Eq?=
 =?us-ascii?Q?dPUWLMRoVOhftTOZ0IuwmwWlxG/pZ3m/NPKf3/s/aqaTaQAe4glgs5kbkg0Z?=
 =?us-ascii?Q?jAfgsoTaOwwypGrt89qDsJ/t8kB1u7z45kzA6vX2UQX+pCgoUpfJI6bEsLMe?=
 =?us-ascii?Q?kmhw80MWlxFue1A/IqqDtBdNpK1ER4/thpXVm6A6mgzTAggMqqaVBp45Rsh4?=
 =?us-ascii?Q?Cg8dBNsBn4ZSCKA4oN443Ld8z6VRaFnrCdTqf9AZA8GfFpaQhIFcx5AXtTvR?=
 =?us-ascii?Q?+GSJBUYnTK6SJZsY9ajKHieIzzQeATcyS/sepHSEF1ojcwoLw/kR6qoDDaYN?=
 =?us-ascii?Q?3KZZxlaYbCAylQpSMk3SpXsPzTUx1i9XkeTFvolxLjiMGqniCXw6u5Nmqipp?=
 =?us-ascii?Q?twXM8vQpAt7SnBPU+NZk8QNny1GZquPIm0QDPZm/x/UcmojzKdjAFES/YVHe?=
 =?us-ascii?Q?Y5TrlPBznKlrxxaLkyARAwJsnWjFpGnT9rvJT1Lm1uPyLKSHfx+9MoAGRut4?=
 =?us-ascii?Q?YaM3QUMNBPHN18jgOJTExGvcwiYaZ59wdBLb3TlKPamSDMwCo7bRekLoFiTf?=
 =?us-ascii?Q?zFgkpgHa1QdySNFhhiCbjeUytVAjUoV1tVW5igXdN3vlM/CConaUGgCPWkS1?=
 =?us-ascii?Q?ObQYjBRq15a7JpHGFAFR0dr/g0g39iVVdOdsF2aetgzrSd8AuMihIe4oxbcY?=
 =?us-ascii?Q?Ygp0vmhQbzLCrTh6t9r7l0vt6azxaUlRA6I7Be96QIv604meeEhzLCDaeS26?=
 =?us-ascii?Q?dw5CVvYU9A4R2fsdwuBp+0jmlVKCe0dMrvKIlCCf9NEvbxykBnqhuTqeKOjY?=
 =?us-ascii?Q?lU7gS1xlMtNISptqJfjwgJ7HvdkCeFdKuL0SuFPLjiXhk4j/CGjDHy7DIvNW?=
 =?us-ascii?Q?ArfTpkaUqFUj8YQU5S9E/xjflfqBcfkDuDeQGTiaSJaJ7iiDCFXLpB70Gj4Y?=
 =?us-ascii?Q?0MREpuFcrrSICSdR/i9kC5xbueYRquHaeqinWdkc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5abe9d91-ed16-41e6-73b2-08da7aa4e316
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 07:49:42.8846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /k23Z01gmWszKtjPrTL3jtca5sfoOIuOhwiEZlavk8SizZ1cSVnXzTtr8p0oInz+mbxLlonNWbYBQYgDnW9FCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660117788; x=1691653788;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Xfwa/szft009+D2BiOBDOm0ShBzU4cwGaWSIVhnyyoA=;
 b=ep2L4CmCf93Ih1vydj6wsS7ZliO3+7DUUnqul3bwb6L658JFiaaJSn2c
 2u/KWaF6NnyBxAYPd8wQlExgOBjhWOwP/0cOb3UP2E0dx5hFN2KCpVFeu
 WUKQbLQn74wQPnFtgf0/i59F5cpLhLBX/XgtwNpGG1BppMNwRCo2vs4X4
 QB44UZvOn39u/7efPgQqLJtaDJHDBlZs9mliKudxH5JEmCs30L1ls0Ykh
 e3L+cMbF/ZiDT1JuL1oFRHum/iFH7FmNA/IBlDA5cRCTGRDl9YPWmiCRw
 OEspocAc8ti2hyLjKDtmaUy0Y7CU1healJRIY4dn72jcSJjXsxH83Cous
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ep2L4CmC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 2/6] ice: initialize
 cached_phctime when creating Rx rings
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
> Sent: Thursday, July 28, 2022 4:46 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next v2 2/6] ice: initialize cached_phctime
> when creating Rx rings
> 
> When we create new Rx rings, the cached_phctime field is zero initialized.
> This could result in incorrect timestamp reporting due to the cached value
> not yet being updated. Although a background task will periodically update
> the cached value, ensure it matches the existing cached value in the PF
> structure at ring initialization.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 1 +
>  2 files changed, 2 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
