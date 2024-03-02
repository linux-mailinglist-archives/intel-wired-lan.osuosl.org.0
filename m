Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5AB86EE98
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:33:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B8AB41F8D;
	Sat,  2 Mar 2024 04:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGG7r7sp2gRd; Sat,  2 Mar 2024 04:33:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 995E341F6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354008;
	bh=7eJrzlLD4kmocT6fZxiwa0bfSFYOIYPtihAG0cpLSG8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r3fssby9n/ImgzWGiQ9oyv93dUc4v5dCMlWm0J1NtMsM4TgD2WSjDVGZFKiXIg7OA
	 GwDtSMqGHxkRWLGO7/tL3OwHRXID0jXoI7E/jouqNqOIJoYJQHqg38SIgdm6E6zKQ3
	 UfsR0wsaPY+PM/1+Xwh2xtl4PcLH5wjztdh+pUPWbcHeo3hXJHuEB5lUHL8gEZvYqz
	 SeERPHxZV1Jaz/y9V3dOJN7y8kwpQL+x1Wv1vKefzsnxdlM6SAYA/oStWLjhGZm8lY
	 ydnurmhLXe1BReHdv5iKr60nmK6M9+KZx91QYsGGYqJUvhplzAbag7Tew62y5Y6v1a
	 hAUvfd7HRx75w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 995E341F6E;
	Sat,  2 Mar 2024 04:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E13FA1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC8E841F55
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fU3-XPtMD07C for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:33:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 82AB641F54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82AB641F54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82AB641F54
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:33:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="26373289"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="26373289"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:33:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="12965689"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:33:23 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:33:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:33:22 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:33:22 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:33:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IfMaDa+Vr9Oe3uJKdV85NTL5Fm3tRJx4Bo+wmLEclCs7JLdbw8KEuTiYQCgCEj7Y+1TDLWe0D650EQE/NH2uQarDU67cZ7qLitzzw+Isno18Uh11JobabIo1I6jG4qJOmhGVTH9P7UT/CrDVoltPANP9MiIQIqWta7phhokwCX7c9pp2iFEAUvLYUvuSfzWT7paPWrr0v+szbtdI+Y92vLMQYvFgOUQA74Gt7gznno8VFaMn/t2wyATuhLIF1hiIodqLxLq6klTDNGWoTRmVsNpe2HPzyfJyrImM/RjOzOx3VZxEtQq84CTzIJMAKutUcuYKfVYn54/zdrb5HBcnOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7eJrzlLD4kmocT6fZxiwa0bfSFYOIYPtihAG0cpLSG8=;
 b=PVDpSZeu+pK1qMTpTwwoekWrUosF1AjR28PQTZoaLXKpV5eW55nypuJNH18MOnPT/WBzXBl1WkMr0/B0kMPxSyhXb3ehSJJ1jM67hwkxdVZtBsjxBpwCgmLR9cxeUey/J/iZC/k1IaGPqYZD5vBOtIo50qrMQKb/07mXO2n+HRdf1sFD2GO1C3pygfB1R5/SLZpFn/JWk+J3VO6NtBcKMaDmYSCPNoOUY05vPS92lvbJXjGlmgOjyA9giCVBh/5g9owL5vMX1dfiGt5tQL9vpcR80jDJALBN9NUcOnYb7vaSfVBgCUw25zKnbQe25K+T+pzA/5LGoT5hiegrZPjsJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:33:19 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:33:19 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v6 02/11 iwl-next] idpf: implement
 virtchnl transaction manager
Thread-Index: AQHaZcI0KyE73I2z2EirjQJ2FvgerrEj6bpA
Date: Sat, 2 Mar 2024 04:33:19 +0000
Message-ID: <MW4PR11MB59112303C2327179D3BE63CDBA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-3-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-3-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: 78af4baf-7336-4e51-00e9-08dc3a71e2da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ZQCfIcYwtwvZAiTBD1dKS2bLuqlFBwvNgSWlXLR2QSH2bzSt+yWBzNdCIrAR/4lI7gxM5qlnsjUaxKYO8GbA6lqHnMPvodku+9zprsP5LBrwof4JrzFX/ZpQkTDVfvZvVIRDRQvVpH2XZ+VLtjwHiC4MS21JZ2ePrqQ8EgW5Nlh6MAzWi5xZcwxyZVuLzoZgJIXHQ65ij4KHFkGdBUBr1Y88xHcVU4vJqlYs1gPgj5USG3X2/GRk/XayJsC8ruloSoBI1vhiFv+EE1y22caZsE4pt6LJnOSuGtf2570mbqHzfM+ryqz6qaBsKSdjHVFQbgvf3+XW3+ny9DeK+XZi7+GNL15wi9mp0Fr3gnZX+T8PWF1bKV6Y5oMCc0dm6n7j1LxvR4waBblbYomoSo+0Ija6vhX/i8xgpi4wj3KQUkSaWHy4d8Qw5+ETUEJInEiI/TkUjN/Fk2BNgHZfSNITyQ6SztaDTv5YvjuO1GDU7iVf6Dz/bCeCcWoaULmaaQbFAksEETwPutU/vOWQfd8S/+zf9psSb6LbW8iddVrc+PFYcEGVOKeS4QRNPbXrZQiPoVe2stwJsgmZqsROUwLAyFys4f0BCZdvFsc6Y2nJ9XZ0R5jmmxCDav5bm23bzxqPK12f7gK3Flag3ap0PF9vTVOJlzSgc8lEcQWekSIBQO8YKjvh/ni1qLUTwbnJ4xJR2G3xyPif0Rhe6Z1tOUuyG9weJWK1kFbXZNdq/FG9A4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yphEzKZ7BTfb9R1KgVFWnJXAeT8XTsMgvV2C0IoCb6+UuN/KyW3QIp0Y39Cn?=
 =?us-ascii?Q?KTogf1fegoz8A5+N6KpQbY7s08tRUPUe1LQ17NVpWMgwZ/wiPpDir0BvSwJu?=
 =?us-ascii?Q?r1Ya27sb8xmApsfbmXmK/vh1qaTkfzgI3gqOACWYY83DhYwnLIVMT1g6a3Qx?=
 =?us-ascii?Q?MG3mktYUpwR096fwX+sJ+IOr39mscKNeePDYNLnGUse3MM3WpPegAVYkm4WD?=
 =?us-ascii?Q?9kb50VHnlmZb8VG5zQDzUtj0jI1duztpKSuWLzsf2+AwkKkjEv0NfkLh35h7?=
 =?us-ascii?Q?cwnp6R/EzgHxALsBRkRU1m6hqEHZSRpfdpo1nhrDv8h48xKobJXfe8MKqHuW?=
 =?us-ascii?Q?u74wSXdrYuHlhSl26M75nSznGSOFeKn20rKoCGwxnIeZKQr2HUFYwJXHb1h2?=
 =?us-ascii?Q?CsZrrI7qnj+GdD82kQGVxUaMH/SRLdeieKj/R3fQcMsdBg4FtfkMg3XN0LJj?=
 =?us-ascii?Q?lAOVR6ajDBSpfCus2UCiHhg0vBYZvGTA5zK4RAPXio9Q7AjmlpZThd1VZR4K?=
 =?us-ascii?Q?aMuB+MfF2T+k6ZDJAtqChsbUTOT/ExSVakXWUXuWC+dK0IlW28/5n7gjgZCw?=
 =?us-ascii?Q?EwRdA/e5x4E4343xKDjPc9WQQ0BEluVP5OZ7O5MyMHGrNt9rwJXyAeKskRwZ?=
 =?us-ascii?Q?bcUshjs1gJJ1nAq9sg3A9VMV4d9Nm4muZBI5X3Dy4Jv8vdosdVMCepMIc+18?=
 =?us-ascii?Q?uiD7w4gnMvtXC3gDXmwJaNAx4RnaGpOoYIbJBNd6A3VGZax4iswLyutnqog9?=
 =?us-ascii?Q?RrHuYPp2Svyy40jDqDUqTEHr0vRw6OxnTanTo6bDdd+uZxMtFMRhM4+aa4L0?=
 =?us-ascii?Q?CNKMu5kfZraG1X5kVInyVS8nkeo5hn8qpg+Mi0vKUQkBzduKTRPW+l5dKoEQ?=
 =?us-ascii?Q?H9z5OXkCz0a0cYMHNLv03MnvueyNzn3BlRBHroUMckrJ8GOZqzDx/ow8MxBH?=
 =?us-ascii?Q?/g0++97cyJGaqHUFJCCNgfxytNQVvRTpg/OoqE0I4YykFuQAITEzCnpGtSeY?=
 =?us-ascii?Q?8MmexAL8FI/87iUxjd3sG/twNdyL6xRugCGTl88dltt619hOjW9injTfdVbJ?=
 =?us-ascii?Q?rWUmONZHxtTgoMQs5HCI1Qs4IpP4uwR6X+G90hKrUDTFpqS6eVMl+4mlydt5?=
 =?us-ascii?Q?Asnh/1LRuVEv6CqHQdRsk+QPrt12sE/bWMuPBwm2cXbwtTLViRopsMZqxX9k?=
 =?us-ascii?Q?Dc1oCvD0cZXxfdYUbmib6wi2mU04n72EM1xgmDU7HEQXQjrVLwcOJBsWZDFT?=
 =?us-ascii?Q?gw/P+mj+mbV6IWkcxCAIcWB6Za98ZW6s801qU+vFa6oL54FxAXlWLXd+nA33?=
 =?us-ascii?Q?4VbpeaQGjYhkW6eAH3jlQVAcoqcraLmqCroORxgknhaaXPnBtKT6d+ZwT1O/?=
 =?us-ascii?Q?w/hx/eRaLyQLy3vHo2QjIKN+c5JJnZB5/1fz/WWX7Xvt+nowS7GOH/Ej88VE?=
 =?us-ascii?Q?qvs55v0A7Gpx6Cdi7xGxeZvDwh5lSCprFmTBbMxrBu7K/u2tsGTQUJ6ghlkY?=
 =?us-ascii?Q?0HipCEvwWoE4J3O1QMg1f+LzL518psBOaQsZ73nH9CIHksvd8xWxWFO9aN33?=
 =?us-ascii?Q?kB/ybbErKqj+7UnA+4Zx85cjqGvNjf4RZiZjnlrFX0w0YtGXz8AaTLpHjhdu?=
 =?us-ascii?Q?Lg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78af4baf-7336-4e51-00e9-08dc3a71e2da
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:33:19.1122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kSYI9S+WpFWyGzpj9LWqEVCXyIwL2RiSmzCpT25V0u9+/Ey1qaJe0BZeYOyxQKXJ2eukmeWuvuL+DtUag98MUTS0czYHfVvEEfdw3t8nN7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354004; x=1740890004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lKfDK8+KfoJszVweJG9XOGEFzF1SO6ecx+7AWG50C2g=;
 b=TJhcpW4nFWkI4GCwTAVuszc+z7l+rau96y8+EoYzrh5/plhNzf6T+W9V
 wHN2ZvlYH4kNbsn5Ub7nSXy4FgpuuJIkAFFE2Gxhfub+8gkNQoAKK9tnf
 hi2AuZcLG6xzsEYXFs6JaL3blYCvwr4Ih5y7d4jgv7Wno0AucqZQBEh3b
 4apVfYBoCDioqRRG5Ll5CDtPUAucToLdAX27CVp3qAnBtp17JUJzndpPY
 Spvlnsb9xSonjTLwh0tcytJPwc1oFTts7OeL/YZeFxc5bmwM2rqWvWkTc
 muoKtHzacMGVxtZPkT9Rvc7MSM88YGq/mQgNU6v8D5w6/IOBwPxozJydc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TJhcpW4n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 02/11 iwl-next] idpf: implement
 virtchnl transaction manager
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Brady,
 Alan" <alan.brady@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Bagnucki,
 Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alan Brady
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Brady, Alan <alan.brady@intel.com>;
> netdev@vger.kernel.org; Bagnucki, Igor <igor.bagnucki@intel.com>
> Subject: [Intel-wired-lan] [PATCH v6 02/11 iwl-next] idpf: implement virt=
chnl
> transaction manager
>=20
> This starts refactoring how virtchnl messages are handled by adding a
> transaction manager (idpf_vc_xn_manager).
>=20
> There are two primary motivations here which are to enable handling of
> multiple messages at once and to make it more robust in general. As it
> is right now, the driver may only have one pending message at a time and
> there's no guarantee that the response we receive was actually intended
> for the message we sent prior.
>=20
> This works by utilizing a "cookie" field of the message descriptor. It
> is arbitrary what data we put in the cookie and the response is required
> to have the same cookie the original message was sent with. Then using a
> "transaction" abstraction that uses the completion API to pair responses
> to the message it belongs to.
>=20
> The cookie works such that the first half is the index to the
> transaction in our array, and the second half is a "salt" that gets
> incremented every message. This enables quick lookups into the array and
> also ensuring we have the correct message. The salt is necessary because
> after, for example, a message times out and we deem the response was
> lost for some reason, we could theoretically reuse the same index but
> using a different salt ensures that when we do actually get a response
> it's not the old message that timed out previously finally coming in.
> Since the number of transactions allocated is U8_MAX and the salt is 8
> bits, we can never have a conflict because we can't roll over the salt
> without using more transactions than we have available.
>=20
> This starts by only converting the VIRTCHNL2_OP_VERSION message to use
> this new transaction API. Follow up patches will convert all virtchnl
> messages to use the API.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |   6 +-
>  .../ethernet/intel/idpf/idpf_controlq_api.h   |   5 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   2 +
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |   3 +
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   2 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 614 ++++++++++++++++--
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   2 +-
>  7 files changed, 561 insertions(+), 73 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index b2f1bc63c3b6..c3b08d4593b0 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
