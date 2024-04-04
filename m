Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D3D8987D5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 14:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93A5941952;
	Thu,  4 Apr 2024 12:34:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJBzbxZ1cSgf; Thu,  4 Apr 2024 12:34:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B619E417C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712234058;
	bh=RcNx9FuFFKurdz5LxhtnKQmpTveq3rKop/TNQrhis0U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=entYkT/d84TnejiV/J5iXq5Fvoh2xrUy5QBqOvUD7OZPLUkLWEh0G7p33wPIikQSH
	 NG0JcyeF7GrrAk4gJwEKf7eQdMzm7qG/6oTPdgTO6L7N3rySwHJCvvQHH0GLVkeFV0
	 PmdirRhfOQbSb/E3r+P5CtLj3JRS9PkqhXV6NCz7KeWAkFcjBupMCPo5qqjrAy75zL
	 sST2asl6O5/rbr9KAEc7nbhKmjvogLN+iPOpZJZEs9RZFezUXB8qgybTTlnkqwcS3E
	 nPozrVBNNxi8EjiJsm5aH0RwPOY93DDquPAKQJ+V3CyTQKkkNh8qL/YGJmMoFgVkcM
	 B/lvpc9xmNqpw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B619E417C9;
	Thu,  4 Apr 2024 12:34:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66C281BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5052F60FA2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:34:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XeHAWbgiHgEA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 12:34:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 84D1960F92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84D1960F92
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84D1960F92
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:34:14 +0000 (UTC)
X-CSE-ConnectionGUID: 3Y1++KLmSLyG2UdyfQNWCA==
X-CSE-MsgGUID: tDFSKyd9QkWGCSdomf7iYw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11334722"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11334722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 05:26:11 -0700
X-CSE-ConnectionGUID: Sk4PWTXERXOsv809E9SAww==
X-CSE-MsgGUID: rvR6xE3aQKuRQE0CXNPj5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="49990313"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 05:26:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 05:26:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 05:26:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 05:26:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 05:26:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cC2a5UTMsVJfqFBB9qqfxCagQHqu4XQneDR86SJEppwDt0i70jpgWaXcDGEH7+vMmcfARBNFfyt17ig5se8B7QkfGozVTZjZ2+3aeWdGSOB5FutwjmmpkCouI58c81DcoqkD2vyibEPgzHTLVonBHh5tujez9ZM/lx4jGOSoedvOrfUrKfX08DpCLnZS+W8j4a4H2MTjA9dIumYJIb98QFNemGCnnLRQKIrmpNg5RL++HuXhG2+xzAQMIjptLXZChqM9e7VSijlLte0WiNxaRpkckHGcdfLzLtb6rso1RVAw1+RmQn3+LAo7eft128iTbk0uz19nrry7XjY/pXgcmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RcNx9FuFFKurdz5LxhtnKQmpTveq3rKop/TNQrhis0U=;
 b=bTMBaGcguXFloMoP9OFmwQgBEpSqIuAhhOr3E2OWhf/RePBV6qf5514glQAaTSxVSJcX2kTLH+QV+6kv5kbIycsv7aM7crtEPSvPrNr3QA3JHfVOKhZJyPqp1ahDwrLNAGzsHlniy3r/GzpleClvDzrWG5RoxFac8nq2fq4W1ht08woKeQULytkYyoyXoq1Wf9kTP6/p3DSDwIeFb3wNT6L+TZLRzxbNSMLber/1xD3q34IPXBA7M4hV1by2x/0G0DVvRrUvEJI/5UjXvp2rBHLC4UgNbmYNNE1hq23gdp+2vtk1TTBemJjUfkYgnLdOPRznh+R4H/VkBnMXVYJ8sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by DM4PR11MB8201.namprd11.prod.outlook.com (2603:10b6:8:18a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.38; Thu, 4 Apr
 2024 12:26:03 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::b022:a668:b398:77a4%7]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 12:26:03 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-next 05/12] ice: Move CGU block
Thread-Index: AQHahnG123lHfUDv8Uunuxswe1QcmLFX8/0AgAATYnc=
Date: Thu, 4 Apr 2024 12:26:03 +0000
Message-ID: <MW4PR11MB580072F154D9A5D189224D2C863C2@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
 <20240404092238.26975-19-karol.kolacinski@intel.com>
 <200925f5-b29e-4601-9e2d-32bfb390be4e@intel.com>
In-Reply-To: <200925f5-b29e-4601-9e2d-32bfb390be4e@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|DM4PR11MB8201:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u4G/F65qKt+8ScBKTDFPD4/Pg26GQ+tZEz3KLPoGc4W2ctJM2A3egbUcYT4mZi9gGGjsrnFtGqTj+Z3t+vZhdoK1rF69qZxqvEr5iJmz/dsNFcSclQC8mv3qqZNfXyNQw8jnHiwM0MeccHYGb+ppimkOXyesEsc2SctPXQ8994BxneP+rIvxn2KqpnmVirhF/nsAFWsxzGiGoMBaei6oKQBw4DctcTTztLZTa364L5kKdnrc5A8lbWaTBY6a/fxuCFEqAVoaNHWMnGuFfzCar7Ik2P5mO8OYP5mpj7Cp3Q1NdLPAvaPeqrrCkjC0dtN3rE69W9HHpY6n0ByCDBXLftjbtT7j08ivJJzllvGIBMTLu/Rcnwezt/+XtG5eyUDIpK8Ntp5JJHh4ZI/O/PoR3+IVJC6HF8SZvnEAg0waBe8sv9wCFlN9cPbqVly5uujse2SAj7XaXunLdxTyB8IlL6eBJksL2hnD1sKWaIcrwWJgbteo1lC0wqZNS3bahNdtwpZC64Z2OwIFBLs09V59/LvhWOT0oZih8pGSkm9K878opoJiAUp+KOqKRaEvBwPet6YowImJntYyMiHsNt18iwbXRrAgdyZfeN27qZtDPXG3MqsvKmnXHD3VmAFjefiQcr+Ow7nN1WCZT8vizYW03A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?DVxmxigV1rvhS53fcXjlg/xJ4iOWtQzkSpISqn7mA8ofrRvZx2sw4u8sl9?=
 =?iso-8859-2?Q?a0tthBgG8i0pHpoSYF9LJzxq3UQjcmhvvIKZTQUh6DdQ5S9bfJ8xGDoJ6m?=
 =?iso-8859-2?Q?kSxnjkx34KtwW8Z2Eq1qkimGKUFszmSseqwvQMyHnKDEf1HMBA1y0y9Ec9?=
 =?iso-8859-2?Q?K1SVwBazHG1r15X4zmPSWeVbkwlLh5Nr1LzK8IUX29GnTVA5SPdJxfPE7R?=
 =?iso-8859-2?Q?kN0nW50/KZ8UMlAPc9cKhxEno8hrXjzZCsp7vv5finSh3F3ZY+vXvV3TrS?=
 =?iso-8859-2?Q?NZPnOpTUm10o5U2yRK3J6ZkWIq86rFT1EDX5+dxfbzQW+hbL+uDU2deIhP?=
 =?iso-8859-2?Q?6aFvW3f4ISHAAqtrNlnsijGYEwB7pc5AaJO1tzgmQJtqC2pEgk2ARaCFMP?=
 =?iso-8859-2?Q?SZinTFYp0gkgUXpz2i0JIbrE11lzxzQUMS8AKY+R/D4rlYJ/Y/h2TiIXhZ?=
 =?iso-8859-2?Q?OOeIJl1L2KwII2uuS28yeHDlmWzTh2wgNAVlFs4Mm5fXO4LDFCMraEloSg?=
 =?iso-8859-2?Q?/qyir1N6IzE7qO0WSJro89SjKd2QfnkkbmvgXMXCbNQXOT3n+G9ET50EH4?=
 =?iso-8859-2?Q?FZ9/BJayZMtzm0klAWxC2mULKbnhz9L9UzLu6FriKYRyZWSGFrlKdFJCyj?=
 =?iso-8859-2?Q?1Zhq00DF3vPxK3kaPwEMgApM4Kh/qypU4yYuJanNq+my/ML44GuCt7Vpjo?=
 =?iso-8859-2?Q?IYiB0Ec2WCH9ka/+qvv6Yu/PIlJBC1sKqELsK5O5Cvf7XtHihw32VOUoT2?=
 =?iso-8859-2?Q?wJxybUugrfIynUMrHd3CqsmdapFzZm8V0y33P0c/ctuWzc6RgiiL3zohb6?=
 =?iso-8859-2?Q?Q83u/Pwg28XQdqzMuUvHqS31SUX8AFpkmoLCc/a4zBopKWQGS1SpuwyF/o?=
 =?iso-8859-2?Q?eVkGmH+zujj3BOy8s15gh7MNcAR3TpWIHRffUSHYJNN0T+8WHuuNAQd51B?=
 =?iso-8859-2?Q?QNpJ1Ox9nxfhvRZYhokD9bWtwAk/NS5RG9rIKEnknVVJXy3MSDeLvvB+96?=
 =?iso-8859-2?Q?jZyXZbiyIZFykLX+NyOH9DtqmEqLyWkt6Rw4PdeKPvzhfk/W3/wOuheyHO?=
 =?iso-8859-2?Q?XRqVAFoch0VZ5IJUQp5N7szmdj10ecovlry8s13dLvNxU1HbQW3iWhIP1O?=
 =?iso-8859-2?Q?Tzz0LnCS+iQyDYOGfTH2xNJFloj4dCHWZLdeQy9snaDOdNsD1xIRiI2LKy?=
 =?iso-8859-2?Q?F1oR8QjwrmwN7TXSzUpq2wxUseHVTqBG5UQ4UhqLHnWKIb65xPY9x/sRb3?=
 =?iso-8859-2?Q?p9Ir99bfkoTp4mr2/QNJX4Sy9ZHMUUtduzNAHhjGiUFlBe7g7wA2x7dlPC?=
 =?iso-8859-2?Q?LpVYqviobiQTYu8kcqku3VUeoYVapB5dZC75d5CbipP5FBa7/MOEtRN7aD?=
 =?iso-8859-2?Q?DyQ/OkgAPUpGJHvWXjok52MQftRoT/JONEe8MEUs14qkljWgHIAGYgD7lN?=
 =?iso-8859-2?Q?Ewgh8dPJVSVEh7EGdxzr04ZsluGfz2IgZy9yWPZnAcLwc6WKGil+Nky/Lo?=
 =?iso-8859-2?Q?52v+BQjbUrWMr67DQCgb2kQPubjCm6E9VmRerkSbgf/L0T0JjWpKndJDpa?=
 =?iso-8859-2?Q?7+DLaUuvLF4q3dVYPqbCxYkzSKkY92htJqoFJUrUoQSC1sWFmhhnuBbCmL?=
 =?iso-8859-2?Q?5Zif/Q8/SRxjPGp2wEGSlCBUMgPuxWL1yl5Gqx9YZkmaVXyMV0ZJsVIQ?=
 =?iso-8859-2?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 858e34f5-3840-47a2-b4be-08dc54a264dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2024 12:26:03.3266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sFRM+Qx4pLsNbj7NjdQGfVRh/gfbq7O9vK/LYSh4EZLy5BQYvHb1P8sc/L8xOX1EP3ZCVle0IQTPuYbR73pcHcnXg0yJTiXDNdIgrtxPUWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8201
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712234055; x=1743770055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RcNx9FuFFKurdz5LxhtnKQmpTveq3rKop/TNQrhis0U=;
 b=O6oAkphM9u7qHCDtFhnMhJ6ce7dL/Z5w3X3mYCDAnhg8ZGBBO7u2wntm
 fhhc+unWYubPrcobgDVejKl5xLIWkJuoepXlIJkB5N2rqdEOlqUjcXj1W
 GftJzElMysHh2wjK9Uw9nvjTPEXzY1wI2piytvYaPHpAYXCNxIyAatL6U
 6/2Qf4EU+RTgrYHh9TtyOCfM7k2dwh+kZa59aMVRBX0+gRvxhl6ygGdtd
 tVc31zpVMiTtJzLEVEGdpMmVbUBJF76TA+K8txnB0ZRZcTeAhOdRZOns7
 qAfsWLmkgaT9TMFk9GKkYVZp9m3hYmcaalhzP1LhiCXfy2bVuRcUS2sVS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O6oAkphM
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 05/12] ice: Move CGU block
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksander=A0Lobakin=A0=A0<aleksander.lobakin@intel.com>=0A=
Date: Thu,=A0 4 Apr 2024 13:08 +0200=0A=
=0A=
[...]=0A=
> > +=A0=A0=A0=A0 case ICE_TIME_REF_FREQ_25_000:=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return "25 MHz";=0A=
> > +=A0=A0=A0=A0 case ICE_TIME_REF_FREQ_122_880:=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return "122.88 MHz";=0A=
> > +=A0=A0=A0=A0 case ICE_TIME_REF_FREQ_125_000:=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return "125 MHz";=0A=
> > +=A0=A0=A0=A0 case ICE_TIME_REF_FREQ_153_600:=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return "153.6 MHz";=0A=
> > +=A0=A0=A0=A0 case ICE_TIME_REF_FREQ_156_250:=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return "156.25 MHz";=0A=
> > +=A0=A0=A0=A0 case ICE_TIME_REF_FREQ_245_760:=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return "245.76 MHz";=0A=
> > +=A0=A0=A0=A0 default:=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return "Unknown";=0A=
> > +=A0=A0=A0=A0 }=0A=
> =0A=
> Array lookup produces more optimized code than switch-case.=0A=
> =0A=
> static const char * const ice_clk_freqs[] =3D {=0A=
> =A0=A0=A0=A0=A0=A0=A0 [ICE_TIME_REF_FREQ_25_000]=A0=A0=A0=A0=A0 =3D "25 M=
Hz",=0A=
> =A0=A0=A0=A0=A0=A0=A0 ...=0A=
> =A0=A0=A0=A0=A0=A0=A0 [NUM_ICE_TIME_REF_FREQ]=A0=A0=A0=A0=A0=A0=A0=A0 =3D=
 "Unknown",=0A=
> };=0A=
> =0A=
> static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)=0A=
> {=0A=
> =A0=A0=A0=A0=A0=A0=A0 return ice_clk_freqs[min(clk_freq, NUM_ICE_TIME_REF=
_FREQ)];=0A=
> }=0A=
=0A=
I agree, but I'd like to avoid changing this now (in code move patch and=0A=
this patchset) if possible. I prepared another patchset, which is=0A=
refactoring and moving CGU related stuff into a separate file.=0A=
=0A=
[...]=0A=
> > + * Clear all timestamps from the PHY quad block that is shared between=
 the=0A=
> > + * internal PHYs on the E822 devices.=0A=
> > + */=0A=
> > +void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad)=0A=
> > +{=0A=
> > +=A0=A0=A0=A0 ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, Q_REG_TS=
_CTRL_M);=0A=
> > +=A0=A0=A0=A0 ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_=
REG_TS_CTRL_M);=0A=
> =0A=
> Is it intended to write the same register twice? Some reset sequence?=0A=
=0A=
Yes, it's intended, E82X PHYs have multiple weird behaviours, especially=0A=
in PHY start sequence=0A=
=0A=
[...]=0A=
=0A=
Thanks,=0A=
Karol=
