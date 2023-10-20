Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECEE7D127B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 17:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A179470578;
	Fri, 20 Oct 2023 15:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A179470578
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697815279;
	bh=oAcr6VGjZqcawqpfB6Tj6g03Q7ElIFXL+p2lKmUDl/c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZjdPcdTWqD8zWxrXxwUZBFW0nfFDUg0c5EtoCt0D+ahwLtx4AnuY3mpNCyFtAH//Z
	 Yw5ehihgDdoyaFj/1pZc+/+NujCv/096XiKtKuQqQCYYaYmQwotjyBAbBIU9S/J78w
	 hTWkOy0sDSRxShc0o6aprBT5Geo/CjIUEJyjFMUbjUo3WHmPMUS26oWKDVMPuItIT3
	 Nn3BYVLQ0kG5+/zbF1y8p9EuW/DDms8TXkZn/sYt4MQLydTNyufo7LU1QrtUmDmR4f
	 kw/hZu4/43d3SgaJZbKMn9OOQBM6mRPn8XH+fDXuxB05Y3gasFrLS126JG5BMYMoSm
	 8U3Swq29CDltQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1kp7T5NtzSep; Fri, 20 Oct 2023 15:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 711CC70577;
	Fri, 20 Oct 2023 15:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 711CC70577
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00A001BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 15:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D693F43365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 15:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D693F43365
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9f-j7MPX07tN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 15:21:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BEAE40232
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 15:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BEAE40232
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="5126846"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; 
   d="scan'208";a="5126846"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 08:21:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="827757014"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="827757014"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 08:21:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 08:21:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 08:21:09 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 08:21:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OunSE3PApYAidwl8sRaXAViF/gAy5V2Ecb3hhxD9YHhzGG2ZE9v9Hmp6jQ1AdhAEF7q5vKuyHDHFFKsWZPRZVJUoIezO2ZHB2sMAad5T7VHUbtvA7YZ0yztUD0NjoPM+DLfjUmlO/LiBUCZC+8BZBDWon4arzHFmFrgEmOUgTAXkPppbIDfMrXkWF++gepasI/KrcANOYdRcS8wrm/WdqVyfJpllw2aSFg/b0Ws3HB9+MdOp6Xoh+F7S/xQFKKbbpg6xsLZa6KG3x5ZRvhu+qFNJB44KEMUBaRTlso6HclnM9ReK0/EkJiGNol3zd8hVQrIW/TuZFfSkhmOojKwSJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n6UzJCzBTapabfrzOGLCG38oSRZcT2w2X+J6fE9soPo=;
 b=W06cnQDsXd0T+VB3VDOs7SpVOCUk6MkBZwYZDkVqcfaPQ+QCmQX45kXHjP7uzvAlK0IfrSGhJFY1eJnRfqFZztCRbbAqzYBaEHVDFzRqIS258xgJOYJO9OmTM1797sByCbnCVPi26bSq3tvkiPVTds4VgJTWhqB+svEfTUzGTZKGHDsC/gxCH9emuElH+CWsBHodu7m3q4Jdo0A7NVy2nf2F2s/fuxQTtSvllvLJrZDOo2COnPGhKHnI/yWrou1IJpaZ7CCQHnOU66ejtJbSpwRhkHOnUi3WMVpxQSvqyG382r55ySvaE2z9Vfy5oXQbQbcqOGBX+JRwFsEM1QgJ5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SN7PR11MB7491.namprd11.prod.outlook.com (2603:10b6:806:349::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Fri, 20 Oct
 2023 15:21:07 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::ad15:2445:10e:7677]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::ad15:2445:10e:7677%3]) with mapi id 15.20.6907.022; Fri, 20 Oct 2023
 15:21:07 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] idpf: cancel mailbox work
 in error path
Thread-Index: AQHZ98Pp8ixPylRiCkqlgbvNhGGCoLBS4asA
Date: Fri, 20 Oct 2023 15:21:07 +0000
Message-ID: <MW4PR11MB5911EEE35BB4B3D82C71D3C7BADBA@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20231005194016.45237-1-pavan.kumar.linga@intel.com>
In-Reply-To: <20231005194016.45237-1-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SN7PR11MB7491:EE_
x-ms-office365-filtering-correlation-id: c2c3f0ce-de06-429f-93bc-08dbd1802ebe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gMQ8KlCs8dTdck9wegFnMCs75nKaP3iYnPOHZUMErUmRKib5tWU+r/4KWK3kfIeATXRzdrs3wlLmVBJxIVr+dG/Y/S6f7VRhkaIw/VEh7gHBN0NfMqUR1bD87rtJxijOoow3zTPBRsTpojnf595zMhexseHA1f9out4VEPHm7ZZbb7PAew7HUlW04+7Fsh+beGs/KMDn+B/nuV7gHiadId9Vh+ZKghcMSdW+G8Ti+ZDFrSJpzPZrh2sMURTIQRkpK7oqMJOHlRuTLt59wCymoBtfGGNFyGKTaSAmvJHg9f06ikZYuzRzcX3TQkQOI6FLtJm/ZIuXl4dwCvpl1DRYWGOMwLCv0kdm3x1zdn56gVXDPb8qWOBVapR+3Koo6/OsYg+EnzLtkUloogMa+/IiO1qSBGWb9o4nbWFvsEsShJ3MkhIA/HE4PUUdVpGbTkz0zseIHlwb7mzAz9Z7yXH300OJsn6Pv+mqrtju8OXopscuRZFSWaJUq9b61HAl1yqUGrn/zzB8sNdrcQSm29bf9JhVr9xQb/aqyvlaS7hFXdGRYDDiXLUJ4akaee2/vJGfUZSMicGu/4lEq4GNjxzlb85tqgHvCXSHxnz7FrP+8+Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(396003)(376002)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(38100700002)(55016003)(38070700009)(107886003)(4744005)(15650500001)(86362001)(4326008)(41300700001)(2906002)(7696005)(26005)(6506007)(83380400001)(9686003)(53546011)(82960400001)(122000001)(52536014)(8936002)(478600001)(71200400001)(33656002)(5660300002)(8676002)(66476007)(110136005)(54906003)(316002)(64756008)(66446008)(66556008)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z2zz2vF7ntc65p6nETyVE4lY7xj7u86Wy7DLU8M4Owu4pha1qGYFBvpcNwF+?=
 =?us-ascii?Q?MgXqj6vnwjzphEfvjwUC94LLUljvFuS1/KuZMvhG/MvpJUNaq86gCTGKCvl7?=
 =?us-ascii?Q?fqKGcWk2azuDunQw+PhpudN/qGvTqerpZTPGOmpJ647IUigYXYW0ZEQ/l1xW?=
 =?us-ascii?Q?ktbTTzuSnHcSe2KzVsLHfLnfgxaIl8ly+iNPo9iKO7oNI7DnXC9NTIVC3kTk?=
 =?us-ascii?Q?zqganLnk9mDukwgad8WwEhzz4wuoF8u23AdmLhm/RcFOtuTxV5jh1kE/AySh?=
 =?us-ascii?Q?ZrDgNun9B0HSFy2q4Mw9q1Sn+8CEMLBqL+XcoFvyc7Idk35wIifoI9MWnT0k?=
 =?us-ascii?Q?PhR1k5OYisaexEFLe/RO/2HVmwZH4jLtG1H5pD49Z9ANwOcjLTuirRHx5irx?=
 =?us-ascii?Q?4KEE5WBe5GSCwbeHWCjVVpnwjX6gMiYU9nBwgIntseuOhrbuMMAbCjIMtRFI?=
 =?us-ascii?Q?eNMlXCFx8KkLJk/ws+G4mpqkHWQUAuzYr91QNg78WGI07EBB5VlK4ebk+yu7?=
 =?us-ascii?Q?r/l0+p0fARM8g3r0+ld7rz2MStOh6wMkj5KHNx2odc5x/TrmVtPek6tsCHDq?=
 =?us-ascii?Q?NpwDHG5G/m/z7JyfRLdbuTpqb4UjgelXfPYP261Fgi/84IoX7Zqie09PyJAo?=
 =?us-ascii?Q?0WeyTJBI95iAMnpi1SD0vPanXHkHTpjC6EXOg/4t9YNN9B9dQ+wshvOM/prb?=
 =?us-ascii?Q?BnMM3FAbjw0fzNplC4ZdBzA2KLqWY1smKGWJcRJjG6AFPJC0m4bT41ZsUPn6?=
 =?us-ascii?Q?vX/AXlG2MPxAjI2m84nxoLMzUTM+tdeKWNN554DaZys9nSa7onBziXJOocb9?=
 =?us-ascii?Q?jFu5b2LM6dBjk4JGPOfvWUGqDvGvm45Fs+Wk3UDzE25hFw+WC/e0YVvdKBRM?=
 =?us-ascii?Q?ZZhnCCzrewcDzjgQgHvPFvJX1qsYAlSxZI+hVicEsJkAF8CNLIjO1W1ITy/Q?=
 =?us-ascii?Q?nBBEwE0NQ/osMfGQEHt3dEb3j3pqJchb6r0nzrHotoz+iXl8+NAxYdXBMUfj?=
 =?us-ascii?Q?QQ3QuylJspm08OJ9u3BRkJmmxsVNJ2IsKkEiG0MZXkBxHk8lovVdZkNQ8FSN?=
 =?us-ascii?Q?CXnuNqt9VymeIRCoFDjCpjBehSZI5Nip6q2GI4O++W8pdaU6Lh+5ltGdc9ko?=
 =?us-ascii?Q?7c0PM/phes1MQpfPmL/gSvuNG0P7eDoBcn7y6sVBz/ldGXVmfQCyG6FLjSAN?=
 =?us-ascii?Q?edEyzlZf/gD4xFr1MXMBjAyHocflLn35Z29R9wokaEbwpYPabsMJmzT/kz60?=
 =?us-ascii?Q?061J1RFm2yxYUTP5Tk30RsFgd8jqgxf6sdmn4RdeLIUxUr95/0NQC0LHH1QP?=
 =?us-ascii?Q?IvrW7o4MfHod2XfcYqHkooGQZP/OjJuunYbJ69Pz6bPxIyBx2vFaa46seGpb?=
 =?us-ascii?Q?bAUMgPGi4FaxM4xyAkBnxIAQuvq30VmNEbSNimFBicxiXC47arbJ2kzls+Zr?=
 =?us-ascii?Q?Hm9tXxy4UbcOLkiiMN/KEBmEqsRVAtaCmpgdYqigS45z75/SnENs/XEJc9+b?=
 =?us-ascii?Q?AEQdLpwUhorhsuG3BeVPvoRYycbV2u48bjgXiNdOjptbI4oxMrlKn6z/C7qK?=
 =?us-ascii?Q?VU+VYz2ZojBgFnSkaW4R0o1cYf/iMGkX7PQBKFsITVAB+qf4Z1mhkeeV9Yl/?=
 =?us-ascii?Q?kg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c3f0ce-de06-429f-93bc-08dbd1802ebe
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 15:21:07.3128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Is5bg+N/nSxjBY4PrHGWLeiYlPkyz331nGZxKd0GSdiVahy0LsGWTSeUJIY8Ft3cV02q4bR6BuUh6HwJc/UWEgtWQcMT1XvQhMJC5DUs+kc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7491
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697815271; x=1729351271;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+fRyGSAdjG2coLlGjeEBzS/+JAT1oDo+r5tSIk0ZZ3E=;
 b=DEo4rnlTSPqHTrn1G8NERDaLek4n20qkngUH8NezyDHD2R4Y+IwL4IY2
 VI8T04RATGbgdxdScSd1NRBvxBR0g9JeelskOkXgkm+KCp6Sd0ivcXixN
 dqEnWm++6O3ni/DXgPQ22b3Xy7o6hAEp6QPXJp+HE2jHyEBmxZpCi0gQv
 MPZUQ4atCgnA+rzA+RN2p4v/uzoVAgUuN5UzWmPoJEX+wD3ScnR38OR7j
 gbJydlx7AhE1O+JzSC7AwZ6gQPgL4Fci0ZmM38SYlupxfl2PYom7wfvqT
 X6PU6gROt+GgKTu3YVsQOKyDHu6c4DC6r19/oLmFA5r+OdrGSmvE1q+9z
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DEo4rnlT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH iwl-next v2] idpf: cancel mailbox work in
 error path
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Thursday, October 5, 2023 12:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] idpf: cancel mailbox work in
> error path
> 
> In idpf_vc_core_init, the mailbox work is queued
> on a mailbox workqueue but it is not cancelled on error.
> This results in a call trace when idpf_mbx_task tries
> to access the freed mailbox queue pointer. Fix it by
> cancelling the mailbox work in the error path.
> 
> Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> v2:
> - added 'Fixes' tag with the commit id this patch fixes
> 
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 1 +
>  1 file changed, 1 insertion(+)
> 
Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
